#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>
#include <QtSerialPort/QSerialPortInfo>
#include <QDebug>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSize size = app.screens()[0]->size();
    qDebug() << ">> " + QString::number(size.width()) + " x " + QString::number(size.height());

    QList<QSerialPortInfo> lSerialPorts = QSerialPortInfo::availablePorts();
    qDebug () << ">> Porte: " << lSerialPorts.size();

    return app.exec();
}
