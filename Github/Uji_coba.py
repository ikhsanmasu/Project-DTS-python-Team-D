# -*- coding: utf-8 -*-
"""
Created on Sat Jun 19 15:55:28 2021

@author: hp
"""

import dbctrl as db

nik = 6320111022321
nik2 = 6320111022411
username = 'Tester'
password ='test'
nama = 'Sapri' 
nama2 = 'Japri'
tempat_lahir = 'Lamongan'
tempat_lahir2 = 'Kudus'
tgl_lahir = '19-09-1990'
tgl_lahir2 = '19-09-1992'
jabatan = 'komisaris'
tahun_masuk = 2010
username1 = 'sapri'
pass1 = 'sapri'
username2 = 'japri'
pass2 = 'jupri'
nik3=35253325243
nik4=92184290423
nik5=1242142142
idea = 0
id_penilaian = 0
mk = 2.0
pk = 3.0
p = 4.0

data = [nik, nama, tempat_lahir, tgl_lahir, jabatan, tahun_masuk]
data2 = [nik2, nama2, tempat_lahir2, tgl_lahir2, jabatan, tahun_masuk]
#db.insert_penilai(nik,username,password)
#db.insert_karyawan()
#db.insert_karyawan(nik3, nama, tempat_lahir, tgl_lahir, jabatan, tahun_masuk)
#db.insert_karyawan(nik4, nama, tempat_lahir, tgl_lahir, jabatan, tahun_masuk)
#db.insert_karyawan(nik5, nama, tempat_lahir, tgl_lahir, jabatan, tahun_masuk)
#db.insert_karyawan(nik2, nama2, tempat_lahir, tgl_lahir2, jabatan, tahun_masuk)
#db.insert_admin(nik, username1, pass1)
#db.insert_penilai(nik2, username2, pass2)
#db.insert_penilai(nik3, username2, pass2)
#db.insert_penilaian(nik2)
#db.insert_penilaian(nik)
#db.approve_status_penilaian(0)
#data_karyawan1 = db.find_by_nik(nik3)
#data_karyawan2 = db.find_by_nik(nik4)
#data_karyawan3 = db.find_by_nik(nik5)
#db.insert_isi_penilaian(id_penilaian, data_karyawan1,mk,pk,p)
#db.insert_isi_penilaian(id_penilaian, data_karyawan2,mk,pk,p)
#db.insert_isi_penilaian(id_penilaian, data_karyawan3,mk,pk,p)
#update_isi = db.find_by_id_penilaian(id_penilaian)

#Output perhitungan hasil=([id_isi_penilaian, norm, norm, norm, hasil],[..],..)
#hasil = [[12421421420, 3.0,4.0,3.0,0.5], [352533252430, 4.0,3.0,5.0,0.8], [921842904230, 5.0,5.0,5.0,1]]
#for i in hasil:
    #db.update_isi_penilaian(i)
#result = db.fetch_all_by_table('karyawan')
#print(result)
#data3=[idea, nik, username2,pass2]
#data4=[idea, nik2, username1, pass1]
#db.update_admin(data3)
#db.update_penilai(data4)
#db.update_karyawan(data)
#db.delete_admin(data3)
#db.delete_penilai(data4)
#db.delete_karyawan(data)
#login = db.check_login_penilai(username,password)
#semua = db.fetch_all_by_table('admin')
#print(semua)
db.dbclose()

