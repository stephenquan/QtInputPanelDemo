/****************************************************************************
**
** Copyright (C) 2021 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Virtual Keyboard module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:COMM$
**
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** $QT_END_LICENSE$
**
**
**
**
**
**
**
**
**
****************************************************************************/

import QtQuick 2.0
import QtQuick.VirtualKeyboard 2.3

KeyboardLayout {
    inputMode: InputEngine.InputMode.Latin
    keyWeight: 160
    KeyboardRow {
        Key {
            key: Qt.Key_Q
            text: "q"
        }
        Key {
            key: Qt.Key_W
            text: "w"
        }
        Key {
            key: Qt.Key_E
            text: "e"
        }
        Key {
            key: Qt.Key_R
            text: "r"
        }
        Key {
            key: Qt.Key_T
            text: "t"
        }
        Key {
            key: Qt.Key_Y
            text: "y"
        }
        Key {
            key: Qt.Key_U
            text: "u"
        }
        Key {
            text: "\u0131"
        }
        Key {
            key: Qt.Key_O
            text: "o"
        }
        Key {
            key: Qt.Key_P
            text: "p"
        }
        Key {
            text: "\u011F"
        }
        Key {
            key: Qt.Key_Udiaeresis
            text: "ü"
        }
        BackspaceKey {}
    }
    KeyboardRow {
        FillerKey {
            weight: 66
        }
        Key {
            key: Qt.Key_A
            text: "a"
            alternativeKeys: "aåä"
        }
        Key {
            key: Qt.Key_S
            text: "s"
            alternativeKeys: "sš"
        }
        Key {
            key: Qt.Key_D
            text: "d"
        }
        Key {
            key: Qt.Key_F
            text: "f"
        }
        Key {
            key: Qt.Key_G
            text: "g"
        }
        Key {
            key: Qt.Key_H
            text: "h"
        }
        Key {
            key: Qt.Key_J
            text: "j"
        }
        Key {
            key: Qt.Key_K
            text: "k"
        }
        Key {
            key: Qt.Key_L
            text: "l"
        }
        Key {
            text: "ş"
        }
        Key {
            key: Qt.Key_I
            text: "i"
        }
        EnterKey {
            weight: 283
        }
    }
    KeyboardRow {
        keyWeight: 156
        ShiftKey { }
        Key {
            key: Qt.Key_Z
            text: "z"
            alternativeKeys: "zž"
        }
        Key {
            key: Qt.Key_X
            text: "x"
            alternativeKeys: "$¢x₺€¥£"
            smallTextVisible: true
        }
        Key {
            key: Qt.Key_C
            text: "c"
        }
        Key {
            key: Qt.Key_V
            text: "v"
        }
        Key {
            key: Qt.Key_B
            text: "b"
        }
        Key {
            key: Qt.Key_N
            text: "n"
        }
        Key {
            key: Qt.Key_M
            text: "m"
        }
        Key {
            key: Qt.Key_Odiaeresis
            text: "ö"
        }
        Key {
            key: Qt.Key_Ccedilla
            text: "ç"
        }
        Key {
            key: Qt.Key_Comma
            text: ","
        }
        Key {
            key: Qt.Key_Period
            text: "."
            alternativeKeys: "!?."
            smallTextVisible: true
        }
        ShiftKey {
            weight: 264
        }
    }
    KeyboardRow {
        keyWeight: 154
        SymbolModeKey {
            weight: 217
        }
        ChangeLanguageKey {
            weight: 154
        }
        HandwritingModeKey {
            weight: 154
        }
        SpaceKey {
            weight: 864
        }
        Key {
            key: Qt.Key_Apostrophe
            text: "'"
        }
        Key {
            key: 0xE000
            text: ":-)"
            alternativeKeys: [ ";-)", ":-)", ":-D", ":-(", "<3" ]
        }
        HideKeyboardKey {
            weight: 204
        }
    }
}
