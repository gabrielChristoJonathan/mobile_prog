function projectrumahsakit {
    echo "jumlah alat : "
    read alat

    echo "biaya per alat : "
    read biaya_alat

    echo "biaya isntalasi per alat : "
    read isntalasi

    echo "biaya pelatihan staf  : "
    read staf

    echo "biaya perawatan dan pemeliharaan tahunan : "
    read perawatan

    echo "anggaran yang dimiliki : "
    read anggaran 

    echo "----------------------------------------------"

    totalbiayaalat=$((alat*biaya_alat))
    echo "Jumlah total biaya alat adalah Rp $totalbiayaalat"

    biayainstalasi=$((isntalasi*alat))
    echo "JUmlah biaya instalasi 15 alat adalah Rp $biayainstalasi"

    biayapelatihandanpemeliharaan=$((staf+perawatan))
    echo "Jumlah total biaya pelatihan staf dan pemeliharaan tahunan adalah Rp $biayapelatihandanpemeliharaan"

    semuabiaya=$((totalbiayaalat+biayainstalasi+biayapelatihandanpemeliharaan))
    echo "Jumlah total biaya yang harus dibayar adalah $semuabiaya"

    sisaanggaran=$((anggaran-semuabiaya))
    echo "sisa anggaran yang dimilki adalah Rp $sisaanggaran" 

    if [ $sisaanggaran -lt 0 ]; then
        echo "project melebihi anggaran sebanyak ${sisaanggaran#-}"
    else
        echo "anggaran tersisa sebesar $sisaanggaran"
    fi
}

projectrumahsakit
