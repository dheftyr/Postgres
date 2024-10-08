PGDMP  2                    |         
   campeonato    16.4    16.4 %    	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16399 
   campeonato    DATABASE     �   CREATE DATABASE campeonato WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE campeonato;
                postgres    false                        2615    16400 
   campeonato    SCHEMA        CREATE SCHEMA campeonato;
    DROP SCHEMA campeonato;
                postgres    false            �            1259    16504 	   categoria    TABLE     w   CREATE TABLE campeonato.categoria (
    id_categoria integer NOT NULL,
    descricao character varying(50) NOT NULL
);
 !   DROP TABLE campeonato.categoria;
    
   campeonato         heap    postgres    false    6            �            1259    16503    categoria_id_categoria_seq    SEQUENCE     �   CREATE SEQUENCE campeonato.categoria_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE campeonato.categoria_id_categoria_seq;
    
   campeonato          postgres    false    6    221                       0    0    categoria_id_categoria_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE campeonato.categoria_id_categoria_seq OWNED BY campeonato.categoria.id_categoria;
       
   campeonato          postgres    false    220            �            1259    16490    equipe    TABLE     c   CREATE TABLE campeonato.equipe (
    id_equipe integer NOT NULL,
    nome character varying(50)
);
    DROP TABLE campeonato.equipe;
    
   campeonato         heap    postgres    false    6            �            1259    16489    equipe_id_equipe_seq    SEQUENCE     �   CREATE SEQUENCE campeonato.equipe_id_equipe_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE campeonato.equipe_id_equipe_seq;
    
   campeonato          postgres    false    217    6                       0    0    equipe_id_equipe_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE campeonato.equipe_id_equipe_seq OWNED BY campeonato.equipe.id_equipe;
       
   campeonato          postgres    false    216            �            1259    16497    estadio    TABLE     n   CREATE TABLE campeonato.estadio (
    id_estadio integer NOT NULL,
    nome character varying(50) NOT NULL
);
    DROP TABLE campeonato.estadio;
    
   campeonato         heap    postgres    false    6            �            1259    16496    estadio_id_estadio_seq    SEQUENCE     �   CREATE SEQUENCE campeonato.estadio_id_estadio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE campeonato.estadio_id_estadio_seq;
    
   campeonato          postgres    false    219    6                       0    0    estadio_id_estadio_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE campeonato.estadio_id_estadio_seq OWNED BY campeonato.estadio.id_estadio;
       
   campeonato          postgres    false    218            �            1259    16511    jogo    TABLE     K  CREATE TABLE campeonato.jogo (
    id_jogo integer NOT NULL,
    data_jogo timestamp without time zone NOT NULL,
    id_equipe1_fk integer NOT NULL,
    id_equipe2_fk integer NOT NULL,
    gols_equipe1 integer NOT NULL,
    gols_equipe2 integer NOT NULL,
    id_categoria_fk integer NOT NULL,
    id_estadio_fk integer NOT NULL
);
    DROP TABLE campeonato.jogo;
    
   campeonato         heap    postgres    false    6            �            1259    16510    jogo_id_jogo_seq    SEQUENCE     �   CREATE SEQUENCE campeonato.jogo_id_jogo_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE campeonato.jogo_id_jogo_seq;
    
   campeonato          postgres    false    6    223                       0    0    jogo_id_jogo_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE campeonato.jogo_id_jogo_seq OWNED BY campeonato.jogo.id_jogo;
       
   campeonato          postgres    false    222            b           2604    16507    categoria id_categoria    DEFAULT     �   ALTER TABLE ONLY campeonato.categoria ALTER COLUMN id_categoria SET DEFAULT nextval('campeonato.categoria_id_categoria_seq'::regclass);
 I   ALTER TABLE campeonato.categoria ALTER COLUMN id_categoria DROP DEFAULT;
    
   campeonato          postgres    false    220    221    221            `           2604    16493    equipe id_equipe    DEFAULT     |   ALTER TABLE ONLY campeonato.equipe ALTER COLUMN id_equipe SET DEFAULT nextval('campeonato.equipe_id_equipe_seq'::regclass);
 C   ALTER TABLE campeonato.equipe ALTER COLUMN id_equipe DROP DEFAULT;
    
   campeonato          postgres    false    216    217    217            a           2604    16500    estadio id_estadio    DEFAULT     �   ALTER TABLE ONLY campeonato.estadio ALTER COLUMN id_estadio SET DEFAULT nextval('campeonato.estadio_id_estadio_seq'::regclass);
 E   ALTER TABLE campeonato.estadio ALTER COLUMN id_estadio DROP DEFAULT;
    
   campeonato          postgres    false    218    219    219            c           2604    16514    jogo id_jogo    DEFAULT     t   ALTER TABLE ONLY campeonato.jogo ALTER COLUMN id_jogo SET DEFAULT nextval('campeonato.jogo_id_jogo_seq'::regclass);
 ?   ALTER TABLE campeonato.jogo ALTER COLUMN id_jogo DROP DEFAULT;
    
   campeonato          postgres    false    223    222    223                      0    16504 	   categoria 
   TABLE DATA           @   COPY campeonato.categoria (id_categoria, descricao) FROM stdin;
 
   campeonato          postgres    false    221   �*                  0    16490    equipe 
   TABLE DATA           5   COPY campeonato.equipe (id_equipe, nome) FROM stdin;
 
   campeonato          postgres    false    217   �*                 0    16497    estadio 
   TABLE DATA           7   COPY campeonato.estadio (id_estadio, nome) FROM stdin;
 
   campeonato          postgres    false    219   ^+                 0    16511    jogo 
   TABLE DATA           �   COPY campeonato.jogo (id_jogo, data_jogo, id_equipe1_fk, id_equipe2_fk, gols_equipe1, gols_equipe2, id_categoria_fk, id_estadio_fk) FROM stdin;
 
   campeonato          postgres    false    223   �+                  0    0    categoria_id_categoria_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('campeonato.categoria_id_categoria_seq', 3, true);
       
   campeonato          postgres    false    220                       0    0    equipe_id_equipe_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('campeonato.equipe_id_equipe_seq', 8, true);
       
   campeonato          postgres    false    216                       0    0    estadio_id_estadio_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('campeonato.estadio_id_estadio_seq', 4, true);
       
   campeonato          postgres    false    218                       0    0    jogo_id_jogo_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('campeonato.jogo_id_jogo_seq', 7, true);
       
   campeonato          postgres    false    222            i           2606    16509    categoria categoria_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY campeonato.categoria
    ADD CONSTRAINT categoria_pkey PRIMARY KEY (id_categoria);
 F   ALTER TABLE ONLY campeonato.categoria DROP CONSTRAINT categoria_pkey;
    
   campeonato            postgres    false    221            e           2606    16495    equipe equipe_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY campeonato.equipe
    ADD CONSTRAINT equipe_pkey PRIMARY KEY (id_equipe);
 @   ALTER TABLE ONLY campeonato.equipe DROP CONSTRAINT equipe_pkey;
    
   campeonato            postgres    false    217            g           2606    16502    estadio estadio_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY campeonato.estadio
    ADD CONSTRAINT estadio_pkey PRIMARY KEY (id_estadio);
 B   ALTER TABLE ONLY campeonato.estadio DROP CONSTRAINT estadio_pkey;
    
   campeonato            postgres    false    219            k           2606    16516    jogo jogo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY campeonato.jogo
    ADD CONSTRAINT jogo_pkey PRIMARY KEY (id_jogo);
 <   ALTER TABLE ONLY campeonato.jogo DROP CONSTRAINT jogo_pkey;
    
   campeonato            postgres    false    223            l           2606    16532    jogo jogo_id_categoria_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY campeonato.jogo
    ADD CONSTRAINT jogo_id_categoria_fk_fkey FOREIGN KEY (id_categoria_fk) REFERENCES campeonato.categoria(id_categoria);
 L   ALTER TABLE ONLY campeonato.jogo DROP CONSTRAINT jogo_id_categoria_fk_fkey;
    
   campeonato          postgres    false    221    223    4713            m           2606    16517    jogo jogo_id_equipe1_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY campeonato.jogo
    ADD CONSTRAINT jogo_id_equipe1_fk_fkey FOREIGN KEY (id_equipe1_fk) REFERENCES campeonato.equipe(id_equipe);
 J   ALTER TABLE ONLY campeonato.jogo DROP CONSTRAINT jogo_id_equipe1_fk_fkey;
    
   campeonato          postgres    false    223    217    4709            n           2606    16522    jogo jogo_id_equipe2_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY campeonato.jogo
    ADD CONSTRAINT jogo_id_equipe2_fk_fkey FOREIGN KEY (id_equipe2_fk) REFERENCES campeonato.equipe(id_equipe);
 J   ALTER TABLE ONLY campeonato.jogo DROP CONSTRAINT jogo_id_equipe2_fk_fkey;
    
   campeonato          postgres    false    217    223    4709            o           2606    16527    jogo jogo_id_estadio_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY campeonato.jogo
    ADD CONSTRAINT jogo_id_estadio_fk_fkey FOREIGN KEY (id_estadio_fk) REFERENCES campeonato.estadio(id_estadio);
 J   ALTER TABLE ONLY campeonato.jogo DROP CONSTRAINT jogo_id_estadio_fk_fkey;
    
   campeonato          postgres    false    4711    223    219               +   x�3�u
qTpqUp��s��2�v��ԅp�9!t� �g	�          d   x��1�0���=ZV��RbG	�z�^����Io�o�$e�I�pųsKjbU0��E�ؕ�b�z���ܢ�Eݥo��o
��'u���� �(t         C   x�3��urtv�;��e�������e�����s�ٟ˄�1���Q��?��/����/�+F��� �#-         n   x�u���0C��)\@J�����R�z�Ã|�H@�D�*�J]�4�h(,�P���f7a�7�M�1<
|P�<ux�8�4�Y^B�{GlBz}"�;<<b���_<\����H^�F&E     