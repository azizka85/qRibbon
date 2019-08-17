import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.12

Item {
    default property alias contents: ribbonContent.children

    property real ribbonHeight: 120

    id: ribbon
    width: parent.width
    height: ribbonHeight

    TabBar {
        id: ribbonBar
        anchors { top: parent.top; left: parent.left }

        Repeater {
            model: contents

            TabButton {
                text: modelData.title
                width: modelData.tabWidth

                onDoubleClicked: switchRibbonVisible()
            }
        }
    }

    Button {
        width: icon.width
        height: icon.height
        anchors { right: parent.right; top: parent.top; margins: 3 }
        icon { width: 16; height: 16; source: ribbonContent.visible ? "qrc:/arrow-up-16x16.png" : "qrc:/arrow-down-16x16.png" }

        onClicked: switchRibbonVisible()
    }

    StackLayout {
        id: ribbonContent
        anchors { left: parent.left; right: parent.right; top: ribbonBar.bottom; }
        currentIndex: ribbonBar.currentIndex
        height: ribbonHeight - ribbonBar.height
    }

    function switchRibbonVisible()
    {
        ribbonContent.visible = !ribbonContent.visible;
        ribbon.height = ribbonContent.visible ? ribbonHeight : ribbonBar.height;
    }
}
