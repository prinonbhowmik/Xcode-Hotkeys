//
//  MainHotkeysView.swift
//  Xcode Hotkeys
//
//  Created by Prinon bhowmik on 12/20/24.
//

import SwiftUI

struct MainHotkeysView: View {
    
    @State private var searchQuery = ""
    var vm : HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    let listStyle = Theme.listStyle
    
    var body: some View {
        NavigationStack {
            Form {
                // Sections for each category
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    HotkeySectionView(
                        hotkeyCategoryName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.hotkeyModels,
                        searchQuery: searchQuery
                    )
                }
                .listStyle( listStyle)
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search...")
            
            KeySymbolView()
            
        }
        .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
        
    }
}

#Preview {
    MainHotkeysView()
}
