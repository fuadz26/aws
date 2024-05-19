PGDMP  3    	                |            zipedia    16.2    16.0 K                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            !           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            "           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            #           1262    16416    zipedia    DATABASE     s   CREATE DATABASE zipedia WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';
    DROP DATABASE zipedia;
                postgres    false            �            1259    16459    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name character varying(80) NOT NULL,
    admin_pass character varying(40) NOT NULL,
    admin_nama_lengkap character varying(80),
    admin_email character varying(80)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    16462    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    215            $           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    216            �            1259    16463    alamatpengiriman    TABLE       CREATE TABLE public.alamatpengiriman (
    alamat_id integer NOT NULL,
    user_id integer,
    nama_penerima character varying(255),
    alamat character varying(255),
    kota character varying(255),
    kode_pos character varying(10),
    nomor_telepon character varying(20)
);
 $   DROP TABLE public.alamatpengiriman;
       public         heap    postgres    false            �            1259    16468    alamatpengiriman_alamat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alamatpengiriman_alamat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.alamatpengiriman_alamat_id_seq;
       public          postgres    false    217            %           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.alamatpengiriman_alamat_id_seq OWNED BY public.alamatpengiriman.alamat_id;
          public          postgres    false    218            �            1259    16469    kategori    TABLE     �   CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    nama_kategori character varying(255),
    kategori_img character varying(200)
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    16472    kategori_kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kategori_kategori_id_seq;
       public          postgres    false    219            &           0    0    kategori_kategori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;
          public          postgres    false    220            �            1259    16473 	   keranjang    TABLE     <  CREATE TABLE public.keranjang (
    keranjang_id integer NOT NULL,
    user_id integer NOT NULL,
    produk_id integer NOT NULL,
    quantity integer NOT NULL,
    total_harga numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone
);
    DROP TABLE public.keranjang;
       public         heap    postgres    false            �            1259    16477    keranjang_keranjang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keranjang_keranjang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.keranjang_keranjang_id_seq;
       public          postgres    false    221            '           0    0    keranjang_keranjang_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.keranjang_keranjang_id_seq OWNED BY public.keranjang.keranjang_id;
          public          postgres    false    222            �            1259    16478    produk    TABLE       CREATE TABLE public.produk (
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
       public         heap    postgres    false            �            1259    16483    produk_produk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produk_produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.produk_produk_id_seq;
       public          postgres    false    223            (           0    0    produk_produk_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.produk_produk_id_seq OWNED BY public.produk.produk_id;
          public          postgres    false    224            �            1259    16484    toko    TABLE     �   CREATE TABLE public.toko (
    toko_id integer NOT NULL,
    user_id integer,
    nama_toko character varying(255),
    deskripsi_toko text,
    alamat_toko character varying(255),
    nomor_telepon_toko character varying(255)
);
    DROP TABLE public.toko;
       public         heap    postgres    false            �            1259    16489    toko_toko_id_seq    SEQUENCE     �   CREATE SEQUENCE public.toko_toko_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.toko_toko_id_seq;
       public          postgres    false    225            )           0    0    toko_toko_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.toko_toko_id_seq OWNED BY public.toko.toko_id;
          public          postgres    false    226            �            1259    16490 	   transaksi    TABLE       CREATE TABLE public.transaksi (
    transaksi_id integer NOT NULL,
    user_id integer,
    total_harga numeric(10,2),
    waktu_transaksi timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    alamat_pengiriman character varying,
    produk_id integer
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �            1259    16496    transaksi_produk    TABLE     �   CREATE TABLE public.transaksi_produk (
    transaksi_id integer NOT NULL,
    produk_id integer NOT NULL,
    jumlah integer NOT NULL
);
 $   DROP TABLE public.transaksi_produk;
       public         heap    postgres    false            �            1259    16499    transaksi_transaksi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaksi_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaksi_transaksi_id_seq;
       public          postgres    false    227            *           0    0    transaksi_transaksi_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaksi_transaksi_id_seq OWNED BY public.transaksi.transaksi_id;
          public          postgres    false    229            �            1259    16500    users    TABLE     >  CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(50),
    password character varying(50),
    nama_lengkap character varying(50),
    alamat character varying(255),
    email character varying(70),
    nomor_telepon character varying(20),
    user_img character varying(200)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16505    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    230            +           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    231            S           2604    16506    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    216    215            T           2604    16507    alamatpengiriman alamat_id    DEFAULT     �   ALTER TABLE ONLY public.alamatpengiriman ALTER COLUMN alamat_id SET DEFAULT nextval('public.alamatpengiriman_alamat_id_seq'::regclass);
 I   ALTER TABLE public.alamatpengiriman ALTER COLUMN alamat_id DROP DEFAULT;
       public          postgres    false    218    217            U           2604    16508    kategori kategori_id    DEFAULT     |   ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);
 C   ALTER TABLE public.kategori ALTER COLUMN kategori_id DROP DEFAULT;
       public          postgres    false    220    219            V           2604    16509    keranjang keranjang_id    DEFAULT     �   ALTER TABLE ONLY public.keranjang ALTER COLUMN keranjang_id SET DEFAULT nextval('public.keranjang_keranjang_id_seq'::regclass);
 E   ALTER TABLE public.keranjang ALTER COLUMN keranjang_id DROP DEFAULT;
       public          postgres    false    222    221            X           2604    16510    produk produk_id    DEFAULT     t   ALTER TABLE ONLY public.produk ALTER COLUMN produk_id SET DEFAULT nextval('public.produk_produk_id_seq'::regclass);
 ?   ALTER TABLE public.produk ALTER COLUMN produk_id DROP DEFAULT;
       public          postgres    false    224    223            Y           2604    16511    toko toko_id    DEFAULT     l   ALTER TABLE ONLY public.toko ALTER COLUMN toko_id SET DEFAULT nextval('public.toko_toko_id_seq'::regclass);
 ;   ALTER TABLE public.toko ALTER COLUMN toko_id DROP DEFAULT;
       public          postgres    false    226    225            Z           2604    16512    transaksi transaksi_id    DEFAULT     �   ALTER TABLE ONLY public.transaksi ALTER COLUMN transaksi_id SET DEFAULT nextval('public.transaksi_transaksi_id_seq'::regclass);
 E   ALTER TABLE public.transaksi ALTER COLUMN transaksi_id DROP DEFAULT;
       public          postgres    false    229    227            \           2604    16513    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    231    230                      0    16459    admin 
   TABLE DATA           b   COPY public.admin (admin_id, admin_name, admin_pass, admin_nama_lengkap, admin_email) FROM stdin;
    public          postgres    false    215   V[                 0    16463    alamatpengiriman 
   TABLE DATA           t   COPY public.alamatpengiriman (alamat_id, user_id, nama_penerima, alamat, kota, kode_pos, nomor_telepon) FROM stdin;
    public          postgres    false    217   �[                 0    16469    kategori 
   TABLE DATA           L   COPY public.kategori (kategori_id, nama_kategori, kategori_img) FROM stdin;
    public          postgres    false    219    \                 0    16473 	   keranjang 
   TABLE DATA           t   COPY public.keranjang (keranjang_id, user_id, produk_id, quantity, total_harga, created_at, updated_at) FROM stdin;
    public          postgres    false    221   V\                 0    16478    produk 
   TABLE DATA           �   COPY public.produk (produk_id, toko_id, kategori_id, nama_produk, deskripsi_produk, harga_produk, stok_produk, produk_img) FROM stdin;
    public          postgres    false    223   �\                 0    16484    toko 
   TABLE DATA           l   COPY public.toko (toko_id, user_id, nama_toko, deskripsi_toko, alamat_toko, nomor_telepon_toko) FROM stdin;
    public          postgres    false    225   m^                 0    16490 	   transaksi 
   TABLE DATA           v   COPY public.transaksi (transaksi_id, user_id, total_harga, waktu_transaksi, alamat_pengiriman, produk_id) FROM stdin;
    public          postgres    false    227   _                 0    16496    transaksi_produk 
   TABLE DATA           K   COPY public.transaksi_produk (transaksi_id, produk_id, jumlah) FROM stdin;
    public          postgres    false    228   U`                 0    16500    users 
   TABLE DATA           r   COPY public.users (user_id, username, password, nama_lengkap, alamat, email, nomor_telepon, user_img) FROM stdin;
    public          postgres    false    230   y`       ,           0    0    admin_admin_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_admin_id_seq', 2, true);
          public          postgres    false    216            -           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.alamatpengiriman_alamat_id_seq', 2, true);
          public          postgres    false    218            .           0    0    kategori_kategori_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 2, true);
          public          postgres    false    220            /           0    0    keranjang_keranjang_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.keranjang_keranjang_id_seq', 28, true);
          public          postgres    false    222            0           0    0    produk_produk_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.produk_produk_id_seq', 27, true);
          public          postgres    false    224            1           0    0    toko_toko_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.toko_toko_id_seq', 6, true);
          public          postgres    false    226            2           0    0    transaksi_transaksi_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaksi_transaksi_id_seq', 22, true);
          public          postgres    false    229            3           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 8, true);
          public          postgres    false    231            ^           2606    16515    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            `           2606    16517 &   alamatpengiriman alamatpengiriman_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_pkey PRIMARY KEY (alamat_id);
 P   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_pkey;
       public            postgres    false    217            b           2606    16519 #   kategori kategori_nama_kategori_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_nama_kategori_key UNIQUE (nama_kategori);
 M   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_nama_kategori_key;
       public            postgres    false    219            d           2606    16521    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    219            f           2606    16523    keranjang keranjang_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (keranjang_id);
 B   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_pkey;
       public            postgres    false    221            h           2606    16526    produk produk_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (produk_id);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    223            j           2606    16528    toko toko_nama_toko_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_nama_toko_key UNIQUE (nama_toko);
 A   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_nama_toko_key;
       public            postgres    false    225            l           2606    16530    toko toko_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (toko_id);
 8   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_pkey;
       public            postgres    false    225            n           2606    16532    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (transaksi_id);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    227            p           2606    16534 &   transaksi_produk transaksi_produk_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_pkey PRIMARY KEY (transaksi_id, produk_id);
 P   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_pkey;
       public            postgres    false    228    228            r           2606    16536    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    230            t           2606    16538    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    230            u           2606    16539 .   alamatpengiriman alamatpengiriman_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 X   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_user_id_fkey;
       public          postgres    false    217    230    4210            v           2606    16544 "   keranjang keranjang_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 L   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_produk_id_fkey;
       public          postgres    false    221    223    4200            w           2606    16549     keranjang keranjang_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_user_id_fkey;
       public          postgres    false    221    230    4210            x           2606    16554    produk produk_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 H   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_kategori_id_fkey;
       public          postgres    false    4196    219    223            y           2606    16559    produk produk_toko_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_toko_id_fkey FOREIGN KEY (toko_id) REFERENCES public.toko(toko_id);
 D   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_toko_id_fkey;
       public          postgres    false    225    4204    223            z           2606    16564    toko toko_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_user_id_fkey;
       public          postgres    false    4210    230    225            |           2606    16569 0   transaksi_produk transaksi_produk_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 Z   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_produk_id_fkey;
       public          postgres    false    4200    223    228            }           2606    16574 3   transaksi_produk transaksi_produk_transaksi_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_transaksi_id_fkey FOREIGN KEY (transaksi_id) REFERENCES public.transaksi(transaksi_id);
 ]   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_transaksi_id_fkey;
       public          postgres    false    4206    228    227            {           2606    16579     transaksi transaksi_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_user_id_fkey;
       public          postgres    false    230    4210    227               =   x�3�J��LL����83rS�L����Zd鐞��������eęX�����b���� �f�         M   x�3�4�,N�)N��J�MJ-��rS�F�&�f�`��ܜ���*1;3&/&�3)5;�8F� gbqJb1W� ��         F   x�3��M�N�K����O,.N-�O��I���M��N,IM�/��υ���*H�2����+�ů��:F��� �<!�         :   x�3��4�4�@�g`�id`d�k`�kh�`hjehfeb�gblljf������� �H	i         �  x�u�Ao�@���_1?�ŀ�4=:Q�C��js�e�'0���]6��}�LK�2�yo�2���'�V+���nM��T�4M�4UY��zO��5�� ��/�L�NE�t��d_#�]�6�J�u�,6x�Sw-_��,�IRw�T�=4ԡú�e�M5���3Z(ȕ\�F�_��I��F�Lp���C\���ł�2@ǚ+�� gӇ��A&�hW6���3<��$��D��v!e+�TeT��,�~Q�%��pQ��Q߷���X^p����y>�F_y$�V�ߪ�*���T�%OKn��`��b���:�t��d/8�G����j�I�R�)���nfԉ�	�z
