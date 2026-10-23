Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/s_client?download=true
inline.NumInlined: 46
inline.NumDeleted: 18
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
@.str.563 = private unnamed_addr constant [30 x i8] c"Error in PSK client callback\0A\00", align 1
@.str.564 = private unnamed_addr constant [36 x i8] c"Error finding suitable ciphersuite\0A\00", align 1
@.str.565 = private unnamed_addr constant [33 x i8] c"Protocols advertised by server: \00", align 1
@.str.566 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.567 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.568 = private unnamed_addr constant [28 x i8] c"SERVERINFO FOR EXTENSION %d\00", align 1
@.str.569 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.570 = private unnamed_addr constant [30 x i8] c"Can't use SSL_get_servername\0A\00", align 1
@.str.571 = private unnamed_addr constant [31 x i8] c"Error writing session file %s\0A\00", align 1
@.str.572 = private unnamed_addr constant [48 x i8] c"---\0APost-Handshake New Session Ticket arrived:\0A\00", align 1
@.str.573 = private unnamed_addr constant [5 x i8] c"---\0A\00", align 1
@tlsa_import_rr.usage = internal global i8 0, align 1
@tlsa_import_rr.selector = internal global i8 0, align 1
@tlsa_import_rr.mtype = internal global i8 0, align 1
@tlsa_import_rr.data = internal global ptr null, align 8
@tlsa_import_rr.tlsa_fields = internal unnamed_addr constant [5 x %struct.tlsa_field] [%struct.tlsa_field { ptr @tlsa_import_rr.usage, ptr @.str.574, ptr @checked_uint8 }, %struct.tlsa_field { ptr @tlsa_import_rr.selector, ptr @.str.575, ptr @checked_uint8 }, %struct.tlsa_field { ptr @tlsa_import_rr.mtype, ptr @.str.576, ptr @checked_uint8 }, %struct.tlsa_field { ptr @tlsa_import_rr.data, ptr @.str.577, ptr @hexdecode }, %struct.tlsa_field zeroinitializer], align 16
@.str.574 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.575 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.576 = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@.str.577 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.578 = private unnamed_addr constant [39 x i8] c"%s: warning: bad TLSA %s field in: %s\0A\00", align 1
@.str.579 = private unnamed_addr constant [39 x i8] c"%s: warning: unusable TLSA rrdata: %s\0A\00", align 1
@.str.580 = private unnamed_addr constant [44 x i8] c"%s: warning: error loading TLSA rrdata: %s\0A\00", align 1
@saved_errno = internal unnamed_addr global i32 0, align 4
@.str.581 = private unnamed_addr constant [10 x i8] c"hexdecode\00", align 1
@.str.582 = private unnamed_addr constant [23 x i8] c"---\0ACertificate chain\0A\00", align 1
@.str.583 = private unnamed_addr constant [7 x i8] c"%2d s:\00", align 1
@.str.584 = private unnamed_addr constant [6 x i8] c"   i:\00", align 1
@.str.585 = private unnamed_addr constant [17 x i8] c"   v:NotBefore: \00", align 1
@.str.586 = private unnamed_addr constant [13 x i8] c"; NotAfter: \00", align 1
@.str.587 = private unnamed_addr constant [20 x i8] c"Server certificate\0A\00", align 1
@.str.588 = private unnamed_addr constant [31 x i8] c"no peer certificate available\0A\00", align 1
@.str.589 = private unnamed_addr constant [44 x i8] c"Client-to-server raw public key negotiated\0A\00", align 1
@.str.590 = private unnamed_addr constant [44 x i8] c"Server-to-client raw public key negotiated\0A\00", align 1
@.str.591 = private unnamed_addr constant [23 x i8] c"Server raw public key\0A\00", align 1
@.str.592 = private unnamed_addr constant [23 x i8] c"no peer rpk available\0A\00", align 1
@.str.593 = private unnamed_addr constant [23 x i8] c"---\0ASCTs present (%i)\0A\00", align 1
@.str.594 = private unnamed_addr constant [27 x i8] c"SCT validation status: %s\0A\00", align 1
@.str.595 = private unnamed_addr constant [6 x i8] c"\0A---\0A\00", align 1
@.str.596 = private unnamed_addr constant [60 x i8] c"---\0ASSL handshake has read %ju bytes and written %ju bytes\0A\00", align 1
@.str.597 = private unnamed_addr constant [13 x i8] c"---\0AReused, \00", align 1
@.str.598 = private unnamed_addr constant [10 x i8] c"---\0ANew, \00", align 1
@.str.599 = private unnamed_addr constant [18 x i8] c"%s, Cipher is %s\0A\00", align 1
@.str.600 = private unnamed_addr constant [14 x i8] c"Protocol: %s\0A\00", align 1
@.str.601 = private unnamed_addr constant [29 x i8] c"Server public key is %d bit\0A\00", align 1
@.str.602 = private unnamed_addr constant [21 x i8] c"Next protocol: (%d) \00", align 1
@.str.603 = private unnamed_addr constant [16 x i8] c"ALPN protocol: \00", align 1
@.str.604 = private unnamed_addr constant [20 x i8] c"No ALPN negotiated\0A\00", align 1
@.str.605 = private unnamed_addr constant [39 x i8] c"SRTP Extension negotiated, profile=%s\0A\00", align 1
@.str.606 = private unnamed_addr constant [25 x i8] c"Early data was not sent\0A\00", align 1
@.str.607 = private unnamed_addr constant [25 x i8] c"Early data was rejected\0A\00", align 1
@.str.608 = private unnamed_addr constant [25 x i8] c"Early data was accepted\0A\00", align 1
@.str.609 = private unnamed_addr constant [30 x i8] c"Verify return code: %ld (%s)\0A\00", align 1
@.str.610 = private unnamed_addr constant [27 x i8] c"Keying material exporter:\0A\00", align 1
@.str.611 = private unnamed_addr constant [17 x i8] c"    Label: '%s'\0A\00", align 1
@.str.612 = private unnamed_addr constant [22 x i8] c"    Length: %i bytes\0A\00", align 1
@.str.613 = private unnamed_addr constant [11 x i8] c"export key\00", align 1
@.str.614 = private unnamed_addr constant [11 x i8] c"    Error\0A\00", align 1
@.str.615 = private unnamed_addr constant [22 x i8] c"    Keying material: \00", align 1
@.str.616 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.617 = private unnamed_addr constant [33 x i8] c"   a:PKEY: %s, (%s); sigalg: %s\0A\00", align 1
@.str.618 = private unnamed_addr constant [37 x i8] c"   a:PKEY: %s, %d (bit); sigalg: %s\0A\00", align 1
@.str.619 = private unnamed_addr constant [16 x i8] c"OCSP response: \00", align 1
@.str.620 = private unnamed_addr constant [18 x i8] c"no response sent\0A\00", align 1
@.str.621 = private unnamed_addr constant [22 x i8] c"response parse error\0A\00", align 1
@.str.622 = private unnamed_addr constant [41 x i8] c"\0A======================================\0A\00", align 1
@.str.623 = private unnamed_addr constant [40 x i8] c"======================================\0A\00", align 1
@.str.624 = private unnamed_addr constant [26 x i8] c"Unexpected LDAP response\0A\00", align 1
@.str.625 = private unnamed_addr constant [14 x i8] c"No MessageID\0A\00", align 1
@.str.626 = private unnamed_addr constant [22 x i8] c"Not ExtendedResponse\0A\00", align 1
@.str.627 = private unnamed_addr constant [16 x i8] c"Not LDAPResult\0A\00", align 1
@.str.628 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.629 = private unnamed_addr constant [6 x i8] c"noreq\00", align 1
@.str.630 = private unnamed_addr constant [52 x i8] c"ERROR PROCESSING COMMAND. REST OF LINE IGNORED: %s\0A\00", align 1
@.str.631 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.632 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.633 = private unnamed_addr constant [6 x i8] c"keyup\00", align 1
@.str.634 = private unnamed_addr constant [6 x i8] c"reneg\00", align 1
@.str.635 = private unnamed_addr constant [36 x i8] c"UNRECOGNISED COMMAND (IGNORED): %s\0A\00", align 1
@.str.636 = private unnamed_addr constant [36 x i8] c"BAD ARGUMENT (COMMAND IGNORED): %s\0A\00", align 1
@.str.637 = private unnamed_addr constant [52 x i8] c"Enter text to send to the peer followed by <enter>\0A\00", align 1
@.str.638 = private unnamed_addr constant [67 x i8] c"To issue a command insert {cmd} or {cmd:arg} anywhere in the text\0A\00", align 1
@.str.639 = private unnamed_addr constant [37 x i8] c"Entering {{ will send { to the peer\0A\00", align 1
@.str.640 = private unnamed_addr constant [38 x i8] c"The following commands are available\0A\00", align 1
@.str.641 = private unnamed_addr constant [30 x i8] c"  {help}: Get this help text\0A\00", align 1
@.str.642 = private unnamed_addr constant [44 x i8] c"  {quit}: Close the connection to the peer\0A\00", align 1
@.str.643 = private unnamed_addr constant [38 x i8] c"  {reconnect}: Reconnect to the peer\0A\00", align 1
@.str.644 = private unnamed_addr constant [65 x i8] c"  {fin}: Send FIN on the stream. No further writing is possible\0A\00", align 1
@.str.645 = private unnamed_addr constant [48 x i8] c"  {keyup:req|noreq}: Send a Key Update message\0A\00", align 1
@.str.646 = private unnamed_addr constant [33 x i8] c"                     Arguments:\0A\00", align 1
@.str.647 = private unnamed_addr constant [62 x i8] c"                     req   = peer update requested (default)\0A\00", align 1
@.str.648 = private unnamed_addr constant [56 x i8] c"                     noreq = peer update not requested\0A\00", align 1
@.str.649 = private unnamed_addr constant [35 x i8] c"  {reneg}: Attempt to renegotiate\0A\00", align 1
@.str.650 = private unnamed_addr constant [14 x i8] c"RECONNECTING\0A\00", align 1
@.str.651 = private unnamed_addr constant [15 x i8] c"RENEGOTIATING\0A\00", align 1
@.str.652 = private unnamed_addr constant [11 x i8] c"KEYUPDATE\0A\00", align 1
@switch.table.print_stuff = private unnamed_addr constant [3 x ptr] [ptr @.str.606, ptr @.str.607, ptr @.str.608], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @s_client_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
.preheader1809.preheader:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 16 uses
  %i.g = alloca ptr, align 8                      ; 13 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %2 = alloca %struct.timeval, align 8            ; 14 uses
  %3 = alloca %struct.fd_set, align 8             ; 16 uses
  %4 = alloca %struct.fd_set, align 8             ; 10 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 9 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %i.n = alloca i32, align 4                      ; 5 uses
  %i.o = alloca i32, align 4                      ; 13 uses
  %i.p = alloca i32, align 4                      ; 8 uses
  %i.q = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.tlsextctx_st, align 8       ; 5 uses
  %i.r = alloca [100 x i16], align 16             ; 4 uses
  %6 = alloca %struct.srp_arg_st, align 8         ; 10 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca ptr, align 8                      ; 9 uses
  %7 = alloca %struct.user_data_st, align 8       ; 10 uses
  %i.u = alloca i64, align 8                      ; 5 uses
  %8 = alloca %union.BIO_sock_info_u, align 8     ; 10 uses
  %i.v = alloca i32, align 4                      ; 8 uses
  %i.w = alloca i64, align 8                      ; 7 uses
  %i.x = alloca i64, align 8                      ; 6 uses
  %i.y = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store ptr null, ptr %i.b, align 8, !tbaa !62
  %i.z = tail call ptr @TLS_client_method() #15   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store ptr null, ptr %i.e, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store ptr null, ptr %i.f, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  store ptr null, ptr %i.h, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #15
  store ptr null, ptr %i.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #15
  store ptr null, ptr %i.j, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #15
  store i32 0, ptr %i.k, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #15
  store i32 0, ptr %i.n, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #15
  store i32 -1, ptr %i.o, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #15
  store i32 0, ptr %i.p, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #15
  store i32 0, ptr %i.q, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @__const.s_client_main.srp_arg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  store ptr null, ptr %i.t, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !16
  store i1 false, ptr @c_quiet, align 4
  store i1 false, ptr @c_debug, align 4
  store i1 false, ptr @c_showcerts, align 4
  %i.aa = tail call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.395, ptr noundef nonnull @.str.396, i32 noundef 1065) #15 ; 2 uses
  store ptr %i.aa, ptr %i.g, align 8, !tbaa !13
  %i.ab = tail call ptr @X509_VERIFY_PARAM_new() #15 ; 4 uses
  %i.ac = tail call ptr @SSL_CONF_CTX_new() #15   ; 4 uses
  %i.ad = icmp eq ptr %i.aa, null
  %i.ae = icmp eq ptr %i.ab, null
  %or.cond = select i1 %i.ad, i1 true, i1 %i.ae
  %i.af = icmp eq ptr %i.ac, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.af
  br i1 %or.cond3, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader1809.preheader
  %i.ag = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.ah = tail call ptr @opt_getprog() #15
  %i.ai = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ag, ptr noundef nonnull @.str.397, ptr noundef %i.ah) #15 ; 0 uses
  br label %.thread1714

