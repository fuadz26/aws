toc.dat                                                                                             0000600 0004000 0002000 00000055333 14627113604 0014454 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                       |         	   NjajanFix    16.0    16.0 K    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false         E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false         F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false         G           1262    65999 	   NjajanFix    DATABASE     �   CREATE DATABASE "NjajanFix" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "NjajanFix";
                postgres    false         �            1259    66000    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name character varying(80) NOT NULL,
    admin_pass character varying(40) NOT NULL,
    admin_nama_lengkap character varying(80),
    admin_email character varying(80)
);
    DROP TABLE public.admin;
       public         heap    postgres    false         �            1259    66003    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    215         H           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    216         �            1259    66004    alamatpengiriman    TABLE       CREATE TABLE public.alamatpengiriman (
    alamat_id integer NOT NULL,
    user_id integer,
    nama_penerima character varying(255),
    alamat character varying(255),
    kota character varying(255),
    kode_pos character varying(10),
    nomor_telepon character varying(20)
);
 $   DROP TABLE public.alamatpengiriman;
       public         heap    postgres    false         �            1259    66009    alamatpengiriman_alamat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alamatpengiriman_alamat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.alamatpengiriman_alamat_id_seq;
       public          postgres    false    217         I           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.alamatpengiriman_alamat_id_seq OWNED BY public.alamatpengiriman.alamat_id;
          public          postgres    false    218         �            1259    66010    kategori    TABLE     �   CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    nama_kategori character varying(255),
    kategori_img character varying(200)
);
    DROP TABLE public.kategori;
       public         heap    postgres    false         �            1259    66013    kategori_kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kategori_kategori_id_seq;
       public          postgres    false    219         J           0    0    kategori_kategori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;
          public          postgres    false    220         �            1259    66014 	   keranjang    TABLE     <  CREATE TABLE public.keranjang (
    keranjang_id integer NOT NULL,
    user_id integer NOT NULL,
    produk_id integer NOT NULL,
    quantity integer NOT NULL,
    total_harga numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone
);
    DROP TABLE public.keranjang;
       public         heap    postgres    false         �            1259    66018    keranjang_keranjang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keranjang_keranjang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.keranjang_keranjang_id_seq;
       public          postgres    false    221         K           0    0    keranjang_keranjang_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.keranjang_keranjang_id_seq OWNED BY public.keranjang.keranjang_id;
          public          postgres    false    222         �            1259    66019    produk    TABLE       CREATE TABLE public.produk (
    produk_id integer NOT NULL,
    toko_id integer,
    kategori_id integer,
    nama_produk character varying(255),
    deskripsi_produk text,
    harga_produk numeric(10,2),
    stok_produk integer,
    produk_img character varying(200)
);
    DROP TABLE public.produk;
       public         heap    postgres    false         �            1259    66024    produk_produk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produk_produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.produk_produk_id_seq;
       public          postgres    false    223         L           0    0    produk_produk_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.produk_produk_id_seq OWNED BY public.produk.produk_id;
          public          postgres    false    224         �            1259    66025    toko    TABLE     �   CREATE TABLE public.toko (
    toko_id integer NOT NULL,
    user_id integer,
    nama_toko character varying(255),
    deskripsi_toko text,
    alamat_toko character varying(255),
    nomor_telepon_toko character varying(255)
);
    DROP TABLE public.toko;
       public         heap    postgres    false         �            1259    66030    toko_toko_id_seq    SEQUENCE     �   CREATE SEQUENCE public.toko_toko_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.toko_toko_id_seq;
       public          postgres    false    225         M           0    0    toko_toko_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.toko_toko_id_seq OWNED BY public.toko.toko_id;
          public          postgres    false    226         �            1259    66031 	   transaksi    TABLE       CREATE TABLE public.transaksi (
    transaksi_id integer NOT NULL,
    user_id integer,
    total_harga numeric(10,2),
    waktu_transaksi timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    alamat_pengiriman character varying,
    produk_id integer
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false         �            1259    66037    transaksi_produk    TABLE     �   CREATE TABLE public.transaksi_produk (
    transaksi_id integer NOT NULL,
    produk_id integer NOT NULL,
    jumlah integer NOT NULL
);
 $   DROP TABLE public.transaksi_produk;
       public         heap    postgres    false         �            1259    66040    transaksi_transaksi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaksi_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaksi_transaksi_id_seq;
       public          postgres    false    227         N           0    0    transaksi_transaksi_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaksi_transaksi_id_seq OWNED BY public.transaksi.transaksi_id;
          public          postgres    false    229         �            1259    66041    users    TABLE     v  CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50),
    password character varying(50),
    nama_lengkap character varying(50),
    alamat character varying(255),
    email character varying(70),
    nomor_telepon character varying(20),
    user_img character varying(200),
    kode_verif character varying,
    is_verif integer
);
    DROP TABLE public.users;
       public         heap    postgres    false         �            1259    66046    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    230         O           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    231         w           2604    66047    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    216    215         x           2604    66048    alamatpengiriman alamat_id    DEFAULT     �   ALTER TABLE ONLY public.alamatpengiriman ALTER COLUMN alamat_id SET DEFAULT nextval('public.alamatpengiriman_alamat_id_seq'::regclass);
 I   ALTER TABLE public.alamatpengiriman ALTER COLUMN alamat_id DROP DEFAULT;
       public          postgres    false    218    217         y           2604    66049    kategori kategori_id    DEFAULT     |   ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);
 C   ALTER TABLE public.kategori ALTER COLUMN kategori_id DROP DEFAULT;
       public          postgres    false    220    219         z           2604    66050    keranjang keranjang_id    DEFAULT     �   ALTER TABLE ONLY public.keranjang ALTER COLUMN keranjang_id SET DEFAULT nextval('public.keranjang_keranjang_id_seq'::regclass);
 E   ALTER TABLE public.keranjang ALTER COLUMN keranjang_id DROP DEFAULT;
       public          postgres    false    222    221         |           2604    66051    produk produk_id    DEFAULT     t   ALTER TABLE ONLY public.produk ALTER COLUMN produk_id SET DEFAULT nextval('public.produk_produk_id_seq'::regclass);
 ?   ALTER TABLE public.produk ALTER COLUMN produk_id DROP DEFAULT;
       public          postgres    false    224    223         }           2604    66052    toko toko_id    DEFAULT     l   ALTER TABLE ONLY public.toko ALTER COLUMN toko_id SET DEFAULT nextval('public.toko_toko_id_seq'::regclass);
 ;   ALTER TABLE public.toko ALTER COLUMN toko_id DROP DEFAULT;
       public          postgres    false    226    225         ~           2604    66053    transaksi transaksi_id    DEFAULT     �   ALTER TABLE ONLY public.transaksi ALTER COLUMN transaksi_id SET DEFAULT nextval('public.transaksi_transaksi_id_seq'::regclass);
 E   ALTER TABLE public.transaksi ALTER COLUMN transaksi_id DROP DEFAULT;
       public          postgres    false    229    227         �           2604    66054    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    231    230         1          0    66000    admin 
   TABLE DATA           b   COPY public.admin (admin_id, admin_name, admin_pass, admin_nama_lengkap, admin_email) FROM stdin;
    public          postgres    false    215       4913.dat 3          0    66004    alamatpengiriman 
   TABLE DATA           t   COPY public.alamatpengiriman (alamat_id, user_id, nama_penerima, alamat, kota, kode_pos, nomor_telepon) FROM stdin;
    public          postgres    false    217       4915.dat 5          0    66010    kategori 
   TABLE DATA           L   COPY public.kategori (kategori_id, nama_kategori, kategori_img) FROM stdin;
    public          postgres    false    219       4917.dat 7          0    66014 	   keranjang 
   TABLE DATA           t   COPY public.keranjang (keranjang_id, user_id, produk_id, quantity, total_harga, created_at, updated_at) FROM stdin;
    public          postgres    false    221       4919.dat 9          0    66019    produk 
   TABLE DATA           �   COPY public.produk (produk_id, toko_id, kategori_id, nama_produk, deskripsi_produk, harga_produk, stok_produk, produk_img) FROM stdin;
    public          postgres    false    223       4921.dat ;          0    66025    toko 
   TABLE DATA           l   COPY public.toko (toko_id, user_id, nama_toko, deskripsi_toko, alamat_toko, nomor_telepon_toko) FROM stdin;
    public          postgres    false    225       4923.dat =          0    66031 	   transaksi 
   TABLE DATA           v   COPY public.transaksi (transaksi_id, user_id, total_harga, waktu_transaksi, alamat_pengiriman, produk_id) FROM stdin;
    public          postgres    false    227       4925.dat >          0    66037    transaksi_produk 
   TABLE DATA           K   COPY public.transaksi_produk (transaksi_id, produk_id, jumlah) FROM stdin;
    public          postgres    false    228       4926.dat @          0    66041    users 
   TABLE DATA           �   COPY public.users (user_id, username, password, nama_lengkap, alamat, email, nomor_telepon, user_img, kode_verif, is_verif) FROM stdin;
    public          postgres    false    230       4928.dat P           0    0    admin_admin_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_admin_id_seq', 2, true);
          public          postgres    false    216         Q           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.alamatpengiriman_alamat_id_seq', 3, true);
          public          postgres    false    218         R           0    0    kategori_kategori_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 2, true);
          public          postgres    false    220         S           0    0    keranjang_keranjang_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.keranjang_keranjang_id_seq', 32, true);
          public          postgres    false    222         T           0    0    produk_produk_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.produk_produk_id_seq', 28, true);
          public          postgres    false    224         U           0    0    toko_toko_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.toko_toko_id_seq', 7, true);
          public          postgres    false    226         V           0    0    transaksi_transaksi_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaksi_transaksi_id_seq', 24, true);
          public          postgres    false    229         W           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);
          public          postgres    false    231         �           2606    66056    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215         �           2606    66058 &   alamatpengiriman alamatpengiriman_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_pkey PRIMARY KEY (alamat_id);
 P   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_pkey;
       public            postgres    false    217         �           2606    66060 #   kategori kategori_nama_kategori_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_nama_kategori_key UNIQUE (nama_kategori);
 M   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_nama_kategori_key;
       public            postgres    false    219         �           2606    66062    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    219         �           2606    66064    keranjang keranjang_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (keranjang_id);
 B   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_pkey;
       public            postgres    false    221         �           2606    66066    produk produk_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (produk_id);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    223         �           2606    66068    toko toko_nama_toko_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_nama_toko_key UNIQUE (nama_toko);
 A   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_nama_toko_key;
       public            postgres    false    225         �           2606    66070    toko toko_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (toko_id);
 8   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_pkey;
       public            postgres    false    225         �           2606    66072    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (transaksi_id);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    227         �           2606    66074 &   transaksi_produk transaksi_produk_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_pkey PRIMARY KEY (transaksi_id, produk_id);
 P   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_pkey;
       public            postgres    false    228    228         �           2606    66076    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    230         �           2606    66078    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    230         �           2606    66079 .   alamatpengiriman alamatpengiriman_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 X   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_user_id_fkey;
       public          postgres    false    217    230    4758         �           2606    66084 "   keranjang keranjang_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 L   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_produk_id_fkey;
       public          postgres    false    221    223    4748         �           2606    66089     keranjang keranjang_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_user_id_fkey;
       public          postgres    false    221    230    4758         �           2606    66094    produk produk_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 H   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_kategori_id_fkey;
       public          postgres    false    4744    219    223         �           2606    66099    produk produk_toko_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_toko_id_fkey FOREIGN KEY (toko_id) REFERENCES public.toko(toko_id);
 D   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_toko_id_fkey;
       public          postgres    false    225    4752    223         �           2606    66104    toko toko_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_user_id_fkey;
       public          postgres    false    4758    230    225         �           2606    66109 0   transaksi_produk transaksi_produk_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 Z   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_produk_id_fkey;
       public          postgres    false    4748    223    228         �           2606    66114 3   transaksi_produk transaksi_produk_transaksi_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_transaksi_id_fkey FOREIGN KEY (transaksi_id) REFERENCES public.transaksi(transaksi_id);
 ]   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_transaksi_id_fkey;
       public          postgres    false    4754    228    227         �           2606    66119     transaksi transaksi_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_user_id_fkey;
       public          postgres    false    230    4758    227                                                                                                                                                                                                                                                                                                             4913.dat                                                                                            0000600 0004000 0002000 00000000122 14627113604 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	zakiadmin	zaki	ahmad zaki	zakihaker9@gmail.com
