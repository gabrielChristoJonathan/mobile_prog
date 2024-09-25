function projectkonser {
    echo "Biaya sewa artis dan penampilan : "
    read artis

    echo "Biaya sewa tempat : "
    read tempat

    echo "biaya teknis dan peralatannya : "
    read peralatan

    echo "biaya lain dan promosi : "
    read promosi_lain

    echo "anggaran yang dimiliki oleh perusahaan adalah Rp "
    read anggaran

    echo "------------------------------------------------------"
    semuabiaya=$((artis+tempat+peralatan+promosi_lain))
    echo "Total semua biaya yang harus dibayar adalah Rp $semuabiaya"

    sisaanggaran=$((anggaran-semuabiaya))
    echo "Sisa anggaran perusahaan adalah Rp $sisaanggaran"

       if [ $sisaanggaran -lt 0 ]; then
        echo "project melebihi anggaran sebanyak ${sisaanggaran#-}"
    else
        echo "anggaran tersisa sebesar $sisaanggaran"
    fi
} 

projectkonser