bb.b:                                             ; preds = %.preheader1809.preheader
  %i.aj = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.398) #15 ; 80 uses
  %i.ak = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.399) #15 ; 84 uses
  %i.al = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.400) #15 ; 117 uses
  %i.am = tail call i32 @SSL_CONF_CTX_set_flags(ptr noundef nonnull %i.ac, i32 noundef 5) #15 ; 0 uses
  %i.an = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @s_client_options) #15
  store ptr %i.an, ptr @prog, align 8, !tbaa !13
  %i.ao = tail call i32 @opt_next() #15           ; 2 uses
  %.not3232 = icmp eq i32 %i.ao, 0
  br i1 %.not3232, label %._crit_edge, label %.lr.ph3319

.lr.ph3319:                                       ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph3319, %.loopexit1806
  %i.as = phi i32 [ %i.ao, %.lr.ph3319 ], [ %i.hs, %.loopexit1806 ] ; 9 uses
  %.09673318 = phi i32 [ 0, %.lr.ph3319 ], [ %.1968, %.loopexit1806 ] ; 125 uses
  %.09693317 = phi i32 [ 0, %.lr.ph3319 ], [ %.1970, %.loopexit1806 ] ; 125 uses
  %.09713316 = phi i32 [ 0, %.lr.ph3319 ], [ %.1972, %.loopexit1806 ] ; 125 uses
  %.09733315 = phi i32 [ 0, %.lr.ph3319 ], [ %.1974, %.loopexit1806 ] ; 125 uses
  %.09753314 = phi ptr [ null, %.lr.ph3319 ], [ %.1976, %.loopexit1806 ] ; 125 uses
  %.09773313 = phi i32 [ 0, %.lr.ph3319 ], [ %.1978, %.loopexit1806 ] ; 117 uses
  %.09793312 = phi i32 [ 0, %.lr.ph3319 ], [ %.1980, %.loopexit1806 ] ; 117 uses
  %.09813311 = phi ptr [ null, %.lr.ph3319 ], [ %.1982, %.loopexit1806 ] ; 125 uses
  %.09833310 = phi ptr [ null, %.lr.ph3319 ], [ %.1984, %.loopexit1806 ] ; 125 uses
  %.09853309 = phi ptr [ null, %.lr.ph3319 ], [ %.1986, %.loopexit1806 ] ; 146 uses
  %.09903308 = phi i32 [ 0, %.lr.ph3319 ], [ %.1991, %.loopexit1806 ] ; 125 uses
  %.09923307 = phi i32 [ 0, %.lr.ph3319 ], [ %.1993, %.loopexit1806 ] ; 125 uses
  %.09943306 = phi i32 [ 0, %.lr.ph3319 ], [ %.1995, %.loopexit1806 ] ; 125 uses
  %.09963305 = phi i32 [ 0, %.lr.ph3319 ], [ %.1997, %.loopexit1806 ] ; 123 uses
  %.09983304 = phi i32 [ 0, %.lr.ph3319 ], [ %.1999, %.loopexit1806 ] ; 124 uses
  %.010003303 = phi i32 [ 0, %.lr.ph3319 ], [ %.11001, %.loopexit1806 ] ; 125 uses
  %.010023302 = phi i8 [ 0, %.lr.ph3319 ], [ %.11003, %.loopexit1806 ] ; 122 uses
  %.010043301 = phi i32 [ 0, %.lr.ph3319 ], [ %.11005, %.loopexit1806 ] ; 126 uses
  %.010063300 = phi i32 [ 2, %.lr.ph3319 ], [ %.11007, %.loopexit1806 ] ; 122 uses
  %.010083299 = phi i32 [ 0, %.lr.ph3319 ], [ %.11009, %.loopexit1806 ] ; 125 uses
  %.010103298 = phi i32 [ 0, %.lr.ph3319 ], [ %.11011, %.loopexit1806 ] ; 125 uses
  %.010123297 = phi i32 [ 0, %.lr.ph3319 ], [ %.11013, %.loopexit1806 ] ; 125 uses
  %.010143296 = phi i32 [ 0, %.lr.ph3319 ], [ %.11015, %.loopexit1806 ] ; 125 uses
  %.010163295 = phi i32 [ 0, %.lr.ph3319 ], [ %spec.select, %.loopexit1806 ]
  %.010183294 = phi i32 [ 0, %.lr.ph3319 ], [ %.11019, %.loopexit1806 ] ; 2 uses
  %.010203293 = phi i32 [ 0, %.lr.ph3319 ], [ %.11021, %.loopexit1806 ] ; 118 uses
  %.010223292 = phi i32 [ 0, %.lr.ph3319 ], [ %.11023, %.loopexit1806 ] ; 118 uses
  %.010243291 = phi i32 [ 0, %.lr.ph3319 ], [ %.11025, %.loopexit1806 ] ; 124 uses
  %.010263290 = phi ptr [ null, %.lr.ph3319 ], [ %.11027, %.loopexit1806 ] ; 125 uses
  %.010283289 = phi ptr [ null, %.lr.ph3319 ], [ %.11029, %.loopexit1806 ] ; 125 uses
  %.010303288 = phi i32 [ 0, %.lr.ph3319 ], [ %.11031, %.loopexit1806 ] ; 125 uses
  %.010323287 = phi ptr [ null, %.lr.ph3319 ], [ %.11033, %.loopexit1806 ] ; 125 uses
  %.010343286 = phi ptr [ null, %.lr.ph3319 ], [ %.11035, %.loopexit1806 ] ; 125 uses
  %.010383285 = phi i32 [ 0, %.lr.ph3319 ], [ %.31041, %.loopexit1806 ] ; 125 uses
  %.010423284 = phi ptr [ null, %.lr.ph3319 ], [ %.11043, %.loopexit1806 ] ; 125 uses
  %.010443283 = phi ptr [ null, %.lr.ph3319 ], [ %.11045, %.loopexit1806 ] ; 125 uses
  %.010463282 = phi i32 [ 0, %.lr.ph3319 ], [ %.11047, %.loopexit1806 ] ; 125 uses
  %.010533281 = phi ptr [ null, %.lr.ph3319 ], [ %.11054, %.loopexit1806 ] ; 125 uses
  %.010593280 = phi ptr [ null, %.lr.ph3319 ], [ %.11060, %.loopexit1806 ] ; 147 uses
  %.010623279 = phi ptr [ null, %.lr.ph3319 ], [ %.11063, %.loopexit1806 ] ; 125 uses
  %.010643278 = phi i64 [ 0, %.lr.ph3319 ], [ %.11065, %.loopexit1806 ] ; 125 uses
  %.010663277 = phi i32 [ 0, %.lr.ph3319 ], [ %.11067, %.loopexit1806 ] ; 125 uses
  %.010683276 = phi i32 [ 0, %.lr.ph3319 ], [ %.11069, %.loopexit1806 ] ; 125 uses
  %.010703275 = phi i32 [ 0, %.lr.ph3319 ], [ %.11071, %.loopexit1806 ] ; 125 uses
  %.010903274 = phi i32 [ 0, %.lr.ph3319 ], [ %.11091, %.loopexit1806 ] ; 125 uses
  %.010923273 = phi i32 [ 1, %.lr.ph3319 ], [ %.11093, %.loopexit1806 ] ; 117 uses
  %.010943272 = phi i32 [ 0, %.lr.ph3319 ], [ %.11095, %.loopexit1806 ] ; 123 uses
  %.010963271 = phi i32 [ 1, %.lr.ph3319 ], [ %.11097, %.loopexit1806 ] ; 124 uses
  %.011033270 = phi i32 [ 0, %.lr.ph3319 ], [ %.11104, %.loopexit1806 ] ; 125 uses
  %.011083269 = phi i32 [ 0, %.lr.ph3319 ], [ %.11109, %.loopexit1806 ] ; 125 uses
  %.011243268 = phi i32 [ 0, %.lr.ph3319 ], [ %.11125, %.loopexit1806 ] ; 126 uses
  %.011263267 = phi i32 [ 0, %.lr.ph3319 ], [ %.11127, %.loopexit1806 ] ; 123 uses
  %.011283266 = phi i32 [ 0, %.lr.ph3319 ], [ %.11129, %.loopexit1806 ] ; 125 uses
  %.011313265 = phi i32 [ 0, %.lr.ph3319 ], [ %.11132, %.loopexit1806 ] ; 124 uses
  %.011333264 = phi i32 [ 0, %.lr.ph3319 ], [ %.11134, %.loopexit1806 ] ; 125 uses
  %.011353263 = phi i32 [ 0, %.lr.ph3319 ], [ %.11136, %.loopexit1806 ] ; 125 uses
  %.011543262 = phi i32 [ 0, %.lr.ph3319 ], [ %.11155, %.loopexit1806 ] ; 125 uses
  %.011563261 = phi i32 [ 0, %.lr.ph3319 ], [ %.11157, %.loopexit1806 ] ; 125 uses
  %.011583260 = phi i32 [ 0, %.lr.ph3319 ], [ %.11159, %.loopexit1806 ] ; 125 uses
  %.011603259 = phi i32 [ 0, %.lr.ph3319 ], [ %.11161, %.loopexit1806 ] ; 125 uses
  %.011623258 = phi i32 [ 0, %.lr.ph3319 ], [ %.11163, %.loopexit1806 ] ; 125 uses
  %.011653257 = phi ptr [ null, %.lr.ph3319 ], [ %.11166, %.loopexit1806 ] ; 125 uses
  %.011713256 = phi ptr [ null, %.lr.ph3319 ], [ %.11172, %.loopexit1806 ] ; 125 uses
  %.011733255 = phi ptr [ null, %.lr.ph3319 ], [ %.11174, %.loopexit1806 ] ; 125 uses
  %.011753254 = phi ptr [ null, %.lr.ph3319 ], [ %.11176, %.loopexit1806 ] ; 125 uses
  %.011773253 = phi ptr [ null, %.lr.ph3319 ], [ %.11178, %.loopexit1806 ] ; 125 uses
  %.011793252 = phi ptr [ null, %.lr.ph3319 ], [ %.11180, %.loopexit1806 ] ; 125 uses
  %.011813251 = phi ptr [ null, %.lr.ph3319 ], [ %.11182, %.loopexit1806 ] ; 125 uses
  %.011833250 = phi ptr [ null, %.lr.ph3319 ], [ %.11184, %.loopexit1806 ] ; 125 uses
  %.011933249 = phi ptr [ null, %.lr.ph3319 ], [ %.11194, %.loopexit1806 ] ; 125 uses
  %.011953248 = phi ptr [ null, %.lr.ph3319 ], [ %.11196, %.loopexit1806 ] ; 125 uses
  %.011973247 = phi ptr [ null, %.lr.ph3319 ], [ %.11198, %.loopexit1806 ] ; 125 uses
  %.011993246 = phi ptr [ null, %.lr.ph3319 ], [ %.11200, %.loopexit1806 ] ; 125 uses
  %.012013245 = phi ptr [ null, %.lr.ph3319 ], [ %.11202, %.loopexit1806 ] ; 125 uses
  %.012043244 = phi ptr [ null, %.lr.ph3319 ], [ %.11205, %.loopexit1806 ] ; 125 uses
  %.012063243 = phi ptr [ null, %.lr.ph3319 ], [ %.11207, %.loopexit1806 ] ; 125 uses
  %.012083242 = phi ptr [ null, %.lr.ph3319 ], [ %.11209, %.loopexit1806 ] ; 125 uses
  %.012103241 = phi ptr [ null, %.lr.ph3319 ], [ %.11211, %.loopexit1806 ] ; 125 uses
  %.012153240 = phi ptr [ null, %.lr.ph3319 ], [ %.11216, %.loopexit1806 ] ; 125 uses
  %.012173239 = phi ptr [ null, %.lr.ph3319 ], [ %.11218, %.loopexit1806 ] ; 125 uses
  %.012193238 = phi ptr [ null, %.lr.ph3319 ], [ %.11220, %.loopexit1806 ] ; 125 uses
  %.012213237 = phi ptr [ %i.z, %.lr.ph3319 ], [ %.11222, %.loopexit1806 ] ; 122 uses
  %.012263236 = phi i32 [ 0, %.lr.ph3319 ], [ %.11227, %.loopexit1806 ] ; 125 uses
  %.012283235 = phi ptr [ null, %.lr.ph3319 ], [ %.21230, %.loopexit1806 ] ; 148 uses
  %.012323234 = phi ptr [ null, %.lr.ph3319 ], [ %.11233, %.loopexit1806 ] ; 125 uses
  %.012343233 = phi ptr [ null, %.lr.ph3319 ], [ %.21236, %.loopexit1806 ] ; 148 uses
  %i.at = icmp eq i32 %.010063300, 1
  %i.au = add i32 %i.as, -2
  %or.cond11 = icmp ult i32 %i.au, 5
  %or.cond1524 = and i1 %i.at, %or.cond11
  br i1 %or.cond1524, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.av = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.aw = load ptr, ptr @prog, align 8, !tbaa !13
  %i.ax = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.av, ptr noundef nonnull @.str.401, ptr noundef %i.aw) #15 ; 0 uses
  br label %.thread1714

