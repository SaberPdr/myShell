echo "Installing dependencies..."
yum install gmp-devel mpfr-devel libmpc-devel

echo "Installing zlib..."
yum install zlib-devel*

echo "Downloading gcc source files..."
curl https://ftp.gnu.org/gnu/gcc/gcc-7.3.0/gcc-7.3.0.tar.gz -O

echo "extracting files..."
tar -zxf gcc-7.3.0.tar.gz

echo "Configure and install..."
cd gcc-7.3.0
./configure --with-system-zlib --disable-multilib --enable-languages=c,c++
make -j $(nproc)
make install
