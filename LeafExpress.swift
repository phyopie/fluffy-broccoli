import SwiftUI

@main
struct MoneyTransferApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: MoneyTransferView()) {
                    Text("Transfer Money")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                NavigationLink(destination: GoodsDeliveryView()) {
                    Text("Deliver Goods")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationTitle("Main Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: MoneyTransferView()) {
                    Text("Transfer Money")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()

                NavigationLink(destination: GoodsDeliveryView()) {
                    Text("Deliver Goods")
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
                .padding()
            }
            .navigationTitle("Main Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import SwiftUI

struct MoneyTransferView: View {
    @State private var amount = ""
    @State private var recipient = ""

    var body: some View {
        Form {
            TextField("Recipient", text: $recipient)
                .autocapitalization(.none)
            TextField("Amount", text: $amount)
                .keyboardType(.decimalPad)
            
            Button(action: {
                // Handle money transfer logic
                print("Transferring \(amount) to \(recipient)")
            }) {
                Text("Send Money")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .navigationTitle("Transfer Money")
    }
}

struct MoneyTransferView_Previews: PreviewProvider {
    static var previews: some View {
        MoneyTransferView()
    }
}

import SwiftUI

struct GoodsDeliveryView: View {
    @State private var item = ""
    @State private var address = ""

    var body: some View {
        Form {
            TextField("Item", text: $item)
                .autocapitalization(.none)
            TextField("Delivery Address", text: $address)
            
            Button(action: {
                // Handle goods delivery logic
                print("Delivering \(item) to \(address)")
            }) {
                Text("Send Goods")
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
        }
        .navigationTitle("Deliver Goods")
    }
}

struct GoodsDeliveryView_Previews: PreviewProvider {
    static var previews: some View {
        GoodsDeliveryView()
    }
}