bb.e:                                             ; preds = %bb.c
  %i.ay = icmp eq i32 %.010063300, 0
  %i.az = icmp eq i32 %i.as, 8
  %or.cond13 = and i1 %i.ay, %i.az
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ba = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bb = load ptr, ptr @prog, align 8, !tbaa !13
  %i.bc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ba, ptr noundef nonnull @.str.402, ptr noundef %i.bb) #15 ; 0 uses
  br label %.thread1714

bb.g:                                             ; preds = %bb.e
  switch i32 %i.as, label %bb.j [
    i32 60, label %bb.h
    i32 59, label %bb.h
    i32 58, label %bb.h
    i32 57, label %bb.h
    i32 56, label %bb.h
    i32 55, label %bb.h
    i32 54, label %bb.h
    i32 53, label %bb.h
    i32 51, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %.not1506 = icmp eq i32 %.010183294, 0
  br i1 %.not1506, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.be = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bd, ptr noundef nonnull @.str.403) #15 ; 0 uses
  br label %.thread1714

bb.j:                                             ; preds = %bb.g, %bb.h
  %.11019 = phi i32 [ 1, %bb.h ], [ %.010183294, %bb.g ] ; 2 uses
  %i.bf = add i32 %i.as, -3001
  %or.cond37 = icmp ult i32 %i.bf, 5
  %i.bg = zext i1 %or.cond37 to i32
  %spec.select = add nuw nsw i32 %.010163295, %i.bg ; 2 uses
  %i.bh = icmp ne i32 %.11019, 0
  %i.bi = icmp ne i32 %spec.select, 0
  %or.cond39 = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %or.cond39, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bj, ptr noundef nonnull @.str.404) #15 ; 0 uses
  br label %.thread1714

bb.l:                                             ; preds = %bb.j
  switch i32 %i.as, label %.loopexit1806 [
    i32 0, label %.loopexit1808
    i32 -1, label %.loopexit1808
    i32 1, label %bb.m
    i32 2, label %bb.n
    i32 3, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
    i32 3042, label %bb.t
    i32 3043, label %bb.u
    i32 3044, label %bb.v
    i32 8, label %bb.w
    i32 9, label %bb.x
    i32 92, label %bb.x
    i32 10, label %bb.y
    i32 12, label %bb.aa
    i32 11, label %bb.ab
    i32 13, label %bb.ac
    i32 14, label %bb.ad
    i32 15, label %bb.ae
    i32 16, label %bb.af
    i32 17, label %bb.ag
    i32 18, label %bb.ah
    i32 19, label %bb.ai
    i32 20, label %bb.aj
    i32 21, label %bb.ak
    i32 99, label %bb.er
    i32 98, label %bb.eq
    i32 3001, label %bb.al
    i32 3002, label %bb.al
    i32 3003, label %bb.al
    i32 3004, label %bb.al
end_hunk_0
begin_hunk_1_@s_client_main:.preheader1809.preheader
bb.uh:                                            ; preds = %bb.ud
  %i.arw = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.arx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.arw, ptr noundef nonnull @.str.526) #15 ; 0 uses
  call void @wait_for_async(ptr noundef %i.sa) #15
  br label %.preheader1795.preheader.backedge

bb.ui:                                            ; preds = %bb.ud
  %i.ary = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.arz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ary, ptr noundef nonnull @.str.527) #15 ; 0 uses
  br label %.preheader1795.preheader.backedge

bb.uj:                                            ; preds = %bb.ud
  %i.asa = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.asb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.asa, ptr noundef nonnull @.str.528) #15 ; 0 uses
  br label %.preheader1795.preheader.backedge

bb.uk:                                            ; preds = %bb.ud
  %.not1496 = icmp eq i64 %i.arj, 0
  br i1 %.not1496, label %.preheader1795.preheader.backedge, label %bb.ul

bb.ul:                                            ; preds = %bb.uk
  %i.asc = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.asd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.asc, ptr noundef nonnull @.str.529) #15 ; 0 uses
  br label %.thread1636

bb.um:                                            ; preds = %bb.ud
  %i.ase = icmp ne i32 %i.arn, 0
  %i.asf = icmp ne i64 %i.arj, 0
  %or.cond108 = or i1 %i.asf, %i.ase
  br i1 %or.cond108, label %bb.un, label %.preheader1795.preheader.backedge

bb.un:                                            ; preds = %bb.um
  %i.asg = tail call ptr @__errno_location() #16
  %i.ash = load i32, ptr %i.asg, align 4, !tbaa !14 ; 2 uses
  %i.asi = icmp eq i32 %i.ash, 106
  %or.cond110.not = select i1 %i.tz, i1 %i.asi, i1 false
  br i1 %or.cond110.not, label %.preheader1795.preheader.backedge, label %bb.uo

.preheader1795.preheader.backedge:                ; preds = %bb.un, %user_data_add.exit, %bb.ut, %bb.vn, %bb.uv, %bb.um, %bb.uk, %bb.uf, %bb.uy, %bb.uw, %bb.vg, %.critedge1561, %bb.ux, %bb.uz, %bb.ud, %bb.ug, %bb.uh, %bb.ui, %bb.uj
  %.01101.be = phi i32 [ %.01101, %bb.un ], [ %.01101, %user_data_add.exit ], [ %i.atc, %bb.ut ], [ %.01101, %bb.vn ], [ %i.atp, %bb.uv ], [ %.01101, %bb.um ], [ %.01101, %bb.uk ], [ %.01101, %bb.uf ], [ %.01101, %bb.uy ], [ %.01101, %bb.uw ], [ %.01101, %bb.vg ], [ %.01101, %.critedge1561 ], [ %.01101, %bb.ux ], [ %.01101, %bb.uz ], [ %.01101, %bb.ud ], [ %.01101, %bb.ug ], [ %.01101, %bb.uh ], [ %.01101, %bb.ui ], [ %.01101, %bb.uj ]
  %.01099.be = phi i32 [ %.01099, %bb.un ], [ %.01099, %user_data_add.exit ], [ %i.atd, %bb.ut ], [ %.01099, %bb.vn ], [ 0, %bb.uv ], [ %.01099, %bb.um ], [ %.01099, %bb.uk ], [ %.01099, %bb.uf ], [ %.01099, %bb.uy ], [ %.01099, %bb.uw ], [ %.01099, %bb.vg ], [ %.01099, %.critedge1561 ], [ %.01099, %bb.ux ], [ %.01099, %bb.uz ], [ %.01099, %bb.ud ], [ %.01099, %bb.ug ], [ %.01099, %bb.uh ], [ %.01099, %bb.ui ], [ %.01099, %bb.uj ]
  %.01088.be = phi i32 [ %.01088, %bb.un ], [ %.01088, %user_data_add.exit ], [ %spec.select1559, %bb.ut ], [ %.01088, %bb.vn ], [ 1, %bb.uv ], [ %.01088, %bb.um ], [ %.01088, %bb.uk ], [ %.01088, %bb.uf ], [ 0, %bb.uy ], [ 0, %bb.uw ], [ %.01088, %bb.vg ], [ %.01088, %.critedge1561 ], [ %.01088, %bb.ux ], [ %.01088, %bb.uz ], [ %.01088, %bb.ud ], [ %.01088, %bb.ug ], [ %.01088, %bb.uh ], [ 0, %bb.ui ], [ %.01088, %bb.uj ]
  %.01085.be = phi i32 [ %.11086, %bb.un ], [ 0, %user_data_add.exit ], [ %.11086, %bb.ut ], [ 0, %bb.vn ], [ %.11086, %bb.uv ], [ 1, %bb.um ], [ 1, %bb.uk ], [ %., %bb.uf ], [ %.11086, %bb.uy ], [ %.11086, %bb.uw ], [ %.11086, %bb.vg ], [ %.11086, %.critedge1561 ], [ 0, %bb.ux ], [ %.11086, %bb.uz ], [ %.11086, %bb.ud ], [ 0, %bb.ug ], [ 0, %bb.uh ], [ %.11086, %bb.ui ], [ %.11086, %bb.uj ]
  %.01080.be = phi i32 [ %.31083, %bb.un ], [ %.31083, %user_data_add.exit ], [ %.31083, %bb.ut ], [ %.31083, %bb.vn ], [ %.31083, %bb.uv ], [ 0, %bb.um ], [ 0, %bb.uk ], [ %.1555, %bb.uf ], [ %spec.store.select120, %bb.uy ], [ %spec.store.select119, %bb.uw ], [ %.31083, %bb.vg ], [ %.31083, %.critedge1561 ], [ 1, %bb.ux ], [ %.31083, %bb.uz ], [ %.31083, %bb.ud ], [ 1, %bb.ug ], [ 1, %bb.uh ], [ 0, %bb.ui ], [ %.31083, %bb.uj ]
  %.01078.be = phi i32 [ %.01078, %bb.un ], [ %.01078, %user_data_add.exit ], [ %spec.select1560, %bb.ut ], [ %.01078, %bb.vn ], [ 0, %bb.uv ], [ %.01078, %bb.um ], [ %.01078, %bb.uk ], [ %.01078, %bb.uf ], [ 1, %bb.uy ], [ 1, %bb.uw ], [ %.01078, %bb.vg ], [ %.01078, %.critedge1561 ], [ %.01078, %bb.ux ], [ %.01078, %bb.uz ], [ %.01078, %bb.ud ], [ %.01078, %bb.ug ], [ %.01078, %bb.uh ], [ 1, %bb.ui ], [ %.01078, %bb.uj ]
  %.11073.be = phi i32 [ %.11073, %bb.un ], [ %spec.select1563, %user_data_add.exit ], [ %.11073, %bb.ut ], [ %spec.select1563, %bb.vn ], [ %.11073, %bb.uv ], [ %.11073, %bb.um ], [ %.11073, %bb.uk ], [ %.11073, %bb.uf ], [ %.11073, %bb.uy ], [ %.11073, %bb.uw ], [ %.11073, %bb.vg ], [ %.11073, %.critedge1561 ], [ %.11073, %bb.ux ], [ %.11073, %bb.uz ], [ %.11073, %bb.ud ], [ %.11073, %bb.ug ], [ %.11073, %bb.uh ], [ %.11073, %bb.ui ], [ %.11073, %bb.uj ]
  br label %.preheader1795.preheader

bb.uo:                                            ; preds = %bb.un
  %i.asj = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.ask = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.asj, ptr noundef nonnull @.str.530, i32 noundef %i.ash) #15 ; 0 uses
  br label %.thread1636

bb.up:                                            ; preds = %bb.ud, %bb.ud
  %i.asl = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.asl) #15
  br label %.thread1636

bb.uq:                                            ; preds = %.critedge1554, %bb.uc
  %i.asm = call i32 @fileno_stdout() #15
  %i.asn = sdiv i32 %i.asm, 64
  %i.aso = sext i32 %i.asn to i64
  %i.asp = getelementptr inbounds [8 x i8], ptr %4, i64 %i.aso
  %i.asq = load i64, ptr %i.asp, align 8, !tbaa !16
  %i.asr = call i32 @fileno_stdout() #15
  %i.ass = srem i32 %i.asr, 64
  %i.ast = zext nneg i32 %i.ass to i64
  %i.asu = shl nuw i64 1, %i.ast
  %i.asv = and i64 %i.asu, %i.asq
  %.not1497 = icmp eq i64 %i.asv, 0
  br i1 %.not1497, label %.critedge1558, label %bb.ur

bb.ur:                                            ; preds = %bb.uq
  %i.asw = zext nneg i32 %.01099 to i64
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.asw
  %i.asy = call i32 @raw_write_stdout(ptr noundef %i.asx, i32 noundef %.01101) #15 ; 3 uses
  %i.asz = icmp slt i32 %i.asy, 1
  br i1 %i.asz, label %bb.us, label %bb.ut

bb.us:                                            ; preds = %bb.ur
  %i.ata = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.atb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ata, ptr noundef nonnull @.str.531) #15 ; 0 uses
  br label %.thread1636

bb.ut:                                            ; preds = %bb.ur
  %i.atc = sub nsw i32 %.01101, %i.asy            ; 2 uses
  %i.atd = add nuw nsw i32 %i.asy, %.01099
  %i.ate = icmp slt i32 %i.atc, 1                 ; 2 uses
  %spec.select1559 = select i1 %i.ate, i32 0, i32 %.01088
  %spec.select1560 = select i1 %i.ate, i32 1, i32 %.01078
  br label %.preheader1795.preheader.backedge

.critedge1558:                                    ; preds = %bb.uq
  br i1 %i.ud, label %bb.vf, label %bb.uu

bb.uu:                                            ; preds = %.critedge1558
  %i.atf = call i32 @SSL_get_fd(ptr noundef %i.sa) #15
  %i.atg = sdiv i32 %i.atf, 64
  %i.ath = sext i32 %i.atg to i64
  %i.ati = getelementptr inbounds [8 x i8], ptr %3, i64 %i.ath
  %i.atj = load i64, ptr %i.ati, align 8, !tbaa !16
  %i.atk = call i32 @SSL_get_fd(ptr noundef %i.sa) #15
  %i.atl = srem i32 %i.atk, 64
  %i.atm = zext nneg i32 %i.atl to i64
  %i.atn = shl nuw i64 1, %i.atm
  %i.ato = and i64 %i.atn, %i.atj
  %.not1498 = icmp eq i64 %i.ato, 0
  br i1 %.not1498, label %bb.vf, label %.critedge1561

