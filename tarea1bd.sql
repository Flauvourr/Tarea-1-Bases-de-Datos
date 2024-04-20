PGDMP  "                    |            tarea1bd    16.2    16.2 -               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16562    tarea1bd    DATABASE     �   CREATE DATABASE tarea1bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE tarea1bd;
                postgres    false                        2615    16969    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            !           0    0    SCHEMA public    COMMENT         COMMENT ON SCHEMA public IS '';
                   postgres    false    5            "           0    0    SCHEMA public    ACL     +   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
                   postgres    false    5            �            1259    17067    actor    TABLE     q   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.actor;
       public         heap    postgres    false    5            �            1259    17066    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    218            �            1259    17083    actor_participa_en_pelicula    TABLE     c   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer,
    id_pelicula integer
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false    5            �            1259    17061    director    TABLE     w   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45),
    edad integer
);
    DROP TABLE public.director;
       public         heap    postgres    false    5            �            1259    17060    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216    5            �            1259    17073    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer,
    nombre character varying(45),
    genero character varying(45),
    duracion integer,
    fecha_publicacion date
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false    5            �            1259    17072    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220    5            �            1259    17108    premio_mejor_actor    TABLE     s   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer,
    anio integer
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false    5            �            1259    17107     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225    5            �            1259    17097    premio_mejor_director    TABLE     y   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer,
    anio integer
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false    5            �            1259    17096 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223    5            �            1259    17119    premio_mejor_pelicula    TABLE     y   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer,
    anio integer
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false    5            �            1259    17118 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    5    227                      0    17067    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   6                 0    17083    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   �=                 0    17061    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   D                 0    17073    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   �K                 0    17108    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   +b                 0    17097    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   �b                 0    17119    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   �c       #           0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217            $           0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215            %           0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219            &           0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 27, true);
          public          postgres    false    224            '           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 30, true);
          public          postgres    false    222            (           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 23, true);
          public          postgres    false    226            p           2606    17071    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    17065    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    17077    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            v           2606    17112 *   premio_mejor_actor premio_mejor_actor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_pkey PRIMARY KEY (id_premio);
 T   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_pkey;
       public            postgres    false    225            t           2606    17101 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            x           2606    17123 0   premio_mejor_pelicula premio_mejor_pelicula_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_pkey;
       public            postgres    false    227            z           2606    17086 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    221    218    4720            {           2606    17091 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    220    221    4722            y           2606    17078 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    4718    220    216            }           2606    17113 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    4720    218    225            |           2606    17102 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director);
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    223    216    4718            ~           2606    17124 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    227    220               �  x�]WKr�:\��	&�ɥ��dK�eY�����n��y��'�f�2�,��3GB�������}[���s�n]�D�%�h�g=6{8�������Ѿ�Oc����U/���Lf����\mϊ�W�Y����ZUr�_�!���N���7�f��?�+�5oؗ^O�ϕUoٽ�͠c�������h���xX���B�k�k�!�3��ٚ��%*3�b����Κ)����:/�y̮̰73S�i�~������]�_�����s��� E�E����=�G�
�E�>���v:�F��H��eo�^&����G@���ٙ��s�q��@�{�������TΥd�.�������B�����5�%�2��`��[.+ve��Y����zx���ɚ����t=Awn��;������Ţ��JO@�.�lZ�4h�T��^x;��B����ú;Z&%/${пє[�Ԋ�F{�d<��VQ&�\ ��IܫB��!�+��A�.ђ�,ĭS�߭�۰R�q���0�?W��Y�!j�L��9�v���e�Y�3Wǿ��;9,�*�5�P��&@(�t����ndR�d� H�jt�8� w�b7#&����/$� �5�
M�ѕ��OGm���u?.#S��}o�N{R4���9�����_Ēc}�WP����c����z����*|v����c(��8d_��A�ɮ�P܌��0�R�7z�F7P�!�SO��#&�jN�^VH�ew�s}��\�����yV�\���۠+�>q���U�{��H^6\�[V��f�A�
�&z1�9f���<{�P5{z�@y==��8���&1w���
Sc���Ω�2�u�.N!�� �z`��d?H�.�0�~TV����0ToG�馽��}�ğ��
#�ŦDPK]�wz�h�Fhr�;�g�N�/�ׂ�{Tw��}��M���`���=
��:�.�eS�O�p�7�/�ӊ	��
3� 7*S�vΛ:IH8o��ې�rM����E/��=0������$��ʸRo�t[�)#�<�x/�r�휷�{4�2n��R�*q��](��IH� ��6�ï.,����:�$����|cH@��;ǃ^ ��e�N�Z-R*7���+�2F�W%n� �5��B��#B[��E^�Ջ��0C0�1E�M�ʯf� �n�Z=y?6��Hf%r�~W�&G�A�H�(4�+��=K�"rV�]o!ٝ�z��	��;����8��D�/Q!�~�B~�+�ij���,I��A�N�-4���!�#Q���eZ�t�ܺ�kJȸ4}�0����@����O�?�t��T�~L�L�:�W�B�U�LOE�*�j<A�%,{d���Z�mBD���&�!Eq"�ޱ`3	�k벤6���eVG�	���!x���Q�A���u���p	��l㊪J�8�	���!��7BM-,�U�8������9�HsG����#������4C���D�H��\:��~���r"�(4lA0�1!r�0��Az�<AX�'}��0��>Q���(tvb\A$y�:����@�\NpQ-��Բ����u�xJU؂���	�s�5�D�H
U\Gɉ��U'�a<	Y��N�Wh*�G�c��!���&�b�+�߰��%���6U������r�%H����،�5��)�tW:ġ�X.!�1�)��B�/�n��WbZ��h��tT�a�L�Wpa���P0	���04�`L��p�K������2:�>A6���Cs� U�a�5��gUT����:~DƵF��h��:�d�������ܢh��nC`t�b�c$}�LO;�F#��f�������9|�R�d���.��y�M��@Z��b7i����p]?H���)yg<��p��JF�q         U  x�5�ɑ�8Ϣ1�_��vL&����$

