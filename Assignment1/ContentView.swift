//
// ContentView.swift : Assignment1
//
// Copyright © 2023 Auburn University.
// All Rights Reserved.

import SwiftUI


struct EmojiCounterView: View {
    @State private var emojiCounts: [String: Int] = [
        "😀": 0, "🎉": 0, "🚀": 0, "❤️": 0, "🍕": 0
    ]
    
    let emojis = ["😀", "🎉", "🚀", "❤️", "🍕"]

    var body: some View {
        VStack {
            Text("Emoji Counter")
                .font(.largeTitle)
                .padding()

            
            List(emojis, id: \.self) { emoji in
                HStack {
                    Text("\(emoji) \(emojiCounts[emoji] ?? 0)")
                        .font(.largeTitle)
                        .frame(width: 100, alignment: .leading)

                    Spacer()
                    
                    Text("➖")
                        .font(.title)
                        .padding()
                        .background(Color.red.opacity(0.2))
                        .cornerRadius(10)
                        .onTapGesture {
                            emojiCounts[emoji, default: 0] -= 1
                            emojiCounts = emojiCounts
                        }

                    Text("➕")
                        .font(.title)
                        .padding()
                        .background(Color.green.opacity(0.2))
                        .cornerRadius(10)
                        .onTapGesture {
                            emojiCounts[emoji, default: 0] += 1
                            emojiCounts = emojiCounts
                        }
                }
                .padding(.vertical, 5)
            }
        }
        .padding()
    }
}

struct EmojiCounterView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiCounterView()
    }
}
