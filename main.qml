import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.2

ApplicationWindow {   
    id: mainWindow
    visible: true
    visibility: "Maximized"
    title: qsTr("Hello world's")

    Ribbon {
        id: ribbon

        RibbonTab {
            title: qsTr("World tab #1")
            tabWidth: 130

            RibbonGroup {
                title: qsTr("World group #1")
                width: 200

                Row {
                    spacing: 6
                    anchors.margins: 6
                    anchors.fill: parent

                    Button {
                        text: qsTr("world #1")
                    }

                    Button {
                        text: qsTr("world #2")
                    }
                }
            }

            RibbonGroup {
                title: qsTr("Full screen")

                Row {
                    spacing: 6
                    anchors.margins: 6
                    anchors.fill: parent

                    Button {
                        text: qsTr("Full screen")
                        onClicked: mainWindow.visibility = mainWindow.visibility === Window.Maximized ? "FullScreen" : "Maximized"
                    }
                }
            }
        }

        RibbonTab {
            title: qsTr("World tab #2")
            tabWidth: 130
        }
    }
}
