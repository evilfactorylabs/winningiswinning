![./wiw.png](./wiw.png)

dalam rangka memeriahkan "tujuh belasan", evilfactorylabs membuat lomba untuk "setup development environment tercepat" terhadap project ini — tentunya dengan sebuah hadiah.

silahkan gunakan tips, trik, akal bulus atau apapun itu untuk memperoleh proses tercepat! tidak ada kecurangan di permainan pve, kemenangan adalah kemenangan ;)

siapapun dapat berpartisipasi, tidak dipungut biaya, dan pemenang akan diumumkan pada 17:08 wib, jika ada 😿. untuk sekarang hadiah hanya didapatkan oleh satu orang pemenang, dan akan diperbarui jika ada penambahan!

jika menggunakan sistem operasi windows, pastikan menggunakan wsl

## prasyarat

ada 5 aplikasi yang harus dipasang untuk berpartisipasi dalam "lomba" ini:

- bash
- nc
- curl
- tmux
- asciinema

aplikasi-aplikasi diatas digunakan untuk memulai sampai mengakhiri perlombaan. umumnya, 3 aplikasi pertama diatas sudah terpasang di sistem operasi yang digunakan.

## tentang perlombaan

aplikasi ini membutuhkan:

- Elixir 1.17
- PostgreSQL 14

dan ada satu environment variable yang perlu di set, yakni `SALTPACK_PRIVATE_KEY` dengan nilai `/Nb1kGi1OjiEuSWDz2nR3fk1H8wV6cDk4+nOB0ZtNi0=`.

```bash
SALTPACK_PRIVATE_KEY=/Nb1kGi1OjiEuSWDz2nR3fk1H8wV6cDk4+nOB0ZtNi0=
```

perlu dicatat bahwa 3 barang diatas hanya boleh dipasang/dilakukan saat perintah "memulai" dijalankan :)

untuk kredensial postgres:

- host: `127.0.0.1`
- port: `5432`
- db: `wiw`
- user: `evilfactorylabs`
- password: `NotHunter2`

## memulai

[![asciicast](https://asciinema.org/a/fKDMvCaj92fDcXUOseyLnFmt3.svg)](https://asciinema.org/a/fKDMvCaj92fDcXUOseyLnFmt3)

- clone repo ini
- install deps: `mix deps.get`
- migrate db: `mix ecto.migrate`
- seed db: `mix run priv/repo/seeds.exs`
- run server: `mix phx.server`

good luck have fun!

## berlomba

jalankan:

```bash
./start.sh
```

dan perekaman akan berakhir jika aplikasi sudah berhasil berjalan! bagikan tautan asciinema mu untuk show off (khususnya di reply tweet).

## faq

### bagaimana jika saya pakai vscode?

vscode punya terminal client :)

### apa yang ndak boleh?

end session asciinema dengan cara detach sesi tmux 🦫

### hadiahnya apa kak?

kaos neovim (cek twit [@__r17x](https://x.com/__r17x/))

### mengapa menggunakan elixir dan phoenix?

why not™
