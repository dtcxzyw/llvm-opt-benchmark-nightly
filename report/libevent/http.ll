Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/http?download=true
begin_hunk_0
@.str.13 = private unnamed_addr constant [76 x i8] c"<HTML><HEAD>\0A<TITLE>%d %s</TITLE>\0A</HEAD><BODY>\0A<H1>%s</H1>\0A</BODY></HTML>\0A\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%x\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@__func__.evhttp_response_code_ = private unnamed_addr constant [22 x i8] c"evhttp_response_code_\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%%%02X\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.evhttp_decode_uri = private unnamed_addr constant [18 x i8] c"evhttp_decode_uri\00", align 1
@__func__.evhttp_uridecode = private unnamed_addr constant [17 x i8] c"evhttp_uridecode\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"%s: listen\00", align 1
@__func__.evhttp_bind_socket_with_handle = private unnamed_addr constant [31 x i8] c"evhttp_bind_socket_with_handle\00", align 1
@.str.28 = private unnamed_addr constant [45 x i8] c"Bound to port %d - Awaiting connections ... \00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"%s: calloc\00", align 1
@__func__.evhttp_set_cb = private unnamed_addr constant [14 x i8] c"evhttp_set_cb\00", align 1
@__func__.evhttp_request_new = private unnamed_addr constant [19 x i8] c"evhttp_request_new\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"%s: evbuffer_new\00", align 1
@.str.31 = private unnamed_addr constant [27 x i8] c"%s: request %p has no uri\0A\00", align 1
@__func__.evhttp_request_get_uri = private unnamed_addr constant [23 x i8] c"evhttp_request_get_uri\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"%s: request %p has no uri elems\0A\00", align 1
@__func__.evhttp_request_get_evhttp_uri = private unnamed_addr constant [30 x i8] c"evhttp_request_get_evhttp_uri\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"%s: malloc\00", align 1
@__func__.evhttp_request_get_host = private unnamed_addr constant [24 x i8] c"evhttp_request_get_host\00", align 1
@__func__.evhttp_uri_parse_with_flags = private unnamed_addr constant [28 x i8] c"evhttp_uri_parse_with_flags\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"//\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"%s@\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c":%d\00", align 1
@.str.39 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"%s: strdup()\00", align 1
@__func__.evhttp_uri_set_scheme = private unnamed_addr constant [22 x i8] c"evhttp_uri_set_scheme\00", align 1
@__func__.evhttp_uri_set_userinfo = private unnamed_addr constant [24 x i8] c"evhttp_uri_set_userinfo\00", align 1
@__func__.evhttp_uri_set_host = private unnamed_addr constant [20 x i8] c"evhttp_uri_set_host\00", align 1
@__func__.evhttp_uri_set_path = private unnamed_addr constant [20 x i8] c"evhttp_uri_set_path\00", align 1
@__func__.evhttp_uri_set_query = private unnamed_addr constant [21 x i8] c"evhttp_uri_set_query\00", align 1
@__func__.evhttp_uri_set_fragment = private unnamed_addr constant [24 x i8] c"evhttp_uri_set_fragment\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"&#039;\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1
@__func__.evhttp_add_header_internal = private unnamed_addr constant [27 x i8] c"evhttp_add_header_internal\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.49 = private unnamed_addr constant [40 x i8] c"%s: bad method %s on request %p from %s\00", align 1
@__func__.evhttp_parse_request_line = private unnamed_addr constant [26 x i8] c"evhttp_parse_request_line\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"%s: mm_strdup\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"HTTP/%d.%d%c\00", align 1
@.str.54 = private unnamed_addr constant [41 x i8] c"%s: bad version %s on message %p from %s\00", align 1
@__func__.evhttp_parse_http_version = private unnamed_addr constant [26 x i8] c"evhttp_parse_http_version\00", align 1
@__func__.evhttp_uri_parse_authority = private unnamed_addr constant [27 x i8] c"evhttp_uri_parse_authority\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"%s: bad response code \22%s\22\00", align 1
@__func__.evhttp_parse_response_line = private unnamed_addr constant [27 x i8] c"evhttp_parse_response_line\00", align 1
@.str.56 = private unnamed_addr constant [32 x i8] c"%s: illegal connection state %d\00", align 1
@__func__.evhttp_read_cb = private unnamed_addr constant [15 x i8] c"evhttp_read_cb\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"%s: bad header lines on %d\0A\00", align 1
@__func__.evhttp_read_firstline = private unnamed_addr constant [22 x i8] c"evhttp_read_firstline\00", align 1
@__func__.evhttp_read_header = private unnamed_addr constant [19 x i8] c"evhttp_read_header\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"%s: bad combination of headers on %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [34 x i8] c"%s: checking for post data on %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [31 x i8] c"%s: skipping body for code %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [37 x i8] c"%s: start of read body for %s on %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [21 x i8] c"%s: bad header on %d\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Close\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"%s: illegal content length: %s\00", align 1
@__func__.evhttp_get_body_length = private unnamed_addr constant [23 x i8] c"evhttp_get_body_length\00", align 1
@.str.65 = private unnamed_addr constant [41 x i8] c"%s: bytes to read: %lld (in buffer %zu)\0A\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str.68 = private unnamed_addr constant [36 x i8] c"Request body is too long, left %lld\00", align 1
@.str.69 = private unnamed_addr constant [28 x i8] c"HTTP/%d.%d 100 Continue\0D\0A\0D\0A\00", align 1
@.str.70 = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"keep-alive\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Request body is too long\00", align 1
@.str.73 = private unnamed_addr constant [41 x i8] c"%s: connection timeout for \22%s:%d\22 on %d\00", align 1
@__func__.evhttp_error_cb = private unnamed_addr constant [16 x i8] c"evhttp_error_cb\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"%s: bufferevent_getfd returned -1\00", align 1
@__func__.evhttp_connection_cb = private unnamed_addr constant [21 x i8] c"evhttp_connection_cb\00", align 1
@.str.75 = private unnamed_addr constant [33 x i8] c"%s: getsockopt for \22%s:%d\22 on %d\00", align 1
@.str.76 = private unnamed_addr constant [41 x i8] c"%s: connect failed for \22%s:%d\22 on %d: %s\00", align 1
@.str.77 = private unnamed_addr constant [32 x i8] c"%s: connected to \22%s:%d\22 on %d\0A\00", align 1
@__const.evhttp_connection_cb.write_tv = private unnamed_addr constant %struct.timeval { i64 50, i64 0 }, align 8
@.str.78 = private unnamed_addr constant [31 x i8] c"%s: preparing to write buffer\0A\00", align 1
@__func__.evhttp_write_buffer = private unnamed_addr constant [20 x i8] c"evhttp_write_buffer\00", align 1
@.str.79 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.81 = private unnamed_addr constant [19 x i8] c"%s %s HTTP/%d.%d\0D\0A\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@.str.83 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.84 = private unnamed_addr constant [5 x i8] c"POST\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.86 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.87 = private unnamed_addr constant [7 x i8] c"DELETE\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"OPTIONS\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"TRACE\00", align 1
@.str.90 = private unnamed_addr constant [8 x i8] c"CONNECT\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"PATCH\00", align 1
@.str.92 = private unnamed_addr constant [19 x i8] c"HTTP/%d.%d %d %s\0D\0A\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"Date\00", align 1
@__func__.evhttp_associate_new_request_with_connection = private unnamed_addr constant [45 x i8] c"evhttp_associate_new_request_with_connection\00", align 1
@.str.94 = private unnamed_addr constant [46 x i8] c"Rejecting disallowed method %x (allowed: %x)\0A\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.96 = private unnamed_addr constant [144 x i8] c"<html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL %s was not found on this server.</p></body></html>\0A\00", align 1
@.str.97 = private unnamed_addr constant [21 x i8] c"Unknown Status Class\00", align 1
@response_classes = internal unnamed_addr constant [5 x %struct.response_class] [%struct.response_class { ptr @.str.98, i64 2, ptr @informational_phrases }, %struct.response_class { ptr @.str.99, i64 7, ptr @success_phrases }, %struct.response_class { ptr @.str.100, i64 7, ptr @redirection_phrases }, %struct.response_class { ptr @.str.101, i64 18, ptr @client_error_phrases }, %struct.response_class { ptr @.str.102, i64 6, ptr @server_error_phrases }], align 16
@.str.98 = private unnamed_addr constant [14 x i8] c"Informational\00", align 1
@informational_phrases = internal global [2 x ptr] [ptr @.str.103, ptr @.str.104], align 16
@.str.99 = private unnamed_addr constant [8 x i8] c"Success\00", align 1
@success_phrases = internal global [7 x ptr] [ptr @.str.19, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110], align 16
@.str.100 = private unnamed_addr constant [12 x i8] c"Redirection\00", align 1
@redirection_phrases = internal global [7 x ptr] [ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117], align 16
@.str.101 = private unnamed_addr constant [13 x i8] c"Client Error\00", align 1
@client_error_phrases = internal global [18 x ptr] [ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.95, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134], align 16
@.str.102 = private unnamed_addr constant [13 x i8] c"Server Error\00", align 1
@server_error_phrases = internal global [6 x ptr] [ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140], align 16
@.str.103 = private unnamed_addr constant [9 x i8] c"Continue\00", align 1
@.str.104 = private unnamed_addr constant [20 x i8] c"Switching Protocols\00", align 1
@.str.105 = private unnamed_addr constant [8 x i8] c"Created\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"Accepted\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"Non-Authoritative Information\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"No Content\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Reset Content\00", align 1
@.str.110 = private unnamed_addr constant [16 x i8] c"Partial Content\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"Multiple Choices\00", align 1
@.str.112 = private unnamed_addr constant [18 x i8] c"Moved Permanently\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"Found\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"See Other\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"Not Modified\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"Use Proxy\00", align 1
@.str.117 = private unnamed_addr constant [19 x i8] c"Temporary Redirect\00", align 1
@.str.118 = private unnamed_addr constant [12 x i8] c"Bad Request\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"Unauthorized\00", align 1
@.str.120 = private unnamed_addr constant [17 x i8] c"Payment Required\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"Forbidden\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Method Not Allowed\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"Not Acceptable\00", align 1
@.str.124 = private unnamed_addr constant [30 x i8] c"Proxy Authentication Required\00", align 1
@.str.125 = private unnamed_addr constant [17 x i8] c"Request Time-out\00", align 1
@.str.126 = private unnamed_addr constant [9 x i8] c"Conflict\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"Gone\00", align 1
@.str.128 = private unnamed_addr constant [16 x i8] c"Length Required\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"Precondition Failed\00", align 1
@.str.130 = private unnamed_addr constant [25 x i8] c"Request Entity Too Large\00", align 1
@.str.131 = private unnamed_addr constant [22 x i8] c"Request-URI Too Large\00", align 1
@.str.132 = private unnamed_addr constant [23 x i8] c"Unsupported Media Type\00", align 1
@.str.133 = private unnamed_addr constant [32 x i8] c"Requested range not satisfiable\00", align 1
@.str.134 = private unnamed_addr constant [19 x i8] c"Expectation Failed\00", align 1
@.str.135 = private unnamed_addr constant [22 x i8] c"Internal Server Error\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"Not Implemented\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Bad Gateway\00", align 1
@.str.138 = private unnamed_addr constant [20 x i8] c"Service Unavailable\00", align 1
@.str.139 = private unnamed_addr constant [17 x i8] c"Gateway Time-out\00", align 1
@.str.140 = private unnamed_addr constant [27 x i8] c"HTTP Version not supported\00", align 1
@uri_chars = internal unnamed_addr constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01", [129 x i8] zeroinitializer }>, align 16
@__func__.evhttp_parse_query_impl = private unnamed_addr constant [24 x i8] c"evhttp_parse_query_impl\00", align 1
@.str.142 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.143 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.144 = private unnamed_addr constant [14 x i8] c"%s: mm_malloc\00", align 1
@.str.145 = private unnamed_addr constant [23 x i8] c"Query Param: %s -> %s\0A\00", align 1
@.str.146 = private unnamed_addr constant [32 x i8] c"%s: cannot get connection on %d\00", align 1
@__func__.evhttp_get_request = private unnamed_addr constant [19 x i8] c"evhttp_get_request\00", align 1
@.str.147 = private unnamed_addr constant [34 x i8] c"%s: new request from %s:%s on %d\0A\00", align 1
@__func__.evhttp_get_request_connection = private unnamed_addr constant [30 x i8] c"evhttp_get_request_connection\00", align 1
@.str.148 = private unnamed_addr constant [19 x i8] c"getnameinfo failed\00", align 1
@.str.149 = private unnamed_addr constant [23 x i8] c"getnameinfo failed: %s\00", align 1
@__func__.evhttp_new_object = private unnamed_addr constant [18 x i8] c"evhttp_new_object\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"text/html; charset=ISO-8859-1\00", align 1
@.str.151 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.152 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@.str.154 = private unnamed_addr constant [16 x i8] c"getaddrinfo: %s\00", align 1
@__func__.parse_authority = private unnamed_addr constant [16 x i8] c"parse_authority\00", align 1
@switch.table.evhttp_htmlescape = private unnamed_addr constant [29 x i8] c"\06\01\01\01\05\06\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\04\01\04", align 8
@switch.table.evhttp_htmlescape.8 = private unnamed_addr constant [29 x ptr] [ptr @.str.45, ptr poison, ptr poison, ptr poison, ptr @.str.47, ptr @.str.46, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr poison, ptr @.str.43, ptr poison, ptr @.str.44], align 8
@switch.table.evhttp_htmlescape.9 = private unnamed_addr constant [29 x i8] [i8 6, i8 poison, i8 poison, i8 poison, i8 5, i8 6, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 4, i8 poison, i8 4], align 8
@switch.table.evhttp_make_header = private unnamed_addr constant [9 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], align 8

