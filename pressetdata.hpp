#ifndef PRESSETDATA_HPP
#define PRESSETDATA_HPP

#include "preset.hpp"

struct PressetData
{
    struct Cube
    {
        Cube():a{},b{},c{},start{},length{}{}
        qint16 a;
        qint8 b;
        qint8 c;
        qint16 start;
        qint16 length;
    };
    PressetData();
    QString name;
    qint8 num;
    QList<Cube> cubes;
    void clear();
};

#endif // PRESSETDATA_HPP
