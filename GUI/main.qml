import QtQuick 2.12
import QtQuick.Controls 2.5

ApplicationWindow {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Cryptor")

    header: ToolBar {
        contentHeight: toolButton.implicitHeight

        ToolButton {
            id: toolButton
            text: stackView.depth > 1 ? "\u25C0" : "\u2630"
            font.pixelSize: Qt.application.font.pixelSize * 1.6
            onClicked: {
                if (stackView.depth > 1)
                    stackView.pop()
// This stuff can make shortcuts to any pages
//                else
//                    drawer.open(
            }
        }

        Label {
            text: stackView.currentItem.title
            anchors.centerIn: parent
        }
    }

//    Drawer {
//        id: drawer
//        width: window.width * 0.66
//        height: window.height

//        Column {
//            anchors.fill: parent

//            ItemDelegate {
//                text: qsTr("Page 1")
//                width: parent.width
//                onClicked: {
//                    stackView.push("Page1Form.ui.qml")
//                    drawer.close()
//                }
//            }
//            ItemDelegate {
//                text: qsTr("Page 2")
//                width: parent.width
//                onClicked: {
//                    stackView.push("Page2Form.ui.qml")
//                    drawer.close()
//                }
//            }
//        }
//    }

    StackView {
        id: stackView
        initialItem: "HomeForm.qml"
        anchors.fill: parent
    }
}
