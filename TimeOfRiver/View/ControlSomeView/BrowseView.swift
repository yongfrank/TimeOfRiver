//
//  BrowseView.swift
//  TimeOfRiver
//
//  Created by Frank Chu on 5/2/22.
//

import SwiftUI

struct BrowseView: View {
    @Binding var showBrowse: Bool
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                ModelsByCategoryGrid(showBrowse: $showBrowse)
            }
            .navigationTitle("积木库")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                Button {
                    self.showBrowse.toggle()
                } label: {
                    Text("完成").bold()
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ModelsByCategoryGrid: View {
    let models = Models()
    @Binding var showBrowse: Bool
    
    var body: some View {
        VStack {
            ForEach(ModelCategory.allCases, id: \.self) { category in
                
                if let modelsByCategory = models.get(category: category) {
                    HorizontalGrid(showBrowse: $showBrowse, title: category.label, items: modelsByCategory)
                }
            }
        }
    }
}

struct HorizontalGrid: View {
    @EnvironmentObject var placementSettings: PlacementSettings
    @Binding var showBrowse: Bool
    var title: String
    var items: [Model]
    private let gridItemLayout = [GridItem(.fixed(150))]

    var body: some View {
        VStack(alignment: .leading) {
            Separator()
            
            Text(title)
                .font(.title2).bold()
                .padding(.leading, 22)
                .padding(.top, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItemLayout, spacing: 30) {
                    ForEach(0 ..< items.count, id: \.self) { index in
                        let model = items[index]
                        
                        ItemButton(model: model) {
                            
                            model.asyncLoadModelEntity()
                            self.placementSettings.selectedModel = model
                            print("BrowseView: selected \(model.name) for placement.")
                            self.showBrowse = false
                        }
                    }
                }
                .padding(.horizontal, 22)
                .padding(.vertical, 10)
            }
            
        }
    }
}

struct ItemButton: View {
    let model: Model
    let action: () -> Void
    
    var body: some View {
        Button {
            self.action()
        } label: {
            Image(uiImage: self.model.thumbnail)
                .resizable()
                .frame(width: 150, height: 150)
                .aspectRatio(contentMode: .fit)
                .background(Color(UIColor.secondarySystemFill))
                .cornerRadius(8.0)
        }
    }
}

struct Separator: View {
    var body: some View {
        Divider()
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView(showBrowse: .constant(true))
    }
}
