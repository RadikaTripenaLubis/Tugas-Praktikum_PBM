import 'package:tugas_praktikum7/details/merchandise.dart';
import 'package:tugas_praktikum7/stok_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class Stok extends StatelessWidget {
  const Stok({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stok Merchandise'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 244, 148, 180),
      ),
      body: Consumer<StokProvider>(
        builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.cart.length,
            itemBuilder: (context, index) {
              var quantity = value.cart[index].quantity;

              return ListTile(
                title: Text(value.cart[index].name),
                subtitle:
                    Text('Jumlah Merchandise : ${value.cart[index].quantity}'),
                onTap: () {},
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () async {
                        showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Text(
                                    'Edit Jumlah Merchandise',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.remove),
                                        onPressed: () async {
                                          final merchandise = value.cart[index];

                                          if (merchandise.quantity < 2) {
                                            return;
                                          }

                                          value.updateMerchandise(
                                            Merchandise(
                                              id: merchandise.id,
                                              name: merchandise.name,
                                              price: merchandise.price,
                                              quantity:
                                                  merchandise.quantity - 1,
                                            ),
                                          );
                                        },
                                      ),
                                      Text(context
                                          .watch<StokProvider>()
                                          .cart[index]
                                          .quantity
                                          .toString()),
                                      IconButton(
                                        icon: const Icon(Icons.add),
                                        onPressed: () async {
                                          final merchandise = value.cart[index];

                                          value.updateMerchandise(
                                            Merchandise(
                                              id: merchandise.id,
                                              name: merchandise.name,
                                              price: merchandise.price,
                                              quantity:
                                                  merchandise.quantity + 1,
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        await context
                            .read<StokProvider>()
                            .hapusMerchandise(value.cart[index].id!);
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
