function projectkelas() {
    echo "jumlah pekerja : "
    read pekerja

    echo "jumlah upah perhari : "
    read upah

    echo "jumlah hari yang diperkirakan : "
    read hari

    echo "jumlah kelas : "
    read kelas

    echo "biaya material : "
    read material

    echo "biaya operasional : "
    read operasional 

    echo "biaya arsitek : "
    read arsitek

    echo "anggaran yang dimiliki : "
    read anggaran

    echo "-----------------------------------"
    totalgaji=$((pekerja*upah*hari))
    echo "total gaji yang diperoleh oleh pekerja adalah $totalgaji"

    totalbiayaMAO=$((material+operasional+arsitek))
    echo "total biaya material, arsitek, dan operasional adalah $totalbiayaMAO"

    totalsemuabiaya=$((totalgaji+totalbiayaMAO))
    echo "ini adalah total biaya gaji dan biaya MAO : $totalsemuabiaya"

    totalananggarandanbiaya=$((anggaran-totalsemuabiaya))
    echo "jadi ini sisa anggarannya  : $totalananggarandanbiaya"

    if [ $totalananggarandanbiaya -lt 0 ]; then
        echo "project melebihi anggaran sebanyak ${totalananggarandanbiaya#-}"
    else
        echo "anggaran tersisa sebesar $totalananggarandanbiaya"
    fi
}

projectkelas