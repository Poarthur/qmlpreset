#ifndef CUBE_HPP
#define CUBE_HPP

#include <QObject>
#include <QJsonObject>
#include "preset.hpp"

class Cube : public QObject
{
    Q_OBJECT
public:
    explicit Cube(QObject *parent = nullptr);
    qint16 a;
    qint8 b;
    qint8 c;
    qint16 start;
    qint16 length;
};

#endif // CUBE_HPP
