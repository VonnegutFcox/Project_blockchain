PGDMP                         y         
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
   TABLE DATA                 public       	   user_test    false    207            1          0    16437    auth_group_permissions 
   TABLE DATA                 public       	   user_test    false    209            -          0    16419    auth_permission 
   TABLE DATA                 public       	   user_test    false    205            3          0    16445 	   auth_user 
   TABLE DATA                 public       	   user_test    false    211            5          0    16455    auth_user_groups 
   TABLE DATA                 public       	   user_test    false    213            7          0    16463    auth_user_user_permissions 
   TABLE DATA                 public       	   user_test    false    215            <          0    16566    block_app_block 
   TABLE DATA                 public       	   user_test    false    220            9          0    16523    django_admin_log 
   TABLE DATA                 public       	   user_test    false    217            +          0    16409    django_content_type 
   TABLE DATA                 public       	   user_test    false    203            )          0    16398    django_migrations 
   TABLE DATA                 public       	   user_test    false    201            :          0    16554    django_session 
   TABLE DATA                 public       	   user_test    false    218            N           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
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
       public       	   user_test    false    217    211    2947            /   
   x���          1   
   x���          -   {  x���Mk�@�ỿboi!����S)9%�&�5]�Ԫ�ђ��:ig�C�w��p��v���f�*�����C�6�})�����"O/�뭸3�b��"�c���yS�fsq���^ͺ���\�Z�F�0O�@��\�<��l�x7���ߩ���!vQ���lAj4�&{4� ��lߧ�>g�K�|���l{��'UіJ�!x����ЙŚ�1f!/��pZ��,�FE�ZV
t �~N��������&B!&�pKD��G%�"o�WE4�R*ׅ�0�Ӊ���Y �oر��Gv@o�k���l��o��������p�LD{���НI���!7�&��º2�ŗ�ѧ2}�۽'����Mh�b{w�ЕŒ�Q��4�_D�%F      3   �   x�]�K�@�὿b�Ee3���J�t���F4'�JC��Q-Z�oqxxͥ=^o��ܬН���${�]���F���F5�D�ݿgp���+�b�E61�"���8%h_v~��(vf����l����#J8>�[��Ǧe��,�¤U��tU�) U���g%�[�T�{���r�����T�{�(�U�z_�+B�      5   
   x���          7   
   x���          <      x���]�n;rv�_�;'Hl��M6yr� �![R I4�1���r,��`H��Uk��G�yD��9{�wq-vW�]���'����w������ݿ����r����z�տk�7������������_����O����?������FHS�\a�����>V�y4��k��j�5D��1�n�z�6cڍ�$�����ߍ��_�����������R�_�+�������7�̿)���������������������������5f��es��f�5K�0ӈ!�}���Ӱ�;䰖�6��*����/r���y�ȟ`j�wV�ښ/�<z��Cs�Q��G��J��Z)�G��D_�?�"�������Ϯ��t�hc�PB����?Ѭ��'���Wkqu)�������������_+������[[�i�$^�{\��ܻ�=����Ω�<�dk٫y��������o��?�}���o�������/�g��'�������7���?���O�r���'W��7�[I1�ZV�qb�L[]�X�7�8���jְ0[�`���*�=����2%��eV���O�ԉ<S����ai/A����g���T�b}|{��n���, �GlŻ�9H�S�.&-�Z}�:j,{y���U�l���4�8&���� ��, �G�0�\#W<ܔ6��6<  �x�e���N���8z�%�TCk� wwP���g��U�6�8rhO*!�Q�L�;sX�%�|��a��X`������u�f
����+�5T���Ъh]+���ZB��ʎ�eȨ�7�������"#�/��7p@X�ڱ�CD<��� A!��HR�����k
x�X]B*�Q�I�, ���.࠰>(��M�ȳɮ=�QRy�Ӱ�Cn�&]��Y�+��W���t��1�/�S��I�*��v0�B7�A �#*j,�$g���<�E�/�_,\��xpLҳ���k� W=�i�K�	����xЈ;�dƒ�~S�.g�d����q�ԣ��j��L3j��hÊ�:�J�	l�(�ED��y�z�K�w�L������B���{��tiET�U���e��t��(V�Lb.	6���.399@&O 6��!�rY:34J +>K����2Y�����)�� ��/�A,��2���0��^m�2&���F���,��^Ҍ`����
f4�G�~��]b9@&ϏHȈcY�SQ�	t�V<�R�4�%��G�]k[`ܺ�m���A氀�dN�����s��9JxfD��X|`���ql�6@;
D%��0�R��BX������d� ���E��� >q_�cw>���T3��
�{P�$�0*��[��Iy�`� n�ʳ����g\�@z�����՞��������8���/p�8>(���2g�f�п�gd�aR,n-� 	zHC��2���^?��u�Z��e�r�8>?�@Mn �bow����H�8�̮J���Դ�7h_JY
�ۗ�/r5�'���A5�0:����Ǒ:�u7��m�ƣ��
N7��_���モ�Z@�QFl�i7�&y.��ȁ:mPR:�� %u�	���{�����
�8Hr�1�zQP��vZAZ����t��� 9�s꿄�8���eb��g��#���`�
�Y'@k�l��g/-sФ�$L�_��p�8>?��5�L LH�a��[��� �u��2�%(R��qB5�e�֟z D�^����/{K}�'�4�e��f��O��8�$,|� 16��$}�Ӓ�Q=H$�m�Z���J�<�8�D���)t���/���LcvW��A�� 1�O(Q�� >x�;��
�Yc�LF �b����9D�k{�����z��ݿs�*c�����T|�����@Nc	@\f�^�.]F��6�_΅(�"�$��+x�x�hߎ�>��藼wY2A�E}�ߐ���g|2�8X����N����8H^M\I}����`�e�"�=R�C�Op72 �2c��?�
�%E���� q�A�p����:,恽W��T���GM!�E)����=� ��ۍg�����ᕃ �!0jh�)VR���qo0���1Z))5�
�Sʎ�4��%�c�|�w�8<H�W!BAƥ6�T�'3�`������8��-T�Rj� ��t:��[� ��#fEv_#�jfP8L�^s.H�l3��H��0+��-�Z7L�m���B�{*a���Tj�{��<�n�>&$���\� ���A`���Ըk��}�P�Q;H$�^[FV�ѪZ(�=�V	�V}�ڠ��D���B/u��h����e ���oQ�F�T����uQ��%#^�`�ҥQȀ������H�..�q�[}/Y'p��s��xn�T�����n�w/�`}�tj2�%�_�t���V��K��N���ͫK�Tg��2�W[��z�}o�ӱ�R�\!�J��>�P����-T�$f^�މ�A���x��w�|"��rC7��#�=W�J ����z殤L�,�Ab���<Z��!(hk���i4����.qS4�����qϝy�x�T"ų����F��F��x�^��#v�����*_��!��7�ږ����, �=�Jr𼽑<�&�e@	��ܺ�-�n{ΎEU�Y�d�H ��<U>�UHE/���dQ{O���ۨ��ے+r�t	ZZ[;� ������4HΈU�/Wdr��/��OU�JX�Y�S+HI9NЊ��5�tdU���k3���~�|���|�Ҙ�����fi�{[ V��^�N.�-����ٓ���R?�/�|4���ǚ�I3�x�c$��ʜ$��R��R���[miw|���~$ů�@:8V�j��6�wu_m��["�_S2��c#��#z�p��
���/��E�2��c��1zXp�r�Z���`�P3����Iiu�	}�u��M`�Z��@>8V�[V������6ª�)�ٮ���#P(���cs%��� +ixR�/�\������ e�N7�i��r�澥*dM�5v}���)}c#I���j��aW�P>8���J��=6d1 9E�Ye84%@`@tM�,o ��	�N��)�2�v��f=x~D�5�ee�_߾y+���˂�矄V��dPh$�i��T�/iT/�;e;xkvMW16K)~Kl�%+K^�Ć����W�M��u�9�� �������A�� qv��׎0�`��a�@��A	_v��]=Y���-bms{/ �Ϣ�&z9��燳�5��ju{pP̈�T'R+!\��C��T`,A�0���o��X�Ab��䉬�-��ٝ�^9�N�dB�y�(y4�`9��ߟ��e�W/h�2�e{����g �� ��q$z[	�M�M�N/H�:y �eǸ싢����������m���}�:��� Y�B������
����U���J�>��d� �`�Z��?`�*0!��m�h�&��"���R-A�p|Y��Z?@��ۛs���$F�6I$2���K����qM1M�$hL�M$��k�̓ū@����9�M���,��=��VՅȐ�&��;okv)e��wЏ/i4���i?@�o���	��2���Xr�k�.۬�Y:�Ͱ�S�Z`�rU��4X�eA����zܖ "v{(��vb���Z�}2�t�ڈ�
]����3��\.��d���Jbi�`��� yb&[�(�A���	� ��,Dt�,�r٨ �o�2'�={LR�ޭ�{�mY��֐SY%��R+<N1H���Td�sw�Б��=ل�8�|�Td�����^EbZU;� �׺v���J{�'�Z��9?H�� �F6�����C�!A��gD�����ͦ�	���?�.���w|� q~0	"	�m�'�Vo+�>�l��&, :!�R-�s�E�D�G�.����9    ���� ��L��F������V�O;�6$�B���5@��-$w��A��^RVaa�"����-��W���"rh�`l;��'��sV/�������U\����8v�~iY�N�16��V��֞�D�����Hwq�$��ˤ+Ve��l�#�`#���.�,`�X���<S,H@�l� +}	��[� ����5��w@�:tמ��Qe��u
�N
�e[�١���e,x}���^.�.��A����4,�GY�{���s�w�O����G�o��={,j`K��d���A��l�x?�+�R�
l��t�M�%ֶC4@�ca	���y����d��U�A���[9�}�1"�(�hў��&6lZ��\%5��Y0'@�}Y�\��)�Ӄ��ٍ�����i ��S�	&�֬m���lh- �evvC�Y�[�|�T�$N��Sz�,���F�h�	��%��Ywo��-�	���)%�� ��i�$No/h�@��x���q�		-9���� 	x����'7�e�Ϻ�t��$No/h-=̴���m�6 V��~v�5 &K�-�3D�FW���q.�,��-k=H�^?����շ(��<�$�O�܁LS��[��Ķ���l���%_���U6Z�}�3�9HC5lt�Zc�eJ��Zn�i�{�7��b�%uz���Ĕ�W]փ��-��[��ٮ1n�T9������ȱ���H�ɳ�� �V��/t:^������!Huӝ! �@&�"�;�ʣ����Ԣ{�c���B�_�wۉ�Ab{�YX�k��Uja��wj�����,��n�<w�I��˷/p��$~fۣ*��v�,�0�̨�K`��ƞ����6�ݫGD����&]75���EbQ��.�vi<1@��m!,��:+;���A% l������d.���@1�
�2��l�Z�����q���v�ց^�A�hрOe�i|���{���bK?+�h+hPH�hb�ђ<�\��J3�A���JLIzm`_V���p����	-*P 
��oO��H��Y�� �aiF���m�e2FJ����h����4~��A]��x*(oMr�k򗖎����slY 14(�����˽p��g�A����%C���#� �f�9i�6�Б� 1Ux�9�����'�图tP_o����"��[�����E!b^zoU!�l�iY�5��u�o%+��%����j�9
 	�kc�P��.�vI� ��6�ʀŁ�ciڧ;�]`<+x�%s{f $H�)�(�?��%3e�Qˀ�N8�J�ک�����
��=F8������*	b�@�2/��BgȔ����u��l�)�HK�|6���z��!{�-�l��|�&���2�^O�T���.zF�h�g���T�j�"��.���SWp �5�%��P�ț#Vh����#���/v����b/9 ;'쭕(fR��sv��2�!{/Zzک����1����+T� W��;����=� � �S0������Y[<VC�ZՉ��ě��=�l)�=��f�	Nd@�� ���GZ50�o��rc<^C�������,�d��)�jKa�1�R�ЌЃ������ f/�Mq��^�Y��l�^�������X<���^`=<��x��
O~�����Pɺ*���>ȵ]?��V?+xŕ! F/�:�&��ծ�&��fȧ.ё��b�D��M����D������%���L��{���@���j{̺�"��>���:ց\������qR����qp0�5L��d-l�݊�D;$Al`e��%�s.�4X֏(	�����%Vp��/�$�qL��ž��D_x�+ ��������j�>��&�SX���I�]?��q�^ǡ,�f;���L4W�SR��ɫ�'��h�o�-�Kp�����Y>a׏K���rhԞE@�HC	��-Ж$�jA �&6�m�d$ȅ	!��������� �!{=��6�/�_�Jut�%"�"fA��YO�k(`�*�j�� ��n�C���F�1��t��(2?�|��@`�����[�������薰��
$6O���%��>1��u�^ס�+���U����j�Y����V� m���� v�X\��K6�]��퐽�tGu	��؅�V�SY�o@8"xu�RZ˳�e.e"O�L��K����wHD��W)ЖS+���!��f�(-��;Eg]��2�^��S�qhj�`��Cz���5�r���R�b���5M��k�bl>�@��5f����|�z��.�D{5n���q����¢�GT#{JZ�!:���{#�C���C1c�_Vp��8�!{��xJaia�De�-K�(�F+�[��G/���ۡt�ԉ�Tr�-�~�E�2�;�C�r�1ز�P�	�l�$ ��H�;xC%I;� ����3�K�z�Vݻ��Y�Q��.Tb�	����,�����[������$�rF��d�i�]�|܇��}Hz����H��5	j),0V��X�bg�|�,P@����	�M�����Ӗc?d��P��](*S'�5Yw$ �B�;��n$�&	���+�,����C�
��]t0��j�ncQ�#���h~9��>�� �C	��m��m�����>W`�M����D�n�!A@FB ��2Zo%Kn@j0���Si����M�q�l8��ǁ����s-��@nYS����(��*:j�!��S)���qg���ܾ 9D�Z�&�ޡ��@��Z��A�)�6�O,��:���s��
�Vp��8"{=�:k�r�;�T� �nx��5o	ZK�2Ƭ{B���d�hO����۬��Oǰ�d=L0檕����˹e段RV�\��Ʀa�,XE��R�:�uC�x\��u!�@���dӧ��8�]󂪗R����gw	mJ9�����]ٵ{�"{;������bYA�8;�=�e"�v�A�CB��iĦ(8�n!���
�2&"{F߼i��n`����Y��gЛP��\�m͐�e�݅�b%$W��h�=�1"�׈H�M�ծ��)��i�O�?�lD�FF�.Y!���;�3��~�}������x���u"JB��I/��i[{I��Y%=.#�L;��������� `K_Vp�� +"{ۭ���K�K��+��*6�Kۑ�i����V�+g����ӞW�:/"�?���
'(�C�!a�5j3$!o`C�ټ�\�����5i�X���.7�cF�?fD��%m�e�g��HF1��x�D��-�6�d�kx��Jo�ˑ\�
<U0���ӂ�֦�|Z��d���d�u�(�k�?�`u�9Xȗ�fǎH����V6�t�]ߎ���tr�ox�_�D�����ϮP�3��"Ae���op����v0l�܃����]c. s
>��+�Fn�"���gVU�n�>_x��fǐH_C"Ro5f*۰�G�ix�&<$�Qw+)�8���v����E'���=+xϮ�@�am�j��E3�@]I�ϲ����2�!�vp'��º}6�)�M��}�s��s�Lf)���N�$(�P�L�-�����N����U�x,�m�kM�qU�i�X����,n,H�Z��`m�	��Jw���V�����^tl���UB*Z-��&<X�x�a����bg�$HO�c�ր�$(��D��B��*�!r.Ndxp 𖖀QEY]?�9+Ұ}�� �[1����>9��ǗH__")��ƹ.s6�`3	x��b��%^?���2�6ڞ�iº�o� �ƃcL��1Q�>J�F8�3�	��(x,pYB�!��x:)��,;E�NIU�"�������8��L���3]��Ǳ�����ś(h�+{�v΁ױ�'|��'�܍�cM�姏{�#�xWV8s�*>Ͳ@Yf���P����g�Zw��I�|ԍ��	6�x��M���3��� ��@�k�8�>[����&;��v�,���˥���kNd�	�6¶M�!    ��(-�+
���H[��dD I+G:� ���-�B.���N��;��.=姑�n��Xs
"J��O_��Q��&
�\X��?O~�z3o<�D�6ot����]�c`��J7I�{V��,xg����1�"�F/�Nxfw�!<"}��X|�X��]I���z:�B��k	r)2g
��F�U6]�߾��>������6v����6��m���4�J�5v+D)=��G�E|��MX�x���%}�	�ъu�Ek�<H}q�������~)�f��B��������Sǻ��x,����.����"��و&����:��Hf�fZ����E`����\?�;&K��,A8((�&t�h��w|��n��ؘс\{�0���� ��8�~�x�}��1)ҷ�c��y��&�xs�A}�S1�u��bL��b�/�|�����RT�s)5�[�:��GB��b}EN��qFsZ�ZN2��_V.W��"��)�slq��P�g5N%��g!����"��^l���-��?ص�����)ҷ����6d>��"�,�Uh3AL�Q��7��&B{-|,�%�L]u���_��_fǨH_���8Jw�ƕ�iؼ�&`[�]����^Y��cM9G�`��Wf�eD;NE��8Ph����	r�ƘA�S:�O���d~�+�Ү�J��*��;�cU��U��k)"��A$�� ty[@H��Z�m�3�}#H"�~Ή���۳��W���/$<hE�Q'�I���4�g#��������%�L�NNA�7v/{�cV��Y�G6�V
�4�$�b�g��<,�;'gT$%X����/v�_F��V��[���HD�ҥ��$����H,*���KGbS�.c�|��@c?����^<vE��A +�Pv�/���6Ro�R��X[w�񛠭���.�Vp�������TB� =g�Ցoj2.�"�vf"�E�1zH�0�����/+�<�/�"}�ڔ�i���CL����D|"��|��}��`+��� �M������x���8�{��I�`%�'�V�]čLznض�bXTm�h�xܪK΀����<�ǲHߚ���Mm�:y5��p��e|l�J�ަ�G_�t/�y)�i�s�����EǳH����Ti��04�Ohc�w�-���ؾ@�@�8�h�J-�4�����x��L~M�rTf��j�;����̔�#SBX$�T�F��)მFv���EǵH_�"�h�5k�+o��Sb��ss�{��p�Ho�l��j��E�~��-�׶DG"�%�%'��,�e/�Z�� 79�.ϾG�R��U	���w���ۡ��s1ή<���5RP�nn�3�VkV��*z-!T*�Ί��*ޯ7=�E���j�u���#�f��t3�l�m?󮣱�Hk�M!�A�>09^�@�ǹH�{��*9?�Cj��.<����x~�T:2�Ã���d���
Ż�/+�͋�u���E�f�aնHV��mX_<�x�[�ư��7N�V�S���~ɦ׫5�w���Ex���I�p>,��b��>Z����ΟZd)�vv�A������1/�׼��r�R�XP�t���� ��(v�B�%��R����M���j��}��k�{���E�s� �=�֬g�_' I�C���@�%�7羀3Ƅ���e����}���EP�Й�C���Yi���� 2�5GJD��zen�3e�R�t���gvr���/��}� 5C����H���hƂk�rv�ϳ5Ny�{Bx�����˖�r���/�
�Jmp�ߒ����=�ȹp*�VߜB ���C�ZQe����K9�E��q4���rV| �=�Գ��=`u�#��q��Ŗ��n�����h�O���k_�
2Z ��T3$v�C	F`cW�L�]>�O70S(�/��v���"}틠$�xxꮱ���6ӔQ�'�uh��Q!~�5�WS�9r�Q>'���uv��g��w~�'㰨�N'�U6���{t�[�d8��[��
���߾��:;9�9�V���2�;�膬<ע�WS�V5WLl�]Jiz��Cn_X��q9L����M�)/[���I���s"fu��� �О�nO�/h�*��>��S�80�{ّ��`k,���=�c���";5<f�8[9��p^�l,<�>?N#O�/Wk�������.ih�^���?� ]�<�P	��&��lE~�:*���f��_�����=e`�;���0��ǉ��em��`�YV�Y\��N5|��۶�r���ǿ�]fN��Q���7��C,"l�(ύ�k� �� ����/�(^V�r����/rsX�A�#L�z�~�ǤAW��
���^裕Nş��C�>�2��eǿH_���H������Z���Vy�����A8�9�Q�ғ,�`�"��m��"=�E�g)^��&b�t����q7H��w"{���V�,�e�<�o�����"};�'�z�%���}ե� 7�O��f�C%���6��1@?�V֧Sd��]^t���ǿ�:-�ra�o����s�X���*�`,ާ�Q����tom�������"}��� 8O�c��q�g�m3�kp�"�ձ��q���m?	��s�|�>7F����E��d��C",>#g�v��
�� \�2ԋ/�[l�)�y����8/
s��LyO~�VP-}N�[�[6�F���l��F��]	��w����C
����>^r��u`R�rRR.��b����!uVvf�J�hƁ�aL�6\���T?XE����88L��������f�2t�͉�$�e	-:�%"!w��`N,u��X(�����W�&}���P�e<�%��e,ބ���a�~X��ӳ��e%������gח�� �{�eӓB7��ڻ#*t�˕yu��a5�?rj�-OS��L�6?�E����5��#�,x���q���_h�3o�6��6;�o��,�����u�\9�E��^�0�e����b�82���.u��|`��K��T��V%��Q�X�|W��"}��F�{��К�!�%���Rt��`�;�p���ܘ����K.�]�,ǿH_��9�����j4��4�dMEҡ��,�S�[���ҧQ�~�.ǿH_�"��,8���������6v���.3�h&�ɻ�Vl�a�>��[6�=J����E���
vJC��1���	K��0�CNtG?�$ݵ|�'V���EǿH_���K;�#(�x�7�%	���(��?��c�p��8�G�Z����q9�E���q�=MC�7�����g\F*YX��@���#�e[ kjʑ�_������_��^��kO4������;�g�m	|"�����f��mW�-F�r�mS9�E��q�9]�0 G�����3!Ԣ͜*+�@��3$ba�	��
��S��_��QZa��� �lw��d�p�WV�9s�����92�)ga՗H�~r����/�� 	���G�I�%�Y���%aKڞy�ۜ�i�z�~�8}����/���¦�Ł�s��89�Dp,.�1@���'q�{:t��6ǹY�e�Y9�E��r������K�Mo('�� Z�=��h�2mM���7��z��"}����X���'��)���hOD�8����vN^���i-���A�\��.ǿH_�"�v�"�(e�S�v��\Uhg\����	Gjhu��@5:�}N��GB��/�׿�=��hj��xF~Aj�<�#!�͠�c���8]�H��D�m�V9�E���Ɋ}�\Iz�gÛe�cȗ3�d6�^D{��l�1��j�˾��m,�e/���_�o�N��� ^�AC�β�gj5d�e_�4u��=[��1�W�_΋�m^t���ǿH�1�NױI2B�X��{�<+�*4��dhPD�{��O�~Y���9�E�VuX�<���Łq��o��8�Zl��G[5ڧ����B����#ǿH^�	-��g�9V!���I�
m��8���sf#���M    /�R�D���r������X���qs�v2��:{��GƔ% �%1h�ˤFV��_�A��Z���zV��<�VH0_�r�b��M�T�cܩbӳ�+d��E���L6�q���
n���/����� ��y�NgPH��@��s� ��UyC{,�zL�F�lV�u$s�닎�����Eʌ��!*��:�pKœ7���;�m�!���YFȐ>����rͯ�"y��x���7_Ҧ�۸��W�ϥ	��� �����,Ҏ�>���X�]�$��_$�QM@咱�I�n��Xmoи�'�35GE6����X��zS��rŬ�"y�����"�x6��hm;B6�P6Y#�.��[����fϯ�+�ܧ/ǿH~FN�mҥ��*�T���-�mdU�$�G��#��c���e���������:� �sBA
'� �9u4�,�1j�ǳRjs[MUv #����$L~'�!F�@�3�=�*f�`'gym�?9�R4�f�@���*�]�]�v�s�:� ���4B��G���9�~g�Q��]6�e4\�[V�i����>}9L��ww����S�ˍ����3᥏�fw:)4���Ʈ�_��p�I���~�x��u,iN�aKJ�e���@�b���΁D��]�2b��{��İ���/��ro��u��tO�f�No2�v���&2]�V���8��A��Tؙ��h�w���<�E��mV�`?U�0�ڱ�2���4��70-@�
�3��Y�M֗8�~fw����/�pYO�ql���(��F�l!��Z�'hiV�0pF�&��?*C��ۘ|���ǿh�_e���FP����wZ��q̂,;��b {/Ӿp��gvǿ�Nћ晃�2S��i���ծe���,L�f�RBy��ٿpS�ˈv����/z(]�{C(>�Ō_��'Zlz�<~�<(�������/�@�o+�]�|���U'<��BK�9vʘaԎW���4���~o�+~�56�GB����
n�e�"�qW�Svp�9�jC�1i�Oj%�Ɔ@�`������Y׳�v}������_DY<b ��M�P�]�s�9,�@�\��O�ʫ�(��
nk��_$�QU`;�4_Na��`�H����OC;>��� �k�,�^
~�~]���S4ď�|�&j��ݝ����Ѕ7]��T�9w4v|о�y�L(�r�f{���k���9L�:0����*&4?���Wb)¤��p��
X���ؼ�j��<�������ǁI^��vr�{�*�8R)kWx�!���3=���ȤI[�^��r�+A���L����%����N� �3c�	Y<����R�2X���`�/+��&ǿH~��&��9 s}���4}�4��_�<�9�U$�;M����
.O��_$�QƦ��*���@ҔQ ��_��t;�j�[S ǯ�?�i��4 ǿH^��,�9�Z;(���Z�HH��`a,H!z�;+���T�����s��_$�Q�=c-#����q(�
}�n�I��Ƌ��:TZ�s��}�ۈv����/�����8�\��&�pT���;q��(�K�S�F�	��<�-�ּ����E{N�+����)B1��I�[!z�Z{J+Xa_��� i��V�Wk�"y��V���}��`$�ʚ-r�X� �Xۈ�RKj��%`tf�"�	���M�5�f��_$�Q�.�{%�� ��rh�ClUNnPm��^��QI��/��n���"y��:G�q�ǔh����+�ӈ�z��QP�R�B�&W���}�=p�Y��/��":��1*"n�������KYp
^W�/У�K�m�[�F�������Nr����/�O�:�����l�����B���2g��Cб�������;)��>u<�E��m�i=�#��!3G-�n�@F���y��@����j5d�Y�fw�+A����E��sW��oW�ꖄmh�5`�-r*z�C�s���?�#[ޭ����-Ta��]<8�E��R^�p�aCYx:��r	�sD�l����.�㜿�a1����3�����_� ��Wo�ix��af!TZf6XF�^q��G���dXۢ��*n�$��_$����� �u�Fk��CH;� @����q�!iD���������y��/�׿���j[�GoXG�e�g"`����j�e MZ�'7�YJ+P_X����_$���)���+�&E�.-
%��|F�98=�KLό�j��BO����'�"yw �"Qkf7k��b�$p8�@dۨ:-f��-�����h���ב+�]�|����/��;���`'o�=؅�c+de��n-��IiE0U��^-���������r����/�ٿ���2�.Z� h� ��I�\���;,$��ٷ�>�>�E����Y����&@�ä��4d���m$j&��BYPi`�UR�K6�ޟ|�����I��@w����@��/��7e���Í���Q��܏���#���\�ŢǿH�����u �'t�u�J��2/a����=,����1������y�u���/�׿�����|W<ץc�5H��=�u1J%T�+Wg�s1H*�ч�\����_$�K@A2ݚJ�;���a1���q`PP��g�{\��3�[b�T��W+�<�K���'��f��Ȁ��ī���Idn��Fo5��6>��V��ׄ�����z���"y���4���#G��o	��>�H�!�-�f�-H�6:��B���"���ǿH�\�X5�"X&}{i[� ��IC�#��N�1-��º���˿�e��q=�E���4v�::'���+ȩ�@}�tS�z.���EALC��qV��{����{��2���h�22;���]g#� � {��Q;-s��A?*��z���"y��@�Bq A{������]w�2�^�m�-�P�c|!��D���5Lַ'W:�� i6�4��[���v+A�F�Į&�ۋm�B�U8+�"کΑ�:g��zî�>J9�Y�~��@���M�9�_�Q�J?4�8}T�s�Y�q`��*�Q�z�fW����8U�V�!�4'�7�3X�)��m�����˕�z��u`z����!��=���u�W٣oKP� f(�_�L�������gvgF��3�fY<�P�#���x�/�|HDR%��#=�v:mh�� �����z����/�'� k�U��Nl��:XF��j�@l��%`����N^j��1����_\]9���v��6����ѱ$l�2--���T2�+�Q� �Ի*S����ml��g��V��#xsL�J/�?�68�>���D�U�*��y8\���"=�E���Ҫ��A�!�Ǜߠ��uG�v����[��b�TΩ�������	z��D~��L S������rN�1;bU���FQ,Vh�Q>ϋ��p�����/�׿��dԦ@�d�Z
�G����t�mʾ��󱇘�W�P�_X�m78=�E����ǡxˀ�� )#Py�\��3*j���qy�ӗuW>\���}8z��D~�`xt�-��- @*����|�0��b}Q��e�s*��n��<�����2_�"���>�f�+���t�5H��b�BG��2� ל�Y_V�n2���W��.!A+��Kr������LɴY( �Ԁ�h���rV�2&&yOmհ�(��/4Me�`%���yP�1V��N-�l�GA2(�t�8k��2���$���N�3�m�)b��b���Ӊ����OǠm�z�	A�.�����Rz��u`*]<�@Jy^����	�Z�sI5�����v�]4������
���A�׿������Ŀ��=8rh4�g��	t	�{y�oOzP8-�W�ǿH�� �M@/�"w��ɀ�g�u�=Y�س�]�E�{Qj}	yV�A|Y��L=�E��9^.2,�& �G�_*P�E`�ik\�-e���皱4x�R?N~�}�����E	m0DA.�<�A5�,܎�� �	  )X��B0��A6#�����17�+�\��ǿH�Sۆ�1d!Gzac�&2g�B��2*s�C@2<g,|��kDZb}[�e'2=�E���B"���{�h4��j���(�	�gV����Ymu
]�����Ez����/Z�9b;����b#S~�(�R�:~7��Ye�h4��Iꣾ(����e��/�׿����V�/�9�
d+�E�Lo�I�zW��Dv��i�؆�1���=��.�8�E���G`����OPd�7��Z���0+py� f�� @&��C��!����Y�r9���|��<�`��t3͖�����`���\
��)�ed�P]]��[��_�3�z��qF)y,�l6tO�M9#ɖ¡�
Z��FzeeK��C2�P��zW��"y���q�Ӥ��V��̩�L���е)�9t8�b--�w�cj�_M��H>�E�����e�x�rđ�U����_��D�̪���Gu�����Ӗ��w8ǿH^�"@3�ҿN�� ��t5��c$_ա��A�N</�p,O|�/+���ǿHޟAȊ-�J���8Y،�����m�"�	�K ߛ�OJbc�\���_$��&�"����P١vz�Fc-gb��BΒ�J4� ��-d~��̎��:����YOF 4�LjOY�ӖiF��`��⎝�m�X[H^��B�P�@��{��3��*�����G���&}�Y�F���[9�s8;���k|b��Vl�������gX��/���m��uhCO�q0�F0�g���|g`���[g����ۧ�ǿ(�L��8�2��q�!{��R���1ieDr~����;"A?��eݮR��__�"Z���G�ˇvO�c�eqb�1f��p��-�*/�YKY�/_xQ���ǿ(��Eӽ���A~�Gz�vv䦅uA/έ�+d�W�i�	����O���d+=�E����j]@���i�]X�C���x�H�s�r��'��E��i�u�����/���09�X�IO�A� �־;�$�}��5�Q6by�q!QY�>��� �R��<�E��/�{�\	����!���r8P��/)�@�}�J/g��
1sV�}��p����׿�E@�TAW=����Ǆ/��n��z�W%xQ,W� Ph�/+��hǿ(����6��@吘��y���h�YQ%�0},ξ:}A)H�l����l�N���Y�{Hch�$[�CԊ���t����X,�HF3��S�g���k:V��uv��o��?�}���o�������/�g��'�������7���?���?�?+x5�5���������
9a�n�,S� 2�K����^��a�Y*�f���ù��ǿ(�����j�� z��fΈ���*����LThߠH_D�]��w��<����M�`p� �(��E���^s�����ֽ��"�f�V��[������$����8�p8@7A ��H�b���H%C�V�h���m�h��O��UJq��^,X�ڤ���-�]w	;� �8.�iBfz� ��("�|����u/�cxboSn����xu��eqOH��96�����m�� ��e,�#����xJM���8bWV��'��dG���e�^/  ���]d���y�3�O��o� �����S�`?	�"�gy�U����ˋeJ�ݰ�[�,�X�v����:K��9h�xLq�����Lt�ʦ7YNI�F�ZţO�-q����s"Ku��i��.ľ������?@���Io3]\�Bgy�h�ق���s �@8g������e�p��>l�ML�EA�'F�.�=u@����{�"̬�f1��әM��:��y{6W�!B�����������݅pK?.\����%gx^�!~�>���X��1w6����Cg�(�s��[H�^�7yҩ}L?v�G2����خ���:��Y̋�Lo��Y�� C5d���̤��ѻ���ܥ�Ϯm|.��N6��$�}#O���k�;	7����A�jC��~����ב�\Y������eA<;'�<�#dB���!LYܖi*�.��.��������rw!�0p}o������3^v[]e�@Y��X�����Z�M��5�5���z!�K�\��ϔ�>S
�9H=8��k'S����K89�9���p&�`��W ���<-�L����$V��i��X��}4(�a�>��uA
��2{mm#�m췼F�2k���کӷ�k��q@`���9v�y0��ND�
1F����a���eFB
��7�MՏHn�h�?n��$�s���� Ν�-�Q{F��*5������п�y-��n@�A0Kg�(���%+�˃ڳ�h���#������?��UTgƲ�3���H�a�-����?�,l��A�ړ��2=	���F�s�&�K5�^�;���$>��V�,����`�e$J�$K��Uj��{@�
����|9����������v+      9   
   x���          +   �   x���v
Q���W((M��L�K�J�KϏO��+I�+�/�,HUs�	uV�0�QPOL���S2r�Ӂ
�*�5��<I3�dNiIȘ�Ԣ������<22F2(�(���3L��(-N-"�S�V�H�X�O��f@�S��6�&�$s�����Ăud ����      )     x���;o�0�w�
mn�����N2(R�I���(l)Q�� ��%��Q� D�;�������叛bsu�h�[g����n*�j[�[�tů��~^^��bY��7M��Z�-�  �mlo�K{� ���5�kWp��'���,6�!��G=��sI�Qq	'Ҷ��<Za!	�9(r�B��*zv*��?K�Jo�SlJ%�,�MO���yJ�鸺s�R彷�S��j
�����z���M���ѵ����2�|�+���MP�	���dA�Z?*g����Y	8JȊ�K�	CSk���	�4@��䘞�}���'��h@V�!��1��O������|��L�!�YL�������GR�PL�Yn�'�J��nu�C���&Tm�NW��q���g��v�\�) c�U�J@�g] HG
 8(����tJq���Pm�Qm����94�}���p<� :��Άw�/���~�y)q΋+9%4�Ճi��:_�Q�m���5kH�Ō�,gx��YO�h�P�"��䚲�t@/� 4�A      :   2  x�ϹR�@  �>_A���a� V�#$!n���a�o�׫ի�y��2O�jưȢmL�*��>����(��ߚG��q;esUJR�f�1,��h��%	�N���Z0�읙(�>�3����d�A�JKj���	���R���0 ����C0>��&pg{q��.�8p�G>��'Vǎs����?����m�����V�Vy�M���'��6��R",��,n��C�IJ���eP !7d	{�|؏��?����+{F���3g�MU?���O��0,d � �yIF�����7��_?6��/�nn�      l    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
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
   TABLE DATA                 public       	   user_test    false    207   �
       1          0    16437    auth_group_permissions 
   TABLE DATA                 public       	   user_test    false    209   �
       -          0    16419    auth_permission 
   TABLE DATA                 public       	   user_test    false    205   �
       3          0    16445 	   auth_user 
   TABLE DATA                 public       	   user_test    false    211   e       5          0    16455    auth_user_groups 
   TABLE DATA                 public       	   user_test    false    213   ?       7          0    16463    auth_user_user_permissions 
   TABLE DATA                 public       	   user_test    false    215   Y       <          0    16566    block_app_block 
   TABLE DATA                 public       	   user_test    false    220   s       9          0    16523    django_admin_log 
   TABLE DATA                 public       	   user_test    false    217   b       +          0    16409    django_content_type 
   TABLE DATA                 public       	   user_test    false    203   |       )          0    16398    django_migrations 
   TABLE DATA                 public       	   user_test    false    201   4       :          0    16554    django_session 
   TABLE DATA                 public       	   user_test    false    218   a
       N           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
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