PGDMP         1                {            reto-m8    15.1    15.1     	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    52067    reto-m8    DATABASE     �   CREATE DATABASE "reto-m8" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "reto-m8";
                postgres    false            �            1259    52078    auto    TABLE     �   CREATE TABLE public.auto (
    id integer NOT NULL,
    modelo character varying(20) NOT NULL,
    year date NOT NULL,
    id_usuario integer NOT NULL,
    imagen character varying(255) NOT NULL,
    marca character varying(50) NOT NULL
);
    DROP TABLE public.auto;
       public         heap    postgres    false            �            1259    52077    auto_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.auto_id_seq;
       public          postgres    false    217                       0    0    auto_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.auto_id_seq OWNED BY public.auto.id;
          public          postgres    false    216            �            1259    52069    usuario    TABLE     �   CREATE TABLE public.usuario (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(30) NOT NULL
);
    DROP TABLE public.usuario;
       public         heap    postgres    false            �            1259    52068    usuario_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuario_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.usuario_id_seq;
       public          postgres    false    215                       0    0    usuario_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.usuario_id_seq OWNED BY public.usuario.id;
          public          postgres    false    214            k           2604    52081    auto id    DEFAULT     b   ALTER TABLE ONLY public.auto ALTER COLUMN id SET DEFAULT nextval('public.auto_id_seq'::regclass);
 6   ALTER TABLE public.auto ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217            j           2604    52072 
   usuario id    DEFAULT     h   ALTER TABLE ONLY public.usuario ALTER COLUMN id SET DEFAULT nextval('public.usuario_id_seq'::regclass);
 9   ALTER TABLE public.usuario ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                      0    52078    auto 
   TABLE DATA           K   COPY public.auto (id, modelo, year, id_usuario, imagen, marca) FROM stdin;
    public          postgres    false    217   �                 0    52069    usuario 
   TABLE DATA           6   COPY public.usuario (id, email, password) FROM stdin;
    public          postgres    false    215   �                  0    0    auto_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.auto_id_seq', 12, true);
          public          postgres    false    216                       0    0    usuario_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.usuario_id_seq', 3, true);
          public          postgres    false    214            q           2606    52087    auto auto_modelo_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_modelo_key UNIQUE (modelo);
 >   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_modelo_key;
       public            postgres    false    217            s           2606    52083    auto auto_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_pkey;
       public            postgres    false    217            m           2606    52076    usuario usuario_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_email_key;
       public            postgres    false    215            o           2606    52074    usuario usuario_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuario DROP CONSTRAINT usuario_pkey;
       public            postgres    false    215            t           2606    52088    auto auto_id_usuario_fkey    FK CONSTRAINT     }   ALTER TABLE ONLY public.auto
    ADD CONSTRAINT auto_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuario(id);
 C   ALTER TABLE ONLY public.auto DROP CONSTRAINT auto_id_usuario_fkey;
       public          postgres    false    215    217    3183               �   x�]Ͽ�0���)|���EhgW]�\[���?�o��i��w����p�v$I%H	E���*2Ulrְ40�vv�m�wm�\��ە7��u#�GI��.�֕�oy)~���_�)��Jp-wc�I}���)���Y��_FU�'�>2�MNb��:����k��o?�H          1   x�3��N��ItH�M���K���442615�2���L��I,Ɣ����� �@     