/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The restore purchases button.
*/

import SwiftUI
import StoreKit

struct RestorePurchasesButton: View {
    @State private var isRestoring = false
    
    var body: some View {
        Button("Restore Purchases") {
            isRestoring = true
            Task {
                defer { isRestoring = false }
                do {
                    try await AppStore.sync()
                } catch {
                    print("Failed to restore purchases: \(error)")
                }
            }
        }
        .disabled(isRestoring)
    }
    
}

#Preview {
    RestorePurchasesButton()
}
