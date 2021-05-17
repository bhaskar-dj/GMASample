//
//  AdBannerView.swift
//  GMASample
//
//  Created by ghoshb on 5/14/21.
//

import Foundation
import SwiftUI
import GoogleMobileAds

public struct AdBannerView : UIViewRepresentable {
    
    @State private var banner: GADBannerView = GADBannerView(adSize: kGADAdSizeBanner)
    var bannerId: String
    
    public init(bannerId: String) {
        self.bannerId = bannerId
    }
    
    public func makeUIView(context: UIViewRepresentableContext<AdBannerView>) -> GADBannerView {
        banner.adUnitID = bannerId

        guard let rootViewController = UIApplication.shared.windows.first?.rootViewController else {
            return banner
        }
        
        banner.rootViewController = rootViewController
        
        let frame = { () -> CGRect in
            return banner.rootViewController!.view.frame.inset(by: banner.rootViewController!.view.safeAreaInsets)
        }()
        let viewWidth = frame.size.width

        banner.adSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(viewWidth)

        banner.load(GADRequest())
        return banner
    }
    
    public func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdBannerView>) {}
}
