import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:goodtechmind/models/entity.dart';
import 'package:goodtechmind/objectbox.g.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class ObjBoxLearning extends StatefulWidget {
  const ObjBoxLearning({Key? key}) : super(key: key);

  @override
  State<ObjBoxLearning> createState() => _ObjBoxLearningState();
}

class _ObjBoxLearningState extends State<ObjBoxLearning> {
  final Faker _faker = Faker();

  bool _sortAscending = true;
  int _sortColumnIndex = 0;

  late Store _store;
  bool hasInitialized = false;

  late Customer _customer;

  late Stream<List<ShopOrder>> _stream;

  @override
  void initState() {
    super.initState();
    getApplicationDocumentsDirectory().then((dir) {
      _store =
          Store(getObjectBoxModel(), directory: join(dir.path, 'ob_learning'));
      setState(() {
        _stream = _store
            .box<ShopOrder>()
            .query()
            .watch(triggerImmediately: true)
            .map((query) => query.find());
        hasInitialized = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OBJ BOX learning"),
        actions: [
          IconButton(
            onPressed: addNewCustomer,
            icon: const Icon(Icons.supervised_user_circle_outlined),
          ),
          IconButton(
            onPressed: addFakeOrderForCustomer,
            icon: const Icon(Icons.attach_money),
          )
        ],
      ),
      body: !hasInitialized
          ? const Center(child: Text("Not initialized yet"))
          : StreamBuilder<List<ShopOrder>>(
              stream: _stream,
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    child: DataTable(
                      sortAscending: _sortAscending,
                      sortColumnIndex: _sortColumnIndex,
                      columns: [
                        DataColumn(
                            label: const Text("ID"), onSort: onDataColumnSort),
                        const DataColumn(label: Text("Name")),
                        DataColumn(
                            label: const Text("Price"),
                            onSort: onDataColumnSort),
                        DataColumn(label: Container())
                      ],
                      rows: snapshot.data!
                          .map(
                            (e) => DataRow(
                              cells: [
                                DataCell(
                                  Text(e.id.toString()),
                                ),
                                DataCell(
                                  Text(e.customer.target?.name ?? "unknown"),
                                ),
                                DataCell(
                                  Text('\$ ${e.price}'),
                                ),
                                DataCell(IconButton(
                                  onPressed: () {
                                    _store.box<ShopOrder>().remove(e.id);
                                  },
                                  icon: const Icon(Icons.delete),
                                )),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ),
                );
              },
            ),
    );
  }

  void addNewCustomer() {
    _customer = Customer(name: faker.person.name());
  }

  void addFakeOrderForCustomer() {
    final order =
        ShopOrder(price: faker.randomGenerator.integer(1000, min: 20));
    order.customer.target = _customer;
    _store.box<ShopOrder>().put(order);
  }

  void onDataColumnSort(int index, bool isAscending) {
    setState(() {
      _sortAscending = isAscending;
      _sortColumnIndex = index;
    });
    final newQueryBuilder = _store.box<ShopOrder>().query();
    final sortField = index == 0 ? ShopOrder_.id : ShopOrder_.price;
    newQueryBuilder.order(sortField, flags: isAscending ? 0 : Order.descending);
    _stream = newQueryBuilder
        .watch(triggerImmediately: true)
        .map((query) => query.find());
  }

  @override
  void dispose() {
    _store.close();
    super.dispose();
  }
}
