PGDMP  /                    |            Produtos    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    Produtos    DATABASE     �   CREATE DATABASE "Produtos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE "Produtos";
                postgres    false                        2615    16398    produtos    SCHEMA        CREATE SCHEMA produtos;
    DROP SCHEMA produtos;
                postgres    false            J           1247    16400    classificacao    TYPE     �   CREATE TYPE public.classificacao AS ENUM (
    '1 ESTRELA',
    '2 ESTRELA',
    '3 ESTRELA',
    '4 ESTRELA',
    '5 ESTRELA'
);
     DROP TYPE public.classificacao;
       public          postgres    false            �            1259    16412    produto    TABLE       CREATE TABLE produtos.produto (
    cod_pruduto integer NOT NULL,
    descricao_produto text NOT NULL,
    unidade_produto integer NOT NULL,
    valor_produto numeric(10,2) NOT NULL,
    classificacao_produto public.classificacao,
    valor_custo_produto numeric(10,2) NOT NULL
);
    DROP TABLE produtos.produto;
       produtos         heap    postgres    false    6    842            �            1259    16411    produto_cod_pruduto_seq    SEQUENCE     �   CREATE SEQUENCE produtos.produto_cod_pruduto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE produtos.produto_cod_pruduto_seq;
       produtos          postgres    false    6    217            �           0    0    produto_cod_pruduto_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE produtos.produto_cod_pruduto_seq OWNED BY produtos.produto.cod_pruduto;
          produtos          postgres    false    216                       2604    16415    produto cod_pruduto    DEFAULT     ~   ALTER TABLE ONLY produtos.produto ALTER COLUMN cod_pruduto SET DEFAULT nextval('produtos.produto_cod_pruduto_seq'::regclass);
 D   ALTER TABLE produtos.produto ALTER COLUMN cod_pruduto DROP DEFAULT;
       produtos          postgres    false    216    217    217            �          0    16412    produto 
   TABLE DATA           �   COPY produtos.produto (cod_pruduto, descricao_produto, unidade_produto, valor_produto, classificacao_produto, valor_custo_produto) FROM stdin;
    produtos          postgres    false    217   �       �           0    0    produto_cod_pruduto_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('produtos.produto_cod_pruduto_seq', 1, false);
          produtos          postgres    false    216                        2606    16419    produto produto_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY produtos.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (cod_pruduto);
 @   ALTER TABLE ONLY produtos.produto DROP CONSTRAINT produto_pkey;
       produtos            postgres    false    217            �      x������ � �     