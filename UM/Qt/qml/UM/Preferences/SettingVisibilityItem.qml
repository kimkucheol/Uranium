// Copyright (c) 2015 Ultimaker B.V.
// Uranium is released under the terms of the AGPLv3 or higher.

import QtQuick 2.1
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.1

import UM 1.2 as UM

UM.TooltipArea
{
    x: model.depth * UM.Theme.getSize("default_margin").width;
    text: model.description;

    width: childrenRect.width;
    height: childrenRect.height;

    CheckBox
    {
        id: check

        text: definition.label
        checked: model.visible;
        enabled: !model.prohibited;

        MouseArea {
            anchors.fill: parent;
            onClicked: definitionsModel.setVisible(model.key, !check.checked);
        }
    }
}


