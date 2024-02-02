//
//  ContentView.swift
//  Emoja
//
//  Created by Vashishth gajjar on 1/31/24.
//

import SwiftUI

enum Emoji: String, CaseIterable
{
    case 😔, 😃, 🤒, 🤬, 😂, 😴
}

struct ContentView: View {
    
  @State var select:Emoji = .😂
    
    var body: some View {
       NavigationView
        {
            VStack
            {
                Text(select.rawValue).font(.system(size: 100))
                
                Picker("", selection: $select)
                {
                    ForEach(Emoji.allCases, id: \.self)
                    {
                        emoji in Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.palette)
                
    //            Text("Choose an emoji").font(.system(size: 20))
            }
            .navigationTitle("Today's mood?")
            .padding()
        
        }
    }
}

#Preview {
    ContentView()
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.colorScheme, .dark)
    }
}