Ut�盷���]ڹ_��ݿ�Ni�|�߲��n-cq�����V-����]���-m�z�2^��{eݯ���7���m�/�w�o�­{�����vo���D���J�R#���pr��W����;��.����H�s����r-����3��"�v�s�O_|2���Ç���;���9[�\E�x�R�w�P(��o����}rt�>N-|�b�j�0� �ۉS��6�z�(��@��r��v9�V���G�FE�����_����h[3��	�lۋ�;	����7C�(������m;3 \��- њvI�����������v�@r����Txq���G�JgH�T�����վV4���w��=��z�3�7F��T�	>%e�~K��Ƥƾ����r^4������b��i�B�`Yk�g�$�!;��B&�M���BؠtH�_�@ �e;�Q�I�@S�5�Z�$%1��fG�~6��d�L}Rd�*B	ُ�G1t���ڶ6�-�x�����W>��Zp�R�R��IW%UW�^�M��d����{Wἲ��XƄ"}d���#��W5�ǲ��*@�Gof��OF}Q@�FJP�uۈ�jAB[����J����⃸���f�V֫��u6GE���!J!��d�*4��M�-.oe��5E!�T���S@"ʆ�pX�%g�A-x��x���zZ��!�ƚ�~آ0W0��/�\��d 7�bClȠ1(��ބ��M�G֞<��Q ְ�C"�#��3`�-�$R3�E3�s�U�������lr
�C��݊�^W"�1x`�<�*��5CNz���.��u��)�{4ř:m��	���u<�%��AY�=����I�Z�]��:�l���nR����	E��pC������Mô}��(���b^Z�%��z�I���7gv�t�Rף�R_ξ�y��_��	�͎���Ό9��r����-'�����3-tX�y��%�����R�Y��C����#t�ɪ�8�(�8&H�
J�ݚ������E�F�-� j�
�\g��ƈ�#�MMi�/<,޲#s�h�$�ѮX(�iWtװ������`1�IQ_̿[�}iG�5�M�Z�2d�"�i+������b��
uh��՚�BZ#&��ߺ�|{��@5�߸�iJ���zڋݼ��O�3�}�<�Z!\��!��ܹp����A��I��\��e�
�d��[G��1�Q3��0��?o~9�v���&3�,R�s��Q�s6����$��v��xϭB:�>�'�����m"z�t4�=����2��\+��@Xo��E�V]�>�T���FՇ��Z������fX��5�	��l����5C� b�g6=�� ��}�<xm]���c���cԷ�2�nsO��p�U]��z�-��f��1BM=��������\>N�8���?�t.Y��~�<��X���Ol*뷐�t��>�t���6��+��!9��b��<��A�A�W��w�h��������#�l�Ih�P}Xl��/,X3�(�<B1jCj�B.�Gzi!P�~?��6����Zdx���WJ�=v(          ~  x�mWYv�6�N��\ �S�lK�-ْ�E/?��A�!.����,�X������`�twUW{�gs4��~8����%/ث�~�N���;�꒗���>��2ϚU���Lw���>.Ǝ�3S����ތ�]��0�Zq�^L�}Y�̹b_t�Ͼ���a���g����ѲS=�e½��u�Y����Wۧ�j��`�� ��A���#�k.
v�G��}]�mQ�x^�=�5��ɂ����Ӈ��4�'��ڜ���s��R���ή��r�&���3l.�N?N���>��hV"��]��`w��������<F�r\�)�B�Ϻ3��O�-/
v>Ri�&��d_��5��ɋ���Ó�{���;3Y=���EMe�>�Y*h!��Q���x�;ݛ����@�z؍TWҢa�N��H|��> :���y�̝�]�u�K��j5�,���v��.x�5X+}�n6����&P�T��٥�ᝫ�>��������f�'
�T(j�]��8�qW8ڰ��p�V���l=pW�l���9�A�P��`����&�j	^!�e����p�d���A�.�T*^U	�a�u�WuJ�� dDWI"49]��6��ü�	c_�
�
�R0�Ko��������:GWٟ����Mfւ] ��P�`����q��R��m�����
����ٙ�G���W��-`vt��/?MO<��J�øG����^�n��5T�a���g�Z��7��2���{���q)B�h��ް&��ga�3 KO�$���؝���ͥ%���Ƞ�����ސ�*����>��v5=��r��e�A�Ǥ&��ʽڥ�/�~)��Eky��?�~���U�f�EW���v��3AV+<M�kw��P֣���k�o���Y����׃��UD&� �jrv�'ToV�M#�����M�$=�Ekʨ8/���0��U,'�h}B��C�ƈ���R�g@�Q_ྨ��ON����5ob]أ!ŀ6�y��3�|�� �H��B�#1��m�-��2��Qm73�3�fu%��$$AҠ�
�$�ӣ�6!���1�Ӷ�����5'XE�3LFj��ϘJ�𒛮�D^���p4s��5�Y�N�XI˛|�k�Fq't�RUbq#�;ť�+�LJ
�Aʣ^��nh&�M�����@_N 5Q^`��>��E�J��pj~
�Fw�����ݽ�� ,U����nE�}[&�={5�0�H�c
X��vI��
I�����Z����	��� ܝ�
A�p�]J���ä(> fI�N�����e��j�6��C���
���j�6
c����5�UJɛ����IK���b�0���6��¥0av�Ez	� ��7��� �41�]�p��n�nI'U�!�hg�z6����~
��G�0O��Bj	؅�bA^J��p�:�Y��ί(! `�br��
�[��ޑA�JК�?�Ae�U���bU�:�����Mn���@�Npr�.�-�ƹN)�4�.|�}c�0��Z��C���!n��xz�'�T����.��U���o66����F����h��x��`0���fH��>iRc�'�����a,��,��-"��oo�C����v!
|�6D(��aU<Zn���ނȤbV��#OX����?�(?��yjhW�[a� ��c�]��&�K���0�o�erB�/��y �!��<Iu�*�1$����>N�pJAO�?piw0<���㴠l9��،FO�*�7{y��aB�� �x�w|�	#$`�|�֭��E��،wg����M	x�0�h��l�W�Xh�0�/�#E045� �y�nL����i�я˨7>��˵�џ�r�)�!���hN~��=8r��5T��_8�� �R�(            x��\��丱�ɯ��@����5r�q�밫8=�`[��i�fMk(�'���/����f�(��̓'O&FU�V����v__��4^ߖ���4O�u���P���i��M�����J5�R�o�4�r���m����<�/�y�����r����۵��:]Y�zXj͗��R���N���w����\��6T��\��i�ո���������e
�~����P�e����TJ��n�E����*M�iy����V���m�-l�=.Ҫ�+e~�y��w��'��:�K��u��
���/��ն���:E���h�t����Y4&,�_h4n5]߇�LV��?��y��<\߆���]c`��R�L��e���:�p��:�\�eZ�2�a�/��USY2�i�L��w^��y��+=ܴwpL8�������>�������'��(N��)-E�Z�o������l	�7�������`r���S}��Wz���g��5~�:^�Ӹf���B�M�W��rd���m��C�^.��ǿ��=L���
��ܔ�(;�����E-z���e{R�s]
��7�僟��`[9���i�u�E�`�	�����p�=����|�]B~y���v^�nk������8/O���^�S0��o��2�}�7�x�����Ъo����0�;C����Q���V�
�q*�.����Y]×���u��%�����;�_��p��Z�_Bh���0�*_k������ދ���MC��jt �񬯀�r����?^���G���6�
= ���yf��a=�l5��:M��p��r�M�a�,^��	U��p"-~�����_�5�������K����u�������膓���}���{=�2�D��E����9`d@��'8�
n���t������������G(�o����֦�8t>~��r�k��n�-{�®s;����kn���`Z}1Mmte��n��(/�wU��N�ڦ��aa^Q��� ���zs؍	��P��pT���!~�?l�vK=��g����?��<3/X��H��,�J��ߦ�R@�<=c�=^�H蝣ˁ}��`*8�Ţ�+EcE�Ch��[fa�j�w	����h�m
%��x<��$ظ��w���x��������{<��BT�n5���w��u��v��B�ֈح�\�]9?���%"�e�sǽ|�lC$����В  �h�5 �r��/{'�㫞�i[�G�����5be�'-�H�u\��)7����Ԙ j]t��e�7#���[Hv�U��*C�h�$���f�u��X�M�'$I�5������������͑S	 �w�W��C뙣G��5���e�ki,�f<tWC�3�Qj��s�V��!o�%�<v�.�?�Eh�T�D*`���vY ���D吟u�]:&�%�E1�I�v�[��jfK��<��wA �ƒm0
���5�BHSH��4���Gp��2泊�D�I��H���#�!�R�`J�a!��}�eV����m�*G�s߆˲~[n1���BNb��@�{,��R��t�C��+)P֛�~s���2NKpg�)0m�-y
�>D֯��u�?��`ߐ�� [�[��qu�)0[��hT��~�I�R�źt�=�O����pR#���*�QB�)���w5 �$��ry����V��Z�w�!���$�O�k�m��(tj�ck����"������g.0� �G,��EL+��X�����kgV-ȟD�s����e-��Q��!	b�(/+R���p���m�=c�cV}pvX�*'7 �=�ˀ���"bJ.ՄE�	��t^KPg�Pp %�l��*.u�A�)"��^�mL�]����] �?,�����d��\%J̵���R�0��GȒ��^��2b�)GQM	�l�L�w�yy^6l�rr�5��n-{���:�x8c�e�6ޟdUeQ�
"���g�_�$���v/�s��GP�{W��dB��c�Ӧ�j��	�̺�`�.� O�bZ��3[NN} �q���i��98R�u�.y�[���|#�9Slf땔6W������.�˔��a=m�j 9.9?ͬ1F��{Q�<�C��?�.��S����V�Y�j���"l��jmQ[n�[��}��pz+R�19Ä�b����R5t���*^�<�	\Ta}�?�
a1��a��	��QG|neIl��{d{xb�2��lD*�j0��@����k�D��$6�C�����#8���)���%S����P�Goi�\8�*�n17�va�<5/ʋ��k��r�6���=[gDS�����s�X�+qOZ;٧2\�}���?��.c��ʋU-��z�'�`�s�5c���8�kR����KN{���y�M��4�N^�-�����ّ��MQ�v�� /(~I��q�#�c�e��lw��]�-j��zP�lu[җ��2� +f���
� ��-)�e9��y���0�W(�#}V �,��yY�3�UT�5!$J2^��1� /T�b��%5�#CdF>��%Ūa���v"P͞i!�+���9�H����Տ}��<^���h�LD�)bYPO9��1�!�jR�6(�H�[e.�rZ�zQ&��ԁ��+B):#�bD�XcjW���:�X��r����֘�@�q�bA�=���9i;�!���H�����
>�0c�l�]��� /C�m� "[�E��8gUK�w�\p�ØҘ�(�}O����n�t�T�(�#ZJ&`R�m!�Ǐ��A��ra [B�5"�B�E;,q4��M�³��÷�oY���p 	�޶���ql�ȇ��>@�����߳��zV���w� �l	�M����.a���EB�o�2G!mE���I �F=���/���DG!�Rt�������j�5
�M�OuS��xU�i�e:�)��VM3@�����[2�+���0�g+y)y��V=�Bu(arz5�^T�s�:��֐9H��+����U�tܝ�<�b��AY`�^�L�S�oӻ��4@���b�X�jb�����E��R��!@����s��H���:p>�a@w�X8ۜ�G)י��GPS�����e��r��Rׄ4�)+RJu���VShuA^�
��d�-�NB�y�i�&�Δ;�����׈^���JߙMX�t Ӑ6Yt.�CT7"�2EH)T(V��(q��=)��֚� ݰ�{:�������Z6H��*����Ub35�M�m;���X���65�a~6~g�ԥ_
�O�*r�Bu���R3/ـ��J2A�\&.z���F����sK3\��сߞ>~[�]�	�< u��`��ĕ�	gC�VP���a5k�,�\�:�C��O�Ɨ��Lf���590�ֽ?�&j�GՁ��VT`vwM���ՐW��P��vr`�3�8�>=���(V?�Π��ʜ2&��h"�P݆�呝h��m�]�������9�GP�<����F@�� I�qX�炙��P��S?*w��%s�2<����9�C���=c���,�T��N�M/e���6�d*��=�Cu�DXP�,ez>ɑ�BA��A-�K�#H����n�B�z6��$�1���fҝMR�7)���y2��&:8�r��;�1�&I3�"�S/��*#T"�a�Λb~#�W�(v��.I�eƾ��r3Q�o�S6(�d�F�}O5vxZ�R��&Ȋ+�+
I����IH���vd}��<	Z�i�n��g���*�n��̤����xd�SFSQ���"�j�Tf�g!�yB��M��̙p����(ߗo��|COpT�s���.3�����*8���q�!�y&Lҕ:g%2W�a�L`sOk*{����ŎZ;$�hf��<����t	���5�E�ђɸ�c)L�䡤�t�[E�q�c_=hTH:( ��uꭸC)`)ROLUq�#�|��3A������9bG� �)��
NK����B/�k��R�� R����n�D��iyc��㭝]�h+��4 r  j�ưpi�4�n�ջ�9~0���a�������@�J6����F���%�r4�/m���Tn'�eԎD$��^�n�QZĩ)��#�MpX��l��A��QR⢨�co�~h������@B��������4æ�;S�qR���|=��d)Ȣ̮��:� =6����ߪ�n������|�V��H�	�0��D2N��o���=I[B�~�#�p������f�Ƅ�����uӘ������Zf�4��>s���#-�4 ��J�lC�٠��d����'��׶j��>�?^
�4,���9�b�%� ٘�e�Z��[�Y/��u&�6��ܩ�P(�Xo��}*#��j�"����o^2pi�Hy��e�u��SS-�rZ��Q��8w��XL���u'8�à*I���VT�kH^<N��	��7������w\#u҃%	Tl+�T��Z*�B�=`WTk%o 4�����f�}|ɧ�ڤO☿�ɨB\��*䫬��'�<̄��n��'S��d~�3��(+5�  �4�d�v�3O�z���0sŉh�0|�z�H�	�b�6n������A���4��ef�횄��L�yS�)�*�7i�U�vV:h;��n$c��q�=&��#NPq(�l_?���p"�F��0rS���\>�2��0�����9����P��ư�H�H ��hJ��z�i��4��EpiG��T��0�X�%�RSFC�������T^.�D~)�Sg���e�`C�%��ant�уC�5�W�8Ga��Q�B��)ս�k����5*�V?j!1$FM&L�R����?69+��$�NW,���e�~+����
�l�2�i�^�
1*�|;��5l��9�Yf�rq���B��܉8�s�T%��z�L��uW~ݎ�>��_���54�;+���������Q�6�f�����󩆠��+R�E|b;�v)��0NK5���?Ki�7�G�?����q�{SFu�iT�=F8����L��<d��Dp�ʋ;O��X���J�ۏ�$�(bQ+�OS�U�\rNS뗔6��ްٷ�ߗ�Der)&%	/`+RG=ҝ�r�0q�����hKde�R<�Q$�����1A�T�at�F^(q{��m�G�6�?�ʽڎJ�S�4�t�� �����:yj*��P g(�_^d%g�����p3,�Ϳ�hN��M�h�@�<rp\̌�y=um��׶�Ovd�ub�A�*꿶=|��v�пh	P�G���oC�mb�s"y��W�ex�?�Z�'�J�(mf�l�◲	���<��1?f��|L*�EN�POyV�[�gT�
��q�Qޖ��n�`nF�i����o�P��S�ڈH������Au �y��d�B������X�-�]A��e�V�]=��"�؜��:�`Q!����L]���h�0#�����jL�-IjPN���j9�wr�8Ή� ��k6��_�Os5�u.:V�m�x爱�����A�i�N��9�hci�S��2��y_��S�h�'<Z�.�y"�+zYd�hL(��DX��Q',����?�X��VuNpU�i�c��ۦ�X����$��m��%M/�.�w{i����"1����u���-��         �   x�5���1�(�+�m�l�q���}Y%d5�2�]=y${c�j'��ܯ<1� ���i���{]�q��r���A���
�cW��=�P5`W�X�ө@ډo��t�:�!(d�t�'!\=�����n����~u������W� r5�'q�z�]����50         �   x�-���1Cϸ�UIHz��ױ��"#���Z����\��l��0�U.v�FaG�"�QG~HN�L�9�k}�䓠�fp��Jm��MC��k�q�ن?%���G��n�HQ�vd#E=��&3��9)�@��~7�	��[!;��P��:OO\��/��{'�F�W����?5�         �   x�%��E1B�R̛��c/��:&�L�#����na�5�Cj;�<��pL#Ǔ˪�m��!q$w�@�fNh%�Q���XQ��ˊ�ڼ{L-拣x�����Gs6�G��U��w��8���1ھM2�r�I|? �(�     