2	asd	asd	asd	asd@gmail.com
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                              4915.dat                                                                                            0000600 0004000 0002000 00000000157 14627113604 0014263 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	salsa	Jember	JEmber	123456	012345577
2	1	zaki\n\n	bekasi	bekasi	123123	asdas
3	9	aeda	afa	afa	afa	afa
\.


                                                                                                                                                                                                                                                                                                                                                                                                                 4917.dat                                                                                            0000600 0004000 0002000 00000000143 14627113604 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Makanan	./asset/file/img_kategori/makanan.jpg
2	Minuman	./asset/file/img_kategori/minum.jpg
\.


                                                                                                                                                                                                                                                                                                                                                                                                                             4919.dat                                                                                            0000600 0004000 0002000 00000000145 14627113604 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        28	1	19	1	10000.00	2024-05-19 15:16:41.433567	\N
31	9	17	1	8000.00	2024-06-02 22:14:16.06254	\N
\.


                                                                                                                                                                                                                                                                                                                                                                                                                           4921.dat                                                                                            0000600 0004000 0002000 00000001741 14627113604 0014260 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	1	Risol	asli jombang	5000.00	10	./asset/file/tumbas-removebg.png
17	1	1	Martabak Telor	enakk slurr	8000.00	20	./asset/file/martabak telor.jpg
18	1	2	Es kepal milo	Manis, lejat , dan bergiji	5000.00	10	./asset/file/es kepal milo.jpeg
19	1	1	Mie Ayam	Mie asli dari terigu pilihan.	10000.00	25	./asset/file/mie ayam.jpg
20	1	1	Nasi Goreng	Asli dari taiwan	10000.00	15	./asset/file/nasi goreng.jpeg
21	1	1	Seblak Cuy	Bisa Custom topping	10000.00	31	./asset/file/seblak.jpg
22	1	1	Thau Bakso	Khusus chinese	5000.00	12	./asset/file/tahu bakso.jpg
23	1	2	Es Campur	Esnya dari everest	3000.00	20	./asset/file/es campur.jpeg
24	1	2	Es cincau	Gulaa aslii	3000.00	15	./asset/file/es cincau.jpeg
25	1	2	Es cendol	Gula Aren Pilihann	6000.00	34	./asset/file/es cendol.jpeg
26	1	2	Es doger	es dofer jeberr	3000.00	14	./asset/file/es doger.jpeg
27	1	1	Ayam Malaysia	kriuk, meskipun dalamnya mentah	10000.00	50	./asset/file/ayam malaysia.png
28	7	1	mie	enak	200000.00	13	./asset/file/toefl_logo 1.png
\.


                               4923.dat                                                                                            0000600 0004000 0002000 00000000366 14627113604 0014264 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	ziShop	Toko elektronik terpercaya	Surabaya	085888429506