16�W�:"����+��Y�v`�Q�cqV����|DEф��Q�$��ax#5�m���GLL����{��x�q�-�w�JZ��!+�.V�gf��o�w��l�8�g         �   x�m��� ���)xC�4tvsE7���OJhK8��[�q��|wgǰ�|�<��1,���q����>#�(��1��ת-N�9�Ű9D�3�4������ݶQ�LA��K���������ݹ7"�߉���o�f:n         :  x�}�KN�0�u}��@#�����#�!6p���I���|�ǲ�¸}��XV�ۅ0�R� �R[�n����b�]�
q�!�XC�1�J�6��w��BM��b���<�4'�C�M�p֠]8�-�y��!�$R=����h$��Q��4}M�IQ�j�X�����מ��z���p0�NH����2�3ev�+���낱͹��n��gh����X��[�������V�s����T�����e�7A��,m��_#�H��U�0�-�= ��{,$�d��}`s�L������>KЈA� � sD�!            x�32�4�4����� "�         �   x��P�r� ��+�cg�r�R��4n��>�e'����]&��"�Ih��U�
��q�YB�`t#�8�I�E������h���M���yfO�a��%Y�d���đ��gci�W]�`=Bs�"���fϵn�L�.禮|�,-���|O�u�U�鑸�
�vx��"�m�>�U4�QB��u
�{��uаgO<������������:�Zd�gŞ�y1L�^K+N)�Gd��     