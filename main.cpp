#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QtSerialPort/QSerialPortInfo>
#include <QDebug>
#include <QQmlContext>
#include <QSettings>


/*
 * Per Raspberry sono stati trasferiti i files.
 * Necessarion aggiungere in pacchetto libqt5serialport5-dev
 * Comando: qmake   --> genera il Makefile
 * Poi: make
 *
 */


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    // Impostazioni
    QSettings settings("","");
    int nShopId = settings.value("shopId", 3306).toInt();
    int nTotemId = settings.value("totemId", 1).toInt();

    // Form principale
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSize size = app.screens()[0]->size();
    qDebug() << ">> " + QString::number(size.width()) + " x " + QString::number(size.height());

    // Porte seriali
    QList<QSerialPortInfo> lSerialPorts = QSerialPortInfo::availablePorts();
    qDebug () << ">> Porte: " << lSerialPorts.size();

    QStringList listaSeriali;
    foreach (QSerialPortInfo seriale, lSerialPorts) {
        listaSeriali.append(seriale.portName());
    }

    // Non definire in QML !!
    engine.rootContext()->setContextProperty("numeroSeriali", lSerialPorts.size());
    engine.rootContext()->setContextProperty("seriali", QVariant::fromValue(listaSeriali));
    engine.rootContext()->setContextProperty("shopId", QVariant(nShopId));
    engine.rootContext()->setContextProperty("totemId", QVariant(nTotemId));
    engine.rootContext()->setContextProperty("serialPort", lSerialPorts.size() ? QVariant(lSerialPorts[0].portName()) : "?");

    return app.exec();
}
