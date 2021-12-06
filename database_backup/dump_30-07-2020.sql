--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE shop;




--
-- Drop roles
--

DROP ROLE root;


--
-- Roles
--

CREATE ROLE root;
ALTER ROLE root WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5e94551060e485c3bfb473164f5f089a3';






--
-- Databases
--

--
-- Database "template1" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO root;

\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: root
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: root
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- Database "postgres" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO root;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: root
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- Database "shop" dump
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3 (Debian 12.3-1.pgdg100+1)
-- Dumped by pg_dump version 12.3 (Debian 12.3-1.pgdg100+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: shop; Type: DATABASE; Schema: -; Owner: root
--

CREATE DATABASE shop WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE shop OWNER TO root;

\connect shop

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: admin_interface_theme; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.admin_interface_theme (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    active boolean NOT NULL,
    title character varying(50) NOT NULL,
    title_visible boolean NOT NULL,
    logo character varying(100) NOT NULL,
    logo_visible boolean NOT NULL,
    css_header_background_color character varying(10) NOT NULL,
    title_color character varying(10) NOT NULL,
    css_header_text_color character varying(10) NOT NULL,
    css_header_link_color character varying(10) NOT NULL,
    css_header_link_hover_color character varying(10) NOT NULL,
    css_module_background_color character varying(10) NOT NULL,
    css_module_text_color character varying(10) NOT NULL,
    css_module_link_color character varying(10) NOT NULL,
    css_module_link_hover_color character varying(10) NOT NULL,
    css_module_rounded_corners boolean NOT NULL,
    css_generic_link_color character varying(10) NOT NULL,
    css_generic_link_hover_color character varying(10) NOT NULL,
    css_save_button_background_color character varying(10) NOT NULL,
    css_save_button_background_hover_color character varying(10) NOT NULL,
    css_save_button_text_color character varying(10) NOT NULL,
    css_delete_button_background_color character varying(10) NOT NULL,
    css_delete_button_background_hover_color character varying(10) NOT NULL,
    css_delete_button_text_color character varying(10) NOT NULL,
    css text NOT NULL,
    list_filter_dropdown boolean NOT NULL,
    related_modal_active boolean NOT NULL,
    related_modal_background_color character varying(10) NOT NULL,
    related_modal_rounded_corners boolean NOT NULL,
    logo_color character varying(10) NOT NULL,
    recent_actions_visible boolean NOT NULL,
    favicon character varying(100) NOT NULL,
    related_modal_background_opacity character varying(5) NOT NULL,
    env_name character varying(50) NOT NULL,
    env_visible_in_header boolean NOT NULL,
    env_color character varying(10) NOT NULL,
    env_visible_in_favicon boolean NOT NULL,
    related_modal_close_button_visible boolean NOT NULL,
    language_chooser_active boolean NOT NULL,
    language_chooser_display character varying(10) NOT NULL
);


ALTER TABLE public.admin_interface_theme OWNER TO root;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.admin_interface_theme_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_interface_theme_id_seq OWNER TO root;

--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.admin_interface_theme_id_seq OWNED BY public.admin_interface_theme.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO root;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO root;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO root;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO root;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO root;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO root;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO root;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO root;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO root;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO root;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO root;

--
-- Name: shop_categorie; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_categorie (
    category_id integer NOT NULL,
    title character varying(120) NOT NULL,
    slug character varying(50) NOT NULL,
    image character varying(100) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    parent_id integer
);


ALTER TABLE public.shop_categorie OWNER TO root;

--
-- Name: shop_categorie_category_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_categorie_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_categorie_category_id_seq OWNER TO root;

--
-- Name: shop_categorie_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_categorie_category_id_seq OWNED BY public.shop_categorie.category_id;


--
-- Name: shop_contact; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_contact (
    contact_id integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(250) NOT NULL,
    phone character varying(12) NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.shop_contact OWNER TO root;

--
-- Name: shop_contact_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_contact_contact_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_contact_contact_id_seq OWNER TO root;

--
-- Name: shop_contact_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_contact_contact_id_seq OWNED BY public.shop_contact.contact_id;


--
-- Name: shop_countrie; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_countrie (
    id integer NOT NULL,
    sortname character varying(200) NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    phonecode integer NOT NULL
);


ALTER TABLE public.shop_countrie OWNER TO root;

--
-- Name: shop_countrie_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_countrie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_countrie_id_seq OWNER TO root;

--
-- Name: shop_countrie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_countrie_id_seq OWNED BY public.shop_countrie.id;


--
-- Name: shop_currencyconversationrate; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_currencyconversationrate (
    conversation_id integer NOT NULL,
    currency_code_from character varying(5) NOT NULL,
    currency_code_to character varying(20) NOT NULL,
    rate double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.shop_currencyconversationrate OWNER TO root;

--
-- Name: shop_currencyconversationrate_conversation_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_currencyconversationrate_conversation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_currencyconversationrate_conversation_id_seq OWNER TO root;

--
-- Name: shop_currencyconversationrate_conversation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_currencyconversationrate_conversation_id_seq OWNED BY public.shop_currencyconversationrate.conversation_id;


--
-- Name: shop_customer; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_customer (
    customer_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    gender character varying(20) NOT NULL,
    username character varying(200) NOT NULL,
    email_address character varying(200) NOT NULL,
    mobile_no character varying(15) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    password character varying(50) NOT NULL
);


ALTER TABLE public.shop_customer OWNER TO root;

--
-- Name: shop_customeraddres; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_customeraddres (
    address_id integer NOT NULL,
    name character varying(100) NOT NULL,
    mobile character varying(15) NOT NULL,
    alternative_mobile character varying(15) NOT NULL,
    pincode character varying(10) NOT NULL,
    address text NOT NULL,
    city character varying(50) NOT NULL,
    landmark character varying(50) NOT NULL,
    address_type character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    country_id integer NOT NULL,
    customer_id integer NOT NULL,
    state_id integer NOT NULL,
    default_address boolean NOT NULL
);


ALTER TABLE public.shop_customeraddres OWNER TO root;

--
-- Name: shop_customer_addres_address_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_customer_addres_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_customer_addres_address_id_seq OWNER TO root;

--
-- Name: shop_customer_addres_address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_customer_addres_address_id_seq OWNED BY public.shop_customeraddres.address_id;


--
-- Name: shop_customer_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_customer_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_customer_customer_id_seq OWNER TO root;

--
-- Name: shop_customer_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_customer_customer_id_seq OWNED BY public.shop_customer.customer_id;


--
-- Name: shop_customerorder; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_customerorder (
    order_id integer NOT NULL,
    payment_method character varying(15) NOT NULL,
    product_total double precision NOT NULL,
    product_gst_amount double precision NOT NULL,
    product_payable_amount double precision NOT NULL,
    shipping_charge integer NOT NULL,
    product_currency character varying(20) NOT NULL,
    payment_status character varying(15) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    address_id integer NOT NULL,
    customer_id integer NOT NULL,
    order_latest_status character varying(15) NOT NULL,
    expected_date date
);


ALTER TABLE public.shop_customerorder OWNER TO root;

--
-- Name: shop_customer_order_order_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_customer_order_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_customer_order_order_id_seq OWNER TO root;

--
-- Name: shop_customer_order_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_customer_order_order_id_seq OWNED BY public.shop_customerorder.order_id;


--
-- Name: shop_customerreview; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_customerreview (
    "Review_id" integer NOT NULL,
    rating integer NOT NULL,
    review character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    product_id integer NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    image character varying(100) NOT NULL,
    status boolean NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.shop_customerreview OWNER TO root;

--
-- Name: shop_customer_review_Review_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public."shop_customer_review_Review_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."shop_customer_review_Review_id_seq" OWNER TO root;

--
-- Name: shop_customer_review_Review_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public."shop_customer_review_Review_id_seq" OWNED BY public.shop_customerreview."Review_id";


--
-- Name: shop_customerwishlist; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_customerwishlist (
    wishlist_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.shop_customerwishlist OWNER TO root;

--
-- Name: shop_customer_wishlist_wishlist_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_customer_wishlist_wishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_customer_wishlist_wishlist_id_seq OWNER TO root;

--
-- Name: shop_customer_wishlist_wishlist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_customer_wishlist_wishlist_id_seq OWNED BY public.shop_customerwishlist.wishlist_id;


--
-- Name: shop_homebanner; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_homebanner (
    banner_id integer NOT NULL,
    title character varying(50) NOT NULL,
    banner_img character varying(100) NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.shop_homebanner OWNER TO root;

--
-- Name: shop_homebanner_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_homebanner_banner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_homebanner_banner_id_seq OWNER TO root;

--
-- Name: shop_homebanner_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_homebanner_banner_id_seq OWNED BY public.shop_homebanner.banner_id;


--
-- Name: shop_orderitem; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_orderitem (
    item_id integer NOT NULL,
    quantity integer NOT NULL,
    product_price double precision NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id integer NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.shop_orderitem OWNER TO root;

--
-- Name: shop_orderitem_item_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_orderitem_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_orderitem_item_id_seq OWNER TO root;

--
-- Name: shop_orderitem_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_orderitem_item_id_seq OWNED BY public.shop_orderitem.item_id;


--
-- Name: shop_orderstatus; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_orderstatus (
    order_status_id integer NOT NULL,
    order_status character varying(20) NOT NULL,
    description character varying(250) NOT NULL,
    send_email_status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    order_id integer NOT NULL
);


ALTER TABLE public.shop_orderstatus OWNER TO root;

--
-- Name: shop_orderstatus_order_status_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_orderstatus_order_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_orderstatus_order_status_id_seq OWNER TO root;

--
-- Name: shop_orderstatus_order_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_orderstatus_order_status_id_seq OWNED BY public.shop_orderstatus.order_status_id;


--
-- Name: shop_product; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_product (
    product_id integer NOT NULL,
    product_name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    quantity integer NOT NULL,
    no_of_sold_product integer NOT NULL,
    featured_product boolean NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    category_id integer NOT NULL,
    description text NOT NULL,
    product_details text NOT NULL,
    avialable_on character varying(20) NOT NULL,
    search_tag text NOT NULL,
    seller_id_id integer
);


ALTER TABLE public.shop_product OWNER TO root;

--
-- Name: shop_prdoucts_product_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_prdoucts_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_prdoucts_product_id_seq OWNER TO root;

--
-- Name: shop_prdoucts_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_prdoucts_product_id_seq OWNED BY public.shop_product.product_id;


--
-- Name: shop_product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_product_product_id_seq OWNER TO root;

--
-- Name: shop_product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_product_product_id_seq OWNED BY public.shop_product.product_id;


--
-- Name: shop_productimage; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_productimage (
    id integer NOT NULL,
    product_image character varying(100) NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.shop_productimage OWNER TO root;

--
-- Name: shop_productimage_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_productimage_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_productimage_id_seq OWNER TO root;

--
-- Name: shop_productimage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_productimage_id_seq OWNED BY public.shop_productimage.id;


--
-- Name: shop_productprice; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_productprice (
    price_id integer NOT NULL,
    old_price double precision NOT NULL,
    price double precision NOT NULL,
    price_currency_code character varying(20) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    product_id integer NOT NULL,
    old_currency_rate double precision NOT NULL
);


ALTER TABLE public.shop_productprice OWNER TO root;

--
-- Name: shop_productprice_price_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_productprice_price_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_productprice_price_id_seq OWNER TO root;

--
-- Name: shop_productprice_price_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_productprice_price_id_seq OWNED BY public.shop_productprice.price_id;


--
-- Name: shop_state; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.shop_state (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    country_id integer NOT NULL
);


ALTER TABLE public.shop_state OWNER TO root;

--
-- Name: shop_state_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.shop_state_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shop_state_id_seq OWNER TO root;

--
-- Name: shop_state_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.shop_state_id_seq OWNED BY public.shop_state.id;


--
-- Name: subscribers_newsletter; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.subscribers_newsletter (
    newsletter_id integer NOT NULL,
    email_address character varying(255) NOT NULL,
    verify_token character varying(255),
    is_verified boolean NOT NULL,
    status boolean NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.subscribers_newsletter OWNER TO root;

--
-- Name: subscribers_newsletter_newsletter_id_seq; Type: SEQUENCE; Schema: public; Owner: root
--

CREATE SEQUENCE public.subscribers_newsletter_newsletter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.subscribers_newsletter_newsletter_id_seq OWNER TO root;

--
-- Name: subscribers_newsletter_newsletter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: root
--

ALTER SEQUENCE public.subscribers_newsletter_newsletter_id_seq OWNED BY public.subscribers_newsletter.newsletter_id;


--
-- Name: admin_interface_theme id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_interface_theme ALTER COLUMN id SET DEFAULT nextval('public.admin_interface_theme_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: shop_categorie category_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_categorie ALTER COLUMN category_id SET DEFAULT nextval('public.shop_categorie_category_id_seq'::regclass);


--
-- Name: shop_contact contact_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_contact ALTER COLUMN contact_id SET DEFAULT nextval('public.shop_contact_contact_id_seq'::regclass);


--
-- Name: shop_countrie id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_countrie ALTER COLUMN id SET DEFAULT nextval('public.shop_countrie_id_seq'::regclass);


--
-- Name: shop_currencyconversationrate conversation_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_currencyconversationrate ALTER COLUMN conversation_id SET DEFAULT nextval('public.shop_currencyconversationrate_conversation_id_seq'::regclass);


--
-- Name: shop_customer customer_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customer ALTER COLUMN customer_id SET DEFAULT nextval('public.shop_customer_customer_id_seq'::regclass);


--
-- Name: shop_customeraddres address_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customeraddres ALTER COLUMN address_id SET DEFAULT nextval('public.shop_customer_addres_address_id_seq'::regclass);


--
-- Name: shop_customerorder order_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerorder ALTER COLUMN order_id SET DEFAULT nextval('public.shop_customer_order_order_id_seq'::regclass);


--
-- Name: shop_customerreview Review_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerreview ALTER COLUMN "Review_id" SET DEFAULT nextval('public."shop_customer_review_Review_id_seq"'::regclass);


--
-- Name: shop_customerwishlist wishlist_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerwishlist ALTER COLUMN wishlist_id SET DEFAULT nextval('public.shop_customer_wishlist_wishlist_id_seq'::regclass);


--
-- Name: shop_homebanner banner_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_homebanner ALTER COLUMN banner_id SET DEFAULT nextval('public.shop_homebanner_banner_id_seq'::regclass);


--
-- Name: shop_orderitem item_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderitem ALTER COLUMN item_id SET DEFAULT nextval('public.shop_orderitem_item_id_seq'::regclass);


--
-- Name: shop_orderstatus order_status_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderstatus ALTER COLUMN order_status_id SET DEFAULT nextval('public.shop_orderstatus_order_status_id_seq'::regclass);


--
-- Name: shop_product product_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_product ALTER COLUMN product_id SET DEFAULT nextval('public.shop_prdoucts_product_id_seq'::regclass);


--
-- Name: shop_productimage id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productimage ALTER COLUMN id SET DEFAULT nextval('public.shop_productimage_id_seq'::regclass);


--
-- Name: shop_productprice price_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productprice ALTER COLUMN price_id SET DEFAULT nextval('public.shop_productprice_price_id_seq'::regclass);


--
-- Name: shop_state id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_state ALTER COLUMN id SET DEFAULT nextval('public.shop_state_id_seq'::regclass);


--
-- Name: subscribers_newsletter newsletter_id; Type: DEFAULT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscribers_newsletter ALTER COLUMN newsletter_id SET DEFAULT nextval('public.subscribers_newsletter_newsletter_id_seq'::regclass);


--
-- Data for Name: admin_interface_theme; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.admin_interface_theme (id, name, active, title, title_visible, logo, logo_visible, css_header_background_color, title_color, css_header_text_color, css_header_link_color, css_header_link_hover_color, css_module_background_color, css_module_text_color, css_module_link_color, css_module_link_hover_color, css_module_rounded_corners, css_generic_link_color, css_generic_link_hover_color, css_save_button_background_color, css_save_button_background_hover_color, css_save_button_text_color, css_delete_button_background_color, css_delete_button_background_hover_color, css_delete_button_text_color, css, list_filter_dropdown, related_modal_active, related_modal_background_color, related_modal_rounded_corners, logo_color, recent_actions_visible, favicon, related_modal_background_opacity, env_name, env_visible_in_header, env_color, env_visible_in_favicon, related_modal_close_button_visible, language_chooser_active, language_chooser_display) FROM stdin;
3	Deal With Us	t	Admin Panel	t		f	#0C4B33	#F5DD5D	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF		f	t	#000000	t	#FFFFFF	t		0.3	Deal With Us	t	#E74C3C	t	t	t	code
1	Django	f	Django administration	t		t	#0C4B33	#F5DD5D	#44B78B	#FFFFFF	#C9F0DD	#44B78B	#FFFFFF	#FFFFFF	#C9F0DD	t	#0C3C26	#156641	#0C4B33	#0C3C26	#FFFFFF	#BA2121	#A41515	#FFFFFF		f	t	#000000	t	#FFFFFF	t		0.3		t	#E74C3C	t	t	t	code
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group (id, name) FROM stdin;
1	Admin
2	Seller
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	1	49
50	1	50
51	1	51
52	1	52
53	1	53
54	1	54
55	1	55
56	1	56
57	1	57
58	1	58
59	1	59
60	1	60
61	1	61
62	1	62
63	1	63
64	1	64
65	1	65
66	1	66
67	1	67
68	1	68
69	1	69
70	1	70
71	1	71
72	1	72
73	1	73
74	1	74
75	1	75
76	1	76
77	1	77
78	1	78
79	1	79
80	1	80
81	1	81
82	1	82
83	1	83
84	1	84
85	1	85
86	1	86
87	1	87
88	1	88
89	1	89
90	1	90
91	1	91
92	1	92
93	1	93
94	1	94
95	1	95
96	1	96
97	1	97
98	1	98
99	1	99
100	1	100
101	1	101
102	1	102
103	1	103
104	1	104
105	1	105
106	1	106
107	1	107
108	1	108
109	1	109
110	1	110
111	1	111
112	1	112
113	1	113
114	1	114
115	1	115
116	1	116
118	2	28
119	2	29
120	2	30
121	2	32
122	2	37
123	2	38
124	2	40
125	2	44
126	2	48
127	2	60
128	2	69
129	2	70
130	2	72
131	2	74
132	2	76
133	2	80
134	2	82
135	2	84
136	2	88
137	2	92
138	2	96
139	2	98
140	2	100
141	2	104
142	2	108
143	2	112
144	2	116
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add categorie	7	add_categorie
26	Can change categorie	7	change_categorie
27	Can delete categorie	7	delete_categorie
28	Can view categorie	7	view_categorie
29	Can add product	8	add_product
30	Can change product	8	change_product
31	Can delete product	8	delete_product
32	Can view product	8	view_product
33	Can add home banner	9	add_homebanner
34	Can change home banner	9	change_homebanner
35	Can delete home banner	9	delete_homebanner
36	Can view home banner	9	view_homebanner
37	Can add product image	10	add_productimage
38	Can change product image	10	change_productimage
39	Can delete product image	10	delete_productimage
40	Can view product image	10	view_productimage
41	Can add customer_ addres	11	add_customer_addres
42	Can change customer_ addres	11	change_customer_addres
43	Can delete customer_ addres	11	delete_customer_addres
44	Can view customer_ addres	11	view_customer_addres
45	Can add customer	12	add_customer
46	Can change customer	12	change_customer
47	Can delete customer	12	delete_customer
48	Can view customer	12	view_customer
49	Can add state	13	add_state
50	Can change state	13	change_state
51	Can delete state	13	delete_state
52	Can view state	13	view_state
53	Can add customer_ wish list	14	add_customer_wishlist
54	Can change customer_ wish list	14	change_customer_wishlist
55	Can delete customer_ wish list	14	delete_customer_wishlist
56	Can view customer_ wish list	14	view_customer_wishlist
57	Can add customer_ review	15	add_customer_review
58	Can change customer_ review	15	change_customer_review
59	Can delete customer_ review	15	delete_customer_review
60	Can view customer_ review	15	view_customer_review
61	Can add countrie	16	add_countrie
62	Can change countrie	16	change_countrie
63	Can delete countrie	16	delete_countrie
64	Can view countrie	16	view_countrie
65	Can add currency conversation rate	17	add_currencyconversationrate
66	Can change currency conversation rate	17	change_currencyconversationrate
67	Can delete currency conversation rate	17	delete_currencyconversationrate
68	Can view currency conversation rate	17	view_currencyconversationrate
69	Can add product price	18	add_productprice
70	Can change product price	18	change_productprice
71	Can delete product price	18	delete_productprice
72	Can view product price	18	view_productprice
73	Can add customer_ order	19	add_customer_order
74	Can change customer_ order	19	change_customer_order
75	Can delete customer_ order	19	delete_customer_order
76	Can view customer_ order	19	view_customer_order
77	Can add customer addres	11	add_customeraddres
78	Can change customer addres	11	change_customeraddres
79	Can delete customer addres	11	delete_customeraddres
80	Can view customer addres	11	view_customeraddres
81	Can add customer order	19	add_customerorder
82	Can change customer order	19	change_customerorder
83	Can delete customer order	19	delete_customerorder
84	Can view customer order	19	view_customerorder
85	Can add customer review	15	add_customerreview
86	Can change customer review	15	change_customerreview
87	Can delete customer review	15	delete_customerreview
88	Can view customer review	15	view_customerreview
89	Can add customer wish list	14	add_customerwishlist
90	Can change customer wish list	14	change_customerwishlist
91	Can delete customer wish list	14	delete_customerwishlist
92	Can view customer wish list	14	view_customerwishlist
93	Can add order item	20	add_orderitem
94	Can change order item	20	change_orderitem
95	Can delete order item	20	delete_orderitem
96	Can view order item	20	view_orderitem
97	Can add order status	21	add_orderstatus
98	Can change order status	21	change_orderstatus
99	Can delete order status	21	delete_orderstatus
100	Can view order status	21	view_orderstatus
101	Can add contact	22	add_contact
102	Can change contact	22	change_contact
103	Can delete contact	22	delete_contact
104	Can view contact	22	view_contact
105	Can add newsletter	23	add_newsletter
106	Can change newsletter	23	change_newsletter
107	Can delete newsletter	23	delete_newsletter
108	Can view newsletter	23	view_newsletter
109	Can add subscibers	23	add_subscibers
110	Can change subscibers	23	change_subscibers
111	Can delete subscibers	23	delete_subscibers
112	Can view subscibers	23	view_subscibers
113	Can add newsletter	24	add_newsletter
114	Can change newsletter	24	change_newsletter
115	Can delete newsletter	24	delete_newsletter
116	Can view newsletter	24	view_newsletter
117	Can add Theme	25	add_theme
118	Can change Theme	25	change_theme
119	Can delete Theme	25	delete_theme
120	Can view Theme	25	view_theme
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$180000$TS3v74pqkWJI$IZKWV3qCwny0f/o4mUXsNkxZgvan5f7XAJFlk8mIQY8=	2020-07-29 07:15:28.394693+00	f	dp	Ashish	Kumar	dp@gmail.com	t	t	2020-07-29 07:14:10+00
3	pbkdf2_sha256$180000$9vx6OhBTgK6i$/MmPeOAUQB3VB81FhIGOmsatHaNdEDePop+gCa5+mHY=	\N	f	Shivani@123	shivani	raiwani	shivani@gmail.com	f	t	2020-07-29 07:55:01.679594+00
4	pbkdf2_sha256$180000$w91VkeA6XzJR$hKeSh81t2ESEP5sDgRAvPYl5B7jaEuFXccylCeJ8yPk=	2020-07-30 09:33:26.640398+00	f	durga@gmail.com	Ashish	Kumar	durga@gmail.com	t	t	2020-07-30 08:07:46+00
1	pbkdf2_sha256$180000$2uvnpiLRPwfb$qXu2W0KTbsQPo9Hy/u8ak/PVyYPgfnD70LvvfVuZ98o=	2020-07-30 09:47:00+00	t	admin	Deal With Us		admin@gmail.com	t	t	2020-07-08 06:07:45+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	1	1
2	2	2
3	4	2
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2020-07-08 06:08:40.749641+00	1	HomeBanner object (1)	1	[{"added": {}}]	8	1
2	2020-07-08 06:08:52.132328+00	2	HomeBanner object (2)	1	[{"added": {}}]	8	1
3	2020-07-08 06:09:01.050135+00	3	HomeBanner object (3)	1	[{"added": {}}]	8	1
4	2020-07-08 06:09:18.663374+00	4	HomeBanner object (4)	1	[{"added": {}}]	8	1
5	2020-07-08 06:09:27.538579+00	5	HomeBanner object (5)	1	[{"added": {}}]	8	1
6	2020-07-08 06:09:39.343727+00	5	HomeBanner object (5)	2	[{"changed": {"fields": ["Banner img"]}}]	8	1
7	2020-07-08 06:12:33.077312+00	1	Categorie object (1)	1	[{"added": {}}]	9	1
8	2020-07-08 06:15:44.728185+00	2	Computers	1	[{"added": {}}]	9	1
9	2020-07-08 06:16:23.395405+00	3	Mouse	1	[{"added": {}}]	9	1
10	2020-07-08 06:18:25.318466+00	3	Grocery	2	[{"changed": {"fields": ["Title", "Slug", "Parent", "Image"]}}]	9	1
11	2020-07-08 06:19:44.449715+00	4	Creams	1	[{"added": {}}]	9	1
12	2020-07-08 06:22:01.43861+00	5	Powder	1	[{"added": {}}]	9	1
13	2020-07-08 06:23:11.12831+00	1	Product object (1)	1	[{"added": {}}]	7	1
14	2020-07-08 06:24:12.628783+00	2	Product object (2)	1	[{"added": {}}]	7	1
15	2020-07-08 06:25:57.462945+00	3	Product object (3)	1	[{"added": {}}]	7	1
16	2020-07-09 10:37:59.504845+00	1	Electronics	2	[]	9	1
17	2020-07-09 10:38:06.470411+00	2	Computers	2	[]	9	1
18	2020-07-09 10:38:22.116649+00	4	Creams	2	[]	9	1
19	2020-07-09 11:38:09.938559+00	5	Powder	2	[]	9	1
20	2020-07-09 11:38:21.090498+00	4	Creams	2	[]	9	1
21	2020-07-09 11:38:37.502189+00	3	Grocery	2	[]	9	1
22	2020-07-09 11:39:10.53755+00	6	Laptop	1	[{"added": {}}]	9	1
23	2020-07-09 12:05:43.281535+00	6	Laptop	2	[{"changed": {"fields": ["Parent"]}}]	9	1
24	2020-07-09 12:07:47.116617+00	6	Laptop	2	[{"changed": {"fields": ["Parent", "Image"]}}]	9	1
25	2020-07-09 12:12:55.994244+00	6	Mobile Phones	2	[{"changed": {"fields": ["Title", "Slug", "Image"]}}]	9	1
26	2020-07-09 12:16:02.907021+00	7	Television Sets	1	[{"added": {}}]	9	1
27	2020-07-09 12:17:18.383201+00	8	DSLR Cameras	1	[{"added": {}}]	9	1
28	2020-07-09 12:20:06.36947+00	9	Projectors	1	[{"added": {}}]	9	1
29	2020-07-09 12:28:15.963029+00	4	Bakery and Bread	2	[{"changed": {"fields": ["Title", "Slug", "Image"]}}]	9	1
30	2020-07-09 12:30:05.926457+00	5	Pasta and Rice	2	[{"changed": {"fields": ["Title", "Slug", "Image"]}}]	9	1
31	2020-07-09 12:32:18.066578+00	10	Cereals and Breakfast Foods	1	[{"added": {}}]	9	1
32	2020-07-09 12:34:33.570407+00	11	Fashion	1	[{"added": {}}]	9	1
33	2020-07-09 12:36:37.4251+00	12	Men's	1	[{"added": {}}]	9	1
34	2020-07-09 12:38:17.812784+00	13	Women's	1	[{"added": {}}]	9	1
35	2020-07-09 12:39:32.848498+00	14	Children's	1	[{"added": {}}]	9	1
36	2020-07-09 12:41:06.208145+00	15	Accessories	1	[{"added": {}}]	9	1
37	2020-07-09 12:42:04.897771+00	16	Footwear	1	[{"added": {}}]	9	1
38	2020-07-09 12:43:05.895213+00	17	Books	1	[{"added": {}}]	9	1
39	2020-07-09 12:45:27.013636+00	18	Adventure	1	[{"added": {}}]	9	1
40	2020-07-09 12:48:10.568423+00	19	Horror	1	[{"added": {}}]	9	1
41	2020-07-09 12:48:15.308376+00	17	Books	2	[{"changed": {"fields": ["Parent"]}}]	9	1
42	2020-07-09 12:49:36.169224+00	17	Books	2	[{"changed": {"fields": ["Parent"]}}]	9	1
43	2020-07-09 12:50:58.098554+00	20	Romantic	1	[{"added": {}}]	9	1
44	2020-07-09 12:53:29.221627+00	21	Children's	1	[{"added": {}}]	9	1
45	2020-07-09 12:55:30.446734+00	22	Others	1	[{"added": {}}]	9	1
46	2020-07-09 13:03:10.941988+00	5	HomeBanner object (5)	3		8	1
47	2020-07-09 13:03:10.948946+00	4	HomeBanner object (4)	3		8	1
48	2020-07-09 13:03:10.951552+00	3	HomeBanner object (3)	3		8	1
49	2020-07-09 13:03:10.955957+00	2	HomeBanner object (2)	3		8	1
50	2020-07-09 13:03:10.958653+00	1	HomeBanner object (1)	3		8	1
51	2020-07-09 13:03:54.681527+00	6	HomeBanner object (6)	1	[{"added": {}}]	8	1
52	2020-07-09 13:04:17.21244+00	7	HomeBanner object (7)	1	[{"added": {}}]	8	1
53	2020-07-09 13:04:36.029528+00	8	HomeBanner object (8)	1	[{"added": {}}]	8	1
54	2020-07-09 13:05:21.356117+00	9	HomeBanner object (9)	1	[{"added": {}}]	8	1
55	2020-07-09 13:07:27.459652+00	9	HomeBanner object (9)	3		8	1
56	2020-07-09 13:08:59.920858+00	6	HomeBanner object (6)	3		8	1
57	2020-07-09 13:09:19.007614+00	10	HomeBanner object (10)	1	[{"added": {}}]	8	1
58	2020-07-10 05:57:43.823782+00	22	Others	2	[]	9	1
59	2020-07-10 06:26:59.016516+00	21	Children's	2	[{"changed": {"fields": ["Slug"]}}]	9	1
60	2020-07-10 06:59:36.714822+00	1	Electronics	2	[{"changed": {"fields": ["Image"]}}]	9	1
61	2020-07-10 07:01:00.42547+00	3	Grocery	2	[{"changed": {"fields": ["Image"]}}]	9	1
62	2020-07-10 07:02:12.971899+00	11	Fashion	2	[{"changed": {"fields": ["Image"]}}]	9	1
63	2020-07-10 07:03:54.086857+00	22	Others	2	[{"changed": {"fields": ["Image"]}}]	9	1
64	2020-07-10 07:05:10.881138+00	17	Books	2	[{"changed": {"fields": ["Image"]}}]	9	1
65	2020-07-10 07:06:53.419958+00	1	Electronics	2	[{"changed": {"fields": ["Image"]}}]	9	1
66	2020-07-10 07:16:12.466147+00	23	Sports	1	[{"added": {}}]	9	1
67	2020-07-10 07:18:18.493714+00	24	Badminton	1	[{"added": {}}]	9	1
68	2020-07-10 08:00:30.431766+00	2	Product object (2)	2	[{"changed": {"fields": ["Category"]}}]	7	1
69	2020-07-10 08:00:43.683061+00	1	Product object (1)	2	[{"changed": {"fields": ["Category"]}}]	7	1
70	2020-07-10 08:01:07.815642+00	2	Product object (2)	2	[{"changed": {"fields": ["Category"]}}]	7	1
71	2020-07-10 08:02:51.661284+00	3	Product object (3)	2	[{"changed": {"fields": ["Featured product"]}}]	7	1
72	2020-07-10 12:42:39.30341+00	1	Product object (1)	2	[{"changed": {"fields": ["Price"]}}]	7	1
73	2020-07-10 12:47:58.42086+00	3	Product object (3)	2	[{"changed": {"fields": ["Image", "Featured product"]}}]	7	1
74	2020-07-10 12:51:45.998656+00	2	Product object (2)	2	[{"changed": {"fields": ["Image"]}}]	7	1
75	2020-07-10 12:53:04.244739+00	2	Product object (2)	2	[{"changed": {"fields": ["Image"]}}]	7	1
76	2020-07-10 12:54:29.338647+00	2	Product object (2)	2	[{"changed": {"fields": ["Image"]}}]	7	1
77	2020-07-10 12:55:28.220683+00	2	Product object (2)	2	[{"changed": {"fields": ["Image"]}}]	7	1
78	2020-07-10 12:59:22.867756+00	1	Product object (1)	2	[{"changed": {"fields": ["Image"]}}]	7	1
79	2020-07-10 13:00:03.535275+00	1	Product object (1)	2	[{"changed": {"fields": ["Image"]}}]	7	1
80	2020-07-10 13:03:12.76518+00	5	Product object (5)	1	[{"added": {}}]	7	1
81	2020-07-10 13:05:01.441016+00	3	Product object (3)	2	[{"changed": {"fields": ["Image"]}}]	7	1
82	2020-07-11 06:38:03.11494+00	6	Product object (6)	1	[{"added": {}}]	8	1
83	2020-07-11 06:39:37.115183+00	7	Product object (7)	1	[{"added": {}}]	8	1
84	2020-07-11 06:39:53.122407+00	7	Product object (7)	2	[{"changed": {"fields": ["Featured product"]}}]	8	1
85	2020-07-11 06:41:12.680172+00	8	Product object (8)	1	[{"added": {}}]	8	1
86	2020-07-11 06:42:21.096718+00	9	Product object (9)	1	[{"added": {}}]	8	1
87	2020-07-11 06:44:11.829527+00	9	Product object (9)	2	[{"changed": {"fields": ["Old price"]}}]	8	1
88	2020-07-11 06:44:32.307155+00	9	Product object (9)	2	[{"changed": {"fields": ["Old price", "Price"]}}]	8	1
89	2020-07-11 06:44:46.629533+00	8	Product object (8)	2	[{"changed": {"fields": ["Old price"]}}]	8	1
90	2020-07-11 06:44:58.730816+00	6	Product object (6)	2	[{"changed": {"fields": ["Old price"]}}]	8	1
91	2020-07-13 12:47:01.640778+00	9	Product object (9)	2	[{"changed": {"fields": ["Product name", "Old price", "Price", "Description", "Product details"]}}, {"added": {"name": "product image", "object": "ProductImage object (1)"}}, {"added": {"name": "product image", "object": "ProductImage object (2)"}}, {"added": {"name": "product image", "object": "ProductImage object (3)"}}, {"added": {"name": "product image", "object": "ProductImage object (4)"}}]	8	1
92	2020-07-13 13:33:10.418928+00	7	Product object (7)	2	[{"changed": {"fields": ["Description", "Product details"]}}, {"added": {"name": "product image", "object": "ProductImage object (5)"}}, {"added": {"name": "product image", "object": "ProductImage object (6)"}}, {"added": {"name": "product image", "object": "ProductImage object (7)"}}, {"added": {"name": "product image", "object": "ProductImage object (8)"}}]	8	1
93	2020-07-13 13:38:26.2138+00	8	Product object (8)	2	[{"changed": {"fields": ["Product name", "Slug", "Description", "Product details"]}}]	8	1
94	2020-07-13 13:39:25.838867+00	8	Product object (8)	2	[{"changed": {"fields": ["Product name"]}}, {"added": {"name": "product image", "object": "ProductImage object (9)"}}, {"added": {"name": "product image", "object": "ProductImage object (10)"}}, {"added": {"name": "product image", "object": "ProductImage object (11)"}}, {"added": {"name": "product image", "object": "ProductImage object (12)"}}, {"added": {"name": "product image", "object": "ProductImage object (13)"}}]	8	1
95	2020-07-13 13:47:40.002474+00	6	Product object (6)	2	[{"changed": {"fields": ["Product name", "Category", "Slug", "Description", "Product details"]}}, {"added": {"name": "product image", "object": "ProductImage object (14)"}}, {"added": {"name": "product image", "object": "ProductImage object (15)"}}, {"added": {"name": "product image", "object": "ProductImage object (16)"}}]	8	1
96	2020-07-17 06:19:41.606317+00	9	Dell Pentium Quad Core (4 GB DDR3/1 TB/Ubuntu/19.5	2	[{"changed": {"fields": ["Avialable on"]}}, {"added": {"name": "product price", "object": "ProductPrice object (1)"}}, {"added": {"name": "product price", "object": "ProductPrice object (2)"}}, {"added": {"name": "product price", "object": "ProductPrice object (3)"}}, {"added": {"name": "product price", "object": "ProductPrice object (4)"}}, {"added": {"name": "product price", "object": "ProductPrice object (5)"}}]	8	1
97	2020-07-17 06:20:49.313169+00	8	LCS-8075 DAY & DATE FUNCTIONING Analog Watch	2	[{"changed": {"fields": ["Avialable on"]}}, {"added": {"name": "product price", "object": "ProductPrice object (6)"}}]	8	1
98	2020-07-17 06:22:47.641885+00	7	Fair & Lovely	2	[{"changed": {"fields": ["Avialable on", "Description"]}}, {"added": {"name": "product price", "object": "ProductPrice object (7)"}}]	8	1
99	2020-07-17 06:23:09.971093+00	6	Ghadi Detergent Powder 3 kg	2	[{"added": {"name": "product price", "object": "ProductPrice object (8)"}}]	8	1
100	2020-07-17 06:44:38.614037+00	1	CurrencyConversationRate object (1)	1	[{"added": {}}]	17	1
101	2020-07-17 06:45:23.035642+00	2	CurrencyConversationRate object (2)	1	[{"added": {}}]	17	1
102	2020-07-17 06:46:45.931889+00	3	CurrencyConversationRate object (3)	1	[{"added": {}}]	17	1
103	2020-07-17 06:48:08.644807+00	4	CurrencyConversationRate object (4)	1	[{"added": {}}]	17	1
104	2020-07-17 06:48:59.43808+00	5	CurrencyConversationRate object (5)	1	[{"added": {}}]	17	1
105	2020-07-17 07:41:22.387731+00	1	CurrencyConversationRate object (1)	2	[{"changed": {"fields": ["Rate"]}}]	17	1
106	2020-07-17 09:02:05.390448+00	1	CurrencyConversationRate object (1)	2	[{"changed": {"fields": ["Rate"]}}]	17	1
139	2020-07-18 09:38:30.391702+00	8	LCS-8075 DAY & DATE FUNCTIONING Analog Watch	2	[{"changed": {"fields": ["Avialable on"]}}, {"added": {"name": "product price", "object": "ProductPrice object (21)"}}]	8	1
140	2020-07-18 11:47:10.839713+00	25	Dell	1	[{"added": {}}]	7	1
141	2020-07-18 11:47:52.306261+00	26	Dell -Saharanpur	1	[{"added": {}}]	7	1
142	2020-07-18 12:38:52.436812+00	9	Dell Pentium Quad Core (4 GB DDR3/1 TB/Ubuntu/19.5	2	[{"changed": {"fields": ["Category"]}}, {"added": {"name": "product price", "object": "ProductPrice object (22)"}}]	8	1
143	2020-07-18 12:45:39.345874+00	9	Dell Pentium Quad Core (4 GB DDR3/1 TB/Ubuntu/19.5	2	[{"changed": {"fields": ["Category"]}}, {"added": {"name": "product price", "object": "ProductPrice object (23)"}}]	8	1
144	2020-07-18 12:45:51.982275+00	26	Dell -Saharanpur	3		7	1
145	2020-07-18 13:01:41.927809+00	27	Asus	1	[{"added": {}}]	7	1
146	2020-07-18 13:06:01.790711+00	10	ASUS ZenBook UX430UA-GV573T	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (17)"}}, {"added": {"name": "product image", "object": "ProductImage object (18)"}}, {"added": {"name": "product image", "object": "ProductImage object (19)"}}, {"added": {"name": "product image", "object": "ProductImage object (20)"}}, {"added": {"name": "product image", "object": "ProductImage object (21)"}}, {"added": {"name": "product price", "object": "ProductPrice object (24)"}}]	8	1
147	2020-07-18 13:30:13.555085+00	11	Canon EOS 1500D 24.1 Digital SLR Camera (Black)	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (22)"}}, {"added": {"name": "product image", "object": "ProductImage object (23)"}}, {"added": {"name": "product image", "object": "ProductImage object (24)"}}, {"added": {"name": "product price", "object": "ProductPrice object (26)"}}]	8	1
148	2020-07-18 13:31:25.042586+00	11	Canon EOS 1500D 24.1 Digital SLR Camera (Black)	2	[{"changed": {"fields": ["Product details"]}}, {"added": {"name": "product price", "object": "ProductPrice object (27)"}}]	8	1
149	2020-07-18 13:32:14.520764+00	11	Canon EOS 1500D 24.1 Digital SLR Camera (Black)	2	[{"changed": {"fields": ["Product details"]}}, {"added": {"name": "product price", "object": "ProductPrice object (28)"}}]	8	1
150	2020-07-18 13:37:09.447674+00	28	Samsung	1	[{"added": {}}]	7	1
151	2020-07-18 13:42:40.012974+00	6	Mobile Phones	2	[{"changed": {"fields": ["Parent"]}}]	7	1
152	2020-07-18 13:42:57.574308+00	28	Samsung	2	[{"changed": {"fields": ["Parent"]}}]	7	1
153	2020-07-18 13:43:25.339234+00	28	Samsung	2	[{"changed": {"fields": ["Parent"]}}]	7	1
154	2020-07-18 13:43:48.838428+00	6	Mobile Phones	2	[{"changed": {"fields": ["Parent"]}}]	7	1
155	2020-07-18 13:45:54.25873+00	29	Realme Phone	1	[{"added": {}}]	7	1
156	2020-07-18 13:46:13.290109+00	28	Samsung Phones	2	[{"changed": {"fields": ["Title", "Slug"]}}]	7	1
157	2020-07-18 13:46:22.903497+00	29	Realme Phones	2	[{"changed": {"fields": ["Title"]}}]	7	1
158	2020-07-18 13:47:03.471978+00	30	Nokia Phones	1	[{"added": {}}]	7	1
159	2020-07-18 13:47:58.382265+00	28	Samsung Phones	2	[{"changed": {"fields": ["Image"]}}]	7	1
160	2020-07-18 13:53:06.135814+00	12	realme X (Space Blue, 4GB RAM, 128GB Storage)	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (29)"}}]	8	1
161	2020-07-18 13:57:48.08912+00	13	Samsung Galaxy M31	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (25)"}}, {"added": {"name": "product image", "object": "ProductImage object (26)"}}, {"added": {"name": "product image", "object": "ProductImage object (27)"}}, {"added": {"name": "product price", "object": "ProductPrice object (30)"}}]	8	1
162	2020-07-18 14:01:05.031812+00	14	Nokia 4.2 (Black, 3GB RAM, 32GB Storage)	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (28)"}}, {"added": {"name": "product image", "object": "ProductImage object (29)"}}, {"added": {"name": "product image", "object": "ProductImage object (30)"}}, {"added": {"name": "product price", "object": "ProductPrice object (31)"}}]	8	1
163	2020-07-18 14:01:57.081741+00	12	realme X (Space Blue, 4GB RAM, 128GB Storage)	2	[{"added": {"name": "product image", "object": "ProductImage object (31)"}}, {"added": {"name": "product image", "object": "ProductImage object (32)"}}, {"added": {"name": "product image", "object": "ProductImage object (33)"}}, {"added": {"name": "product price", "object": "ProductPrice object (32)"}}]	8	1
164	2020-07-19 07:10:35.665619+00	15	Asus VivoBook 14 Core i3 10th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (34)"}}, {"added": {"name": "product image", "object": "ProductImage object (35)"}}, {"added": {"name": "product image", "object": "ProductImage object (36)"}}, {"added": {"name": "product price", "object": "ProductPrice object (33)"}}]	8	1
165	2020-07-19 07:14:37.354233+00	16	Asus Core i5 10th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (37)"}}, {"added": {"name": "product image", "object": "ProductImage object (38)"}}, {"added": {"name": "product image", "object": "ProductImage object (39)"}}, {"added": {"name": "product price", "object": "ProductPrice object (34)"}}]	8	1
166	2020-07-19 07:18:27.169597+00	17	Asus ROG Strix G Core i5 9th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (40)"}}, {"added": {"name": "product image", "object": "ProductImage object (41)"}}, {"added": {"name": "product price", "object": "ProductPrice object (35)"}}]	8	1
167	2020-07-19 07:22:40.304913+00	18	Dell Vostro 14 3000 Core i5 8th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (42)"}}, {"added": {"name": "product image", "object": "ProductImage object (43)"}}, {"added": {"name": "product image", "object": "ProductImage object (44)"}}, {"added": {"name": "product price", "object": "ProductPrice object (36)"}}]	8	1
168	2020-07-19 07:25:37.211103+00	19	Dell Inspiron Core i3 10th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (45)"}}, {"added": {"name": "product image", "object": "ProductImage object (46)"}}, {"added": {"name": "product image", "object": "ProductImage object (47)"}}, {"added": {"name": "product price", "object": "ProductPrice object (37)"}}]	8	1
169	2020-07-19 07:27:54.01336+00	31	Lenovo :laptops	1	[{"added": {}}]	7	1
170	2020-07-19 07:29:03.363462+00	27	Asus	2	[{"changed": {"fields": ["Image"]}}]	7	1
171	2020-07-19 07:29:29.657433+00	31	Lenovo	2	[{"changed": {"fields": ["Title"]}}]	7	1
172	2020-07-19 07:34:03.933798+00	20	Lenovo Ideapad S340 Core i5 10th Gen	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (48)"}}, {"added": {"name": "product image", "object": "ProductImage object (49)"}}, {"added": {"name": "product image", "object": "ProductImage object (50)"}}, {"added": {"name": "product price", "object": "ProductPrice object (38)"}}]	8	1
173	2020-07-19 07:40:52.235101+00	21	Mi 4A PRO 80 cm (32) HD Ready LED Smart Android TV	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (39)"}}]	8	1
174	2020-07-19 07:41:19.768917+00	21	Mi 4A PRO 80 cm (32) HD Ready LED Smart Android TV	2	[{"added": {"name": "product image", "object": "ProductImage object (51)"}}, {"added": {"name": "product image", "object": "ProductImage object (52)"}}, {"added": {"name": "product image", "object": "ProductImage object (53)"}}, {"added": {"name": "product price", "object": "ProductPrice object (40)"}}]	8	1
175	2020-07-19 07:45:03.294793+00	22	Thomson R9 60cm (24 inch) HD Ready LED TV	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (54)"}}, {"added": {"name": "product image", "object": "ProductImage object (55)"}}, {"added": {"name": "product image", "object": "ProductImage object (56)"}}, {"added": {"name": "product price", "object": "ProductPrice object (41)"}}]	8	1
176	2020-07-19 07:53:48.512947+00	23	Odile Portable LED Projector	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (57)"}}, {"added": {"name": "product image", "object": "ProductImage object (58)"}}, {"added": {"name": "product image", "object": "ProductImage object (59)"}}, {"added": {"name": "product price", "object": "ProductPrice object (42)"}}]	8	1
177	2020-07-19 07:58:02.387237+00	24	Unic Three Glasses lenses/ 150 lumens With Remote	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (60)"}}, {"added": {"name": "product image", "object": "ProductImage object (61)"}}, {"added": {"name": "product price", "object": "ProductPrice object (43)"}}]	8	1
178	2020-07-19 08:01:12.091573+00	25	Nikon D5600 DSLR Camera Body with Dual Lens	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (62)"}}, {"added": {"name": "product price", "object": "ProductPrice object (44)"}}]	8	1
179	2020-07-23 08:10:32.125127+00	6	CustomerOrder object (6)	2	[{"changed": {"fields": ["Product currency", "Payment status"]}}]	19	1
180	2020-07-23 08:55:21.127603+00	12	CustomerOrder object (12)	2	[{"changed": {"fields": ["Product currency", "Payment status"]}}]	19	1
181	2020-07-23 10:17:23.450181+00	8	CustomerOrder object (8)	2	[{"changed": {"fields": ["Product currency", "Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (9)"}}]	19	1
182	2020-07-23 10:22:42.915317+00	12	CustomerOrder object (12)	2	[{"changed": {"fields": ["Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (10)"}}]	19	1
183	2020-07-23 10:25:51.855795+00	11	CustomerOrder object (11)	2	[{"changed": {"fields": ["Product currency", "Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (11)"}}]	19	1
184	2020-07-23 10:28:13.844941+00	11	CustomerOrder object (11)	2	[{"changed": {"fields": ["Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (12)"}}, {"added": {"name": "order status", "object": "OrderStatus object (13)"}}, {"added": {"name": "order status", "object": "OrderStatus object (14)"}}]	19	1
185	2020-07-23 10:30:20.527331+00	10	CustomerOrder object (10)	2	[{"changed": {"fields": ["Product currency", "Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (15)"}}]	19	1
186	2020-07-23 10:31:46.340925+00	8	CustomerOrder object (8)	2	[{"changed": {"fields": ["Order latest status"]}}, {"changed": {"name": "order status", "object": "OrderStatus object (9)", "fields": ["Order status", "Description"]}}]	19	1
187	2020-07-23 11:07:00.214257+00	9	CustomerOrder object (9)	2	[{"changed": {"fields": ["Product currency", "Order latest status"]}}, {"added": {"name": "order status", "object": "OrderStatus object (18)"}}]	19	1
188	2020-07-26 06:22:21.321915+00	6	Newsletter object (6)	3		24	1
189	2020-07-26 06:22:21.331916+00	5	Newsletter object (5)	3		24	1
190	2020-07-26 06:22:21.340765+00	4	Newsletter object (4)	3		24	1
191	2020-07-26 06:22:21.345247+00	3	Newsletter object (3)	3		24	1
192	2020-07-26 06:22:21.349977+00	2	Newsletter object (2)	3		24	1
193	2020-07-26 06:22:21.355341+00	1	Newsletter object (1)	3		24	1
194	2020-07-29 06:36:15.278006+00	1	Admin	1	[{"added": {}}]	3	1
195	2020-07-29 06:48:30.816438+00	2	Seller	1	[{"added": {}}]	3	1
196	2020-07-29 06:48:54.440649+00	1	admin	2	[{"changed": {"fields": ["Groups"]}}]	4	1
197	2020-07-29 07:14:59.304222+00	2	dp	2	[{"changed": {"fields": ["Staff status", "Groups"]}}]	4	1
198	2020-07-30 07:54:44.551785+00	2	Deal With Us	1	[{"added": {}}]	25	1
199	2020-07-30 07:54:55.492163+00	2	Deal With Us	2	[{"changed": {"fields": ["Active"]}}]	25	1
200	2020-07-30 07:54:55.50428+00	1	Django	2	[{"changed": {"fields": ["Active"]}}]	25	1
201	2020-07-30 07:55:03.522991+00	2	Deal With Us	2	[{"changed": {"fields": ["Active"]}}]	25	1
202	2020-07-30 07:55:03.531565+00	1	Django	2	[{"changed": {"fields": ["Active"]}}]	25	1
203	2020-07-30 07:56:22.526168+00	2	Deal With Us	2	[{"changed": {"fields": ["Link color", "Link hover color", "Link color", "Link hover color", "Link color", "Link hover color"]}}]	25	1
204	2020-07-30 07:58:25.501293+00	2	Deal With Us	2	[{"changed": {"fields": ["Link color"]}}]	25	1
205	2020-07-30 07:58:50.297185+00	2	Deal With Us	3		25	1
206	2020-07-30 07:59:34.662703+00	3	Deal With Us	1	[{"added": {}}]	25	1
207	2020-07-30 08:06:03.751066+00	3	Deal With Us	2	[{"changed": {"fields": ["Title"]}}]	25	1
208	2020-07-30 08:08:12.625044+00	4	durga@gmail.com	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
209	2020-07-30 08:24:09.601698+00	25	Nikon D5600 DSLR Camera Body with Dual Lens	2	[{"changed": {"fields": ["Search tag"]}}, {"added": {"name": "product price", "object": "ProductPrice object (45)"}}]	8	4
210	2020-07-30 08:24:40.11639+00	26	test_prod	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (46)"}}]	8	4
211	2020-07-30 08:28:18.754253+00	27	sdfsdfds	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (47)"}}]	8	4
212	2020-07-30 08:58:53.135439+00	28	sddsfsd	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (48)"}}]	8	4
213	2020-07-30 09:11:22.310187+00	29	sdfsdfsdfsddfds	1	[{"added": {}}, {"added": {"name": "product price", "object": "ProductPrice object (49)"}}]	8	4
214	2020-07-30 09:16:54.010321+00	2	Seller	2	[{"changed": {"fields": ["Permissions"]}}]	3	1
215	2020-07-30 09:26:35.669839+00	29	sdfsdfsdfsddfds	2	[{"changed": {"fields": ["Quantity"]}}, {"added": {"name": "product price", "object": "ProductPrice object (50)"}}]	8	4
216	2020-07-30 09:27:17.789702+00	28	sddsfsd	2	[{"changed": {"fields": ["Quantity"]}}, {"added": {"name": "product price", "object": "ProductPrice object (51)"}}]	8	4
217	2020-07-30 09:30:48.25197+00	29	sdfsdfsdfsddfds	2	[{"added": {"name": "product price", "object": "ProductPrice object (52)"}}, {"changed": {"name": "product price", "object": "ProductPrice object (49)", "fields": ["Old price", "Price"]}}]	8	1
218	2020-07-30 09:31:22.067216+00	28	sddsfsd	3		8	1
219	2020-07-30 09:31:34.664453+00	27	sdfsdfds	2	[{"added": {"name": "product price", "object": "ProductPrice object (53)"}}, {"changed": {"name": "product price", "object": "ProductPrice object (47)", "fields": ["Price"]}}]	8	1
220	2020-07-30 09:31:54.465063+00	27	sdfsdfds	2	[{"changed": {"fields": ["Quantity"]}}, {"added": {"name": "product price", "object": "ProductPrice object (54)"}}]	8	1
221	2020-07-30 09:33:07.984109+00	29	sdfsdfsdfsddfds	3		8	1
222	2020-07-30 09:33:07.991265+00	27	sdfsdfds	3		8	1
223	2020-07-30 09:33:07.994156+00	26	test_prod	3		8	1
224	2020-07-30 09:36:56.102632+00	30	Fair & Lovely	1	[{"added": {}}, {"added": {"name": "product image", "object": "ProductImage object (63)"}}, {"added": {"name": "product price", "object": "ProductPrice object (55)"}}]	8	4
225	2020-07-30 09:42:22.149581+00	30	Fair & Lovely	2	[{"added": {"name": "product image", "object": "ProductImage object (64)"}}, {"added": {"name": "product price", "object": "ProductPrice object (56)"}}]	8	4
226	2020-07-30 09:47:51.352428+00	1	admin	2	[{"changed": {"fields": ["First name"]}}]	4	1
227	2020-07-30 09:48:28.858575+00	30	Fair & Lovely	3		8	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	shop	categorie
8	shop	product
9	shop	homebanner
10	shop	productimage
12	shop	customer
13	shop	state
16	shop	countrie
17	shop	currencyconversationrate
18	shop	productprice
11	shop	customeraddres
19	shop	customerorder
15	shop	customerreview
14	shop	customerwishlist
20	shop	orderitem
21	shop	orderstatus
22	shop	contact
23	subscribers	subscibers
24	subscribers	newsletter
25	admin_interface	theme
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2020-07-11 06:27:37.95569+00
2	auth	0001_initial	2020-07-11 06:27:38.104193+00
3	admin	0001_initial	2020-07-11 06:27:38.306357+00
4	admin	0002_logentry_remove_auto_add	2020-07-11 06:27:38.384125+00
5	admin	0003_logentry_add_action_flag_choices	2020-07-11 06:27:38.439112+00
6	contenttypes	0002_remove_content_type_name	2020-07-11 06:27:38.53107+00
7	auth	0002_alter_permission_name_max_length	2020-07-11 06:27:38.551468+00
8	auth	0003_alter_user_email_max_length	2020-07-11 06:27:38.57938+00
9	auth	0004_alter_user_username_opts	2020-07-11 06:27:38.60607+00
10	auth	0005_alter_user_last_login_null	2020-07-11 06:27:38.634648+00
11	auth	0006_require_contenttypes_0002	2020-07-11 06:27:38.643771+00
12	auth	0007_alter_validators_add_error_messages	2020-07-11 06:27:38.667386+00
13	auth	0008_alter_user_username_max_length	2020-07-11 06:27:38.700296+00
14	auth	0009_alter_user_last_name_max_length	2020-07-11 06:27:38.724602+00
15	auth	0010_alter_group_name_max_length	2020-07-11 06:27:38.751608+00
16	auth	0011_update_proxy_permissions	2020-07-11 06:27:38.782638+00
17	sessions	0001_initial	2020-07-11 06:27:38.80719+00
18	shop	0001_initial	2020-07-11 06:30:56.117684+00
35	shop	0002_product_old_price	2020-07-11 06:43:45.069774+00
36	shop	0002_auto_20200713_1501	2020-07-13 11:30:07.136517+00
37	shop	0003_auto_20200713_1503	2020-07-13 11:30:07.169484+00
38	shop	0004_auto_20200713_1653	2020-07-13 11:30:07.200066+00
39	shop	0005_auto_20200713_1655	2020-07-13 11:30:07.240621+00
40	shop	0006_product_permoted_product	2020-07-13 12:25:53.708971+00
41	shop	0007_auto_20200713_1755	2020-07-13 12:25:53.752265+00
42	shop	0008_countrie_customer_customer_addres_customer_review_customer_wishlist_state	2020-07-14 07:55:30.534125+00
43	shop	0009_auto_20200714_1354	2020-07-14 09:52:13.158807+00
44	shop	0010_remove_customer_password	2020-07-14 09:52:13.173027+00
45	shop	0011_customer_password	2020-07-14 09:54:28.26703+00
46	shop	0012_auto_20200714_1757	2020-07-14 12:27:17.765872+00
47	shop	0013_customer_review_updated_at	2020-07-15 06:28:13.411032+00
48	shop	0014_customer_addres_default_address	2020-07-17 06:10:00.028879+00
49	shop	0015_auto_20200717_1139	2020-07-17 06:10:00.082943+00
50	shop	0016_productprice_old_currency_rate	2020-07-17 06:51:05.63293+00
51	shop	0017_auto_20200723_1139	2020-07-23 06:09:20.254431+00
52	shop	0018_auto_20200723_1139	2020-07-23 06:10:02.69185+00
53	shop	0019_auto_20200723_1159	2020-07-23 06:30:08.076757+00
54	shop	0020_auto_20200723_1233	2020-07-23 07:03:36.028802+00
55	shop	0021_orderitem_orderstatus	2020-07-23 07:16:31.507829+00
56	shop	0022_customerorder_order_latest_status	2020-07-23 08:58:41.671511+00
57	shop	0023_auto_20200723_1635	2020-07-23 11:06:03.343639+00
58	shop	0024_auto_20200724_1105	2020-07-26 05:28:01.399518+00
59	shop	0025_auto_20200724_1203	2020-07-26 05:28:01.450257+00
60	shop	0026_contact	2020-07-26 05:28:01.479618+00
61	shop	0027_product_search_tag	2020-07-26 05:28:01.508445+00
65	subscribers	0001_initial	2020-07-26 05:45:27.752047+00
66	shop	0028_customerorder_expected_date	2020-07-26 06:54:46.425854+00
67	admin_interface	0001_initial	2020-07-30 07:49:55.106552+00
68	admin_interface	0002_add_related_modal	2020-07-30 07:49:55.160518+00
69	admin_interface	0003_add_logo_color	2020-07-30 07:49:55.173283+00
70	admin_interface	0004_rename_title_color	2020-07-30 07:49:55.188011+00
71	admin_interface	0005_add_recent_actions_visible	2020-07-30 07:49:55.197693+00
72	admin_interface	0006_bytes_to_str	2020-07-30 07:49:55.335174+00
73	admin_interface	0007_add_favicon	2020-07-30 07:49:55.343155+00
74	admin_interface	0008_change_related_modal_background_opacity_type	2020-07-30 07:49:55.36926+00
75	admin_interface	0009_add_enviroment	2020-07-30 07:49:55.394661+00
76	admin_interface	0010_add_localization	2020-07-30 07:49:55.420657+00
77	admin_interface	0011_add_environment_options	2020-07-30 07:49:55.471945+00
78	admin_interface	0012_update_verbose_names	2020-07-30 07:49:55.484509+00
79	admin_interface	0013_add_related_modal_close_button	2020-07-30 07:49:55.493675+00
80	admin_interface	0014_name_unique	2020-07-30 07:49:55.510974+00
81	admin_interface	0015_add_language_chooser_active	2020-07-30 07:49:55.520214+00
82	admin_interface	0016_add_language_chooser_display	2020-07-30 07:49:55.528833+00
83	shop	0029_orderstatus_is_send_order_status	2020-07-30 07:49:55.539876+00
84	shop	0030_remove_orderstatus_is_send_order_status	2020-07-30 07:49:55.555186+00
85	shop	0031_auto_20200728_1132	2020-07-30 07:49:55.566198+00
86	shop	0032_auto_20200728_1139	2020-07-30 07:49:55.591628+00
87	shop	0033_product_seller_id	2020-07-30 08:22:26.213924+00
88	shop	0034_auto_20200730_1425	2020-07-30 08:55:41.84422+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
bs6vtdqlq1r9ln4v3w2h951zjcxs34ru	NGE1YWU2NzYzN2FiYTllOTA3NjQ1Y2M3OGY1M2U0NWRlM2UyNDUzNzp7InN0b3JlX2N1cnJlbmN5IjoiSU5SIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6ImU0MDE4MTlkNWFlMzczMDA5MDhlOWJhODE1NjQyYjM5NGZkYzY1OWUiLCJpZCI6MywibmFtZSI6IkFzaGlzaGtiIiwic2Vzc2lvbl9icmVhZGNydW1icyI6W10sImJyZWFkY3J1bWJzIjpbXX0=	2020-08-09 06:45:19.979574+00
59wt3cees4ibr3ag7edz2wkkrbfu54ds	MTRmYjQ5M2Y0ZWU4Nzk4MjcxOWI1NTNjZmY1MzQ1ZmQ4MjY3MzE4Yjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNDAxODE5ZDVhZTM3MzAwOTA4ZTliYTgxNTY0MmIzOTRmZGM2NTllIn0=	2020-08-12 07:55:17.743607+00
3kvcd4yj8m8amhtpx8lfu2fmfh92mp78	YzUyNWQ3ZTNhZTEzZDA4MjJiMjIwNTEwZmRkOTY3ZGIwNTFiYjk1Nzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlNDAxODE5ZDVhZTM3MzAwOTA4ZTliYTgxNTY0MmIzOTRmZGM2NTllIiwiYnJlYWRjcnVtYnMiOltdfQ==	2020-08-13 09:48:39.338088+00
\.


--
-- Data for Name: shop_categorie; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_categorie (category_id, title, slug, image, status, created_at, updated_at, parent_id) FROM stdin;
2	Computers	computers	shop/images/category/comcat.jpeg	t	2020-07-08 06:15:44.727231+00	2020-07-09 10:38:06.466237+00	1
7	Television Sets	television-sets	shop/images/category/Television_Sets.png	t	2020-07-09 12:16:02.904945+00	2020-07-09 12:16:02.904991+00	1
8	DSLR Cameras	dslr-cameras	shop/images/category/DSLR_Cameras.png	t	2020-07-09 12:17:18.381184+00	2020-07-09 12:17:18.381221+00	1
9	Projectors	projectors	shop/images/category/Projectors.png	t	2020-07-09 12:20:06.366828+00	2020-07-09 12:20:06.366863+00	1
4	Bakery and Bread	bakery-and-bread	shop/images/category/Bakery_and_Bread.jpeg	t	2020-07-08 06:19:44.448755+00	2020-07-09 12:28:15.960285+00	3
5	Pasta and Rice	pasta-and-rice	shop/images/category/Pasta_and_Rice.jpeg	t	2020-07-08 06:22:01.435924+00	2020-07-09 12:30:05.923535+00	3
10	Cereals and Breakfast Foods	cereals-and-breakfast-foods	shop/images/category/Cereals_and_Breakfast_Foods.png	t	2020-07-09 12:32:18.064432+00	2020-07-09 12:32:18.064469+00	3
12	Men's	mens	shop/images/category/Mens.png	t	2020-07-09 12:36:37.422036+00	2020-07-09 12:36:37.422223+00	11
13	Women's	womens	shop/images/category/Womens.png	t	2020-07-09 12:38:17.810154+00	2020-07-09 12:38:17.810192+00	11
14	Children's	childrens	shop/images/category/Childrens.jpeg	t	2020-07-09 12:39:32.844726+00	2020-07-09 12:39:32.844863+00	11
15	Accessories	accessories	shop/images/category/Accessories.jpeg	t	2020-07-09 12:41:06.205002+00	2020-07-09 12:41:06.205048+00	11
16	Footwear	footwear	shop/images/category/Footwear.webp	t	2020-07-09 12:42:04.895435+00	2020-07-09 12:42:04.89548+00	11
18	Adventure	adventure	shop/images/category/Adventure.jpeg	t	2020-07-09 12:45:27.011628+00	2020-07-09 12:45:27.011665+00	17
19	Horror	horror-book	shop/images/category/Horrorbook.jpeg	t	2020-07-09 12:48:10.567491+00	2020-07-09 12:48:10.567509+00	17
20	Romantic	romantic-book	shop/images/category/Romantic.jpeg	t	2020-07-09 12:50:58.097535+00	2020-07-09 12:50:58.097555+00	17
21	Children's	children-books	shop/images/category/Childrenssd.jpeg	t	2020-07-09 12:53:29.220312+00	2020-07-10 06:26:59.013002+00	17
3	Grocery	grocery	shop/images/category/grocery_8JJuiPe.jpeg	t	2020-07-08 06:16:23.394494+00	2020-07-10 07:01:00.424079+00	\N
11	Fashion	fashion	shop/images/category/fashion.jpeg	t	2020-07-09 12:34:33.56875+00	2020-07-10 07:02:12.970036+00	\N
22	Others	others	shop/images/category/other.jpeg	t	2020-07-09 12:55:30.443587+00	2020-07-10 07:03:54.084453+00	\N
17	Books	books	shop/images/category/books.jpeg	t	2020-07-09 12:43:05.893244+00	2020-07-10 07:05:10.879298+00	\N
1	Electronics	electronic	shop/images/category/elec_eUlqgEM.jpeg	t	2020-07-08 06:12:33.075809+00	2020-07-10 07:06:53.418591+00	\N
23	Sports	sports	shop/images/category/Sports.jpeg	t	2020-07-10 07:16:12.465125+00	2020-07-10 07:16:12.465144+00	\N
24	Badminton	badminton	shop/images/category/Badminton.jpeg	t	2020-07-10 07:18:18.492651+00	2020-07-10 07:18:18.49267+00	23
25	Dell	dell	shop/images/category/download.png	t	2020-07-18 11:47:10.835195+00	2020-07-18 11:47:10.835213+00	2
6	Mobile Phones	mobile-phone	shop/images/category/mobile.png	t	2020-07-09 11:39:10.531566+00	2020-07-18 13:43:48.837157+00	1
29	Realme Phones	realme-phones	shop/images/category/Realme.jpeg	t	2020-07-18 13:45:54.257503+00	2020-07-18 13:46:22.901624+00	6
30	Nokia Phones	nokia-phones	shop/images/category/Nokia.png	t	2020-07-18 13:47:03.471033+00	2020-07-18 13:47:03.47105+00	6
28	Samsung Phones	samsung-phones	shop/images/category/samsu.jpeg	t	2020-07-18 13:37:09.4465+00	2020-07-18 13:47:58.38091+00	6
27	Asus	asus	shop/images/category/asus.png	t	2020-07-18 13:01:41.926926+00	2020-07-19 07:29:03.360867+00	2
31	Lenovo	lenovo-laptops	shop/images/category/levovo.png	t	2020-07-19 07:27:54.01138+00	2020-07-19 07:29:29.65457+00	2
\.


--
-- Data for Name: shop_contact; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_contact (contact_id, name, email, phone, message, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: shop_countrie; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_countrie (id, sortname, name, created_at, updated_at, phonecode) FROM stdin;
1	AF	Afghanistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
2	AL	Albania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
3	DZ	Algeria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
4	AS	American Samoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
5	AD	Andorra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
6	AO	Angola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
7	AI	Anguilla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
8	AQ	Antarctica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
9	AG	Antigua And Barbuda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
10	AR	Argentina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
11	AM	Armenia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
12	AW	Aruba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
13	AU	Australia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
14	AT	Austria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
15	AZ	Azerbaijan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
16	BS	Bahamas The	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
17	BH	Bahrain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
18	BD	Bangladesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
19	BB	Barbados	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
20	BY	Belarus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
21	BE	Belgium	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
22	BZ	Belize	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
23	BJ	Benin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
24	BM	Bermuda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
25	BT	Bhutan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
26	BO	Bolivia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
27	BA	Bosnia and Herzegovina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
28	BW	Botswana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
29	BV	Bouvet Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
30	BR	Brazil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
31	IO	British Indian Ocean Territory	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
32	BN	Brunei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
33	BG	Bulgaria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
34	BF	Burkina Faso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
35	BI	Burundi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
36	KH	Cambodia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
37	CM	Cameroon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
38	CA	Canada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
39	CV	Cape Verde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
40	KY	Cayman Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
41	CF	Central African Republic	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
42	TD	Chad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
43	CL	Chile	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
44	CN	China	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
45	CX	Christmas Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
46	CC	Cocos (Keeling) Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
47	CO	Colombia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
48	KM	Comoros	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
49	CG	Republic Of The Congo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
50	CD	Democratic Republic Of The Congo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
51	CK	Cook Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
52	CR	Costa Rica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
53	CI	Cote D'Ivoire (Ivory Coast)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
54	HR	Croatia (Hrvatska)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
55	CU	Cuba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
56	CY	Cyprus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
57	CZ	Czech Republic	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
58	DK	Denmark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
59	DJ	Djibouti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
60	DM	Dominica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
61	DO	Dominican Republic	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
62	TP	East Timor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
63	EC	Ecuador	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
64	EG	Egypt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
65	SV	El Salvador	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
66	GQ	Equatorial Guinea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
67	ER	Eritrea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
68	EE	Estonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
69	ET	Ethiopia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
70	XA	External Territories of Australia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
71	FK	Falkland Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
72	FO	Faroe Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
73	FJ	Fiji Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
74	FI	Finland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
75	FR	France	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
76	GF	French Guiana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
77	PF	French Polynesia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
78	TF	French Southern Territories	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
79	GA	Gabon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
80	GM	Gambia The	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
81	GE	Georgia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
82	DE	Germany	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
83	GH	Ghana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
84	GI	Gibraltar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
85	GR	Greece	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
86	GL	Greenland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
87	GD	Grenada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
88	GP	Guadeloupe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
89	GU	Guam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
90	GT	Guatemala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
91	XU	Guernsey and Alderney	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
92	GN	Guinea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
93	GW	Guinea-Bissau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
94	GY	Guyana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
95	HT	Haiti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
96	HM	Heard and McDonald Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
97	HN	Honduras	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
98	HK	Hong Kong S.A.R.	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
99	HU	Hungary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
100	IS	Iceland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
101	IN	India	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
102	ID	Indonesia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
103	IR	Iran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
104	IQ	Iraq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
105	IE	Ireland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
106	IL	Israel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
107	IT	Italy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
108	JM	Jamaica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
109	JP	Japan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
110	XJ	Jersey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
111	JO	Jordan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
112	KZ	Kazakhstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
113	KE	Kenya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
114	KI	Kiribati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
115	KP	Korea North	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
116	KR	Korea South	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
117	KW	Kuwait	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
118	KG	Kyrgyzstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
119	LA	Laos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
120	LV	Latvia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
121	LB	Lebanon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
122	LS	Lesotho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
123	LR	Liberia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
124	LY	Libya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
125	LI	Liechtenstein	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
126	LT	Lithuania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
127	LU	Luxembourg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
128	MO	Macau S.A.R.	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
129	MK	Macedonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
130	MG	Madagascar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
131	MW	Malawi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
132	MY	Malaysia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
133	MV	Maldives	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
134	ML	Mali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
135	MT	Malta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
136	XM	Man (Isle of)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
137	MH	Marshall Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
138	MQ	Martinique	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
139	MR	Mauritania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
140	MU	Mauritius	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
141	YT	Mayotte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
142	MX	Mexico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
143	FM	Micronesia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
144	MD	Moldova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
145	MC	Monaco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
146	MN	Mongolia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
147	MS	Montserrat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
148	MA	Morocco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
149	MZ	Mozambique	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
150	MM	Myanmar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
151	NA	Namibia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
152	NR	Nauru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
153	NP	Nepal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
154	AN	Netherlands Antilles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
155	NL	Netherlands The	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
156	NC	New Caledonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
157	NZ	New Zealand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
158	NI	Nicaragua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
159	NE	Niger	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
160	NG	Nigeria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
161	NU	Niue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
162	NF	Norfolk Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
163	MP	Northern Mariana Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
164	NO	Norway	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
165	OM	Oman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
166	PK	Pakistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
167	PW	Palau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
168	PS	Palestinian Territory Occupied	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
169	PA	Panama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
170	PG	Papua new Guinea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
171	PY	Paraguay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
172	PE	Peru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
173	PH	Philippines	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
174	PN	Pitcairn Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
175	PL	Poland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
176	PT	Portugal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
177	PR	Puerto Rico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
178	QA	Qatar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
179	RE	Reunion	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
180	RO	Romania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
181	RU	Russia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
182	RW	Rwanda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
183	SH	Saint Helena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
184	KN	Saint Kitts And Nevis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
185	LC	Saint Lucia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
186	PM	Saint Pierre and Miquelon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
187	VC	Saint Vincent And The Grenadines	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
188	WS	Samoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
189	SM	San Marino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
190	ST	Sao Tome and Principe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
191	SA	Saudi Arabia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
192	SN	Senegal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
193	RS	Serbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
194	SC	Seychelles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
195	SL	Sierra Leone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
196	SG	Singapore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
197	SK	Slovakia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
198	SI	Slovenia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
199	XG	Smaller Territories of the UK	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
200	SB	Solomon Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
201	SO	Somalia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
202	ZA	South Africa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
203	GS	South Georgia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
204	SS	South Sudan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
205	ES	Spain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
206	LK	Sri Lanka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
207	SD	Sudan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
208	SR	Suriname	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
209	SJ	Svalbard And Jan Mayen Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
210	SZ	Swaziland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
211	SE	Sweden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
212	CH	Switzerland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
213	SY	Syria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
214	TW	Taiwan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
215	TJ	Tajikistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
216	TZ	Tanzania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
217	TH	Thailand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
218	TG	Togo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
219	TK	Tokelau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
220	TO	Tonga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
221	TT	Trinidad And Tobago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
222	TN	Tunisia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
223	TR	Turkey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
224	TM	Turkmenistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
225	TC	Turks And Caicos Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
226	TV	Tuvalu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
227	UG	Uganda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
228	UA	Ukraine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
229	AE	United Arab Emirates	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
230	GB	United Kingdom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
231	US	United States	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
232	UM	United States Minor Outlying Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
233	UY	Uruguay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
234	UZ	Uzbekistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
235	VU	Vanuatu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
236	VA	Vatican City State (Holy See)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
237	VE	Venezuela	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
238	VN	Vietnam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
239	VG	Virgin Islands (British)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
240	VI	Virgin Islands (US)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
241	WF	Wallis And Futuna Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
242	EH	Western Sahara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
243	YE	Yemen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
244	YU	Yugoslavia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
245	ZM	Zambia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
246	ZW	Zimbabwe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	0
\.


--
-- Data for Name: shop_currencyconversationrate; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_currencyconversationrate (conversation_id, currency_code_from, currency_code_to, rate, created_at, updated_at) FROM stdin;
2	INR	INR	1	2020-07-17 06:45:23.034521+00	2020-07-17 06:45:23.034551+00
3	INR	GBP	0.011	2020-07-17 06:46:45.93045+00	2020-07-17 06:46:45.930474+00
4	INR	AUD	0.019	2020-07-17 06:48:08.640811+00	2020-07-17 06:48:08.640836+00
5	INR	EUR	0.012	2020-07-17 06:48:59.437296+00	2020-07-17 06:48:59.437318+00
1	INR	USD	0.013	2020-07-17 06:44:38.61228+00	2020-07-17 09:02:05.389069+00
\.


--
-- Data for Name: shop_customer; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_customer (customer_id, first_name, last_name, gender, username, email_address, mobile_no, status, created_at, updated_at, password) FROM stdin;
1	dfdsf		MALE	admin@gmail.com	admin@gmail.com		t	2020-07-14 12:25:18.410229+00	2020-07-14 12:25:18.410275+00	e10adc3949ba59abbe56e057f20f883e
5	Ashish		MALE	lohit@gmail.com	lohit@gmail.com		t	2020-07-14 12:27:39.051554+00	2020-07-14 12:27:39.051624+00	e10adc3949ba59abbe56e057f20f883e
6	Ashish		MALE	lohit@gmail.comf	lohit@gmail.comf		t	2020-07-14 12:29:09.633107+00	2020-07-14 12:29:09.633187+00	e10adc3949ba59abbe56e057f20f883e
7	shivani		MALE	shivani@gmail.com	shivani@gmail.com		t	2020-07-15 06:15:05.607714+00	2020-07-15 06:15:05.60774+00	e10adc3949ba59abbe56e057f20f883e
8	Durga		MALE	durga@gmail.com	durga@gmail.com		t	2020-07-15 06:17:18.186031+00	2020-07-15 06:17:18.186057+00	e10adc3949ba59abbe56e057f20f883e
9	dp		MALE	dp@gmail.com	dp@gmail.com		t	2020-07-15 06:19:38.972392+00	2020-07-15 06:19:38.972421+00	e10adc3949ba59abbe56e057f20f883e
10	Ashish		MALE	ashish@gmail.com	ashish@gmail.com		t	2020-07-15 09:27:52.994869+00	2020-07-15 09:27:52.994918+00	e10adc3949ba59abbe56e057f20f883e
3	Ashish		MALE	rohan@gmail.com	ashish123@gmail.com	9586956325	t	2020-07-14 12:27:21.561259+00	2020-07-26 06:49:48.159028+00	e10adc3949ba59abbe56e057f20f883e
\.


--
-- Data for Name: shop_customeraddres; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_customeraddres (address_id, name, mobile, alternative_mobile, pincode, address, city, landmark, address_type, created_at, updated_at, country_id, customer_id, state_id, default_address) FROM stdin;
1	Ashish	09865324588		201301	Sector - 12/22 Noida	Noida		HOME	2020-07-17 08:20:03.419495+00	2020-07-17 08:20:03.419516+00	101	3	38	f
2	Ashish	09865324588		247001	Ankit Vihar Coloney, Nawada Road,Gali No: 4/2	Saharanpur		HOME	2020-07-17 08:20:11.617175+00	2020-07-17 08:20:11.617194+00	101	3	38	t
3	Ashish	09865324588		247001	Ankit Vihar Coloney, Nawada Road,Gali No: 4/2	Saharanpur		HOME	2020-07-30 09:29:58.978369+00	2020-07-30 09:29:58.978387+00	101	7	38	f
\.


--
-- Data for Name: shop_customerorder; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_customerorder (order_id, payment_method, product_total, product_gst_amount, product_payable_amount, shipping_charge, product_currency, payment_status, created_at, updated_at, address_id, customer_id, order_latest_status, expected_date) FROM stdin;
6	cod	85897	15461.46	101358.46	0	INR	UNPAID	2020-07-23 07:59:15.4496+00	2020-07-23 08:10:32.121651+00	2	3	ORD	\N
7	cod	49999	8999.82	58998.82	0	₹	UNPAID	2020-07-23 08:12:17.890085+00	2020-07-23 08:12:17.890113+00	2	3	ORD	\N
12	cod	1200	216	1416	0	INR	PAID	2020-07-23 08:29:41.64486+00	2020-07-23 10:22:42.909566+00	2	3	PKD	\N
11	cod	49999	8999.82	58998.82	0	INR	UNPAID	2020-07-23 08:29:05.618807+00	2020-07-23 10:28:13.831255+00	2	3	SPD	\N
10	cod	49999	8999.82	58998.82	0	INR	UNPAID	2020-07-23 08:28:37.921707+00	2020-07-23 10:30:20.520187+00	2	3	CLD	\N
8	cod	49999	8999.82	58998.82	0	INR	UNPAID	2020-07-23 08:25:02.199292+00	2020-07-23 10:31:46.337198+00	2	3	DLD	\N
13	cod	22935	4128.3	27063.3	0	₹	UNPAID	2020-07-23 10:34:10.500257+00	2020-07-23 10:34:10.500301+00	1	3	ORD	\N
14	cod	113980	20516.399999999998	134496.4	0	₹	UNPAID	2020-07-23 10:36:01.067183+00	2020-07-23 10:36:01.067219+00	1	3	ORD	\N
9	cod	49999	8999.82	58998.82	0	INR	UNPAID	2020-07-23 08:26:50.499435+00	2020-07-23 11:07:00.208883+00	2	3	OFD	\N
15	paypal	72	12.959999999999999	84.96	0	₹	UNPAID	2020-07-30 09:39:04.92574+00	2020-07-30 09:39:04.925756+00	3	7	ORD	2020-08-09
\.


--
-- Data for Name: shop_customerreview; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_customerreview ("Review_id", rating, review, created_at, customer_id, product_id, updated_at, image, status, order_id) FROM stdin;
\.


--
-- Data for Name: shop_customerwishlist; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_customerwishlist (wishlist_id, created_at, customer_id, product_id) FROM stdin;
5	2020-07-19 06:29:17.574134+00	3	10
6	2020-07-19 06:29:35.846018+00	3	11
7	2020-07-19 06:29:40.156184+00	3	13
8	2020-07-19 06:29:45.159393+00	3	14
9	2020-07-19 06:29:50.851306+00	3	12
10	2020-07-19 06:45:39.012895+00	3	9
\.


--
-- Data for Name: shop_homebanner; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_homebanner (banner_id, title, banner_img, status, created_at, updated_at) FROM stdin;
7	Slider 2	shop/images/banners/slider-2_XNujO7h.jpg	t	2020-07-09 13:04:17.211079+00	2020-07-09 13:04:17.211098+00
8	Slider 3	shop/images/banners/slider-3_FkaRhUu.jpg	t	2020-07-09 13:04:36.027922+00	2020-07-09 13:04:36.027955+00
10	shopping 1	shop/images/banners/slider-1_RXmUlw8.jpg	t	2020-07-09 13:09:19.006093+00	2020-07-09 13:09:19.006111+00
\.


--
-- Data for Name: shop_orderitem; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_orderitem (item_id, quantity, product_price, created_at, updated_at, order_id, product_id) FROM stdin;
3	1	49999	2020-07-23 07:59:15.470369+00	2020-07-23 07:59:15.470429+00	6	25
4	2	35898	2020-07-23 07:59:15.485596+00	2020-07-23 07:59:15.485635+00	6	12
5	1	49999	2020-07-23 08:12:17.907031+00	2020-07-23 08:12:17.907057+00	7	25
6	1	49999	2020-07-23 08:25:02.223608+00	2020-07-23 08:25:02.223648+00	8	25
7	1	49999	2020-07-23 08:26:50.516724+00	2020-07-23 08:26:50.51675+00	9	25
8	1	49999	2020-07-23 08:28:37.94398+00	2020-07-23 08:28:37.944018+00	10	25
9	1	49999	2020-07-23 08:29:05.643522+00	2020-07-23 08:29:05.643558+00	11	25
10	1	1200	2020-07-23 08:29:41.672208+00	2020-07-23 08:29:41.672247+00	12	6
11	5	22495	2020-07-23 10:34:10.523643+00	2020-07-23 10:34:10.523682+00	13	24
12	4	440	2020-07-23 10:34:10.539322+00	2020-07-23 10:34:10.539361+00	13	9
13	2	113980	2020-07-23 10:36:01.089606+00	2020-07-23 10:36:01.089642+00	14	20
\.


--
-- Data for Name: shop_orderstatus; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_orderstatus (order_status_id, order_status, description, send_email_status, created_at, updated_at, order_id) FROM stdin;
2	ORD	Your order has been placed.	f	2020-07-23 07:59:15.490067+00	2020-07-23 07:59:15.490105+00	6
3	ORD	Your order has been placed.	f	2020-07-23 08:12:17.911341+00	2020-07-23 08:12:17.911366+00	7
4	ORD	Your order has been placed.	f	2020-07-23 08:25:02.228712+00	2020-07-23 08:25:02.22875+00	8
5	ORD	Your order has been placed.	f	2020-07-23 08:26:50.52057+00	2020-07-23 08:26:50.520596+00	9
6	ORD	Your order has been placed.	f	2020-07-23 08:28:37.949829+00	2020-07-23 08:28:37.949863+00	10
7	ORD	Your order has been placed.	f	2020-07-23 08:29:05.647854+00	2020-07-23 08:29:05.647885+00	11
8	ORD	Your order has been placed.	f	2020-07-23 08:29:41.677354+00	2020-07-23 08:29:41.67739+00	12
10	PKD	Your order has been packed.	f	2020-07-23 10:22:42.913259+00	2020-07-23 10:22:42.91329+00	12
11	PKD	Your order has been packed.	f	2020-07-23 10:25:51.851951+00	2020-07-23 10:25:51.852097+00	11
12	SPD	Your order has been shipped.	f	2020-07-23 10:28:13.836146+00	2020-07-23 10:28:13.836212+00	11
13	SPD	Your order has been reached our facility( Bangalore )	f	2020-07-23 10:28:13.841274+00	2020-07-23 10:28:13.841309+00	11
14	SPD	Your order has been reached our facility( Gurgaon )	f	2020-07-23 10:28:13.843131+00	2020-07-23 10:28:13.843163+00	11
15	CLD	Product cancel due to world wise convid virous. Order amount will be refund with in 7 bussiness day.	f	2020-07-23 10:30:20.524957+00	2020-07-23 10:30:20.524995+00	10
9	DLD	Your order has been delivered.	f	2020-07-23 10:17:23.447863+00	2020-07-23 10:31:46.339052+00	8
16	ORD	Your order has been placed.	f	2020-07-23 10:34:10.544047+00	2020-07-23 10:34:10.544081+00	13
17	ORD	Your order has been placed.	f	2020-07-23 10:36:01.094487+00	2020-07-23 10:36:01.094523+00	14
18	OFD	Your order has been out for delivery.	f	2020-07-23 11:07:00.212271+00	2020-07-23 11:07:00.212296+00	9
19	ORD	Your order has been placed.	f	2020-07-30 09:39:04.956342+00	2020-07-30 09:39:04.956359+00	15
\.


--
-- Data for Name: shop_product; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_product (product_id, product_name, slug, quantity, no_of_sold_product, featured_product, status, created_at, updated_at, category_id, description, product_details, avialable_on, search_tag, seller_id_id) FROM stdin;
6	Ghadi Detergent Powder 3 kg	ghadi-detergent-powder-3kg	200	0	t	t	2020-07-11 06:38:03.111326+00	2020-07-17 06:23:09.967777+00	22	<p><img class="_3aFOj0" style="box-sizing: border-box; margin: 2px 12px 0px 0px; padding: 0px; color: #212121; border: none; outline: none; height: 16px; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;" src="https://rukminim1.flixcart.com/www/32/32/promos/25/06/2018/5f5e0f11-380c-4f0e-be13-b7763474b66b.png?q=90" /></p>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="vo83_8" style="box-sizing: border-box; margin: 0px; padding: 0px;">Best before 21 May 2022</div>\r\n<div class="_11hu5N" style="box-sizing: border-box; margin: 0px; padding: 0px;">Manufactured date 01 Jun 2020</div>\r\n</div>	<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">In The Box</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_2k4JXJ col col-12-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 690px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Brand</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Ghadi</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">NA</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Quantity</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">3 kg</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Hand Wash Detergent</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>	INDIA		1
7	Fair & Lovely	fair-and-lovely	0	0	t	t	2020-07-11 06:39:37.112619+00	2020-07-17 06:22:47.636885+00	22	<div class="_1wg1IU" style="box-sizing: border-box; margin: 8px 0px 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="edKlv2" style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px;">Available offers</div>\r\n</div>\r\n<div class="_3nSGUy" style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.43; color: #212121; font-size: 14px; position: relative; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2RzXYa" style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<div class="_3D89xM" style="box-sizing: border-box; margin: 0px; padding: 0px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 695.594px; display: inline-block; vertical-align: top;"><span class="_2YJn2R" style="box-sizing: border-box; margin: 0px; padding: 0px 4px 0px 0px;">Bank Offer</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5% Unlimited Cashback on Flipkart Axis Bank Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 695.594px; display: inline-block; vertical-align: top;"><span class="_2YJn2R" style="box-sizing: border-box; margin: 0px; padding: 0px 4px 0px 0px;">Bank Offer</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5% off* with Axis Bank Buzz Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/49f16fff-0a9d-48bf-a6e6-5980c9852f11.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 695.594px; display: inline-block; vertical-align: top;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">No Cost EMI on Flipkart Axis Bank Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 740px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 695.594px; display: inline-block; vertical-align: top;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Buy products from Personal Care, Kids &amp; Home,Get 15% Upto ₹200 Off, next buy of Toys&amp;School Supplies</span></li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>	<div class="_3Rrcbo" style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">In The Box</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Pack of</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Brand</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Fair &amp; Lovely</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">MULTIVITAMIN 80G,MULTIVITAMIN 50G</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Quantity</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">130 g</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Maximum Shelf Life</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">24 Months</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Applied For</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Fairness</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Organic Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Natural</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Ideal Usage</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">All Day</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Ideal For</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Women</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Cream</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Container Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Tubes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">UV Protection</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">More Details</div>\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none; display: flex; flex-flow: row wrap; width: 690px;">\r\n<div class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Generic Name</div>\r\n<ul class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Fairness</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n</div>	BOTH		1
9	Dell Pentium Quad Core (4 GB DDR3/1 TB/Ubuntu/19.5	dell-computer	345	0	t	t	2020-07-11 06:42:21.094298+00	2020-07-18 12:45:39.341532+00	25	<div class="_3gijNv col-12-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 740px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</div>\r\n<div class="_3gijNv col-12-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 740px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">&nbsp;</div>\r\n<div class="ooJZfD _3FGKd2" style="box-sizing: border-box; margin: 0px; padding: 24px 0px 0px; display: flex; flex-flow: row; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="_3gijNv col-6-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 370px;">\r\n<div class="g2dDAR" style="box-sizing: border-box; margin: 0px; padding: 0px 16px 0px 0px;">\r\n<div class="_2hqjdd" style="box-sizing: border-box; margin: 0px; padding: 0px 10px 0px 0px; color: #878787; width: 110px; float: left;">Highlights</div>\r\n<div class="_3WHvuP" style="box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Ubuntu</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Intel Pentium Quad Core</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">HDD Capacity 1 TB</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">RAM 4 GB DDR3</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">19.5 inch Display</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo" style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Sales Package</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">In The Box</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">AIO Desktop, Wireless Keyboard, Wireless Mouse, Power Adaptor, User Manuals, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">3052 &amp; DHCYN</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Inspiron One 20</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">A265512UIN9</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Colour</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Brand</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Dell</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">System Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Cache Memory</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2 MB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Processor Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Pentium Quad Core</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Processor Brand</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Intel</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Processor Frequency</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1.6 GHz with Turbo Boost up to 2.64 GHz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Operating System</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Ubuntu</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Processor Model</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">J3710</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Memory</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Memory Speed</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1600 MHz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Memory Slots</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 x DDR3 Slot</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">System Memory</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">4 GB DDR3</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Memory Detail</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 x 4 GB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Display</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Display Size</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">19.5 inch</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HD</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Display Resolution</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1600 x 900 Pixel</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Display Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">HD+ LED Backlit Anti-Glare Display</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Graphics</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Dedicated Graphic Memory</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">NA</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Integrated Graphic Processor</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Intel HD Graphics</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Webcam</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Built-in Webcam</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Storage</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Reading speed</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">5400 RPM</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Hard Drive</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 TB</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Audio</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Built-in Microphone</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Single Digital Microphone</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Other Audio features</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Stereo Speakers Tuned with Waves MaxxAudio</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Speaker Output</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes W</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Optical Drive</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Drive Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">CD/DVD Reader</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Connectivity</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">USB</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2 x USB 3.0, 2 x USB 2.0</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Bluetooth</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">v4.0</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Headphone Jack</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Memory Card Reader</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">4-in-1 Card Reader</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Other Ports</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">DC Power In</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Network</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Wireless</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">IEEE 802.11b/g/n</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Ethernet</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">10/100/1000 Gigabit</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Input Devices</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Mouse</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Wireless Mouse</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Keyboard</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Wireless Keyboard</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Dimensions</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Height</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">312.6 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Width</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">489.6 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Depth</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">25.8 mm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Warranty</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_2k4JXJ col col-12-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 690px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 Year Limited Warranty</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	BOTH		1
8	LCS-8075 DAY & DATE FUNCTIONING Analog Watch	lcs-8075-day-date-analog-watch	345	0	t	t	2020-07-11 06:41:12.677091+00	2020-07-18 09:38:30.382593+00	22	<div class="_1wg1IU" style="box-sizing: border-box; margin: 8px 0px 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="edKlv2" style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 16px;">Available offers</div>\r\n</div>\r\n<div class="_3nSGUy" style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.43; color: #212121; font-size: 14px; position: relative; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2RzXYa" style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<div class="_3D89xM" style="box-sizing: border-box; margin: 0px; padding: 0px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 698.891px; display: inline-block; vertical-align: top;"><span class="_2YJn2R" style="box-sizing: border-box; margin: 0px; padding: 0px 4px 0px 0px;">Bank Offer</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5% Unlimited Cashback on Flipkart Axis Bank Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 698.891px; display: inline-block; vertical-align: top;"><span class="_2YJn2R" style="box-sizing: border-box; margin: 0px; padding: 0px 4px 0px 0px;">Bank Offer</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">Extra 10% Off</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/c22c9fc4-0555-4460-8401-bf5c28d7ba29.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 698.891px; display: inline-block; vertical-align: top;"><span class="_2YJn2R" style="box-sizing: border-box; margin: 0px; padding: 0px 4px 0px 0px;">Bank Offer</span><span style="box-sizing: border-box; margin: 0px; padding: 0px;">5% off* with Axis Bank Buzz Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n<span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><span class="_7g_MLT row" style="box-sizing: border-box; margin: 12px 0px 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 743.516px;"><img class="_3Amlen" style="box-sizing: border-box; margin: 0px 10px 0px 0px; padding: 0px; color: inherit; border: none; outline: none;" src="https://rukminim1.flixcart.com/www/36/36/promos/06/09/2016/49f16fff-0a9d-48bf-a6e6-5980c9852f11.png?q=90" width="18" height="18" /></span></span>\r\n<ul>\r\n<li class="_2-n-Lg col" style="box-sizing: border-box; margin: -2px 0px 0px; padding: 0px; list-style: none; width: 698.891px; display: inline-block; vertical-align: top;"><span style="box-sizing: border-box; margin: 0px; padding: 0px;">No Cost EMI on Flipkart Axis Bank Credit Card</span>\r\n<div class="_20yN1P _3eQYiv" style="box-sizing: border-box; margin: 0px; padding: 0px; display: inline-block; position: relative;"><span class="MBd8C2" style="box-sizing: border-box; margin: 0px 0px 0px 5px; padding: 0px; color: #2874f0; display: inline-block; cursor: pointer;">T&amp;C</span></div>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>	<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Water Resistant</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">No</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Display Type</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">Analog</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Style Code</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">LCS-8075</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Series</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">DAY &amp; DATE FUNCTIONING</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Occasion</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">Casual, Party-Wedding, Formal, Sports</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Watch Type</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">Wrist Watch</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Pack of</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">1</div>\r\n</div>\r\n<div class="row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 695.516px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<div class="col col-3-12 _1kyh2f" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 173.875px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</div>\r\n<div class="col col-9-12 _1BMpvA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 24px; width: 521.625px; display: inline-block; vertical-align: top;">1 WATCH WITH BOX</div>\r\n</div>	OUTSIDEINDIA		1
10	ASUS ZenBook UX430UA-GV573T	asus-zenbook-ux430ua-gv573t	456	0	t	t	2020-07-18 13:06:01.779334+00	2020-07-18 13:06:01.779352+00	27	<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Processor: 8th Gen Intel Core i5-8250U processor, base speed 1.6GHz, 4 Cores, with Turbo boost up to 3.4GHz and 6MB cache</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Memory &amp; Storage: 8GB 2133MHz LPDDR3 on board RAM with| Storage: 256GB SATA3 M.2 SSD</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Graphics: Intel Integrated UHD Graphics 620</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Display: 14&rdquo; LED-backlit FHD (1920 x 1080) 16:9 slim-bezel NanoEdge Anti-Glare Display, 80% screen-to-body ratio, 100% sRGB color gamut, 178&deg; wide-view technology</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Operating System: Pre-loaded Windows 10 Home with lifetime validity</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Design &amp; battery: 7.18mm Thin Side Bezels | Metal Chasis| 15.9mm Thin| Laptop weight 1.30 Kg |50WHr 3-cell Li-polymer battery with | upto 9 Hours* Battery backup</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Keyboard and Touchpad: Full-size backlit keys, with 1.4mm key travel, Precision Touchpad (PTP) technology supports up to four-finger smart gestures</span></li>\r\n</ul>	<h2 style="box-sizing: border-box; padding: 0px 0px 4px; margin: 3px 0px 7px; text-rendering: optimizelegibility; line-height: 1.3; font-family: 'Amazon Ember', Arial, sans-serif; background-color: #ffffff; font-size: 16px !important; color: #cc6600 !important;">Product information</h2>\r\n<p><span style="box-sizing: border-box; color: #111111; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">Colour:<span style="box-sizing: border-box; font-weight: bold;">Gold</span></span></p>\r\n<div class="a-row a-spacing-top-base" style="box-sizing: border-box; width: 1242px; color: #111111; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff; margin-top: 12px !important;">\r\n<div class="a-column a-span6" style="box-sizing: border-box; margin-right: 24.8281px; float: left; min-height: 1px; overflow: visible; width: 607.922px;">\r\n<div class="a-row a-spacing-base" style="box-sizing: border-box; width: 607.922px; margin-bottom: 12px !important;">\r\n<div class="a-row a-expander-container a-expander-extend-container" style="box-sizing: border-box; width: 607.922px;" aria-live="polite">\r\n<div class="a-row" style="box-sizing: border-box; width: 607.922px;">\r\n<div class="a-column a-span6" style="box-sizing: border-box; margin-right: 24.3125px; float: left; min-height: 1px; overflow: visible; width: 291.562px;">\r\n<h1 class="a-size-medium a-spacing-small" style="box-sizing: border-box; padding: 0px; text-rendering: optimizelegibility; font-weight: 400; font-size: 17px !important; line-height: 1.255 !important; margin: 0px 0px 8px !important 0px;">Technical Details</h1>\r\n</div>\r\n</div>\r\n<div class="a-expander-content a-expander-extend-content" style="box-sizing: border-box;" aria-expanded="true">\r\n<div class="a-row a-expander-container a-expander-inline-container" style="box-sizing: border-box; width: 607.922px;" aria-live="polite">\r\n<div class="a-expander-content a-expander-section-content a-section-expander-inner" style="box-sizing: border-box; border-top: 1px solid #dddddd; padding: 12px 18px;" aria-expanded="true">\r\n<table id="productDetails_techSpec_section_1" class="a-keyvalue prodDetTable" style="margin-bottom: 22px; width: 571px; border-bottom: 1px solid #e7e7e7; table-layout: fixed; border-spacing: 0px; padding: 0px;" role="presentation">\r\n<tbody style="box-sizing: border-box;">\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Brand</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">ASUS</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Manufacturer</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Asus</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Model</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">UX430UA-GV573T</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Model Name</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">ZenBook</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Batteries</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">1 Lithium Polymer batteries required. (included)</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Item model number</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">UX430UA-GV573T</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">RAM Size</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">8 GB</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Flash Memory Installed Size</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">256 Unknown modifier</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Ram Memory Installed Size</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">8 GB</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Maximum Memory Supported</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">8 GB</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Ram Memory Technology</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">LPDDR3</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Hard Drive Size</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">256 GB</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Hard Disk Description</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Flash Memory Solid State</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Optical Drive Type</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">None</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Card Reader</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Secure Digital Card</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Operating System</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Windows 10 Home</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Processor Brand</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Intel</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Processor Type</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Core i5 8250U</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Processor Count</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">4</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Graphics Card Description</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Integrated</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Graphics Coprocessor</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Integrated Intel UHD Graphics 620</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Mounting Hardware</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Laptop, AC Adapter, User Guide, Manuals</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Supported Software</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Audio by ICEpower, harmon/ kardon</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Display Technology</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">LCD</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Standing screen display size</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">14 Inches</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Display Type</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">LED-Backlit</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Resolution</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">1920 x 1080 (Full HD)</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Power Source</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Battery Powered</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Batteries Included</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Yes</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Batteries Required</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Yes</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Connector Type</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Wireless</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Manufacturer</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">Asus</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Manufacturer Contact</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">18002090365</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Item Weight</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">1.3 kg</td>\r\n</tr>\r\n<tr style="box-sizing: border-box;">\r\n<th class="a-color-secondary a-size-base prodDetSectionEntry" style="box-sizing: border-box; vertical-align: top; text-align: left; padding: 7px 14px 6px; background-color: #f3f3f3; font-weight: 400; border-top-color: #e7e7e7; overflow-wrap: break-word; width: 285px; line-height: 19px !important;">Product Dimensions</th>\r\n<td class="a-size-base" style="box-sizing: border-box; vertical-align: top; padding: 7px 14px 6px; border-top-color: #e7e7e7; color: #333333; line-height: 19px !important;">22.5 x 32.4 x 1.6 cm</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	BOTH		1
11	Canon EOS 1500D 24.1 Digital SLR Camera (Black)	canon-eos-1500d	548	0	t	t	2020-07-18 13:30:13.546866+00	2020-07-18 13:32:14.518111+00	8	<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">New 24.2MP APS-C CMOS Image Sensor uses Copper wiring construction to achieve premium image quality and advanced AF performance</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Large 3.5&rdquo; 16: 9 wide Touchscreen LCD</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Compact and lightweight design weighing only 455G with the kit lens</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Advanced video performance and functions that cater to the growing demands for movie shooting</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Diverse shooting modes that help produce photography with a creative flair</span></li>\r\n</ul>	<h2 style="box-sizing: border-box; padding: 0px 0px 4px; margin: 0px; text-rendering: optimizelegibility; font-size: 21px; line-height: 1.3; color: #111111; font-family: 'Amazon Ember', Arial, sans-serif; background-color: #ffffff;">From the manufacturer</h2>\r\n<p><span style="color: #111111; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">High quality, smooth 4K movies</span></p>\r\n<p class="a-spacing-base" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 14px !important 0px;">With the large 16:9 aspect ratio Vari-angle LCD screen, it&rsquo;s easy to frame, record and review video and vlogs for creative and cinematic results.</p>\r\n<p class="a-spacing-base" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 14px !important 0px;">The X-A7 produces 4K(3820&times;2150) video using data equal to 6K (6032&times;3392), to improve the video quality with less image noise. The camera records 4K at a smooth 30p with no cropping for great, big-screen results.</p>\r\n<p class="a-spacing-base" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 14px !important 0px;"><span class="a-text-bold" style="box-sizing: border-box; font-weight: 700 !important;">Give your video the look you want:</span></p>\r\n<p class="a-spacing-base" style="box-sizing: border-box; padding: 0px; margin: 0px 0px 14px !important 0px;">Get creative and give your video different looks using Fujifilm&rsquo;s legendary Film Simulation settings as well as the wide range of Fujifilm lenses including the versitile XC15-45mm lens, to produce unique, high-quality videos that can&rsquo;t be created in any smartphone or entry-level compact camera.</p>	INDIA		1
13	Samsung Galaxy M31	Samsung-Galaxy-Ocean-128GB-Storage	458	0	t	t	2020-07-18 13:57:48.084283+00	2020-07-18 13:57:48.0843+00	28	<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Quad Camera Setup - 64MP (F1.8) Main Camera +8MP (F2.2) Ultra Wide Camera +5MP(F2.2) Depth Camera +5MP(F2.4) Macro Camera and 32MP (F2.0) front facing Camera</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">6.4-inch(16.21 centimeters) Super Amoled - Infinity U Cut Display , FHD+ Resolution (2340 x 1080) , 404 ppi pixel density and 16M color support</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Android v10.0 operating system with 2.3GHz + 1.7GHz Exynos 9611 Octa core processor , 6GB RAM, 128GB internal memory expandable up to 512GB and dual SIM</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">6000 mAh Battery</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">For any product related queries contact brand toll free number - 180057267864</span></li>\r\n</ul>	<p><span style="color: #333333; font-family: 'Amazon Ember', Arial, sans-serif; font-size: small; background-color: #ffffff;">With the Samsung Galaxy M31, Samsung re-introduces the powerful 6000 mAh battery along with all round features comprising of a 64 MP rear camera in Quad camera set up and an immersive sAmoled screen.</span></p>	INDIA		1
14	Nokia 4.2 (Black, 3GB RAM, 32GB Storage)	Nokia-4-2-Black-32GB-Storage	458	0	t	t	2020-07-18 14:01:05.024606+00	2020-07-18 14:01:05.024624+00	30	<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">5.71-inch (14.5 cm) HD+</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Latest Android 10 ready</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Dedicated Google Assistant Button</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">3GB RAM, 32GB internal memory expandable up to 400GB</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">13MP primary camera and 8MP front camera</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Customer care number - 1800 1028 169</span></li>\r\n</ul>	<p><span style="color: #333333; font-family: 'Amazon Ember', Arial, sans-serif; font-size: small; background-color: #ffffff;">The Nokia 4.2 lets you enjoy videos and games on the compact 5.71&rdquo; HD+ display, set in a stunning 2.5D curved glass design. Quick snaps look like great photos thanks to the dual 13 MP and 2 MP rear-facing camera and pro editing tools, and biometric face unlocking conveniently opens your phone in seconds. The Nokia 4.2 comes with a dedicated Google Assistant Button that makes your everyday tasks a breeze.</span></p>	BOTH		1
12	realme X (Space Blue, 4GB RAM, 128GB Storage)	realme-x-Space-Blue-128GB-Storage	589	0	t	t	2020-07-18 13:53:06.133321+00	2020-07-18 14:01:57.076162+00	29	<p><span style="color: #333333; font-family: 'Amazon Ember', Arial, sans-serif; font-size: small; background-color: #ffffff;">Product Description Experience a Cinematic View Detailing, such as this phones 91.2% screen-to-body ratio and its 16.58 cm (6.53) super AMOLED screen do their bit to offer you an immersive experience whether youre watching movies, reading, browsing the Internet, or gaming. Under this phones elegant display are the fingerprint and camera modules. Pop-up Camera Its AI-enabled 16 MP front camera delivers ultra HD selfies. This sapphire glass camera boasts an advanced pulse motor solution and takes just about 0.74 seconds to pop up when you opt for the front camera mode. In-display Fingerprint Scanner Unlock your phone in no time, and securely by scanning your fingerprint on this scanner from Goodix. It boasts a 44% larger pixel size and a 30% wider dynamic range than the previous models. This scanner uses the DSP acceleration engine and light compensation solutions to boost the phones unlocking speed by up to 28.5% than the previous generation. Unlock the Beauty of Its Rear Camera Equipped with a 48 + 5 MP dual-rear camera system, this phone is a class apart. Discover new ways to take artistic pictures of everyday objects, scenery, or portraits. Also, check out the power of this phones image tuning solution which enables ultra HD imaging of night views. This feature is also responsible for enhancing the colours in photos. VOOC Flash Charge The VOOC Flash Charge 3.0 algorithm in this phone trims its charging time by up to 23.8% as compared to version 2.0. Your phone charges up to 6 times faster than normal charging, even if you happen to be playing an intense game for almost an hour. Reap these benefits without worrying about your phone getting warm because its 3765 mAh battery boasts a 15% lower peak temperature than regular fast-charging phone batteries. UFS 2.1 Flash Storage This phone adopts the LPDDR4X and UFS 2.1 flash storage technologies to ensure high-speed data writing and reading. Seamlessly switch between apps regardless of how many of them a</span></p>	<ul class="a-unordered-list a-vertical a-spacing-mini" style="box-sizing: border-box; margin: 0px 0px 0px 18px; color: #111111; padding: 0px; font-family: 'Amazon Ember', Arial, sans-serif; font-size: 13px; background-color: #ffffff;">\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">48+5MP dual rear camera with bokeh mode, slow-mo video, chroma boost | 16MP front camera</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">16.5862 centimeters (6.53-inch) AMOLED full screen capacitive touchscreen with 1080 x 2340 pixels resolution, 394 ppi pixel density</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Memory, Storage &amp; SIM: 4GB RAM | 128GB internal memory expandable up to NA | Dual SIM (nano+nano) dual-standby (4G+4G)</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Android Pie 9.0 operating system with 2.2GHz Qualcomm Snapdragon 710 AIE octa core processor, Adreno 616</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">3765mAH lithium -polymer battery</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase</span></li>\r\n<li style="box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;"><span class="a-list-item" style="box-sizing: border-box;">Box also includes: Adapter, Type-c data cable, Important Info Booklet with Warranty Card, Quick Guide, SIM Card Tool, 1 x Screen Protect Film (Applied), 1 x Case</span></li>\r\n</ul>	INDIA		1
15	Asus VivoBook 14 Core i3 10th Gen	asus-core-i5-10th-gen-8-gb	456	0	t	t	2020-07-19 07:10:35.638494+00	2020-07-19 07:10:35.638533+00	27	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">\r\n<div class="_2THx53" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; font-size: 20px;">NanoEdge Display</div>\r\n<div class="_1aK10F" style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.29;">\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px;">This NanoEdge display of this Asus laptop boasts an almost bezel-free design, along with up to 87% screen-to-body ratio so that you can view more with ease. On top of that, the display also comes with an HD camera on top, allowing you to connect with your family, friends, and acquaintances through video chats.</p>\r\n</div>\r\n</li>\r\n</ul>	<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">X412FA-EK362T</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">90NB0L92-M12010</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">VivoBook 14</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Slate Grey</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Thin and Light Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>	BOTH		1
16	Asus Core i5 10th Gen	asus-core-i5-10th-gen-8-gb-512-gb-ssd-windows-10-h	456	0	t	t	2020-07-19 07:14:37.342491+00	2020-07-19 07:14:37.342554+00	27	<ul>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; color: #212121; position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;"><br class="Apple-interchange-newline" />Pre-installed Genuine Windows 10 OS</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; color: #212121; position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">NVIDIA Geforce MX110 for High Graphics Performance</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; color: #212121; position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Light Laptop without Optical Disk Drive</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; color: #212121; position: relative; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">15.6 inch Full HD LED Backlit Anti-glare Display (200 nits Brightness, 45% NTSC, 83% Screen-to-body Ratio)</li>\r\n</ul>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">X509JB-EJ591T</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">90NB0QD1-M00460</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Transparent Silver</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Suitable For</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Processing &amp; Multitasking</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	BOTH		1
17	Asus ROG Strix G Core i5 9th Gen	asus-rog-strix-g-core-i5-9th-gen-8-gb-1-tb-ssd-win	125	0	t	t	2020-07-19 07:18:27.159969+00	2020-07-19 07:18:27.160001+00	27	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">This ASUS Gaming Laptop ensures that you get to witness every moment in the game at 120 Hz on its fast gaming display. Its rapid refresh rate gives you smooth graphics for enhanced gaming. This laptop has keys with translucent edges and transparent WASD caps to make the keyboard more aesthetically appealing. This laptop augments its well-ventilated exterior to eject dust and enhance longevity. With increased airflow and ultra-thin fins, the surface area is expanded for better heat dissipation. This way, you can game for a long time without worrying about your laptop heating up.&nbsp;</li>\r\n</ul>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">G531GT-AL271T</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">90NR01L3-M10540</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">ROG Strix G</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Gaming Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	BOTH		1
18	Dell Vostro 14 3000 Core i5 8th Gen	dell-vostro-14-3000-core-i5-8th-gen	456	0	t	t	2020-07-19 07:22:40.296965+00	2020-07-19 07:22:40.29699+00	25	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Light Laptop without Optical Disk Drive</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">14 inch HD LED Backlit Anti-glare Display</li>\r\n</ul>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">VOS 3480</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">E-C552106UIN9</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Vostro 14 3000</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	BOTH		1
19	Dell Inspiron Core i3 10th Gen	ell-inspiron-core-i3-10th-gen-4-gb	452	0	f	t	2020-07-19 07:25:37.201394+00	2020-07-19 07:25:37.201418+00	25	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Stylish &amp; Portable Thin and Light Laptop</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">14 inch Full HD LED Backlit IPS Touch Display</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Finger Print Sensor for Faster System Access</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">Light Laptop without Optical Disk Drive</li>\r\n</ul>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Inspiron 5491</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">SLV-C562522WIN9</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Inspiron</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Silver</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Thin and Light Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	INDIA		1
20	Lenovo Ideapad S340 Core i5 10th Gen	lenovo-ideapad-s340-core-i5	452	0	t	t	2020-07-19 07:34:03.924056+00	2020-07-19 07:34:03.92408+00	31	<p><br class="Apple-interchange-newline" /><span style="color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">This Lenovo laptop is here to help you get work done, game, and do more with ease and efficiency. Its stylish design and innovative features will make it difficult for you to put it down. Its 10th Gen Processor ensures that you get to enjoy everything it has to offer. And, with Dolby Audio, you will enjoy an immersive experience every time you stream content or game.</span></p>\r\n<div class="_2THx53" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; color: #212121; font-size: 20px; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;"><br class="Apple-interchange-newline" />10th Gen Intel Processor</div>\r\n<div class="_1aK10F" style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 14px; line-height: 1.29; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px;">This laptop is equipped with the 10th Gen Intel Core i5 Processor that learns and adapts according to your usage patterns with the deep learning boost (DLP) feature. Its 4K resolution and 1080p gaming features will keep you hooked.</p>\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px;">&nbsp;</p>\r\n<div class="_2THx53" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; font-size: 20px;">Endless Entertainment</div>\r\n<div class="_1aK10F" style="box-sizing: border-box; margin: 0px; padding: 0px; line-height: 1.29;">\r\n<p style="box-sizing: border-box; margin: 0px; padding: 0px;">Thanks to Dolby Audio, you will hear every beat and thump of songs, movies, and games. With its slim top, side bezels, and high-resolution, your eyes will be delighted to see the visuals on screen.</p>\r\n</div>\r\n</div>	<div class="_2THx53" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 10px; color: #212121; font-size: 20px; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; font-size: 12px;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop, Power Adaptor, User Guide, Warranty Documents</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">81VV ideapad S340 -14IIL U</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">81VV008TIN</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Ideapad S340</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Platinum Grey</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Thin and Light Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>\r\n</div>	INDIA		1
21	Mi 4A PRO 80 cm (32) HD Ready LED Smart Android TV	mi-4a-pro-80-cm-32-hd-ready-led-smart-android-tv-	4568	0	t	t	2020-07-19 07:40:52.230417+00	2020-07-19 07:41:19.756382+00	7	<p><span style="color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">There is no fun in watching your favourite movie or show on a TV where the display quality is poor. Now, boost the fun and watch them all in good and clear-quality on this 80 cm (32) Mi smart TV. Its HD Ready display can accentuate your viewing experience and make it better. You can even access video streaming apps on it and never run out of quality-content to watch and enjoy. It comes with 2 speakers that deliver powerful audio which lets you experience the environment of a cinema hall right in your bedroom or living room.</span></p>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo V39ti-" style="box-sizing: border-box; margin: 0px; padding: 0px; max-height: 350px; overflow: hidden; position: relative;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">In The Box</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED TV 1U, Manual 1U, Screws 4U, Remote Control 1U, Stand 1U</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">L32M5-AL</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Display Size</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">80 cm (32)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Screen Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HD Technology &amp; Resolution</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">HD Ready, 1366 x 768</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	INDIA		1
22	Thomson R9 60cm (24 inch) HD Ready LED TV	thomson-r9-60cm-24-inch-hd-ready-led-tv	458	0	f	t	2020-07-19 07:45:03.28077+00	2020-07-19 07:45:03.280802+00	7	<p><span style="color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">Bring home this TV from Thomson and binge-watch your favourite content in the comfort of your house. This TV features a wide viewing angle of 178 degrees, which makes it easier for you to enjoy content wherever you&rsquo;re seated. You can enjoy an immersive sound experience, thanks to the enhanced audio system of this TV.</span></p>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo" style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">In The Box</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1unit (1ledtv,1remote,1manual 2aaa battery with wall mounting)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">24TM2490</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Display Size</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">60 cm (24)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Screen Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HD Technology &amp; Resolution</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">HD Ready, 1366 x 768</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">3D</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Smart TV</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Curve TV</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Series</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">R9</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Touchscreen</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Motion Sensor</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HDMI</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">USB</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Built In Wi-Fi</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Launch Year</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2018</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Internet Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Built In Wi-Fi</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">3G Dongle Plug and Play</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Connectivity Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HDMI</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Side</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">USB</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Side</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">PC Audio In</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Digital Audio Output</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Audio Out</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">RF Connectivity Output</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Video Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Brightness</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">300 nits</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Contrast Ratio</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">125 (Static)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Analog TV Reception</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">View Angle</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">178 degree</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Digital Noise Filter</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">LED Display Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Aspect Ratio</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">16:9, 4:3, Auto, Just Scan, Zoom1, Zoom2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Refresh Rate</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">60 Hz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported Video Formats</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">AVI, MPG, DAT, VOB, DIV, MOV, MKV, RM</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Other Video Features</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Built-in Digital Media, Digital Audio Output to Connect External Audio Systems, Digital Noise Reduction, Response Time: 6.5 ms</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Smart Tv Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported App - Netflix</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported App - Youtube</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported App - Disney+Hotstar</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported Devices for Casting</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Laptop</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Audio Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Number of Speakers</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Speaker Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Free Edge Speaker</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sound Technology</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Surround</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Surround Sound</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Speaker Output RMS</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">20 W</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Subwoofer Output RMS</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">20</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Supported Audio Formats</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">WMA, MP3, M4A</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Other Audio Features</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 5px; list-style: none;">Automatic Volume Level (AVL)</li>\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 5px; list-style: none;">Digital Media Player (DMP) Content: Music, Music Alone mode, Noice reduction 3D, Sport Mode</li>\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 5px; list-style: none;">Total Surround</li>\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Audio Equalizer</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	INDIA		1
23	Odile Portable LED Projector	odile-portable-led-projector-office	458	0	t	t	2020-07-19 07:53:48.503219+00	2020-07-19 07:53:48.503245+00	9	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Projector Type: LED Projector | Chipset: LED</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Maximum Projection Distance: 9.34 ft</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Lamp Life: 3000 hr</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Resolution: 1920*1080 pixel</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Aspect Ratio: 16:9</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">Maximum Brightness: 400 lm</li>\r\n</ul>	<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 693px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Portable LED Projector Office. HD Theater Support USB HDMI Mini 1080p EU Plug 600 lm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">YG300</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yellow</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Portable</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Maximum Brightness</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">400 lm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Light Source</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">24</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Display And Audio Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 693px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">3D Support</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Warranty</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 693px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Warranty Summary</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">10 Days Replacement Only</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Warranty Service Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">NA</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Covered in Warranty</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Manufacturing defect</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 693px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 173.25px; display: inline-block; vertical-align: top; color: #878787;">Not Covered in Warranty</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 519.75px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Physical damage</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>	INDIA		1
24	Unic Three Glasses lenses/ 150 lumens With Remote	unic-three-glasses-lenses-150-lumens-remote-contro	568	0	t	t	2020-07-19 07:58:02.377651+00	2020-07-19 07:58:02.377687+00	9	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Projector Type: HD Ready | Chipset: LED</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Maximum Projection Distance: 11 ft</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Lamp Life: 40000 hr</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Resolution: 480x320 pixel</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Aspect Ratio: 600:1</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Maximum Brightness: 150 lm</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">HDMI Ports: 1</li>\r\n</ul>	<div class="_2GiuhO" style="box-sizing: border-box; margin: 0px; padding: 24px 30px 24px 24px; display: flex; align-items: center; justify-content: space-between; font-size: 24px; line-height: 1.14; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">Specifications</div>\r\n<div style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 12px; background-color: #ffffff;">\r\n<div class="_3Rrcbo" style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Sales Package</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1 x UC 30 mini LED Projector, 1 x USER Guide, 1 x AC Adapter, 1 x AV Cable</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Three Glasses lenses/ 150 lumens With Remote Controller Portable Projector</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Part Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">86855</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">White</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Portable</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Maximum Brightness</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">150 lm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Light Source</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">LED</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Minimum Projection Distance</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">11 inch</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Display And Audio Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HD Graphic Mode</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1080P</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">3D Support</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Dynamic Contrast Ratio</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">4:3</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Adjustable Aspect Ratio</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">4:3</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Standard Brightness</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">150 lm</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Maximum Diagonal Projection Size</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">30 inch</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Contrast Ratio</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">800:1 Hz</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Number of Speakers</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Number of Lamps</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">2</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Connectivity Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 690px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Memory Cards Supported</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Micro SD</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Wireless Network Connectivity</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">No</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">USB Version</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">USB 3.0</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Component HD Video In</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Component Video In</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Audio In</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">Headphone Jack</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">3.5 mm Jack</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">HDMI Ports</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 690px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 172.5px; display: inline-block; vertical-align: top; color: #878787;">USB Ports</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 517.5px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">1</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>\r\n</div>	INDIA		1
25	Nikon D5600 DSLR Camera Body with Dual Lens	nikon-d5600-dslr-camera-body-dual-lens-af-p-dx-nik	458	0	t	t	2020-07-19 08:01:12.083568+00	2020-07-30 08:24:09.597864+00	8	<ul style="box-sizing: border-box; margin: 0px; padding: 0px; color: #212121; font-family: Roboto, Arial, sans-serif; font-size: 14px; background-color: #ffffff;">\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Effective Pixels: 24.2 MP</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">Sensor Type: CMOS</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;">WiFi Available</li>\r\n<li class="_2-riNZ" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 0px 16px; list-style: none; position: relative;">1080p recording at 30p</li>\r\n</ul>	<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">General</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 756px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Brand</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Nikon</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Model Number</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">D5600</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Model Name</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">D5600</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">SLR Variant</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Body with Dual Lens: AF-P DX Nikkor 18 - 55 MM F/3.5-5.6G VR and 70-300 MM F/4.5-6.3G ED VR (16 GB SD Card)</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Brand Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">DSLR</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Color</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Black</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Effective Pixels</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">24.2 MP</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Tripod Socket</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Wifi</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Temperature</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">0DegreeC - 40DegreeC</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Ports</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Hi-Speed USB with Micro USB Connector, Type C HDMI Connector</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Accessory Shoe</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">ISO 518 Hot Shoe with Sync and Data Contacts and Safety Lock</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Sensor Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 756px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Sensor Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">CMOS</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">ISO Rating</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">100 - 25,600</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="_2RngUh" style="box-sizing: border-box; margin: 0px; padding: 24px 24px 34px; border-top: 1px solid #f0f0f0; font-size: 14px; color: #212121; font-family: Roboto, Arial, sans-serif; background-color: #ffffff;">\r\n<div class="_2lzn0o" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;">Lens Features</div>\r\n<table class="_3ENrHu" style="margin: 0px; padding: 0px; width: 756px;">\r\n<tbody style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Lens Construction</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">D-Zoom Kit: AF-P DX Nikkor 18 - 55 mm f/3.5-5.6G VR + AF-P DX Nikkor 70 - 300 mm f/4.5-6.3G ED VR</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Maximum Aperture</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">F/5.6</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Lens Type</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Aoto Focus-S 18-140 mm VR Kit Lens</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Lens Mount</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Nikon F Mount</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Dust Reduction</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Compatible Lens</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Nikkor Lens</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n<tr class="_3_6Uyw row" style="box-sizing: border-box; margin: 0px; padding: 0px; display: flex; flex-flow: row wrap; width: 756px;">\r\n<td class="_3-wDH3 col col-3-12" style="box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 189px; display: inline-block; vertical-align: top; color: #878787;">Manual Focus</td>\r\n<td class="_2k4JXJ col col-9-12" style="box-sizing: border-box; margin: 0px; padding: 0px; width: 567px; display: inline-block; vertical-align: top; line-height: 1.4; word-break: break-word;">\r\n<ul style="box-sizing: border-box; margin: 0px; padding: 0px;">\r\n<li class="_3YhLQA" style="box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;">Yes</li>\r\n</ul>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>	INDIA	fgfdg	1
\.


--
-- Data for Name: shop_productimage; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_productimage (id, product_image, product_id) FROM stdin;
1	shop/images/products/hp1.jpeg	9
2	shop/images/products/hp2.jpeg	9
3	shop/images/products/hp4.jpeg	9
4	shop/images/products/hp4_L1jadiW.jpeg	9
5	shop/images/products/ffl1.jpeg	7
6	shop/images/products/ffl2.jpeg	7
7	shop/images/products/ffl3.jpeg	7
8	shop/images/products/ffl4.jpeg	7
9	shop/images/products/watch1.jpeg	8
10	shop/images/products/watch2.jpeg	8
11	shop/images/products/watch3.jpeg	8
12	shop/images/products/watch4.jpeg	8
13	shop/images/products/watch5.jpeg	8
14	shop/images/products/ghadi1.jpeg	6
15	shop/images/products/ghadi2.jpeg	6
16	shop/images/products/ghadi3.jpeg	6
17	shop/images/products/asus.jpg	10
18	shop/images/products/asus4.jpg	10
19	shop/images/products/ausu3.jpg	10
20	shop/images/products/ausu5.jpg	10
21	shop/images/products/ausus2.jpg	10
22	shop/images/products/dslr-1.jpg	11
23	shop/images/products/dslr-2.jpg	11
24	shop/images/products/dslr-3.jpg	11
25	shop/images/products/sam1.jpg	13
26	shop/images/products/sam2.jpg	13
27	shop/images/products/sam3.jpg	13
28	shop/images/products/nok1.jpg	14
29	shop/images/products/nok2.jpg	14
30	shop/images/products/nok3.jpg	14
31	shop/images/products/realme1.jpg	12
32	shop/images/products/realme2.jpg	12
33	shop/images/products/realme3.jpg	12
34	shop/images/products/as-1.jpeg	15
35	shop/images/products/as2.jpeg	15
36	shop/images/products/as3.jpeg	15
37	shop/images/products/asu-1.jpeg	16
38	shop/images/products/asu2.jpeg	16
39	shop/images/products/asu3.jpeg	16
40	shop/images/products/asd-1.jpeg	17
41	shop/images/products/asd2.jpeg	17
42	shop/images/products/dell1.jpeg	18
43	shop/images/products/dell2.jpeg	18
44	shop/images/products/dell3.jpeg	18
45	shop/images/products/Dell_Inspiron1.jpeg	19
46	shop/images/products/Dell_Inspiron2.jpeg	19
47	shop/images/products/Dell_Inspiron3.jpeg	19
48	shop/images/products/len1.jpeg	20
49	shop/images/products/len2.jpeg	20
50	shop/images/products/len3.jpeg	20
51	shop/images/products/Mi_4A1.jpeg	21
52	shop/images/products/Mi_4A2.jpeg	21
53	shop/images/products/Mi_4A3.jpeg	21
54	shop/images/products/tv1.jpeg	22
55	shop/images/products/tv2.jpeg	22
56	shop/images/products/tv3.jpeg	22
57	shop/images/products/pro1.jpeg	23
58	shop/images/products/pro2.jpeg	23
59	shop/images/products/3.jpeg	23
60	shop/images/products/p1.jpeg	24
61	shop/images/products/p2.jpeg	24
62	shop/images/products/cm.jpeg	25
\.


--
-- Data for Name: shop_productprice; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_productprice (price_id, old_price, price, price_currency_code, created_at, updated_at, product_id, old_currency_rate) FROM stdin;
1	120	110	INR	2020-07-17 06:19:41.602531+00	2020-07-17 08:22:50.007072+00	9	1
7	456	423	INR	2020-07-17 06:22:47.639663+00	2020-07-17 08:22:50.03822+00	7	1
8	1250	1200	INR	2020-07-17 06:23:09.969954+00	2020-07-17 08:22:50.04731+00	6	1
6	25336	23659	INR	2020-07-17 06:20:49.311503+00	2020-07-17 08:22:50.056537+00	8	1
3	1.32	1.21	GBP	2020-07-17 06:19:41.604335+00	2020-07-17 08:23:01.184695+00	9	0.011
12	5.02	4.65	GBP	2020-07-17 08:23:01.193459+00	2020-07-17 08:23:01.193476+00	7	0.011
13	13.75	13.2	GBP	2020-07-17 08:23:01.201083+00	2020-07-17 08:23:01.201101+00	6	0.011
14	278.7	260.25	GBP	2020-07-17 08:23:01.208825+00	2020-07-17 08:23:01.208848+00	8	0.011
5	1.44	1.32	EUR	2020-07-17 06:19:41.60554+00	2020-07-17 08:23:12.54347+00	9	0.012
15	5.47	5.08	EUR	2020-07-17 08:23:12.552219+00	2020-07-17 08:23:12.552237+00	7	0.012
16	15	14.4	EUR	2020-07-17 08:23:12.559939+00	2020-07-17 08:23:12.559957+00	6	0.012
17	304.03	283.91	EUR	2020-07-17 08:23:12.569808+00	2020-07-17 08:23:12.569826+00	8	0.012
4	2.28	2.09	AUD	2020-07-17 06:19:41.604949+00	2020-07-17 09:00:33.698151+00	9	0.019
18	8.66	8.04	AUD	2020-07-17 09:00:33.707678+00	2020-07-17 09:00:33.707696+00	7	0.019
19	23.75	22.8	AUD	2020-07-17 09:00:33.714332+00	2020-07-17 09:00:33.71435+00	6	0.019
20	481.38	449.52	AUD	2020-07-17 09:00:33.723422+00	2020-07-17 09:00:33.723442+00	8	0.019
21	0	0	INR	2020-07-18 09:38:30.389035+00	2020-07-18 09:38:30.389052+00	8	0
22	0	0	INR	2020-07-18 12:38:52.435893+00	2020-07-18 12:38:52.435907+00	9	0
23	0	0	INR	2020-07-18 12:45:39.343939+00	2020-07-18 12:45:39.343956+00	9	0
2	1.56	1.43	USD	2020-07-17 06:19:41.603632+00	2020-07-18 12:48:44.819776+00	9	0.013
9	5.93	5.5	USD	2020-07-17 07:35:08.657435+00	2020-07-18 12:48:44.831056+00	7	0.013
10	16.25	15.6	USD	2020-07-17 07:35:08.66461+00	2020-07-18 12:48:44.841806+00	6	0.013
11	329.37	307.57	USD	2020-07-17 07:35:08.672723+00	2020-07-18 12:48:44.851347+00	8	0.013
25	1130.87	633.7	USD	2020-07-18 13:06:10.029486+00	2020-07-18 13:06:10.029504+00	10	0.013
24	86990	48746	INR	2020-07-18 13:06:01.78975+00	2020-07-18 13:10:30.068107+00	10	1
26	34994	26990	INR	2020-07-18 13:30:13.553909+00	2020-07-18 13:30:18.02655+00	11	1
27	0	0	INR	2020-07-18 13:31:25.041512+00	2020-07-18 13:31:25.041529+00	11	0
28	0	0	INR	2020-07-18 13:32:14.519845+00	2020-07-18 13:32:14.519861+00	11	0
31	12999	10070	INR	2020-07-18 14:01:05.030471+00	2020-07-18 14:01:11.0767+00	14	1
30	18499	17499	INR	2020-07-18 13:57:48.088155+00	2020-07-18 14:01:11.092602+00	13	1
29	0	17949	INR	2020-07-18 13:53:06.134523+00	2020-07-18 14:01:11.10516+00	12	1
32	0	0	INR	2020-07-18 14:01:57.080874+00	2020-07-18 14:01:57.080889+00	12	0
33	44990	36990	INR	2020-07-19 07:10:35.660727+00	2020-07-19 07:10:39.997102+00	15	1
34	54460	51990	INR	2020-07-19 07:14:37.352045+00	2020-07-19 07:14:41.749203+00	16	1
35	84990	71990	INR	2020-07-19 07:18:27.167461+00	2020-07-19 07:18:31.659577+00	17	1
36	50268	44990	INR	2020-07-19 07:22:40.303484+00	2020-07-19 07:22:43.975063+00	18	1
37	0	59437	INR	2020-07-19 07:25:37.209633+00	2020-07-19 07:25:49.357456+00	19	1
38	74790	56990	INR	2020-07-19 07:34:03.932383+00	2020-07-19 07:34:10.13409+00	20	1
39	14999	12499	INR	2020-07-19 07:40:52.233058+00	2020-07-19 07:40:54.974736+00	21	1
40	0	0	INR	2020-07-19 07:41:19.766991+00	2020-07-19 07:41:19.767021+00	21	0
41	1152	5499	INR	2020-07-19 07:45:03.292032+00	2020-07-19 07:45:07.143189+00	22	1
42	6999	2904	INR	2020-07-19 07:53:48.511164+00	2020-07-19 07:53:51.717239+00	23	1
43	9999	4499	INR	2020-07-19 07:58:02.384871+00	2020-07-19 07:58:06.386931+00	24	1
44	66450	49999	INR	2020-07-19 08:01:12.089004+00	2020-07-19 08:01:14.44058+00	25	1
45	0	0	INR	2020-07-30 08:24:09.600562+00	2020-07-30 08:24:09.60058+00	25	0
\.


--
-- Data for Name: shop_state; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.shop_state (id, name, created_at, updated_at, country_id) FROM stdin;
1	Andaman and Nicobar Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
2	Andhra Pradesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
3	Arunachal Pradesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
4	Assam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
5	Bihar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
6	Chandigarh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
7	Chhattisgarh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
8	Dadra and Nagar Haveli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
9	Daman and Diu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
10	Delhi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
11	Goa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
12	Gujarat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
13	Haryana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
14	Himachal Pradesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
15	Jammu and Kashmir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
16	Jharkhand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
17	Karnataka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
18	Kenmore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
19	Kerala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
20	Lakshadweep	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
21	Madhya Pradesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
22	Maharashtra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
23	Manipur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
24	Meghalaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
25	Mizoram	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
26	Nagaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
27	Narora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
28	Natwar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
29	Odisha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
30	Paschim Medinipur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
31	Pondicherry	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
32	Punjab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
33	Rajasthan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
34	Sikkim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
35	Tamil Nadu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
36	Telangana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
37	Tripura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
38	Uttar Pradesh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
39	Uttarakhand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
40	Vaishali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
41	West Bengal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	101
42	Badakhshan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
43	Badgis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
44	Baglan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
45	Balkh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
46	Bamiyan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
47	Farah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
48	Faryab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
49	Gawr	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
50	Gazni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
51	Herat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
52	Hilmand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
53	Jawzjan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
54	Kabul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
55	Kapisa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
56	Khawst	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
57	Kunar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
58	Lagman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
59	Lawghar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
60	Nangarhar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
61	Nimruz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
62	Nuristan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
63	Paktika	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
64	Paktiya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
65	Parwan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
66	Qandahar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
67	Qunduz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
68	Samangan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
69	Sar-e Pul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
70	Takhar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
71	Uruzgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
72	Wardag	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
73	Zabul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	1
74	Berat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
75	Bulqize	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
76	Delvine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
77	Devoll	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
78	Dibre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
79	Durres	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
80	Elbasan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
81	Fier	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
82	Gjirokaster	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
83	Gramsh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
84	Has	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
85	Kavaje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
86	Kolonje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
87	Korce	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
88	Kruje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
89	Kucove	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
90	Kukes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
91	Kurbin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
92	Lezhe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
93	Librazhd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
94	Lushnje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
95	Mallakaster	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
96	Malsi e Madhe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
97	Mat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
98	Mirdite	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
99	Peqin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
100	Permet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
101	Pogradec	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
102	Puke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
103	Sarande	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
104	Shkoder	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
105	Skrapar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
106	Tepelene	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
107	Tirane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
108	Tropoje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
109	Vlore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	2
110	'Ayn Daflah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
111	'Ayn Tamushanat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
112	Adrar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
113	Algiers	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
114	Annabah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
115	Bashshar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
116	Batnah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
117	Bijayah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
118	Biskrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
119	Blidah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
120	Buirah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
121	Bumardas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
122	Burj Bu Arririj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
123	Ghalizan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
124	Ghardayah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
125	Ilizi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
126	Jijili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
127	Jilfah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
128	Khanshalah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
129	Masilah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
130	Midyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
131	Milah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
132	Muaskar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
133	Mustaghanam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
134	Naama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
135	Oran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
136	Ouargla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
137	Qalmah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
138	Qustantinah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
139	Sakikdah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
140	Satif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
141	Sayda'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
142	Sidi ban-al-'Abbas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
143	Suq Ahras	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
144	Tamanghasat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
145	Tibazah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
146	Tibissah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
147	Tilimsan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
148	Tinduf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
149	Tisamsilt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
150	Tiyarat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
151	Tizi Wazu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
152	Umm-al-Bawaghi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
153	Wahran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
154	Warqla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
155	Wilaya d Alger	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
156	Wilaya de Bejaia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
157	Wilaya de Constantine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
158	al-Aghwat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
159	al-Bayadh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
160	al-Jaza'ir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
161	al-Wad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
162	ash-Shalif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
163	at-Tarif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	3
164	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	4
165	Manu'a	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	4
166	Swains Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	4
167	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	4
168	Andorra la Vella	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
169	Canillo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
170	Encamp	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
171	La Massana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
172	Les Escaldes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
173	Ordino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
174	Sant Julia de Loria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	5
175	Bengo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
176	Benguela	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
177	Bie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
178	Cabinda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
179	Cunene	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
180	Huambo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
181	Huila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
182	Kuando-Kubango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
183	Kwanza Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
184	Kwanza Sul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
185	Luanda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
186	Lunda Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
187	Lunda Sul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
188	Malanje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
189	Moxico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
190	Namibe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
191	Uige	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
192	Zaire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	6
193	Other Provinces	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	7
194	Sector claimed by Argentina/Ch	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
195	Sector claimed by Argentina/UK	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
196	Sector claimed by Australia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
197	Sector claimed by France	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
198	Sector claimed by New Zealand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
199	Sector claimed by Norway	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
200	Unclaimed Sector	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	8
201	Barbuda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
202	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
203	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
204	Saint Mary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
205	Saint Paul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
206	Saint Peter	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
207	Saint Philip	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	9
208	Buenos Aires	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
209	Catamarca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
210	Chaco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
211	Chubut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
212	Cordoba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
213	Corrientes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
214	Distrito Federal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
215	Entre Rios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
216	Formosa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
217	Jujuy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
218	La Pampa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
219	La Rioja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
220	Mendoza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
221	Misiones	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
222	Neuquen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
223	Rio Negro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
224	Salta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
225	San Juan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
226	San Luis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
227	Santa Cruz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
228	Santa Fe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
229	Santiago del Estero	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
230	Tierra del Fuego	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
231	Tucuman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	10
232	Aragatsotn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
233	Ararat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
234	Armavir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
235	Gegharkunik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
236	Kotaik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
237	Lori	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
238	Shirak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
239	Stepanakert	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
240	Syunik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
241	Tavush	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
242	Vayots Dzor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
243	Yerevan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	11
244	Aruba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	12
245	Auckland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
246	Australian Capital Territory	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
247	Balgowlah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
248	Balmain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
249	Bankstown	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
250	Baulkham Hills	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
251	Bonnet Bay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
252	Camberwell	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
253	Carole Park	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
254	Castle Hill	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
255	Caulfield	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
256	Chatswood	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
257	Cheltenham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
258	Cherrybrook	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
259	Clayton	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
260	Collingwood	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
261	Frenchs Forest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
262	Hawthorn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
263	Jannnali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
264	Knoxfield	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
265	Melbourne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
266	New South Wales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
267	Northern Territory	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
268	Perth	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
269	Queensland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
270	South Australia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
271	Tasmania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
272	Templestowe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
273	Victoria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
274	Werribee south	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
275	Western Australia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
276	Wheeler	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	13
277	Bundesland Salzburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
278	Bundesland Steiermark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
279	Bundesland Tirol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
280	Burgenland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
281	Carinthia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
282	Karnten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
283	Liezen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
284	Lower Austria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
285	Niederosterreich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
286	Oberosterreich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
287	Salzburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
288	Schleswig-Holstein	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
289	Steiermark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
290	Styria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
291	Tirol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
292	Upper Austria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
293	Vorarlberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
294	Wien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	14
295	Abseron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
296	Baki Sahari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
297	Ganca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
298	Ganja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
299	Kalbacar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
300	Lankaran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
301	Mil-Qarabax	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
302	Mugan-Salyan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
303	Nagorni-Qarabax	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
304	Naxcivan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
305	Priaraks	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
306	Qazax	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
307	Saki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
308	Sirvan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
309	Xacmaz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	15
310	Abaco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
311	Acklins Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
312	Andros	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
313	Berry Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
314	Biminis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
315	Cat Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
316	Crooked Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
317	Eleuthera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
318	Exuma and Cays	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
319	Grand Bahama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
320	Inagua Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
321	Long Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
322	Mayaguana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
323	New Providence	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
324	Ragged Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
325	Rum Cay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
326	San Salvador	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	16
327	'Isa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
328	Badiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
329	Hidd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
330	Jidd Hafs	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
331	Mahama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
332	Manama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
333	Sitrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
334	al-Manamah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
335	al-Muharraq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
336	ar-Rifa'a	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	17
337	Bagar Hat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
338	Bandarban	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
339	Barguna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
340	Barisal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
341	Bhola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
342	Bogora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
343	Brahman Bariya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
344	Chandpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
345	Chattagam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
346	Chittagong Division	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
347	Chuadanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
348	Dhaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
349	Dinajpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
350	Faridpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
351	Feni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
352	Gaybanda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
353	Gazipur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
354	Gopalganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
355	Habiganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
356	Jaipur Hat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
357	Jamalpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
358	Jessor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
359	Jhalakati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
360	Jhanaydah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
361	Khagrachhari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
362	Khulna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
363	Kishorganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
364	Koks Bazar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
365	Komilla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
366	Kurigram	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
367	Kushtiya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
368	Lakshmipur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
369	Lalmanir Hat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
370	Madaripur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
371	Magura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
372	Maimansingh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
373	Manikganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
374	Maulvi Bazar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
375	Meherpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
376	Munshiganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
377	Naral	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
378	Narayanganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
379	Narsingdi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
380	Nator	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
381	Naugaon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
382	Nawabganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
383	Netrakona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
384	Nilphamari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
385	Noakhali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
386	Pabna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
387	Panchagarh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
388	Patuakhali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
389	Pirojpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
390	Rajbari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
391	Rajshahi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
392	Rangamati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
393	Rangpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
394	Satkhira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
395	Shariatpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
396	Sherpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
397	Silhat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
398	Sirajganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
399	Sunamganj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
400	Tangayal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
401	Thakurgaon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	18
402	Christ Church	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
403	Saint Andrew	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
404	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
405	Saint James	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
406	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
407	Saint Joseph	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
408	Saint Lucy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
409	Saint Michael	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
410	Saint Peter	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
411	Saint Philip	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
412	Saint Thomas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	19
413	Brest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
414	Homjel'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
415	Hrodna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
416	Mahiljow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
417	Mahilyowskaya Voblasts	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
418	Minsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
419	Minskaja Voblasts'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
420	Petrik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
421	Vicebsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	20
422	Antwerpen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
423	Berchem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
424	Brabant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
425	Brabant Wallon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
426	Brussel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
427	East Flanders	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
428	Hainaut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
429	Liege	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
430	Limburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
431	Luxembourg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
432	Namur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
433	Ontario	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
434	Oost-Vlaanderen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
435	Provincie Brabant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
436	Vlaams-Brabant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
437	Wallonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
438	West-Vlaanderen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	21
439	Belize	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
440	Cayo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
441	Corozal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
442	Orange Walk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
443	Stann Creek	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
444	Toledo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	22
445	Alibori	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
446	Atacora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
447	Atlantique	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
448	Borgou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
449	Collines	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
450	Couffo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
451	Donga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
452	Littoral	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
453	Mono	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
454	Oueme	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
455	Plateau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
456	Zou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	23
457	Hamilton	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	24
458	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	24
459	Bumthang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
460	Chhukha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
461	Chirang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
462	Daga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
463	Geylegphug	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
464	Ha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
465	Lhuntshi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
466	Mongar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
467	Pemagatsel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
468	Punakha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
469	Rinpung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
470	Samchi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
471	Samdrup Jongkhar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
472	Shemgang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
473	Tashigang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
474	Timphu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
475	Tongsa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
476	Wangdiphodrang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	25
477	Beni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
478	Chuquisaca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
479	Cochabamba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
480	La Paz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
481	Oruro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
482	Pando	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
483	Potosi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
484	Santa Cruz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
485	Tarija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	26
486	Federacija Bosna i Hercegovina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	27
487	Republika Srpska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	27
488	Central Bobonong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
489	Central Boteti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
490	Central Mahalapye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
491	Central Serowe-Palapye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
492	Central Tutume	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
493	Chobe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
494	Francistown	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
495	Gaborone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
496	Ghanzi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
497	Jwaneng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
498	Kgalagadi North	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
499	Kgalagadi South	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
500	Kgatleng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
501	Kweneng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
502	Lobatse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
503	Ngamiland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
504	Ngwaketse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
505	North East	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
506	Okavango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
507	Orapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
508	Selibe Phikwe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
509	South East	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
510	Sowa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	28
511	Bouvet Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	29
512	Acre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
513	Alagoas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
514	Amapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
515	Amazonas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
516	Bahia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
517	Ceara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
518	Distrito Federal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
519	Espirito Santo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
520	Estado de Sao Paulo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
521	Goias	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
522	Maranhao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
523	Mato Grosso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
524	Mato Grosso do Sul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
525	Minas Gerais	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
526	Para	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
527	Paraiba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
528	Parana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
529	Pernambuco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
530	Piaui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
531	Rio Grande do Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
532	Rio Grande do Sul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
533	Rio de Janeiro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
534	Rondonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
535	Roraima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
536	Santa Catarina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
537	Sao Paulo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
538	Sergipe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
539	Tocantins	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	30
540	British Indian Ocean Territory	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	31
541	Belait	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	32
542	Brunei-Muara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	32
543	Temburong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	32
544	Tutong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	32
545	Blagoevgrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
546	Burgas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
547	Dobrich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
548	Gabrovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
549	Haskovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
550	Jambol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
551	Kardzhali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
552	Kjustendil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
553	Lovech	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
554	Montana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
555	Oblast Sofiya-Grad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
556	Pazardzhik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
557	Pernik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
558	Pleven	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
559	Plovdiv	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
560	Razgrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
561	Ruse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
562	Shumen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
563	Silistra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
564	Sliven	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
565	Smoljan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
566	Sofija grad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
567	Sofijska oblast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
568	Stara Zagora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
569	Targovishte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
570	Varna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
571	Veliko Tarnovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
572	Vidin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
573	Vraca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
574	Yablaniza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	33
575	Bale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
576	Bam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
577	Bazega	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
578	Bougouriba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
579	Boulgou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
580	Boulkiemde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
581	Comoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
582	Ganzourgou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
583	Gnagna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
584	Gourma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
585	Houet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
586	Ioba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
587	Kadiogo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
588	Kenedougou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
589	Komandjari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
590	Kompienga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
591	Kossi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
592	Kouritenga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
593	Kourweogo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
594	Leraba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
595	Mouhoun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
596	Nahouri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
597	Namentenga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
598	Noumbiel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
599	Oubritenga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
600	Oudalan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
601	Passore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
602	Poni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
603	Sanguie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
604	Sanmatenga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
605	Seno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
606	Sissili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
607	Soum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
608	Sourou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
609	Tapoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
610	Tuy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
611	Yatenga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
612	Zondoma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
613	Zoundweogo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	34
614	Bubanza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
615	Bujumbura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
616	Bururi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
617	Cankuzo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
618	Cibitoke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
619	Gitega	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
620	Karuzi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
621	Kayanza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
622	Kirundo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
623	Makamba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
624	Muramvya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
625	Muyinga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
626	Ngozi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
627	Rutana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
628	Ruyigi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	35
629	Banteay Mean Chey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
630	Bat Dambang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
631	Kampong Cham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
632	Kampong Chhnang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
633	Kampong Spoeu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
634	Kampong Thum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
635	Kampot	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
636	Kandal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
637	Kaoh Kong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
638	Kracheh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
639	Krong Kaeb	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
640	Krong Pailin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
641	Krong Preah Sihanouk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
642	Mondol Kiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
643	Otdar Mean Chey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
644	Phnum Penh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
645	Pousat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
646	Preah Vihear	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
647	Prey Veaeng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
648	Rotanak Kiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
649	Siem Reab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
650	Stueng Traeng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
651	Svay Rieng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
652	Takaev	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	36
653	Adamaoua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
654	Centre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
655	Est	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
656	Littoral	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
657	Nord	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
658	Nord Extreme	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
659	Nordouest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
660	Ouest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
661	Sud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
662	Sudouest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	37
663	Alberta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
664	British Columbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
665	Manitoba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
666	New Brunswick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
667	Newfoundland and Labrador	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
668	Northwest Territories	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
669	Nova Scotia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
670	Nunavut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
671	Ontario	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
672	Prince Edward Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
673	Quebec	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
674	Saskatchewan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
675	Yukon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	38
676	Boavista	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
677	Brava	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
678	Fogo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
679	Maio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
680	Sal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
681	Santo Antao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
682	Sao Nicolau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
683	Sao Tiago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
684	Sao Vicente	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	39
685	Grand Cayman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	40
686	Bamingui-Bangoran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
687	Bangui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
688	Basse-Kotto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
689	Haut-Mbomou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
690	Haute-Kotto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
691	Kemo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
692	Lobaye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
693	Mambere-Kadei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
694	Mbomou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
695	Nana-Gribizi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
696	Nana-Mambere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
697	Ombella Mpoko	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
698	Ouaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
699	Ouham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
700	Ouham-Pende	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
701	Sangha-Mbaere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
702	Vakaga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	41
703	Batha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
704	Biltine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
705	Bourkou-Ennedi-Tibesti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
706	Chari-Baguirmi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
707	Guera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
708	Kanem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
709	Lac	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
710	Logone Occidental	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
711	Logone Oriental	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
712	Mayo-Kebbi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
713	Moyen-Chari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
714	Ouaddai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
715	Salamat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
716	Tandjile	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	42
717	Aisen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
718	Antofagasta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
719	Araucania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
720	Atacama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
721	Bio Bio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
722	Coquimbo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
723	Libertador General Bernardo O'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
724	Los Lagos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
725	Magellanes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
726	Maule	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
727	Metropolitana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
728	Metropolitana de Santiago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
729	Tarapaca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
730	Valparaiso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	43
731	Anhui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
732	Anhui Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
733	Anhui Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
734	Aomen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
735	Beijing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
736	Beijing Shi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
737	Chongqing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
738	Fujian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
739	Fujian Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
740	Gansu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
741	Guangdong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
742	Guangdong Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
743	Guangxi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
744	Guizhou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
745	Hainan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
746	Hebei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
747	Heilongjiang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
748	Henan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
749	Hubei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
750	Hunan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
751	Jiangsu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
752	Jiangsu Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
753	Jiangxi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
754	Jilin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
755	Liaoning	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
756	Liaoning Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
757	Nei Monggol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
758	Ningxia Hui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
759	Qinghai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
760	Shaanxi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
761	Shandong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
762	Shandong Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
763	Shanghai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
764	Shanxi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
765	Sichuan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
766	Tianjin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
767	Xianggang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
768	Xinjiang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
769	Xizang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
770	Yunnan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
771	Zhejiang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
772	Zhejiang Sheng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	44
773	Christmas Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	45
774	Cocos (Keeling) Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	46
775	Amazonas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
776	Antioquia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
777	Arauca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
778	Atlantico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
779	Bogota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
780	Bolivar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
781	Boyaca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
782	Caldas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
783	Caqueta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
784	Casanare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
785	Cauca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
786	Cesar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
787	Choco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
788	Cordoba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
789	Cundinamarca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
790	Guainia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
791	Guaviare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
792	Huila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
793	La Guajira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
794	Magdalena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
795	Meta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
796	Narino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
797	Norte de Santander	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
798	Putumayo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
799	Quindio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
800	Risaralda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
801	San Andres y Providencia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
802	Santander	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
803	Sucre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
804	Tolima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
805	Valle del Cauca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
806	Vaupes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
807	Vichada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	47
808	Mwali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	48
809	Njazidja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	48
810	Nzwani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	48
811	Bouenza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
812	Brazzaville	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
813	Cuvette	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
814	Kouilou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
815	Lekoumou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
816	Likouala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
817	Niari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
818	Plateaux	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
819	Pool	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
820	Sangha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	49
821	Bandundu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
822	Bas-Congo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
823	Equateur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
824	Haut-Congo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
825	Kasai-Occidental	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
826	Kasai-Oriental	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
827	Katanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
828	Kinshasa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
829	Maniema	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
830	Nord-Kivu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
831	Sud-Kivu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	50
832	Aitutaki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
833	Atiu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
834	Mangaia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
835	Manihiki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
836	Mauke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
837	Mitiaro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
838	Nassau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
839	Pukapuka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
840	Rakahanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
841	Rarotonga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
842	Tongareva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	51
843	Alajuela	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
844	Cartago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
845	Guanacaste	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
846	Heredia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
847	Limon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
848	Puntarenas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
849	San Jose	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	52
850	Abidjan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
851	Agneby	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
852	Bafing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
853	Denguele	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
854	Dix-huit Montagnes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
855	Fromager	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
856	Haut-Sassandra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
857	Lacs	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
858	Lagunes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
859	Marahoue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
860	Moyen-Cavally	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
861	Moyen-Comoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
862	N'zi-Comoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
863	Sassandra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
864	Savanes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
865	Sud-Bandama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
866	Sud-Comoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
867	Vallee du Bandama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
868	Worodougou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
869	Zanzan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	53
870	Bjelovar-Bilogora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
871	Dubrovnik-Neretva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
872	Grad Zagreb	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
873	Istra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
874	Karlovac	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
875	Koprivnica-Krizhevci	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
876	Krapina-Zagorje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
877	Lika-Senj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
878	Medhimurje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
879	Medimurska Zupanija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
880	Osijek-Baranja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
881	Osjecko-Baranjska Zupanija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
882	Pozhega-Slavonija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
883	Primorje-Gorski Kotar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
884	Shibenik-Knin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
885	Sisak-Moslavina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
886	Slavonski Brod-Posavina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
887	Split-Dalmacija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
888	Varazhdin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
889	Virovitica-Podravina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
890	Vukovar-Srijem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
891	Zadar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
892	Zagreb	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	54
893	Camaguey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
894	Ciego de Avila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
895	Cienfuegos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
896	Ciudad de la Habana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
897	Granma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
898	Guantanamo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
899	Habana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
900	Holguin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
901	Isla de la Juventud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
902	La Habana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
903	Las Tunas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
904	Matanzas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
905	Pinar del Rio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
906	Sancti Spiritus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
907	Santiago de Cuba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
908	Villa Clara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	55
909	Government controlled area	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	56
910	Limassol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	56
911	Nicosia District	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	56
912	Paphos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	56
913	Turkish controlled area	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	56
914	Central Bohemian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
915	Frycovice	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
916	Jihocesky Kraj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
917	Jihochesky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
918	Jihomoravsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
919	Karlovarsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
920	Klecany	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
921	Kralovehradecky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
922	Liberecky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
923	Lipov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
924	Moravskoslezsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
925	Olomoucky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
926	Olomoucky Kraj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
927	Pardubicky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
928	Plzensky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
929	Praha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
930	Rajhrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
931	Smirice	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
932	South Moravian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
933	Straz nad Nisou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
934	Stredochesky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
935	Unicov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
936	Ustecky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
937	Valletta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
938	Velesin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
939	Vysochina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
940	Zlinsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	57
941	Arhus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
942	Bornholm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
943	Frederiksborg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
944	Fyn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
945	Hovedstaden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
946	Kobenhavn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
947	Kobenhavns Amt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
948	Kobenhavns Kommune	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
949	Nordjylland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
950	Ribe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
951	Ringkobing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
952	Roervig	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
953	Roskilde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
954	Roslev	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
955	Sjaelland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
956	Soeborg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
957	Sonderjylland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
958	Storstrom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
959	Syddanmark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
960	Toelloese	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
961	Vejle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
962	Vestsjalland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
963	Viborg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	58
964	'Ali Sabih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	59
965	Dikhil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	59
966	Jibuti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	59
967	Tajurah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	59
968	Ubuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	59
969	Saint Andrew	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
970	Saint David	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
971	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
972	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
973	Saint Joseph	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
974	Saint Luke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
975	Saint Mark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
976	Saint Patrick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
977	Saint Paul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
978	Saint Peter	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	60
979	Azua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
980	Bahoruco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
981	Barahona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
982	Dajabon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
983	Distrito Nacional	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
984	Duarte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
985	El Seybo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
986	Elias Pina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
987	Espaillat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
988	Hato Mayor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
989	Independencia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
990	La Altagracia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
991	La Romana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
992	La Vega	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
993	Maria Trinidad Sanchez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
994	Monsenor Nouel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
995	Monte Cristi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
996	Monte Plata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
997	Pedernales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
998	Peravia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
999	Puerto Plata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1000	Salcedo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1001	Samana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1002	San Cristobal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1003	San Juan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1004	San Pedro de Macoris	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1005	Sanchez Ramirez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1006	Santiago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1007	Santiago Rodriguez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1008	Valverde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	61
1009	Aileu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1010	Ainaro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1011	Ambeno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1012	Baucau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1013	Bobonaro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1014	Cova Lima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1015	Dili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1016	Ermera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1017	Lautem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1018	Liquica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1019	Manatuto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1020	Manufahi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1021	Viqueque	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	62
1022	Azuay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1023	Bolivar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1024	Canar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1025	Carchi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1026	Chimborazo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1027	Cotopaxi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1028	El Oro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1029	Esmeraldas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1030	Galapagos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1031	Guayas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1032	Imbabura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1033	Loja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1034	Los Rios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1035	Manabi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1036	Morona Santiago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1037	Napo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1038	Orellana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1039	Pastaza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1040	Pichincha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1041	Sucumbios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1042	Tungurahua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1043	Zamora Chinchipe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	63
1044	Aswan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1045	Asyut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1046	Bani Suwayf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1047	Bur Sa'id	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1048	Cairo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1049	Dumyat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1050	Kafr-ash-Shaykh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1051	Matruh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1052	Muhafazat ad Daqahliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1053	Muhafazat al Fayyum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1054	Muhafazat al Gharbiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1055	Muhafazat al Iskandariyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1056	Muhafazat al Qahirah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1057	Qina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1058	Sawhaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1059	Sina al-Janubiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1060	Sina ash-Shamaliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1061	ad-Daqahliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1062	al-Bahr-al-Ahmar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1063	al-Buhayrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1064	al-Fayyum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1065	al-Gharbiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1066	al-Iskandariyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1067	al-Ismailiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1068	al-Jizah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1069	al-Minufiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1070	al-Minya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1071	al-Qahira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1072	al-Qalyubiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1073	al-Uqsur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1074	al-Wadi al-Jadid	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1075	as-Suways	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1076	ash-Sharqiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	64
1077	Ahuachapan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1078	Cabanas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1079	Chalatenango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1080	Cuscatlan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1081	La Libertad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1082	La Paz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1083	La Union	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1084	Morazan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1085	San Miguel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1086	San Salvador	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1087	San Vicente	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1088	Santa Ana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1089	Sonsonate	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1090	Usulutan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	65
1091	Annobon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1092	Bioko Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1093	Bioko Sur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1094	Centro Sur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1095	Kie-Ntem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1096	Litoral	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1097	Wele-Nzas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	66
1098	Anseba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1099	Debub	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1100	Debub-Keih-Bahri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1101	Gash-Barka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1102	Maekel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1103	Semien-Keih-Bahri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	67
1104	Harju	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1105	Hiiu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1106	Ida-Viru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1107	Jarva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1108	Jogeva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1109	Laane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1110	Laane-Viru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1111	Parnu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1112	Polva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1113	Rapla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1114	Saare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1115	Tartu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1116	Valga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1117	Viljandi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1118	Voru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	68
1119	Addis Abeba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1120	Afar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1121	Amhara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1122	Benishangul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1123	Diredawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1124	Gambella	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1125	Harar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1126	Jigjiga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1127	Mekele	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1128	Oromia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1129	Somali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1130	Southern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1131	Tigray	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	69
1132	Christmas Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	70
1133	Cocos Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	70
1134	Coral Sea Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	70
1135	Falkland Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	71
1136	South Georgia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	71
1137	Klaksvik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1138	Nor ara Eysturoy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1139	Nor oy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1140	Sandoy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1141	Streymoy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1142	Su uroy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1143	Sy ra Eysturoy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1144	Torshavn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1145	Vaga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	72
1146	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	73
1147	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	73
1148	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	73
1149	South Pacific	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	73
1150	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	73
1151	Ahvenanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1152	Etela-Karjala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1153	Etela-Pohjanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1154	Etela-Savo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1155	Etela-Suomen Laani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1156	Ita-Suomen Laani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1157	Ita-Uusimaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1158	Kainuu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1159	Kanta-Hame	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1160	Keski-Pohjanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1161	Keski-Suomi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1162	Kymenlaakso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1163	Lansi-Suomen Laani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1164	Lappi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1165	Northern Savonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1166	Ostrobothnia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1167	Oulun Laani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1168	Paijat-Hame	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1169	Pirkanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1170	Pohjanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1171	Pohjois-Karjala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1172	Pohjois-Pohjanmaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1173	Pohjois-Savo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1174	Saarijarvi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1175	Satakunta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1176	Southern Savonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1177	Tavastia Proper	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1178	Uleaborgs Lan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1179	Uusimaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1180	Varsinais-Suomi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	74
1181	Ain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1182	Aisne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1183	Albi Le Sequestre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1184	Allier	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1185	Alpes-Cote dAzur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1186	Alpes-Maritimes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1187	Alpes-de-Haute-Provence	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1188	Alsace	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1189	Aquitaine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1190	Ardeche	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1191	Ardennes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1192	Ariege	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1193	Aube	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1194	Aude	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1195	Auvergne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1196	Aveyron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1197	Bas-Rhin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1198	Basse-Normandie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1199	Bouches-du-Rhone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1200	Bourgogne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1201	Bretagne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1202	Brittany	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1203	Burgundy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1204	Calvados	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1205	Cantal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1206	Cedex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1207	Centre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1208	Charente	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1209	Charente-Maritime	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1210	Cher	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1211	Correze	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1212	Corse-du-Sud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1213	Cote-d'Or	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1214	Cotes-d'Armor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1215	Creuse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1216	Crolles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1217	Deux-Sevres	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1218	Dordogne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1219	Doubs	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1220	Drome	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1221	Essonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1222	Eure	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1223	Eure-et-Loir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1224	Feucherolles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1225	Finistere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1226	Franche-Comte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1227	Gard	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1228	Gers	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1229	Gironde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1230	Haut-Rhin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1231	Haute-Corse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1232	Haute-Garonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1233	Haute-Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1234	Haute-Marne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1235	Haute-Saone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1236	Haute-Savoie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1237	Haute-Vienne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1238	Hautes-Alpes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1239	Hautes-Pyrenees	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1240	Hauts-de-Seine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1241	Herault	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1242	Ile-de-France	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1243	Ille-et-Vilaine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1244	Indre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1245	Indre-et-Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1246	Isere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1247	Jura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1248	Klagenfurt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1249	Landes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1250	Languedoc-Roussillon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1251	Larcay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1252	Le Castellet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1253	Le Creusot	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1254	Limousin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1255	Loir-et-Cher	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1256	Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1257	Loire-Atlantique	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1258	Loiret	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1259	Lorraine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1260	Lot	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1261	Lot-et-Garonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1262	Lower Normandy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1263	Lozere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1264	Maine-et-Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1265	Manche	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1266	Marne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1267	Mayenne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1268	Meurthe-et-Moselle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1269	Meuse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1270	Midi-Pyrenees	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1271	Morbihan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1272	Moselle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1273	Nievre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1274	Nord	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1275	Nord-Pas-de-Calais	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1276	Oise	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1277	Orne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1278	Paris	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1279	Pas-de-Calais	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1280	Pays de la Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1281	Pays-de-la-Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1282	Picardy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1283	Puy-de-Dome	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1284	Pyrenees-Atlantiques	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1285	Pyrenees-Orientales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1286	Quelmes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1287	Rhone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1288	Rhone-Alpes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1289	Saint Ouen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1290	Saint Viatre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1291	Saone-et-Loire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1292	Sarthe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1293	Savoie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1294	Seine-Maritime	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1295	Seine-Saint-Denis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1296	Seine-et-Marne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1297	Somme	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1298	Sophia Antipolis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1299	Souvans	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1300	Tarn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1301	Tarn-et-Garonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1302	Territoire de Belfort	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1303	Treignac	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1304	Upper Normandy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1305	Val-d'Oise	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1306	Val-de-Marne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1307	Var	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1308	Vaucluse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1309	Vellise	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1310	Vendee	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1311	Vienne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1312	Vosges	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1313	Yonne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1314	Yvelines	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	75
1315	Cayenne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	76
1316	Saint-Laurent-du-Maroni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	76
1317	Iles du Vent	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	77
1318	Iles sous le Vent	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	77
1319	Marquesas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	77
1320	Tuamotu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	77
1321	Tubuai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	77
1322	Amsterdam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	78
1323	Crozet Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	78
1324	Kerguelen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	78
1325	Estuaire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1326	Haut-Ogooue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1327	Moyen-Ogooue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1328	Ngounie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1329	Nyanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1330	Ogooue-Ivindo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1331	Ogooue-Lolo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1332	Ogooue-Maritime	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1333	Woleu-Ntem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	79
1334	Banjul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1335	Basse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1336	Brikama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1337	Janjanbureh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1338	Kanifing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1339	Kerewan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1340	Kuntaur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1341	Mansakonko	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	80
1342	Abhasia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1343	Ajaria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1344	Guria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1345	Imereti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1346	Kaheti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1347	Kvemo Kartli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1348	Mcheta-Mtianeti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1349	Racha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1350	Samagrelo-Zemo Svaneti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1351	Samche-Zhavaheti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1352	Shida Kartli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1353	Tbilisi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	81
1354	Auvergne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1355	Baden-Wurttemberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1356	Bavaria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1357	Bayern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1358	Beilstein Wurtt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1359	Berlin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1360	Brandenburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1361	Bremen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1362	Dreisbach	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1363	Freistaat Bayern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1364	Hamburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1365	Hannover	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1366	Heroldstatt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1367	Hessen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1368	Kortenberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1369	Laasdorf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1370	Land Baden-Wurttemberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1371	Land Bayern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1372	Land Brandenburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1373	Land Hessen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1374	Land Mecklenburg-Vorpommern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1375	Land Nordrhein-Westfalen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1376	Land Rheinland-Pfalz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1377	Land Sachsen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1378	Land Sachsen-Anhalt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1379	Land Thuringen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1380	Lower Saxony	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1381	Mecklenburg-Vorpommern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1382	Mulfingen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1383	Munich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1384	Neubeuern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1385	Niedersachsen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1386	Noord-Holland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1387	Nordrhein-Westfalen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1388	North Rhine-Westphalia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1389	Osterode	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1390	Rheinland-Pfalz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1391	Rhineland-Palatinate	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1392	Saarland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1393	Sachsen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1394	Sachsen-Anhalt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1395	Saxony	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1396	Schleswig-Holstein	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1397	Thuringia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1398	Webling	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1399	Weinstrabe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1400	schlobborn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	82
1401	Ashanti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1402	Brong-Ahafo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1403	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1404	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1405	Greater Accra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1406	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1407	Upper East	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1408	Upper West	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1409	Volta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1410	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	83
1411	Gibraltar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	84
1412	Acharnes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1413	Ahaia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1414	Aitolia kai Akarnania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1415	Argolis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1416	Arkadia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1417	Arta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1418	Attica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1419	Attiki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1420	Ayion Oros	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1421	Crete	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1422	Dodekanisos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1423	Drama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1424	Evia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1425	Evritania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1426	Evros	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1427	Evvoia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1428	Florina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1429	Fokis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1430	Fthiotis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1431	Grevena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1432	Halandri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1433	Halkidiki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1434	Hania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1435	Heraklion	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1436	Hios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1437	Ilia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1438	Imathia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1439	Ioannina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1440	Iraklion	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1441	Karditsa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1442	Kastoria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1443	Kavala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1444	Kefallinia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1445	Kerkira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1446	Kiklades	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1447	Kilkis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1448	Korinthia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1449	Kozani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1450	Lakonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1451	Larisa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1452	Lasithi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1453	Lesvos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1454	Levkas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1455	Magnisia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1456	Messinia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1457	Nomos Attikis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1458	Nomos Zakynthou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1459	Pella	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1460	Pieria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1461	Piraios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1462	Preveza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1463	Rethimni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1464	Rodopi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1465	Samos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1466	Serrai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1467	Thesprotia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1468	Thessaloniki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1469	Trikala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1470	Voiotia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1471	West Greece	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1472	Xanthi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1473	Zakinthos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	85
1474	Aasiaat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1475	Ammassalik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1476	Illoqqortoormiut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1477	Ilulissat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1478	Ivittuut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1479	Kangaatsiaq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1480	Maniitsoq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1481	Nanortalik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1482	Narsaq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1483	Nuuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1484	Paamiut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1485	Qaanaaq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1486	Qaqortoq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1487	Qasigiannguit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1488	Qeqertarsuaq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1489	Sisimiut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1490	Udenfor kommunal inddeling	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1491	Upernavik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1492	Uummannaq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	86
1493	Carriacou-Petite Martinique	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1494	Saint Andrew	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1495	Saint Davids	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1496	Saint George's	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1497	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1498	Saint Mark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1499	Saint Patrick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	87
1500	Basse-Terre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1501	Grande-Terre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1502	Iles des Saintes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1503	La Desirade	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1504	Marie-Galante	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1505	Saint Barthelemy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1506	Saint Martin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	88
1507	Agana Heights	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1508	Agat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1509	Barrigada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1510	Chalan-Pago-Ordot	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1511	Dededo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1512	Hagatna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1513	Inarajan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1514	Mangilao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1515	Merizo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1516	Mongmong-Toto-Maite	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1517	Santa Rita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1518	Sinajana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1519	Talofofo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1520	Tamuning	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1521	Yigo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1522	Yona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	89
1523	Alta Verapaz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1524	Baja Verapaz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1525	Chimaltenango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1526	Chiquimula	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1527	El Progreso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1528	Escuintla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1529	Guatemala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1530	Huehuetenango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1531	Izabal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1532	Jalapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1533	Jutiapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1534	Peten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1535	Quezaltenango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1536	Quiche	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1537	Retalhuleu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1538	Sacatepequez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1539	San Marcos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1540	Santa Rosa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1541	Solola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1542	Suchitepequez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1543	Totonicapan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1544	Zacapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	90
1545	Alderney	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1546	Castel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1547	Forest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1548	Saint Andrew	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1549	Saint Martin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1550	Saint Peter Port	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1551	Saint Pierre du Bois	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1552	Saint Sampson	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1553	Saint Saviour	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1554	Sark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1555	Torteval	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1556	Vale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	91
1557	Beyla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1558	Boffa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1559	Boke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1560	Conakry	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1561	Coyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1562	Dabola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1563	Dalaba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1564	Dinguiraye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1565	Faranah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1566	Forecariah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1567	Fria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1568	Gaoual	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1569	Gueckedou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1570	Kankan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1571	Kerouane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1572	Kindia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1573	Kissidougou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1574	Koubia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1575	Koundara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1576	Kouroussa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1577	Labe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1578	Lola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1579	Macenta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1580	Mali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1581	Mamou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1582	Mandiana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1583	Nzerekore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1584	Pita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1585	Siguiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1586	Telimele	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1587	Tougue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1588	Yomou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	92
1589	Bafata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1590	Bissau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1591	Bolama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1592	Cacheu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1593	Gabu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1594	Oio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1595	Quinara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1596	Tombali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	93
1597	Barima-Waini	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1598	Cuyuni-Mazaruni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1599	Demerara-Mahaica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1600	East Berbice-Corentyne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1601	Essequibo Islands-West Demerar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1602	Mahaica-Berbice	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1603	Pomeroon-Supenaam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1604	Potaro-Siparuni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1605	Upper Demerara-Berbice	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1606	Upper Takutu-Upper Essequibo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	94
1607	Artibonite	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1608	Centre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1609	Grand'Anse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1610	Nord	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1611	Nord-Est	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1612	Nord-Ouest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1613	Ouest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1614	Sud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1615	Sud-Est	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	95
1616	Heard and McDonald Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	96
1617	Atlantida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1618	Choluteca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1619	Colon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1620	Comayagua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1621	Copan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1622	Cortes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1623	Distrito Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1624	El Paraiso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1625	Francisco Morazan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1626	Gracias a Dios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1627	Intibuca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1628	Islas de la Bahia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1629	La Paz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1630	Lempira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1631	Ocotepeque	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1632	Olancho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1633	Santa Barbara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1634	Valle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1635	Yoro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	97
1636	Hong Kong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	98
1637	Bacs-Kiskun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1638	Baranya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1639	Bekes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1640	Borsod-Abauj-Zemplen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1641	Budapest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1642	Csongrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1643	Fejer	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1644	Gyor-Moson-Sopron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1645	Hajdu-Bihar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1646	Heves	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1647	Jasz-Nagykun-Szolnok	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1648	Komarom-Esztergom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1649	Nograd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1650	Pest	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1651	Somogy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1652	Szabolcs-Szatmar-Bereg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1653	Tolna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1654	Vas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1655	Veszprem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1656	Zala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	99
1657	Austurland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1658	Gullbringusysla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1659	Hofu borgarsva i	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1660	Nor urland eystra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1661	Nor urland vestra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1662	Su urland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1663	Su urnes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1664	Vestfir ir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1665	Vesturland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	100
1666	Aceh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1667	Bali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1668	Bangka-Belitung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1669	Banten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1670	Bengkulu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1671	Gandaria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1672	Gorontalo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1673	Jakarta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1674	Jambi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1675	Jawa Barat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1676	Jawa Tengah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1677	Jawa Timur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1678	Kalimantan Barat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1679	Kalimantan Selatan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1680	Kalimantan Tengah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1681	Kalimantan Timur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1682	Kendal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1683	Lampung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1684	Maluku	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1685	Maluku Utara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1686	Nusa Tenggara Barat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1687	Nusa Tenggara Timur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1688	Papua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1689	Riau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1690	Riau Kepulauan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1691	Solo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1692	Sulawesi Selatan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1693	Sulawesi Tengah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1694	Sulawesi Tenggara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1695	Sulawesi Utara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1696	Sumatera Barat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1697	Sumatera Selatan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1698	Sumatera Utara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1699	Yogyakarta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	102
1700	Ardabil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1701	Azarbayjan-e Bakhtari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1702	Azarbayjan-e Khavari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1703	Bushehr	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1704	Chahar Mahal-e Bakhtiari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1705	Esfahan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1706	Fars	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1707	Gilan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1708	Golestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1709	Hamadan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1710	Hormozgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1711	Ilam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1712	Kerman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1713	Kermanshah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1714	Khorasan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1715	Khuzestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1716	Kohgiluyeh-e Boyerahmad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1717	Kordestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1718	Lorestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1719	Markazi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1720	Mazandaran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1721	Ostan-e Esfahan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1722	Qazvin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1723	Qom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1724	Semnan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1725	Sistan-e Baluchestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1726	Tehran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1727	Yazd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1728	Zanjan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	103
1729	Babil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1730	Baghdad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1731	Dahuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1732	Dhi Qar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1733	Diyala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1734	Erbil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1735	Irbil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1736	Karbala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1737	Kurdistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1738	Maysan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1739	Ninawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1740	Salah-ad-Din	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1741	Wasit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1742	al-Anbar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1743	al-Basrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1744	al-Muthanna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1745	al-Qadisiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1746	an-Najaf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1747	as-Sulaymaniyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1748	at-Ta'mim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	104
1749	Armagh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1750	Carlow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1751	Cavan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1752	Clare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1753	Cork	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1754	Donegal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1755	Dublin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1756	Galway	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1757	Kerry	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1758	Kildare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1759	Kilkenny	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1760	Laois	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1761	Leinster	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1762	Leitrim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1763	Limerick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1764	Loch Garman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1765	Longford	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1766	Louth	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1767	Mayo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1768	Meath	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1769	Monaghan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1770	Offaly	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1771	Roscommon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1772	Sligo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1773	Tipperary North Riding	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1774	Tipperary South Riding	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1775	Ulster	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1776	Waterford	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1777	Westmeath	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1778	Wexford	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1779	Wicklow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	105
1780	Beit Hanania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1781	Ben Gurion Airport	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1782	Bethlehem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1783	Caesarea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1784	Centre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1785	Gaza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1786	Hadaron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1787	Haifa District	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1788	Hamerkaz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1789	Hazafon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1790	Hebron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1791	Jaffa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1792	Jerusalem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1793	Khefa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1794	Kiryat Yam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1795	Lower Galilee	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1796	Qalqilya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1797	Talme Elazar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1798	Tel Aviv	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1799	Tsafon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1800	Umm El Fahem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1801	Yerushalayim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	106
1802	Abruzzi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1803	Abruzzo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1804	Agrigento	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1805	Alessandria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1806	Ancona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1807	Arezzo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1808	Ascoli Piceno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1809	Asti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1810	Avellino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1811	Bari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1812	Basilicata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1813	Belluno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1814	Benevento	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1815	Bergamo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1816	Biella	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1817	Bologna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1818	Bolzano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1819	Brescia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1820	Brindisi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1821	Calabria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1822	Campania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1823	Cartoceto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1824	Caserta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1825	Catania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1826	Chieti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1827	Como	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1828	Cosenza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1829	Cremona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1830	Cuneo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1831	Emilia-Romagna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1832	Ferrara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1833	Firenze	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1834	Florence	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1835	Forli-Cesena 	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1836	Friuli-Venezia Giulia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1837	Frosinone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1838	Genoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1839	Gorizia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1840	L'Aquila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1841	Lazio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1842	Lecce	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1843	Lecco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1844	Lecco Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1845	Liguria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1846	Lodi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1847	Lombardia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1848	Lombardy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1849	Macerata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1850	Mantova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1851	Marche	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1852	Messina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1853	Milan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1854	Modena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1855	Molise	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1856	Molteno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1857	Montenegro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1858	Monza and Brianza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1859	Naples	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1860	Novara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1861	Padova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1862	Parma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1863	Pavia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1864	Perugia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1865	Pesaro-Urbino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1866	Piacenza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1867	Piedmont	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1868	Piemonte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1869	Pisa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1870	Pordenone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1871	Potenza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1872	Puglia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1873	Reggio Emilia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1874	Rimini	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1875	Roma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1876	Salerno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1877	Sardegna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1878	Sassari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1879	Savona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1880	Sicilia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1881	Siena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1882	Sondrio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1883	South Tyrol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1884	Taranto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1885	Teramo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1886	Torino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1887	Toscana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1888	Trapani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1889	Trentino-Alto Adige	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1890	Trento	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1891	Treviso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1892	Udine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1893	Umbria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1894	Valle d'Aosta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1895	Varese	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1896	Veneto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1897	Venezia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1898	Verbano-Cusio-Ossola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1899	Vercelli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1900	Verona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1901	Vicenza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1902	Viterbo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	107
1903	Buxoro Viloyati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1904	Clarendon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1905	Hanover	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1906	Kingston	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1907	Manchester	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1908	Portland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1909	Saint Andrews	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1910	Saint Ann	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1911	Saint Catherine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1912	Saint Elizabeth	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1913	Saint James	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1914	Saint Mary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1915	Saint Thomas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1916	Trelawney	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1917	Westmoreland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	108
1918	Aichi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1919	Akita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1920	Aomori	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1921	Chiba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1922	Ehime	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1923	Fukui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1924	Fukuoka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1925	Fukushima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1926	Gifu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1927	Gumma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1928	Hiroshima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1929	Hokkaido	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1930	Hyogo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1931	Ibaraki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1932	Ishikawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1933	Iwate	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1934	Kagawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1935	Kagoshima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1936	Kanagawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1937	Kanto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1938	Kochi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1939	Kumamoto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1940	Kyoto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1941	Mie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1942	Miyagi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1943	Miyazaki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1944	Nagano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1945	Nagasaki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1946	Nara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1947	Niigata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1948	Oita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1949	Okayama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1950	Okinawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1951	Osaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1952	Saga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1953	Saitama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1954	Shiga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1955	Shimane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1956	Shizuoka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1957	Tochigi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1958	Tokushima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1959	Tokyo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1960	Tottori	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1961	Toyama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1962	Wakayama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1963	Yamagata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1964	Yamaguchi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1965	Yamanashi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	109
1966	Grouville	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1967	Saint Brelade	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1968	Saint Clement	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1969	Saint Helier	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1970	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1971	Saint Lawrence	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1972	Saint Martin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1973	Saint Mary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1974	Saint Peter	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1975	Saint Saviour	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1976	Trinity	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	110
1977	'Ajlun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1978	Amman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1979	Irbid	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1980	Jarash	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1981	Ma'an	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1982	Madaba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1983	al-'Aqabah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1984	al-Balqa'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1985	al-Karak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1986	al-Mafraq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1987	at-Tafilah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1988	az-Zarqa'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	111
1989	Akmecet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1990	Akmola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1991	Aktobe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1992	Almati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1993	Atirau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1994	Batis Kazakstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1995	Burlinsky Region	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1996	Karagandi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1997	Kostanay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1998	Mankistau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
1999	Ontustik Kazakstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
2000	Pavlodar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
2001	Sigis Kazakstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
2002	Soltustik Kazakstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
2003	Taraz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	112
2004	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2005	Coast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2006	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2007	Nairobi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2008	North Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2009	Nyanza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2010	Rift Valley	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2011	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	113
2012	Abaiang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2013	Abemana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2014	Aranuka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2015	Arorae	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2016	Banaba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2017	Beru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2018	Butaritari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2019	Kiritimati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2020	Kuria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2021	Maiana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2022	Makin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2023	Marakei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2024	Nikunau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2025	Nonouti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2026	Onotoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2027	Phoenix Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2028	Tabiteuea North	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2029	Tabiteuea South	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2030	Tabuaeran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2031	Tamana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2032	Tarawa North	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2033	Tarawa South	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2034	Teraina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	114
2035	Chagangdo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2036	Hamgyeongbukto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2037	Hamgyeongnamdo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2038	Hwanghaebukto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2039	Hwanghaenamdo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2040	Kaeseong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2041	Kangweon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2042	Nampo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2043	Pyeonganbukto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2044	Pyeongannamdo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2045	Pyeongyang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2046	Yanggang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	115
2047	Busan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2048	Cheju	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2049	Chollabuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2050	Chollanam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2051	Chungbuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2052	Chungcheongbuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2053	Chungcheongnam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2054	Chungnam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2055	Daegu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2056	Gangwon-do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2057	Goyang-si	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2058	Gyeonggi-do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2059	Gyeongsang 	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2060	Gyeongsangnam-do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2061	Incheon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2062	Jeju-Si	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2063	Jeonbuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2064	Kangweon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2065	Kwangju	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2066	Kyeonggi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2067	Kyeongsangbuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2068	Kyeongsangnam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2069	Kyonggi-do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2070	Kyungbuk-Do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2071	Kyunggi-Do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2072	Kyunggi-do	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2073	Pusan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2074	Seoul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2075	Sudogwon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2076	Taegu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2077	Taejeon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2078	Taejon-gwangyoksi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2079	Ulsan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2080	Wonju	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2081	gwangyoksi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	116
2082	Al Asimah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2083	Hawalli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2084	Mishref	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2085	Qadesiya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2086	Safat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2087	Salmiya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2088	al-Ahmadi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2089	al-Farwaniyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2090	al-Jahra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2091	al-Kuwayt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	117
2092	Batken	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2093	Bishkek	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2094	Chui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2095	Issyk-Kul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2096	Jalal-Abad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2097	Naryn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2098	Osh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2099	Talas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	118
2100	Attopu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2101	Bokeo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2102	Bolikhamsay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2103	Champasak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2104	Houaphanh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2105	Khammouane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2106	Luang Nam Tha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2107	Luang Prabang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2108	Oudomxay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2109	Phongsaly	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2110	Saravan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2111	Savannakhet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2112	Sekong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2113	Viangchan Prefecture	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2114	Viangchan Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2115	Xaignabury	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2116	Xiang Khuang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	119
2117	Aizkraukles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2118	Aluksnes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2119	Balvu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2120	Bauskas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2121	Cesu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2122	Daugavpils	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2123	Daugavpils City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2124	Dobeles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2125	Gulbenes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2126	Jekabspils	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2127	Jelgava	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2128	Jelgavas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2129	Jurmala City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2130	Kraslavas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2131	Kuldigas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2132	Liepaja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2133	Liepajas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2134	Limbazhu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2135	Ludzas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2136	Madonas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2137	Ogres	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2138	Preilu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2139	Rezekne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2140	Rezeknes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2141	Riga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2142	Rigas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2143	Saldus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2144	Talsu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2145	Tukuma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2146	Valkas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2147	Valmieras	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2148	Ventspils	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2149	Ventspils City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	120
2150	Beirut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2151	Jabal Lubnan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2152	Mohafazat Liban-Nord	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2153	Mohafazat Mont-Liban	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2154	Sidon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2155	al-Biqa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2156	al-Janub	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2157	an-Nabatiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2158	ash-Shamal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	121
2159	Berea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2160	Butha-Buthe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2161	Leribe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2162	Mafeteng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2163	Maseru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2164	Mohale's Hoek	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2165	Mokhotlong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2166	Qacha's Nek	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2167	Quthing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2168	Thaba-Tseka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	122
2169	Bomi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2170	Bong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2171	Grand Bassa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2172	Grand Cape Mount	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2173	Grand Gedeh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2174	Loffa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2175	Margibi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2176	Maryland and Grand Kru	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2177	Montserrado	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2178	Nimba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2179	Rivercess	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2180	Sinoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	123
2181	Ajdabiya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2182	Fezzan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2183	Banghazi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2184	Darnah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2185	Ghadamis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2186	Gharyan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2187	Misratah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2188	Murzuq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2189	Sabha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2190	Sawfajjin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2191	Surt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2192	Tarabulus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2193	Tarhunah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2194	Tripolitania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2195	Tubruq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2196	Yafran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2197	Zlitan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2198	al-'Aziziyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2199	al-Fatih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2200	al-Jabal al Akhdar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2201	al-Jufrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2202	al-Khums	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2203	al-Kufrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2204	an-Nuqat al-Khams	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2205	ash-Shati'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2206	az-Zawiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	124
2207	Balzers	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2208	Eschen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2209	Gamprin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2210	Mauren	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2211	Planken	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2212	Ruggell	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2213	Schaan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2214	Schellenberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2215	Triesen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2216	Triesenberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2217	Vaduz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	125
2218	Alytaus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2219	Anyksciai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2220	Kauno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2221	Klaipedos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2222	Marijampoles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2223	Panevezhio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2224	Panevezys	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2225	Shiauliu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2226	Taurages	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2227	Telshiu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2228	Telsiai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2229	Utenos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2230	Vilniaus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	126
2231	Capellen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2232	Clervaux	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2233	Diekirch	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2234	Echternach	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2235	Esch-sur-Alzette	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2236	Grevenmacher	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2237	Luxembourg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2238	Mersch	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2239	Redange	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2240	Remich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2241	Vianden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2242	Wiltz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	127
2243	Macau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	128
2244	Berovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2245	Bitola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2246	Brod	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2247	Debar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2248	Delchevo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2249	Demir Hisar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2250	Gevgelija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2251	Gostivar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2252	Kavadarci	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2253	Kichevo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2254	Kochani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2255	Kratovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2256	Kriva Palanka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2257	Krushevo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2258	Kumanovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2259	Negotino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2260	Ohrid	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2261	Prilep	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2262	Probishtip	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2263	Radovish	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2264	Resen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2265	Shtip	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2266	Skopje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2267	Struga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2268	Strumica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2269	Sveti Nikole	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2270	Tetovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2271	Valandovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2272	Veles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2273	Vinica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	129
2274	Antananarivo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2275	Antsiranana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2276	Fianarantsoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2277	Mahajanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2278	Toamasina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2279	Toliary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	130
2280	Balaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2281	Blantyre City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2282	Chikwawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2283	Chiradzulu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2284	Chitipa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2285	Dedza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2286	Dowa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2287	Karonga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2288	Kasungu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2289	Lilongwe City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2290	Machinga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2291	Mangochi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2292	Mchinji	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2293	Mulanje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2294	Mwanza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2295	Mzimba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2296	Mzuzu City	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2297	Nkhata Bay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2298	Nkhotakota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2299	Nsanje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2300	Ntcheu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2301	Ntchisi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2302	Phalombe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2303	Rumphi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2304	Salima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2305	Thyolo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2306	Zomba Municipality	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	131
2307	Johor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2308	Kedah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2309	Kelantan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2310	Kuala Lumpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2311	Labuan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2312	Melaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2313	Negeri Johor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2314	Negeri Sembilan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2315	Pahang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2316	Penang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2317	Perak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2318	Perlis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2319	Pulau Pinang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2320	Sabah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2321	Sarawak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2322	Selangor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2323	Sembilan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2324	Terengganu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	132
2325	Alif Alif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2326	Alif Dhaal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2327	Baa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2328	Dhaal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2329	Faaf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2330	Gaaf Alif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2331	Gaaf Dhaal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2332	Ghaviyani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2333	Haa Alif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2334	Haa Dhaal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2335	Kaaf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2336	Laam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2337	Lhaviyani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2338	Male	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2339	Miim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2340	Nuun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2341	Raa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2342	Shaviyani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2343	Siin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2344	Thaa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2345	Vaav	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	133
2346	Bamako	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2347	Gao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2348	Kayes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2349	Kidal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2350	Koulikoro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2351	Mopti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2352	Segou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2353	Sikasso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2354	Tombouctou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	134
2355	Gozo and Comino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2356	Inner Harbour	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2357	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2358	Outer Harbour	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2359	South Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2360	Valletta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2361	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	135
2362	Castletown	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2363	Douglas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2364	Laxey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2365	Onchan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2366	Peel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2367	Port Erin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2368	Port Saint Mary	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2369	Ramsey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	136
2370	Ailinlaplap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2371	Ailuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2372	Arno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2373	Aur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2374	Bikini	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2375	Ebon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2376	Enewetak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2377	Jabat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2378	Jaluit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2379	Kili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2380	Kwajalein	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2381	Lae	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2382	Lib	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2383	Likiep	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2384	Majuro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2385	Maloelap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2386	Mejit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2387	Mili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2388	Namorik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2389	Namu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2390	Rongelap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2391	Ujae	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2392	Utrik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2393	Wotho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2394	Wotje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	137
2395	Fort-de-France	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	138
2396	La Trinite	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	138
2397	Le Marin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	138
2398	Saint-Pierre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	138
2399	Adrar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2400	Assaba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2401	Brakna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2402	Dhakhlat Nawadibu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2403	Hudh-al-Gharbi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2404	Hudh-ash-Sharqi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2405	Inshiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2406	Nawakshut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2407	Qidimagha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2408	Qurqul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2409	Taqant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2410	Tiris Zammur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2411	Trarza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	139
2412	Black River	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2413	Eau Coulee	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2414	Flacq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2415	Floreal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2416	Grand Port	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2417	Moka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2418	Pamplempousses	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2419	Plaines Wilhelm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2420	Port Louis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2421	Riviere du Rempart	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2422	Rodrigues	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2423	Rose Hill	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2424	Savanne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	140
2425	Mayotte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	141
2426	Pamanzi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	141
2427	Aguascalientes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2428	Baja California	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2429	Baja California Sur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2430	Campeche	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2431	Chiapas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2432	Chihuahua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2433	Coahuila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2434	Colima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2435	Distrito Federal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2436	Durango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2437	Estado de Mexico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2438	Guanajuato	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2439	Guerrero	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2440	Hidalgo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2441	Jalisco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2442	Mexico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2443	Michoacan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2444	Morelos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2445	Nayarit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2446	Nuevo Leon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2447	Oaxaca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2448	Puebla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2449	Queretaro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2450	Quintana Roo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2451	San Luis Potosi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2452	Sinaloa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2453	Sonora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2454	Tabasco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2455	Tamaulipas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2456	Tlaxcala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2457	Veracruz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2458	Yucatan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2459	Zacatecas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	142
2460	Chuuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	143
2461	Kusaie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	143
2462	Pohnpei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	143
2463	Yap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	143
2464	Balti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2465	Cahul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2466	Chisinau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2467	Chisinau Oras	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2468	Edinet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2469	Gagauzia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2470	Lapusna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2471	Orhei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2472	Soroca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2473	Taraclia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2474	Tighina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2475	Transnistria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2476	Ungheni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	144
2477	Fontvieille	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	145
2478	La Condamine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	145
2479	Monaco-Ville	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	145
2480	Monte Carlo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	145
2481	Arhangaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2482	Bajan-Olgij	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2483	Bajanhongor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2484	Bulgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2485	Darhan-Uul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2486	Dornod	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2487	Dornogovi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2488	Dundgovi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2489	Govi-Altaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2490	Govisumber	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2491	Hentij	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2492	Hovd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2493	Hovsgol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2494	Omnogovi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2495	Orhon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2496	Ovorhangaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2497	Selenge	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2498	Suhbaatar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2499	Tov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2500	Ulaanbaatar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2501	Uvs	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2502	Zavhan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	146
2503	Montserrat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	147
2504	Agadir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2505	Casablanca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2506	Chaouia-Ouardigha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2507	Doukkala-Abda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2508	Fes-Boulemane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2509	Gharb-Chrarda-Beni Hssen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2510	Guelmim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2511	Kenitra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2512	Marrakech-Tensift-Al Haouz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2513	Meknes-Tafilalet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2514	Oriental	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2515	Oujda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2516	Province de Tanger	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2517	Rabat-Sale-Zammour-Zaer	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2518	Sala Al Jadida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2519	Settat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2520	Souss Massa-Draa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2521	Tadla-Azilal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2522	Tangier-Tetouan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2523	Taza-Al Hoceima-Taounate	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2524	Wilaya de Casablanca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2525	Wilaya de Rabat-Sale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	148
2526	Cabo Delgado	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2527	Gaza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2528	Inhambane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2529	Manica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2530	Maputo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2531	Maputo Provincia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2532	Nampula	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2533	Niassa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2534	Sofala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2535	Tete	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2536	Zambezia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	149
2537	Ayeyarwady	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2538	Bago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2539	Chin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2540	Kachin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2541	Kayah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2542	Kayin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2543	Magway	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2544	Mandalay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2545	Mon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2546	Nay Pyi Taw	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2547	Rakhine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2548	Sagaing	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2549	Shan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2550	Tanintharyi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2551	Yangon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	150
2552	Caprivi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2553	Erongo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2554	Hardap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2555	Karas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2556	Kavango	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2557	Khomas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2558	Kunene	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2559	Ohangwena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2560	Omaheke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2561	Omusati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2562	Oshana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2563	Oshikoto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2564	Otjozondjupa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	151
2565	Yaren	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	152
2566	Bagmati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2567	Bheri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2568	Dhawalagiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2569	Gandaki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2570	Janakpur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2571	Karnali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2572	Koshi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2573	Lumbini	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2574	Mahakali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2575	Mechi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2576	Narayani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2577	Rapti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2578	Sagarmatha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2579	Seti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	153
2580	Bonaire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	154
2581	Curacao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	154
2582	Saba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	154
2583	Sint Eustatius	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	154
2584	Sint Maarten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	154
2585	Amsterdam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2586	Benelux	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2587	Drenthe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2588	Flevoland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2589	Friesland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2590	Gelderland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2591	Groningen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2592	Limburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2593	Noord-Brabant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2594	Noord-Holland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2595	Overijssel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2596	South Holland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2597	Utrecht	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2598	Zeeland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2599	Zuid-Holland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	155
2600	Iles	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	156
2601	Nord	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	156
2602	Sud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	156
2603	Area Outside Region	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2604	Auckland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2605	Bay of Plenty	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2606	Canterbury	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2607	Christchurch	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2608	Gisborne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2609	Hawke's Bay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2610	Manawatu-Wanganui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2611	Marlborough	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2612	Nelson	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2613	Northland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2614	Otago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2615	Rodney	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2616	Southland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2617	Taranaki	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2618	Tasman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2619	Waikato	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2620	Wellington	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2621	West Coast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	157
2622	Atlantico Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2623	Atlantico Sur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2624	Boaco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2625	Carazo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2626	Chinandega	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2627	Chontales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2628	Esteli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2629	Granada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2630	Jinotega	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2631	Leon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2632	Madriz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2633	Managua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2634	Masaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2635	Matagalpa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2636	Nueva Segovia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2637	Rio San Juan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2638	Rivas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	158
2639	Agadez	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2640	Diffa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2641	Dosso	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2642	Maradi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2643	Niamey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2644	Tahoua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2645	Tillabery	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2646	Zinder	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	159
2647	Abia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2648	Abuja Federal Capital Territor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2649	Adamawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2650	Akwa Ibom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2651	Anambra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2652	Bauchi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2653	Bayelsa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2654	Benue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2655	Borno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2656	Cross River	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2657	Delta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2658	Ebonyi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2659	Edo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2660	Ekiti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2661	Enugu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2662	Gombe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2663	Imo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2664	Jigawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2665	Kaduna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2666	Kano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2667	Katsina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2668	Kebbi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2669	Kogi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2670	Kwara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2671	Lagos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2672	Nassarawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2673	Niger	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2674	Ogun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2675	Ondo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2676	Osun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2677	Oyo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2678	Plateau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2679	Rivers	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2680	Sokoto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2681	Taraba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2682	Yobe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2683	Zamfara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	160
2684	Niue	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	161
2685	Norfolk Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	162
2686	Northern Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	163
2687	Rota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	163
2688	Saipan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	163
2689	Tinian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	163
2690	Akershus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2691	Aust Agder	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2692	Bergen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2693	Buskerud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2694	Finnmark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2695	Hedmark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2696	Hordaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2697	Moere og Romsdal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2698	Nord Trondelag	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2699	Nordland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2700	Oestfold	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2701	Oppland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2702	Oslo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2703	Rogaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2704	Soer Troendelag	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2705	Sogn og Fjordane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2706	Stavern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2707	Sykkylven	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2708	Telemark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2709	Troms	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2710	Vest Agder	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2711	Vestfold	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2712	ÃƒÂ˜stfold	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	164
2713	Al Buraimi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2714	Dhufar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2715	Masqat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2716	Musandam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2717	Rusayl	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2718	Wadi Kabir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2719	ad-Dakhiliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2720	adh-Dhahirah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2721	al-Batinah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2722	ash-Sharqiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	165
2723	Baluchistan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2724	Federal Capital Area	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2725	Federally administered Tribal 	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2726	North-West Frontier	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2727	Northern Areas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2728	Punjab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2729	Sind	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	166
2730	Aimeliik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2731	Airai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2732	Angaur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2733	Hatobohei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2734	Kayangel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2735	Koror	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2736	Melekeok	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2737	Ngaraard	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2738	Ngardmau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2739	Ngaremlengui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2740	Ngatpang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2741	Ngchesar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2742	Ngerchelong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2743	Ngiwal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2744	Peleliu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2745	Sonsorol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	167
2746	Ariha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2747	Bayt Lahm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2748	Bethlehem	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2749	Dayr-al-Balah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2750	Ghazzah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2751	Ghazzah ash-Shamaliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2752	Janin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2753	Khan Yunis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2754	Nabulus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2755	Qalqilyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2756	Rafah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2757	Ram Allah wal-Birah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2758	Salfit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2759	Tubas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2760	Tulkarm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2761	al-Khalil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2762	al-Quds	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	168
2763	Bocas del Toro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2764	Chiriqui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2765	Cocle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2766	Colon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2767	Darien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2768	Embera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2769	Herrera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2770	Kuna Yala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2771	Los Santos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2772	Ngobe Bugle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2773	Panama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2774	Veraguas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	169
2775	East New Britain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2776	East Sepik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2777	Eastern Highlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2778	Enga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2779	Fly River	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2780	Gulf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2781	Madang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2782	Manus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2783	Milne Bay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2784	Morobe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2785	National Capital District	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2786	New Ireland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2787	North Solomons	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2788	Oro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2789	Sandaun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2790	Simbu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2791	Southern Highlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2792	West New Britain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2793	Western Highlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	170
2794	Alto Paraguay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2795	Alto Parana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2796	Amambay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2797	Asuncion	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2798	Boqueron	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2799	Caaguazu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2800	Caazapa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2801	Canendiyu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2802	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2803	Concepcion	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2804	Cordillera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2805	Guaira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2806	Itapua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2807	Misiones	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2808	Neembucu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2809	Paraguari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2810	Presidente Hayes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2811	San Pedro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	171
2812	Amazonas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2813	Ancash	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2814	Apurimac	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2815	Arequipa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2816	Ayacucho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2817	Cajamarca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2818	Cusco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2819	Huancavelica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2820	Huanuco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2821	Ica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2822	Junin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2823	La Libertad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2824	Lambayeque	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2825	Lima y Callao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2826	Loreto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2827	Madre de Dios	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2828	Moquegua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2829	Pasco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2830	Piura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2831	Puno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2832	San Martin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2833	Tacna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2834	Tumbes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2835	Ucayali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	172
2836	Batangas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2837	Bicol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2838	Bulacan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2839	Cagayan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2840	Caraga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2841	Central Luzon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2842	Central Mindanao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2843	Central Visayas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2844	Cordillera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2845	Davao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2846	Eastern Visayas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2847	Greater Metropolitan Area	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2848	Ilocos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2849	Laguna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2850	Luzon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2851	Mactan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2852	Metropolitan Manila Area	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2853	Muslim Mindanao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2854	Northern Mindanao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2855	Southern Mindanao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2856	Southern Tagalog	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2857	Western Mindanao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2858	Western Visayas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	173
2859	Pitcairn Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	174
2860	Biale Blota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2861	Dobroszyce	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2862	Dolnoslaskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2863	Dziekanow Lesny	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2864	Hopowo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2865	Kartuzy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2866	Koscian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2867	Krakow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2868	Kujawsko-Pomorskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2869	Lodzkie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2870	Lubelskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2871	Lubuskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2872	Malomice	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2873	Malopolskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2874	Mazowieckie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2875	Mirkow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2876	Opolskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2877	Ostrowiec	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2878	Podkarpackie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2879	Podlaskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2880	Polska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2881	Pomorskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2882	Poznan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2883	Pruszkow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2884	Rymanowska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2885	Rzeszow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2886	Slaskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2887	Stare Pole	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2888	Swietokrzyskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2889	Warminsko-Mazurskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2890	Warsaw	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2891	Wejherowo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2892	Wielkopolskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2893	Wroclaw	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2894	Zachodnio-Pomorskie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2895	Zukowo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	175
2896	Abrantes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2897	Acores	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2898	Alentejo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2899	Algarve	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2900	Braga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2901	Centro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2902	Distrito de Leiria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2903	Distrito de Viana do Castelo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2904	Distrito de Vila Real	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2905	Distrito do Porto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2906	Lisboa e Vale do Tejo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2907	Madeira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2908	Norte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2909	Paivas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	176
2910	Arecibo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2911	Bayamon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2912	Carolina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2913	Florida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2914	Guayama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2915	Humacao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2916	Mayaguez-Aguadilla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2917	Ponce	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2918	Salinas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2919	San Juan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	177
2920	Doha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2921	Jarian-al-Batnah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2922	Umm Salal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2923	ad-Dawhah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2924	al-Ghuwayriyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2925	al-Jumayliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2926	al-Khawr	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2927	al-Wakrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2928	ar-Rayyan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2929	ash-Shamal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	178
2930	Saint-Benoit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	179
2931	Saint-Denis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	179
2932	Saint-Paul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	179
2933	Saint-Pierre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	179
2934	Alba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2935	Arad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2936	Arges	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2937	Bacau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2938	Bihor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2939	Bistrita-Nasaud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2940	Botosani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2941	Braila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2942	Brasov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2943	Bucuresti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2944	Buzau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2945	Calarasi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2946	Caras-Severin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2947	Cluj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2948	Constanta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2949	Covasna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2950	Dambovita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2951	Dolj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2952	Galati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2953	Giurgiu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2954	Gorj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2955	Harghita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2956	Hunedoara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2957	Ialomita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2958	Iasi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2959	Ilfov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2960	Maramures	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2961	Mehedinti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2962	Mures	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2963	Neamt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2964	Olt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2965	Prahova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2966	Salaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2967	Satu Mare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2968	Sibiu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2969	Sondelor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2970	Suceava	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2971	Teleorman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2972	Timis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2973	Tulcea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2974	Valcea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2975	Vaslui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2976	Vrancea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	180
2977	Adygeja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2978	Aga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2979	Alanija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2980	Altaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2981	Amur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2982	Arhangelsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2983	Astrahan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2984	Bashkortostan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2985	Belgorod	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2986	Brjansk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2987	Burjatija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2988	Chechenija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2989	Cheljabinsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2990	Chita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2991	Chukotka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2992	Chuvashija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2993	Dagestan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2994	Evenkija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2995	Gorno-Altaj	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2996	Habarovsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2997	Hakasija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2998	Hanty-Mansija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
2999	Ingusetija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3000	Irkutsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3001	Ivanovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3002	Jamalo-Nenets	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3003	Jaroslavl	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3004	Jevrej	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3005	Kabardino-Balkarija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3006	Kaliningrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3007	Kalmykija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3008	Kaluga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3009	Kamchatka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3010	Karachaj-Cherkessija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3011	Karelija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3012	Kemerovo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3013	Khabarovskiy Kray	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3014	Kirov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3015	Komi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3016	Komi-Permjakija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3017	Korjakija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3018	Kostroma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3019	Krasnodar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3020	Krasnojarsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3021	Krasnoyarskiy Kray	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3022	Kurgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3023	Kursk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3024	Leningrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3025	Lipeck	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3026	Magadan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3027	Marij El	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3028	Mordovija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3029	Moscow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3030	Moskovskaja Oblast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3031	Moskovskaya Oblast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3032	Moskva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3033	Murmansk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3034	Nenets	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3035	Nizhnij Novgorod	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3036	Novgorod	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3037	Novokusnezk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3038	Novosibirsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3039	Omsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3040	Orenburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3041	Orjol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3042	Penza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3043	Perm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3044	Primorje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3045	Pskov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3046	Pskovskaya Oblast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3047	Rjazan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3048	Rostov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3049	Saha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3050	Sahalin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3051	Samara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3052	Samarskaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3053	Sankt-Peterburg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3054	Saratov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3055	Smolensk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3056	Stavropol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3057	Sverdlovsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3058	Tajmyrija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3059	Tambov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3060	Tatarstan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3061	Tjumen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3062	Tomsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3063	Tula	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3064	Tver	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3065	Tyva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3066	Udmurtija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3067	Uljanovsk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3068	Ulyanovskaya Oblast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3069	Ust-Orda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3070	Vladimir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3071	Volgograd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3072	Vologda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3073	Voronezh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	181
3074	Butare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3075	Byumba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3076	Cyangugu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3077	Gikongoro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3078	Gisenyi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3079	Gitarama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3080	Kibungo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3081	Kibuye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3082	Kigali-ngali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3083	Ruhengeri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	182
3084	Ascension	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	183
3085	Gough Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	183
3086	Saint Helena	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	183
3087	Tristan da Cunha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	183
3088	Christ Church Nichola Town	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3089	Saint Anne Sandy Point	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3090	Saint George Basseterre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3091	Saint George Gingerland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3092	Saint James Windward	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3093	Saint John Capesterre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3094	Saint John Figtree	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3095	Saint Mary Cayon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3096	Saint Paul Capesterre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3097	Saint Paul Charlestown	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3098	Saint Peter Basseterre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3099	Saint Thomas Lowland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3100	Saint Thomas Middle Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3101	Trinity Palmetto Point	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	184
3102	Anse-la-Raye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3103	Canaries	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3104	Castries	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3105	Choiseul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3106	Dennery	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3107	Gros Inlet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3108	Laborie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3109	Micoud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3110	Soufriere	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3111	Vieux Fort	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	185
3112	Miquelon-Langlade	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	186
3113	Saint-Pierre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	186
3114	Charlotte	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3115	Grenadines	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3116	Saint Andrew	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3117	Saint David	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3118	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3119	Saint Patrick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	187
3120	A'ana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3121	Aiga-i-le-Tai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3122	Atua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3123	Fa'asaleleaga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3124	Gaga'emauga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3125	Gagaifomauga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3126	Palauli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3127	Satupa'itea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3128	Tuamasaga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3129	Va'a-o-Fonoti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3130	Vaisigano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	188
3131	Acquaviva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3132	Borgo Maggiore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3133	Chiesanuova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3134	Domagnano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3135	Faetano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3136	Fiorentino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3137	Montegiardino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3138	San Marino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3139	Serravalle	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	189
3140	Agua Grande	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3141	Cantagalo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3142	Lemba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3143	Lobata	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3144	Me-Zochi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3145	Pague	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	190
3146	Al Khobar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3147	Aseer	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3148	Ash Sharqiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3149	Asir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3150	Central Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3151	Eastern Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3152	Ha'il	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3153	Jawf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3154	Jizan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3155	Makkah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3156	Najran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3157	Qasim	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3158	Tabuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3159	Western Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3160	al-Bahah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3161	al-Hudud-ash-Shamaliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3162	al-Madinah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3163	ar-Riyad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	191
3164	Dakar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3165	Diourbel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3166	Fatick	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3167	Kaolack	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3168	Kolda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3169	Louga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3170	Saint-Louis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3171	Tambacounda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3172	Thies	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3173	Ziguinchor	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	192
3174	Central Serbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	193
3175	Kosovo and Metohija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	193
3176	Vojvodina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	193
3177	Anse Boileau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	194
3178	Anse Royale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	194
3179	Cascade	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	194
3180	Takamaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	194
3181	Victoria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	194
3182	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	195
3183	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	195
3184	Southern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	195
3185	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	195
3186	Singapore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	196
3187	Banskobystricky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3188	Bratislavsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3189	Kosicky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3190	Nitriansky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3191	Presovsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3192	Trenciansky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3193	Trnavsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3194	Zilinsky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	197
3195	Benedikt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3196	Gorenjska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3197	Gorishka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3198	Jugovzhodna Slovenija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3199	Koroshka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3200	Notranjsko-krashka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3201	Obalno-krashka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3202	Obcina Domzale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3203	Obcina Vitanje	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3204	Osrednjeslovenska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3205	Podravska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3206	Pomurska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3207	Savinjska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3208	Slovenian Littoral	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3209	Spodnjeposavska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3210	Zasavska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	198
3211	Pitcairn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	199
3212	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3213	Choiseul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3214	Guadalcanal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3215	Isabel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3216	Makira and Ulawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3217	Malaita	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3218	Rennell and Bellona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3219	Temotu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3220	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	200
3221	Awdal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3222	Bakol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3223	Banadir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3224	Bari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3225	Bay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3226	Galgudug	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3227	Gedo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3228	Hiran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3229	Jubbada Hose	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3230	Jubbadha Dexe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3231	Mudug	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3232	Nugal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3233	Sanag	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3234	Shabellaha Dhexe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3235	Shabellaha Hose	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3236	Togdher	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3237	Woqoyi Galbed	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	201
3238	Eastern Cape	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3239	Free State	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3240	Gauteng	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3241	Kempton Park	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3242	Kramerville	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3243	KwaZulu Natal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3244	Limpopo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3245	Mpumalanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3246	North West	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3247	Northern Cape	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3248	Parow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3249	Table View	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3250	Umtentweni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3251	Western Cape	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	202
3252	South Georgia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	203
3253	Central Equatoria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	204
3254	A Coruna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3255	Alacant	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3256	Alava	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3257	Albacete	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3258	Almeria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3259	Andalucia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3260	Asturias	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3261	Avila	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3262	Badajoz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3263	Balears	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3264	Barcelona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3265	Bertamirans	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3266	Biscay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3267	Burgos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3268	Caceres	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3269	Cadiz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3270	Cantabria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3271	Castello	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3272	Catalunya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3273	Ceuta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3274	Ciudad Real	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3275	Comunidad Autonoma de Canarias	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3276	Comunidad Autonoma de Cataluna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3277	Comunidad Autonoma de Galicia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3278	Comunidad Autonoma de las Isla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3279	Comunidad Autonoma del Princip	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3280	Comunidad Valenciana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3281	Cordoba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3282	Cuenca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3283	Gipuzkoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3284	Girona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3285	Granada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3286	Guadalajara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3287	Guipuzcoa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3288	Huelva	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3289	Huesca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3290	Jaen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3291	La Rioja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3292	Las Palmas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3293	Leon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3294	Lerida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3295	Lleida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3296	Lugo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3297	Madrid	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3298	Malaga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3299	Melilla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3300	Murcia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3301	Navarra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3302	Ourense	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3303	Pais Vasco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3304	Palencia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3305	Pontevedra	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3306	Salamanca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3307	Santa Cruz de Tenerife	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3308	Segovia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3309	Sevilla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3310	Soria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3311	Tarragona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3312	Tenerife	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3313	Teruel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3314	Toledo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3315	Valencia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3316	Valladolid	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3317	Vizcaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3318	Zamora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3319	Zaragoza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	205
3320	Amparai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3321	Anuradhapuraya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3322	Badulla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3323	Boralesgamuwa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3324	Colombo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3325	Galla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3326	Gampaha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3327	Hambantota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3328	Kalatura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3329	Kegalla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3330	Kilinochchi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3331	Kurunegala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3332	Madakalpuwa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3333	Maha Nuwara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3334	Malwana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3335	Mannarama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3336	Matale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3337	Matara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3338	Monaragala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3339	Mullaitivu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3340	North Eastern Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3341	North Western Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3342	Nuwara Eliya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3343	Polonnaruwa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3344	Puttalama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3345	Ratnapuraya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3346	Southern Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3347	Tirikunamalaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3348	Tuscany	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3349	Vavuniyawa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3350	Western Province	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3351	Yapanaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3352	kadawatha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	206
3353	A'ali-an-Nil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3354	Bahr-al-Jabal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3355	Central Equatoria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3356	Gharb Bahr-al-Ghazal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3357	Gharb Darfur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3358	Gharb Kurdufan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3359	Gharb-al-Istiwa'iyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3360	Janub Darfur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3361	Janub Kurdufan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3362	Junqali	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3363	Kassala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3364	Nahr-an-Nil	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3365	Shamal Bahr-al-Ghazal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3366	Shamal Darfur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3367	Shamal Kurdufan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3368	Sharq-al-Istiwa'iyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3369	Sinnar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3370	Warab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3371	Wilayat al Khartum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3372	al-Bahr-al-Ahmar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3373	al-Buhayrat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3374	al-Jazirah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3375	al-Khartum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3376	al-Qadarif	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3377	al-Wahdah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3378	an-Nil-al-Abyad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3379	an-Nil-al-Azraq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3380	ash-Shamaliyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	207
3381	Brokopondo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3382	Commewijne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3383	Coronie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3384	Marowijne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3385	Nickerie	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3386	Para	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3387	Paramaribo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3388	Saramacca	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3389	Wanica	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	208
3390	Svalbard	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	209
3391	Hhohho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	210
3392	Lubombo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	210
3393	Manzini	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	210
3394	Shiselweni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	210
3395	Alvsborgs Lan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3396	Angermanland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3397	Blekinge	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3398	Bohuslan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3399	Dalarna	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3400	Gavleborg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3401	Gaza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3402	Gotland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3403	Halland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3404	Jamtland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3405	Jonkoping	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3406	Kalmar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3407	Kristianstads	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3408	Kronoberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3409	Norrbotten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3410	Orebro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3411	Ostergotland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3412	Saltsjo-Boo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3413	Skane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3414	Smaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3415	Sodermanland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3416	Stockholm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3417	Uppsala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3418	Varmland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3419	Vasterbotten	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3420	Vastergotland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3421	Vasternorrland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3422	Vastmanland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3423	Vastra Gotaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	211
3424	Aargau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3425	Appenzell Inner-Rhoden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3426	Appenzell-Ausser Rhoden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3427	Basel-Landschaft	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3428	Basel-Stadt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3429	Bern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3430	Canton Ticino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3431	Fribourg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3432	Geneve	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3433	Glarus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3434	Graubunden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3435	Heerbrugg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3436	Jura	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3437	Kanton Aargau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3438	Luzern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3439	Morbio Inferiore	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3440	Muhen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3441	Neuchatel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3442	Nidwalden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3443	Obwalden	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3444	Sankt Gallen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3445	Schaffhausen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3446	Schwyz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3447	Solothurn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3448	Thurgau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3449	Ticino	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3450	Uri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3451	Valais	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3452	Vaud	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3453	Vauffelin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3454	Zug	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3455	Zurich	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	212
3456	Aleppo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3457	Dar'a	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3458	Dayr-az-Zawr	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3459	Dimashq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3460	Halab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3461	Hamah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3462	Hims	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3463	Idlib	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3464	Madinat Dimashq	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3465	Tartus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3466	al-Hasakah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3467	al-Ladhiqiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3468	al-Qunaytirah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3469	ar-Raqqah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3470	as-Suwayda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	213
3471	Changhwa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3472	Chiayi Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3473	Chiayi Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3474	Eastern Taipei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3475	Hsinchu Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3476	Hsinchu Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3477	Hualien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3478	Ilan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3479	Kaohsiung Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3480	Kaohsiung Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3481	Keelung Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3482	Kinmen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3483	Miaoli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3484	Nantou	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3485	Northern Taiwan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3486	Penghu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3487	Pingtung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3488	Taichung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3489	Taichung Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3490	Taichung Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3491	Tainan Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3492	Tainan Shih	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3493	Taipei Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3494	Taipei Shih / Taipei Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3495	Taitung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3496	Taoyuan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3497	Yilan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3498	Yun-Lin Hsien	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3499	Yunlin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	214
3500	Dushanbe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	215
3501	Gorno-Badakhshan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	215
3502	Karotegin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	215
3503	Khatlon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	215
3504	Sughd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	215
3505	Arusha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3506	Dar es Salaam	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3507	Dodoma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3508	Iringa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3509	Kagera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3510	Kigoma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3511	Kilimanjaro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3512	Lindi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3513	Mara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3514	Mbeya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3515	Morogoro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3516	Mtwara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3517	Mwanza	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3518	Pwani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3519	Rukwa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3520	Ruvuma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3521	Shinyanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3522	Singida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3523	Tabora	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3524	Tanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3525	Zanzibar and Pemba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	216
3526	Amnat Charoen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3527	Ang Thong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3528	Bangkok	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3529	Buri Ram	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3530	Chachoengsao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3531	Chai Nat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3532	Chaiyaphum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3533	Changwat Chaiyaphum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3534	Chanthaburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3535	Chiang Mai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3536	Chiang Rai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3537	Chon Buri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3538	Chumphon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3539	Kalasin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3540	Kamphaeng Phet	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3541	Kanchanaburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3542	Khon Kaen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3543	Krabi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3544	Krung Thep	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3545	Lampang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3546	Lamphun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3547	Loei	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3548	Lop Buri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3549	Mae Hong Son	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3550	Maha Sarakham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3551	Mukdahan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3552	Nakhon Nayok	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3553	Nakhon Pathom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3554	Nakhon Phanom	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3555	Nakhon Ratchasima	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3556	Nakhon Sawan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3557	Nakhon Si Thammarat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3558	Nan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3559	Narathiwat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3560	Nong Bua Lam Phu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3561	Nong Khai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3562	Nonthaburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3563	Pathum Thani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3564	Pattani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3565	Phangnga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3566	Phatthalung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3567	Phayao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3568	Phetchabun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3569	Phetchaburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3570	Phichit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3571	Phitsanulok	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3572	Phra Nakhon Si Ayutthaya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3573	Phrae	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3574	Phuket	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3575	Prachin Buri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3576	Prachuap Khiri Khan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3577	Ranong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3578	Ratchaburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3579	Rayong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3580	Roi Et	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3581	Sa Kaeo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3582	Sakon Nakhon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3583	Samut Prakan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3584	Samut Sakhon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3585	Samut Songkhran	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3586	Saraburi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3587	Satun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3588	Si Sa Ket	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3589	Sing Buri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3590	Songkhla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3591	Sukhothai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3592	Suphan Buri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3593	Surat Thani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3594	Surin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3595	Tak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3596	Trang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3597	Trat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3598	Ubon Ratchathani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3599	Udon Thani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3600	Uthai Thani	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3601	Uttaradit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3602	Yala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3603	Yasothon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	217
3604	Centre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	218
3605	Kara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	218
3606	Maritime	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	218
3607	Plateaux	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	218
3608	Savanes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	218
3609	Atafu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	219
3610	Fakaofo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	219
3611	Nukunonu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	219
3612	Eua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	220
3613	Ha'apai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	220
3614	Niuas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	220
3615	Tongatapu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	220
3616	Vava'u	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	220
3617	Arima-Tunapuna-Piarco	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3618	Caroni	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3619	Chaguanas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3620	Couva-Tabaquite-Talparo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3621	Diego Martin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3622	Glencoe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3623	Penal Debe	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3624	Point Fortin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3625	Port of Spain	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3626	Princes Town	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3627	Saint George	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3628	San Fernando	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3629	San Juan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3630	Sangre Grande	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3631	Siparia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3632	Tobago	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	221
3633	Aryanah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3634	Bajah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3635	Bin 'Arus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3636	Binzart	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3637	Gouvernorat de Ariana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3638	Gouvernorat de Nabeul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3639	Gouvernorat de Sousse	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3640	Hammamet Yasmine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3641	Jundubah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3642	Madaniyin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3643	Manubah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3644	Monastir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3645	Nabul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3646	Qabis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3647	Qafsah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3648	Qibili	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3649	Safaqis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3650	Sfax	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3651	Sidi Bu Zayd	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3652	Silyanah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3653	Susah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3654	Tatawin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3655	Tawzar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3656	Tunis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3657	Zaghwan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3658	al-Kaf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3659	al-Mahdiyah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3660	al-Munastir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3661	al-Qasrayn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3662	al-Qayrawan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	222
3663	Adana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3664	Adiyaman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3665	Afyon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3666	Agri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3667	Aksaray	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3668	Amasya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3669	Ankara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3670	Antalya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3671	Ardahan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3672	Artvin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3673	Aydin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3674	Balikesir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3675	Bartin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3676	Batman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3677	Bayburt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3678	Bilecik	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3679	Bingol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3680	Bitlis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3681	Bolu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3682	Burdur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3683	Bursa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3684	Canakkale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3685	Cankiri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3686	Corum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3687	Denizli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3688	Diyarbakir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3689	Duzce	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3690	Edirne	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3691	Elazig	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3692	Erzincan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3693	Erzurum	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3694	Eskisehir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3695	Gaziantep	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3696	Giresun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3697	Gumushane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3698	Hakkari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3699	Hatay	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3700	Icel	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3701	Igdir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3702	Isparta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3703	Istanbul	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3704	Izmir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3705	Kahramanmaras	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3706	Karabuk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3707	Karaman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3708	Kars	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3709	Karsiyaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3710	Kastamonu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3711	Kayseri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3712	Kilis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3713	Kirikkale	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3714	Kirklareli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3715	Kirsehir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3716	Kocaeli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3717	Konya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3718	Kutahya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3719	Lefkosa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3720	Malatya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3721	Manisa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3722	Mardin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3723	Mugla	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3724	Mus	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3725	Nevsehir	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3726	Nigde	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3727	Ordu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3728	Osmaniye	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3729	Rize	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3730	Sakarya	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3731	Samsun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3732	Sanliurfa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3733	Siirt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3734	Sinop	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3735	Sirnak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3736	Sivas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3737	Tekirdag	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3738	Tokat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3739	Trabzon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3740	Tunceli	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3741	Usak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3742	Van	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3743	Yalova	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3744	Yozgat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3745	Zonguldak	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	223
3746	Ahal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3747	Asgabat	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3748	Balkan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3749	Dasoguz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3750	Lebap	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3751	Mari	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	224
3752	Grand Turk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	225
3753	South Caicos and East Caicos	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	225
3754	Funafuti	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3755	Nanumanga	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3756	Nanumea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3757	Niutao	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3758	Nui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3759	Nukufetau	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3760	Nukulaelae	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3761	Vaitupu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	226
3762	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	227
3763	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	227
3764	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	227
3765	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	227
3766	Cherkas'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3767	Chernihivs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3768	Chernivets'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3769	Crimea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3770	Dnipropetrovska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3771	Donets'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3772	Ivano-Frankivs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3773	Kharkiv	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3774	Kharkov	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3775	Khersonska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3776	Khmel'nyts'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3777	Kirovohrad	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3778	Krym	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3779	Kyyiv	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3780	Kyyivs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3781	L'vivs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3782	Luhans'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3783	Mykolayivs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3784	Odes'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3785	Odessa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3786	Poltavs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3787	Rivnens'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3788	Sevastopol'	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3789	Sums'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3790	Ternopil's'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3791	Volyns'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3792	Vynnyts'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3793	Zakarpats'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3794	Zaporizhia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3795	Zhytomyrs'ka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	228
3796	Abu Zabi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3797	Ajman	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3798	Dubai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3799	Ras al-Khaymah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3800	Sharjah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3801	Sharjha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3802	Umm al Qaywayn	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3803	al-Fujayrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3804	ash-Shariqah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	229
3805	Aberdeen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3806	Aberdeenshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3807	Argyll	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3808	Armagh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3809	Bedfordshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3810	Belfast	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3811	Berkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3812	Birmingham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3813	Brechin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3814	Bridgnorth	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3815	Bristol	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3816	Buckinghamshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3817	Cambridge	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3818	Cambridgeshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3819	Channel Islands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3820	Cheshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3821	Cleveland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3822	Co Fermanagh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3823	Conwy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3824	Cornwall	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3825	Coventry	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3826	Craven Arms	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3827	Cumbria	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3828	Denbighshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3829	Derby	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3830	Derbyshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3831	Devon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3832	Dial Code Dungannon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3833	Didcot	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3834	Dorset	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3835	Dunbartonshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3836	Durham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3837	East Dunbartonshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3838	East Lothian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3839	East Midlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3840	East Sussex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3841	East Yorkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3842	England	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3843	Essex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3844	Fermanagh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3845	Fife	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3846	Flintshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3847	Fulham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3848	Gainsborough	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3849	Glocestershire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3850	Gwent	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3851	Hampshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3852	Hants	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3853	Herefordshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3854	Hertfordshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3855	Ireland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3856	Isle Of Man	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3857	Isle of Wight	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3858	Kenford	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3859	Kent	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3860	Kilmarnock	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3861	Lanarkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3862	Lancashire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3863	Leicestershire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3864	Lincolnshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3865	Llanymynech	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3866	London	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3867	Ludlow	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3868	Manchester	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3869	Mayfair	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3870	Merseyside	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3871	Mid Glamorgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3872	Middlesex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3873	Mildenhall	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3874	Monmouthshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3875	Newton Stewart	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3876	Norfolk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3877	North Humberside	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3878	North Yorkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3879	Northamptonshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3880	Northants	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3881	Northern Ireland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3882	Northumberland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3883	Nottinghamshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3884	Oxford	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3885	Powys	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3886	Roos-shire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3887	SUSSEX	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3888	Sark	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3889	Scotland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3890	Scottish Borders	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3891	Shropshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3892	Somerset	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3893	South Glamorgan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3894	South Wales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3895	South Yorkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3896	Southwell	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3897	Staffordshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3898	Strabane	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3899	Suffolk	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3900	Surrey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3901	Sussex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3902	Twickenham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3903	Tyne and Wear	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3904	Tyrone	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3905	Utah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3906	Wales	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3907	Warwickshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3908	West Lothian	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3909	West Midlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3910	West Sussex	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3911	West Yorkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3912	Whissendine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3913	Wiltshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3914	Wokingham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3915	Worcestershire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3916	Wrexham	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3917	Wurttemberg	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3918	Yorkshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	230
3919	Alabama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3920	Alaska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3921	Arizona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3922	Arkansas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3923	Byram	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3924	California	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3925	Cokato	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3926	Colorado	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3927	Connecticut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3928	Delaware	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3929	District of Columbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3930	Florida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3931	Georgia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3932	Hawaii	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3933	Idaho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3934	Illinois	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3935	Indiana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3936	Iowa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3937	Kansas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3938	Kentucky	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3939	Louisiana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3940	Lowa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3941	Maine	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3942	Maryland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3943	Massachusetts	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3944	Medfield	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3945	Michigan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3946	Minnesota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3947	Mississippi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3948	Missouri	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3949	Montana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3950	Nebraska	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3951	Nevada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3952	New Hampshire	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3953	New Jersey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3954	New Jersy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3955	New Mexico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3956	New York	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3957	North Carolina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3958	North Dakota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3959	Ohio	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3960	Oklahoma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3961	Ontario	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3962	Oregon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3963	Pennsylvania	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3964	Ramey	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3965	Rhode Island	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3966	South Carolina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3967	South Dakota	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3968	Sublimity	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3969	Tennessee	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3970	Texas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3971	Trimble	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3972	Utah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3973	Vermont	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3974	Virginia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3975	Washington	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3976	West Virginia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3977	Wisconsin	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3978	Wyoming	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	231
3979	United States Minor Outlying I	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	232
3980	Artigas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3981	Canelones	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3982	Cerro Largo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3983	Colonia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3984	Durazno	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3985	FLorida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3986	Flores	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3987	Lavalleja	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3988	Maldonado	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3989	Montevideo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3990	Paysandu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3991	Rio Negro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3992	Rivera	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3993	Rocha	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3994	Salto	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3995	San Jose	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3996	Soriano	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3997	Tacuarembo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3998	Treinta y Tres	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	233
3999	Andijon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4000	Buhoro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4001	Buxoro Viloyati	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4002	Cizah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4003	Fargona	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4004	Horazm	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4005	Kaskadar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4006	Korakalpogiston	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4007	Namangan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4008	Navoi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4009	Samarkand	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4010	Sirdare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4011	Surhondar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4012	Toskent	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	234
4013	Malampa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4014	Penama	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4015	Sanma	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4016	Shefa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4017	Tafea	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4018	Torba	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	235
4019	Vatican City State (Holy See)	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	236
4020	Amazonas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4021	Anzoategui	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4022	Apure	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4023	Aragua	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4024	Barinas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4025	Bolivar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4026	Carabobo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4027	Cojedes	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4028	Delta Amacuro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4029	Distrito Federal	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4030	Falcon	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4031	Guarico	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4032	Lara	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4033	Merida	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4034	Miranda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4035	Monagas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4036	Nueva Esparta	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4037	Portuguesa	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4038	Sucre	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4039	Tachira	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4040	Trujillo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4041	Vargas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4042	Yaracuy	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4043	Zulia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	237
4044	Bac Giang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4045	Binh Dinh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4046	Binh Duong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4047	Da Nang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4048	Dong Bang Song Cuu Long	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4049	Dong Bang Song Hong	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4050	Dong Nai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4051	Dong Nam Bo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4052	Duyen Hai Mien Trung	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4053	Hanoi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4054	Hung Yen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4055	Khu Bon Cu	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4056	Long An	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4057	Mien Nui Va Trung Du	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4058	Thai Nguyen	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4059	Thanh Pho Ho Chi Minh	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4060	Thu Do Ha Noi	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4061	Tinh Can Tho	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4062	Tinh Da Nang	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4063	Tinh Gia Lai	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	238
4064	Anegada	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	239
4065	Jost van Dyke	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	239
4066	Tortola	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	239
4067	Saint Croix	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	240
4068	Saint John	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	240
4069	Saint Thomas	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	240
4070	Alo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	241
4071	Singave	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	241
4072	Wallis	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	241
4073	Bu Jaydur	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	242
4074	Wad-adh-Dhahab	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	242
4075	al-'Ayun	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	242
4076	as-Samarah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	242
4077	'Adan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4078	Abyan	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4079	Dhamar	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4080	Hadramaut	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4081	Hajjah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4082	Hudaydah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4083	Ibb	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4084	Lahij	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4085	Ma'rib	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4086	Madinat San'a	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4087	Sa'dah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4088	Sana	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4089	Shabwah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4090	Ta'izz	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4091	al-Bayda	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4092	al-Hudaydah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4093	al-Jawf	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4094	al-Mahrah	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4095	al-Mahwit	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	243
4096	Central Serbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4097	Kosovo and Metohija	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4098	Montenegro	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4099	Republic of Serbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4100	Serbia	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4101	Vojvodina	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	244
4102	Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4103	Copperbelt	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4104	Eastern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4105	Luapala	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4106	Lusaka	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4107	North-Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4108	Northern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4109	Southern	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4110	Western	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	245
4111	Bulawayo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4112	Harare	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4113	Manicaland	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4114	Mashonaland Central	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4115	Mashonaland East	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4116	Mashonaland West	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4117	Masvingo	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4118	Matabeleland North	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4119	Matabeleland South	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
4120	Midlands	2020-07-13 13:47:39.997867+00	2020-07-13 13:47:39.997867+00	246
\.


--
-- Data for Name: subscribers_newsletter; Type: TABLE DATA; Schema: public; Owner: root
--

COPY public.subscribers_newsletter (newsletter_id, email_address, verify_token, is_verified, status, created_at, updated_at) FROM stdin;
8	wtit786@gmail.com		t	t	2020-07-26 06:23:32.459875+00	2020-07-26 06:23:32.459916+00
7	ashishkumarbijalwan567@gmail.com		t	t	2020-07-26 06:22:51.30879+00	2020-07-26 06:22:51.308833+00
9	dp@gmail.com	HelrCFlsEriWOTwshdCrBjERm	f	t	2020-07-29 05:13:39.74908+00	2020-07-29 05:13:39.749102+00
\.


--
-- Name: admin_interface_theme_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.admin_interface_theme_id_seq', 3, true);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 2, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 144, true);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 120, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 3, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 4, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 227, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 25, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 88, true);


--
-- Name: shop_categorie_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_categorie_category_id_seq', 31, true);


--
-- Name: shop_contact_contact_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_contact_contact_id_seq', 1, false);


--
-- Name: shop_countrie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_countrie_id_seq', 1, false);


--
-- Name: shop_currencyconversationrate_conversation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_currencyconversationrate_conversation_id_seq', 5, true);


--
-- Name: shop_customer_addres_address_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_customer_addres_address_id_seq', 3, true);


--
-- Name: shop_customer_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_customer_customer_id_seq', 10, true);


--
-- Name: shop_customer_order_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_customer_order_order_id_seq', 15, true);


--
-- Name: shop_customer_review_Review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public."shop_customer_review_Review_id_seq"', 15, true);


--
-- Name: shop_customer_wishlist_wishlist_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_customer_wishlist_wishlist_id_seq', 10, true);


--
-- Name: shop_homebanner_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_homebanner_banner_id_seq', 10, true);


--
-- Name: shop_orderitem_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_orderitem_item_id_seq', 14, true);


--
-- Name: shop_orderstatus_order_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_orderstatus_order_status_id_seq', 19, true);


--
-- Name: shop_prdoucts_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_prdoucts_product_id_seq', 30, true);


--
-- Name: shop_product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_product_product_id_seq', 1, false);


--
-- Name: shop_productimage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_productimage_id_seq', 64, true);


--
-- Name: shop_productprice_price_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_productprice_price_id_seq', 56, true);


--
-- Name: shop_state_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.shop_state_id_seq', 1, false);


--
-- Name: subscribers_newsletter_newsletter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: root
--

SELECT pg_catalog.setval('public.subscribers_newsletter_newsletter_id_seq', 9, true);


--
-- Name: admin_interface_theme admin_interface_theme_name_30bda70f_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_name_30bda70f_uniq UNIQUE (name);


--
-- Name: admin_interface_theme admin_interface_theme_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.admin_interface_theme
    ADD CONSTRAINT admin_interface_theme_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: shop_categorie shop_categorie_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_categorie
    ADD CONSTRAINT shop_categorie_pkey PRIMARY KEY (category_id);


--
-- Name: shop_categorie shop_categorie_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_categorie
    ADD CONSTRAINT shop_categorie_slug_key UNIQUE (slug);


--
-- Name: shop_contact shop_contact_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_contact
    ADD CONSTRAINT shop_contact_pkey PRIMARY KEY (contact_id);


--
-- Name: shop_countrie shop_countrie_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_countrie
    ADD CONSTRAINT shop_countrie_pkey PRIMARY KEY (id);


--
-- Name: shop_currencyconversationrate shop_currencyconversationrate_currency_code_to_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_currencyconversationrate
    ADD CONSTRAINT shop_currencyconversationrate_currency_code_to_key UNIQUE (currency_code_to);


--
-- Name: shop_currencyconversationrate shop_currencyconversationrate_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_currencyconversationrate
    ADD CONSTRAINT shop_currencyconversationrate_pkey PRIMARY KEY (conversation_id);


--
-- Name: shop_customeraddres shop_customer_addres_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customeraddres
    ADD CONSTRAINT shop_customer_addres_pkey PRIMARY KEY (address_id);


--
-- Name: shop_customer shop_customer_email_address_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customer
    ADD CONSTRAINT shop_customer_email_address_key UNIQUE (email_address);


--
-- Name: shop_customerorder shop_customer_order_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerorder
    ADD CONSTRAINT shop_customer_order_pkey PRIMARY KEY (order_id);


--
-- Name: shop_customer shop_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customer
    ADD CONSTRAINT shop_customer_pkey PRIMARY KEY (customer_id);


--
-- Name: shop_customerreview shop_customer_review_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerreview
    ADD CONSTRAINT shop_customer_review_pkey PRIMARY KEY ("Review_id");


--
-- Name: shop_customer shop_customer_username_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customer
    ADD CONSTRAINT shop_customer_username_key UNIQUE (username);


--
-- Name: shop_customerwishlist shop_customer_wishlist_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerwishlist
    ADD CONSTRAINT shop_customer_wishlist_pkey PRIMARY KEY (wishlist_id);


--
-- Name: shop_homebanner shop_homebanner_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_homebanner
    ADD CONSTRAINT shop_homebanner_pkey PRIMARY KEY (banner_id);


--
-- Name: shop_orderitem shop_orderitem_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderitem
    ADD CONSTRAINT shop_orderitem_pkey PRIMARY KEY (item_id);


--
-- Name: shop_orderstatus shop_orderstatus_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderstatus
    ADD CONSTRAINT shop_orderstatus_pkey PRIMARY KEY (order_status_id);


--
-- Name: shop_product shop_product_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_pkey PRIMARY KEY (product_id);


--
-- Name: shop_product shop_product_slug_key; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_slug_key UNIQUE (slug);


--
-- Name: shop_productimage shop_productimage_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productimage
    ADD CONSTRAINT shop_productimage_pkey PRIMARY KEY (id);


--
-- Name: shop_productprice shop_productprice_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productprice
    ADD CONSTRAINT shop_productprice_pkey PRIMARY KEY (price_id);


--
-- Name: shop_state shop_state_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_state
    ADD CONSTRAINT shop_state_pkey PRIMARY KEY (id);


--
-- Name: subscribers_newsletter subscribers_newsletter_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.subscribers_newsletter
    ADD CONSTRAINT subscribers_newsletter_pkey PRIMARY KEY (newsletter_id);


--
-- Name: admin_interface_theme_name_30bda70f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX admin_interface_theme_name_30bda70f_like ON public.admin_interface_theme USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: shop_categorie_parent_id_41db0796; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_categorie_parent_id_41db0796 ON public.shop_categorie USING btree (parent_id);


--
-- Name: shop_categorie_slug_57aebd0f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_categorie_slug_57aebd0f_like ON public.shop_categorie USING btree (slug varchar_pattern_ops);


--
-- Name: shop_currencyconversationrate_currency_code_to_7b5bbcf9_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_currencyconversationrate_currency_code_to_7b5bbcf9_like ON public.shop_currencyconversationrate USING btree (currency_code_to varchar_pattern_ops);


--
-- Name: shop_customer_addres_country_id_73e95a6d; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_addres_country_id_73e95a6d ON public.shop_customeraddres USING btree (country_id);


--
-- Name: shop_customer_addres_customer_id_3734c3e3; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_addres_customer_id_3734c3e3 ON public.shop_customeraddres USING btree (customer_id);


--
-- Name: shop_customer_addres_state_id_3d7732ff; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_addres_state_id_3d7732ff ON public.shop_customeraddres USING btree (state_id);


--
-- Name: shop_customer_email_address_62fb836f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_email_address_62fb836f_like ON public.shop_customer USING btree (email_address varchar_pattern_ops);


--
-- Name: shop_customer_order_address_id_472ce1cc; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_order_address_id_472ce1cc ON public.shop_customerorder USING btree (address_id);


--
-- Name: shop_customer_order_customer_id_59d8d3bc; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_order_customer_id_59d8d3bc ON public.shop_customerorder USING btree (customer_id);


--
-- Name: shop_customer_review_customer_id_77d4fd37; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_review_customer_id_77d4fd37 ON public.shop_customerreview USING btree (customer_id);


--
-- Name: shop_customer_review_order_id_41fceaf3; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_review_order_id_41fceaf3 ON public.shop_customerreview USING btree (order_id);


--
-- Name: shop_customer_review_product_id_c36aa8a0; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_review_product_id_c36aa8a0 ON public.shop_customerreview USING btree (product_id);


--
-- Name: shop_customer_username_d8d0987f_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_username_d8d0987f_like ON public.shop_customer USING btree (username varchar_pattern_ops);


--
-- Name: shop_customer_wishlist_customer_id_d22d4bbd; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_wishlist_customer_id_d22d4bbd ON public.shop_customerwishlist USING btree (customer_id);


--
-- Name: shop_customer_wishlist_product_id_69c0fec6; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_customer_wishlist_product_id_69c0fec6 ON public.shop_customerwishlist USING btree (product_id);


--
-- Name: shop_orderitem_order_id_2f1b00cf; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_orderitem_order_id_2f1b00cf ON public.shop_orderitem USING btree (order_id);


--
-- Name: shop_orderitem_product_id_48153f22; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_orderitem_product_id_48153f22 ON public.shop_orderitem USING btree (product_id);


--
-- Name: shop_orderstatus_order_id_cac486c1; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_orderstatus_order_id_cac486c1 ON public.shop_orderstatus USING btree (order_id);


--
-- Name: shop_product_category_id_14d7eea8; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_product_category_id_14d7eea8 ON public.shop_product USING btree (category_id);


--
-- Name: shop_product_seller_id_id_e706abc5; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_product_seller_id_id_e706abc5 ON public.shop_product USING btree (seller_id_id);


--
-- Name: shop_product_slug_30bd2d5d_like; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_product_slug_30bd2d5d_like ON public.shop_product USING btree (slug varchar_pattern_ops);


--
-- Name: shop_productimage_product_id_65b3b20c; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_productimage_product_id_65b3b20c ON public.shop_productimage USING btree (product_id);


--
-- Name: shop_productprice_product_id_8aaa1c1b; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_productprice_product_id_8aaa1c1b ON public.shop_productprice USING btree (product_id);


--
-- Name: shop_state_country_id_8baa6f41; Type: INDEX; Schema: public; Owner: root
--

CREATE INDEX shop_state_country_id_8baa6f41 ON public.shop_state USING btree (country_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_categorie shop_categorie_parent_id_41db0796_fk_shop_categorie_category_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_categorie
    ADD CONSTRAINT shop_categorie_parent_id_41db0796_fk_shop_categorie_category_id FOREIGN KEY (parent_id) REFERENCES public.shop_categorie(category_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customeraddres shop_customer_addres_country_id_73e95a6d_fk_shop_countrie_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customeraddres
    ADD CONSTRAINT shop_customer_addres_country_id_73e95a6d_fk_shop_countrie_id FOREIGN KEY (country_id) REFERENCES public.shop_countrie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customeraddres shop_customer_addres_customer_id_3734c3e3_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customeraddres
    ADD CONSTRAINT shop_customer_addres_customer_id_3734c3e3_fk_shop_cust FOREIGN KEY (customer_id) REFERENCES public.shop_customer(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customeraddres shop_customer_addres_state_id_3d7732ff_fk_shop_state_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customeraddres
    ADD CONSTRAINT shop_customer_addres_state_id_3d7732ff_fk_shop_state_id FOREIGN KEY (state_id) REFERENCES public.shop_state(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerorder shop_customer_order_address_id_472ce1cc_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerorder
    ADD CONSTRAINT shop_customer_order_address_id_472ce1cc_fk_shop_cust FOREIGN KEY (address_id) REFERENCES public.shop_customeraddres(address_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerorder shop_customer_order_customer_id_59d8d3bc_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerorder
    ADD CONSTRAINT shop_customer_order_customer_id_59d8d3bc_fk_shop_cust FOREIGN KEY (customer_id) REFERENCES public.shop_customer(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerreview shop_customer_review_customer_id_77d4fd37_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerreview
    ADD CONSTRAINT shop_customer_review_customer_id_77d4fd37_fk_shop_cust FOREIGN KEY (customer_id) REFERENCES public.shop_customer(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerreview shop_customer_review_order_id_41fceaf3_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerreview
    ADD CONSTRAINT shop_customer_review_order_id_41fceaf3_fk_shop_cust FOREIGN KEY (order_id) REFERENCES public.shop_customerorder(order_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerreview shop_customer_review_product_id_c36aa8a0_fk_shop_prod; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerreview
    ADD CONSTRAINT shop_customer_review_product_id_c36aa8a0_fk_shop_prod FOREIGN KEY (product_id) REFERENCES public.shop_product(product_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerwishlist shop_customer_wishli_customer_id_d22d4bbd_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerwishlist
    ADD CONSTRAINT shop_customer_wishli_customer_id_d22d4bbd_fk_shop_cust FOREIGN KEY (customer_id) REFERENCES public.shop_customer(customer_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_customerwishlist shop_customer_wishli_product_id_69c0fec6_fk_shop_prod; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_customerwishlist
    ADD CONSTRAINT shop_customer_wishli_product_id_69c0fec6_fk_shop_prod FOREIGN KEY (product_id) REFERENCES public.shop_product(product_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_orderitem shop_orderitem_order_id_2f1b00cf_fk_shop_customerorder_order_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderitem
    ADD CONSTRAINT shop_orderitem_order_id_2f1b00cf_fk_shop_customerorder_order_id FOREIGN KEY (order_id) REFERENCES public.shop_customerorder(order_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_orderitem shop_orderitem_product_id_48153f22_fk_shop_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderitem
    ADD CONSTRAINT shop_orderitem_product_id_48153f22_fk_shop_product_product_id FOREIGN KEY (product_id) REFERENCES public.shop_product(product_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_orderstatus shop_orderstatus_order_id_cac486c1_fk_shop_cust; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_orderstatus
    ADD CONSTRAINT shop_orderstatus_order_id_cac486c1_fk_shop_cust FOREIGN KEY (order_id) REFERENCES public.shop_customerorder(order_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product shop_product_category_id_14d7eea8_fk_shop_categorie_category_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_category_id_14d7eea8_fk_shop_categorie_category_id FOREIGN KEY (category_id) REFERENCES public.shop_categorie(category_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_product shop_product_seller_id_id_e706abc5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_product
    ADD CONSTRAINT shop_product_seller_id_id_e706abc5_fk_auth_user_id FOREIGN KEY (seller_id_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_productimage shop_productimage_product_id_65b3b20c_fk_shop_prod; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productimage
    ADD CONSTRAINT shop_productimage_product_id_65b3b20c_fk_shop_prod FOREIGN KEY (product_id) REFERENCES public.shop_product(product_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_productprice shop_productprice_product_id_8aaa1c1b_fk_shop_prod; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_productprice
    ADD CONSTRAINT shop_productprice_product_id_8aaa1c1b_fk_shop_prod FOREIGN KEY (product_id) REFERENCES public.shop_product(product_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: shop_state shop_state_country_id_8baa6f41_fk_shop_countrie_id; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.shop_state
    ADD CONSTRAINT shop_state_country_id_8baa6f41_fk_shop_countrie_id FOREIGN KEY (country_id) REFERENCES public.shop_countrie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

