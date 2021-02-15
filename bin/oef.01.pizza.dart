
void main2() {
  const pizzaPrices = {
    'margherita': 5.5,
    'pepperoni': 7.5,
    'vegetarian': 6.5,
    'pineapple': 6.2
  };
  const order = ['margherita', 'pepperoni', 'pineapple'];
  var total = 0.0;
  for (var item in order) {
    final price = pizzaPrices[item];
    if (price != null) {
      total += price;
    }
  }
  print('Total: $total \€');
}

void main() {
  List<Pizza> pizzas = [Pizza(PizzaName.margherita, 5.5), Pizza(PizzaName.pepperoni, 7.5), Pizza(PizzaName.vegetarian, 6.5), Pizza(PizzaName.pineapple, 6.2)];
  Order order = Order();
  order.add(pizzas[0]);
  order.add(pizzas[0]);
  order.add(pizzas[1]);
  order.add(pizzas[3]);
  order.makeNote();
}

enum PizzaName {
  margherita, pepperoni, vegetarian, pineapple
}

class Pizza {
  PizzaName name;
  double price;

  Pizza(this.name, this.price);
}

class Order {
  Map<Pizza, int> pizzas = Map();

  void add (Pizza pizza) {
    if (pizzas.containsKey(pizza)) {
      pizzas[pizza] = pizzas[pizza] + 1;
    } else {
      pizzas[pizza] = 1;
    }
  }

  double calculateTotalPrice() {
    double total = 0;
    pizzas.forEach((pizza, nr) {
        total += nr * pizza.price;
    });
    return total;
  }

  void makeNote() {
    print("Order:");
    pizzas.forEach((pizza, nr) {
      print("  " + pizza.name.toString() + " : $nr");
    });
    print('Total: ${calculateTotalPrice()} \€');
  }
}