4	3	biComerce	Store mahal	Jember	099999
5	6	zizi store	store mantap	SUrabaya	085888429506
6	8	zakaStore	zakaaa	surabaya	0999999
7	9	keme shop	Makanan anti boraks	sanan	081247929996
\.


                                                                                                                                                                                                                                                                          4925.dat                                                                                            0000600 0004000 0002000 00000002130 14627113604 0014255 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	1	200000.00	2023-06-09 10:15:32.026419	Jember	5
4	1	320000.00	2023-06-09 10:15:32.036409	Jember	7
5	1	600000.00	2023-06-09 14:20:25.835299	Jember	4
6	1	400000.00	2023-06-09 14:20:25.843053	Jember	5
7	1	200000.00	2023-06-09 16:56:18.056122	Jember	5
8	1	240000.00	2023-06-09 16:56:18.062471	Jember	6
9	1	300000.00	2023-06-09 16:56:18.063751	Jember	1
10	1	300000.00	2023-06-09 17:46:36.245724	Jember	4
11	1	2000000.00	2023-06-09 17:46:36.253611	Jember	8
12	1	200000.00	2023-06-09 18:28:17.418857	bekasi	5
13	1	120000.00	2023-06-09 18:28:17.427204	bekasi	6
14	1	2000000.00	2023-06-09 18:28:17.428447	bekasi	8
15	1	1200000.00	2024-04-29 10:07:18.629045	bekasi	4
16	1	300.00	2024-04-29 10:46:30.963658	bekasi	10
17	1	320000.00	2024-05-12 22:23:49.943787	bekasi	7
18	1	2000000.00	2024-05-12 22:23:49.971024	bekasi	8
19	1	6000000.00	2024-05-13 02:37:54.684506	bekasi	8
20	1	5000.00	2024-05-13 03:23:25.313293	bekasi	1
21	1	12000.00	2024-05-13 03:23:25.319533	bekasi	11
22	1	23.00	2024-05-13 03:23:25.323714	bekasi	13
23	9	8000.00	2024-06-02 21:21:58.985657	afa	17
24	9	200000.00	2024-06-02 21:21:59.003444	afa	28
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                        4926.dat                                                                                            0000600 0004000 0002000 00000000034 14627113604 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        20	1	1
23	17	1
24	28	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    4928.dat                                                                                            0000600 0004000 0002000 00000001164 14627113604 0014266 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        3	zaa	zaa	zaa	jember	zaa@gmail.com	0238193212	./asset/file/WhatsApp Image 2023-06-03 at 17.53.41.jpeg	\N	\N
5	zakizaki	zaki	zama	asdajsad	zama@gmail.com	asdasd	./asset/file/tumbas-removebg.png	\N	\N
6	salsa	salsa	salsa	\N	salsa@gmail.com	\N	\N	\N	\N
7	muza	muza	muza	\N	muza@gmail.com	\N	\N	\N	\N
8	zaka	zaka	zaka	surabaya	zaka@gmail.com	3213123	./asset/file/tumbas-removebg.png	\N	\N
1	zaki	zaki	Ahmad Muzakki	Bekasi swag	zakihaker9@gmail.com	085888429506	./asset/file/makanan.jpg	\N	\N
9	kemee	12345678	Muhamad Kimi Reza	surabaya	m.kimireza1@gmail.com	31243425	./asset/file/makanan.jpg	7dad68af92cb6929579e3d65e8c0764f	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000044662 14627113604 0015404 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.0
-- Dumped by pg_dump version 16.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE "NjajanFix";
--
-- Name: NjajanFix; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "NjajanFix" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';


