/*
    This file is part of etherwall.
    etherwall is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    etherwall is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with etherwall. If not, see <http://www.gnu.org/licenses/>.
*/
/** @file TransactionDetails.qml
 * @author Ales Katona <almindor@gmail.com>
 * @date 2015
 *
 * TransactionDetails window
 */

import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Dialogs 1.2
import QtQuick.Layouts 1.0

Dialog {
    property var transaction : empty_tx()
    standardButtons: StandardButton.Close
    modality: Qt.WindowModal
    visible: false
    title: transaction.hash
    width: 7 * dpi
    height: 5.5 * dpi

    function empty_tx() {
        return { hash: "", from: "", to: "", value: "", gas: "", gasPrice: "", blockNumber: "", blockHash: "", transactionIndex: "", nonce: "", input: "" };
    }

    function display( trans ) {
        transaction = trans;
        open()
    }

    GridLayout {
        id: detailLayout
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.margins: 20
        columns: 2

        Label {
            text: qsTr("Hash: ")
        }

        TextField {
            readOnly: true
            text: transaction.hash
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("From: ")
        }

        TextField {
            readOnly: true
            text: transaction.from
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("To: ")
        }

        TextField {
            readOnly: true
            text: transaction.to
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Value: ")
        }

        TextField {
            readOnly: true
            text: transaction.value
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Gas: ")
        }

        TextField {
            readOnly: true
            text: transaction.gas
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("GasPrice: ")
        }

        TextField {
            readOnly: true
            text: transaction.gasPrice
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Block #: ")
        }

        TextField {
            readOnly: true
            text: transaction.blockNumber
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Block hash: ")
        }

        TextField {
            readOnly: true
            text: transaction.blockHash
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Index: ")
        }

        TextField {
            readOnly: true
            text: transaction.transactionIndex
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Nonce: ")
        }

        TextField {
            readOnly: true
            text: transaction.nonce
            Layout.minimumWidth: detailLayout.width * 0.8
        }

        Label {
            text: qsTr("Input: ")
        }

        TextField {
            readOnly: true
            text: transaction.input
            Layout.minimumWidth: detailLayout.width * 0.8
        }

    }
}
