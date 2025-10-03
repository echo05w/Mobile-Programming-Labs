// // Soliyev Hasan Wed 9.00
// import 'package:flutter/material.dart';

// class ProductCard extends StatelessWidget {
//   final String productName;
//   final double price;

//   const ProductCard({
//     Key? key,
//     required this.productName,
//     required this.price,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.all(8),
//       child: ListTile(
//         leading: const Icon(Icons.shopping_bag),
//         title: Text(productName),
//         subtitle: Text('\$${price.toStringAsFixed(2)}'),
//         trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//       ),
//     );
//   }
// }

// class LikeButton extends StatefulWidget {
//   const LikeButton({Key? key}) : super(key: key);

//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }

// class _LikeButtonState extends State<LikeButton> {
//   bool _isLiked = false; // Task 3 (init false) + Task 4 (interactive)

//   void _toggle() {
//     setState(() {
//       _isLiked = !_isLiked;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: Icon(_isLiked ? Icons.favorite : Icons.favorite_border),
//       color: _isLiked ? Colors.red : null,
//       onPressed: _toggle,
//       tooltip: _isLiked ? 'Unlike' : 'Like',
//     );
//   }
// }

// class UsernameInput extends StatefulWidget {
//   const UsernameInput({Key? key}) : super(key: key);

//   @override
//   State<UsernameInput> createState() => _UsernameInputState();
// }

// class _UsernameInputState extends State<UsernameInput> {
//   String _userName = '';

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         children: [
//           TextFormField(
//             decoration: const InputDecoration(labelText: 'Enter your name'),
//             onChanged: (v) => setState(() => _userName = v),
//           ),
//           const SizedBox(height: 12),
//           Text('Current value: $_userName', style: Theme.of(context).textTheme.bodyLarge),
//         ],
//       ),
//     );
//   }
// }

// // section 2


// class CounterTwoFab extends StatefulWidget {
//   const CounterTwoFab({Key? key}) : super(key: key);

//   @override
//   State<CounterTwoFab> createState() => _CounterTwoFabState();
// }

// class _CounterTwoFabState extends State<CounterTwoFab> {
//   int _counter = 0;

//   void _inc() => setState(() => _counter++);
//   void _dec() => setState(() => _counter--);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Counter (inc/dec)')),
//       body: Center(child: Text('Count: $_counter', style: Theme.of(context).textTheme.headlineMedium)),
//       floatingActionButton: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           FloatingActionButton(
//             heroTag: 'dec',
//             onPressed: _dec,
//             child: const Icon(Icons.remove),
//           ),
//           const SizedBox(width: 12),
//           FloatingActionButton(
//             heroTag: 'inc',
//             onPressed: _inc,
//             child: const Icon(Icons.add),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class VisibilityToggle extends StatefulWidget {
//   const VisibilityToggle({Key? key}) : super(key: key);

//   @override
//   State<VisibilityToggle> createState() => _VisibilityToggleState();
// }

// class _VisibilityToggleState extends State<VisibilityToggle> {
//   bool _isVisible = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Visibility Toggle')),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             if (_isVisible) const Text('Now you see me!'),
//             const SizedBox(height: 12),
//             ElevatedButton(
//               onPressed: () => setState(() => _isVisible = !_isVisible),
//               child: Text(_isVisible ? 'Hide' : 'Show'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class AddListPage extends StatefulWidget {
//   const AddListPage({Key? key}) : super(key: key);

//   @override
//   State<AddListPage> createState() => _AddListPageState();
// }

// class _AddListPageState extends State<AddListPage> {
//   final TextEditingController _ctrl = TextEditingController();
//   final List<String> _items = [];

//   void _add() {
//     final v = _ctrl.text.trim();
//     if (v.isEmpty) return;
//     setState(() {
//       _items.add(v);
//       _ctrl.clear();
//     });
//   }

//   @override
//   void dispose() {
//     _ctrl.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Add to List')),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               children: [
//                 Expanded(child: TextField(controller: _ctrl, decoration: const InputDecoration(hintText: 'New item'))),
//                 ElevatedButton(onPressed: _add, child: const Text('Add')),
//               ],
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: _items.length,
//               itemBuilder: (_, i) => ListTile(title: Text(_items[i])),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ColorBoxPage extends StatefulWidget {
//   const ColorBoxPage({Key? key}) : super(key: key);

//   @override
//   State<ColorBoxPage> createState() => _ColorBoxPageState();
// }

// class _ColorBoxPageState extends State<ColorBoxPage> {
//   Color _color = Colors.grey;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Color Box')),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(width: 200, height: 200, color: _color),
//           const SizedBox(height: 20),
//           Wrap(spacing: 8, children: [
//             ElevatedButton(onPressed: () => setState(() => _color = Colors.red), child: const Text('Red')),
//             ElevatedButton(onPressed: () => setState(() => _color = Colors.green), child: const Text('Green')),
//             ElevatedButton(onPressed: () => setState(() => _color = Colors.blue), child: const Text('Blue')),
//           ]),
//         ],
//       ),
//     );
//   }
// }
// // section 3

// class GreetingParent extends StatefulWidget {
//   const GreetingParent({Key? key}) : super(key: key);

//   @override
//   State<GreetingParent> createState() => _GreetingParentState();
// }

// class _GreetingParentState extends State<GreetingParent> {
//   String _name = 'Guest';

//   void _changeName(String newName) {
//     setState(() => _name = newName);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Lifting State Up - Greeting')),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Greeting(name: _name),
//             const SizedBox(height: 12),
//             TextField(
//               decoration: const InputDecoration(labelText: 'Set name for Greeting'),
//               onSubmitted: _changeName,
//             ),
//             const SizedBox(height: 8),
//             Text('Tip: type a name and press Enter to update the greeting.'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Greeting extends StatelessWidget {
//   final String name;
//   const Greeting({Key? key, required this.name}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text('Hello, $name!', style: Theme.of(context).textTheme.headlineSmall);
//   }
// }

// // section 4
// import 'package:provider/provider.dart';

// class UserModel extends ChangeNotifier {
//   String _username = 'Guest';
//   String get username => _username;

//   void makeAdmin() {
//     _username = 'Admin';
//     notifyListeners();
//   }
// }

// // Simple widget that shows username and a button to change to Admin.
// class UserWidget extends StatelessWidget {
//   const UserWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final user = context.watch<UserModel>();
//     return Scaffold(
//       appBar: AppBar(title: const Text('Provider: UserModel')),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Text('Username: ${user.username}', style: Theme.of(context).textTheme.headlineSmall),
//             const SizedBox(height: 12),
//             ElevatedButton(
//               onPressed: () => context.read<UserModel>().makeAdmin(),
//               child: const Text('Make Admin'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
