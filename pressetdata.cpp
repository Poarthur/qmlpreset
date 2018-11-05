#include "pressetdata.hpp"

PressetData::PressetData():name{},num{}
{
}

void PressetData::clear()
{
  name.clear();
  num = 0;
  cubes.clear();
}
