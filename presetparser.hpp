#ifndef PRESETPARSER_HPP
#define PRESETPARSER_HPP

#include "pressetdata.hpp"

class PressetParser : public QObject
{
    Q_OBJECT
    PressetData data;
public:
    Q_PROPERTY(QString presName READ presName)
    Q_PROPERTY(int count READ presCount)
    Q_PROPERTY(QJsonArray cubes READ getCubes)
    explicit PressetParser(QObject *parent = nullptr);

    Q_INVOKABLE void parse(QUrl const &);
    QString presName();
    int presCount();
    QJsonArray getCubes();
};

#endif // PRESETPARSER_HPP
