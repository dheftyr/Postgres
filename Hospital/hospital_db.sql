PGDMP  8    !                |            hospital    16.4    16.4 $               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16714    hospital    DATABASE        CREATE DATABASE hospital WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE hospital;
                postgres    false                        2615    16715 
   hospitalar    SCHEMA        CREATE SCHEMA hospitalar;
    DROP SCHEMA hospitalar;
                postgres    false            �            1259    16771    atendimento    TABLE     �   CREATE TABLE hospitalar.atendimento (
    id_atendimento integer NOT NULL,
    id_secretariae_fk integer,
    id_paciente_fk integer,
    id_medico_fk integer,
    data_atendimento timestamp without time zone
);
 #   DROP TABLE hospitalar.atendimento;
    
   hospitalar         heap    postgres    false    6            �            1259    16770    atendimento_id_atendimento_seq    SEQUENCE     �   CREATE SEQUENCE hospitalar.atendimento_id_atendimento_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE hospitalar.atendimento_id_atendimento_seq;
    
   hospitalar          postgres    false    223    6                       0    0    atendimento_id_atendimento_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE hospitalar.atendimento_id_atendimento_seq OWNED BY hospitalar.atendimento.id_atendimento;
       
   hospitalar          postgres    false    222            �            1259    16757    medico    TABLE     k   CREATE TABLE hospitalar.medico (
    id_medico integer NOT NULL,
    nome_medico character varying(100)
);
    DROP TABLE hospitalar.medico;
    
   hospitalar         heap    postgres    false    6            �            1259    16756    medico_id_medico_seq    SEQUENCE     �   CREATE SEQUENCE hospitalar.medico_id_medico_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE hospitalar.medico_id_medico_seq;
    
   hospitalar          postgres    false    219    6                       0    0    medico_id_medico_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE hospitalar.medico_id_medico_seq OWNED BY hospitalar.medico.id_medico;
       
   hospitalar          postgres    false    218            �            1259    16764    paciente    TABLE     q   CREATE TABLE hospitalar.paciente (
    id_paciente integer NOT NULL,
    nome_paciente character varying(100)
);
     DROP TABLE hospitalar.paciente;
    
   hospitalar         heap    postgres    false    6            �            1259    16763    paciente_id_paciente_seq    SEQUENCE     �   CREATE SEQUENCE hospitalar.paciente_id_paciente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE hospitalar.paciente_id_paciente_seq;
    
   hospitalar          postgres    false    221    6                       0    0    paciente_id_paciente_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE hospitalar.paciente_id_paciente_seq OWNED BY hospitalar.paciente.id_paciente;
       
   hospitalar          postgres    false    220            �            1259    16750 
   secretaria    TABLE     w   CREATE TABLE hospitalar.secretaria (
    id_secretaria integer NOT NULL,
    nome_secretaria character varying(100)
);
 "   DROP TABLE hospitalar.secretaria;
    
   hospitalar         heap    postgres    false    6            �            1259    16749    secretaria_id_secretaria_seq    SEQUENCE     �   CREATE SEQUENCE hospitalar.secretaria_id_secretaria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE hospitalar.secretaria_id_secretaria_seq;
    
   hospitalar          postgres    false    217    6                       0    0    secretaria_id_secretaria_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE hospitalar.secretaria_id_secretaria_seq OWNED BY hospitalar.secretaria.id_secretaria;
       
   hospitalar          postgres    false    216            c           2604    16774    atendimento id_atendimento    DEFAULT     �   ALTER TABLE ONLY hospitalar.atendimento ALTER COLUMN id_atendimento SET DEFAULT nextval('hospitalar.atendimento_id_atendimento_seq'::regclass);
 M   ALTER TABLE hospitalar.atendimento ALTER COLUMN id_atendimento DROP DEFAULT;
    
   hospitalar          postgres    false    222    223    223            a           2604    16760    medico id_medico    DEFAULT     |   ALTER TABLE ONLY hospitalar.medico ALTER COLUMN id_medico SET DEFAULT nextval('hospitalar.medico_id_medico_seq'::regclass);
 C   ALTER TABLE hospitalar.medico ALTER COLUMN id_medico DROP DEFAULT;
    
   hospitalar          postgres    false    219    218    219            b           2604    16767    paciente id_paciente    DEFAULT     �   ALTER TABLE ONLY hospitalar.paciente ALTER COLUMN id_paciente SET DEFAULT nextval('hospitalar.paciente_id_paciente_seq'::regclass);
 G   ALTER TABLE hospitalar.paciente ALTER COLUMN id_paciente DROP DEFAULT;
    
   hospitalar          postgres    false    221    220    221            `           2604    16753    secretaria id_secretaria    DEFAULT     �   ALTER TABLE ONLY hospitalar.secretaria ALTER COLUMN id_secretaria SET DEFAULT nextval('hospitalar.secretaria_id_secretaria_seq'::regclass);
 K   ALTER TABLE hospitalar.secretaria ALTER COLUMN id_secretaria DROP DEFAULT;
    
   hospitalar          postgres    false    217    216    217                      0    16771    atendimento 
   TABLE DATA           |   COPY hospitalar.atendimento (id_atendimento, id_secretariae_fk, id_paciente_fk, id_medico_fk, data_atendimento) FROM stdin;
 
   hospitalar          postgres    false    223   k*                 0    16757    medico 
   TABLE DATA           <   COPY hospitalar.medico (id_medico, nome_medico) FROM stdin;
 
   hospitalar          postgres    false    219   �*                 0    16764    paciente 
   TABLE DATA           B   COPY hospitalar.paciente (id_paciente, nome_paciente) FROM stdin;
 
   hospitalar          postgres    false    221   �*       �          0    16750 
   secretaria 
   TABLE DATA           H   COPY hospitalar.secretaria (id_secretaria, nome_secretaria) FROM stdin;
 
   hospitalar          postgres    false    217   �*                  0    0    atendimento_id_atendimento_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('hospitalar.atendimento_id_atendimento_seq', 1, false);
       
   hospitalar          postgres    false    222                       0    0    medico_id_medico_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('hospitalar.medico_id_medico_seq', 1, false);
       
   hospitalar          postgres    false    218                       0    0    paciente_id_paciente_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('hospitalar.paciente_id_paciente_seq', 1, false);
       
   hospitalar          postgres    false    220                       0    0    secretaria_id_secretaria_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('hospitalar.secretaria_id_secretaria_seq', 1, false);
       
   hospitalar          postgres    false    216            k           2606    16776    atendimento atendimento_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY hospitalar.atendimento
    ADD CONSTRAINT atendimento_pkey PRIMARY KEY (id_atendimento);
 J   ALTER TABLE ONLY hospitalar.atendimento DROP CONSTRAINT atendimento_pkey;
    
   hospitalar            postgres    false    223            g           2606    16762    medico medico_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hospitalar.medico
    ADD CONSTRAINT medico_pkey PRIMARY KEY (id_medico);
 @   ALTER TABLE ONLY hospitalar.medico DROP CONSTRAINT medico_pkey;
    
   hospitalar            postgres    false    219            i           2606    16769    paciente paciente_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY hospitalar.paciente
    ADD CONSTRAINT paciente_pkey PRIMARY KEY (id_paciente);
 D   ALTER TABLE ONLY hospitalar.paciente DROP CONSTRAINT paciente_pkey;
    
   hospitalar            postgres    false    221            e           2606    16755    secretaria secretaria_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY hospitalar.secretaria
    ADD CONSTRAINT secretaria_pkey PRIMARY KEY (id_secretaria);
 H   ALTER TABLE ONLY hospitalar.secretaria DROP CONSTRAINT secretaria_pkey;
    
   hospitalar            postgres    false    217            l           2606    16787 )   atendimento atendimento_id_medico_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hospitalar.atendimento
    ADD CONSTRAINT atendimento_id_medico_fk_fkey FOREIGN KEY (id_medico_fk) REFERENCES hospitalar.medico(id_medico);
 W   ALTER TABLE ONLY hospitalar.atendimento DROP CONSTRAINT atendimento_id_medico_fk_fkey;
    
   hospitalar          postgres    false    219    4711    223            m           2606    16782 +   atendimento atendimento_id_paciente_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hospitalar.atendimento
    ADD CONSTRAINT atendimento_id_paciente_fk_fkey FOREIGN KEY (id_paciente_fk) REFERENCES hospitalar.paciente(id_paciente);
 Y   ALTER TABLE ONLY hospitalar.atendimento DROP CONSTRAINT atendimento_id_paciente_fk_fkey;
    
   hospitalar          postgres    false    223    221    4713            n           2606    16777 .   atendimento atendimento_id_secretariae_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hospitalar.atendimento
    ADD CONSTRAINT atendimento_id_secretariae_fk_fkey FOREIGN KEY (id_secretariae_fk) REFERENCES hospitalar.secretaria(id_secretaria);
 \   ALTER TABLE ONLY hospitalar.atendimento DROP CONSTRAINT atendimento_id_secretariae_fk_fkey;
    
   hospitalar          postgres    false    217    223    4709                  x������ � �            x������ � �            x������ � �      �      x������ � �     