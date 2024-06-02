PGDMP  ;                     |         	   NjajanFix    16.0    16.0 K    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    65999 	   NjajanFix    DATABASE     �   CREATE DATABASE "NjajanFix" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "NjajanFix";
                postgres    false            �            1259    66000    admin    TABLE     �   CREATE TABLE public.admin (
    admin_id integer NOT NULL,
    admin_name character varying(80) NOT NULL,
    admin_pass character varying(40) NOT NULL,
    admin_nama_lengkap character varying(80),
    admin_email character varying(80)
);
    DROP TABLE public.admin;
       public         heap    postgres    false            �            1259    66003    admin_admin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_admin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_admin_id_seq;
       public          postgres    false    215            H           0    0    admin_admin_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_admin_id_seq OWNED BY public.admin.admin_id;
          public          postgres    false    216            �            1259    66004    alamatpengiriman    TABLE       CREATE TABLE public.alamatpengiriman (
    alamat_id integer NOT NULL,
    user_id integer,
    nama_penerima character varying(255),
    alamat character varying(255),
    kota character varying(255),
    kode_pos character varying(10),
    nomor_telepon character varying(20)
);
 $   DROP TABLE public.alamatpengiriman;
       public         heap    postgres    false            �            1259    66009    alamatpengiriman_alamat_id_seq    SEQUENCE     �   CREATE SEQUENCE public.alamatpengiriman_alamat_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.alamatpengiriman_alamat_id_seq;
       public          postgres    false    217            I           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.alamatpengiriman_alamat_id_seq OWNED BY public.alamatpengiriman.alamat_id;
          public          postgres    false    218            �            1259    66010    kategori    TABLE     �   CREATE TABLE public.kategori (
    kategori_id integer NOT NULL,
    nama_kategori character varying(255),
    kategori_img character varying(200)
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    66013    kategori_kategori_id_seq    SEQUENCE     �   CREATE SEQUENCE public.kategori_kategori_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.kategori_kategori_id_seq;
       public          postgres    false    219            J           0    0    kategori_kategori_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.kategori_kategori_id_seq OWNED BY public.kategori.kategori_id;
          public          postgres    false    220            �            1259    66014 	   keranjang    TABLE     <  CREATE TABLE public.keranjang (
    keranjang_id integer NOT NULL,
    user_id integer NOT NULL,
    produk_id integer NOT NULL,
    quantity integer NOT NULL,
    total_harga numeric(10,2) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp without time zone
);
    DROP TABLE public.keranjang;
       public         heap    postgres    false            �            1259    66018    keranjang_keranjang_id_seq    SEQUENCE     �   CREATE SEQUENCE public.keranjang_keranjang_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.keranjang_keranjang_id_seq;
       public          postgres    false    221            K           0    0    keranjang_keranjang_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.keranjang_keranjang_id_seq OWNED BY public.keranjang.keranjang_id;
          public          postgres    false    222            �            1259    66019    produk    TABLE       CREATE TABLE public.produk (
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
       public         heap    postgres    false            �            1259    66024    produk_produk_id_seq    SEQUENCE     �   CREATE SEQUENCE public.produk_produk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.produk_produk_id_seq;
       public          postgres    false    223            L           0    0    produk_produk_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.produk_produk_id_seq OWNED BY public.produk.produk_id;
          public          postgres    false    224            �            1259    66025    toko    TABLE     �   CREATE TABLE public.toko (
    toko_id integer NOT NULL,
    user_id integer,
    nama_toko character varying(255),
    deskripsi_toko text,
    alamat_toko character varying(255),
    nomor_telepon_toko character varying(255)
);
    DROP TABLE public.toko;
       public         heap    postgres    false            �            1259    66030    toko_toko_id_seq    SEQUENCE     �   CREATE SEQUENCE public.toko_toko_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.toko_toko_id_seq;
       public          postgres    false    225            M           0    0    toko_toko_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.toko_toko_id_seq OWNED BY public.toko.toko_id;
          public          postgres    false    226            �            1259    66031 	   transaksi    TABLE       CREATE TABLE public.transaksi (
    transaksi_id integer NOT NULL,
    user_id integer,
    total_harga numeric(10,2),
    waktu_transaksi timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    alamat_pengiriman character varying,
    produk_id integer
);
    DROP TABLE public.transaksi;
       public         heap    postgres    false            �            1259    66037    transaksi_produk    TABLE     �   CREATE TABLE public.transaksi_produk (
    transaksi_id integer NOT NULL,
    produk_id integer NOT NULL,
    jumlah integer NOT NULL
);
 $   DROP TABLE public.transaksi_produk;
       public         heap    postgres    false            �            1259    66040    transaksi_transaksi_id_seq    SEQUENCE     �   CREATE SEQUENCE public.transaksi_transaksi_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.transaksi_transaksi_id_seq;
       public          postgres    false    227            N           0    0    transaksi_transaksi_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.transaksi_transaksi_id_seq OWNED BY public.transaksi.transaksi_id;
          public          postgres    false    229            �            1259    66041    users    TABLE     v  CREATE TABLE public.users (
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
       public         heap    postgres    false            �            1259    66046    users_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.users_user_id_seq;
       public          postgres    false    230            O           0    0    users_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;
          public          postgres    false    231            w           2604    66047    admin admin_id    DEFAULT     p   ALTER TABLE ONLY public.admin ALTER COLUMN admin_id SET DEFAULT nextval('public.admin_admin_id_seq'::regclass);
 =   ALTER TABLE public.admin ALTER COLUMN admin_id DROP DEFAULT;
       public          postgres    false    216    215            x           2604    66048    alamatpengiriman alamat_id    DEFAULT     �   ALTER TABLE ONLY public.alamatpengiriman ALTER COLUMN alamat_id SET DEFAULT nextval('public.alamatpengiriman_alamat_id_seq'::regclass);
 I   ALTER TABLE public.alamatpengiriman ALTER COLUMN alamat_id DROP DEFAULT;
       public          postgres    false    218    217            y           2604    66049    kategori kategori_id    DEFAULT     |   ALTER TABLE ONLY public.kategori ALTER COLUMN kategori_id SET DEFAULT nextval('public.kategori_kategori_id_seq'::regclass);
 C   ALTER TABLE public.kategori ALTER COLUMN kategori_id DROP DEFAULT;
       public          postgres    false    220    219            z           2604    66050    keranjang keranjang_id    DEFAULT     �   ALTER TABLE ONLY public.keranjang ALTER COLUMN keranjang_id SET DEFAULT nextval('public.keranjang_keranjang_id_seq'::regclass);
 E   ALTER TABLE public.keranjang ALTER COLUMN keranjang_id DROP DEFAULT;
       public          postgres    false    222    221            |           2604    66051    produk produk_id    DEFAULT     t   ALTER TABLE ONLY public.produk ALTER COLUMN produk_id SET DEFAULT nextval('public.produk_produk_id_seq'::regclass);
 ?   ALTER TABLE public.produk ALTER COLUMN produk_id DROP DEFAULT;
       public          postgres    false    224    223            }           2604    66052    toko toko_id    DEFAULT     l   ALTER TABLE ONLY public.toko ALTER COLUMN toko_id SET DEFAULT nextval('public.toko_toko_id_seq'::regclass);
 ;   ALTER TABLE public.toko ALTER COLUMN toko_id DROP DEFAULT;
       public          postgres    false    226    225            ~           2604    66053    transaksi transaksi_id    DEFAULT     �   ALTER TABLE ONLY public.transaksi ALTER COLUMN transaksi_id SET DEFAULT nextval('public.transaksi_transaksi_id_seq'::regclass);
 E   ALTER TABLE public.transaksi ALTER COLUMN transaksi_id DROP DEFAULT;
       public          postgres    false    229    227            �           2604    66054    users user_id    DEFAULT     n   ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);
 <   ALTER TABLE public.users ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    231    230            1          0    66000    admin 
   TABLE DATA           b   COPY public.admin (admin_id, admin_name, admin_pass, admin_nama_lengkap, admin_email) FROM stdin;
    public          postgres    false    215   �[       3          0    66004    alamatpengiriman 
   TABLE DATA           t   COPY public.alamatpengiriman (alamat_id, user_id, nama_penerima, alamat, kota, kode_pos, nomor_telepon) FROM stdin;
    public          postgres    false    217   \       5          0    66010    kategori 
   TABLE DATA           L   COPY public.kategori (kategori_id, nama_kategori, kategori_img) FROM stdin;
    public          postgres    false    219   w\       7          0    66014 	   keranjang 
   TABLE DATA           t   COPY public.keranjang (keranjang_id, user_id, produk_id, quantity, total_harga, created_at, updated_at) FROM stdin;
    public          postgres    false    221   �\       9          0    66019    produk 
   TABLE DATA           �   COPY public.produk (produk_id, toko_id, kategori_id, nama_produk, deskripsi_produk, harga_produk, stok_produk, produk_img) FROM stdin;
    public          postgres    false    223   -]       ;          0    66025    toko 
   TABLE DATA           l   COPY public.toko (toko_id, user_id, nama_toko, deskripsi_toko, alamat_toko, nomor_telepon_toko) FROM stdin;
    public          postgres    false    225   _       =          0    66031 	   transaksi 
   TABLE DATA           v   COPY public.transaksi (transaksi_id, user_id, total_harga, waktu_transaksi, alamat_pengiriman, produk_id) FROM stdin;
    public          postgres    false    227   �_       >          0    66037    transaksi_produk 
   TABLE DATA           K   COPY public.transaksi_produk (transaksi_id, produk_id, jumlah) FROM stdin;
    public          postgres    false    228   Ea       @          0    66041    users 
   TABLE DATA           �   COPY public.users (user_id, username, password, nama_lengkap, alamat, email, nomor_telepon, user_img, kode_verif, is_verif) FROM stdin;
    public          postgres    false    230   ua       P           0    0    admin_admin_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.admin_admin_id_seq', 2, true);
          public          postgres    false    216            Q           0    0    alamatpengiriman_alamat_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.alamatpengiriman_alamat_id_seq', 3, true);
          public          postgres    false    218            R           0    0    kategori_kategori_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.kategori_kategori_id_seq', 2, true);
          public          postgres    false    220            S           0    0    keranjang_keranjang_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.keranjang_keranjang_id_seq', 32, true);
          public          postgres    false    222            T           0    0    produk_produk_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.produk_produk_id_seq', 28, true);
          public          postgres    false    224            U           0    0    toko_toko_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.toko_toko_id_seq', 7, true);
          public          postgres    false    226            V           0    0    transaksi_transaksi_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.transaksi_transaksi_id_seq', 24, true);
          public          postgres    false    229            W           0    0    users_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.users_user_id_seq', 9, true);
          public          postgres    false    231            �           2606    66056    admin admin_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.admin
    ADD CONSTRAINT admin_pkey PRIMARY KEY (admin_id);
 :   ALTER TABLE ONLY public.admin DROP CONSTRAINT admin_pkey;
       public            postgres    false    215            �           2606    66058 &   alamatpengiriman alamatpengiriman_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_pkey PRIMARY KEY (alamat_id);
 P   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_pkey;
       public            postgres    false    217            �           2606    66060 #   kategori kategori_nama_kategori_key 
   CONSTRAINT     g   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_nama_kategori_key UNIQUE (nama_kategori);
 M   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_nama_kategori_key;
       public            postgres    false    219            �           2606    66062    kategori kategori_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT kategori_pkey PRIMARY KEY (kategori_id);
 @   ALTER TABLE ONLY public.kategori DROP CONSTRAINT kategori_pkey;
       public            postgres    false    219            �           2606    66064    keranjang keranjang_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_pkey PRIMARY KEY (keranjang_id);
 B   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_pkey;
       public            postgres    false    221            �           2606    66066    produk produk_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_pkey PRIMARY KEY (produk_id);
 <   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_pkey;
       public            postgres    false    223            �           2606    66068    toko toko_nama_toko_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_nama_toko_key UNIQUE (nama_toko);
 A   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_nama_toko_key;
       public            postgres    false    225            �           2606    66070    toko toko_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_pkey PRIMARY KEY (toko_id);
 8   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_pkey;
       public            postgres    false    225            �           2606    66072    transaksi transaksi_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_pkey PRIMARY KEY (transaksi_id);
 B   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_pkey;
       public            postgres    false    227            �           2606    66074 &   transaksi_produk transaksi_produk_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_pkey PRIMARY KEY (transaksi_id, produk_id);
 P   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_pkey;
       public            postgres    false    228    228            �           2606    66076    users users_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    230            �           2606    66078    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public            postgres    false    230            �           2606    66079 .   alamatpengiriman alamatpengiriman_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.alamatpengiriman
    ADD CONSTRAINT alamatpengiriman_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 X   ALTER TABLE ONLY public.alamatpengiriman DROP CONSTRAINT alamatpengiriman_user_id_fkey;
       public          postgres    false    217    230    4758            �           2606    66084 "   keranjang keranjang_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 L   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_produk_id_fkey;
       public          postgres    false    221    223    4748            �           2606    66089     keranjang keranjang_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.keranjang
    ADD CONSTRAINT keranjang_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.keranjang DROP CONSTRAINT keranjang_user_id_fkey;
       public          postgres    false    221    230    4758            �           2606    66094    produk produk_kategori_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_kategori_id_fkey FOREIGN KEY (kategori_id) REFERENCES public.kategori(kategori_id);
 H   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_kategori_id_fkey;
       public          postgres    false    4744    219    223            �           2606    66099    produk produk_toko_id_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.produk
    ADD CONSTRAINT produk_toko_id_fkey FOREIGN KEY (toko_id) REFERENCES public.toko(toko_id);
 D   ALTER TABLE ONLY public.produk DROP CONSTRAINT produk_toko_id_fkey;
       public          postgres    false    225    4752    223            �           2606    66104    toko toko_user_id_fkey    FK CONSTRAINT     z   ALTER TABLE ONLY public.toko
    ADD CONSTRAINT toko_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 @   ALTER TABLE ONLY public.toko DROP CONSTRAINT toko_user_id_fkey;
       public          postgres    false    4758    230    225            �           2606    66109 0   transaksi_produk transaksi_produk_produk_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_produk_id_fkey FOREIGN KEY (produk_id) REFERENCES public.produk(produk_id);
 Z   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_produk_id_fkey;
       public          postgres    false    4748    223    228            �           2606    66114 3   transaksi_produk transaksi_produk_transaksi_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi_produk
    ADD CONSTRAINT transaksi_produk_transaksi_id_fkey FOREIGN KEY (transaksi_id) REFERENCES public.transaksi(transaksi_id);
 ]   ALTER TABLE ONLY public.transaksi_produk DROP CONSTRAINT transaksi_produk_transaksi_id_fkey;
       public          postgres    false    4754    228    227            �           2606    66119     transaksi transaksi_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.transaksi
    ADD CONSTRAINT transaksi_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);
 J   ALTER TABLE ONLY public.transaksi DROP CONSTRAINT transaksi_user_id_fkey;
       public          postgres    false    230    4758    227            1   =   x�3�J��LL����83rS�L����Zd鐞��������eęX�����b���� �f�      3   [   x�3�4�,N�)N��J�MJ-��rS�F�&�f�`��ܜ���*1;3&/&�3)5;�8F� gbqJb1�1�%gbjJ"gb
����� ���      5   F   x�3��M�N�K����O,.N-�O��I���M��N,IM�/��υ���*H�2����+�ů��:F��� �<!�      7   P   x�U˻�0C���� �3D&��s�Q��>�º�5Q%S�Ѱ�Fn�x��TzT0>��c�ᕈ��_~��?}��      9   �  x�u��n�0D��W���$ǩ{t�"�"E��X�X�ky-�H1���KJ�S�.�y��Y���'{�z�p�m��V�<ϳ<WE��zO��ȚV}�����־RUg����DyF�c����N�����sj;����$}�d�N`[A�꫇�:�в��6엠�=,�*r5��C�� d���'�.ئC���ł�:@ǚOh2N�73�Q&�dW&������#�nwC"�Es#3���:��e�h����c���(��z�u,?�����<�t��2�^N�oշS����Ć<�r+g�)@g=��m�������^�?hW*�'�8�݄ڳ�cPOA#��ʘGD��#cse�9��F�$A�1g�����{T���	u�5ɾ�Ñ�Iv����$�Hv?�<�ƋgT���,�%�p�������d$�[��Ybq��1�n�[� ;�.�d|]���8KG�G��B�����b�2�*�      ;   �   x�m�;�0D��)|��|�����l�J��đ
rz쀨�j�z�vJ�ج���w^��n~�N�z�3P�C��T]�hE�#z{�S�f���D�8��s@��m��Y3�����?s����=!�J菷���e��/��i��ke����7I]Vu��tӊ�A� �JI      =   a  x�}�Kj�0�}��@�ޒ}����)L��n��C�)q��dB!�C�eq�B�> ����	a��d��<]>^.�E��`z(���)�n��+�)�Z
y,�Ay��s�PԐh�
y(��qV���qc�)�"b�������g�c�l8�DE:L�b�7���ry?�ez�$x�'!'��XE9�l7!2�dg:�lF�����ͨ��fr�3���kzh��4����J���D4���օ=f_^1n�����+K�{���	h��f!
�Z@� ^��32u�a*�6�cѕw��z�|x��q�@�ĥ��S!/1���W��P�]9��z�������YD���>�Z�7��*      >       x�32�4�4�22�44�&�F@:F��� 8+�      @   =  x��Q�r� >���� ��M{�t졗^�l̚ĈfB�N}��T[<8�v���c���+t����4G�;;�
i����=�}s��{�_w}vP!�n��E*)��LI�qv�"��p��$��%<���Nq_�#�+�/zt�,*֝n�5�p�p�Cf6��s�%'n�@�Bx����3Dʏ=���EMaQ��_��-d];(�&�h���-���O��t-�6���1��*��p.P:�),�cI��f�ҹ!���	��q}�K� ���C����"��P���Jm`oŮ�6��-�R+4�4�ٞ�d˒$�*��     