//
//  DTextView.swift
//  Identicryst
//
//  Created by Evan Mullen on 5/4/21.
//

import UIKit

class DTextView: UITextView {

    class DTextView: UITextView {

        @IBInspectable var maxHeight: CGFloat = 0
        @IBInspectable var enableAutoResizeToFitContent: Bool = false

        override func awakeFromNib() {
            super.awakeFromNib()
            
            NotificationCenter.default.addObserver(self, selector: #selector(DTextView.didChangeText(_:)), name:UITextView.textDidChangeNotification, object: self)
        }

        @objc func didChangeText(_ note: Notification) {
            // needed incase isScrollEnabled is set to true which stops automatically calling invalidateIntrinsicContentSize()
            invalidateIntrinsicContentSize()
        }

        override var intrinsicContentSize: CGSize {
            var size = super.intrinsicContentSize
            
            if size.height == UIView.noIntrinsicMetric {
                // force layout
                layoutManager.glyphRange(for: textContainer)
                size.height = layoutManager.usedRect(for: textContainer).height + textContainerInset.top + textContainerInset.bottom
            }
            
            if !enableAutoResizeToFitContent {
                if !isScrollEnabled {
                    isScrollEnabled = true
                }
            } else {
                if maxHeight > 0.0 && size.height > maxHeight {
                    size.height = maxHeight
                
                    if !isScrollEnabled {
                        isScrollEnabled = true
                    }
                } else if isScrollEnabled {
                    isScrollEnabled = false
                }
            }
            
            return size
        }
        
        deinit {
            NotificationCenter.default.removeObserver(self)
        }
    }

}