ALTER DATABASE "NjajanFix" OWNER TO postgres;

\connect "NjajanFix"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name character varying(80) NOT NULL,
    admin_pass character varying(40) NOT NULL,
    admin_nama_lengkap character varying(80),
    admin_email character varying(80)
);


ALTER TABLE public.admin OWNER TO postgres;

--
-- Name: admin_admin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.admin_admin_id_seq OWNER TO postgres;

--
-- Name: admin_admin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;


--
-- Name: alamatpengiriman; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alamatpengiriman (
    alamat_id integer NOT NULL,
    user_id integer,
    nama_penerima character varying(255),
    alamat character varying(255),
    kota character varying(255),
    kode_pos character varying(10),
    nomor_telepon character varying(20)
);


ALTER TABLE public.alamatpengiriman OWNER TO postgres;

--
-- Name: alamatpengiriman_alamat_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alamatpengiriman_alamat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.alamatpengiriman_alamat_id_seq OWNER TO postgres;

--
-- Name: alamatpengiriman_alamat_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alamatpengiriman_alamat_id_seq OWNED BY public.alamatpengiriman.alamat_id;


--
-- Name: kategori; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    nama_kategori character varying(255),
    kategori_img character varying(200)
);


ALTER TABLE public.kategori OWNER TO postgres;

