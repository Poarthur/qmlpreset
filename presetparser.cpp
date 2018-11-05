#include "presetparser.hpp"

PressetParser::PressetParser(QObject *parent) : QObject(parent)
{
}

QString PressetParser::presName()
{
    return data.name;
}

int PressetParser::presCount()
{
    return data.num;
}

QJsonArray PressetParser::getCubes()
{
    QJsonArray arr;
    for(auto i : data.cubes)
        arr << QJsonObject{{"a",i.a},{"b",i.b},{"c",i.c},
                   {"start",i.start},{"length",i.length}};
    return arr;
}

void PressetParser::parse(const QUrl & fileName)
{
    data.clear();
    QFile file(fileName.toLocalFile());
    if(!file.open(QFile::ReadOnly)) return;
    QDataStream stream(&file);
    stream.setByteOrder(QDataStream::LittleEndian);
    stream >> data.name >> data.num;
    for(int i = 0; i < data.num; ++i)
    {
        PressetData::Cube cube;
        stream >> cube.a >> cube.b >> cube.c >> cube.start >> cube.length;
        data.cubes << cube;
    }
    //if(stream.status() != QDataStream::Ok) return;    //~QFile auto close
    file.close();
    return;
}
