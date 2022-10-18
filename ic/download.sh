#!/bin/sh

set -e
set -x

sudo mkdir -p /kaggle
sudo chmod a+rwx,o+t /kaggle

mkdir -p /tmp/work
cd /tmp/work

mkdir -p /kaggle/input

wget -O torchvision-resnet-pretrained.zip 'https://storage.googleapis.com/kaggle-data-sets/2490068/4329344/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221017%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221017T114755Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=070aa2dd6796fac3049b03327aaf53c6a16620f762c80f4d526136998bdacbda2d60a09b0a9eb3c8eb0e8028ca3bca36f7d3eff1e1365ebba337ee507ff1037b33adcc437b8396b800ddde2518892c3a95ddf494a9e27be849308dacb26ee4864ceb717750f17705f6061048596c2ec801d4d2df33bc5014a4de2579ad3954e0ace6efc82c2d99f4ebfb32339ddcdef6d1534161df4ea7607e3008d5bfe41efedcaa0104d62c71443ccefa7e3b7f146eabdb03ce55f18a949e09b8118f18567c2d78388a4e7e7c05b070dd5c808d29ed246d12899b8fcc592610b37bf8940dd6daa1a58f892db08436a54ce83e55d49ee9ddcd642e247d26ec5cf11067c95365'
unzip -d /kaggle/input/torchvision-resnet-pretrained torchvision-resnet-pretrained.zip

#wget -O youtube-faces-with-facial-keypoints.zip 'https://storage.googleapis.com/kaggle-data-sets/2946/2680055/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20220927%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20220927T053958Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=7b2ab2f1998f5f7bc2a1f7a65e02f2129393f73aaaf078ead77255c7982d6f8cc4b84c549815f8eec13f2409fb7cab3ef81d86a69d9e3d0defd389d2deb90245cea8aa5dda86149e102e54320207e548bdb6c4db6db37e86ed038c66f0b6279d393d8afbeff86f87d541541ba7f3b6d0bc38f50a52e1e6b9d670c982a4ee558ccbd5025eb177e272765183eb5089271ffa1a40bd65fd917543916d6368866a012aa50b9d5a98d40693824d684e0cb2f0dfa7f5fb8f800345600a38a4b960b354aa5df7f7ea6c91aa36dc33712705c8ef3f65d61629e23766eafc4801ac82cebf91978e2a867fa86573416c8f57241481b8f4e916c9288f6f9f3a18eee799086c'
#unzip -d /kaggle/input/youtube-faces-with-facial-keypoints youtube-faces-with-facial-keypoints.zip

#wget -O faceid-preprocessed-small.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251768/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221004%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221004T180138Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=4269b61ec6ef61622a8e61c50163453c5e45df24f0b25ff82d25b99974195829d45ee1bfbd010d41bcaa1f4104f31bcf136917b744e15c71b6de816d4e607562a168653792ce3045148a3d71474288c0313e470cc0cec4bb12ba61bdac4cb77e673fa20dc716b0581dd868e9d65dc34386e587c4c2a19626564fb7eb7ab14e2ec477f5f6745d96999fdf6da4e6cbc883ce33e2f0811b8d295fab7cb7de0a8a22db1b22b00df7b8aace4bd7cc3e77af1881e85694db4a583769514fe4b99e3e069a54c22a9af4cba1ab3da8f1099c4fd1ff4620ba8e749eb07752882fce370c6238ee4d4d8466f2f9397c3e0803d4595707019f7f5481bbd352ee9f5773945671'
#unzip -d /kaggle/input/faceid-preprocessed-small faceid-preprocessed-small.zip
#mkdir /kaggle/input/faceid-preprocessed-small/tmp
#mv -v /kaggle/input/faceid-preprocessed-small/*.pkl /kaggle/input/faceid-preprocessed-small/tmp/
#mv -vf /kaggle/input/faceid-preprocessed-small/tmp/*/*.pkl /kaggle/input/faceid-preprocessed-small/

wget -O faceid-preprocessed.zip 'https://storage.googleapis.com/kaggle-data-sets/2505372/4251882/bundle/archive.zip?X-Goog-Algorithm=GOOG4-RSA-SHA256&X-Goog-Credential=gcp-kaggle-com%40kaggle-161607.iam.gserviceaccount.com%2F20221017%2Fauto%2Fstorage%2Fgoog4_request&X-Goog-Date=20221017T114824Z&X-Goog-Expires=259200&X-Goog-SignedHeaders=host&X-Goog-Signature=6fb56bdcfcb14c3c658f4fa9e571fd15ec3da8f437d2a6405e757e9fa2e43ac18f2fed646d7239912b881fc1ce2c3a4a5f63afa318ae330f5bbdeacaca35986bd0363b37dcf123c631f02c5dda526fc8c2a100c8c419e0295bf751f15f899e9689797d64314a5cf5cc9f978db61ea5237dab7c3f5219452ef396b30eb52296fb7997c5ab33ebe67cf6066ed18da49d59cf968ce6332fd9ffbb586457a2fe1f3c3cd08612c8e861433bb7bea6c6e47ba66bed1b0f282a7c20a951d1b96710f5a3ea755667f889ae6542a59e6d8944c6fc4b5489427b81e883dc1f6a34404ba75db877af688f28d073fe673c55f61eb69982c30b7cd9f86fb15e98d9d9b666ef30'
unzip -d /kaggle/input/faceid-preprocessed faceid-preprocessed.zip
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.pkl /kaggle/input/faceid-preprocessed/
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.csv /kaggle/input/faceid-preprocessed/