--
-- Name: kategori_kategori_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kategori_kategori_id_seq OWNER TO postgres;

--
-- Name: kategori_kategori_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;


--
-- Name: keranjang; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.keranjang (
    keranjang_id integer NOT NULL,
    user_id integer NOT NULL,
    produk_id integer NOT NULL,
    quantity integer NOT NULL,
    total_harga numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone
);


ALTER TABLE public.keranjang OWNER TO postgres;

--
-- Name: keranjang_keranjang_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.keranjang_keranjang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.keranjang_keranjang_id_seq OWNER TO postgres;

--
-- Name: keranjang_keranjang_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.keranjang_keranjang_id_seq OWNED BY public.keranjang.keranjang_id;


--
-- Name: produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produk (
    produk_id integer NOT NULL,
    toko_id integer,
    kategori_id integer,
    nama_produk character varying(255),
    deskripsi_produk text,
    harga_produk numeric(10,2),
    stok_produk integer,
    produk_img character varying(200)
);


ALTER TABLE public.produk OWNER TO postgres;

--
-- Name: produk_produk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produk_produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produk_produk_id_seq OWNER TO postgres;

--
-- Name: produk_produk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produk_produk_id_seq OWNED BY public.produk.produk_id;


--
-- Name: toko; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.toko (
    toko_id integer NOT NULL,
    user_id integer,
    nama_toko character varying(255),
    deskripsi_toko text,
    alamat_toko character varying(255),
    nomor_telepon_toko character varying(255)
);


