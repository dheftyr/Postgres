PGDMP      "                |            loja    16.4    16.4     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                        0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16614    loja    DATABASE     {   CREATE DATABASE loja WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE loja;
                postgres    false                        2615    16679    revenda    SCHEMA        CREATE SCHEMA revenda;
    DROP SCHEMA revenda;
                postgres    false            �            1259    16681    cliente    TABLE     k   CREATE TABLE revenda.cliente (
    id_cliente integer NOT NULL,
    nome_cliente character varying(100)
);
    DROP TABLE revenda.cliente;
       revenda         heap    postgres    false    6            �            1259    16680    cliente_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE revenda.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE revenda.cliente_id_cliente_seq;
       revenda          postgres    false    6    217                       0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE revenda.cliente_id_cliente_seq OWNED BY revenda.cliente.id_cliente;
          revenda          postgres    false    216            �            1259    16688    produto    TABLE     �   CREATE TABLE revenda.produto (
    id_produto integer NOT NULL,
    nome_produto character varying(100),
    descricao_produto text DEFAULT 'INSIRA UMA DESCRIÇÃO'::text
);
    DROP TABLE revenda.produto;
       revenda         heap    postgres    false    6            �            1259    16687    produto_id_produto_seq    SEQUENCE     �   CREATE SEQUENCE revenda.produto_id_produto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE revenda.produto_id_produto_seq;
       revenda          postgres    false    219    6                       0    0    produto_id_produto_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE revenda.produto_id_produto_seq OWNED BY revenda.produto.id_produto;
          revenda          postgres    false    218            �            1259    16698    venda    TABLE     �   CREATE TABLE revenda.venda (
    id_venda integer NOT NULL,
    id_cliente_fk integer,
    id_produto_fk integer,
    data_venda timestamp without time zone
);
    DROP TABLE revenda.venda;
       revenda         heap    postgres    false    6            �            1259    16697    venda_id_venda_seq    SEQUENCE     �   CREATE SEQUENCE revenda.venda_id_venda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE revenda.venda_id_venda_seq;
       revenda          postgres    false    6    221                       0    0    venda_id_venda_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE revenda.venda_id_venda_seq OWNED BY revenda.venda.id_venda;
          revenda          postgres    false    220            [           2604    16684    cliente id_cliente    DEFAULT     z   ALTER TABLE ONLY revenda.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('revenda.cliente_id_cliente_seq'::regclass);
 B   ALTER TABLE revenda.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       revenda          postgres    false    217    216    217            \           2604    16691    produto id_produto    DEFAULT     z   ALTER TABLE ONLY revenda.produto ALTER COLUMN id_produto SET DEFAULT nextval('revenda.produto_id_produto_seq'::regclass);
 B   ALTER TABLE revenda.produto ALTER COLUMN id_produto DROP DEFAULT;
       revenda          postgres    false    218    219    219            ^           2604    16701    venda id_venda    DEFAULT     r   ALTER TABLE ONLY revenda.venda ALTER COLUMN id_venda SET DEFAULT nextval('revenda.venda_id_venda_seq'::regclass);
 >   ALTER TABLE revenda.venda ALTER COLUMN id_venda DROP DEFAULT;
       revenda          postgres    false    221    220    221            �          0    16681    cliente 
   TABLE DATA           <   COPY revenda.cliente (id_cliente, nome_cliente) FROM stdin;
    revenda          postgres    false    217   C       �          0    16688    produto 
   TABLE DATA           O   COPY revenda.produto (id_produto, nome_produto, descricao_produto) FROM stdin;
    revenda          postgres    false    219   `       �          0    16698    venda 
   TABLE DATA           T   COPY revenda.venda (id_venda, id_cliente_fk, id_produto_fk, data_venda) FROM stdin;
    revenda          postgres    false    221   }                  0    0    cliente_id_cliente_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('revenda.cliente_id_cliente_seq', 1, false);
          revenda          postgres    false    216                       0    0    produto_id_produto_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('revenda.produto_id_produto_seq', 1, false);
          revenda          postgres    false    218                       0    0    venda_id_venda_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('revenda.venda_id_venda_seq', 1, false);
          revenda          postgres    false    220            `           2606    16686    cliente cliente_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY revenda.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (id_cliente);
 ?   ALTER TABLE ONLY revenda.cliente DROP CONSTRAINT cliente_pkey;
       revenda            postgres    false    217            b           2606    16696    produto produto_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY revenda.produto
    ADD CONSTRAINT produto_pkey PRIMARY KEY (id_produto);
 ?   ALTER TABLE ONLY revenda.produto DROP CONSTRAINT produto_pkey;
       revenda            postgres    false    219            d           2606    16703    venda venda_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY revenda.venda
    ADD CONSTRAINT venda_pkey PRIMARY KEY (id_venda);
 ;   ALTER TABLE ONLY revenda.venda DROP CONSTRAINT venda_pkey;
       revenda            postgres    false    221            e           2606    16704    venda venda_id_cliente_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY revenda.venda
    ADD CONSTRAINT venda_id_cliente_fk_fkey FOREIGN KEY (id_cliente_fk) REFERENCES revenda.cliente(id_cliente);
 I   ALTER TABLE ONLY revenda.venda DROP CONSTRAINT venda_id_cliente_fk_fkey;
       revenda          postgres    false    217    4704    221            f           2606    16709    venda venda_id_produto_fk_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY revenda.venda
    ADD CONSTRAINT venda_id_produto_fk_fkey FOREIGN KEY (id_produto_fk) REFERENCES revenda.produto(id_produto);
 I   ALTER TABLE ONLY revenda.venda DROP CONSTRAINT venda_id_produto_fk_fkey;
       revenda          postgres    false    219    221    4706            �      x������ � �      �      x������ � �      �      x������ � �     