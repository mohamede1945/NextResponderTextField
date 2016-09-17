//
//  NextResponderTextField.swift
//  NextResponderTextField
//
//  Created by mohamede1945 on 6/20/15.
//  Copyright (c) 2015 Varaw. All rights reserved.
//

import UIKit

/**
Represents a next responder UITextField.
When the instance becomes first responder, and then the user taps the action button (e.g. return keyboard key) 
then one of the following happens:
1. If no nextResponderField set, keyboard dismissed.
2. If nextResponderField is a UIButton and disabled, then keyboard dismissed.
3. If nextResponderField is a UIButton and enabled, then the UIButton fires touch up inside event (simulating a tap).

@author mohamede1945
@version 1.2.0
*/
open class NextResponderTextField: UITextField {

    /// Represents the next field. It can be any responder.
    /// If it is UIButton and enabled then the button will be tapped.
    /// If it is UIButton and disabled then the keyboard will be dismissed.
    @IBOutlet public weak var nextResponderField: UIResponder?

    /**
    Creates a new view with the passed coder.

    :param: aDecoder The a decoder

    :returns: the created new view.
    */
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUp()
    }

    /**
    Creates a new view with the passed frame.

    :param: frame The frame

    :returns: the created new view.
    */
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    /**
    Sets up the view.
    */
    func setUp() {
        addTarget(self, action: #selector(NextResponderTextField.actionKeyboardButtonTapped(_:)), for: .editingDidEndOnExit)
    }

    /**
    Action keyboard button tapped.

    :param: sender The sender of the action parameter.
    */
    func actionKeyboardButtonTapped(_ sender: UITextField) {
        switch nextResponderField {
        case let button as UIButton:
            if button.isEnabled {
                button.sendActions(for: .touchUpInside)
            } else {
                resignFirstResponder()
            }
        case .some(let responder):
            responder.becomeFirstResponder()
        default:
            resignFirstResponder()
        }
    }
}
