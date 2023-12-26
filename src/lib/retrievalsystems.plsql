postgres=# CREATE TABLESPACE pg_compression LOCATION '/var/data/cfs' WITH (compression=true);

DROP TABLE public.retrievalsystems

CREATE TABLE public.retrievalsystems
(
    "retrievalsystemId" smallint NOT NULL,
    retrievalsystem character varying(128) NOT NULL,
    info character varying(265) NOT NULL,
    PRIMARY KEY ("retrievalsystemId")
)

TABLESPACE pg_compression;

ALTER TABLE IF EXISTS public.retrievalsystems
    OWNER to "default";


INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (1, 'mfcc_bow', 'kind: audio_based, feature: mfcc bow, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (2, 'blf_spectralcontrast', 'kind: audio_based, feature: blf spectralcontrast, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (3, 'ivec256', 'kind: audio_based, feature: ivec 256, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (4, 'musicnn', 'kind: audio_based, feature: musicnn, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (5, 'random', 'random');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (6, 'cos(tf-idf)', 'kind: text_based, feature: lyrics tf-idf, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (7, 'cos(bert)', 'kind: text_based, feature: lyrics bert, similarity: cosine_similarity');
INSERT INTO public.retrievalsystems(
	"retrievalsystemId", retrievalsystem, info)
	VALUES (8, 'euclidean(word2vec)', 'kind: text_based, feature: lyrics word2vec, similarity: euclidean_distances');

SELECT * FROM  public.retrievalsystems