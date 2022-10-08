#!/bin/sh

set -e
set -x

sudo chmod a+rwx,o+t /var/www/fileserver
cd /var/www/fileserver

wget -O torchvision-resnet-pretrained.zip 'https://storage.googleapis.com/kaggle-data-sets/2490068/4225345/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221007%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221007T210908Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=6712784493805ae2c1969854512bf692f0266748803f18438d27132c08d0b5494f89c6356572fed989a3914b1206378caf608d6fc471b59287e9ff0c6dbf89599acccd3b713f7f87b0b683528e71cbaea07fea72db96bd7995cc41c5b284e8ac15fba48070a886b1766000a432fb9f025a3234a7613b29225c1a86be4098173e65acc18afe7567941b8f26d1d7c5fa63fbb685162e5f782cc75bf95b752019b990ae5580cd88eb06c27ef8dbb47c3e63b756bf3b814144702b21d362264367c931a4fa090b85f9f05bfbfd7157899bce84c398db16dd9b7bfcce7271a8edf266e7cebe9fbf16e587a0ac176013f8d16a20923e9d51be15d1542f49465c02076e'

#wget -O youtube-faces-with-facial-keypoints.zip 'https://storage.googleapis.com/kaggle-data-sets/2946/2680055/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20220927%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20220927T053958Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=7b2ab2f1998f5f7bc2a1f7a65e02f2129393f73aaaf078ead77255c7982d6f8cc4b84c549815f8eec13f2409fb7cab3ef81d86a69d9e3d0defd389d2deb90245cea8aa5dda86149e102e54320207e548bdb6c4db6db37e86ed038c66f0b6279d393d8afbeff86f87d541541ba7f3b6d0bc38f50a52e1e6b9d670c982a4ee558ccbd5025eb177e272765183eb5089271ffa1a40bd65fd917543916d6368866a012aa50b9d5a98d40693824d684e0cb2f0dfa7f5fb8f800345600a38a4b960b354aa5df7f7ea6c91aa36dc33712705c8ef3f65d61629e23766eafc4801ac82cebf91978e2a867fa86573416c8f57241481b8f4e916c9288f6f9f3a18eee799086c'

#wget -O faceid-preprocessed-small.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251768/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221004%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221004T180138Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=4269b61ec6ef61622a8e61c50163453c5e45df24f0b25ff82d25b99974195829d45ee1bfbd010d41bcaa1f4104f31bcf136917b744e15c71b6de816d4e607562a168653792ce3045148a3d71474288c0313e470cc0cec4bb12ba61bdac4cb77e673fa20dc716b0581dd868e9d65dc34386e587c4c2a19626564fb7eb7ab14e2ec477f5f6745d96999fdf6da4e6cbc883ce33e2f0811b8d295fab7cb7de0a8a22db1b22b00df7b8aace4bd7cc3e77af1881e85694db4a583769514fe4b99e3e069a54c22a9af4cba1ab3da8f1099c4fd1ff4620ba8e749eb07752882fce370c6238ee4d4d8466f2f9397c3e0803d4595707019f7f5481bbd352ee9f5773945671'

wget -O faceid-preprocessed.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251882/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221008%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221008T121420Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=0947a6f2ed8940dcd8d21df78346e1eb42d485b575ae8de44837afced2e34257aed023d8537167beba8e3616d5b01554edbbb2e0f9eaf52841f59179f7d131eb208841f1e034c7516d8f1edfbf943715fd5a761ec9c2b25b95e35dd2c81c697b644b2a17bfccf823406d58973942405b9b7f056de108f78c9957d0a339443af68a16c7e2e24931405e01abafa3a2b8dcbee1a6e6b8e81677fd8757cf08d501d29e1adf40b947b7c864750d687685d72f57c9262ff3b8170b5bf897a283d8f9a9ac38623c7a37da2336cd7480ae217d4710887841ff414451f40d964f883c94d76274920884f641a6559affb3bab16b1ffcd55f19fc7f81e6393d7edad12dec0a'

sudo apt-get update
sudo apt-get install -y python3-pip
pip install gdown
bash -l -c 'cd /var/www/fileserver && gdown https://drive.google.com/uc?id=1Ngzxy2w4ZLARy6TB6MgiQKwE1c6dBkzv'
