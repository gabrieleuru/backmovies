PGDMP                      }            notes    17.4    17.4 �    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            Z           1262    27315    notes    DATABASE     x   CREATE DATABASE notes WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE notes;
                     postgres    false                        2615    27316    security    SCHEMA        CREATE SCHEMA security;
    DROP SCHEMA security;
                     postgres    false            �            1259    27371 
   categories    TABLE     s   CREATE TABLE public.categories (
    id_category integer NOT NULL,
    category character varying(255) NOT NULL
);
    DROP TABLE public.categories;
       public         heap r       postgres    false            �            1259    27374    categories_id_category_seq    SEQUENCE     �   CREATE SEQUENCE public.categories_id_category_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.categories_id_category_seq;
       public               postgres    false    218            [           0    0    categories_id_category_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.categories_id_category_seq OWNED BY public.categories.id_category;
          public               postgres    false    219            �            1259    27436    person    TABLE     �   CREATE TABLE public.person (
    id_person integer NOT NULL,
    name character varying(255) NOT NULL,
    last_name character varying(255) NOT NULL,
    birth_date date
);
    DROP TABLE public.person;
       public         heap r       postgres    false            �            1259    27441    person_id_person_seq    SEQUENCE     }   CREATE SEQUENCE public.person_id_person_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.person_id_person_seq;
       public               postgres    false    220            \           0    0    person_id_person_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.person_id_person_seq OWNED BY public.person.id_person;
          public               postgres    false    221            �            1259    27496    audit    TABLE     �   CREATE TABLE security.audit (
    id_audit bigint NOT NULL,
    fk_id_user integer NOT NULL,
    method character varying(255),
    fk_id_profile integer,
    date timestamp without time zone
);
    DROP TABLE security.audit;
       security         heap r       postgres    false    6            �            1259    27499    audit_id_audit_seq    SEQUENCE     }   CREATE SEQUENCE security.audit_id_audit_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE security.audit_id_audit_seq;
       security               postgres    false    6    222            ]           0    0    audit_id_audit_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE security.audit_id_audit_seq OWNED BY security.audit.id_audit;
          security               postgres    false    223            �            1259    27500    menu    TABLE     �   CREATE TABLE security.menu (
    id_menu integer NOT NULL,
    menu character varying(255) NOT NULL,
    fk_id_module integer NOT NULL
);
    DROP TABLE security.menu;
       security         heap r       postgres    false    6            �            1259    27503    menu_fk_id_module_seq    SEQUENCE     �   CREATE SEQUENCE security.menu_fk_id_module_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE security.menu_fk_id_module_seq;
       security               postgres    false    6    224            ^           0    0    menu_fk_id_module_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE security.menu_fk_id_module_seq OWNED BY security.menu.fk_id_module;
          security               postgres    false    225            �            1259    27504    menu_id_menu_seq    SEQUENCE     �   CREATE SEQUENCE security.menu_id_menu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE security.menu_id_menu_seq;
       security               postgres    false    224    6            _           0    0    menu_id_menu_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE security.menu_id_menu_seq OWNED BY security.menu.id_menu;
          security               postgres    false    226            �            1259    27505    method    TABLE     �   CREATE TABLE security.method (
    id_method integer NOT NULL,
    method character varying(255) NOT NULL,
    fk_id_object integer NOT NULL
);
    DROP TABLE security.method;
       security         heap r       postgres    false    6            �            1259    27508    method_fk_id_object_seq    SEQUENCE     �   CREATE SEQUENCE security.method_fk_id_object_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE security.method_fk_id_object_seq;
       security               postgres    false    227    6            `           0    0    method_fk_id_object_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE security.method_fk_id_object_seq OWNED BY security.method.fk_id_object;
          security               postgres    false    228            �            1259    27509    method_id_method_seq    SEQUENCE     �   CREATE SEQUENCE security.method_id_method_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE security.method_id_method_seq;
       security               postgres    false    6    227            a           0    0    method_id_method_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE security.method_id_method_seq OWNED BY security.method.id_method;
          security               postgres    false    229            �            1259    27510    module    TABLE     m   CREATE TABLE security.module (
    id_module integer NOT NULL,
    module character varying(255) NOT NULL
);
    DROP TABLE security.module;
       security         heap r       postgres    false    6            �            1259    27513    module_id_module_seq    SEQUENCE     �   CREATE SEQUENCE security.module_id_module_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE security.module_id_module_seq;
       security               postgres    false    230    6            b           0    0    module_id_module_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE security.module_id_module_seq OWNED BY security.module.id_module;
          security               postgres    false    231            �            1259    27514    object    TABLE     �   CREATE TABLE security.object (
    id_object integer NOT NULL,
    object character varying(255) NOT NULL,
    fk_id_module integer NOT NULL
);
    DROP TABLE security.object;
       security         heap r       postgres    false    6            �            1259    27517    object_fk_id_module_seq    SEQUENCE     �   CREATE SEQUENCE security.object_fk_id_module_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE security.object_fk_id_module_seq;
       security               postgres    false    232    6            c           0    0    object_fk_id_module_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE security.object_fk_id_module_seq OWNED BY security.object.fk_id_module;
          security               postgres    false    233            �            1259    27518    object_id_object_seq    SEQUENCE     �   CREATE SEQUENCE security.object_id_object_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE security.object_id_object_seq;
       security               postgres    false    6    232            d           0    0    object_id_object_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE security.object_id_object_seq OWNED BY security.object.id_object;
          security               postgres    false    234            �            1259    27519    permission_menu    TABLE     �   CREATE TABLE security.permission_menu (
    id_permission_method integer NOT NULL,
    fk_id_profile integer NOT NULL,
    fk_id_menu integer NOT NULL
);
 %   DROP TABLE security.permission_menu;
       security         heap r       postgres    false    6            �            1259    27522    permission_menu_fk_id_menu_seq    SEQUENCE     �   CREATE SEQUENCE security.permission_menu_fk_id_menu_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE security.permission_menu_fk_id_menu_seq;
       security               postgres    false    6    235            e           0    0    permission_menu_fk_id_menu_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE security.permission_menu_fk_id_menu_seq OWNED BY security.permission_menu.fk_id_menu;
          security               postgres    false    236            �            1259    27523 (   permission_menu_id_permission_method_seq    SEQUENCE     �   CREATE SEQUENCE security.permission_menu_id_permission_method_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE security.permission_menu_id_permission_method_seq;
       security               postgres    false    235    6            f           0    0 (   permission_menu_id_permission_method_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE security.permission_menu_id_permission_method_seq OWNED BY security.permission_menu.id_permission_method;
          security               postgres    false    237            �            1259    27524    permission_method    TABLE     �   CREATE TABLE security.permission_method (
    id_permission_method integer NOT NULL,
    fk_id_profile integer NOT NULL,
    fk_id_method integer NOT NULL
);
 '   DROP TABLE security.permission_method;
       security         heap r       postgres    false    6            �            1259    27527 "   permission_method_fk_id_method_seq    SEQUENCE     �   CREATE SEQUENCE security.permission_method_fk_id_method_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE security.permission_method_fk_id_method_seq;
       security               postgres    false    6    238            g           0    0 "   permission_method_fk_id_method_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE security.permission_method_fk_id_method_seq OWNED BY security.permission_method.fk_id_method;
          security               postgres    false    239            �            1259    27528 *   permission_method_id_permission_method_seq    SEQUENCE     �   CREATE SEQUENCE security.permission_method_id_permission_method_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE security.permission_method_id_permission_method_seq;
       security               postgres    false    238    6            h           0    0 *   permission_method_id_permission_method_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE security.permission_method_id_permission_method_seq OWNED BY security.permission_method.id_permission_method;
          security               postgres    false    240            �            1259    27529    profile    TABLE     p   CREATE TABLE security.profile (
    id_profile integer NOT NULL,
    profile character varying(255) NOT NULL
);
    DROP TABLE security.profile;
       security         heap r       postgres    false    6            �            1259    27532    profile_id_profile_seq    SEQUENCE     �   CREATE SEQUENCE security.profile_id_profile_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE security.profile_id_profile_seq;
       security               postgres    false    241    6            i           0    0    profile_id_profile_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE security.profile_id_profile_seq OWNED BY security.profile.id_profile;
          security               postgres    false    242            �            1259    27533    profile_module    TABLE     �   CREATE TABLE security.profile_module (
    id_profile_module integer NOT NULL,
    fk_id_profile integer,
    fk_id_module integer
);
 $   DROP TABLE security.profile_module;
       security         heap r       postgres    false    6            �            1259    27536 $   profile_module_id_profile_module_seq    SEQUENCE     �   CREATE SEQUENCE security.profile_module_id_profile_module_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE security.profile_module_id_profile_module_seq;
       security               postgres    false    243    6            j           0    0 $   profile_module_id_profile_module_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE security.profile_module_id_profile_module_seq OWNED BY security.profile_module.id_profile_module;
          security               postgres    false    244            �            1259    27537    user    TABLE     �   CREATE TABLE security."user" (
    id_user integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    number_id bigint,
    fk_id_person integer,
    username character varying(255)
);
    DROP TABLE security."user";
       security         heap r       postgres    false    6            �            1259    27542    user_id_user_seq    SEQUENCE     �   CREATE SEQUENCE security.user_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE security.user_id_user_seq;
       security               postgres    false    6    245            k           0    0    user_id_user_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE security.user_id_user_seq OWNED BY security."user".id_user;
          security               postgres    false    246            �            1259    27543    user_profile    TABLE     �   CREATE TABLE security.user_profile (
    id_user_profile integer NOT NULL,
    fk_id_user integer NOT NULL,
    fk_id_profile integer NOT NULL
);
 "   DROP TABLE security.user_profile;
       security         heap r       postgres    false    6            �            1259    27546    user_profile_fk_id_profile_seq    SEQUENCE     �   CREATE SEQUENCE security.user_profile_fk_id_profile_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE security.user_profile_fk_id_profile_seq;
       security               postgres    false    247    6            l           0    0    user_profile_fk_id_profile_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE security.user_profile_fk_id_profile_seq OWNED BY security.user_profile.fk_id_profile;
          security               postgres    false    248            �            1259    27547    user_profile_fk_id_user_seq    SEQUENCE     �   CREATE SEQUENCE security.user_profile_fk_id_user_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE security.user_profile_fk_id_user_seq;
       security               postgres    false    247    6            m           0    0    user_profile_fk_id_user_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE security.user_profile_fk_id_user_seq OWNED BY security.user_profile.fk_id_user;
          security               postgres    false    249            �            1259    27548     user_profile_id_user_profile_seq    SEQUENCE     �   CREATE SEQUENCE security.user_profile_id_user_profile_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE security.user_profile_id_user_profile_seq;
       security               postgres    false    6    247            n           0    0     user_profile_id_user_profile_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE security.user_profile_id_user_profile_seq OWNED BY security.user_profile.id_user_profile;
          security               postgres    false    250            e           2604    27572    categories id_category    DEFAULT     �   ALTER TABLE ONLY public.categories ALTER COLUMN id_category SET DEFAULT nextval('public.categories_id_category_seq'::regclass);
 E   ALTER TABLE public.categories ALTER COLUMN id_category DROP DEFAULT;
       public               postgres    false    219    218            f           2604    27600    person id_person    DEFAULT     t   ALTER TABLE ONLY public.person ALTER COLUMN id_person SET DEFAULT nextval('public.person_id_person_seq'::regclass);
 ?   ALTER TABLE public.person ALTER COLUMN id_person DROP DEFAULT;
       public               postgres    false    221    220            g           2604    27623    audit id_audit    DEFAULT     t   ALTER TABLE ONLY security.audit ALTER COLUMN id_audit SET DEFAULT nextval('security.audit_id_audit_seq'::regclass);
 ?   ALTER TABLE security.audit ALTER COLUMN id_audit DROP DEFAULT;
       security               postgres    false    223    222            h           2604    27624    menu id_menu    DEFAULT     p   ALTER TABLE ONLY security.menu ALTER COLUMN id_menu SET DEFAULT nextval('security.menu_id_menu_seq'::regclass);
 =   ALTER TABLE security.menu ALTER COLUMN id_menu DROP DEFAULT;
       security               postgres    false    226    224            i           2604    27625    menu fk_id_module    DEFAULT     z   ALTER TABLE ONLY security.menu ALTER COLUMN fk_id_module SET DEFAULT nextval('security.menu_fk_id_module_seq'::regclass);
 B   ALTER TABLE security.menu ALTER COLUMN fk_id_module DROP DEFAULT;
       security               postgres    false    225    224            j           2604    27626    method id_method    DEFAULT     x   ALTER TABLE ONLY security.method ALTER COLUMN id_method SET DEFAULT nextval('security.method_id_method_seq'::regclass);
 A   ALTER TABLE security.method ALTER COLUMN id_method DROP DEFAULT;
       security               postgres    false    229    227            k           2604    27627    method fk_id_object    DEFAULT     ~   ALTER TABLE ONLY security.method ALTER COLUMN fk_id_object SET DEFAULT nextval('security.method_fk_id_object_seq'::regclass);
 D   ALTER TABLE security.method ALTER COLUMN fk_id_object DROP DEFAULT;
       security               postgres    false    228    227            l           2604    27628    module id_module    DEFAULT     x   ALTER TABLE ONLY security.module ALTER COLUMN id_module SET DEFAULT nextval('security.module_id_module_seq'::regclass);
 A   ALTER TABLE security.module ALTER COLUMN id_module DROP DEFAULT;
       security               postgres    false    231    230            m           2604    27629    object id_object    DEFAULT     x   ALTER TABLE ONLY security.object ALTER COLUMN id_object SET DEFAULT nextval('security.object_id_object_seq'::regclass);
 A   ALTER TABLE security.object ALTER COLUMN id_object DROP DEFAULT;
       security               postgres    false    234    232            n           2604    27630    object fk_id_module    DEFAULT     ~   ALTER TABLE ONLY security.object ALTER COLUMN fk_id_module SET DEFAULT nextval('security.object_fk_id_module_seq'::regclass);
 D   ALTER TABLE security.object ALTER COLUMN fk_id_module DROP DEFAULT;
       security               postgres    false    233    232            o           2604    27631 $   permission_menu id_permission_method    DEFAULT     �   ALTER TABLE ONLY security.permission_menu ALTER COLUMN id_permission_method SET DEFAULT nextval('security.permission_menu_id_permission_method_seq'::regclass);
 U   ALTER TABLE security.permission_menu ALTER COLUMN id_permission_method DROP DEFAULT;
       security               postgres    false    237    235            p           2604    27632    permission_menu fk_id_menu    DEFAULT     �   ALTER TABLE ONLY security.permission_menu ALTER COLUMN fk_id_menu SET DEFAULT nextval('security.permission_menu_fk_id_menu_seq'::regclass);
 K   ALTER TABLE security.permission_menu ALTER COLUMN fk_id_menu DROP DEFAULT;
       security               postgres    false    236    235            q           2604    27633 &   permission_method id_permission_method    DEFAULT     �   ALTER TABLE ONLY security.permission_method ALTER COLUMN id_permission_method SET DEFAULT nextval('security.permission_method_id_permission_method_seq'::regclass);
 W   ALTER TABLE security.permission_method ALTER COLUMN id_permission_method DROP DEFAULT;
       security               postgres    false    240    238            r           2604    27634    permission_method fk_id_method    DEFAULT     �   ALTER TABLE ONLY security.permission_method ALTER COLUMN fk_id_method SET DEFAULT nextval('security.permission_method_fk_id_method_seq'::regclass);
 O   ALTER TABLE security.permission_method ALTER COLUMN fk_id_method DROP DEFAULT;
       security               postgres    false    239    238            s           2604    27635    profile id_profile    DEFAULT     |   ALTER TABLE ONLY security.profile ALTER COLUMN id_profile SET DEFAULT nextval('security.profile_id_profile_seq'::regclass);
 C   ALTER TABLE security.profile ALTER COLUMN id_profile DROP DEFAULT;
       security               postgres    false    242    241            t           2604    27636     profile_module id_profile_module    DEFAULT     �   ALTER TABLE ONLY security.profile_module ALTER COLUMN id_profile_module SET DEFAULT nextval('security.profile_module_id_profile_module_seq'::regclass);
 Q   ALTER TABLE security.profile_module ALTER COLUMN id_profile_module DROP DEFAULT;
       security               postgres    false    244    243            u           2604    27637    user id_user    DEFAULT     r   ALTER TABLE ONLY security."user" ALTER COLUMN id_user SET DEFAULT nextval('security.user_id_user_seq'::regclass);
 ?   ALTER TABLE security."user" ALTER COLUMN id_user DROP DEFAULT;
       security               postgres    false    246    245            v           2604    27638    user_profile id_user_profile    DEFAULT     �   ALTER TABLE ONLY security.user_profile ALTER COLUMN id_user_profile SET DEFAULT nextval('security.user_profile_id_user_profile_seq'::regclass);
 M   ALTER TABLE security.user_profile ALTER COLUMN id_user_profile DROP DEFAULT;
       security               postgres    false    250    247            w           2604    27639    user_profile fk_id_user    DEFAULT     �   ALTER TABLE ONLY security.user_profile ALTER COLUMN fk_id_user SET DEFAULT nextval('security.user_profile_fk_id_user_seq'::regclass);
 H   ALTER TABLE security.user_profile ALTER COLUMN fk_id_user DROP DEFAULT;
       security               postgres    false    249    247            x           2604    27640    user_profile fk_id_profile    DEFAULT     �   ALTER TABLE ONLY security.user_profile ALTER COLUMN fk_id_profile SET DEFAULT nextval('security.user_profile_fk_id_profile_seq'::regclass);
 K   ALTER TABLE security.user_profile ALTER COLUMN fk_id_profile DROP DEFAULT;
       security               postgres    false    248    247            4          0    27371 
   categories 
   TABLE DATA           ;   COPY public.categories (id_category, category) FROM stdin;
    public               postgres    false    218   ٨       6          0    27436    person 
   TABLE DATA           H   COPY public.person (id_person, name, last_name, birth_date) FROM stdin;
    public               postgres    false    220   L�       8          0    27496    audit 
   TABLE DATA           T   COPY security.audit (id_audit, fk_id_user, method, fk_id_profile, date) FROM stdin;
    security               postgres    false    222   l�       :          0    27500    menu 
   TABLE DATA           =   COPY security.menu (id_menu, menu, fk_id_module) FROM stdin;
    security               postgres    false    224   <�       =          0    27505    method 
   TABLE DATA           C   COPY security.method (id_method, method, fk_id_object) FROM stdin;
    security               postgres    false    227   (�       @          0    27510    module 
   TABLE DATA           5   COPY security.module (id_module, module) FROM stdin;
    security               postgres    false    230   ߯       B          0    27514    object 
   TABLE DATA           C   COPY security.object (id_object, object, fk_id_module) FROM stdin;
    security               postgres    false    232   5�       E          0    27519    permission_menu 
   TABLE DATA           \   COPY security.permission_menu (id_permission_method, fk_id_profile, fk_id_menu) FROM stdin;
    security               postgres    false    235   ��       H          0    27524    permission_method 
   TABLE DATA           `   COPY security.permission_method (id_permission_method, fk_id_profile, fk_id_method) FROM stdin;
    security               postgres    false    238   #�       K          0    27529    profile 
   TABLE DATA           8   COPY security.profile (id_profile, profile) FROM stdin;
    security               postgres    false    241   �       M          0    27533    profile_module 
   TABLE DATA           Z   COPY security.profile_module (id_profile_module, fk_id_profile, fk_id_module) FROM stdin;
    security               postgres    false    243   U�       O          0    27537    user 
   TABLE DATA           _   COPY security."user" (id_user, email, password, number_id, fk_id_person, username) FROM stdin;
    security               postgres    false    245   r�       Q          0    27543    user_profile 
   TABLE DATA           T   COPY security.user_profile (id_user_profile, fk_id_user, fk_id_profile) FROM stdin;
    security               postgres    false    247   ��       o           0    0    categories_id_category_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.categories_id_category_seq', 9, true);
          public               postgres    false    219            p           0    0    person_id_person_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.person_id_person_seq', 23, true);
          public               postgres    false    221            q           0    0    audit_id_audit_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('security.audit_id_audit_seq', 79, true);
          security               postgres    false    223            r           0    0    menu_fk_id_module_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('security.menu_fk_id_module_seq', 4, true);
          security               postgres    false    225            s           0    0    menu_id_menu_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('security.menu_id_menu_seq', 29, true);
          security               postgres    false    226            t           0    0    method_fk_id_object_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('security.method_fk_id_object_seq', 1, false);
          security               postgres    false    228            u           0    0    method_id_method_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('security.method_id_method_seq', 61, true);
          security               postgres    false    229            v           0    0    module_id_module_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('security.module_id_module_seq', 6, true);
          security               postgres    false    231            w           0    0    object_fk_id_module_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('security.object_fk_id_module_seq', 1, false);
          security               postgres    false    233            x           0    0    object_id_object_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('security.object_id_object_seq', 11, true);
          security               postgres    false    234            y           0    0    permission_menu_fk_id_menu_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('security.permission_menu_fk_id_menu_seq', 1, false);
          security               postgres    false    236            z           0    0 (   permission_menu_id_permission_method_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('security.permission_menu_id_permission_method_seq', 24, true);
          security               postgres    false    237            {           0    0 "   permission_method_fk_id_method_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('security.permission_method_fk_id_method_seq', 1, false);
          security               postgres    false    239            |           0    0 *   permission_method_id_permission_method_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('security.permission_method_id_permission_method_seq', 73, true);
          security               postgres    false    240            }           0    0    profile_id_profile_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('security.profile_id_profile_seq', 6, true);
          security               postgres    false    242            ~           0    0 $   profile_module_id_profile_module_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('security.profile_module_id_profile_module_seq', 1, false);
          security               postgres    false    244                       0    0    user_id_user_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('security.user_id_user_seq', 21, true);
          security               postgres    false    246            �           0    0    user_profile_fk_id_profile_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('security.user_profile_fk_id_profile_seq', 1, false);
          security               postgres    false    248            �           0    0    user_profile_fk_id_user_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('security.user_profile_fk_id_user_seq', 1, false);
          security               postgres    false    249            �           0    0     user_profile_id_user_profile_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('security.user_profile_id_user_profile_seq', 22, true);
          security               postgres    false    250            z           2606    27662    categories pk_categories 
   CONSTRAINT     _   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (id_category);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public                 postgres    false    218            |           2606    27682    person pk_person 
   CONSTRAINT     U   ALTER TABLE ONLY public.person
    ADD CONSTRAINT pk_person PRIMARY KEY (id_person);
 :   ALTER TABLE ONLY public.person DROP CONSTRAINT pk_person;
       public                 postgres    false    220            �           2606    27704    menu pk_menu 
   CONSTRAINT     Q   ALTER TABLE ONLY security.menu
    ADD CONSTRAINT pk_menu PRIMARY KEY (id_menu);
 8   ALTER TABLE ONLY security.menu DROP CONSTRAINT pk_menu;
       security                 postgres    false    224            �           2606    27706    module pk_module_idx 
   CONSTRAINT     [   ALTER TABLE ONLY security.module
    ADD CONSTRAINT pk_module_idx PRIMARY KEY (id_module);
 @   ALTER TABLE ONLY security.module DROP CONSTRAINT pk_module_idx;
       security                 postgres    false    230            �           2606    27708 &   permission_method pk_permission_method 
   CONSTRAINT     x   ALTER TABLE ONLY security.permission_method
    ADD CONSTRAINT pk_permission_method PRIMARY KEY (id_permission_method);
 R   ALTER TABLE ONLY security.permission_method DROP CONSTRAINT pk_permission_method;
       security                 postgres    false    238            �           2606    27710    profile pk_profile 
   CONSTRAINT     Z   ALTER TABLE ONLY security.profile
    ADD CONSTRAINT pk_profile PRIMARY KEY (id_profile);
 >   ALTER TABLE ONLY security.profile DROP CONSTRAINT pk_profile;
       security                 postgres    false    241            �           2606    27712     profile_module pk_profile_module 
   CONSTRAINT     o   ALTER TABLE ONLY security.profile_module
    ADD CONSTRAINT pk_profile_module PRIMARY KEY (id_profile_module);
 L   ALTER TABLE ONLY security.profile_module DROP CONSTRAINT pk_profile_module;
       security                 postgres    false    243            �           2606    27714    user pk_tbl 
   CONSTRAINT     R   ALTER TABLE ONLY security."user"
    ADD CONSTRAINT pk_tbl PRIMARY KEY (id_user);
 9   ALTER TABLE ONLY security."user" DROP CONSTRAINT pk_tbl;
       security                 postgres    false    245            �           2606    27716    object pk_tbl_0 
   CONSTRAINT     V   ALTER TABLE ONLY security.object
    ADD CONSTRAINT pk_tbl_0 PRIMARY KEY (id_object);
 ;   ALTER TABLE ONLY security.object DROP CONSTRAINT pk_tbl_0;
       security                 postgres    false    232            �           2606    27718    method pk_tbl_1 
   CONSTRAINT     V   ALTER TABLE ONLY security.method
    ADD CONSTRAINT pk_tbl_1 PRIMARY KEY (id_method);
 ;   ALTER TABLE ONLY security.method DROP CONSTRAINT pk_tbl_1;
       security                 postgres    false    227            �           2606    27720    permission_menu pk_tbl_2 
   CONSTRAINT     j   ALTER TABLE ONLY security.permission_menu
    ADD CONSTRAINT pk_tbl_2 PRIMARY KEY (id_permission_method);
 D   ALTER TABLE ONLY security.permission_menu DROP CONSTRAINT pk_tbl_2;
       security                 postgres    false    235            ~           2606    27722    audit pk_tbl_3 
   CONSTRAINT     T   ALTER TABLE ONLY security.audit
    ADD CONSTRAINT pk_tbl_3 PRIMARY KEY (id_audit);
 :   ALTER TABLE ONLY security.audit DROP CONSTRAINT pk_tbl_3;
       security                 postgres    false    222            �           2606    27724    user_profile pk_user_profile 
   CONSTRAINT     i   ALTER TABLE ONLY security.user_profile
    ADD CONSTRAINT pk_user_profile PRIMARY KEY (id_user_profile);
 H   ALTER TABLE ONLY security.user_profile DROP CONSTRAINT pk_user_profile;
       security                 postgres    false    247            �           1259    27728 	   unq_email    INDEX     F   CREATE UNIQUE INDEX unq_email ON security."user" USING btree (email);
    DROP INDEX security.unq_email;
       security                 postgres    false    245            �           1259    27729    unq_user    INDEX     I   CREATE UNIQUE INDEX unq_user ON security."user" USING btree (number_id);
    DROP INDEX security.unq_user;
       security                 postgres    false    245            �           2606    27980    permission_method fk_id_profile    FK CONSTRAINT     �   ALTER TABLE ONLY security.permission_method
    ADD CONSTRAINT fk_id_profile FOREIGN KEY (fk_id_profile) REFERENCES security.profile(id_profile);
 K   ALTER TABLE ONLY security.permission_method DROP CONSTRAINT fk_id_profile;
       security               postgres    false    241    238    4748            �           2606    27985    permission_menu fk_id_profile    FK CONSTRAINT     �   ALTER TABLE ONLY security.permission_menu
    ADD CONSTRAINT fk_id_profile FOREIGN KEY (fk_id_profile) REFERENCES security.profile(id_profile);
 I   ALTER TABLE ONLY security.permission_menu DROP CONSTRAINT fk_id_profile;
       security               postgres    false    235    241    4748            �           2606    27990    audit fk_id_profile    FK CONSTRAINT     �   ALTER TABLE ONLY security.audit
    ADD CONSTRAINT fk_id_profile FOREIGN KEY (fk_id_profile) REFERENCES security.profile(id_profile) NOT VALID;
 ?   ALTER TABLE ONLY security.audit DROP CONSTRAINT fk_id_profile;
       security               postgres    false    4748    222    241            �           2606    27995    audit fk_id_user    FK CONSTRAINT     |   ALTER TABLE ONLY security.audit
    ADD CONSTRAINT fk_id_user FOREIGN KEY (fk_id_user) REFERENCES security."user"(id_user);
 <   ALTER TABLE ONLY security.audit DROP CONSTRAINT fk_id_user;
       security               postgres    false    4752    222    245            �           2606    28000    menu fk_menu_module    FK CONSTRAINT     �   ALTER TABLE ONLY security.menu
    ADD CONSTRAINT fk_menu_module FOREIGN KEY (fk_id_module) REFERENCES security.module(id_module);
 ?   ALTER TABLE ONLY security.menu DROP CONSTRAINT fk_menu_module;
       security               postgres    false    224    230    4740            �           2606    28005    method fk_method_object    FK CONSTRAINT     �   ALTER TABLE ONLY security.method
    ADD CONSTRAINT fk_method_object FOREIGN KEY (fk_id_object) REFERENCES security.object(id_object);
 C   ALTER TABLE ONLY security.method DROP CONSTRAINT fk_method_object;
       security               postgres    false    227    4742    232            �           2606    28010    object fk_object_module    FK CONSTRAINT     �   ALTER TABLE ONLY security.object
    ADD CONSTRAINT fk_object_module FOREIGN KEY (fk_id_module) REFERENCES security.module(id_module);
 C   ALTER TABLE ONLY security.object DROP CONSTRAINT fk_object_module;
       security               postgres    false    232    4740    230            �           2606    28015 '   permission_menu fk_permission_menu_menu    FK CONSTRAINT     �   ALTER TABLE ONLY security.permission_menu
    ADD CONSTRAINT fk_permission_menu_menu FOREIGN KEY (fk_id_menu) REFERENCES security.menu(id_menu);
 S   ALTER TABLE ONLY security.permission_menu DROP CONSTRAINT fk_permission_menu_menu;
       security               postgres    false    235    224    4736            �           2606    28020 -   permission_method fk_permission_method_method    FK CONSTRAINT     �   ALTER TABLE ONLY security.permission_method
    ADD CONSTRAINT fk_permission_method_method FOREIGN KEY (fk_id_method) REFERENCES security.method(id_method);
 Y   ALTER TABLE ONLY security.permission_method DROP CONSTRAINT fk_permission_method_method;
       security               postgres    false    227    4738    238            �           2606    28025 '   profile_module fk_profile_module_module    FK CONSTRAINT     �   ALTER TABLE ONLY security.profile_module
    ADD CONSTRAINT fk_profile_module_module FOREIGN KEY (fk_id_module) REFERENCES security.module(id_module);
 S   ALTER TABLE ONLY security.profile_module DROP CONSTRAINT fk_profile_module_module;
       security               postgres    false    243    4740    230            �           2606    28030 (   profile_module fk_profile_module_profile    FK CONSTRAINT     �   ALTER TABLE ONLY security.profile_module
    ADD CONSTRAINT fk_profile_module_profile FOREIGN KEY (fk_id_profile) REFERENCES security.profile(id_profile);
 T   ALTER TABLE ONLY security.profile_module DROP CONSTRAINT fk_profile_module_profile;
       security               postgres    false    241    4748    243            �           2606    28035    user fk_user_person    FK CONSTRAINT     �   ALTER TABLE ONLY security."user"
    ADD CONSTRAINT fk_user_person FOREIGN KEY (fk_id_person) REFERENCES public.person(id_person);
 A   ALTER TABLE ONLY security."user" DROP CONSTRAINT fk_user_person;
       security               postgres    false    245    4732    220            �           2606    28040 $   user_profile fk_user_profile_profile    FK CONSTRAINT     �   ALTER TABLE ONLY security.user_profile
    ADD CONSTRAINT fk_user_profile_profile FOREIGN KEY (fk_id_profile) REFERENCES security.profile(id_profile);
 P   ALTER TABLE ONLY security.user_profile DROP CONSTRAINT fk_user_profile_profile;
       security               postgres    false    241    247    4748            �           2606    28045 !   user_profile fk_user_profile_user    FK CONSTRAINT     �   ALTER TABLE ONLY security.user_profile
    ADD CONSTRAINT fk_user_profile_user FOREIGN KEY (fk_id_user) REFERENCES security."user"(id_user);
 M   ALTER TABLE ONLY security.user_profile DROP CONSTRAINT fk_user_profile_user;
       security               postgres    false    245    247    4752            4   c   x�˻
�@�z�W�>���h))R��,���f!���T�xѝ���z�Ȕ~���9/��d�q��<��<̷��/��4��܋����
�[��      6     x����N�0E����<���
�"$D)]���pmH�_Ϙh��H�ƺg|�a�9���u]C��h�r���Lh�ݑ���YB-Q��;O�`�MhJ%��X�f������J�F��������5�u!jX�zM��T7Ի��{�p�P���mO �]`;"�"�TO���77���o,<G��縬LjF�eT��+P��E̟]	�Z8�� �B�\`=�4	9���tGU��ο:λ
-/���Ǒ��,uy[j�A��˵��[��      8   �  x���Ar�0E��)rwH$%.ۭ;�t��j�c��ݙܾ�J,)%�/�y ��y���n{����o|e�J���vA�A����� }�w�C�3:	ڒ�Xuy�wc�Vd;lS5���y_�����c���D� *�G��"�,��*�%�28N/r:��\�HІ4�%���2��t�:)���ϩ��B�gp\���#]�vQk!u��e��&+��եZo����su��W���i�_�C�dC�/�9Ѯ��f�,�Vd���A����"�^zؒ�bߛ����{������ҏQ�ĆXu�>G�%�ݝ|����ْ�dy��s?{�:�H�K�s�l��m)���tY���ɓc�q�XE<9vC/��$8�H��8��6DgKz��<1�-u��-U��Er�B{��� �^2����>E��חx�M��T����u�M��\��p|�q�^ hp{e�OoU
��3QK�WǙX9
��LT�J&Z���W�AY��S<Y��z��"�D��ZmO���;�,*��bV��0��R�*�L_(r��B�]/���͎��9�:|�H}L٨X�-������|g1���9<RWX�s��ON2����G�3v[l>Go<��w��E��!g�\�rripx�|���Y�XF��c,�t>c�X@�|�5����?�T���-���8�:���~<F�      :   �   x����� E��|��Z_��4q�f,c3�����RԘF#�� �ν���]t�@���_'�{0iB� }G�'p�T(��4�L.#�[�,AhVe��?��I�.j�ԣg���wth8���i�U�Ϲe]���P��\*k^M�ds^��Շ�<䉝���C@�_I�/��QQ�� ��E�v�=�E�G�E�`�WE<�������E>��Yp�p�oSW��      =   �  x�mS�r�0<���/Ƕ�t�Ko����S���W2������J���mt���z&�d��֓�0��C�a4k��&�ʼ{;z&y5,�@�e��
[_l?{���r͌��E���2�VQ-	hj�jILNM��)��5�i.Jį�/{���,Ff�	1"y!�B�v�v�w�_����G|#�{o�}W������<9���fA��I�Ԡ$�꾝��ʹ
s=CO����+�ܩ��˞�\�ō ���<��x��W/2���O�I_+�hf�ძ{$+� 	,���at�vâ����$�fb�N�᜴�I~y1;�/��nq��ؿF[��U��A�qn:�.�O�Ho��˚�Ql��yhE�!C��9�a�J�Sa\l�$��h����RZ+n5��ڲtV��x���,Oo�      @   F   x�3�I-.1�2�NM/-�LIL�2���L*�/�2��M�+I����L�+��2�t,M�,�/�L����� U��      B   y   x�-ͻ�0D�z�c�U� ����8V"��G��c���fl�OXy�����Is�Ǫٷ,�L�=��eO�.��<+����^�Wy�(oW�D��S��la�kyַ6\��^<7D�Ui(�      E   U   x����@�ޫbl������#�$Q��D;#�p���7'<������=�3�'-T�\���W��l�?;����      H   �   x��ˑ� Dѵo0S����c�lZe�Va�}�O:1�dR�EO6{rs&w�bK�-�4`�����Xbb�0�1!v01vq9�p9>{�E�㉟ϧ.4�O�YQ�c�u<�|�/R�~I��!�lR�Ѥ�H���wܩ}�M=�PϿ��\��4�ݍS�3(�9��-JN��ޔ�r��r��������+h�����k��h9e��rZ^5-�6[^���ly��������`A�      K   2   x�3�t�L���/IMN,���2�tL����2�t-.)M�L�+I����� !h�      M      x������ � �      O   �   x����n� ����T��=���/Ai&�;R.}�zX����%[�?~�a�TB��e�5�&�@�������CX�t���V���>�b���&�Ꟁ�Ke��t���C\�z�X7z*��J��ԃ�Zrs�}��A�QZЪ1��y	{�����J#�!�w��Q�8i_�(-��̷�oO�B�j	+�z��Xx�y�p$����;���i�6
�Jx�HɑL{p�D�)�W��Y�/p>u]�[٦      Q   6   x���	�Pþ�a����0�?�=(	%�X!�0<z��!�T�7q[�S���K���     