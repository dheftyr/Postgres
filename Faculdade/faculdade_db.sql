PGDMP  .                    |         	   Faculdade    16.4    16.4 .    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16546 	   Faculdade    DATABASE     �   CREATE DATABASE "Faculdade" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Faculdade";
                postgres    false                        2615    16547    cadastro    SCHEMA        CREATE SCHEMA cadastro;
    DROP SCHEMA cadastro;
                postgres    false            �            1259    16562    aluno    TABLE     �   CREATE TABLE cadastro.aluno (
    id_aluno integer NOT NULL,
    nome_aluno character varying(100) NOT NULL,
    sobrenome_aluno character varying(50) NOT NULL,
    ra_aluno numeric NOT NULL,
    email_aluno character varying(100) NOT NULL
);
    DROP TABLE cadastro.aluno;
       cadastro         heap    postgres    false    6            �            1259    16561    aluno_id_aluno_seq    SEQUENCE     �   CREATE SEQUENCE cadastro.aluno_id_aluno_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE cadastro.aluno_id_aluno_seq;
       cadastro          postgres    false    217    6            �           0    0    aluno_id_aluno_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE cadastro.aluno_id_aluno_seq OWNED BY cadastro.aluno.id_aluno;
          cadastro          postgres    false    216            �            1259    16583    curso    TABLE     �   CREATE TABLE cadastro.curso (
    id_curso integer NOT NULL,
    nome_curso character varying(70) NOT NULL,
    ano_curso numeric NOT NULL
);
    DROP TABLE cadastro.curso;
       cadastro         heap    postgres    false    6            �            1259    16582    curso_id_curso_seq    SEQUENCE     �   CREATE SEQUENCE cadastro.curso_id_curso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE cadastro.curso_id_curso_seq;
       cadastro          postgres    false    221    6            �           0    0    curso_id_curso_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE cadastro.curso_id_curso_seq OWNED BY cadastro.curso.id_curso;
          cadastro          postgres    false    220            �            1259    16609 
   disciplina    TABLE     �   CREATE TABLE cadastro.disciplina (
    id_disci integer NOT NULL,
    nome_disci character varying(70) NOT NULL,
    id_curso_fk integer,
    id_prof_fk integer
);
     DROP TABLE cadastro.disciplina;
       cadastro         heap    postgres    false    6            �            1259    16608    disciplina_id_disci_seq    SEQUENCE     �   CREATE SEQUENCE cadastro.disciplina_id_disci_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE cadastro.disciplina_id_disci_seq;
       cadastro          postgres    false    225    6            �           0    0    disciplina_id_disci_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE cadastro.disciplina_id_disci_seq OWNED BY cadastro.disciplina.id_disci;
          cadastro          postgres    false    224            �            1259    16592 	   matricula    TABLE     v   CREATE TABLE cadastro.matricula (
    id_matric integer NOT NULL,
    id_aluno_fk integer,
    id_curso_fk integer
);
    DROP TABLE cadastro.matricula;
       cadastro         heap    postgres    false    6            �            1259    16591    matricula_id_matric_seq    SEQUENCE     �   CREATE SEQUENCE cadastro.matricula_id_matric_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE cadastro.matricula_id_matric_seq;
       cadastro          postgres    false    223    6            �           0    0    matricula_id_matric_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE cadastro.matricula_id_matric_seq OWNED BY cadastro.matricula.id_matric;
          cadastro          postgres    false    222            �            1259    16575 	   professor    TABLE     �   CREATE TABLE cadastro.professor (
    id_prof integer NOT NULL,
    nome_prof character varying(100) NOT NULL,
    sobrenome_prof character varying(50) NOT NULL,
    titulacao_prof character varying(30) NOT NULL
);
    DROP TABLE cadastro.professor;
       cadastro         heap    postgres    false    6            �            1259    16574    professor_id_prof_seq    SEQUENCE     �   CREATE SEQUENCE cadastro.professor_id_prof_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE cadastro.professor_id_prof_seq;
       cadastro          postgres    false    6    219            �           0    0    professor_id_prof_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE cadastro.professor_id_prof_seq OWNED BY cadastro.professor.id_prof;
          cadastro          postgres    false    218            /           2604    16565    aluno id_aluno    DEFAULT     t   ALTER TABLE ONLY cadastro.aluno ALTER COLUMN id_aluno SET DEFAULT nextval('cadastro.aluno_id_aluno_seq'::regclass);
 ?   ALTER TABLE cadastro.aluno ALTER COLUMN id_aluno DROP DEFAULT;
       cadastro          postgres    false    216    217    217            1           2604    16586    curso id_curso    DEFAULT     t   ALTER TABLE ONLY cadastro.curso ALTER COLUMN id_curso SET DEFAULT nextval('cadastro.curso_id_curso_seq'::regclass);
 ?   ALTER TABLE cadastro.curso ALTER COLUMN id_curso DROP DEFAULT;
       cadastro          postgres    false    221    220    221            3           2604    16612    disciplina id_disci    DEFAULT     ~   ALTER TABLE ONLY cadastro.disciplina ALTER COLUMN id_disci SET DEFAULT nextval('cadastro.disciplina_id_disci_seq'::regclass);
 D   ALTER TABLE cadastro.disciplina ALTER COLUMN id_disci DROP DEFAULT;
       cadastro          postgres    false    224    225    225            2           2604    16595    matricula id_matric    DEFAULT     ~   ALTER TABLE ONLY cadastro.matricula ALTER COLUMN id_matric SET DEFAULT nextval('cadastro.matricula_id_matric_seq'::regclass);
 D   ALTER TABLE cadastro.matricula ALTER COLUMN id_matric DROP DEFAULT;
       cadastro          postgres    false    222    223    223            0           2604    16578    professor id_prof    DEFAULT     z   ALTER TABLE ONLY cadastro.professor ALTER COLUMN id_prof SET DEFAULT nextval('cadastro.professor_id_prof_seq'::regclass);
 B   ALTER TABLE cadastro.professor ALTER COLUMN id_prof DROP DEFAULT;
       cadastro          postgres    false    219    218    219            �          0    16562    aluno 
   TABLE DATA           _   COPY cadastro.aluno (id_aluno, nome_aluno, sobrenome_aluno, ra_aluno, email_aluno) FROM stdin;
    cadastro          postgres    false    217   5       �          0    16583    curso 
   TABLE DATA           B   COPY cadastro.curso (id_curso, nome_curso, ano_curso) FROM stdin;
    cadastro          postgres    false    221   �5       �          0    16609 
   disciplina 
   TABLE DATA           U   COPY cadastro.disciplina (id_disci, nome_disci, id_curso_fk, id_prof_fk) FROM stdin;
    cadastro          postgres    false    225   6       �          0    16592 	   matricula 
   TABLE DATA           J   COPY cadastro.matricula (id_matric, id_aluno_fk, id_curso_fk) FROM stdin;
    cadastro          postgres    false    223   �6       �          0    16575 	   professor 
   TABLE DATA           Y   COPY cadastro.professor (id_prof, nome_prof, sobrenome_prof, titulacao_prof) FROM stdin;
    cadastro          postgres    false    219   �6       �           0    0    aluno_id_aluno_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cadastro.aluno_id_aluno_seq', 5, true);
          cadastro          postgres    false    216            �           0    0    curso_id_curso_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cadastro.curso_id_curso_seq', 3, true);
          cadastro          postgres    false    220            �           0    0    disciplina_id_disci_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('cadastro.disciplina_id_disci_seq', 4, true);
          cadastro          postgres    false    224            �           0    0    matricula_id_matric_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('cadastro.matricula_id_matric_seq', 1, false);
          cadastro          postgres    false    222            �           0    0    professor_id_prof_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('cadastro.professor_id_prof_seq', 4, true);
          cadastro          postgres    false    218            5           2606    16573    aluno aluno_email_aluno_key 
   CONSTRAINT     _   ALTER TABLE ONLY cadastro.aluno
    ADD CONSTRAINT aluno_email_aluno_key UNIQUE (email_aluno);
 G   ALTER TABLE ONLY cadastro.aluno DROP CONSTRAINT aluno_email_aluno_key;
       cadastro            postgres    false    217            7           2606    16569    aluno aluno_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY cadastro.aluno
    ADD CONSTRAINT aluno_pkey PRIMARY KEY (id_aluno);
 <   ALTER TABLE ONLY cadastro.aluno DROP CONSTRAINT aluno_pkey;
       cadastro            postgres    false    217            9           2606    16571    aluno aluno_ra_aluno_key 
   CONSTRAINT     Y   ALTER TABLE ONLY cadastro.aluno
    ADD CONSTRAINT aluno_ra_aluno_key UNIQUE (ra_aluno);
 D   ALTER TABLE ONLY cadastro.aluno DROP CONSTRAINT aluno_ra_aluno_key;
       cadastro            postgres    false    217            =           2606    16590    curso curso_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY cadastro.curso
    ADD CONSTRAINT curso_pkey PRIMARY KEY (id_curso);
 <   ALTER TABLE ONLY cadastro.curso DROP CONSTRAINT curso_pkey;
       cadastro            postgres    false    221            A           2606    16614    disciplina disciplina_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY cadastro.disciplina
    ADD CONSTRAINT disciplina_pkey PRIMARY KEY (id_disci);
 F   ALTER TABLE ONLY cadastro.disciplina DROP CONSTRAINT disciplina_pkey;
       cadastro            postgres    false    225            ?           2606    16597    matricula matricula_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY cadastro.matricula
    ADD CONSTRAINT matricula_pkey PRIMARY KEY (id_matric);
 D   ALTER TABLE ONLY cadastro.matricula DROP CONSTRAINT matricula_pkey;
       cadastro            postgres    false    223            ;           2606    16580    professor professor_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY cadastro.professor
    ADD CONSTRAINT professor_pkey PRIMARY KEY (id_prof);
 D   ALTER TABLE ONLY cadastro.professor DROP CONSTRAINT professor_pkey;
       cadastro            postgres    false    219            D           2606    16615 &   disciplina disciplina_id_curso_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cadastro.disciplina
    ADD CONSTRAINT disciplina_id_curso_fk_fkey FOREIGN KEY (id_curso_fk) REFERENCES cadastro.curso(id_curso);
 R   ALTER TABLE ONLY cadastro.disciplina DROP CONSTRAINT disciplina_id_curso_fk_fkey;
       cadastro          postgres    false    4669    221    225            E           2606    16620 %   disciplina disciplina_id_prof_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cadastro.disciplina
    ADD CONSTRAINT disciplina_id_prof_fk_fkey FOREIGN KEY (id_prof_fk) REFERENCES cadastro.professor(id_prof);
 Q   ALTER TABLE ONLY cadastro.disciplina DROP CONSTRAINT disciplina_id_prof_fk_fkey;
       cadastro          postgres    false    225    219    4667            B           2606    16598 $   matricula matricula_id_aluno_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cadastro.matricula
    ADD CONSTRAINT matricula_id_aluno_fk_fkey FOREIGN KEY (id_aluno_fk) REFERENCES cadastro.aluno(id_aluno);
 P   ALTER TABLE ONLY cadastro.matricula DROP CONSTRAINT matricula_id_aluno_fk_fkey;
       cadastro          postgres    false    4663    217    223            C           2606    16603 $   matricula matricula_id_curso_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY cadastro.matricula
    ADD CONSTRAINT matricula_id_curso_fk_fkey FOREIGN KEY (id_curso_fk) REFERENCES cadastro.curso(id_curso);
 P   ALTER TABLE ONLY cadastro.matricula DROP CONSTRAINT matricula_id_curso_fk_fkey;
       cadastro          postgres    false    221    223    4669            �   �   x�U�=�@����Sp��O�4D
cem3Y ��e ��x.�"Xl5ɓ���,A5Po�h:I���KH�?�;�Y��8����5}���E�������%��e��;w��x7�Q�k=J��u���U�C��Q��D��kl��O-�g�0h��R��Q�      �   E   x�3�t�K�WHIUpIL�/�4��4�2����K/MLO�U�	Zrs���%�^���ނ+F��� ��      �   c   x�3�tJL��M�K�4�4�2�t.�,(�O/:�0-3��(f��|xsJfz��OfnA>��	�	�[jQQbnj^I�BJ��Sb^r>�ᒘ�_4ʐ+F��� \�      �      x������ � �      �   �   x�}�=
1��zr��@����MV�m�H�%E20I��x����-�ߗgKg�����g��KU�Gd/6�����H�9��ÅiU�'�b^Nv�;��1�NИA��]��~5���n�AWy������o];     