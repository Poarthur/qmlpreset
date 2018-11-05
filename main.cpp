#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "presetparser.hpp"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    PressetParser prePars;
    engine.rootContext()->setContextProperty("pressetPars",&prePars);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
