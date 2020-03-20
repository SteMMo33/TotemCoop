#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QtSerialPort/QSerialPortInfo>
#include <QDebug>
#include <QQmlContext>


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

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSize size = app.screens()[0]->size();
    qDebug() << ">> " + QString::number(size.width()) + " x " + QString::number(size.height());

    QList<QSerialPortInfo> lSerialPorts = QSerialPortInfo::availablePorts();
    qDebug () << ">> Porte: " << lSerialPorts.size();

    // Non definire in QML !!
    engine.rootContext()->setContextProperty("numeroSeriali", lSerialPorts.size());

    return app.exec();
}
