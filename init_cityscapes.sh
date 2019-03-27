# Download devkit
git clone https://github.com/mcordts/cityscapesScripts lib/dataset_devkit/cityscapesScripts

# Download coco format anntations

mkdir -p data/cityscapes/annotations

if [ ! -f data/cityscapes/instancesonly_gtFine_train.json ]; then
    curl http://www.yuwenxiong.com/dataset/cityscapes/annotations/instancesonly_gtFine_train.json -o data/cityscapes/annotations/instancesonly_gtFine_train.json
fi

if [ ! -f data/cityscapes/instancesonly_gtFine_val.json ]; then
    curl http://www.yuwenxiong.com/dataset/cityscapes/annotations/instancesonly_gtFine_val.json -o data/cityscapes/annotations/instancesonly_gtFine_val.json
fi


cd data/cityscapes

if [ ! -f images ]; then
    mkdir images
    cp leftImg8bit/*/*/*.png images
fi


if [ ! -f labels ]; then
    mkdir labels
    cp gtFine/*/*/*labelTrainIds.png labels
fi
