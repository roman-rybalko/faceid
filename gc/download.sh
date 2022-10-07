#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

mkdir -p /kaggle/input

wget -O torchvision-resnet-pretrained.zip 'https://storage.googleapis.com/kaggle-data-sets/2490068/4225345/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221007%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221007T210908Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=6712784493805ae2c1969854512bf692f0266748803f18438d27132c08d0b5494f89c6356572fed989a3914b1206378caf608d6fc471b59287e9ff0c6dbf89599acccd3b713f7f87b0b683528e71cbaea07fea72db96bd7995cc41c5b284e8ac15fba48070a886b1766000a432fb9f025a3234a7613b29225c1a86be4098173e65acc18afe7567941b8f26d1d7c5fa63fbb685162e5f782cc75bf95b752019b990ae5580cd88eb06c27ef8dbb47c3e63b756bf3b814144702b21d362264367c931a4fa090b85f9f05bfbfd7157899bce84c398db16dd9b7bfcce7271a8edf266e7cebe9fbf16e587a0ac176013f8d16a20923e9d51be15d1542f49465c02076e'
unzip -d /kaggle/input/torchvision-resnet-pretrained torchvision-resnet-pretrained.zip

#wget -O youtube-faces-with-facial-keypoints.zip 'https://storage.googleapis.com/kaggle-data-sets/2946/2680055/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20220927%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20220927T053958Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=7b2ab2f1998f5f7bc2a1f7a65e02f2129393f73aaaf078ead77255c7982d6f8cc4b84c549815f8eec13f2409fb7cab3ef81d86a69d9e3d0defd389d2deb90245cea8aa5dda86149e102e54320207e548bdb6c4db6db37e86ed038c66f0b6279d393d8afbeff86f87d541541ba7f3b6d0bc38f50a52e1e6b9d670c982a4ee558ccbd5025eb177e272765183eb5089271ffa1a40bd65fd917543916d6368866a012aa50b9d5a98d40693824d684e0cb2f0dfa7f5fb8f800345600a38a4b960b354aa5df7f7ea6c91aa36dc33712705c8ef3f65d61629e23766eafc4801ac82cebf91978e2a867fa86573416c8f57241481b8f4e916c9288f6f9f3a18eee799086c'
#unzip -d /kaggle/input/youtube-faces-with-facial-keypoints youtube-faces-with-facial-keypoints.zip

#wget -O faceid-preprocessed-small.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251768/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20220926%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20220926T134910Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=7bcc58a66fffdfffb6af21ccad51ba629791191f2dc839a56a4c40b5f801573de885c388d2b4b196e5b8d9b2086145ec5a30560ad267d105a44b682943f988dae5b3e8f632299d2828a3749829e6272d2cd4228c0f6823a13e493df5a2c166ce260e0efddfc3971c1bb1f3c361232fdf52c659b5827ef9b2b4ae992dd9c40b6d9d24a2752fbd7ceadd9df8cf33357848053754479665fd75dad47a5a07941ecf05bef821bdf92442bab22f7ce81933ea3e32d956090154da51ca9d59492537fc578253d594ab248ccf96f6213c68fd70eb208a97ca36b8149cc2bfc41b5c18f92cc286974a6c75b241c649676428b2dd319beb8c3872ceb33715ff2a3548db03'
#unzip -d /kaggle/input/faceid-preprocessed-small faceid-preprocessed-small.zip
#mkdir /kaggle/input/faceid-preprocessed-small/tmp
#mv -v /kaggle/input/faceid-preprocessed-small/*.pkl /kaggle/input/faceid-preprocessed-small/tmp/
#mv -vf /kaggle/input/faceid-preprocessed-small/tmp/*/*.pkl /kaggle/input/faceid-preprocessed-small/

wget -O faceid-preprocessed.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251882/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221004%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221004T180102Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=412cf99357a1726fc49f610f3df78d4853877ea969faecd9f3ae9dec0959fd8a493e3669c2e16e7bc7a33d338849bb2f76f53f0ee157398992dfdb65851cbe7081c49056eab94d8b5cc513ca3e2aeb61bbb7badc432a1c978a5ab3e21cab6302eeaf3e4ccfd6cf6cf31f8cb1632f6223a9bcb4cf97c5753a9f160774f143168aeb3e2613ae53616841f78890a67d4dcc6aad0fba91d43dfeb27b54767a1d543fd4cbba7d24b1e80f3b5f94c7d995f98582b2e86b484eacd1a6f85701d962527b222f4969a66c4c7404a8537f0c2728dd234f395a7cc9a75d08004a48f30efd106a7e9f5b8a56699f9f1602baa6af92a41e00561eb6b761fe51d325ff4b3a580b'
unzip -d /kaggle/input/faceid-preprocessed faceid-preprocessed.zip
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.pkl /kaggle/input/faceid-preprocessed/
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.csv /kaggle/input/faceid-preprocessed/

mkdir -pv /tmp/work/popcache
#gdown https://drive.google.com/uc?id=1VsLzy3aYd9-6H3TebdIvCWCbsbu80rjl
#unzip -d /tmp/work/popcache popcache.zip

rm -vf /tmp/work/*.zip
