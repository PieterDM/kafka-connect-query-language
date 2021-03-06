lexer grammar ConnectorLexer;
@ header {
 }

INSERT
   : 'insert' | 'INSERT'
   ;

UPSERT
   : 'upsert' | 'UPSERT'
   ;

INTO
   : 'into' | 'INTO'
   ;

SELECT
   : 'select' | 'SELECT'
   ;


FROM
   : 'from' | 'FROM'
   ;


IGNORE
   : 'ignore' | 'IGNORE'
   ;

AS
   : 'as' | 'AS'
   ;

AUTOCREATE
   : 'autocreate' | 'AUTOCREATE'
   ;


AUTOEVOLVE
   : 'autoevolve' | 'AUTOEVOLVE'
   ;

CLUSTERBY
    : 'clusterby' | 'CLUSTERBY'
    ;

BUCKETS
    : 'buckets'|'BUCKETS'
    ;

BATCH
   : 'batch' | 'BATCH'
   ;

CAPITALIZE
   : 'capitalize' | 'CAPITALIZE'
   ;

INITIALIZE
   : 'initialize' | 'INITIALIZE'
   ;

PARTITIONBY
   : 'partitionby' | 'PARTITIONBY'
   ;

DISTRIBUTEBY
   : 'distributeby' | 'DISTRIBUTEBY'
   ;

TIMESTAMP
    : 'withtimestamp' | 'WITHTIMESTAMP'
    ;

SYS_TIME
    : 'sys_time()' | 'SYS_TIME()'
    ;

WITHGROUP
    : 'withgroup' | 'WITHGROUP'
    ;

WITHOFFSET
    :  'withoffset' | 'WITHOFFSET'
    ;

WITHTAG
    :   'withtag' | 'WITHTAG'
    ;

WITHKEY
    :   'withkey' | 'WITHKEY'
    ;

KEYDELIM
    :  'keydelimiter' | 'KEYDELIMITER'
    ;

WITHSTRUCTURE
    : 'withstructure' | 'WITHSTRUCTURE'
    ;

WITHTYPE
    : 'withtype' | 'WITHTYPE'
    ;

PK
   : 'pk' | 'PK'
   ;

SAMPLE
    : 'sample' | 'SAMPLE'
    ;

EVERY
    : 'every'|'EVERY'
    ;

WITHFORMAT
    : 'WITHFORMAT'|'withformat'
    ;

WITHUNWRAP
    : 'WITHUNWRAP'| 'withunwrap'
    ;

FORMAT
    : 'avro'|'AVRO'|'text'|'TEXT'|'binary'|'BINARY'|'json'|'JSON'|'object'|'OBJECT'|'map'|'MAP'
    ;

PROJECTTO
    : 'projectTo'|'PROJECTTO'|'projectto'
    ;

STOREAS
    : 'STOREAS'|'storeas'
    ;

LIMIT
    : 'LIMIT' | 'limit'
    ;

INCREMENTALMODE
    : 'INCREMENTALMODE'|'incrementalmode'
    ;

WITHDOCTYPE
    :  'WITHDOCTYPE'|'withdoctype'
    ;

WITHINDEXSUFFIX
    : 'WITHINDEXSUFFIX' | 'withindexsuffix'
    ;

WITHCONVERTER
    : 'WITHCONVERTER' | 'withconverter'
    ;

WITHJMSSELECTOR
    : 'WITHJMSSELECTOR' | 'withjmsselector'
    ;

WITHTARGET
    : 'WITHTARGET' | 'withtarget'
    ;

WITHCOMPRESSION
    : 'WITHCOMPRESSION'|'withcompression'
    ;

WITHPARTITIONER
    : 'WITHPARTITIONER' | 'withpartitioner'
    ;

WITHSUBSCRIPTION
    : 'WITHSUBSCRIPTION' | 'withsubscription'
    ;

TIMESTAMPUNIT
    : 'TIMESTAMPUNIT' | 'timestampunit'
    ;

WITHPIPELINE
    : 'WITHPIPELINE' | 'withpipeline'
    ;

WITHDELAY
    : 'WITHDELAY'|'withdelay'
    ;


WITHREGEX
    : 'WITHREGEX'|'withregex'
    ;

TTL
   : 'TTL'|'ttl'
   ;

EQUAL
   : '='
   ;

INT
   : '0' .. '9'+
   ;

ASTERISK
   : '*'
   ;

COMMA
   : ','
   ;

DOT
   : '.'
   ;

LEFT_PARAN
    : '('
    ;

RIGHT_PARAN
    : ')'
    ;


FIELD
   : ( 'a' .. 'z' | 'A' .. 'Z' | '@' |'_' | '0' .. '9' )+
   ;


TOPICNAME
   : ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' | '-' | '+' | '/' |'{'|'}'|':' )+ | ESCAPED_TOPIC
   ;

KEYDELIMVALUE
   : ( 'a' .. 'z' | 'A' .. 'Z' | '_' | '0' .. '9' | '-' | '+' | '/' |'{'|'}'|':'|'|'|'#'|'@'|'`'|'^'|'['|']'|'*'|'?'|'$' )+ | ESCAPED_TOPIC
   ;



fragment ESCAPED_TOPIC
    : ( '`' (~'`')+ '`')
    ;

NEWLINE
   : '\r'? '\n' -> skip
   ;


WS
   : ( ' ' | '\t' | '\n' | '\r' )+ -> skip
   ;

