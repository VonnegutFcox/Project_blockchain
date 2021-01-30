PGDMP     7    :                 y         
   block_test    13.1    13.1 l    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16394 
   block_test    DATABASE     g   CREATE DATABASE block_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE block_test;
             	   user_test    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            C           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16427 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   user_test    false    3            �            1259    16425    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   user_test    false    3    207            D           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   user_test    false    206            �            1259    16437    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   user_test    false    3            �            1259    16435    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   user_test    false    209    3            E           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   user_test    false    208            �            1259    16419    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   user_test    false    3            �            1259    16417    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   user_test    false    205    3            F           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   user_test    false    204            �            1259    16445 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   user_test    false    3            �            1259    16455    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   user_test    false    3            �            1259    16453    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   user_test    false    3    213            G           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   user_test    false    212            �            1259    16443    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   user_test    false    3    211            H           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   user_test    false    210            �            1259    16463    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   user_test    false    3            �            1259    16461 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   user_test    false    3    215            I           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   user_test    false    214            �            1259    16566    block_app_block    TABLE     O  CREATE TABLE public.block_app_block (
    id integer NOT NULL,
    height character varying(64),
    hash character varying(64),
    "time" timestamp with time zone,
    address character varying(64),
    count_of_transactions integer,
    CONSTRAINT block_app_block_count_of_transactions_check CHECK ((count_of_transactions >= 0))
);
 #   DROP TABLE public.block_app_block;
       public         heap 	   user_test    false    3            �            1259    16564    block_app_block_id_seq    SEQUENCE     �   CREATE SEQUENCE public.block_app_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.block_app_block_id_seq;
       public       	   user_test    false    220    3            J           0    0    block_app_block_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.block_app_block_id_seq OWNED BY public.block_app_block.id;
          public       	   user_test    false    219            �            1259    16523    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   user_test    false    3            �            1259    16521    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   user_test    false    3    217            K           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   user_test    false    216            �            1259    16409    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   user_test    false    3            �            1259    16407    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   user_test    false    3    203            L           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   user_test    false    202            �            1259    16398    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   user_test    false    3            �            1259    16396    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   user_test    false    201    3            M           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   user_test    false    200            �            1259    16554    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   user_test    false    3            c           2604    16430    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    207    206    207            d           2604    16440    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    209    208    209            b           2604    16422    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    204    205    205            e           2604    16448    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    211    210    211            f           2604    16458    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    213    212    213            g           2604    16466    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    215    214    215            j           2604    16569    block_app_block id    DEFAULT     x   ALTER TABLE ONLY public.block_app_block ALTER COLUMN id SET DEFAULT nextval('public.block_app_block_id_seq'::regclass);
 A   ALTER TABLE public.block_app_block ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    220    219    220            h           2604    16526    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    216    217    217            a           2604    16412    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    202    203    203            `           2604    16401    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    201    200    201            /          0    16427 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       	   user_test    false    207            1          0    16437    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       	   user_test    false    209            -          0    16419    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       	   user_test    false    205            3          0    16445 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       	   user_test    false    211            5          0    16455    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       	   user_test    false    213            7          0    16463    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       	   user_test    false    215            <          0    16566    block_app_block 
   TABLE DATA           c   COPY public.block_app_block (id, height, hash, "time", address, count_of_transactions) FROM stdin;
    public       	   user_test    false    220            9          0    16523    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       	   user_test    false    217            +          0    16409    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       	   user_test    false    203            )          0    16398    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       	   user_test    false    201            :          0    16554    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       	   user_test    false    218            N           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   user_test    false    206            O           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   user_test    false    208            P           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public       	   user_test    false    204            Q           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   user_test    false    212            R           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   user_test    false    210            S           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   user_test    false    214            T           0    0    block_app_block_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.block_app_block_id_seq', 364, true);
          public       	   user_test    false    219            U           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public       	   user_test    false    216            V           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public       	   user_test    false    202            W           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public       	   user_test    false    200            y           2606    16552    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   user_test    false    207            ~           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   user_test    false    209    209            �           2606    16442 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   user_test    false    209            {           2606    16432    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   user_test    false    207            t           2606    16470 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   user_test    false    205    205            v           2606    16424 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   user_test    false    205            �           2606    16460 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   user_test    false    213            �           2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   user_test    false    213    213            �           2606    16450    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   user_test    false    211            �           2606    16468 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   user_test    false    215            �           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   user_test    false    215    215            �           2606    16546     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   user_test    false    211            �           2606    16572 $   block_app_block block_app_block_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.block_app_block
    ADD CONSTRAINT block_app_block_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.block_app_block DROP CONSTRAINT block_app_block_pkey;
       public         	   user_test    false    220            �           2606    16532 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   user_test    false    217            o           2606    16416 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   user_test    false    203    203            q           2606    16414 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   user_test    false    203            m           2606    16406 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   user_test    false    201            �           2606    16561 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   user_test    false    218            w           1259    16553    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   user_test    false    207            |           1259    16490 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   user_test    false    209                       1259    16491 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   user_test    false    209            r           1259    16476 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   user_test    false    205            �           1259    16506 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   user_test    false    213            �           1259    16505 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   user_test    false    213            �           1259    16520 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   user_test    false    215            �           1259    16519 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   user_test    false    215            �           1259    16547     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   user_test    false    211            �           1259    16543 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   user_test    false    217            �           1259    16544 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   user_test    false    217            �           1259    16563 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   user_test    false    218            �           1259    16562 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   user_test    false    218            �           2606    16485 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   user_test    false    209    205    2934            �           2606    16480 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   user_test    false    207    2939    209            �           2606    16471 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   user_test    false    2929    205    203            �           2606    16500 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   user_test    false    207    213    2939            �           2606    16495 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   user_test    false    213    211    2947            �           2606    16514 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   user_test    false    205    2934    215            �           2606    16509 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   user_test    false    215    211    2947            �           2606    16533 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   user_test    false    217    2929    203            �           2606    16538 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   user_test    false    217    211    2947            /      x������ � �      1      x������ � �      -   ,  x�]�]n�0�����`j�W��kT�D�tUo_p����?)	�����l����my)����~���@ڟ��N�pE0ع�m�+����=;.��lv�߰��䕅4���똭y������F�n��_�Ǭr�om.<.α��M�`K)@��T�Xݢ
8>�)��8��(���� *z��t���v���ײ�5;UB^7�\y�	c��7�u��ǽ�P�IC��&U�.��
���w2ؙ��vb���uBP�m��8������V,x�c�ב`��@C�?��o��\8      3   �   x�]��
�@ ϻO����~�m����~�
*%e�TtÔz��n]f�p��k}����,� X�2�z����Zq�����T�*]���6>�+��� Q�~��M�A@� wPM��A(}��D�I���%���������*Dd
������~ ."      5      x������ � �      7      x������ � �      <      x���K�f�v��^��/��~�=J%!�]@��W�A�����+�6�>��q�}2wf�|�1c�1"��?Υ�3L���e�(=���N9�ev�U�k�1��p��>��-�S�6��8��?3�������������_����_����y���������_���w=����_�v������p�pO�6�Z
ٹg�5��͌����;�0�q���If-�}��W�?�p�߷"+�|�|_�L��}ݸ��O)��0��mGI=��kŘ����Za�p淭H�
��\�Í6F4�XÚ��"��B/�ߏތ^W_���]q՚Yy��2���"�V���6�̣jRkk5�|t�����S��i��m��φv)��k�Z����_���og��_���o��_��?��_����ӟ���W_���������XQ��1ه����hS	ݗ���l��.��}	�%���XF����ya�����Z�cE~�tq��fe�3kw���P��o�&Ľ��f�i����5kM?�"ޜk��ٞ�i�1�p@�[��b�5�^G�e�\����\��>OάvLN�׌p��3�̈s�T���ڬ�����a�z����kc5��0���uǌ�Us8�˜��3�l3�s�:K��nɦ��%[#0җ����i����j�1�?+�5�_l��U��Z�%�3�bz��l˾qvWox򨭅�Y�a��S�����8 ��jg����JZ{ ��X[3�he>�v��U���E��ȡ����}�H�3�z��S�|�lnמ�(ј���x�x�I���׬ K4�Y����׌x������5�#�Y��Jd�86��K`;�R���r)�n�Ř8^�f�?��m��\y���;_�f0�R�Nn[��l��!���6�M[Rܜ�����r��ew�W�6��j���0j����]DR�"��F�G�KRv��^Z�������܁/�������='��u�/_�J̄�D<7�@2��l�`�\΄1�׌���|��4�
W�A[*���1�g�zX�0 0����1V#�x���!ٺ���E݁/����`�W[��)�O�c� �n8�[���%���b�J��=~�����;.�|�C��R�	��nx����JN��ZH%.���k[ mݥ�і�f\�6w��E������� �	��Ζ<X�سw�3��@a"#�W,�k����[f��E���/���H5�w,N���A��&�@Գ�X��!b����8~S���I�U�r��ȶN�����v]�P�V{�vCg"��fd����AQ���be���Oxg��'N��e�/nA9z3��
��#K�{��>f��������)Ϟ#? ��9��A9wŹ�"���m)05�� crED�k���]��AQB�H���_�G�i���]�
�"���-���4�7�f��7���/�m3�AQ����$x�c�0����\��IF�|�W:F6ȟi���5������E���8Sӛ��<
8RÎ+X�0��p��n�d Zq��s�1��?���?(
��:���	�vN���eh��@�b96n�f�,���&�����e�AQ�`�k���0����>��Z۵�1�)j���N�j]AA�|]��+�8(Jd"�ž�9��L� ��l��!��4 �_��Հ� �l[ �|�K7�E'�6M�DxZ���R�(d�3�TMA���0"��q������}�7��E5CL�h&D4���^�?F�U��Aׅ@(\�����kg3��������([;�_elB��(�\�i-<���V�2�͵��Z��u��������
ߌ����9;^0|�H��wYHŚ����D�f|N,_�|�������e�AQE�Z�dr{f�k�f/�x ��<�d��tt~e��y.�����a/6%5BQtb$gI�`�`��J���-��i K= �?9P4?�0��ᠨ���M�z��t��b
�ؽ�w��ֆ�2AOy(QALd؄�~]�ګ˷��&<i�"��.F �z�`+�N2Qx���[�R��RS8~zk�6�(|V�`�3�/M���V8����|�m���1��Fp)l����3E���4�V��{���	0�Uo�A0��W�v����H�_���pP��'��(0p�Ѫ�f�=�V�����P�N�b����z�K�'�\�W8(���l|������ķ��x#HB�w�5����:����ߘb�nfË���'O0�%9��
�[������xr���b k���օ�7Л+�Qmq��1!�]�bb�P(�=�W"��{{��P�~.��ד��ao6�3��n ����:����	,�t<|pC?[���Ҝj��(��5�f��1#=������3�䒋�b!�1��Ѡ�~�G�BJ���y	_3�3�����ԫ[��t�P��3�� �Èڐ���py��������f���1#<#����P>����{��@�vL�΢�KB_����2>f o4�y=��"	s�{����	�u�������d��f�$"ek�^}����b�g�n�2�� _���c+�d'��0�� �_���5�ޤE4?#�ؘ�8��! ���p@�g�[u��QD1;(a�U����ۘ���׌+	z�@���F���!U�$�P�
�l
���tM5_w�ms�����s��W)�Yk��5��ۢHĚ.��5٦҇�&M@��C(&�-����p��Wɏ����>_�� �x�q��~��R�'�4������7|��tЫ�PJu�iF�m�UA'0lWHH��DR�抮��0�U��ѧh�f\�-��^%>e�� �-B�[o�PAD�|����x���J�l�K����3.6%������h��i�ȧ�n�%�6d��8D���A�순r��j�	��1�?U�s����y�[Ў�\\X�j�_�1��h��b�Qe��_��p�pO~%B6�)�K���p��C�l�n8H3������-spn���f\1�tP��'eK�{t��i,9�+�{�x��1 l�u��͝{|�wS\�rу��<z�5fٴZE�d¦��T�xk�`�@*&�@�>Y��:����/|�|N�-3����49 d!|��u���E�y�Y�������9�6@��������eIz����I�2��n=cG��p�ଅ���^mp:��Ot�9E�1���^�W>���K�,48��9��� +�풳�⼨x��K�N���:��kƕ���r|��ak<�b~61�f�b5�l��\�2��"­X��k���}>��3�^��:8�~�)(O����J���.�d��c+�!r�>עI����/~Hika`T�ÆmC�!��P;�ld�����]JYE`�;�{`M�����s���r�6]Z#��@9o�_,?�8,"�B8�iF����L�_3�hO>���tw[7�}���x���1ܪ5���Il�xm���G���O��que�|q`�n˗�`�R���08�P�(^�J���I%��NL#�N�\�k��3l>�|�]+��������}������W��(�[�0PWd����(�v�)�&$,���S�М �g���ٸ�� ���^��v�{7!�kƕh�E�t��*�l׍TK�@I�N4�0J)^y~�z��ÿp�m��quW���?���Nj�@0���J��G!T����ʚt5��j�f\= ������>M&BF9�s��}�٠5�_��Zb{VeX8@,\����n}9(
�	�ӣ��C1��ࠄ��?͹`S�xFB��h����PV}��j5���D{u���D������F�Z�l�e���g^(����F(j_3�n���0c���~����6GF���
�M���j�EH3��!�5]����u�;�T�jkSE��&�g��O�콖�͹rE��05,�    ����%�^����WO�堨TN���3`����k˺���1�a:D;�~�S�ţ�C_3��F9(��̨b�#�r�!ہd@��	���Q>���y�
w��������(��-��A�f��	��х��0�v�;��u�Su����N �}�pW�=�h�;�t��/� �$�<�����U�)Cb+I�xm�Y5��֥f^���`���t �<Z�/�T	[jvq�wo.�I�AF�*%寋��[��|U��D]��A�֌�>��x��LBX�N(�W	�|~pq�y������h�A��wA����fE?�7VZn�5��_K;��zH��8W�?͸���E�F�M��]`U�e���DHK喠~�"��Xn��R+��j�����htόel׀8_Q�HDg;�95�e�5��v7~�����_�K�����g=(�3������h5��V�!��X���� ���99]Z�k������������N���՝}�1+����~�����b���� �׌|�.Z�����t��E�l�x.�϶� �p^���Gz'�u�ʏոz�EQ����ݓ.郟:���<��/ �ay�3����׌��V�P��J��c�zqA�w���%�!�����uO�H�����Urh�5�*�Ys`4�z��XIpi:�~�fЍ��5�nahx�`�O�?%{�l!�8��a�U.�98��p6,㍇�@|mpA�������%� V%�]�L��ao$�5H@�,��a;?-R.˹:�+h*0��T���~� �^�S��P�����I!P�P�Q]&D���3�5�����M�|��D�7�6���@QX#��q��f́���=�@m�bg`��R����h��S���a~�A
�ӝ�d7��"�������\�T��-�)|0!�?		Paס�
gc���]P����.��S*��H c͎0���=kö���"�n�_���y�����pAaA�cD(�t ��ߜ�ˡ���X��a�q�L�ݑ�Z���_%��cx����J�'�$*��e�Y�i�v9ԕܬ+缇R}��2Gg�O�d�����8u*�\P9HI`���Ǫng������a*�R�ٕ\ի���~��|�80��k��ႜ�a+\t���@�IS)gW�Q��A�٭EIfD�����NОJ����#�5��]�Uo���󭶕ICd��"��&�<\`����G�*+��T%x��	4ȷ7�o����6:²�}�D8�����y�r���?���ҞZ���"g>gH�����9�-���@L�
5�סL���ʜ%Ȅ�ϋ��G��X%x�4e1��8H4��f=D�-lZ���3c]���N���j��׎;���*�7��#Eb�V(�{~�|����͜%��Bѷ���]������v�O�Lp���KB��}Tz�F,Ba֭Ĵ�D?X��b�Xé6H*uڦ��WW���Ͱ�UvdQ����At�|��0ʈ�㷝s��<� >LH�PW�s5�WYq����͈b���>�.���2V�Є�A^�[�p1��1 ���NiF��q'���X	Y��ag�C�N*BP�L��S��1t=X/6%F=n�|�n��F��֞��3jO���]�5�m��b%��8*1n�B85Б	Oq�����a����fڋxi`�ʄ���[��HBNh�G��)pu�Y��=j�� o��4�v���)Z�����; T�L��(�[d�X��<g�_[d�`�%�N�����;ekO�J�MƮ��m�IE7ތw�H�E������cO|��L����%��s{� iO�Jp�Qnv�"R�c�Sl(ͰV/��["~Aֶ�f�+dW&g���^��S���������"#g������|<b٬7(��l{��B�d��\���S�Bd{�5)��q>��q�k³��\ZAքgzJ7��㭹ʃ��r% �m��'����%��rN]\��5hNn�n���@�3R�d�~���$��t%(���C\�;2�/����
a+��" �������1xr�JJ*��?��^ŹS�c(}%CE �$�.��k,���NSlX4".����kEê�b�W��y9�+�x�V9;����C���FR���]9�lZS�b�T/���W)7�T�U� ۧ��,�n�}�f�	��p����Ɠ	uBT�8l�_;.+��B��;�F����dSĿ:�у_BʚHЍ���0A����a����)��bҌ%Z��mk� t�yq�B7�dS�Ty��w�#�E�;�#ܕt������6��`�j��6�[I.!i�賠�K�hJ`w"�&�΅�W�?�T����s- 	���僝�_o�X�����uԒ��#�R��PV�҃�v�]Üd�C /��������Kf���԰����?yVh�ڗJ5!"?��)���%��t��$;��b������3���D��z�L0t��D|���%�=�_;�p��%�z�)�H�����6a�Z�� �>�yCo��z���/#��b	~
b&3�ȑ�PN*%�-8�3�p�T�E\Cx���TF��/���ᯮ��)c�Y<5̡��'��3��&���< @��(�ϸ���8���2J��ڑ���Ա�<�9d#X�&ԚGqc$T�C�+�]@�G�C���N��"�8q�6ҞB��[T��$9�b�ZP���_�d$�r�e���s��r��[��ŏ��R{*Y��O�TD���!۾�N$��?�� ������f�2�N���q��aO)K0��yȧ]�X���3���P��:]�m��@Zd��(������ǥ�<�,��"0��> *Ɖ��Ԛx%7�J*�m�)�qо`j��u�s_��K�)f�*f�d�R��Д!�l����B����EV�4X���\#��I���Z���z�ȏ'RL6����N@1U~gm�ܷ�9"��*$*���4ā�w�~�Y|}�)����u����V��9�V����΄;ui����V0��zī�8�,l�X^�S�=��_c.P5��i�5#58;���۹���X�o|qw�~
Z|�7H#ݭ�Xv`�G�q��G>���9��Z�MH
NZ`��`ln_~z��啲��Lt)*_6b�*a-k�fX��G�����<m��󂾽�w8�ȣ�x�*�T�A�r>r"	%�{����F<�+�we�D`)A"��Wo����(�e�&YR@��ic9�L���a���l�ꉴe�։�����L���WC���VNW
��nvO���ZJRRǙYt{��`l�#�K�|������:th���%�,-+q�bT�^���Σvhp�l�����4���S�╡T�{�1�:�@˕n��8b��rQR�d�.)�����9�E�Xs�������G1V��F|[A�x�[����C�*�nc�Ѫ�M���շ��ܞ�_����
���!��v(3����\��M�WYZ��nD9�e�Ⱥ�j�Sߡ�8�-�(���P�%݁u��^��!$L@�3���`�.Y�8o���M�_;�:��S���ˡm"L]�n���C7%J����5ūMeQ!�R���׎��{�[8OȄO��8e��bg��Xn��"��K�����Y6+Y�[ u�|�W��T� LOV�����Z�ͮgS�I��W�&6NH_�r���sV�NQ6�����K󴧼�p�Յv 4�I9nѫj3�ܳ��T���msj ��c��	a���v���[{�[��GϠ3��0A��x7@�7/�$/Y�b8�Ѵ�Ĩ�V1l��?��*o̦�sy�NM__�3�_��:ݶ8�D��n�p�fi���e� �_;���N��������?J�Џؗ��^[�o�Cv���[ޤ2���n��O�]�?�6>��׻[a��_	�}�Y�������C�O�jW�r҃�R/��ŏK=wJm|�D#V!��b�+�~����L|f�^���|I{V���P}�}���������C�	�h    �K ��l�|lB�2S�Q�/uۉ� ��4��ğ��^�S��C�gDRME�&�����*��[���%�Sj\�J�n�%���_;��=�)s�*s馫�h�RUa4��OE�#�a7���Z�B)��N�s�`��?v��|�S��q�fMېd��,
f��kF�jS�x��j�k�pNM���B���WU?��x�omj��u7�ʰ�B�#��GT�k
��P�(��ͫ�0�Z?㜭W8v*]|z[����(�l'�.��^K�L�V� �Cׁ��X����J��e[I_\�w�A�ԅ���)Ӭ�qݪ�9%v ���,Y�� ��0�څپq�Ko��<_;����Z��1�����i]T�6W�v��\�)5e���1\e��Q���_<�W�.��x�?aB����U�N�(�\K�hżU�e�÷ v/%��e����RV���j
�e����@��?�U:�ԚI)�!��D���]���}9#4rq�e��=�.z���hxW��Z�"��RJ�a]Q�_m��7%��$���w��Իx�l�ˍi�XT\ʻf�D���Et��:,�y?�ꁺ����C��㪵�=/��Mh�
�[�����ay����a��T	z �{�������m��O��n8/9����z1.��[��v��@n*�>찗5K:V���f��p#��a�=%/yIE����S�o/�
�� z:�UE��w	*4�^z��j�����w��Լxu� jT�z���N���EW�ؼh�O���Z��o��W�)z�1?����S�m��5��ӓ��B¥��5����m��t&�W��T�p.��#-kA�;ݔ�{�ƨ���vp�"��כћa����bo�oO�>�0���ߥ߈Y��J���mk�%6��5otE�}n~|����>u/��'��\M��J����l�c�T�� F$-ԕSunq!���m��q�~{
_|�ڲnc`�@��[��E���Zp��1⦎�����0m�a,�J`�;���|�g>NU&aT4�ۊ ���·I�phGR"��=��Tz+EB�n��v�ŗS��#�T��fն��� �/��7cg	����R'WϿY~6�Z�=��獵��G�LP*!���>ҥ6+e3���k�<g�1#��l���@��w����P����Vj��to�L�aOj^��d�$R�}׬�e��c��{�~�<M}S�Ck�'��,�(ylؕ��\f!Z�G�S��ї�}���?=�/D�3�j#;�N^m*8��g�����38T�W��>a�q�y��ƹ;=�N���'X�ȡI��@A�q-����`�Y�o�lM�V��mނ��rU�N����B<����T��Q�v�a-;�.�>ouD1�^SV���b�n���/��;�/>�GM5_U]���j�Y��N�Aԉtj��#���L���Qs��W�ҝ��×#���Tp�2"ڛi�2ta���0J�*vh�����$y��57������;�/>���J6��>NV,�g�Qc�� �d���dCS3�<�M�q����w�s�<�Q����S��{���.Qee�쩦m����R�q��q_��]C����y�K��A������%UGU3�ĶT�QIA�##�7�KЍ��w����� ����VX����|�9��Y3@� �c���}֎��R���]��p����t�+,�ɡ8{ַ|�}��5M
�v,�ө�ZQב��03�;�n8m�|���Q�Û��,���-� ��>Nc`&j��),[b�|ߑ�fq�S��}DW"cr���&� f�miT`�P�v0��[��[O���y�O�<ݩ�QVXV��oYE�۫o�Y�b�{���ڀy�cUUP�a��{œݩ��?ف��g�p������߲,d�:��J�}�4��2Q�:��}�k������c��C���,Z>	q��|}<�q���q�2�*�l2ᇟ^�[�S�����X<\k�#��F,m��f+�ʗz�����"�D�3��+�U]�;�/��g����:e��%Qm�d|W�ʒM����%��H��[M+�y��*Tw��ū��fh��w�d�rs�9�Xx9q�W���J�PULw���;�F�3��\�[w�_���@4�u��J�Y���HL���U٘��h؀�",�j��Obs١ǝ���RS�d(��'�?#�]�aC��6�����)z����D9o��qU������`ܦ��Om`�|��U"+A%7�>��
tC�Fs0*�������r�ǻ�x(�WS��-=۲��`��*Ð �Gj�j4A�ӡ��M5_;��.ܩ���}B�����4�89>��b����%�>Қe��6>Rt�4~�q3����x~X�!�B�o�	�ė�A]AϨ�g��n��m�#ґ3�=A�~�	����c{4���a�u�����!<$���izR�����%41f!��k�e��S��q׾&���:(x�UT	^Էh�Myz�M�~�4dá������.�����'t+�L�G��`G�xh�x2�p/R-�ޓ?���P��5}���ɧ����T5�!�?�C������4�fMaV����l�!IM�~~��ݻ�;�/x�S�7��m��":�� u��X*J�e���V+����\�;�S��5��O��� �P�v���0��Fmԧ�l�1��A��٘�j��s{�Oʝ�O���-��R*�٪k��%!Y�� (n�X������̎�w-��S�w��r�_P�ϫ�\���K�C�C4���p]��P��&Ms!
M ����v\��S�⡇jm#���~e��#B�m�	(%9=�"7�Ts4J3D��՜��/�?N��]�a�Q='LWB�z����흉ڇ	@���Y�0턨k6@f�����֝��|P�]UK�Wd�Ag��l��0CH�3ŪW(��y{�X�71��JW��o�Q+z��c�^�ʡ�R�	%#�S-�	��X��ءT����~zys�_�&��� �.}�곦Jo�T(��`�R��LKu�((α�Z١���ǝ��]�~��\���jV�"�e��xP���X����4��q�x+|���Gv���MxT���_���p�X�5��e�a��ʚ]�'���k�f5QP���{\s�g�N��7�i��P��:c�p%���/��������8*R��g��;^�\�v����d����L�E9�S�?ߦ
NsR�Y`�S�_s��_�L�|���ZK�S�J=�m����-<��G��!���#��!�I*�e���'( }���؝���3�k��!Pm'R�[*ɯN�zH������}G���hj��so�G䫸�_�3� B�KD{�x�S��v���@�JD��a{�Y%
j������ŗS��U��`��@��,{�Q��${�b�R!������ކ�����q���N�a������)�=Z|��5u!�(AyS %n���y�v�B�c�]� w�_\����ȽU��+��D7;�͞	�9.5���v��S"��7�F�ԯ�޵v�����ׯ&�֮�jK��۪ʫ���jy	I*;�e��z��/����W�A�Կ��z��+t+�QՁ/v��q(��աi�iIW �Z|q�p�@��6}��S��4�E�<J�H�vռB�t�!ܩ�LV���P�R�jt��L�d������Կ8տ���S���y��Ֆ�U>���7R(�ء7��F;�a�0~��z�v������J%���R��NJ'�~%�MD����i �^~6����:�?v��<%w�_��d�0��啈��;f��6Am |[�>Y�4�E\1������zGv�����p��(6�޿��8d��qM$�a+{���ƴ��F�׎��dw�_��T�����:W�����[ms~H�I~����8FR�R����׎;;�/N�9Y��pL��sꆣQ�H����W�~+@��jL}uۈ+|���C��t���� i'h���g����1�AG����:=B! j1 �"a�O;n��y�pz�(x?    zW)Hʩ� ���Z��>l�gc��Z�a5���
q��w����အ��/F/���Tr��~F@�G{V6w�R���+g�GV_��~�+O�+�iV�w�,��CT6B��v�L	��U�����+.DC�̈��׎�|Kw������"�4�l��9��J�/�sL����Q�a��h�{�~�O��+��z�`����r�I���ur��q����/M���Wh�U���?.�ܩ���+-�f������≮�#�L )ʪG8�ޚ�@�#lv���w����ũ�e+gk"��'��)b�����j@b�,���z@��%����Rϝ�=7��%��e�P���@����)]U�n�*^Ǩ��-z��N���|4�|���=�dx8��>R*;ͨ<&�C�ǻ&Cj���h��vܽ�����#1_5��Y�1ߡ%���4�;��������Qm��!��w�����)����(WK1],j���P�q�|^(߶rB1�!U9< ���Κ�q�RW��bܣ�c�: ����_�m�[�jT��r^�v�k��SG��T���㎏���|=�F/©N9*)l���R��� �>%li��z.L�~��F��a����3k����]���bi��[���ǜ�e���	����"�W�/;�xЩ��qB���H��@��~oyE]fO�\���.�%|�^�uwՌ�$���v��]�:-�P���:���"�[�x�S�	�J��#�=�v���FR�ٞ����2_۝:�Iz_�z����spC��MXqK�~6�|T��R�NU/f��
L_;���ܩ��S�oT5,�Bξ+ħ/�|ѵ;0ܛ��?b�Dg��_;��n�S�"8�w7MMS��O���c4x�Xlx��$X5D�_��~�m�̓v��E�n>*:�`�z#�@��"�d�xJ�фp�I�Zۮ�AX�x�׎;}{�_��C�ce�d��gGIv5�E\{�A?t�^��~�������;�z:�6��sU�c u+��\<u͉x_��YWw�{�]�nz�ǠC{N����iVӔ�2,R���{H����t�`g_���XX�ǎ�w�S�"z�4>����a�5�6`"
1�������J�9갔w�e�׎;t�_�牣�w��Ji���.���@�����UU��[B�sX��q�J���pw�|�_\�ج���	���F/�������R�*Ü�5Lc�d[ۯy���O��d�j��2�,^��2
���Fy=��Jʋ0�{�MՃ,M+�̪b�c�]��;�/�u���%lL5�Wڔj��0�Kϖ�'X�u��2o
dHC�>:����S�"��վ�u�2u�����F�j�/"&��& \��h,�D���u��]��;�/���S�qL�<O�o�)m��@�mV={�z����&XN����QU&����OO���AD	�k���+ҭ�����CB�Cf�̆NP�����;hN����)�S��k!\��q %㻏��]�=q�������,�Tr}ӸU������)�S��k2U���Q��
�mhEr��%N ��A���-~<�z�D���R���]�@Jߖ�/����%��^5�\�պ>��'��sJ+0�/�_���]��S^�f��%����wV�o� ����F���v��;��u�~��2��Կ�ZY��J4)M���Ҍ�HD�Q~�������E/R�C��e��w_�FT�S��kv5y G���3���C���!���T
R�#p�%GI}�0W�.ܩѳ���Z��z[G��[�]�
t��~����U��L��~�q��O���a�T'<B�Fu٥�{3UY�^#I	��d@ȃ�D��)FFl��C����2��Կ�Y*j���J����3FH�ܼ2����m6Cm����T��ԇi��z\����E�t�\[]���.5.#k�FQOɡI�2R)���Cu���ƹ,u��Կ��͐�s�K���K�3a?���G9k]7�T��֬�Ȭ����T_;�����3n��"I����!҃����?B:�����L�?5	6�i(��Ğ�W����ѳv�N~�0&�9��@��9:�rS�<�ƴ7���h�����v\��S��g~�MEf�E?N*O4�8@'���bb�Fbk��Z�c�t�L����|��O����9E���iᫀ'�9U¿jg�(����8�ELdV����|\�_��c����	49��pzW �H�o��ʩ(/��Q�Ew���k�U>�?�/J�i	��뗩򻮌=KT��mY�EYUT黊��K�䀿�uމ���Կ(M�k �� ��j�9v*��x�^"X'�����}��'�Ds.?v����g�ҦV���@���$\5���ӳ4dy4�9v\E�>ٸ�k�����4�m���fgb2sV9GQ]��'%<�*I5��^L�u�i���5�Bv�����QZ]�%W�F�����@����*34	��)JQd��X�1�Fm}��q�N�O���4�5$V�R.��8֣O4�w���ch��F�~�G�Uv L�kǥ�;��$�gY"�^� �
�pc�S_����$;Y
�궠�6w������w}{��Q:�W?|M�Kl��S���U�Y0=�N�T�����GL��!�����z1��������+����E�<��v�K\�� ��2C�֌&�����1w5�ȟ��K��w�neN?,j|�U�������T%�,��J�^}�ܯ��dǕ~��E��QC��A�[�/P���6�[�]�׺l����ɦ���G�sW}H��Q:}����,�P{ ��YU��.��xL�ip��bz	�B�4_���g�O���8,ahJbvNj��<�N�at��>��E>�m����V7���wuk�Կ��B�=�(5���r�ax�/�e�/�6�m�I��Ƹ��~���Qv\��S���Գl@s�O�҃�1b�:[��d�4�`�^E�JW�bg{�c}�xM����B~�0Q��|��|����Jk�/5��uw�-���@�,���kG�ۗ�Y�Q���;A�ܝ�މ;p��!a�|� &С��5�a�����]���Q��F���~`<̧군*����RYM� �����,^^t���5wq���ll�.>49�h�aTOmM�Q�mV����[[�U0 zU
udߐ�ڑ.߁���Q�z{��VZ.+�CCV���8æ�W,�4��&P|"F���k�%~�U3�8�yC,����� �O�F�qT�rJ���rx���ڀ��w<�Կ�ܓolj��˩����Y��u�"ȿ�Z9)]���Ŕ��*��k��}�?�/*�|Q�1+[`p�a�ǻ�I����doW��&�u�F#���F��c�%O>�/���(�9�ꖿ�,vB�S�c4!�Y��f{�Lp��3��kK�.�=��QytKjt�8�Y���"g4��Z���^84��,���y�"�v\�i�S��r�X\�v�Z�(T���0)�Y 0ƈ�h(PQ)HQ���_��{��E��ph8����)��]�/�C�d�lt>$ښ���&TT?v�����Կ(}F��n�)�P{���pl}R�T�����	b;Z�J~{G[ůW����q�uС4[%H��lo0��g�k�9�:$)�����`c]U�C�ɇIzo������9�c)q���LA�њ�`�꫾Wv,}����A�X�O;n�N���^�j4hy��G
a��Z��cg8Υ�}��ú9�zm��8L��q���O��ڀ���QS���o�/G�;N�:��H��+�O�Fm-��%�MuLo�Ǽ���S��Eɀ��d�w&��)V�vk��dj�b�z��|�]FW��ݐ�_n�N���&�����i�n��B#��dM ���;j�g�i�Y	i�L_;��^��Q���|[�c�K}M5�3핇����U!�h��;�{l�`��㪟�?�/������[䳘�T���";�+�����8W�ll	Z����������Կ�m�4T��f����C�2>q�'�W���Vk{t��U9 �  �
ƹ�w��Կ��T�m�ߦ:)��K���Y�Oqd�650V5C����Զ�?����S���[;�?���B�Ӏ���]���Fh���=�a�U��3+|�k�ݽé9m��4j�)A�D�5���)��ĕ����+��v%�OF���ݻ�?�/j˦��UE�����RCi쬚8�ni��^B�Uc���)=�}㋹�����Em�f�}���%�,�4!���NU�$U:,��U׫�.�o7�=	�h�ﾘ�>W�Կ�m_�B ����vѓ�j�ް���z����&7���q�ڻ����q�+O����Pǰ��v����)�}w���F7���b�8���M(]��M�8g�x�Q[ǹ53���l\���X��7���YF-�5�ceeW-c��������{�S��6�Do��b �&�ǝ����|E<������O�ƟԠ��p��w8v�_X��6'�)C
a hIە衞S�X3�X��TAqQs<!�O=r?�Z�t�(OT�|�ٸ��}����~u�;��S�k3431�y�����y���P�������o���;����������������������������?��_��|����Xh��# ʌ�CY�w�4gh����J��j��5�������X�׎�|K�_��ʪ f��4n8��Ω�4%��&���]f�TM,���6�o�~��O�Ǌ�4�-�g�L���s
-Rvg��A�M$��޻w ���Ԧr��Υ6;���`^j�72���dq��������b6m�4
�d��iV�I(�\�=����O#?�ny�Z�]�R���ԝ=�Ѝ�9ufT(�;�W3�e��))�<}�:4o����$���N�Ԯ�m�%P�TL5����g>f�]i��t�̍���{�T�b������J��V	@j�}�\ �!�Q�n��x["�/vD�:\�h>�+u��EO��4��j�u�**������<���;##�:�i*�k���wZ���RIO���x�ny�f�0�J�h��Ǵsr�4�9F�c.<;�i�O����R `��kW8U���Ŏ;u��\@� K�[U@D�m��1�,���g�fT�tp�\���9�k��zN]�,�4!)���� �7��5� �����Zc!���*���)�ޘs -��aS*��5ȺJӎ�<���[�9�O���&Ͱ�����f]�4��Gs
���~�9�Qym�x�Z���v�!^�l�ԂMK��JT'��y��Tҷ?�?��oX멪���0�����DxA4�������>�h�8tŻ�Mzk�Z�v��'k�?,���9�IE㴳�ռ��-�3�f�f�I�zNK*��u��A?Z���k���bN�1�n�K}�z��|���ܡ.Z�[�� ��UR���^�t!��y1��a��V���9<���B�(���(�H���:.f�L6�4�4�G�'��E]䆲7~�㝙s����nQnƌEۘ͞(p�zU�	?8���sA�\�ev�昡qrZ�G��˚��f���<��"(�2ko��v��M�2�Mg,<ZOe�9E�e�U�o���^��@˛r��B��3�q�pg�s��с�!���@[�U:��ꊥ	:�\���~gv�J��.0���/=(�Q�&W�-/���`v�+֫�6 �U�ִ���|+:=R�4Bz��D5OTEBJ_.jc�X��mI��hr=B��\�m��%�ͺ�w�Za��Ѭ���Ѿ_��ʈ�$Y�)� G;A�gS��~X*�Z����?��?��?�g�X      9      x������ � �      +   c   x�M��
�0��>�`m�g
��E��]��!�4��LGn>B�]�9U<ɕ��r:�Y����%IQ���7y���rU��` ��m�H�]�69�F�< �?w+�      )   �  x����n�0F��S����g�ϳ�d�ĥ�����kB�["r�|�o���B7�nϽ
B���ۦ@��B��/`%�%�#�P�&􀅝�����-���^�Ti�:G�-��	u*�&�6|:���=�6�k�Ef���)gl5�Й��֦z�J6YJ���%~��k���wLg[�����G��?4�]4����\)�Mk�L�:=���	5�B�(���!]\k}�Kar)�W
����\'�����Y�����Ƭާɦf{�B�e��"�ݏ��U���di �Z�v>�R��6�d��y�.�M���/��v�+Nm��Ѭ���Bb+I�p�
���J�����9
��B+��'A��1|����%�^>X3��Lo>>;�&t��-o��Sh���r��k������/�*���B��C�o/��J�(��%G��3̈?����Oaw�      :     x��In�0  �syE��1���,!E���"� �v�׷s������	��"�/�U[u�p�*҉�m2_0�9�7�.��j��+��~ MGD�y���7ex�g��m��dz��YC�@P҆�%�����t-G�=Rk�Qx�2[�E�ȣ��ۢ���~}�3�	L
�4Ҷ��^��Yc��f�&�7f=13�c� �J� ,���n����X<�n���u�V��<�����a�ߠ��@�w��x��!�1�P����$��!_l      l    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            @           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            A           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            B           1262    16394 
   block_test    DATABASE     g   CREATE DATABASE block_test WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Russian_Russia.1251';
    DROP DATABASE block_test;
             	   user_test    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
                postgres    false            C           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                   postgres    false    3            �            1259    16427 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap 	   user_test    false    3            �            1259    16425    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       	   user_test    false    3    207            D           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public       	   user_test    false    206            �            1259    16437    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap 	   user_test    false    3            �            1259    16435    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       	   user_test    false    209    3            E           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public       	   user_test    false    208            �            1259    16419    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap 	   user_test    false    3            �            1259    16417    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       	   user_test    false    205    3            F           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public       	   user_test    false    204            �            1259    16445 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap 	   user_test    false    3            �            1259    16455    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap 	   user_test    false    3            �            1259    16453    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       	   user_test    false    3    213            G           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public       	   user_test    false    212            �            1259    16443    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       	   user_test    false    3    211            H           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public       	   user_test    false    210            �            1259    16463    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap 	   user_test    false    3            �            1259    16461 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       	   user_test    false    3    215            I           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public       	   user_test    false    214            �            1259    16566    block_app_block    TABLE     O  CREATE TABLE public.block_app_block (
    id integer NOT NULL,
    height character varying(64),
    hash character varying(64),
    "time" timestamp with time zone,
    address character varying(64),
    count_of_transactions integer,
    CONSTRAINT block_app_block_count_of_transactions_check CHECK ((count_of_transactions >= 0))
);
 #   DROP TABLE public.block_app_block;
       public         heap 	   user_test    false    3            �            1259    16564    block_app_block_id_seq    SEQUENCE     �   CREATE SEQUENCE public.block_app_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.block_app_block_id_seq;
       public       	   user_test    false    220    3            J           0    0    block_app_block_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.block_app_block_id_seq OWNED BY public.block_app_block.id;
          public       	   user_test    false    219            �            1259    16523    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap 	   user_test    false    3            �            1259    16521    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       	   user_test    false    3    217            K           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public       	   user_test    false    216            �            1259    16409    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap 	   user_test    false    3            �            1259    16407    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       	   user_test    false    3    203            L           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public       	   user_test    false    202            �            1259    16398    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap 	   user_test    false    3            �            1259    16396    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       	   user_test    false    201    3            M           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public       	   user_test    false    200            �            1259    16554    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap 	   user_test    false    3            c           2604    16430    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    207    206    207            d           2604    16440    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    209    208    209            b           2604    16422    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    204    205    205            e           2604    16448    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    211    210    211            f           2604    16458    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    213    212    213            g           2604    16466    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    215    214    215            j           2604    16569    block_app_block id    DEFAULT     x   ALTER TABLE ONLY public.block_app_block ALTER COLUMN id SET DEFAULT nextval('public.block_app_block_id_seq'::regclass);
 A   ALTER TABLE public.block_app_block ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    220    219    220            h           2604    16526    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    216    217    217            a           2604    16412    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    202    203    203            `           2604    16401    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       	   user_test    false    201    200    201            /          0    16427 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public       	   user_test    false    207   X       1          0    16437    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       	   user_test    false    209           -          0    16419    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       	   user_test    false    205           3          0    16445 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       	   user_test    false    211   6       5          0    16455    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       	   user_test    false    213   �        7          0    16463    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       	   user_test    false    215           <          0    16566    block_app_block 
   TABLE DATA           c   COPY public.block_app_block (id, height, hash, "time", address, count_of_transactions) FROM stdin;
    public       	   user_test    false    220           9          0    16523    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       	   user_test    false    217          +          0    16409    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       	   user_test    false    203           )          0    16398    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       	   user_test    false    201   m        :          0    16554    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       	   user_test    false    218   �       N           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public       	   user_test    false    206            O           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public       	   user_test    false    208            P           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 28, true);
          public       	   user_test    false    204            Q           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public       	   user_test    false    212            R           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);
          public       	   user_test    false    210            S           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public       	   user_test    false    214            T           0    0    block_app_block_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.block_app_block_id_seq', 364, true);
          public       	   user_test    false    219            U           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public       	   user_test    false    216            V           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 7, true);
          public       	   user_test    false    202            W           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 20, true);
          public       	   user_test    false    200            y           2606    16552    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         	   user_test    false    207            ~           2606    16479 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         	   user_test    false    209    209            �           2606    16442 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         	   user_test    false    209            {           2606    16432    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         	   user_test    false    207            t           2606    16470 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         	   user_test    false    205    205            v           2606    16424 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         	   user_test    false    205            �           2606    16460 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         	   user_test    false    213            �           2606    16494 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         	   user_test    false    213    213            �           2606    16450    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         	   user_test    false    211            �           2606    16468 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         	   user_test    false    215            �           2606    16508 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         	   user_test    false    215    215            �           2606    16546     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         	   user_test    false    211            �           2606    16572 $   block_app_block block_app_block_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.block_app_block
    ADD CONSTRAINT block_app_block_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.block_app_block DROP CONSTRAINT block_app_block_pkey;
       public         	   user_test    false    220            �           2606    16532 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         	   user_test    false    217            o           2606    16416 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         	   user_test    false    203    203            q           2606    16414 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         	   user_test    false    203            m           2606    16406 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         	   user_test    false    201            �           2606    16561 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         	   user_test    false    218            w           1259    16553    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         	   user_test    false    207            |           1259    16490 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         	   user_test    false    209                       1259    16491 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         	   user_test    false    209            r           1259    16476 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         	   user_test    false    205            �           1259    16506 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         	   user_test    false    213            �           1259    16505 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         	   user_test    false    213            �           1259    16520 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         	   user_test    false    215            �           1259    16519 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         	   user_test    false    215            �           1259    16547     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         	   user_test    false    211            �           1259    16543 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         	   user_test    false    217            �           1259    16544 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         	   user_test    false    217            �           1259    16563 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         	   user_test    false    218            �           1259    16562 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         	   user_test    false    218            �           2606    16485 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       	   user_test    false    209    205    2934            �           2606    16480 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       	   user_test    false    207    2939    209            �           2606    16471 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       	   user_test    false    2929    205    203            �           2606    16500 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       	   user_test    false    207    213    2939            �           2606    16495 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       	   user_test    false    213    211    2947            �           2606    16514 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       	   user_test    false    205    2934    215            �           2606    16509 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       	   user_test    false    215    211    2947            �           2606    16533 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       	   user_test    false    217    2929    203            �           2606    16538 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       	   user_test    false    217    211    2947           