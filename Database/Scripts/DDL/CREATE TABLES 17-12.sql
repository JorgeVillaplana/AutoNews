-- public.news definition

-- Drop table

-- DROP TABLE public.news;

CREATE TABLE public.news (
	news_id bigserial NOT NULL,
	title text NULL,
	"content" text NOT NULL,
	url text NULL,
	author text NULL,
	published_at timestamptz NULL,
	canonical_hash bpchar(64) NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT news_canonical_hash_key UNIQUE (canonical_hash),
	CONSTRAINT news_pkey PRIMARY KEY (news_id)
);


-- public.sources_email definition

-- Drop table

-- DROP TABLE public.sources_email;

CREATE TABLE public.sources_email (
	sources_email_id bigserial NOT NULL,
	email_address text NOT NULL,
	"name" text NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT sources_email_email_address_check CHECK ((email_address ~~ '%@%'::text)),
	CONSTRAINT sources_email_email_address_key UNIQUE (email_address),
	CONSTRAINT sources_email_pkey PRIMARY KEY (sources_email_id)
);


-- public.newsletters definition

-- Drop table

-- DROP TABLE public.newsletters;

CREATE TABLE public.newsletters (
	newsletter_id bigserial NOT NULL,
	sources_email_id int8 NOT NULL,
	received_at timestamptz NOT NULL,
	raw_body text NOT NULL,
	message_hash bpchar(64) NOT NULL,
	created_at timestamptz DEFAULT now() NOT NULL,
	CONSTRAINT newsletters_message_hash_key UNIQUE (message_hash),
	CONSTRAINT newsletters_pkey PRIMARY KEY (newsletter_id),
	CONSTRAINT newsletters_sources_email_id_fkey FOREIGN KEY (sources_email_id) REFERENCES public.sources_email(sources_email_id)
);