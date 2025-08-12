import 'package:ebs/ui/EmployeePage.dart';
import 'package:ebs/ui/test.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Main Title
              const Text(
                "Enterprise Business Solutions",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                ),
              ),

              // Company Name
              const Text(
                "Ha-Meem Group",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF37474F),
                ),
              ),
              const SizedBox(height: 24),

              // Employee Management Card
              _buildManagementCard(
                title: "Employee Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Department",
                    color: const Color(0xFF5E35B1),
                    destination: DepartmentPage(),
                  ),
                  const SizedBox(height: 8),
                  _buildButton(
                    context: context,
                    text: "Designation",
                    color: const Color(0xFF3949AB),
                    destination: DesignationPage(),
                  ),
                  const SizedBox(height: 8),
                  _buildButton(
                    context: context,
                    text: "Employee",
                    color: const Color(0xFF7E57C2),
                    destination: EmployeePage(),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // HR Management Card
              _buildManagementCard(
                title: "HR Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Attendance",
                    color: const Color(0xFF00897B),
                    destination: AttendancePage(),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Product Management Card
              _buildManagementCard(
                title: "Product Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Product Category",
                    color: const Color(0xFFE53935),
                    destination: ProductCategoryPage(),
                  ),
                  const SizedBox(height: 8),
                  _buildButton(
                    context: context,
                    text: "Product",
                    color: const Color(0xFFD81B60),
                    destination: ProductPage(),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Purchase Management Card
              _buildManagementCard(
                title: "Purchase Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Supplier",
                    color: const Color(0xFFF4511E),
                    destination: SupplierPage(),
                  ),
                  const SizedBox(height: 8),
                  _buildButton(
                    context: context,
                    text: "Purchase Order",
                    color: const Color(0xFFFB8C00),
                    destination: PurchaseOrderPage(),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Sales Management Card
              _buildManagementCard(
                title: "Sales Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Customer",
                    color: const Color(0xFF43A047),
                    destination: CustomerPage(),
                  ),
                  const SizedBox(height: 8),
                  _buildButton(
                    context: context,
                    text: "Sales Order",
                    color: const Color(0xFF7CB342),
                    destination: SalesOrderPage(),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Inventory Management Card
              _buildManagementCard(
                title: "Inventory Management",
                buttons: [
                  _buildButton(
                    context: context,
                    text: "Inventory",
                    color: const Color.fromARGB(255, 136, 44, 133),
                    destination: Test(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildManagementCard({
    required String title,
    required List<Widget> buttons,
  }) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF5D4037),
                ),
              ),
            ),
            ...buttons,
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String text,
    required Color color,
    required Widget destination,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          minimumSize: const Size(double.infinity, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

// Placeholder pages for navigation - you should replace these with your actual pages
class DepartmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Department")),
      body: Center(child: Text("Department Page")),
    );
  }
}

class DesignationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Designation")),
      body: Center(child: Text("Designation Page")),
    );
  }
}

class AttendancePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Attendance")),
      body: Center(child: Text("Attendance Page")),
    );
  }
}

class ProductCategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Category")),
      body: Center(child: Text("Product Category Page")),
    );
  }
}

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product")),
      body: Center(child: Text("Product Page")),
    );
  }
}

class SupplierPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Supplier")),
      body: Center(child: Text("Supplier Page")),
    );
  }
}

class PurchaseOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Purchase Order")),
      body: Center(child: Text("Purchase Order Page")),
    );
  }
}

class CustomerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Customer")),
      body: Center(child: Text("Customer Page")),
    );
  }
}

class SalesOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sales Order")),
      body: Center(child: Text("Sales Order Page")),
    );
  }
}

class InventoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Inventory")),
      body: Center(child: Text("Inventory Page")),
    );
  }
}