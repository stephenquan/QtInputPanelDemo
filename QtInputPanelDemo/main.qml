import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Window
import QtQuick.VirtualKeyboard

Window {
    width: 800
    height: 600
    visible: true
    title: qsTr("Hello World")

    Page {
        anchors.fill: parent

        ScrollView {
            id: scrollView
            anchors.fill: parent

            ColumnLayout {
                width: scrollView.width

                TextField {
                    Layout.fillWidth: true
                    placeholderText: qsTr("First TextField")
                }

                TextField {
                    Layout.fillWidth: true
                    placeholderText: qsTr("Second TextField")
                }

                Button {
                    text: qsTr("Some Button")
                }
            }
        }

        footer: InputPanel {
            externalLanguageSwitchEnabled: true
        }
    }
}
