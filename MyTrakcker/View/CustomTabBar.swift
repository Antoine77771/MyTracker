//
//  CustomTabBar.swift
//  MyTrakcker
//
//  Created by Antoine on 06/05/2022.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case house
    case cross
    case gearshape
}


struct CustomTabBar: View {
    @Binding var selectTab: Tab
    private var fillImage: String {
        selectTab.rawValue + ".fill"
    }
    private var tabColor: Color {
        switch selectTab {
        case .house:
            return .blue
        case .cross:
            return .purple
        case .gearshape:
            return .orange
        }
    }
    var body: some View {
        VStack {
            HStack {
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(tab == selectTab ?  1.25 : 1.0)
                        .foregroundColor(tab == selectTab ? tabColor : .gray)
                        .font(.system(size: 20))
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.1)) {
                                selectTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 60)
            .background(.thinMaterial)
            .cornerRadius(20)
            .padding()
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectTab: .constant(.house))
    }
}
