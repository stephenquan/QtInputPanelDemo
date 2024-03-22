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
import QtQuick.Layouts 1.0
import QtQuick.VirtualKeyboard 2.1

KeyboardLayout {
    function createInputMethod() {
        return Qt.createQmlObject('import QtQuick 2.0; import QtQuick.VirtualKeyboard.Plugins 2.1; HandwritingInputMethod {}', parent)
    }
    sharedLayouts: ['symbols']

    KeyboardRow {
        Layout.preferredHeight: 3
        KeyboardColumn {
            Layout.preferredWidth: bottomRow.width - hideKeyboardKey.width
            KeyboardRow {
                TraceInputKey {
                    objectName: "hwrInputArea"
                    patternRecognitionMode: InputEngine.PatternRecognitionMode.Handwriting
                }
            }
        }
        KeyboardColumn {
            Layout.preferredWidth: hideKeyboardKey.width
            KeyboardRow {
                BackspaceKey {}
            }
            KeyboardRow {
                EnterKey {}
            }
            KeyboardRow {
                ShiftKey { }
            }
        }
    }
    KeyboardRow {
        id: bottomRow
        Layout.preferredHeight: 1
        keyWeight: 154
        Key {
            weight: 217
            key: Qt.Key_Mode_switch
            noKeyEvent: true
            functionKey: true
            text: InputContext.inputEngine.inputMode === InputEngine.InputMode.Latin ? "123" : "ABC"
            onClicked: InputContext.inputEngine.inputMode = InputContext.inputEngine.inputMode === InputEngine.InputMode.Latin ? InputEngine.InputMode.Numeric : InputEngine.InputMode.Latin
            enabled: !(InputContext.inputMethodHints & (Qt.ImhDialableCharactersOnly | Qt.ImhFormattedNumbersOnly | Qt.ImhDigitsOnly))
            keyPanelDelegate: keyboard.style ? keyboard.style.symbolKeyPanel : undefined
        }
        ChangeLanguageKey {
            weight: 154
            customLayoutsOnly: true
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
            alternativeKeys: "<>()#%&*/\\\"'=+-_"
        }
        Key {
            key: Qt.Key_Period
            text: "."
            alternativeKeys: ":;,.?!"
        }
        HideKeyboardKey {
            id: hideKeyboardKey
            weight: 204
        }
    }
}
