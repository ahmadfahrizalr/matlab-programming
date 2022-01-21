// * Baca gambar
a = imread('filename');

// * Tampilkan gambar
imshow(a);

// * Ubah ke Abu-Abu
gray = rgb2gray(a);

// * Ubah ke HSV
HSV = rgb2hsv(a);

// * Ubah ke YIQ
YIQ = rgb2ntac(a);

// * Ubah ke YCbCr
YCbCr = rgb2ycbcr(a);

// * Noise Salt and Pepper
Noise = imnoise(a, 'salt & pepper'); "Data pastikan dalam uint8"

// * Interpolasi (syarat harus dalam tipe Double atau Single)
Inter = interp2(coba,'linear atau nearest');


// * Matriks ke Gambar (hitam putih)
x = [0 255 0; 255 0 255; 0 255 0] // Matriks 3x3 Tipe Double
x = unint8(x) // Mau ubah dari tipe Double ke Uint8 tujuannya biar bisa di Show
Bisa juga langsung:
x = uint8([0 255 0; 255 0 255; 0 255 0]);
x dalam uint8 diubah ke double:
y = double(x);

// * Matriks ke Gambar;
// Dari Matriks biasa ke Warna
image = [255 255 255; 255 255 255 ; 255 255 255];
image = uint8(image);
// Untuk warna Merah
r = image*(255/255);
g = image*(0/255);
b = image*(0/255);
red = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(red);
// Untuk warna Hijau
r = image*(0/255);
g = image*(255/255);
b = image*(0/255);
green = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(green);
// Untuk warna Biru
r = image*(0/255);
g = image*(0/255);
b = image*(255/255);
blue = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(blue);
// Untuk warna Kuning
r = image*(255/255);
g = image*(255/255);
b = image*(0/255);
yellow = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(yellow);
// Untuk warna Cyan
r = image*(0/255);
g = image*(255/255);
b = image*(255/255);
cyan = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(cyan);
// Untuk warna Magenta
r = image*(255/255);
g = image*(0/255);
b = image*(255/255);
magenta = cat(3,r,g,b); // meng-concatenate tiga matriks
imshow(magenta);
// Untuk ambil dari gambar matriks mau di Show
gambar(:,:,1)=a(:,:,1);
gambar(:,:,2)=a(:,:,2);
gambar(:,:,3)=a(:,:,3);
imshow(gambar);

// * Histogram
gambar = imread('gambar.jpg');
grayscale = rgb2gray(gambar);
histo = histogram(grayscale);
imshow(histo);

// * Rotasi, Translasi, Rekleksi, Zoom
lena = imread('lena.png');
imshow(lena)
//Percobaan untuk merotasi citra 90 derajat
rotate = imrotate(lena,90); // 90 adalah sudut rotasinya
imshow(rotate)
// Percobaan mentranslasi citra
translasi = imtranslate(lena,[20 10]); // 20 adalah pergeseran pixel X 10 adalah pergeseran pixel 2
imshow(translasi)
// Percobaan refleksi
refleksix = flipdim(lena ,2); // Refleksi terhadap sumbu Y
refleksiy = flipdim(lena ,1); // Refleksi terhadap sumbu X
refleksixy = flipdim(lena,2); // Refleksi sumbu x dan y
subplot(2,2,1), imshow(I)
subplot(2,2,2), imshow(refleksix)
subplot(2,2,3), imshow(refleksiy)
subplot(2,2,4), imshow(refleksixy)
// Percobaa Zoom
zoom = imresize(lena,2);
imshow(zoom);

// * Edge Detection
gambar = imread('gambar.jpg');
gx = rgb2gray(gambar);
gx = im2double(gx);
fo = [2, -1;-1, 0];
firstorder = conv2(gx,fo);
imshow(firstorder);
// Robert Detection
gambar = imread('gambar.jpg');
ggambar = rgb2gray(gambar);
ggambar = im2double(ggambar);
robertx = [1 0; 0 -1]
roberty= [0 1; -1 0]
gambarx = conv2(ggambar,robertx);
gambary = conv2 (ggambar,roberty);
robert = abs(gambarx) + abs (gambary);
imshow(robert);
// Perwit Detection
gambar = imread('gambar.jpg');
ggambar = rgb2gray(gambar);
ggambar = im2double(gambar);
perwitx = [1 0 -1; 1 0 -1; 1 0 -1];
perwity= [1 1 1; 0 0 0; -1 -1 -1];
gambarx = conv2(ggambar,perwitx);
gambary = conv2 (ggambar,perwity);
perwit = abs(gambarx) + abs (gambary);
imshow(perwit);
// Sobel Detection
gambar = imread('gambar.jpg');
ggambar = rgb2gray(gambar);
ggambar = im2double(ggambar);
sobelx = [1 0 -1; 2 0 -2; 1 0 -1];
sobely= [1 2 1; 0 0 0; -1 -2 -1];
gambarx = conv2(ggambar,sobelx);
gambary = conv2 (ggambar,sobely);
sobel = abs(gambarx) + abs (gambary);
imshow(sobel);
// Canny Detection
gambar = imread('gambar.jpg');
ggambar = rgb2gray(gambar);
ggambar = im2double(ggambar);
canny = edge(ggambar,'canny');
imshow(canny);