ALTER TABLE public.toko OWNER TO postgres;

--
-- Name: toko_toko_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.toko_toko_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.toko_toko_id_seq OWNER TO postgres;

--
-- Name: toko_toko_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.toko_toko_id_seq OWNED BY public.toko.toko_id;


--
-- Name: transaksi; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi (
    transaksi_id integer NOT NULL,
    user_id integer,
    total_harga numeric(10,2),
    waktu_transaksi timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    alamat_pengiriman character varying,
    produk_id integer
);


ALTER TABLE public.transaksi OWNER TO postgres;

--
-- Name: transaksi_produk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaksi_produk (
    transaksi_id integer NOT NULL,
    produk_id integer NOT NULL,
    jumlah integer NOT NULL
);


ALTER TABLE public.transaksi_produk OWNER TO postgres;

--
-- Name: transaksi_transaksi_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaksi_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.transaksi_transaksi_id_seq OWNER TO postgres;

--
-- Name: transaksi_transaksi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaksi_transaksi_id_seq OWNED BY public.transaksi.transaksi_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50),
    password character varying(50),
    nama_lengkap character varying(50),
    alamat character varying(255),
    email character varying(70),
    nomor_telepon character varying(20),
    user_img character varying(200),
    kode_verif character varying,
    is_verif integer
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_user_id_seq OWNER TO postgres;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: admin admin_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);


--
-- Name: alamatpengiriman alamat_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alamatpengiriman ALTER COLUMN alamat_id SET DEFAULT nextval('public.alamatpengiriman_alamat_id_seq'::regclass);


--
-- Name: kategori kategori_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);


--
-- Name: keranjang keranjang_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang ALTER COLUMN keranjang_id SET DEFAULT nextval('public.keranjang_keranjang_id_seq'::regclass);


--
-- Name: produk produk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk ALTER COLUMN produk_id SET DEFAULT nextval('public.produk_produk_id_seq'::regclass);


--
-- Name: toko toko_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko ALTER COLUMN toko_id SET DEFAULT nextval('public.toko_toko_id_seq'::regclass);