; Function Attrs: nounwind uwtable
define ptr @evhttp_htmlescape(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14 ; 3 uses
  %.not53 = icmp eq i64 %i.b, 0
  br i1 %.not53, label %.thread64, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.02947 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.03346 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.02947
  %i.d = load i8, ptr %i.c, align 1
  %switch.tableidx = add i8 %i.d, -34             ; 2 uses
  %i.e = icmp ult i8 %switch.tableidx, 29
  br i1 %i.e, label %switch.lookup, label %html_replace.exit

switch.lookup:                                    ; preds = %.lr.ph
  %i.f = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.evhttp_htmlescape, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  br label %html_replace.exit

html_replace.exit:                                ; preds = %switch.lookup, %.lr.ph
  %.0.i = phi i64 [ 1, %.lr.ph ], [ %switch.ext, %switch.lookup ] ; 2 uses
  %i.g = xor i64 %.03346, -1
  %.not = icmp ugt i64 %.0.i, %i.g
  br i1 %.not, label %.thread, label %bb.c

.thread:                                          ; preds = %html_replace.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evhttp_htmlescape) #15
  br label %bb.f

bb.c:                                             ; preds = %html_replace.exit
  %i.h = add i64 %.0.i, %.03346                   ; 3 uses
  %i.i = add nuw i64 %.02947, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %bb.c
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = tail call ptr @event_mm_malloc_(i64 noundef %i.k) #15 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %.lr.ph50

.thread64:                                        ; preds = %bb.b
  %i.n = tail call ptr @event_mm_malloc_(i64 noundef 1) #15 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %._crit_edge51

bb.e:                                             ; preds = %.thread64, %bb.d
  %i.p = phi i64 [ 1, %.thread64 ], [ %i.k, %bb.d ]
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.evhttp_htmlescape, i64 noundef %i.p) #15
  br label %bb.f

