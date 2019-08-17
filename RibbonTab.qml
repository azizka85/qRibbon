import QtQuick 2.0

Item {
    default property alias contents: groups.children
    property alias color: content.color
    property alias spacing: groups.spacing

    property int tabWidth: 70
    property string title: "Title"

    id: ribbonTab

    Rectangle {
        id: content
        anchors.fill: parent
        border { width: 1; color: "lightgray" }

        Row {
            id: groups
            anchors.fill: parent
        }
    }
}
