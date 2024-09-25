function project (){
echo "masukan jumlah pengembang  : "
read pengembang 

echo "jumlah gaji perorang untuk sebulan : "
read gaji

echo "Perancanaan berapa bulan perencangan aplikasi ini : "
read bulan

echo "biya penyewaan server : "
read sewa_server

echo "biaya lisensi softrware : "
read lisensi_software

echo "biaya operasional : "
read operasional

echo "anggaran awalan proyek yang disediakan :  "
read anggaran_yang_ada

echo "--------------------------------------------"
totalgaji=$((pengembang*gaji*bulan))
echo "total gaji yang diperoleh pengembang adalah $totalgaji"

totalbiaya=$(((sewa_server*bulan)+operasional+lisensi_software))
echo "total biaya sewa server dan biaya operasional adalah $totalbiaya"

hitungangajidanbiayadananggaran=$((anggaran_yang_ada-(totalgaji+totalbiaya)))
echo "total hitungan semuanya adalah $hitungangajidanbiayadananggaran"

}
project