.lr.ph50:                                         ; preds = %bb.d, %html_replace.exit43
  %.13049 = phi i64 [ %i.w, %html_replace.exit43 ], [ 0, %bb.d ] ; 2 uses
  %.03248 = phi ptr [ %i.v, %html_replace.exit43 ], [ %i.l, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.13049 ; 3 uses
  %i.r = load i8, ptr %i.q, align 1
  %switch.tableidx68 = add i8 %i.r, -34           ; 4 uses
  %i.s = icmp ult i8 %switch.tableidx68, 29
  br i1 %i.s, label %switch.hole_check, label %html_replace.exit43

switch.hole_check:                                ; preds = %.lr.ph50
  %switch.maskindex = zext nneg i8 %switch.tableidx68 to i32
  %switch.shifted = lshr i32 335544369, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup70, label %html_replace.exit43

switch.lookup70:                                  ; preds = %switch.hole_check
  %i.t = zext nneg i8 %switch.tableidx68 to i64
  %switch.gep71 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.evhttp_htmlescape.8, i64 %i.t
  %switch.load72 = load ptr, ptr %switch.gep71, align 8
  %i.u = zext nneg i8 %switch.tableidx68 to i64
  %switch.gep73 = getelementptr inbounds nuw i8, ptr @switch.table.evhttp_htmlescape.9, i64 %i.u
  %switch.load74 = load i8, ptr %switch.gep73, align 1
  %switch.ext75 = zext i8 %switch.load74 to i64
  br label %html_replace.exit43

html_replace.exit43:                              ; preds = %switch.lookup70, %switch.hole_check, %.lr.ph50
  %.0 = phi ptr [ %i.q, %.lr.ph50 ], [ %switch.load72, %switch.lookup70 ], [ %i.q, %switch.hole_check ]
  %.0.i42 = phi i64 [ 1, %.lr.ph50 ], [ %switch.ext75, %switch.lookup70 ], [ 1, %switch.hole_check ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03248, ptr noundef nonnull align 1 dereferenceable(1) %.0, i64 %.0.i42, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.03248, i64 %.0.i42 ; 2 uses
  %i.w = add nuw i64 %.13049, 1                   ; 2 uses
  %exitcond56.not = icmp eq i64 %i.w, %i.b
  br i1 %exitcond56.not, label %._crit_edge51, label %.lr.ph50, !llvm.loop !5

._crit_edge51:                                    ; preds = %html_replace.exit43, %.thread64
  %i.x = phi ptr [ %i.n, %.thread64 ], [ %i.l, %html_replace.exit43 ]
  %.032.lcssa = phi ptr [ %i.n, %.thread64 ], [ %i.v, %html_replace.exit43 ]
  store i8 0, ptr %.032.lcssa, align 1
  br label %bb.f

bb.f:                                             ; preds = %.thread, %._crit_edge, %bb.a, %._crit_edge51, %bb.e
  %.2 = phi ptr [ %i.x, %._crit_edge51 ], [ null, %.thread ], [ null, %bb.a ], [ null, %bb.e ], [ null, %._crit_edge ]
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @event_mm_malloc_(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evhttp_connection_set_max_headers_size(ptr nofree noundef writeonly captures(none) initializes((192, 200)) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %spec.select = tail call i64 @llvm.smax.i64(i64 %1, i64 -1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 %spec.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evhttp_connection_set_max_body_size(ptr nofree noundef writeonly captures(none) initializes((200, 208)) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %spec.select = tail call i64 @llvm.smax.i64(i64 %1, i64 -1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 %spec.select, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evhttp_connection_fail_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #16    ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 20 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @bufferevent_disable(ptr noundef %i.f, i16 noundef signext 6) #15 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = and i32 %i.i, 1
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %cond.i = icmp eq i32 %1, 5
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 116 ; 2 uses
  br i1 %cond.i, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  store i32 413, ptr %i.k, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  store i32 400, ptr %i.k, align 4
  %switch.i = icmp ult i32 %1, 2
  br i1 %switch.i, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.m = load i8, ptr %i.l, align 8
  %i.n = and i8 %i.m, 2
  %.not.i = icmp eq i8 %i.n, 0
  br i1 %.not.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not25.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  br i1 %.not25.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 280
  store ptr %i.q, ptr %i.u, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.d, align 8
  store ptr %i.v, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.w, align 8
  br label %bb.m

bb.i:                                             ; preds = %bb.c, %.thread.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not26.i = icmp eq ptr %i.y, null
  br i1 %.not26.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @event_mm_free_(ptr noundef nonnull %i.y) #15
  store ptr null, ptr %i.x, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not27.i = icmp eq ptr %i.aa, null
  br i1 %.not27.i, label %evhttp_connection_incoming_fail.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @evhttp_uri_free(ptr noundef nonnull %i.aa)
  store ptr null, ptr %i.z, align 8
  br label %evhttp_connection_incoming_fail.exit

evhttp_connection_incoming_fail.exit:             ; preds = %bb.k, %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ac(ptr noundef nonnull %i.d, ptr noundef %i.ae) #15, !inline_history !6
  br label %bb.ab

bb.m:                                             ; preds = %bb.h, %bb.d
  tail call void @evhttp_connection_free(ptr noundef nonnull %0)
  br label %bb.ab

bb.n:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not28 = icmp eq i32 %1, 4
  br i1 %.not28, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.ak = load ptr, ptr %i.aj, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.026 = phi ptr [ %i.ai, %bb.o ], [ null, %bb.n ]
  %.0 = phi ptr [ %i.ak, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.al = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i34 = icmp eq ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 3 uses
  br i1 %.not.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.an, ptr %i.ao, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.an, ptr %i.ap, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = load ptr, ptr %i.d, align 8
  store ptr %i.aq, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = and i32 %i.as, 4
  %.not.i.i = icmp eq i32 %i.at, 0
  br i1 %.not.i.i, label %bb.t, label %evhttp_request_free_.exit

bb.t:                                             ; preds = %bb.s
  tail call void @evhttp_request_free(ptr noundef nonnull %i.d)
  br label %evhttp_request_free_.exit

evhttp_request_free_.exit:                        ; preds = %bb.s, %bb.t
  tail call void @evhttp_connection_reset_(ptr noundef nonnull %0)
  %i.au = load ptr, ptr %i.c, align 8
  %.not29 = icmp eq ptr %i.au, null
  br i1 %.not29, label %bb.v, label %bb.u

bb.u:                                             ; preds = %evhttp_request_free_.exit
  %i.av = tail call i32 @evhttp_connection_connect_(ptr noundef nonnull %0) ; 0 uses
  br label %bb.x

bb.v:                                             ; preds = %evhttp_request_free_.exit
  %i.aw = load i32, ptr %i.h, align 8
  %i.ax = and i32 %i.aw, 1048578
  %or.cond.not = icmp eq i32 %i.ax, 1048578
  br i1 %or.cond.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @evhttp_connection_free(ptr noundef nonnull %0)
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v
  store i32 %i.b, ptr %i.a, align 4
  %.not32 = icmp eq ptr %i.ag, null
  br i1 %.not32, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void %i.ag(i32 noundef %1, ptr noundef %i.ai) #15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not33 = icmp eq ptr %.0, null
  br i1 %.not33, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %.0(ptr noundef null, ptr noundef %.026) #15
  br label %bb.ab

bb.ab:                                            ; preds = %evhttp_connection_incoming_fail.exit, %bb.z, %bb.aa, %bb.m
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

declare i32 @bufferevent_disable(ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @evhttp_connection_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, -1
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 256
  %.val = load i32, ptr %i.c, align 8
  %switch.i = icmp ult i32 %.val, 2
  br i1 %switch.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not46 = icmp eq ptr %i.e, null
  br i1 %.not46, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.e(ptr noundef nonnull %0, ptr noundef %i.g) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not4762 = icmp eq ptr %i.i, null
  br i1 %.not4762, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %evhttp_request_free_.exit
  %i.k = phi ptr [ %i.i, %.lr.ph ], [ %i.t, %evhttp_request_free_.exit ] ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.n, ptr %i.o, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr %i.n, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.p = load ptr, ptr %i.k, align 8
  store ptr %i.p, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = and i32 %i.r, 4
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %bb.j, label %evhttp_request_free_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @evhttp_request_free(ptr noundef nonnull %i.k)
  br label %evhttp_request_free_.exit

evhttp_request_free_.exit:                        ; preds = %bb.i, %bb.j
  %i.t = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %._crit_edge, label %bb.f, !llvm.loop !7

._crit_edge:                                      ; preds = %evhttp_request_free_.exit, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not48 = icmp eq ptr %i.v, null
  br i1 %.not48, label %bb.o, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = load ptr, ptr %0, align 8                ; 2 uses
  %.not49 = icmp eq ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  br i1 %.not49, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  store ptr %i.y, ptr %i.aa, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ab = load ptr, ptr %0, align 8
  store ptr %i.ab, ptr %i.y, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ad = tail call i32 @event_initialized(ptr noundef nonnull %i.ac) #15
  %.not50 = icmp eq i32 %i.ad, 0
  br i1 %.not50, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @event_del(ptr noundef nonnull %i.ac) #15 ; 0 uses
  tail call void @event_debug_unassign(ptr noundef nonnull %i.ac) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @event_deferred_cb_cancel_(ptr noundef %i.ag, ptr noundef nonnull %i.ah) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  %.not51 = icmp eq ptr %i.aj, null
  br i1 %.not51, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = tail call i32 @bufferevent_get_options_(ptr noundef nonnull %i.aj) #15
  %i.al = load i32, ptr %i.a, align 8
  %i.am = icmp eq i32 %i.al, -1
  br i1 %i.am, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = tail call i32 @bufferevent_getfd(ptr noundef %i.an) #15
  store i32 %i.ao, ptr %i.a, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.ap = load ptr, ptr %i.ai, align 8
  tail call void @bufferevent_free(ptr noundef %i.ap) #15
  %i.aq = load i32, ptr %i.a, align 8             ; 2 uses
  %.not53 = icmp eq i32 %i.aq, -1
  br i1 %.not53, label %bb.w, label %bb.u

.thread:                                          ; preds = %bb.q
  %i.ar = load i32, ptr %i.a, align 8             ; 2 uses
  %.not5358 = icmp eq i32 %i.ar, -1
  br i1 %.not5358, label %bb.w, label %.thread60

.thread60:                                        ; preds = %.thread
  %i.as = tail call i32 @shutdown(i32 noundef %i.ar, i32 noundef 1) #15 ; 0 uses
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.at = trunc i32 %i.ak to i1
  %i.au = tail call i32 @shutdown(i32 noundef %i.aq, i32 noundef 1) #15 ; 0 uses
  br i1 %i.at, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = load i32, ptr %i.a, align 8
  %i.aw = tail call i32 @evutil_closesocket(i32 noundef %i.av) #15 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread60, %.thread, %bb.u, %bb.v, %bb.t
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.ay, null
  br i1 %.not55, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @event_mm_free_(ptr noundef nonnull %i.ay) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not56 = icmp eq ptr %i.ba, null
  br i1 %.not56, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @event_mm_free_(ptr noundef nonnull %i.ba) #15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  tail call void @event_mm_free_(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @evhttp_connection_reset_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @bufferevent_setcb(ptr noundef %i.b, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null) #15
end_hunk_0
begin_hunk_1_@evhttp_remove_header:bb.a
  %.not18 = icmp eq ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %. = select i1 %.not18, ptr %0, ptr %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %., i64 8
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %.0, align 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = load ptr, ptr %i.e, align 8
  tail call void @event_mm_free_(ptr noundef %i.k) #15
  %i.l = getelementptr inbounds nuw i8, ptr %.0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void @event_mm_free_(ptr noundef %i.m) #15
  tail call void @event_mm_free_(ptr noundef nonnull %.0) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.016 = phi i32 [ 0, %bb.d ], [ -1, %bb.b ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_add_header(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @event_debug_logging_mask_, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.evhttp_add_header, ptr noundef %1, ptr noundef %2) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 13) #14
  %.not8 = icmp eq ptr %i.b, null
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 10) #14
  %.not9 = icmp eq ptr %i.c, null
  br i1 %.not9, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.d = load i32, ptr @event_debug_logging_mask_, align 4
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.evhttp_add_header) #15
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  %i.e = tail call ptr @strpbrk(ptr noundef readonly %2, ptr noundef nonnull @.str.17) #14
  %.not.i.not = icmp eq ptr %i.e, null
  br i1 %.not.i.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = load i32, ptr @event_debug_logging_mask_, align 4
  %.not11 = icmp eq i32 %i.f, 0
  br i1 %.not11, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.evhttp_add_header) #15
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.g = tail call fastcc i32 @evhttp_add_header_internal(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.j
  %.0 = phi i32 [ -1, %bb.f ], [ %i.g, %bb.j ], [ -1, %bb.e ], [ -1, %bb.h ], [ -1, %bb.i ]
  ret i32 %.0
}

declare void @event_debugx_(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @evhttp_add_header_internal(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 32) #15 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.evhttp_add_header_internal) #15
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @event_mm_strdup_(ptr noundef %1) #15 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #15
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_add_header_internal) #15
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = tail call ptr @event_mm_strdup_(ptr noundef %2) #15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.g, align 8
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8
  tail call void @event_mm_free_(ptr noundef %i.i) #15
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #15
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_add_header_internal) #15
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.k, ptr %i.l, align 8
  store ptr %i.a, ptr %i.k, align 8
  store ptr %i.a, ptr %i.j, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -3, 2) i32 @evhttp_parse_firstline_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  %i.j = call ptr @evbuffer_readln(ptr noundef %1, ptr noundef nonnull %i.i, i32 noundef 1) #15 ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.m, null                ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = call i64 @evbuffer_get_length(ptr noundef %1) #15
  %i.o = load ptr, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.q = load i64, ptr %i.p, align 8
  %i.r = icmp ugt i64 %i.n, %i.q
  br i1 %i.r, label %bb.cc, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.cc

bb.e:                                             ; preds = %bb.a
  %.pr = load i64, ptr %i.i, align 8              ; 5 uses
  br i1 %.not19, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp ugt i64 %.pr, %i.t
  br i1 %i.u, label %bb.g, label %thread-pre-split

bb.g:                                             ; preds = %bb.f
  call void @event_mm_free_(ptr noundef nonnull %i.j) #15
  br label %bb.cc

thread-pre-split:                                 ; preds = %bb.e, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %.pr, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load i32, ptr %i.w, align 8
  switch i32 %i.x, label %bb.cb [
    i32 0, label %bb.h
    i32 1, label %bb.bp
  ]

bb.h:                                             ; preds = %thread-pre-split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.j, ptr %i.h, align 8
  %.not125.i = icmp eq i64 %.pr, 0
  br i1 %.not125.i, label %bb.bo, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 %.pr
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %.084122.i = phi i64 [ %i.ac, %bb.i ], [ %.pr, %.lr.ph.preheader.i ] ; 2 uses
  %.085121.i = phi ptr [ %i.z, %bb.i ], [ %i.y, %.lr.ph.preheader.i ]
  %i.z = getelementptr inbounds i8, ptr %.085121.i, i64 -1 ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = icmp eq i8 %i.aa, 32
  br i1 %i.ab, label %bb.i, label %.critedge.i

bb.i:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.z, align 1
  %i.ac = add i64 %.084122.i, -1                  ; 2 uses
  %i.ad = icmp ugt ptr %i.z, %i.j
  br i1 %i.ad, label %.lr.ph.i, label %.critedge.i, !llvm.loop !11

.critedge.i:                                      ; preds = %bb.i, %.lr.ph.i
  %.084.lcssa.ph.i = phi i64 [ %.084122.i, %.lr.ph.i ], [ %i.ac, %bb.i ]
  %i.ae = icmp ult i64 %.084.lcssa.ph.i, 14
  br i1 %i.ae, label %bb.bo, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  %i.af = call ptr @strsep(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.48) #15 ; 34 uses
  %i.ag = load ptr, ptr %i.h, align 8             ; 5 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.bo, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.ag, i32 noundef 32) #14 ; 4 uses
  %.not92.i = icmp eq ptr %i.ah, null
  %i.ai = icmp eq ptr %i.ag, %i.ah
  %or.cond99.i = or i1 %.not92.i, %i.ai
  br i1 %or.cond99.i, label %bb.bo, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.ah, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = ptrtoint ptr %i.af to i64
  %i.am = xor i64 %i.al, -1
  %i.an = add i64 %i.ak, %i.am
  switch i64 %i.an, label %bb.as [
    i64 3, label %bb.m
    i64 4, label %bb.p
    i64 5, label %bb.u
    i64 6, label %bb.ab
    i64 7, label %bb.ag
  ]

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %.not94.i = icmp eq i8 %i.ap, 84
  br i1 %.not94.i, label %bb.n, label %bb.as

bb.n:                                             ; preds = %bb.m
  %i.aq = load i8, ptr %i.af, align 1
  switch i8 %i.aq, label %bb.as [
    i8 71, label %.sink.split.i
    i8 80, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %.sink.split.i

bb.p:                                             ; preds = %bb.l
  %i.ar = load i8, ptr %i.af, align 1
  switch i8 %i.ar, label %bb.as [
    i8 80, label %bb.q
    i8 72, label %bb.s
  ]

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.at = load i8, ptr %i.as, align 1
  %i.au = icmp eq i8 %i.at, 84
  br i1 %i.au, label %bb.r, label %bb.as

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = icmp eq i8 %i.aw, 83
  br i1 %i.ax, label %.sink.split.i, label %bb.as

bb.s:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = icmp eq i8 %i.az, 68
  br i1 %i.ba, label %bb.t, label %bb.as

bb.t:                                             ; preds = %bb.s
  %i.bb = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = icmp eq i8 %i.bc, 65
  br i1 %i.bd, label %.sink.split.i, label %bb.as

bb.u:                                             ; preds = %bb.l
  %i.be = load i8, ptr %i.af, align 1
  switch i8 %i.be, label %bb.as [
    i8 80, label %bb.v
    i8 84, label %bb.y
  ]

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = icmp eq i8 %i.bg, 72
  br i1 %i.bh, label %bb.w, label %bb.as

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = icmp eq i8 %i.bj, 67
  br i1 %i.bk, label %bb.x, label %bb.as

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = icmp eq i8 %i.bm, 84
  br i1 %i.bn, label %.sink.split.i, label %bb.as

bb.y:                                             ; preds = %bb.u
  %i.bo = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = icmp eq i8 %i.bp, 69
  br i1 %i.bq, label %bb.z, label %bb.as

bb.z:                                             ; preds = %bb.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = icmp eq i8 %i.bs, 67
  br i1 %i.bt, label %bb.aa, label %bb.as

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = icmp eq i8 %i.bv, 65
  br i1 %i.bw, label %.sink.split.i, label %bb.as

bb.ab:                                            ; preds = %bb.l
  %i.bx = load i8, ptr %i.af, align 1
  %.not93.i = icmp eq i8 %i.bx, 68
  br i1 %.not93.i, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %bb.ab
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = icmp eq i8 %i.bz, 69
  br i1 %i.ca, label %bb.ad, label %bb.as

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cc = load i8, ptr %i.cb, align 1
  %i.cd = icmp eq i8 %i.cc, 84
  br i1 %i.cd, label %bb.ae, label %bb.as

bb.ae:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = icmp eq i8 %i.cf, 69
  br i1 %i.cg, label %bb.af, label %bb.as

bb.af:                                            ; preds = %bb.ae
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ci = load i8, ptr %i.ch, align 1
  %i.cj = icmp eq i8 %i.ci, 76
  br i1 %i.cj, label %.sink.split.i, label %bb.as

bb.ag:                                            ; preds = %bb.l
  %i.ck = load i8, ptr %i.af, align 1
  switch i8 %i.ck, label %bb.as [
    i8 79, label %bb.ah
    i8 67, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = icmp eq i8 %i.cm, 83
  br i1 %i.cn, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.co = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = icmp eq i8 %i.cp, 78
  br i1 %i.cq, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.cr = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = icmp eq i8 %i.cs, 79
  br i1 %i.ct, label %bb.ak, label %bb.as

bb.ak:                                            ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %i.af, i64 3
  %i.cv = load i8, ptr %i.cu, align 1
  %i.cw = icmp eq i8 %i.cv, 73
  br i1 %i.cw, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.cx = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = icmp eq i8 %i.cy, 84
  br i1 %i.cz, label %.sink.split.i, label %bb.as

bb.am:                                            ; preds = %bb.ag
  %i.da = getelementptr inbounds nuw i8, ptr %i.af, i64 6
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = icmp eq i8 %i.db, 84
  br i1 %i.dc, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  %i.dd = getelementptr inbounds nuw i8, ptr %i.af, i64 5
  %i.de = load i8, ptr %i.dd, align 1
  %i.df = icmp eq i8 %i.de, 67
  br i1 %i.df, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %bb.an
end_hunk_1
begin_hunk_2_@evhttp_uridecode:bb.a

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ne i32 %1, 0
  %i.h = zext i1 %i.g to i32
  %i.i = tail call i32 @evhttp_decode_uri_internal(ptr noundef nonnull %0, i64 noundef %i.e, ptr noundef nonnull %i.c, i32 noundef %i.h)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = sext i32 %i.i to i64
  store i64 %i.j, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_parse_query(ptr noundef %0, ptr noundef initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evhttp_parse_query_impl(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @evhttp_parse_query_impl(ptr noundef %0, ptr noundef initializes((0, 8)) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %1, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @evhttp_uri_parse_with_flags(ptr noundef %0, i32 noundef 0) ; 3 uses
  %.not42 = icmp eq ptr %i.e, null
  br i1 %.not42, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.034 = phi ptr [ %i.g, %bb.c ], [ %0, %bb.a ]  ; 3 uses
  %.031 = phi ptr [ %i.e, %bb.c ], [ null, %bb.a ] ; 6 uses
  %.not43 = icmp eq ptr %.034, null
  br i1 %.not43, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %char0 = load i8, ptr %.034, align 1
  %.not44 = icmp eq i8 %char0, 0
  br i1 %.not44, label %.critedge.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @event_mm_strdup_(ptr noundef nonnull %.034) #15 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evhttp_parse_query_impl) #15
  br label %bb.v

bb.h:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %bb.i

thread-pre-split:                                 ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  %.pr = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not45 = icmp eq ptr %.pr, null
  br i1 %.not45, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h, %thread-pre-split
  %i.l = phi ptr [ %i.h, %bb.h ], [ %.pr, %thread-pre-split ]
  %i.m = load i8, ptr %i.l, align 1
  %.not46 = icmp eq i8 %i.m, 0
  br i1 %.not46, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.n = call ptr @strsep(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.142) #15
  store ptr %i.n, ptr %i.c, align 8
  %i.o = call ptr @strsep(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.143) #15 ; 3 uses
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i8, ptr %i.o, align 1
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #14
  %i.u = add i64 %i.t, 1
  %i.v = call ptr @event_mm_malloc_(i64 noundef %i.u) #15 ; 6 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.144, ptr noundef nonnull @__func__.evhttp_parse_query_impl) #15
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.x = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.y = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.x) #14 ; 3 uses
  %.not43.i = icmp eq i64 %i.y, 0
  br i1 %.not43.i, label %evhttp_decode_uri_internal.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.n, %bb.s
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.s ], [ 0, %bb.n ] ; 2 uses
  %i.z = phi i64 [ %i.au, %bb.s ], [ 0, %bb.n ]
  %.042.i = phi i32 [ %i.at, %bb.s ], [ 0, %bb.n ] ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1             ; 4 uses
  switch i8 %i.ab, label %bb.o [
    i8 63, label %bb.s
    i8 43, label %.fold.split
  ]

bb.o:                                             ; preds = %.lr.ph.split.i
  %i.ac = add i32 %.042.i, 2                      ; 2 uses
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = icmp ugt i64 %i.y, %i.ad
  %i.af = icmp eq i8 %i.ab, 37
  %or.cond4.i = and i1 %i.af, %i.ae
  br i1 %or.cond4.i, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ag = add i32 %.042.i, 1
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ah ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.aj) #15
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ad ; 2 uses
  %i.am = load i8, ptr %i.al, align 1
  %i.an = call i32 @EVUTIL_ISXDIGIT_(i8 noundef signext %i.am) #15
  %.not39.i = icmp eq i32 %i.an, 0
  br i1 %.not39.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ao = load i8, ptr %i.ai, align 1
  store i8 %i.ao, ptr %i.a, align 1
  %i.ap = load i8, ptr %i.al, align 1
  store i8 %i.ap, ptr %i.j, align 1
  store i8 0, ptr %i.k, align 1
  %i.aq = call i64 @__isoc23_strtol(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 16) #15
  %i.ar = trunc i64 %i.aq to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.s

.fold.split:                                      ; preds = %.lr.ph.split.i
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.i, %.fold.split, %bb.r, %bb.q, %bb.p, %bb.o
  %.034.i = phi i8 [ %i.ab, %bb.o ], [ %i.ab, %.lr.ph.split.i ], [ 37, %bb.p ], [ %i.ar, %bb.r ], [ 37, %bb.q ], [ 32, %.fold.split ]
  %.1.i = phi i32 [ %.042.i, %bb.o ], [ %.042.i, %.lr.ph.split.i ], [ %.042.i, %bb.p ], [ %i.ac, %bb.r ], [ %.042.i, %bb.q ], [ %.042.i, %.fold.split ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 %indvars.iv.i
  store i8 %.034.i, ptr %i.as, align 1
  %i.at = add i32 %.1.i, 1                        ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = icmp ugt i64 %i.y, %i.au
  br i1 %i.av, label %.lr.ph.split.i, label %evhttp_decode_uri_internal.exit, !llvm.loop !29

evhttp_decode_uri_internal.exit:                  ; preds = %bb.s, %bb.n
  %.033.lcssa.i = phi i64 [ 0, %bb.n ], [ %indvars.iv.next.i, %bb.s ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %.033.lcssa.i
  store i8 0, ptr %i.aw, align 1
  %i.ax = load i32, ptr @event_debug_logging_mask_, align 4
  %.not47 = icmp eq i32 %i.ax, 0
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %evhttp_decode_uri_internal.exit
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.145, ptr noundef nonnull %i.o, ptr noundef nonnull %i.v) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %evhttp_decode_uri_internal.exit
  %i.ay = call fastcc i32 @evhttp_add_header_internal(ptr noundef nonnull %1, ptr noundef nonnull %i.o, ptr noundef nonnull %i.v)
  call void @event_mm_free_(ptr noundef nonnull %i.v) #15
  %.not48 = icmp eq i32 %i.ay, 0
  br i1 %.not48, label %thread-pre-split, label %.thread

.thread:                                          ; preds = %bb.j, %bb.u, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %bb.v

bb.v:                                             ; preds = %.thread, %bb.b, %bb.g
  %.132 = phi ptr [ %.031, %bb.g ], [ %.031, %.thread ], [ null, %bb.b ] ; 2 uses
  %.030.a = phi ptr [ null, %bb.g ], [ %i.h, %.thread ], [ null, %bb.b ] ; 2 uses
  %.015.i = load ptr, ptr %1, align 8             ; 2 uses
  %.not16.i = icmp eq ptr %.015.i, null
  br i1 %.not16.i, label %.critedge, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %bb.v, %bb.y
  %.017.i = phi ptr [ %.0.i, %bb.y ], [ %.015.i, %bb.v ] ; 6 uses
  %i.az = load ptr, ptr %.017.i, align 8          ; 2 uses
  %.not14.i = icmp eq ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 3 uses
  br i1 %.not14.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i51
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.bb, ptr %i.bc, align 8
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph.i51
  store ptr %i.bb, ptr %i.d, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bd = load ptr, ptr %.017.i, align 8
  store ptr %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.bf = load ptr, ptr %i.be, align 8
  call void @event_mm_free_(ptr noundef %i.bf) #15
  %i.bg = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  call void @event_mm_free_(ptr noundef %i.bh) #15
  call void @event_mm_free_(ptr noundef nonnull %.017.i) #15
  %.0.i = load ptr, ptr %1, align 8               ; 2 uses
  %.not.i52 = icmp eq ptr %.0.i, null
  br i1 %.not.i52, label %.critedge, label %.lr.ph.i51, !llvm.loop !9

.critedge:                                        ; preds = %bb.i, %thread-pre-split, %bb.y, %bb.v
  %.033 = phi i32 [ -1, %bb.y ], [ -1, %bb.v ], [ 0, %thread-pre-split ], [ 0, %bb.i ] ; 2 uses
  %.2 = phi ptr [ %.132, %bb.y ], [ %.132, %bb.v ], [ %.031, %thread-pre-split ], [ %.031, %bb.i ] ; 2 uses
  %.1 = phi ptr [ %.030.a, %bb.y ], [ %.030.a, %bb.v ], [ %i.h, %thread-pre-split ], [ %i.h, %bb.i ] ; 2 uses
  %.not49 = icmp eq ptr %.1, null
  br i1 %.not49, label %.critedge.thread, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @event_mm_free_(ptr noundef nonnull %.1) #15
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.e, %bb.d, %bb.z, %.critedge
  %.259 = phi ptr [ %.2, %.critedge ], [ %.2, %bb.z ], [ %.031, %bb.d ], [ %.031, %bb.e ] ; 2 uses
  %.03358 = phi i32 [ %.033, %.critedge ], [ %.033, %bb.z ], [ 0, %bb.d ], [ 0, %bb.e ]
  %.not50 = icmp eq ptr %.259, null
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge.thread
  call void @evhttp_uri_free(ptr noundef nonnull %.259)
  br label %bb.ab

bb.ab:                                            ; preds = %.critedge.thread, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret i32 %.03358
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_parse_query_str(ptr noundef %0, ptr noundef initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evhttp_parse_query_impl(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_bind_socket(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @evhttp_bind_socket_with_handle(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2)
  %i.b = icmp eq ptr %i.a, null
  %. = sext i1 %i.b to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define ptr @evhttp_bind_socket_with_handle(ptr noundef %0, ptr noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @bind_socket(ptr noundef %1, i16 noundef zeroext %2, i32 noundef 1) ; 5 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %evhttp_accept_socket_with_handle.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @listen(i32 noundef %i.a, i32 noundef 128) #15
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #16    ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  tail call void (i32, ptr, ...) @event_sock_warn(i32 noundef %i.a, ptr noundef nonnull @.str.27, ptr noundef nonnull @__func__.evhttp_bind_socket_with_handle) #15
  %i.g = tail call i32 @evutil_closesocket(i32 noundef %i.a) #15 ; 0 uses
  store i32 %i.f, ptr %i.e, align 4
  br label %evhttp_accept_socket_with_handle.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr @evconnlistener_new(ptr noundef %i.i, ptr noundef null, ptr noundef null, i32 noundef 14, i32 noundef 0, i32 noundef %i.a) #15 ; 4 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %evhttp_accept_socket_with_handle.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @event_mm_malloc_(i64 noundef 24) #15 ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @evconnlistener_free(ptr noundef nonnull %i.j) #15
  br label %evhttp_accept_socket_with_handle.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.m, align 8
  store ptr null, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.p, align 8
  store ptr %i.k, ptr %i.o, align 8
  store ptr %i.k, ptr %i.n, align 8
  tail call void @evconnlistener_set_cb(ptr noundef nonnull %i.j, ptr noundef nonnull @accept_socket_cb, ptr noundef nonnull %0) #15
  %i.q = load i32, ptr @event_debug_logging_mask_, align 4
  %.not13 = icmp eq i32 %i.q, 0
  br i1 %.not13, label %evhttp_accept_socket_with_handle.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = zext i16 %2 to i32
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.28, i32 noundef %i.r) #15
  br label %evhttp_accept_socket_with_handle.exit.thread

evhttp_accept_socket_with_handle.exit.thread:     ; preds = %bb.f, %bb.d, %bb.g, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ %i.k, %bb.g ], [ null, %bb.c ], [ null, %bb.a ], [ %i.k, %bb.h ], [ null, %bb.d ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define ptr @evhttp_accept_socket_with_handle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @evconnlistener_new(ptr noundef %i.b, ptr noundef null, ptr noundef null, i32 noundef 14, i32 noundef 0, i32 noundef %1) #15 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @event_mm_malloc_(i64 noundef 24) #15 ; 7 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %evhttp_bind_listener.exit

evhttp_bind_listener.exit:                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.f, align 8
  store ptr null, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr %i.d, ptr %i.h, align 8
  store ptr %i.d, ptr %i.g, align 8
  tail call void @evconnlistener_set_cb(ptr noundef nonnull %i.c, ptr noundef nonnull @accept_socket_cb, ptr noundef nonnull %0) #15
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @evconnlistener_free(ptr noundef nonnull %i.c) #15
  br label %bb.d

bb.d:                                             ; preds = %evhttp_bind_listener.exit, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.d, %evhttp_bind_listener.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_accept_socket(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @evconnlistener_new(ptr noundef %i.b, ptr noundef null, ptr noundef null, i32 noundef 14, i32 noundef 0, i32 noundef %1) #15 ; 4 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %evhttp_accept_socket_with_handle.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @event_mm_malloc_(i64 noundef 24) #15 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %evhttp_bind_listener.exit.i

evhttp_bind_listener.exit.i:                      ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.c, ptr %i.f, align 8
  store ptr null, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.i, align 8
  store ptr %i.d, ptr %i.h, align 8
  store ptr %i.d, ptr %i.g, align 8
  tail call void @evconnlistener_set_cb(ptr noundef nonnull %i.c, ptr noundef nonnull @accept_socket_cb, ptr noundef nonnull %0) #15
  br label %evhttp_accept_socket_with_handle.exit

bb.c:                                             ; preds = %bb.b
  tail call void @evconnlistener_free(ptr noundef nonnull %i.c) #15
  br label %evhttp_accept_socket_with_handle.exit

evhttp_accept_socket_with_handle.exit:            ; preds = %bb.a, %evhttp_bind_listener.exit.i, %bb.c
  %.0.i = phi i32 [ -1, %bb.a ], [ -1, %bb.c ], [ 0, %evhttp_bind_listener.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define void @evhttp_foreach_bound_socket(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.06 = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %.06, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %.0, %.lr.ph ], [ %.06, %bb.a ] ; 2 uses
  tail call void %1(ptr noundef nonnull %.08, ptr noundef %2) #15
  %.0 = load ptr, ptr %.08, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare ptr @evconnlistener_new(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @evhttp_bind_listener(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @event_mm_malloc_(i64 noundef 24) #15 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.c, align 8
  store ptr null, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %i.f, align 8
end_hunk_2
begin_hunk_3_@evhttp_uri_set_query:bb.a
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call fastcc ptr @end_of_path(ptr noundef %1, i32 noundef 1, i32 noundef %i.a)
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.f) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @event_mm_strdup_(ptr noundef nonnull %1) #15 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.evhttp_uri_set_query) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store ptr null, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.b, %bb.g
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evhttp_uri_set_fragment(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8
  %i.b = tail call fastcc ptr @end_of_path(ptr noundef %1, i32 noundef 2, i32 noundef %i.a)
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %.not13 = icmp eq ptr %i.b, %i.d
  br i1 %.not13, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.f, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.f) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @event_mm_strdup_(ptr noundef nonnull %1) #15 ; 2 uses
  store ptr %i.g, ptr %i.e, align 8
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.evhttp_uri_set_fragment) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  store ptr null, ptr %i.e, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.b, %bb.g
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.g ], [ 0, %bb.h ], [ 0, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strpbrk(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @strsep(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @evhttp_find_vhost(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @evhttp_find_alias(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.a, %bb.d
  %.018 = phi ptr [ %.119, %bb.d ], [ %0, %bb.a ] ; 3 uses
  %.0 = phi i32 [ %.1, %bb.d ], [ 0, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %.018, i64 64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader
  %.017.in = phi ptr [ %i.b, %.preheader ], [ %.017.a, %bb.c ]
  %.017.a = load ptr, ptr %.017.in, align 8       ; 4 uses
  %.not21 = icmp eq ptr %.017.a, null
  br i1 %.not21, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.017.a, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call fastcc i32 @prefix_suffix_match(ptr noundef %i.d, ptr noundef %2)
  %.not22 = icmp eq i32 %i.e, 0
  br i1 %.not22, label %bb.b, label %bb.d, !llvm.loop !52

bb.d:                                             ; preds = %bb.c, %bb.b
  %.119 = phi ptr [ %.018, %bb.b ], [ %.017.a, %bb.c ] ; 3 uses
  %.1 = phi i32 [ %.0, %bb.b ], [ 1, %bb.c ]      ; 3 uses
  %.not23 = icmp eq ptr %.018, %.119
  br i1 %.not23, label %bb.e, label %.preheader, !llvm.loop !53

bb.e:                                             ; preds = %bb.d
  %.not24 = icmp eq ptr %1, null
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.119, ptr %1, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.016 = phi i32 [ 1, %bb.a ], [ %.1, %bb.f ], [ %.1, %bb.e ]
  ret i32 %.016
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @evhttp_find_alias(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.014.in = phi ptr [ %i.a, %bb.a ], [ %.014, %bb.c ]
  %.014 = load ptr, ptr %.014.in, align 8         ; 3 uses
  %.not = icmp eq ptr %.014, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.014, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @evutil_ascii_strcasecmp(ptr noundef %i.c, ptr noundef nonnull %2) #15
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %bb.d, label %bb.b, !llvm.loop !54

bb.d:                                             ; preds = %bb.c
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %0, ptr %1, align 8
  br label %.loopexit

bb.f:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.in = phi ptr [ %i.e, %bb.f ], [ %.0, %bb.h ]
  %.0 = load ptr, ptr %.0.in, align 8             ; 3 uses
  %.not17 = icmp eq ptr %.0, null
  br i1 %.not17, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.f = tail call fastcc i32 @evhttp_find_alias(ptr noundef nonnull %.0, ptr noundef %1, ptr noundef %2)
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.g, label %.loopexit, !llvm.loop !55

.loopexit:                                        ; preds = %bb.g, %bb.h, %bb.d, %bb.e
  %.015 = phi i32 [ 1, %bb.e ], [ 1, %bb.d ], [ 0, %bb.g ], [ 1, %bb.h ]
  ret i32 %.015
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @prefix_suffix_match(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.014 = phi ptr [ %1, %bb.a ], [ %i.l, %bb.g ]  ; 4 uses
  %.013 = phi ptr [ %0, %bb.a ], [ %i.a, %bb.g ]  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.013, i64 1 ; 2 uses
  %i.b = load i8, ptr %.013, align 1              ; 3 uses
  %i.c = load i8, ptr %.014, align 1              ; 3 uses
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.c
    i8 42, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b
  %.not23 = icmp eq i8 %i.c, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq i8 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.124, i64 1 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !56

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.124 = phi ptr [ %i.f, %bb.d ], [ %.014, %.preheader ] ; 2 uses
  %i.h = tail call fastcc i32 @prefix_suffix_match(ptr noundef nonnull %i.a, ptr noundef %.124)
  %.not15 = icmp eq i32 %i.h, 0
  br i1 %.not15, label %bb.d, label %.loopexit

bb.e:                                             ; preds = %bb.b
  %.not16 = icmp eq i8 %i.b, %i.c
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call signext i8 @EVUTIL_TOLOWER_(i8 noundef signext %i.b) #15
  %i.j = load i8, ptr %.014, align 1
  %i.k = tail call signext i8 @EVUTIL_TOLOWER_(i8 noundef signext %i.j) #15
  %.not17 = icmp eq i8 %i.i, %i.k
  br i1 %.not17, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.014, i64 1
  br label %bb.b

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %bb.d, %.preheader, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ %i.e, %bb.c ], [ 0, %.preheader ], [ 1, %.lr.ph ], [ 0, %bb.f ]
  ret i32 %.0
}

declare signext i8 @EVUTIL_TOLOWER_(i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

declare void @evutil_rtrim_lws_(ptr noundef) local_unnamed_addr #3

declare ptr @event_mm_realloc_(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @evhttp_read_header(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8              ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call ptr @bufferevent_get_input(ptr noundef %i.d) #15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call fastcc range(i32 -3, 2) i32 @evhttp_parse_headers_impl_(ptr noundef %1, ptr noundef %i.e, ptr noundef %i.g) ; 2 uses
  %i.i = and i32 %i.h, -3
  %or.cond = icmp eq i32 %i.i, -3
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr @event_debug_logging_mask_, align 4
  %.not40 = icmp eq i32 %i.j, 0
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.57, ptr noundef nonnull @__func__.evhttp_read_header, i32 noundef %i.b) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @evhttp_connection_fail_(ptr noundef nonnull %0, i32 noundef 2)
  br label %bb.ak

bb.e:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %i.h, 0
  br i1 %i.k, label %bb.ak, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.f, align 8              ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %.0.in.i.i = phi ptr [ %i.l, %bb.f ], [ %.0.i.i, %bb.h ]
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8     ; 4 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %.preheader.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call i32 @evutil_ascii_strcasecmp(ptr noundef %i.n, ptr noundef nonnull @.str.15) #15
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %evhttp_find_header.exit.i, label %bb.g, !llvm.loop !8

evhttp_find_header.exit.i:                        ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %.preheader.i, label %bb.i

bb.i:                                             ; preds = %evhttp_find_header.exit.i
  %.03.i.i = load ptr, ptr %i.l, align 8          ; 2 uses
  %.not4.i.i = icmp eq ptr %.03.i.i, null
  br i1 %.not4.i.i, label %bb.s, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %bb.l
  %.06.i.i = phi ptr [ %.0.i17.i, %bb.l ], [ %.03.i.i, %bb.i ] ; 3 uses
  %.0105.i.i = phi ptr [ %.1.i.i, %bb.l ], [ null, %bb.i ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @evutil_ascii_strcasecmp(ptr noundef %i.t, ptr noundef nonnull @.str.14) #15
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.w = icmp eq ptr %.0105.i.i, null
  br i1 %i.w, label %bb.k, label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.1.i.i = phi ptr [ %i.y, %bb.k ], [ %.0105.i.i, %.lr.ph.i.i ] ; 2 uses
  %.0.i17.i = load ptr, ptr %.06.i.i, align 8     ; 2 uses
  %.not.i18.i = icmp eq ptr %.0.i17.i, null
  br i1 %.not.i18.i, label %evhttp_find_unique_header.exit.i, label %.lr.ph.i.i, !llvm.loop !57

evhttp_find_unique_header.exit.i:                 ; preds = %bb.l
  %i.z = icmp eq ptr %.1.i.i, null
  br i1 %i.z, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.g, %evhttp_find_unique_header.exit.i, %evhttp_find_header.exit.i
  %.01131.pr.i = load ptr, ptr %i.l, align 8      ; 2 uses
  %.not1532.i = icmp eq ptr %.01131.pr.i, null
  br i1 %.not1532.i, label %bb.s, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.p
  %.01134.i = phi ptr [ %.011.i, %bb.p ], [ %.01131.pr.i, %.preheader.i ] ; 3 uses
  %.033.i = phi i32 [ %.1.i, %bb.p ], [ 0, %.preheader.i ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01134.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call i32 @evutil_ascii_strcasecmp(ptr noundef %i.ab, ptr noundef nonnull @.str.15) #15
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.p

bb.m:                                             ; preds = %.lr.ph.i
  %.not16.i = icmp eq i32 %.033.i, 0
  br i1 %.not16.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.01134.i, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 @evhttp_check_transfer_encoding_(ptr noundef %i.af)
  switch i32 %i.ag, label %bb.p [
    i32 0, label %.loopexit
    i32 1, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %.lr.ph.i
  %.1.i = phi i32 [ 0, %bb.n ], [ 1, %bb.o ], [ %.033.i, %.lr.ph.i ] ; 2 uses
  %.011.i = load ptr, ptr %.01134.i, align 8      ; 2 uses
  %.not15.i = icmp eq ptr %.011.i, null
  br i1 %.not15.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !58

._crit_edge.loopexit.i:                           ; preds = %bb.p
  %i.ah = trunc nuw nsw i32 %.1.i to i8
  br label %bb.s

.loopexit:                                        ; preds = %bb.j, %bb.n, %bb.m, %evhttp_find_unique_header.exit.i
  %i.ai = load i32, ptr @event_debug_logging_mask_, align 4
  %.not39 = icmp eq i32 %i.ai, 0
  br i1 %.not39, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.loopexit
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.58, ptr noundef nonnull @__func__.evhttp_read_header, i32 noundef %i.b) #15
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.loopexit
  tail call void @evhttp_connection_fail_(ptr noundef %0, i32 noundef 2)
  br label %bb.ak

bb.s:                                             ; preds = %._crit_edge.loopexit.i, %.preheader.i, %bb.i
  %.0.lcssa.i = phi i8 [ 0, %.preheader.i ], [ %i.ah, %._crit_edge.loopexit.i ], [ 0, %bb.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = and i8 %i.ak, -2
  %i.am = or i8 %i.al, %.0.lcssa.i
  store i8 %i.am, ptr %i.aj, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call i32 %i.ao(ptr noundef nonnull %1, ptr noundef %i.aq) #15
  %i.as = icmp slt i32 %i.ar, 0
  br i1 %i.as, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @evhttp_connection_fail_(ptr noundef %0, i32 noundef 1)
  br label %bb.ak

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = load i32, ptr %i.at, align 8
  switch i32 %i.au, label %bb.aj [
    i32 0, label %bb.w
    i32 1, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.av = load i32, ptr @event_debug_logging_mask_, align 4
  %.not38 = icmp eq i32 %i.av, 0
  br i1 %.not38, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.59, ptr noundef nonnull @__func__.evhttp_read_header, i32 noundef %i.b) #15
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  tail call fastcc void @evhttp_get_body(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.ak
end_hunk_3
begin_hunk_4_@evhttp_read_body:bb.a
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %evhttp_handle_chunked_read.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %.lr.ph.i
  %i.r = phi i64 [ %i.i, %.lr.ph.i ], [ %i.bb, %.backedge.i ] ; 2 uses
  %i.s = icmp slt i64 %i.r, 0
  br i1 %i.s, label %evhttp_handle_chunked_read.exit.thread69, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.k, align 8              ; 3 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %bb.p

bb.e:                                             ; preds = %bb.d
  %i.v = call ptr @evbuffer_readln(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 2) #15 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %evhttp_handle_chunked_read.exit.thread76, label %bb.f

evhttp_handle_chunked_read.exit.thread76:         ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %evhttp_handle_chunked_read.exit.thread

bb.f:                                             ; preds = %bb.e
  %char0.i = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %char0.i, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @event_mm_free_(ptr noundef nonnull %i.v) #15
  br label %..si.unfold.false.jt2.i

bb.h:                                             ; preds = %bb.f
  %i.y = call i64 @evutil_strtoll(ptr noundef nonnull %i.v, ptr noundef nonnull %i.a, i32 noundef 16) #15 ; 5 uses
  %i.z = load i8, ptr %i.v, align 1
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %.critedge.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = load i8, ptr %i.ab, align 1
  switch i8 %i.ac, label %.critedge.i [
    i8 0, label %bb.j
    i8 32, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i, %bb.i
  %i.ad = icmp slt i64 %i.y, 0
  call void @event_mm_free_(ptr noundef nonnull %i.v) #15
  br i1 %i.ad, label %evhttp_handle_chunked_read.exit.thread74, label %bb.k

.critedge.i:                                      ; preds = %bb.i, %bb.h
  call void @event_mm_free_(ptr noundef nonnull %i.v) #15
  br label %evhttp_handle_chunked_read.exit.thread74

bb.k:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.p, align 8             ; 2 uses
  %i.af = xor i64 %i.ae, -1
  %i.ag = icmp ugt i64 %i.y, %i.af
  br i1 %i.ag, label %evhttp_handle_chunked_read.exit.thread74, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = add i64 %i.ae, %i.y                     ; 2 uses
  %i.ai = load ptr, ptr %i.q, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 200
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = icmp ugt i64 %i.ah, %i.ak
  br i1 %i.al, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr @event_debug_logging_mask_, align 4
  %.not55.i = icmp eq i32 %i.am, 0
  br i1 %.not55.i, label %evhttp_handle_chunked_read.exit.thread74, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.72) #15
  br label %evhttp_handle_chunked_read.exit.thread74

bb.o:                                             ; preds = %bb.l
  store i64 %i.ah, ptr %i.p, align 8
  store i64 %i.y, ptr %i.k, align 8
  %i.an = icmp eq i64 %i.y, 0
  br i1 %i.an, label %bb.s, label %..si.unfold.false.jt2.i

..si.unfold.false.jt2.i:                          ; preds = %bb.o, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.backedge.i

bb.p:                                             ; preds = %bb.d
  %i.ao = icmp samesign ult i64 %i.r, %i.t
  br i1 %i.ao, label %evhttp_handle_chunked_read.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr %i.l, align 8
  %i.aq = call i32 @evbuffer_remove_buffer(ptr noundef nonnull %i.d, ptr noundef %i.ap, i64 noundef %i.t) #15 ; 0 uses
  store i64 -1, ptr %i.k, align 8
  %i.ar = load ptr, ptr %i.m, align 8             ; 2 uses
  %.not51.i = icmp eq ptr %i.ar, null
  br i1 %.not51.i, label %.backedge.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.n, align 8
  %i.at = or i32 %i.as, 8
  store i32 %i.at, ptr %i.n, align 8
  %i.au = load ptr, ptr %i.o, align 8
  call void %i.ar(ptr noundef nonnull %1, ptr noundef %i.au) #15, !inline_history !61
  %i.av = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.aw = call i64 @evbuffer_get_length(ptr noundef %i.av) #15
  %i.ax = call i32 @evbuffer_drain(ptr noundef %i.av, i64 noundef %i.aw) #15 ; 0 uses
  %i.ay = load i32, ptr %i.n, align 8             ; 3 uses
  %i.az = and i32 %i.ay, -9
  store i32 %i.az, ptr %i.n, align 8
  %i.ba = and i32 %i.ay, 16
  %.not52.i = icmp eq i32 %i.ba, 0
  br i1 %.not52.i, label %.backedge.i, label %bb.t

.backedge.i:                                      ; preds = %bb.r, %bb.q, %..si.unfold.false.jt2.i
  %i.bb = call i64 @evbuffer_get_length(ptr noundef nonnull %i.d) #15 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %evhttp_handle_chunked_read.exit.thread, label %bb.c

evhttp_handle_chunked_read.exit.thread74:         ; preds = %bb.k, %bb.j, %bb.m, %.critedge.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %evhttp_handle_chunked_read.exit.thread69

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 6, ptr %i.bd, align 8
  call fastcc void @evhttp_read_trailer(ptr noundef %0, ptr noundef nonnull %1)
  br label %evhttp_request_free_auto.exit

evhttp_handle_chunked_read.exit.thread69:         ; preds = %bb.c, %bb.b, %evhttp_handle_chunked_read.exit.thread74
  call void @evhttp_connection_fail_(ptr noundef %0, i32 noundef 5)
  br label %evhttp_request_free_auto.exit

bb.t:                                             ; preds = %bb.r
  %i.be = and i32 %i.ay, 4
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %bb.u, label %evhttp_request_free_auto.exit

bb.u:                                             ; preds = %bb.t
  call void @evhttp_request_free(ptr noundef nonnull %1)
  br label %evhttp_request_free_auto.exit

bb.v:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp slt i64 %i.bg, 0
  br i1 %i.bh, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 4 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = tail call i64 @evbuffer_get_length(ptr noundef %i.d) #15
  %i.bl = add i64 %i.bk, %i.bj
  %i.bm = load i64, ptr %i.bi, align 8
  %i.bn = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @evhttp_connection_fail_(ptr noundef nonnull %0, i32 noundef 2)
  br label %evhttp_request_free_auto.exit

bb.y:                                             ; preds = %bb.w
  %i.bo = tail call i64 @evbuffer_get_length(ptr noundef %i.d) #15
  %i.bp = load i64, ptr %i.bi, align 8
  %i.bq = add i64 %i.bp, %i.bo
  store i64 %i.bq, ptr %i.bi, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call i32 @evbuffer_add_buffer(ptr noundef %i.bs, ptr noundef %i.d) #15 ; 0 uses
  br label %evhttp_handle_chunked_read.exit.thread

bb.z:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8
  %.not57 = icmp eq ptr %i.bv, null
  br i1 %.not57, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bw = tail call i64 @evbuffer_get_length(ptr noundef %i.d) #15
  %i.bx = load i64, ptr %i.bf, align 8
  %.not58 = icmp ult i64 %i.bw, %i.bx
  br i1 %.not58, label %evhttp_handle_chunked_read.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.by = tail call i64 @evbuffer_get_length(ptr noundef %i.d) #15
  %i.bz = load i64, ptr %i.bf, align 8            ; 2 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.by, i64 %i.bz) ; 3 uses
  %i.ca = sub i64 %i.bz, %spec.select
  store i64 %i.ca, ptr %i.bf, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, %spec.select
  store i64 %i.cd, ptr %i.cb, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @evbuffer_remove_buffer(ptr noundef %i.d, ptr noundef %i.cf, i64 noundef %spec.select) #15 ; 0 uses
  br label %evhttp_handle_chunked_read.exit.thread

evhttp_handle_chunked_read.exit.thread:           ; preds = %bb.p, %.backedge.i, %.preheader.i, %evhttp_handle_chunked_read.exit.thread76, %bb.y, %bb.ab, %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.cm = load i64, ptr %i.cl, align 8            ; 2 uses
  %i.cn = icmp ugt i64 %i.ci, %i.cm
  br i1 %i.cn, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %evhttp_handle_chunked_read.exit.thread
  %i.co = load i8, ptr %i.e, align 8
  %i.cp = and i8 %i.co, 1
  %.not59 = icmp eq i8 %i.cp, 0
  br i1 %.not59, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.cr = load i64, ptr %i.cq, align 8            ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, -1
  %i.ct = icmp ugt i64 %i.cr, %i.cm
  %or.cond = and i1 %i.cs, %i.ct
  br i1 %or.cond, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad, %evhttp_handle_chunked_read.exit.thread
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = and i32 %i.cv, 32
  %.not.i64 = icmp eq i32 %i.cw, 0
  br i1 %.not.i64, label %evhttp_lingering_close.exit.sink.split.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = load ptr, ptr %i.b, align 8
  %i.cy = call ptr @bufferevent_get_input(ptr noundef %i.cx) #15, !inline_history !62 ; 2 uses
  %i.cz = call i64 @evbuffer_get_length(ptr noundef %i.cy) #15, !inline_history !62
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 3 uses
  %i.db = load i64, ptr %i.da, align 8            ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.cz, i64 %i.db) ; 3 uses
  %i.dc = sub i64 %i.db, %spec.select.i.i         ; 2 uses
  store i64 %i.dc, ptr %i.da, align 8
  %i.dd = load i64, ptr %i.ch, align 8
  %i.de = add i64 %i.dd, %spec.select.i.i
  store i64 %i.de, ptr %i.ch, align 8
  %i.df = load i32, ptr @event_debug_logging_mask_, align 4
  %.not.i.i = icmp eq i32 %i.df, 0
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.68, i64 noundef %i.dc) #15, !inline_history !62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dg = call i32 @evbuffer_drain(ptr noundef %i.cy, i64 noundef %spec.select.i.i) #15, !inline_history !62 ; 0 uses
  %i.dh = load i64, ptr %i.da, align 8
  %.not15.i.i = icmp eq i64 %i.dh, 0
  br i1 %.not15.i.i, label %evhttp_lingering_close.exit.sink.split.i, label %evhttp_request_free_auto.exit

evhttp_lingering_close.exit.sink.split.i:         ; preds = %bb.ah, %bb.ae
  call void @evhttp_connection_fail_(ptr noundef nonnull %0, i32 noundef 5), !inline_history !63
  br label %evhttp_request_free_auto.exit

bb.ai:                                            ; preds = %bb.ad, %bb.ac
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = call i64 @evbuffer_get_length(ptr noundef %i.dj) #15
  %.not60 = icmp eq i64 %i.dk, 0
  br i1 %.not60, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dm = load ptr, ptr %i.dl, align 8            ; 2 uses
  %.not61 = icmp eq ptr %i.dm, null
  br i1 %.not61, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.do = load i32, ptr %i.dn, align 8
  %i.dp = or i32 %i.do, 8
  store i32 %i.dp, ptr %i.dn, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dm(ptr noundef nonnull %1, ptr noundef %i.dr) #15
  %i.ds = load i32, ptr %i.dn, align 8
  %i.dt = and i32 %i.ds, -9
  store i32 %i.dt, ptr %i.dn, align 8
  %i.du = load ptr, ptr %i.di, align 8            ; 2 uses
  %i.dv = call i64 @evbuffer_get_length(ptr noundef %i.du) #15
  %i.dw = call i32 @evbuffer_drain(ptr noundef %i.du, i64 noundef %i.dv) #15 ; 0 uses
  %i.dx = load i32, ptr %i.dn, align 8            ; 2 uses
  %i.dy = and i32 %i.dx, 16
  %.not62 = icmp eq i32 %i.dy, 0
  br i1 %.not62, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dz = and i32 %i.dx, 4
  %.not.i65 = icmp eq i32 %i.dz, 0
  br i1 %.not.i65, label %bb.am, label %evhttp_request_free_auto.exit

bb.am:                                            ; preds = %bb.al
  call void @evhttp_request_free(ptr noundef nonnull %1)
  br label %evhttp_request_free_auto.exit

bb.an:                                            ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.eb = load i64, ptr %i.ea, align 8
  %.not63 = icmp eq i64 %i.eb, 0
  br i1 %.not63, label %bb.ao, label %evhttp_request_free_auto.exit

bb.ao:                                            ; preds = %bb.an
  %i.ec = load ptr, ptr %i.b, align 8
  %i.ed = call i32 @bufferevent_disable(ptr noundef %i.ec, i16 noundef signext 2) #15 ; 0 uses
  call fastcc void @evhttp_connection_done(ptr noundef %0)
  br label %evhttp_request_free_auto.exit

evhttp_request_free_auto.exit:                    ; preds = %bb.am, %bb.al, %evhttp_lingering_close.exit.sink.split.i, %bb.ah, %bb.u, %bb.t, %bb.an, %bb.ao, %bb.x, %evhttp_handle_chunked_read.exit.thread69, %bb.s
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evhttp_read_trailer(ptr noundef %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.evkeyvalq, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @bufferevent_get_input(ptr noundef %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  store ptr null, ptr %2, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %i.e = call fastcc i32 @evhttp_parse_headers_impl_(ptr noundef %1, ptr noundef %i.c, ptr noundef nonnull %2)
  switch i32 %i.e, label %bb.d [
    i32 -1, label %bb.b
    i32 -3, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @evhttp_connection_fail_(ptr noundef nonnull %0, i32 noundef 5)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = call i32 @bufferevent_disable(ptr noundef %i.f, i16 noundef signext 2) #15 ; 0 uses
  call fastcc void @evhttp_connection_done(ptr noundef nonnull %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.015.i = load ptr, ptr %2, align 8             ; 2 uses
  %.not16.i = icmp eq ptr %.015.i, null
  br i1 %.not16.i, label %evhttp_clear_headers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %.017.i = phi ptr [ %.0.i, %bb.g ], [ %.015.i, %bb.d ] ; 6 uses
  %i.h = load ptr, ptr %.017.i, align 8           ; 2 uses
  %.not14.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  br i1 %.not14.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.k, align 8
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.i
  store ptr %i.j, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load ptr, ptr %.017.i, align 8
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.017.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  call void @event_mm_free_(ptr noundef %i.n) #15
  %i.o = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void @event_mm_free_(ptr noundef %i.p) #15
  call void @event_mm_free_(ptr noundef nonnull %.017.i) #15
  %.0.i = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %evhttp_clear_headers.exit, label %.lr.ph.i, !llvm.loop !9

evhttp_clear_headers.exit:                        ; preds = %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void
}

; Function Attrs: noreturn
declare void @event_errx(i32 noundef, ptr noundef, ...) local_unnamed_addr #9

end_hunk_4