.critedge1561:                                    ; preds = %bb.ua, %bb.uu
  %i.atp = call i32 @SSL_read(ptr noundef %i.sa, ptr noundef %i.ak, i32 noundef 16384) #15 ; 3 uses
  %i.atq = call i32 @SSL_get_error(ptr noundef %i.sa, i32 noundef %i.atp) #15
  switch i32 %i.atq, label %.preheader1795.preheader.backedge [
    i32 0, label %bb.uv
    i32 9, label %bb.uw
    i32 3, label %bb.ux
    i32 2, label %bb.uy
    i32 4, label %bb.uz
    i32 5, label %bb.va
    i32 6, label %bb.vd
    i32 10, label %bb.ve
    i32 1, label %bb.ve
  ]

bb.uv:                                            ; preds = %.critedge1561
  %i.atr = icmp slt i32 %i.atp, 1
  br i1 %i.atr, label %.thread1750, label %.preheader1795.preheader.backedge

bb.uw:                                            ; preds = %.critedge1561
  %i.ats = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.att = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ats, ptr noundef nonnull @.str.532) #15 ; 0 uses
  call void @wait_for_async(ptr noundef %i.sa) #15
  %i.atu = or i32 %.31083, %.11086
  %or.cond112 = icmp eq i32 %i.atu, 0
  %spec.store.select119 = select i1 %or.cond112, i32 1, i32 %.31083
  br label %.preheader1795.preheader.backedge

bb.ux:                                            ; preds = %.critedge1561
  %i.atv = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.atw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.atv, ptr noundef nonnull @.str.533) #15 ; 0 uses
  br label %.preheader1795.preheader.backedge

bb.uy:                                            ; preds = %.critedge1561
  %i.atx = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.aty = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.atx, ptr noundef nonnull @.str.534) #15 ; 0 uses
  %i.atz = or i32 %.31083, %.11086
  %or.cond114 = icmp eq i32 %i.atz, 0
  %spec.store.select120 = select i1 %or.cond114, i32 1, i32 %.31083
  br label %.preheader1795.preheader.backedge

bb.uz:                                            ; preds = %.critedge1561
  %i.aua = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.aub = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aua, ptr noundef nonnull @.str.535) #15 ; 0 uses
  br label %.preheader1795.preheader.backedge

bb.va:                                            ; preds = %.critedge1561
  %i.auc = tail call ptr @__errno_location() #16
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !14 ; 3 uses
  %i.aue = load ptr, ptr @bio_err, align 8, !tbaa !18 ; 2 uses
  br i1 %.0994.lcssa, label %bb.vc, label %bb.vb

bb.vb:                                            ; preds = %bb.va
  %i.auf = call i32 @BIO_puts(ptr noundef %i.aue, ptr noundef nonnull @.str.536) #15 ; 0 uses
  br label %.thread1636

bb.vc:                                            ; preds = %bb.va
  %i.aug = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aue, ptr noundef nonnull @.str.537, i32 noundef %i.aud) #15 ; 0 uses
  br label %.thread1636

bb.vd:                                            ; preds = %.critedge1561
  %i.auh = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.aui = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.auh, ptr noundef nonnull @.str.538) #15 ; 0 uses
  br label %.thread1636

bb.ve:                                            ; preds = %.critedge1561, %.critedge1561
  %i.auj = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.auj) #15
  br label %.thread1636

bb.vf:                                            ; preds = %bb.uu, %.critedge1558
  br i1 %.01133.lcssa, label %bb.vg, label %.thread1636

bb.vg:                                            ; preds = %bb.vf
  %i.auk = call i32 @fileno_stdin() #15
  %i.aul = sdiv i32 %i.auk, 64
  %i.aum = sext i32 %i.aul to i64
  %i.aun = getelementptr inbounds [8 x i8], ptr %3, i64 %i.aum
  %i.auo = load i64, ptr %i.aun, align 8, !tbaa !16
  %i.aup = call i32 @fileno_stdin() #15
  %i.auq = srem i32 %i.aup, 64
  %i.aur = zext nneg i32 %i.auq to i64
  %i.aus = shl nuw i64 1, %i.aur
  %i.aut = and i64 %i.aus, %i.auo
  %.not1500 = icmp eq i64 %i.aut, 0
  br i1 %.not1500, label %.preheader1795.preheader.backedge, label %bb.vh

bb.vh:                                            ; preds = %bb.vg
  br i1 %.01154.lcssa, label %bb.vl, label %bb.vi

bb.vi:                                            ; preds = %bb.vh
  %i.auu = call i32 @raw_read_stdin(ptr noundef %i.aj, i32 noundef 8192) #15 ; 10 uses
  %i.auv = icmp sgt i32 %i.auu, 0
  br i1 %i.auv, label %.lr.ph3426.preheader, label %.loopexit

.lr.ph3426.preheader:                             ; preds = %bb.vi
  %wide.trip.count3846 = zext nneg i32 %i.auu to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.auu, 8
  br i1 %min.iters.check, label %.lr.ph3426.preheader4715, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph3426.preheader
  %n.vec = and i64 %wide.trip.count3846, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.avc, %vector.body ]
  %vec.phi4713 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.avd, %vector.body ]
  %i.auw = getelementptr inbounds nuw i8, ptr %i.aj, i64 %index ; 2 uses
  %i.aux = getelementptr inbounds nuw i8, ptr %i.auw, i64 4
  %wide.load = load <4 x i8>, ptr %i.auw, align 1, !tbaa !19
  %wide.load4714 = load <4 x i8>, ptr %i.aux, align 1, !tbaa !19
  %i.auy = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.auz = icmp eq <4 x i8> %wide.load4714, splat (i8 10)
  %i.ava = zext <4 x i1> %i.auy to <4 x i32>
  %i.avb = zext <4 x i1> %i.auz to <4 x i32>
  %i.avc = add <4 x i32> %vec.phi, %i.ava         ; 2 uses
  %i.avd = add <4 x i32> %vec.phi4713, %i.avb     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ave = icmp eq i64 %index.next, %n.vec
  br i1 %i.ave, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.avd, %i.avc
  %i.avf = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count3846
  br i1 %cmp.n, label %.lr.ph3432.preheader, label %.lr.ph3426.preheader4715

.lr.ph3426.preheader4715:                         ; preds = %.lr.ph3426.preheader, %middle.block
  %indvars.iv3843.ph = phi i64 [ 0, %.lr.ph3426.preheader ], [ %n.vec, %middle.block ]
  %.09433424.ph = phi i32 [ 0, %.lr.ph3426.preheader ], [ %i.avf, %middle.block ]
  br label %.lr.ph3426

.lr.ph3432.preheader:                             ; preds = %.lr.ph3426, %middle.block
  %spec.select1562.lcssa = phi i32 [ %i.avf, %middle.block ], [ %spec.select1562, %.lr.ph3426 ] ; 4 uses
  %i.avg = zext nneg i32 %i.auu to i64            ; 3 uses
  %xtraiter = and i64 %i.avg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph3432.prol.loopexit, label %.lr.ph3432.prol

.lr.ph3432.prol:                                  ; preds = %.lr.ph3432.preheader
  %indvars.iv.next3849.prol = add nsw i64 %i.avg, -1 ; 5 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next3849.prol
  %10 = load i8, ptr %9, align 1, !tbaa !19       ; 2 uses
  %11 = sext i32 %spec.select1562.lcssa to i64
  %12 = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849.prol
  %13 = getelementptr i8, ptr %12, i64 %11
  store i8 %10, ptr %13, align 1, !tbaa !19
  %14 = icmp eq i8 %10, 10
  br i1 %14, label %15, label %.lr.ph3432.prol.loopexit

15:                                               ; preds = %.lr.ph3432.prol
  %16 = add nsw i32 %spec.select1562.lcssa, -1    ; 2 uses
  %17 = add nuw nsw i32 %i.auu, 1                 ; 2 uses
  %18 = sext i32 %16 to i64
  %19 = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849.prol
  %20 = getelementptr i8, ptr %19, i64 %18
  store i8 13, ptr %20, align 1, !tbaa !19
  br label %.lr.ph3432.prol.loopexit

.lr.ph3432.prol.loopexit:                         ; preds = %.lr.ph3432.prol, %15, %.lr.ph3432.preheader
  %indvars.iv3848.unr = phi i64 [ %i.avg, %.lr.ph3432.preheader ], [ %indvars.iv.next3849.prol, %15 ], [ %indvars.iv.next3849.prol, %.lr.ph3432.prol ]
  %.23430.unr = phi i32 [ %spec.select1562.lcssa, %.lr.ph3432.preheader ], [ %16, %15 ], [ %spec.select1562.lcssa, %.lr.ph3432.prol ]
  %.211123429.unr = phi i32 [ %i.auu, %.lr.ph3432.preheader ], [ %17, %15 ], [ %i.auu, %.lr.ph3432.prol ]
  %.31113.lcssa.unr = phi i32 [ poison, %.lr.ph3432.preheader ], [ %17, %15 ], [ %i.auu, %.lr.ph3432.prol ]
  %21 = icmp eq i32 %i.auu, 1
  br i1 %21, label %.loopexit, label %.lr.ph3432

.lr.ph3426:                                       ; preds = %.lr.ph3426.preheader4715, %.lr.ph3426
  %indvars.iv3843 = phi i64 [ %indvars.iv.next3844, %.lr.ph3426 ], [ %indvars.iv3843.ph, %.lr.ph3426.preheader4715 ] ; 2 uses
  %.09433424 = phi i32 [ %spec.select1562, %.lr.ph3426 ], [ %.09433424.ph, %.lr.ph3426.preheader4715 ]
  %i.avh = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv3843
  %i.avi = load i8, ptr %i.avh, align 1, !tbaa !19
  %i.avj = icmp eq i8 %i.avi, 10
  %i.avk = zext i1 %i.avj to i32
  %spec.select1562 = add nuw nsw i32 %.09433424, %i.avk ; 2 uses
  %indvars.iv.next3844 = add nuw nsw i64 %indvars.iv3843, 1 ; 2 uses
  %exitcond3847.not = icmp eq i64 %indvars.iv.next3844, %wide.trip.count3846
  br i1 %exitcond3847.not, label %.lr.ph3432.preheader, label %.lr.ph3426, !llvm.loop !56

.lr.ph3432:                                       ; preds = %.lr.ph3432.prol.loopexit, %bb.vk
  %indvars.iv3848 = phi i64 [ %indvars.iv.next3849.1, %bb.vk ], [ %indvars.iv3848.unr, %.lr.ph3432.prol.loopexit ] ; 3 uses
  %.23430 = phi i32 [ %.3.a, %bb.vk ], [ %.23430.unr, %.lr.ph3432.prol.loopexit ] ; 3 uses
  %.211123429 = phi i32 [ %.31113.a, %bb.vk ], [ %.211123429.unr, %.lr.ph3432.prol.loopexit ] ; 2 uses
  %indvars.iv.next3849 = add nsw i64 %indvars.iv3848, -1 ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next3849
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !19 ; 2 uses
  %i.avn = sext i32 %.23430 to i64
  %i.avo = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849
  %i.avp = getelementptr i8, ptr %i.avo, i64 %i.avn
  store i8 %i.avm, ptr %i.avp, align 1, !tbaa !19
  %i.avq = icmp eq i8 %i.avm, 10
  br i1 %i.avq, label %22, label %.lr.ph3432.1

22:                                               ; preds = %.lr.ph3432
  %23 = add nsw i32 %.23430, -1                   ; 2 uses
  %24 = add nuw nsw i32 %.211123429, 1
  %25 = sext i32 %23 to i64
  %26 = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849
  %27 = getelementptr i8, ptr %26, i64 %25
  store i8 13, ptr %27, align 1, !tbaa !19
  br label %.lr.ph3432.1

.lr.ph3432.1:                                     ; preds = %.lr.ph3432, %22
  %.31113 = phi i32 [ %24, %22 ], [ %.211123429, %.lr.ph3432 ] ; 2 uses
  %.3 = phi i32 [ %23, %22 ], [ %.23430, %.lr.ph3432 ] ; 3 uses
  %indvars.iv.next3849.1 = add nsw i64 %indvars.iv3848, -2 ; 4 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv.next3849.1
  %29 = load i8, ptr %28, align 1, !tbaa !19      ; 2 uses
  %30 = sext i32 %.3 to i64
  %31 = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849.1
  %32 = getelementptr i8, ptr %31, i64 %30
  store i8 %29, ptr %32, align 1, !tbaa !19
  %33 = icmp eq i8 %29, 10
  br i1 %33, label %bb.vj, label %bb.vk

bb.vj:                                            ; preds = %.lr.ph3432.1
  %i.avr = add nsw i32 %.3, -1                    ; 2 uses
  %i.avs = add nuw nsw i32 %.31113, 1
  %i.avt = sext i32 %i.avr to i64
  %i.avu = getelementptr i8, ptr %i.aj, i64 %indvars.iv.next3849.1
  %i.avv = getelementptr i8, ptr %i.avu, i64 %i.avt
  store i8 13, ptr %i.avv, align 1, !tbaa !19
  br label %bb.vk

