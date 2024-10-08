PGDMP      !                |            escola    16.4    16.4 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16561    escola    DATABASE     }   CREATE DATABASE escola WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE escola;
                postgres    false                        2615    16562    aula    SCHEMA        CREATE SCHEMA aula;
    DROP SCHEMA aula;
                postgres    false            �            1259    16586    aluno    TABLE     m   CREATE TABLE aula.aluno (
    id_aluno integer NOT NULL,
    nome_cliente character varying(100) NOT NULL
);
    DROP TABLE aula.aluno;
       aula         heap    postgres    false    6            �            1259    16585    aluno_id_aluno_seq    SEQUENCE     �   CREATE SEQUENCE aula.aluno_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE aula.aluno_id_aluno_seq;
       aula          postgres    false    6    221                       0    0    aluno_id_aluno_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE aula.aluno_id_aluno_seq OWNED BY aula.aluno.id_aluno;
          aula          postgres    false    220            �            1259    16571 	   atendente    TABLE     u   CREATE TABLE aula.atendente (
    id_atendente integer NOT NULL,
    nome_cliente character varying(100) NOT NULL
);
    DROP TABLE aula.atendente;
       aula         heap    postgres    false    6            �            1259    16570    atendente_id_atendente_seq    SEQUENCE     �   CREATE SEQUENCE aula.atendente_id_atendente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE aula.atendente_id_atendente_seq;
       aula          postgres    false    217    6                       0    0    atendente_id_atendente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE aula.atendente_id_atendente_seq OWNED BY aula.atendente.id_atendente;
          aula          postgres    false    216            �            1259    16579    curso    TABLE     m   CREATE TABLE aula.curso (
    id_curso integer NOT NULL,
    nome_cliente character varying(100) NOT NULL
);
    DROP TABLE aula.curso;
       aula         heap    postgres    false    6            �            1259    16578    curso_id_curso_seq    SEQUENCE     �   CREATE SEQUENCE aula.curso_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE aula.curso_id_curso_seq;
       aula          postgres    false    219    6                       0    0    curso_id_curso_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE aula.curso_id_curso_seq OWNED BY aula.curso.id_curso;
          aula          postgres    false    218            �            1259    16593 	   matricula    TABLE     �   CREATE TABLE aula.matricula (
    id_matricula integer NOT NULL,
    id_aluno_fk integer,
    id_atendente_fk integer,
    id_curso_fk integer,
    data_matricula timestamp without time zone
);
    DROP TABLE aula.matricula;
       aula         heap    postgres    false    6            �            1259    16592    matricula_id_matricula_seq    SEQUENCE     �   CREATE SEQUENCE aula.matricula_id_matricula_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE aula.matricula_id_matricula_seq;
       aula          postgres    false    223    6                       0    0    matricula_id_matricula_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE aula.matricula_id_matricula_seq OWNED BY aula.matricula.id_matricula;
          aula          postgres    false    222            b           2604    16589    aluno id_aluno    DEFAULT     l   ALTER TABLE ONLY aula.aluno ALTER COLUMN id_aluno SET DEFAULT nextval('aula.aluno_id_aluno_seq'::regclass);
 ;   ALTER TABLE aula.aluno ALTER COLUMN id_aluno DROP DEFAULT;
       aula          postgres    false    220    221    221            `           2604    16574    atendente id_atendente    DEFAULT     |   ALTER TABLE ONLY aula.atendente ALTER COLUMN id_atendente SET DEFAULT nextval('aula.atendente_id_atendente_seq'::regclass);
 C   ALTER TABLE aula.atendente ALTER COLUMN id_atendente DROP DEFAULT;
       aula          postgres    false    217    216    217            a           2604    16582    curso id_curso    DEFAULT     l   ALTER TABLE ONLY aula.curso ALTER COLUMN id_curso SET DEFAULT nextval('aula.curso_id_curso_seq'::regclass);
 ;   ALTER TABLE aula.curso ALTER COLUMN id_curso DROP DEFAULT;
       aula          postgres    false    219    218    219            c           2604    16596    matricula id_matricula    DEFAULT     |   ALTER TABLE ONLY aula.matricula ALTER COLUMN id_matricula SET DEFAULT nextval('aula.matricula_id_matricula_seq'::regclass);
 C   ALTER TABLE aula.matricula ALTER COLUMN id_matricula DROP DEFAULT;
       aula          postgres    false    222    223    223                      0    16586    aluno 
   TABLE DATA           5   COPY aula.aluno (id_aluno, nome_cliente) FROM stdin;
    aula          postgres    false    221   �&       �          0    16571 	   atendente 
   TABLE DATA           =   COPY aula.atendente (id_atendente, nome_cliente) FROM stdin;
    aula          postgres    false    217   �&                 0    16579    curso 
   TABLE DATA           5   COPY aula.curso (id_curso, nome_cliente) FROM stdin;
    aula          postgres    false    219   '                 0    16593 	   matricula 
   TABLE DATA           j   COPY aula.matricula (id_matricula, id_aluno_fk, id_atendente_fk, id_curso_fk, data_matricula) FROM stdin;
    aula          postgres    false    223   5'                  0    0    aluno_id_aluno_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('aula.aluno_id_aluno_seq', 1, false);
          aula          postgres    false    220                       0    0    atendente_id_atendente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('aula.atendente_id_atendente_seq', 1, false);
          aula          postgres    false    216                       0    0    curso_id_curso_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('aula.curso_id_curso_seq', 1, false);
          aula          postgres    false    218                       0    0    matricula_id_matricula_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('aula.matricula_id_matricula_seq', 1, false);
          aula          postgres    false    222            i           2606    16591    aluno aluno_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY aula.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);
 8   ALTER TABLE ONLY aula.aluno DROP CONSTRAINT aluno_pkey;
       aula            postgres    false    221            e           2606    16576    atendente atendente_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY aula.atendente
    ADD CONSTRAINT atendente_pkey PRIMARY KEY (id_atendente);
 @   ALTER TABLE ONLY aula.atendente DROP CONSTRAINT atendente_pkey;
       aula            postgres    false    217            g           2606    16584    curso curso_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY aula.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id_curso);
 8   ALTER TABLE ONLY aula.curso DROP CONSTRAINT curso_pkey;
       aula            postgres    false    219            k           2606    16598    matricula matricula_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY aula.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (id_matricula);
 @   ALTER TABLE ONLY aula.matricula DROP CONSTRAINT matricula_pkey;
       aula            postgres    false    223            l           2606    16599 $   matricula matricula_id_aluno_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aula.matricula
    ADD CONSTRAINT matricula_id_aluno_fk_fkey FOREIGN KEY (id_aluno_fk) REFERENCES aula.aluno(id_aluno);
 L   ALTER TABLE ONLY aula.matricula DROP CONSTRAINT matricula_id_aluno_fk_fkey;
       aula          postgres    false    221    223    4713            m           2606    16604 (   matricula matricula_id_atendente_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aula.matricula
    ADD CONSTRAINT matricula_id_atendente_fk_fkey FOREIGN KEY (id_atendente_fk) REFERENCES aula.atendente(id_atendente);
 P   ALTER TABLE ONLY aula.matricula DROP CONSTRAINT matricula_id_atendente_fk_fkey;
       aula          postgres    false    223    217    4709            n           2606    16609 $   matricula matricula_id_curso_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY aula.matricula
    ADD CONSTRAINT matricula_id_curso_fk_fkey FOREIGN KEY (id_curso_fk) REFERENCES aula.curso(id_curso);
 L   ALTER TABLE ONLY aula.matricula DROP CONSTRAINT matricula_id_curso_fk_fkey;
       aula          postgres    false    4711    219    223                  x������ � �      �      x������ � �            x������ � �            x������ � �     