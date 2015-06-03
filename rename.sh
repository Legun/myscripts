#!/bin/bash
for dir in Октябрь Ноябрь Декабрь Январь Февраль Март Апрель; do
cd $dir

rename 's/Рисунок ()//gi' side1/*.jpg
rename 's/Рисунок ()//gi' side2/*.jpg
mkdir -p side_a
n=1
for i in side1/*.jpg; do
      name='('$n').jpg'
     montage side1/$name side2/$name -geometry +0+0 -tile 1x2 side_a/$name
     let n=n+1
     
done
cd ../
done