bb.vk:                                            ; preds = %bb.vj, %.lr.ph3432.1
  %.31113.a = phi i32 [ %i.avs, %bb.vj ], [ %.31113, %.lr.ph3432.1 ] ; 2 uses
  %.3.a = phi i32 [ %i.avr, %bb.vj ], [ %.3, %.lr.ph3432.1 ]
  %34 = icmp sgt i64 %indvars.iv3848, 2
  br i1 %34, label %.lr.ph3432, label %.loopexit, !llvm.loop !57

bb.vl:                                            ; preds = %bb.vh
  %i.avw = call i32 @raw_read_stdin(ptr noundef %i.aj, i32 noundef 16384) #15
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph3432.prol.loopexit, %bb.vk, %bb.vi, %bb.vl
  %.41114 = phi i32 [ %i.avw, %bb.vl ], [ %i.auu, %bb.vi ], [ %.31113.lcssa.unr, %.lr.ph3432.prol.loopexit ], [ %.31113.a, %bb.vk ] ; 4 uses
  %i.avx = icmp eq i32 %.41114, 0
  %spec.select1563 = select i1 %i.avx, i32 1, i32 %.11073 ; 2 uses
  %i.avy = icmp slt i32 %.41114, 1
  %or.cond116 = and i1 %.0996.lcssa, %i.avy
  br i1 %or.cond116, label %bb.vm, label %bb.vn

bb.vm:                                            ; preds = %.loopexit
  %i.avz = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.awa = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.avz, ptr noundef nonnull @.str.531) #15 ; 0 uses
  br label %.thread1636

bb.vn:                                            ; preds = %.loopexit
  %i.awb = icmp sgt i32 %.41114, 0
  br i1 %i.awb, label %bb.vo, label %.preheader1795.preheader.backedge

bb.vo:                                            ; preds = %bb.vn
  %i.awc = zext nneg i32 %.41114 to i64           ; 2 uses
  %i.awd = load i64, ptr %i.uy, align 8, !tbaa !37
  %.not.i = icmp ne i64 %i.awd, 0
  %i.awe = load i64, ptr %i.ux, align 8
  %i.awf = icmp ult i64 %i.awe, %i.awc
  %or.cond1788 = select i1 %.not.i, i1 true, i1 %i.awf
  br i1 %or.cond1788, label %.thread1636, label %user_data_add.exit

user_data_add.exit:                               ; preds = %bb.vo
  store i64 %i.awc, ptr %i.uy, align 8, !tbaa !37
  store i64 0, ptr %i.vc, align 8, !tbaa !38
  br label %.preheader1795.preheader.backedge

.thread1636:                                      ; preds = %bb.qu, %bb.qt, %bb.pp, %bb.pn, %bb.pm, %bb.po, %bb.pk, %bb.og, %bb.ph, %bb.vo, %bb.vf, %.preheader1793, %.tail.thread, %bb.ro, %bb.qr, %bb.qp, %bb.qn, %.preheader1802._crit_edge, %bb.qk, %bb.qi, %bb.qg, %bb.qe, %bb.pj, %bb.uo, %.thread1691, %.thread1687, %bb.rd, %.thread1648, %bb.pe, %bb.ox, %bb.op, %bb.ns, %.thread1617, %bb.te, %bb.vb, %bb.vc, %bb.vm, %bb.ve, %bb.vd, %bb.us, %bb.up, %bb.ul, %bb.tu, %bb.nk
  %.31247 = phi ptr [ %.21246, %bb.vb ], [ %.21246, %bb.vc ], [ %.21246, %bb.vd ], [ %.21246, %bb.ve ], [ %.21246, %bb.ro ], [ %.21246, %bb.vm ], [ %.21246, %bb.ph ], [ %.21246, %bb.us ], [ %.21246, %bb.ul ], [ %.21246, %bb.uo ], [ %.21246, %bb.up ], [ %.21246, %bb.tu ], [ %i.xi, %bb.nk ], [ %.21246, %.thread1691 ], [ %.21246, %.thread1687 ], [ %.21246, %bb.op ], [ %.21246, %bb.ox ], [ %.21246, %bb.pe ], [ %.21246, %.tail.thread ], [ %.21246, %bb.qg ], [ %.21246, %.thread1648 ], [ %.21246, %bb.qi ], [ %.21246, %bb.qr ], [ %.21246, %bb.rd ], [ %.21246, %bb.qk ], [ %.21246, %.preheader1802._crit_edge ], [ %.012441621, %bb.ns ], [ %i.wa, %.thread1617 ], [ %.21246, %bb.te ], [ %.21246, %bb.pj ], [ %.21246, %.preheader1793 ], [ %.21246, %bb.qn ], [ %.21246, %bb.qp ], [ %.21246, %bb.vo ], [ %.21246, %bb.qe ], [ %.21246, %bb.vf ], [ %.21246, %bb.og ], [ %.21246, %bb.pk ], [ %.21246, %bb.po ], [ %.21246, %bb.pm ], [ %.21246, %bb.pn ], [ %.21246, %bb.pp ], [ %.21246, %bb.qt ], [ %.21246, %bb.qu ]
  %.41153 = phi i32 [ %.31152, %bb.vb ], [ %.31152, %bb.vc ], [ %.31152, %bb.vd ], [ %.31152, %bb.ve ], [ %.01149, %bb.ro ], [ %.31152, %bb.vm ], [ %.01149, %bb.ph ], [ %.31152, %bb.us ], [ %.31152, %bb.ul ], [ %.31152, %bb.uo ], [ %.31152, %bb.up ], [ %.31152, %bb.tu ], [ %.01149, %bb.nk ], [ %.01149, %.thread1691 ], [ %.01149, %.thread1687 ], [ %.01149, %bb.op ], [ %.01149, %bb.ox ], [ %.01149, %bb.pe ], [ %.01149, %.tail.thread ], [ %.01149, %bb.qg ], [ %.01149, %.thread1648 ], [ %.01149, %bb.qi ], [ %.01149, %bb.qr ], [ %.01149, %bb.rd ], [ %.01149, %bb.qk ], [ %.01149, %.preheader1802._crit_edge ], [ %.01149, %bb.ns ], [ %.01149, %.thread1617 ], [ %.31152, %bb.te ], [ %.01149, %bb.pj ], [ %.31152, %.preheader1793 ], [ %.01149, %bb.qn ], [ %.01149, %bb.qp ], [ %.31152, %bb.vo ], [ %.01149, %bb.qe ], [ %.31152, %bb.vf ], [ %.01149, %bb.og ], [ %.01149, %bb.pk ], [ %.01149, %bb.po ], [ %.01149, %bb.pm ], [ %.01149, %bb.pn ], [ %.01149, %bb.pp ], [ %.01149, %bb.qt ], [ %.01149, %bb.qu ]
  %.31122 = phi i32 [ %i.aud, %bb.vb ], [ %i.aud, %bb.vc ], [ 0, %bb.vd ], [ 1, %bb.ve ], [ 1, %bb.ro ], [ 0, %bb.vm ], [ 1, %bb.ph ], [ 0, %bb.us ], [ 0, %bb.ul ], [ 1, %bb.uo ], [ 1, %bb.up ], [ 1, %bb.tu ], [ 1, %bb.nk ], [ 1, %.thread1691 ], [ 1, %.thread1687 ], [ 1, %bb.op ], [ 1, %bb.ox ], [ 1, %bb.pe ], [ 1, %.tail.thread ], [ 1, %bb.qg ], [ 1, %.thread1648 ], [ 1, %bb.qi ], [ 1, %bb.qr ], [ 1, %bb.rd ], [ 1, %bb.qk ], [ 1, %.preheader1802._crit_edge ], [ 1, %bb.ns ], [ 1, %.thread1617 ], [ 0, %bb.te ], [ 1, %bb.pj ], [ 0, %.preheader1793 ], [ 1, %bb.qn ], [ 1, %bb.qp ], [ 0, %bb.vo ], [ 1, %bb.qe ], [ 0, %bb.vf ], [ 1, %bb.og ], [ 1, %bb.pk ], [ 1, %bb.po ], [ 1, %bb.pm ], [ 1, %bb.pn ], [ 1, %bb.pp ], [ 1, %bb.qt ], [ 1, %bb.qu ]
  %.31118 = phi i32 [ %.21117, %bb.vb ], [ %.21117, %bb.vc ], [ %.21117, %bb.vd ], [ %.21117, %bb.ve ], [ %.01115, %bb.ro ], [ %.21117, %bb.vm ], [ %.01115, %bb.ph ], [ %.21117, %bb.us ], [ %.21117, %bb.ul ], [ %.21117, %bb.uo ], [ %.21117, %bb.up ], [ %.21117, %bb.tu ], [ %.01115, %bb.nk ], [ %.01115, %.thread1691 ], [ %.01115, %.thread1687 ], [ %.01115, %bb.op ], [ %.01115, %bb.ox ], [ %.01115, %bb.pe ], [ %.01115, %.tail.thread ], [ %.01115, %bb.qg ], [ %.01115, %.thread1648 ], [ %.01115, %bb.qi ], [ %.01115, %bb.qr ], [ %.01115, %bb.rd ], [ %.01115, %bb.qk ], [ %.01115, %.preheader1802._crit_edge ], [ %.01115, %bb.ns ], [ %.01115, %.thread1617 ], [ %.21117, %bb.te ], [ %.01115, %bb.pj ], [ %.21117, %.preheader1793 ], [ %.01115, %bb.qn ], [ %.01115, %bb.qp ], [ %.21117, %bb.vo ], [ %.01115, %bb.qe ], [ %.21117, %bb.vf ], [ %.01115, %bb.og ], [ %.01115, %bb.pk ], [ %.01115, %bb.po ], [ %.01115, %bb.pm ], [ %.01115, %bb.pn ], [ %.01115, %bb.pp ], [ %.01115, %bb.qt ], [ %.01115, %bb.qu ]
  %.not1504 = icmp eq i32 %.31118, 0
  br i1 %.not1504, label %bb.vq, label %bb.vp

bb.vp:                                            ; preds = %.thread1636
  %i.awg = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  call fastcc void @print_stuff(ptr noundef %i.awg, ptr noundef %i.sa, i32 noundef %.41153)
  br label %bb.vq

