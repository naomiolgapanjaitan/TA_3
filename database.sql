-- Create syntax for TABLE 'jenis_surat'
CREATE TABLE `jenis_surat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(35) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Create syntax for TABLE 'status_surat'
CREATE TABLE `status_surat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE pengajuan_surat(
id int NOT NULL,
no_surat varchar(25) NOT NULL,
username_pengaju varchar(25) NOT NULL,
tanggal_mohon date NOT NULL,
id_jenis_surat int NOT NULL,
keterangan text ,
alasan_izin text,
tanggal_mulai_izin date,
tanggal_selesai_izin date ,
id_matkul_terkait int  ,
username_pegawai varchar(20),
id_status_surat int not null,
PRIMARY KEY (id),
FOREIGN KEY (username_pengaju) REFERENCES user_account(username) ON UPDATE
CASCADE ON DELETE CASCADE,
 FOREIGN KEY (id_jenis_surat) REFERENCES jenis_surat(id) ON UPDATE
CASCADE ON DELETE CASCADE,
     FOREIGN KEY (id_matkul_terkait) REFERENCES mata_kuliah(id) ON UPDATE
CASCADE ON DELETE CASCADE,
      FOREIGN KEY (id_status_surat) REFERENCES status_surat(id) ON UPDATE
CASCADE ON DELETE CASCADE
);
