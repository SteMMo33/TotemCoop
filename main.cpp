#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QScreen>


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    QSize size = app.screens()[0]->size();


    return app.exec();
}