bb.vq:                                            ; preds = %bb.vp, %.thread1636
  call void @do_ssl_shutdown(ptr noundef %i.sa) #15
  %i.awh = call i32 @SSL_get_fd(ptr noundef %i.sa) #15
  %i.awi = call i32 @shutdown(i32 noundef %i.awh, i32 noundef 1) #15 ; 0 uses
  store i64 0, ptr %2, align 8, !tbaa !75
  store i64 500000, ptr %i.up, align 8, !tbaa !76
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vs, %bb.vq
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !16
  %i.awj = load i32, ptr %i.o, align 4, !tbaa !14 ; 3 uses
  %i.awk = srem i32 %i.awj, 64
  %i.awl = zext nneg i32 %i.awk to i64
  %i.awm = shl nuw i64 1, %i.awl
  %i.awn = sdiv i32 %i.awj, 64
  %i.awo = sext i32 %i.awn to i64
  %i.awp = getelementptr inbounds [8 x i8], ptr %3, i64 %i.awo ; 2 uses
  %i.awq = load i64, ptr %i.awp, align 8, !tbaa !16
  %i.awr = or i64 %i.awm, %i.awq
  store i64 %i.awr, ptr %i.awp, align 8, !tbaa !16
  %i.aws = add nsw i32 %i.awj, 1
  %i.awt = call i32 @select(i32 noundef %i.aws, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #15
  %i.awu = icmp sgt i32 %i.awt, 0
  br i1 %i.awu, label %bb.vs, label %.critedge118

bb.vs:                                            ; preds = %bb.vr
  %i.awv = call i32 @BIO_read(ptr noundef %.31247, ptr noundef %i.ak, i32 noundef 16384) #15
  %i.aww = icmp sgt i32 %i.awv, 0
  br i1 %i.aww, label %bb.vr, label %.critedge118, !llvm.loop !58

.critedge118:                                     ; preds = %bb.vr, %bb.vs
  %i.awx = call i32 @SSL_get_fd(ptr noundef %i.sa) #15
  %i.awy = call i32 @BIO_closesocket(i32 noundef %i.awx) #15 ; 0 uses
  br label %.thread1750

.thread1750:                                      ; preds = %bb.mr, %bb.ue, %bb.uv, %bb.ml, %bb.mo, %bb.nn, %bb.or, %.critedge118, %bb.nh, %bb.pl, %bb.qc, %.thread1683, %bb.qw, %bb.rb, %bb.rf, %bb.rm, %bb.li, %bb.lg, %bb.le, %bb.mh, %bb.mf, %bb.md, %bb.lx, %bb.lv, %bb.lt, %bb.ky, %bb.lb, %bb.lr, %bb.mb
  %.411231782 = phi i32 [ 1, %bb.li ], [ 1, %bb.mb ], [ 1, %bb.lr ], [ 1, %bb.lb ], [ 1, %bb.ky ], [ 1, %bb.lt ], [ 1, %bb.lv ], [ 1, %bb.lx ], [ 1, %bb.md ], [ 1, %bb.mf ], [ 1, %bb.mh ], [ 1, %bb.le ], [ 1, %bb.lg ], [ 1, %bb.mo ], [ 1, %bb.rf ], [ %.31122, %.critedge118 ], [ 1, %bb.rm ], [ 1, %.thread1683 ], [ 1, %bb.or ], [ 1, %bb.pl ], [ 1, %bb.qc ], [ 1, %bb.nn ], [ 1, %bb.rb ], [ 1, %bb.nh ], [ 1, %bb.ue ], [ 1, %bb.ml ], [ 1, %bb.qw ], [ 1, %bb.uv ], [ 1, %bb.mr ]
  %.312311774 = phi ptr [ %.01228.lcssa, %bb.li ], [ %.01228.lcssa, %bb.mb ], [ %.01228.lcssa, %bb.lr ], [ %.01228.lcssa, %bb.lb ], [ %.01228.lcssa, %bb.ky ], [ %.01228.lcssa, %bb.lt ], [ null, %bb.lv ], [ %.01228.lcssa, %bb.lx ], [ %.01228.lcssa, %bb.md ], [ %.01228.lcssa, %bb.mf ], [ %.01228.lcssa, %bb.mh ], [ %.01228.lcssa, %bb.le ], [ %.01228.lcssa, %bb.lg ], [ %.01228.lcssa, %bb.mo ], [ %.01228.lcssa, %bb.rf ], [ %.01228.lcssa, %.critedge118 ], [ %.01228.lcssa, %bb.rm ], [ %.01228.lcssa, %.thread1683 ], [ %.01228.lcssa, %bb.or ], [ %.01228.lcssa, %bb.pl ], [ %.01228.lcssa, %bb.qc ], [ %.01228.lcssa, %bb.nn ], [ %.01228.lcssa, %bb.rb ], [ %.01228.lcssa, %bb.nh ], [ %.01228.lcssa, %bb.ue ], [ %.01228.lcssa, %bb.ml ], [ %.01228.lcssa, %bb.qw ], [ %.01228.lcssa, %bb.uv ], [ %.01228.lcssa, %bb.mr ]
  br i1 %.01135.lcssa, label %bb.vu, label %bb.vt

bb.vt:                                            ; preds = %.thread1750
  %i.awz = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  call fastcc void @print_stuff(ptr noundef %i.awz, ptr noundef %i.sa, i32 noundef 1)
  br label %bb.vu

bb.vu:                                            ; preds = %bb.vt, %.thread1750
  call void @SSL_free(ptr noundef nonnull %i.sa) #15
  br label %.thread1714

.thread1714:                                      ; preds = %bb.dz, %bb.be, %bb.bd, %bb.ar, %bb.ap, %bb.ab, %bb.jl, %bb.jj, %bb.ha, %bb.gx, %bb.gb, %bb.ft, %bb.fv, %bb.ez, %bb.fp, %bb.ge, %bb.gl, %bb.gn, %bb.gv, %bb.hb, %bb.hg, %bb.hl, %bb.hq, %bb.ic, %bb.ih, %bb.ik, %bb.in, %bb.is, %bb.iu, %bb.iy, %bb.jb, %.thread1599, %bb.ke, %bb.kg, %bb.kj, %bb.kk, %bb.ko, %bb.kt, %bb.ks, %bb.kr, %bb.jp, %bb.hx, %bb.hv, %bb.ht, %bb.hn, %bb.hj, %bb.gt, %bb.gr, %bb.gp, %bb.gi, %bb.gf, %bb.dq, %bb.bx, %bb.bm, %bb.ao, %bb.m, %.loopexit1808, %bb.k, %bb.i, %bb.f, %bb.d, %bb.a, %bb.vu
  %.49891747 = phi ptr [ %.09853309, %bb.f ], [ %.3988, %bb.vu ], [ %.0985.lcssa, %bb.ez ], [ %.0985.lcssa, %bb.fp ], [ null, %bb.a ], [ %.0985.lcssa, %bb.ge ], [ %.0985.lcssa, %bb.gl ], [ %.0985.lcssa, %bb.gn ], [ %.0985.lcssa, %bb.gv ], [ %.0985.lcssa, %bb.gb ], [ %.0985.lcssa, %bb.hb ], [ null, %bb.hg ], [ %.3988, %bb.hl ], [ %.3988, %bb.hq ], [ %.3988, %bb.ic ], [ %.3988, %bb.ih ], [ %.3988, %bb.ik ], [ %.3988, %bb.in ], [ %.3988, %bb.is ], [ %.3988, %bb.iu ], [ %.3988, %bb.iy ], [ %.3988, %bb.jb ], [ %.0985.lcssa, %bb.ha ], [ %.3988, %.thread1599 ], [ %.3988, %bb.ke ], [ %.3988, %bb.kg ], [ %.3988, %bb.kj ], [ %.3988, %bb.kk ], [ %.3988, %bb.ko ], [ %.3988, %bb.kt ], [ %.3988, %bb.ks ], [ %.3988, %bb.kr ], [ %.3988, %bb.jp ], [ %.3988, %bb.hx ], [ %.3988, %bb.hv ], [ %.3988, %bb.ht ], [ %.3988, %bb.hn ], [ %.2987, %bb.hj ], [ %.0985.lcssa, %bb.gt ], [ %.0985.lcssa, %bb.gr ], [ %.0985.lcssa, %bb.gp ], [ %.0985.lcssa, %bb.gi ], [ %.0985.lcssa, %bb.gf ], [ %.09853309, %bb.d ], [ %.09853309, %bb.dq ], [ %.09853309, %bb.bx ], [ null, %bb.bm ], [ %.0985.lcssa, %bb.fv ], [ %.0985.lcssa, %bb.ft ], [ %.0985.lcssa, %bb.gx ], [ %.3988, %bb.jj ], [ %.09853309, %bb.ao ], [ %.3988, %bb.jl ], [ %.09853309, %bb.m ], [ %.09852268, %.loopexit1808 ], [ %.09853309, %bb.k ], [ %.09853309, %bb.i ], [ %.09853309, %bb.ab ], [ %.09853309, %bb.ap ], [ %.09853309, %bb.ar ], [ %.09853309, %bb.bd ], [ %.09853309, %bb.be ], [ %.09853309, %bb.dz ]
  %.410521746 = phi ptr [ null, %bb.f ], [ %.31051, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ %.31051, %bb.ge ], [ %.31051, %bb.gl ], [ %.31051, %bb.gn ], [ %.31051, %bb.gv ], [ %.11049, %bb.gb ], [ %.31051, %bb.hb ], [ %.31051, %bb.hg ], [ %.31051, %bb.hl ], [ %.31051, %bb.hq ], [ %.31051, %bb.ic ], [ %.31051, %bb.ih ], [ %.31051, %bb.ik ], [ %.31051, %bb.in ], [ %.31051, %bb.is ], [ %.31051, %bb.iu ], [ %.31051, %bb.iy ], [ %.31051, %bb.jb ], [ %.31051, %bb.ha ], [ %.31051, %.thread1599 ], [ %.31051, %bb.ke ], [ %.31051, %bb.kg ], [ %.31051, %bb.kj ], [ %.31051, %bb.kk ], [ %.31051, %bb.ko ], [ %.31051, %bb.kt ], [ %.31051, %bb.ks ], [ %.31051, %bb.kr ], [ %.31051, %bb.jp ], [ %.31051, %bb.hx ], [ %.31051, %bb.hv ], [ %.31051, %bb.ht ], [ %.31051, %bb.hn ], [ %.31051, %bb.hj ], [ %.31051, %bb.gt ], [ %.31051, %bb.gr ], [ %.31051, %bb.gp ], [ %.31051, %bb.gi ], [ %.31051, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ %.11049, %bb.fv ], [ null, %bb.ft ], [ %.31051, %bb.gx ], [ %.31051, %bb.jj ], [ null, %bb.ao ], [ %.31051, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.210611745 = phi ptr [ %.010593280, %bb.f ], [ %.01059.lcssa, %bb.vu ], [ %.01059.lcssa, %bb.ez ], [ %.01059.lcssa, %bb.fp ], [ null, %bb.a ], [ %.01059.lcssa, %bb.ge ], [ %.01059.lcssa, %bb.gl ], [ %.01059.lcssa, %bb.gn ], [ %.01059.lcssa, %bb.gv ], [ %.01059.lcssa, %bb.gb ], [ %.01059.lcssa, %bb.hb ], [ %.01059.lcssa, %bb.hg ], [ %.01059.lcssa, %bb.hl ], [ %.01059.lcssa, %bb.hq ], [ %.01059.lcssa, %bb.ic ], [ %.01059.lcssa, %bb.ih ], [ %.01059.lcssa, %bb.ik ], [ %.01059.lcssa, %bb.in ], [ %.01059.lcssa, %bb.is ], [ %.01059.lcssa, %bb.iu ], [ %.01059.lcssa, %bb.iy ], [ %.01059.lcssa, %bb.jb ], [ %.01059.lcssa, %bb.ha ], [ %.01059.lcssa, %.thread1599 ], [ %.01059.lcssa, %bb.ke ], [ %.01059.lcssa, %bb.kg ], [ %.01059.lcssa, %bb.kj ], [ %.01059.lcssa, %bb.kk ], [ %.01059.lcssa, %bb.ko ], [ %.01059.lcssa, %bb.kt ], [ %.01059.lcssa, %bb.ks ], [ %.01059.lcssa, %bb.kr ], [ %.01059.lcssa, %bb.jp ], [ %.01059.lcssa, %bb.hx ], [ %.01059.lcssa, %bb.hv ], [ %.01059.lcssa, %bb.ht ], [ %.01059.lcssa, %bb.hn ], [ %.01059.lcssa, %bb.hj ], [ %.01059.lcssa, %bb.gt ], [ %.01059.lcssa, %bb.gr ], [ %.01059.lcssa, %bb.gp ], [ %.01059.lcssa, %bb.gi ], [ %.01059.lcssa, %bb.gf ], [ %.010593280, %bb.d ], [ %.010593280, %bb.dq ], [ %.010593280, %bb.bx ], [ %.010593280, %bb.bm ], [ %.01059.lcssa, %bb.fv ], [ %.01059.lcssa, %bb.ft ], [ %.01059.lcssa, %bb.gx ], [ %.01059.lcssa, %bb.jj ], [ %.010593280, %bb.ao ], [ %.01059.lcssa, %bb.jl ], [ %.010593280, %bb.m ], [ %.010592607, %.loopexit1808 ], [ %.010593280, %bb.k ], [ %.010593280, %bb.i ], [ %.010593280, %bb.ab ], [ %.010593280, %bb.ap ], [ %.010593280, %bb.ar ], [ %.010593280, %bb.bd ], [ %.010593280, %bb.be ], [ %.010593280, %bb.dz ]
  %.411231744 = phi i32 [ 1, %bb.f ], [ %.411231782, %bb.vu ], [ 1, %bb.ez ], [ 1, %bb.fp ], [ 1, %bb.a ], [ 1, %bb.ge ], [ 1, %bb.gl ], [ 1, %bb.gn ], [ 1, %bb.gv ], [ 1, %bb.gb ], [ 1, %bb.hb ], [ 1, %bb.hg ], [ 1, %bb.hl ], [ 1, %bb.hq ], [ 1, %bb.ic ], [ 1, %bb.ih ], [ 1, %bb.ik ], [ 1, %bb.in ], [ 1, %bb.is ], [ 1, %bb.iu ], [ 1, %bb.iy ], [ 1, %bb.jb ], [ 1, %bb.ha ], [ 1, %.thread1599 ], [ 1, %bb.ke ], [ 1, %bb.kg ], [ 1, %bb.kj ], [ 1, %bb.kk ], [ 1, %bb.ko ], [ 1, %bb.kt ], [ 1, %bb.ks ], [ 1, %bb.kr ], [ 1, %bb.jp ], [ 1, %bb.hx ], [ 1, %bb.hv ], [ 1, %bb.ht ], [ 1, %bb.hn ], [ 1, %bb.hj ], [ 1, %bb.gt ], [ 1, %bb.gr ], [ 1, %bb.gp ], [ 1, %bb.gi ], [ 1, %bb.gf ], [ 1, %bb.d ], [ 1, %bb.dq ], [ 1, %bb.bx ], [ 1, %bb.bm ], [ 1, %bb.fv ], [ 1, %bb.ft ], [ 1, %bb.gx ], [ 1, %bb.jj ], [ 1, %bb.ao ], [ 1, %bb.jl ], [ 0, %bb.m ], [ 1, %.loopexit1808 ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.ab ], [ 1, %bb.ap ], [ 1, %bb.ar ], [ 1, %bb.bd ], [ 1, %bb.be ], [ 1, %bb.dz ]
  %.311881743 = phi ptr [ null, %bb.f ], [ %.21187, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ %.21187, %bb.ge ], [ %.21187, %bb.gl ], [ %.21187, %bb.gn ], [ %.21187, %bb.gv ], [ %i.kg, %bb.gb ], [ %.21187, %bb.hb ], [ %.21187, %bb.hg ], [ %.21187, %bb.hl ], [ %.21187, %bb.hq ], [ %.21187, %bb.ic ], [ %.21187, %bb.ih ], [ %.21187, %bb.ik ], [ %.21187, %bb.in ], [ %.21187, %bb.is ], [ %.21187, %bb.iu ], [ %.21187, %bb.iy ], [ %.21187, %bb.jb ], [ %.21187, %bb.ha ], [ %.21187, %.thread1599 ], [ %.21187, %bb.ke ], [ %.21187, %bb.kg ], [ %.21187, %bb.kj ], [ %.21187, %bb.kk ], [ %.21187, %bb.ko ], [ %.21187, %bb.kt ], [ %.21187, %bb.ks ], [ %.21187, %bb.kr ], [ %.21187, %bb.jp ], [ %.21187, %bb.hx ], [ %.21187, %bb.hv ], [ %.21187, %bb.ht ], [ %.21187, %bb.hn ], [ %.21187, %bb.hj ], [ %.21187, %bb.gt ], [ %.21187, %bb.gr ], [ %.21187, %bb.gp ], [ %.21187, %bb.gi ], [ %.21187, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ %i.kg, %bb.fv ], [ null, %bb.ft ], [ %.21187, %bb.gx ], [ %.21187, %bb.jj ], [ null, %bb.ao ], [ %.21187, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.311921742 = phi ptr [ null, %bb.f ], [ %.21191, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ %.21191, %bb.ge ], [ %.21191, %bb.gl ], [ %.21191, %bb.gn ], [ %.21191, %bb.gv ], [ %i.ke, %bb.gb ], [ %.21191, %bb.hb ], [ %.21191, %bb.hg ], [ %.21191, %bb.hl ], [ %.21191, %bb.hq ], [ %.21191, %bb.ic ], [ %.21191, %bb.ih ], [ %.21191, %bb.ik ], [ %.21191, %bb.in ], [ %.21191, %bb.is ], [ %.21191, %bb.iu ], [ %.21191, %bb.iy ], [ %.21191, %bb.jb ], [ %.21191, %bb.ha ], [ %.21191, %.thread1599 ], [ %.21191, %bb.ke ], [ %.21191, %bb.kg ], [ %.21191, %bb.kj ], [ %.21191, %bb.kk ], [ %.21191, %bb.ko ], [ %.21191, %bb.kt ], [ %.21191, %bb.ks ], [ %.21191, %bb.kr ], [ %.21191, %bb.jp ], [ %.21191, %bb.hx ], [ %.21191, %bb.hv ], [ %.21191, %bb.ht ], [ %.21191, %bb.hn ], [ %.21191, %bb.hj ], [ %.21191, %bb.gt ], [ %.21191, %bb.gr ], [ %.21191, %bb.gp ], [ %.21191, %bb.gi ], [ %.21191, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ %i.ke, %bb.fv ], [ null, %bb.ft ], [ %.21191, %bb.gx ], [ %.21191, %bb.jj ], [ null, %bb.ao ], [ %.21191, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.012121741 = phi ptr [ %i.al, %bb.f ], [ %i.al, %bb.vu ], [ %i.al, %bb.ez ], [ %i.al, %bb.fp ], [ null, %bb.a ], [ %i.al, %bb.ge ], [ %i.al, %bb.gl ], [ %i.al, %bb.gn ], [ %i.al, %bb.gv ], [ %i.al, %bb.gb ], [ %i.al, %bb.hb ], [ %i.al, %bb.hg ], [ %i.al, %bb.hl ], [ %i.al, %bb.hq ], [ %i.al, %bb.ic ], [ %i.al, %bb.ih ], [ %i.al, %bb.ik ], [ %i.al, %bb.in ], [ %i.al, %bb.is ], [ %i.al, %bb.iu ], [ %i.al, %bb.iy ], [ %i.al, %bb.jb ], [ %i.al, %bb.ha ], [ %i.al, %.thread1599 ], [ %i.al, %bb.ke ], [ %i.al, %bb.kg ], [ %i.al, %bb.kj ], [ %i.al, %bb.kk ], [ %i.al, %bb.ko ], [ %i.al, %bb.kt ], [ %i.al, %bb.ks ], [ %i.al, %bb.kr ], [ %i.al, %bb.jp ], [ %i.al, %bb.hx ], [ %i.al, %bb.hv ], [ %i.al, %bb.ht ], [ %i.al, %bb.hn ], [ %i.al, %bb.hj ], [ %i.al, %bb.gt ], [ %i.al, %bb.gr ], [ %i.al, %bb.gp ], [ %i.al, %bb.gi ], [ %i.al, %bb.gf ], [ %i.al, %bb.d ], [ %i.al, %bb.dq ], [ %i.al, %bb.bx ], [ %i.al, %bb.bm ], [ %i.al, %bb.fv ], [ %i.al, %bb.ft ], [ %i.al, %bb.gx ], [ %i.al, %bb.jj ], [ %i.al, %bb.ao ], [ %i.al, %bb.jl ], [ %i.al, %bb.m ], [ %i.al, %.loopexit1808 ], [ %i.al, %bb.k ], [ %i.al, %bb.i ], [ %i.al, %bb.ab ], [ %i.al, %bb.ap ], [ %i.al, %bb.ar ], [ %i.al, %bb.bd ], [ %i.al, %bb.be ], [ %i.al, %bb.dz ]
  %.012131740 = phi ptr [ %i.ak, %bb.f ], [ %i.ak, %bb.vu ], [ %i.ak, %bb.ez ], [ %i.ak, %bb.fp ], [ null, %bb.a ], [ %i.ak, %bb.ge ], [ %i.ak, %bb.gl ], [ %i.ak, %bb.gn ], [ %i.ak, %bb.gv ], [ %i.ak, %bb.gb ], [ %i.ak, %bb.hb ], [ %i.ak, %bb.hg ], [ %i.ak, %bb.hl ], [ %i.ak, %bb.hq ], [ %i.ak, %bb.ic ], [ %i.ak, %bb.ih ], [ %i.ak, %bb.ik ], [ %i.ak, %bb.in ], [ %i.ak, %bb.is ], [ %i.ak, %bb.iu ], [ %i.ak, %bb.iy ], [ %i.ak, %bb.jb ], [ %i.ak, %bb.ha ], [ %i.ak, %.thread1599 ], [ %i.ak, %bb.ke ], [ %i.ak, %bb.kg ], [ %i.ak, %bb.kj ], [ %i.ak, %bb.kk ], [ %i.ak, %bb.ko ], [ %i.ak, %bb.kt ], [ %i.ak, %bb.ks ], [ %i.ak, %bb.kr ], [ %i.ak, %bb.jp ], [ %i.ak, %bb.hx ], [ %i.ak, %bb.hv ], [ %i.ak, %bb.ht ], [ %i.ak, %bb.hn ], [ %i.ak, %bb.hj ], [ %i.ak, %bb.gt ], [ %i.ak, %bb.gr ], [ %i.ak, %bb.gp ], [ %i.ak, %bb.gi ], [ %i.ak, %bb.gf ], [ %i.ak, %bb.d ], [ %i.ak, %bb.dq ], [ %i.ak, %bb.bx ], [ %i.ak, %bb.bm ], [ %i.ak, %bb.fv ], [ %i.ak, %bb.ft ], [ %i.ak, %bb.gx ], [ %i.ak, %bb.jj ], [ %i.ak, %bb.ao ], [ %i.ak, %bb.jl ], [ %i.ak, %bb.m ], [ %i.ak, %.loopexit1808 ], [ %i.ak, %bb.k ], [ %i.ak, %bb.i ], [ %i.ak, %bb.ab ], [ %i.ak, %bb.ap ], [ %i.ak, %bb.ar ], [ %i.ak, %bb.bd ], [ %i.ak, %bb.be ], [ %i.ak, %bb.dz ]
  %.012141739 = phi ptr [ %i.aj, %bb.f ], [ %i.aj, %bb.vu ], [ %i.aj, %bb.ez ], [ %i.aj, %bb.fp ], [ null, %bb.a ], [ %i.aj, %bb.ge ], [ %i.aj, %bb.gl ], [ %i.aj, %bb.gn ], [ %i.aj, %bb.gv ], [ %i.aj, %bb.gb ], [ %i.aj, %bb.hb ], [ %i.aj, %bb.hg ], [ %i.aj, %bb.hl ], [ %i.aj, %bb.hq ], [ %i.aj, %bb.ic ], [ %i.aj, %bb.ih ], [ %i.aj, %bb.ik ], [ %i.aj, %bb.in ], [ %i.aj, %bb.is ], [ %i.aj, %bb.iu ], [ %i.aj, %bb.iy ], [ %i.aj, %bb.jb ], [ %i.aj, %bb.ha ], [ %i.aj, %.thread1599 ], [ %i.aj, %bb.ke ], [ %i.aj, %bb.kg ], [ %i.aj, %bb.kj ], [ %i.aj, %bb.kk ], [ %i.aj, %bb.ko ], [ %i.aj, %bb.kt ], [ %i.aj, %bb.ks ], [ %i.aj, %bb.kr ], [ %i.aj, %bb.jp ], [ %i.aj, %bb.hx ], [ %i.aj, %bb.hv ], [ %i.aj, %bb.ht ], [ %i.aj, %bb.hn ], [ %i.aj, %bb.hj ], [ %i.aj, %bb.gt ], [ %i.aj, %bb.gr ], [ %i.aj, %bb.gp ], [ %i.aj, %bb.gi ], [ %i.aj, %bb.gf ], [ %i.aj, %bb.d ], [ %i.aj, %bb.dq ], [ %i.aj, %bb.bx ], [ %i.aj, %bb.bm ], [ %i.aj, %bb.fv ], [ %i.aj, %bb.ft ], [ %i.aj, %bb.gx ], [ %i.aj, %bb.jj ], [ %i.aj, %bb.ao ], [ %i.aj, %bb.jl ], [ %i.aj, %bb.m ], [ %i.aj, %.loopexit1808 ], [ %i.aj, %bb.k ], [ %i.aj, %bb.i ], [ %i.aj, %bb.ab ], [ %i.aj, %bb.ap ], [ %i.aj, %bb.ar ], [ %i.aj, %bb.bd ], [ %i.aj, %bb.be ], [ %i.aj, %bb.dz ]
  %.212251738 = phi ptr [ null, %bb.f ], [ %.11224, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ null, %bb.ge ], [ null, %bb.gl ], [ null, %bb.gn ], [ null, %bb.gv ], [ null, %bb.gb ], [ %.11224, %bb.hb ], [ %.11224, %bb.hg ], [ %.11224, %bb.hl ], [ %.11224, %bb.hq ], [ %.11224, %bb.ic ], [ %.11224, %bb.ih ], [ %.11224, %bb.ik ], [ %.11224, %bb.in ], [ %.11224, %bb.is ], [ %.11224, %bb.iu ], [ %.11224, %bb.iy ], [ %.11224, %bb.jb ], [ %i.mh, %bb.ha ], [ %.11224, %.thread1599 ], [ %.11224, %bb.ke ], [ %.11224, %bb.kg ], [ %.11224, %bb.kj ], [ %.11224, %bb.kk ], [ %.11224, %bb.ko ], [ %.11224, %bb.kt ], [ %.11224, %bb.ks ], [ %.11224, %bb.kr ], [ %.11224, %bb.jp ], [ %.11224, %bb.hx ], [ %.11224, %bb.hv ], [ %.11224, %bb.ht ], [ %.11224, %bb.hn ], [ %.11224, %bb.hj ], [ null, %bb.gt ], [ null, %bb.gr ], [ null, %bb.gp ], [ null, %bb.gi ], [ null, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ null, %bb.fv ], [ null, %bb.ft ], [ null, %bb.gx ], [ %.11224, %bb.jj ], [ null, %bb.ao ], [ %.11224, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.312311737 = phi ptr [ %.012283235, %bb.f ], [ %.312311774, %bb.vu ], [ %.01228.lcssa, %bb.ez ], [ %.01228.lcssa, %bb.fp ], [ null, %bb.a ], [ %.01228.lcssa, %bb.ge ], [ %.01228.lcssa, %bb.gl ], [ %.01228.lcssa, %bb.gn ], [ %.01228.lcssa, %bb.gv ], [ %.01228.lcssa, %bb.gb ], [ %.01228.lcssa, %bb.hb ], [ %.01228.lcssa, %bb.hg ], [ %.01228.lcssa, %bb.hl ], [ %.01228.lcssa, %bb.hq ], [ %.01228.lcssa, %bb.ic ], [ %.01228.lcssa, %bb.ih ], [ %.01228.lcssa, %bb.ik ], [ %.01228.lcssa, %bb.in ], [ %.01228.lcssa, %bb.is ], [ %.01228.lcssa, %bb.iu ], [ %.01228.lcssa, %bb.iy ], [ %.01228.lcssa, %bb.jb ], [ %.01228.lcssa, %bb.ha ], [ %.01228.lcssa, %.thread1599 ], [ %.01228.lcssa, %bb.ke ], [ %.01228.lcssa, %bb.kg ], [ %.01228.lcssa, %bb.kj ], [ %.01228.lcssa, %bb.kk ], [ %.01228.lcssa, %bb.ko ], [ %.01228.lcssa, %bb.kt ], [ %.01228.lcssa, %bb.ks ], [ %.01228.lcssa, %bb.kr ], [ %.01228.lcssa, %bb.jp ], [ %.01228.lcssa, %bb.hx ], [ %.01228.lcssa, %bb.hv ], [ %.01228.lcssa, %bb.ht ], [ %.01228.lcssa, %bb.hn ], [ %.01228.lcssa, %bb.hj ], [ %.01228.lcssa, %bb.gt ], [ %.01228.lcssa, %bb.gr ], [ %.01228.lcssa, %bb.gp ], [ %.01228.lcssa, %bb.gi ], [ %.01228.lcssa, %bb.gf ], [ %.012283235, %bb.d ], [ %.112291572, %bb.dq ], [ %.012283235, %bb.bx ], [ %.012283235, %bb.bm ], [ %.01228.lcssa, %bb.fv ], [ %.01228.lcssa, %bb.ft ], [ %.01228.lcssa, %bb.gx ], [ %.01228.lcssa, %bb.jj ], [ %.012283235, %bb.ao ], [ %.01228.lcssa, %bb.jl ], [ %.012283235, %bb.m ], [ %.012283193, %.loopexit1808 ], [ %.012283235, %bb.k ], [ %.012283235, %bb.i ], [ %.012283235, %bb.ab ], [ %.012283235, %bb.ap ], [ %.012283235, %bb.ar ], [ %.012283235, %bb.bd ], [ %.012283235, %bb.be ], [ %.012283235, %bb.dz ]
  %.312371736 = phi ptr [ %.012343233, %bb.f ], [ %.01234.lcssa, %bb.vu ], [ %.01234.lcssa, %bb.ez ], [ %.01234.lcssa, %bb.fp ], [ null, %bb.a ], [ %.01234.lcssa, %bb.ge ], [ %.01234.lcssa, %bb.gl ], [ %.01234.lcssa, %bb.gn ], [ %.01234.lcssa, %bb.gv ], [ %.01234.lcssa, %bb.gb ], [ %.01234.lcssa, %bb.hb ], [ %.01234.lcssa, %bb.hg ], [ %.01234.lcssa, %bb.hl ], [ %.01234.lcssa, %bb.hq ], [ %.01234.lcssa, %bb.ic ], [ %.01234.lcssa, %bb.ih ], [ %.01234.lcssa, %bb.ik ], [ %.01234.lcssa, %bb.in ], [ %.01234.lcssa, %bb.is ], [ %.01234.lcssa, %bb.iu ], [ %.01234.lcssa, %bb.iy ], [ %.01234.lcssa, %bb.jb ], [ %.01234.lcssa, %bb.ha ], [ %.01234.lcssa, %.thread1599 ], [ %.01234.lcssa, %bb.ke ], [ %.01234.lcssa, %bb.kg ], [ %.01234.lcssa, %bb.kj ], [ %.01234.lcssa, %bb.kk ], [ %.01234.lcssa, %bb.ko ], [ %.01234.lcssa, %bb.kt ], [ %.01234.lcssa, %bb.ks ], [ %.01234.lcssa, %bb.kr ], [ %.01234.lcssa, %bb.jp ], [ %.01234.lcssa, %bb.hx ], [ %.01234.lcssa, %bb.hv ], [ %.01234.lcssa, %bb.ht ], [ %.01234.lcssa, %bb.hn ], [ %.01234.lcssa, %bb.hj ], [ %.01234.lcssa, %bb.gt ], [ %.01234.lcssa, %bb.gr ], [ %.01234.lcssa, %bb.gp ], [ %.01234.lcssa, %bb.gi ], [ %.01234.lcssa, %bb.gf ], [ %.012343233, %bb.d ], [ %.012343233, %bb.dq ], [ %.012343233, %bb.bx ], [ %.012343233, %bb.bm ], [ %.01234.lcssa, %bb.fv ], [ %.01234.lcssa, %bb.ft ], [ %.01234.lcssa, %bb.gx ], [ %.01234.lcssa, %bb.jj ], [ %.112351568, %bb.ao ], [ %.01234.lcssa, %bb.jl ], [ %.012343233, %bb.m ], [ %.012343220, %.loopexit1808 ], [ %.012343233, %bb.k ], [ %.012343233, %bb.i ], [ %.012343233, %bb.ab ], [ %.012343233, %bb.ap ], [ %.012343233, %bb.ar ], [ %.012343233, %bb.bd ], [ %.012343233, %bb.be ], [ %.012343233, %bb.dz ]
  %.112391735 = phi ptr [ null, %bb.f ], [ %.01238, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ null, %bb.ge ], [ null, %bb.gl ], [ null, %bb.gn ], [ %.01238, %bb.gv ], [ null, %bb.gb ], [ %.01238, %bb.hb ], [ %.01238, %bb.hg ], [ %.01238, %bb.hl ], [ %.01238, %bb.hq ], [ %.01238, %bb.ic ], [ %.01238, %bb.ih ], [ %.01238, %bb.ik ], [ %.01238, %bb.in ], [ %.01238, %bb.is ], [ %.01238, %bb.iu ], [ %.01238, %bb.iy ], [ %.01238, %bb.jb ], [ %.01238, %bb.ha ], [ %.01238, %.thread1599 ], [ %.01238, %bb.ke ], [ %.01238, %bb.kg ], [ %.01238, %bb.kj ], [ %.01238, %bb.kk ], [ %.01238, %bb.ko ], [ %.01238, %bb.kt ], [ %.01238, %bb.ks ], [ %.01238, %bb.kr ], [ %.01238, %bb.jp ], [ %.01238, %bb.hx ], [ %.01238, %bb.hv ], [ %.01238, %bb.ht ], [ %.01238, %bb.hn ], [ %.01238, %bb.hj ], [ null, %bb.gt ], [ null, %bb.gr ], [ null, %bb.gp ], [ null, %bb.gi ], [ null, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ null, %bb.fv ], [ null, %bb.ft ], [ %.01238, %bb.gx ], [ %.01238, %bb.jj ], [ null, %bb.ao ], [ %.01238, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.012401734 = phi ptr [ null, %bb.f ], [ %i.nj, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ null, %bb.ge ], [ null, %bb.gl ], [ null, %bb.gn ], [ null, %bb.gv ], [ null, %bb.gb ], [ null, %bb.hb ], [ null, %bb.hg ], [ null, %bb.hl ], [ %i.nj, %bb.hq ], [ %i.nj, %bb.ic ], [ %i.nj, %bb.ih ], [ %i.nj, %bb.ik ], [ %i.nj, %bb.in ], [ %i.nj, %bb.is ], [ %i.nj, %bb.iu ], [ %i.nj, %bb.iy ], [ %i.nj, %bb.jb ], [ null, %bb.ha ], [ %i.nj, %.thread1599 ], [ %i.nj, %bb.ke ], [ %i.nj, %bb.kg ], [ %i.nj, %bb.kj ], [ %i.nj, %bb.kk ], [ %i.nj, %bb.ko ], [ %i.nj, %bb.kt ], [ %i.nj, %bb.ks ], [ %i.nj, %bb.kr ], [ %i.nj, %bb.jp ], [ %i.nj, %bb.hx ], [ %i.nj, %bb.hv ], [ %i.nj, %bb.ht ], [ null, %bb.hn ], [ null, %bb.hj ], [ null, %bb.gt ], [ null, %bb.gr ], [ null, %bb.gp ], [ null, %bb.gi ], [ null, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ null, %bb.fv ], [ null, %bb.ft ], [ null, %bb.gx ], [ %i.nj, %bb.jj ], [ null, %bb.ao ], [ %i.nj, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %.112431733 = phi ptr [ null, %bb.f ], [ %.01242, %bb.vu ], [ null, %bb.ez ], [ null, %bb.fp ], [ null, %bb.a ], [ null, %bb.ge ], [ null, %bb.gl ], [ null, %bb.gn ], [ %.01242, %bb.gv ], [ null, %bb.gb ], [ %.01242, %bb.hb ], [ %.01242, %bb.hg ], [ %.01242, %bb.hl ], [ %.01242, %bb.hq ], [ %.01242, %bb.ic ], [ %.01242, %bb.ih ], [ %.01242, %bb.ik ], [ %.01242, %bb.in ], [ %.01242, %bb.is ], [ %.01242, %bb.iu ], [ %.01242, %bb.iy ], [ %.01242, %bb.jb ], [ %.01242, %bb.ha ], [ %.01242, %.thread1599 ], [ %.01242, %bb.ke ], [ %.01242, %bb.kg ], [ %.01242, %bb.kj ], [ %.01242, %bb.kk ], [ %.01242, %bb.ko ], [ %.01242, %bb.kt ], [ %.01242, %bb.ks ], [ %.01242, %bb.kr ], [ %.01242, %bb.jp ], [ %.01242, %bb.hx ], [ %.01242, %bb.hv ], [ %.01242, %bb.ht ], [ %.01242, %bb.hn ], [ %.01242, %bb.hj ], [ %.01242, %bb.gt ], [ null, %bb.gr ], [ null, %bb.gp ], [ null, %bb.gi ], [ null, %bb.gf ], [ null, %bb.d ], [ null, %bb.dq ], [ null, %bb.bx ], [ null, %bb.bm ], [ null, %bb.fv ], [ null, %bb.ft ], [ %.01242, %bb.gx ], [ %.01242, %bb.jj ], [ null, %bb.ao ], [ %.01242, %bb.jl ], [ null, %bb.m ], [ null, %.loopexit1808 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.ab ], [ null, %bb.ap ], [ null, %bb.ar ], [ null, %bb.bd ], [ null, %bb.be ], [ null, %bb.dz ]
  %i.axa = load ptr, ptr @psksess, align 8, !tbaa !29
  call void @SSL_SESSION_free(ptr noundef %i.axa) #15
  %i.axb = load ptr, ptr @next_proto, align 8, !tbaa !27
  call void @CRYPTO_free(ptr noundef %i.axb, ptr noundef nonnull @.str.396, i32 noundef 3385) #15
  call void @SSL_CTX_free(ptr noundef %.012401734) #15
  %i.axc = call i32 @set_keylog_file(ptr noundef null, ptr noundef null) #15 ; 0 uses
  call void @X509_free(ptr noundef %.112391735) #15
  call void @OPENSSL_sk_pop_free(ptr noundef %.212251738, ptr noundef nonnull @X509_CRL_free) #15
  call void @EVP_PKEY_free(ptr noundef %.112431733) #15
  %i.axd = load ptr, ptr %i.a, align 8, !tbaa !60
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.axd) #15
  %i.axe = load ptr, ptr %i.j, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axe, ptr noundef nonnull @.str.396, i32 noundef 3393) #15
  %i.axf = load ptr, ptr %6, align 8, !tbaa !85
  call void @CRYPTO_free(ptr noundef %i.axf, ptr noundef nonnull @.str.396, i32 noundef 3395) #15
  call void @CRYPTO_free(ptr noundef %.410521746, ptr noundef nonnull @.str.396, i32 noundef 3397) #15
  %i.axg = load ptr, ptr %i.t, align 8, !tbaa !64
  call void @BIO_ADDR_free(ptr noundef %i.axg) #15
  %i.axh = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axh, ptr noundef nonnull @.str.396, i32 noundef 3399) #15
  %i.axi = load ptr, ptr %i.e, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axi, ptr noundef nonnull @.str.396, i32 noundef 3400) #15
  %i.axj = load ptr, ptr %i.h, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axj, ptr noundef nonnull @.str.396, i32 noundef 3401) #15
  %i.axk = load ptr, ptr %i.i, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axk, ptr noundef nonnull @.str.396, i32 noundef 3402) #15
  %i.axl = load ptr, ptr %i.f, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axl, ptr noundef nonnull @.str.396, i32 noundef 3403) #15
  %i.axm = load ptr, ptr %i.g, align 8, !tbaa !13
  call void @CRYPTO_free(ptr noundef %i.axm, ptr noundef nonnull @.str.396, i32 noundef 3404) #15
  call void @CRYPTO_free(ptr noundef %.311921742, ptr noundef nonnull @.str.396, i32 noundef 3405) #15
  call void @CRYPTO_free(ptr noundef %.311881743, ptr noundef nonnull @.str.396, i32 noundef 3406) #15
  call void @X509_VERIFY_PARAM_free(ptr noundef %i.ab) #15
  %i.axn = load ptr, ptr %i.b, align 8, !tbaa !62
  call void @ssl_excert_free(ptr noundef %i.axn) #15
  call void @OPENSSL_sk_free(ptr noundef %.312371736) #15
  call void @OPENSSL_sk_free(ptr noundef %.312311737) #15
  call void @SSL_CONF_CTX_free(ptr noundef %i.ac) #15
  call void @CRYPTO_clear_free(ptr noundef %.012141739, i64 noundef 16384, ptr noundef nonnull @.str.396, i32 noundef 3412) #15
  call void @CRYPTO_clear_free(ptr noundef %.012131740, i64 noundef 16384, ptr noundef nonnull @.str.396, i32 noundef 3413) #15
  call void @CRYPTO_clear_free(ptr noundef %.012121741, i64 noundef 16384, ptr noundef nonnull @.str.396, i32 noundef 3414) #15
  %i.axo = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @clear_free(ptr noundef %i.axo) #15
  call void @release_engine(ptr noundef %.210611745) #15
  %i.axp = load ptr, ptr @bio_c_out, align 8, !tbaa !18
  %i.axq = call i32 @BIO_free(ptr noundef %i.axp) #15 ; 0 uses
  store ptr null, ptr @bio_c_out, align 8, !tbaa !18
  %i.axr = call i32 @BIO_free(ptr noundef %.49891747) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.411231744
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @TLS_client_method() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

end_hunk_1
