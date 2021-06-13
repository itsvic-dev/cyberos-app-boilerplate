/*
 * omame's CyberOS app boilerplate
 * Copyright (c) 2021 omame <me@omame.tech>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import MeuiKit 1.0 as Meui

Meui.Window {
    minimumWidth: 400
    minimumHeight: 300
    width: 500
    height: 400
    visible: true

    headerBar: RowLayout {
        anchors.rightMargin: -140

        Label {
            text: qsTr("Hello, world!")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            color: Meui.Theme.titleBarTextColor
        }
    }

    ColumnLayout {
        Label {
            Layout.margins: Meui.Units.largeSpacing
            text: qsTr("Hello, QML world!")
        }
    }
}
