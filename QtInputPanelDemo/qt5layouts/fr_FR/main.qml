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
import QtQuick.VirtualKeyboard 2.1

KeyboardLayout {
    inputMode: InputEngine.InputMode.Latin
    keyWeight: 160
    KeyboardRow {
        Key {
            key: Qt.Key_A
            text: "a"
            alternativeKeys: "aàâæ"
        }
        Key {
            key: Qt.Key_Z
            text: "z"
        }
        Key {
            key: Qt.Key_E
            text: "e"
            alternativeKeys: "éèeêë"
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
            alternativeKeys: "yÿ"
        }
        Key {
            key: Qt.Key_U
            text: "u"
            alternativeKeys: "ùuûü"
        }
        Key {
            key: Qt.Key_I
            text: "i"
            alternativeKeys: "îiï"
        }
        Key {
            key: Qt.Key_O
            text: "o"
            alternativeKeys: "ôoœ"
        }
        Key {
            key: Qt.Key_P
            text: "p"
        }
        BackspaceKey {}
    }
    KeyboardRow {
        FillerKey {
            weight: 56
        }
        Key {
            key: Qt.Key_Q
            text: "q"
        }
        Key {
            key: Qt.Key_S
            text: "s"
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
            key: Qt.Key_M
            text: "m"
        }
        EnterKey {
            weight: 283
        }
    }
    KeyboardRow {
        keyWeight: 156
        ShiftKey {}
        Key {
            key: Qt.Key_W
            text: "w"
        }
        Key {
            key: Qt.Key_X
            text: "x"
        }
        Key {
            key: Qt.Key_C
            text: "c"
            alternativeKeys: "cç"
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
            key: Qt.Key_Comma
            text: ","
        }
        Key {
            key: Qt.Key_Period
            text: "."
        }
        Key {
            key: Qt.Key_Minus
            text: "-"
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