--
-- Name: transaksi transaksi_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi ALTER COLUMN transaksi_id SET DEFAULT nextval('public.transaksi_transaksi_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.admin (admin_id, admin_name, admin_pass, admin_nama_lengkap, admin_email) FROM stdin;
\.
COPY public.admin (admin_id, admin_name, admin_pass, admin_nama_lengkap, admin_email) FROM '$$PATH$$/4913.dat';

--
-- Data for Name: alamatpengiriman; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.alamatpengiriman (alamat_id, user_id, nama_penerima, alamat, kota, kode_pos, nomor_telepon) FROM stdin;
\.
COPY public.alamatpengiriman (alamat_id, user_id, nama_penerima, alamat, kota, kode_pos, nomor_telepon) FROM '$$PATH$$/4915.dat';

--
-- Data for Name: kategori; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.kategori (kategori_id, nama_kategori, kategori_img) FROM stdin;
\.
COPY public.kategori (kategori_id, nama_kategori, kategori_img) FROM '$$PATH$$/4917.dat';

--
-- Data for Name: keranjang; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.keranjang (keranjang_id, user_id, produk_id, quantity, total_harga, created_at, updated_at) FROM stdin;
\.
COPY public.keranjang (keranjang_id, user_id, produk_id, quantity, total_harga, created_at, updated_at) FROM '$$PATH$$/4919.dat';

--
-- Data for Name: produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produk (produk_id, toko_id, kategori_id, nama_produk, deskripsi_produk, harga_produk, stok_produk, produk_img) FROM stdin;
\.
COPY public.produk (produk_id, toko_id, kategori_id, nama_produk, deskripsi_produk, harga_produk, stok_produk, produk_img) FROM '$$PATH$$/4921.dat';

--
-- Data for Name: toko; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.toko (toko_id, user_id, nama_toko, deskripsi_toko, alamat_toko, nomor_telepon_toko) FROM stdin;
\.
COPY public.toko (toko_id, user_id, nama_toko, deskripsi_toko, alamat_toko, nomor_telepon_toko) FROM '$$PATH$$/4923.dat';

--
-- Data for Name: transaksi; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi (transaksi_id, user_id, total_harga, waktu_transaksi, alamat_pengiriman, produk_id) FROM stdin;
\.
COPY public.transaksi (transaksi_id, user_id, total_harga, waktu_transaksi, alamat_pengiriman, produk_id) FROM '$$PATH$$/4925.dat';

--
-- Data for Name: transaksi_produk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaksi_produk (transaksi_id, produk_id, jumlah) FROM stdin;
\.
COPY public.transaksi_produk (transaksi_id, produk_id, jumlah) FROM '$$PATH$$/4926.dat';

--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (user_id, username, password, nama_lengkap, alamat, email, nomor_telepon, user_img, kode_verif, is_verif) FROM stdin;
\.
COPY public.users (user_id, username, password, nama_lengkap, alamat, email, nomor_telepon, user_img, kode_verif, is_verif) FROM '$$PATH$$/4928.dat';

--
-- Name: admin_admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_admin_id_seq', 2, true);


--
-- Name: alamatpengiriman_alamat_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alamatpengiriman_alamat_id_seq', 3, true);


--
-- Name: kategori_kategori_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 2, true);


--
-- Name: keranjang_keranjang_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.keranjang_keranjang_id_seq', 32, true);


--
-- Name: produk_produk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produk_produk_id_seq', 28, true);


--
-- Name: toko_toko_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.toko_toko_id_seq', 7, true);


--
-- Name: transaksi_transaksi_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaksi_transaksi_id_seq', 24, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);


--
-- Name: admin admin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);


--
-- Name: alamatpengiriman alamatpengiriman_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_pkey PRIMARY KEY (alamat_id);


--
-- Name: kategori kategori_nama_kategori_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_nama_kategori_key UNIQUE (nama_kategori);


--
-- Name: kategori kategori_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);


--
-- Name: keranjang keranjang_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (keranjang_id);


--
-- Name: produk produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (produk_id);


--
-- Name: toko toko_nama_toko_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_nama_toko_key UNIQUE (nama_toko);


--
-- Name: toko toko_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (toko_id);


--
-- Name: transaksi transaksi_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (transaksi_id);


--
-- Name: transaksi_produk transaksi_produk_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_pkey PRIMARY KEY (transaksi_id, produk_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: alamatpengiriman alamatpengiriman_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: keranjang keranjang_produk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);


--
-- Name: keranjang keranjang_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: produk produk_kategori_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);


--
-- Name: produk produk_toko_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_toko_id_fkey FOREIGN KEY (toko_id) REFERENCES public.toko(toko_id);


--
-- Name: toko toko_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- Name: transaksi_produk transaksi_produk_produk_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);


--
-- Name: transaksi_produk transaksi_produk_transaksi_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_transaksi_id_fkey FOREIGN KEY (transaksi_id) REFERENCES public.transaksi(transaksi_id);


--
-- Name: transaksi transaksi_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              