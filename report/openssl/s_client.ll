Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/s_client?download=true
inline.NumInlined: 59
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
@.str.605 = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.606 = private unnamed_addr constant [9 x i8] c"selector\00", align 1
@.str.607 = private unnamed_addr constant [6 x i8] c"mtype\00", align 1
@.str.608 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.609 = private unnamed_addr constant [39 x i8] c"%s: warning: bad TLSA %s field in: %s\0A\00", align 1
@.str.610 = private unnamed_addr constant [39 x i8] c"%s: warning: unusable TLSA rrdata: %s\0A\00", align 1
@.str.611 = private unnamed_addr constant [44 x i8] c"%s: warning: error loading TLSA rrdata: %s\0A\00", align 1
@saved_errno = internal unnamed_addr global i32 0, align 4
@.str.612 = private unnamed_addr constant [10 x i8] c"hexdecode\00", align 1
@.str.613 = private unnamed_addr constant [23 x i8] c"---\0ACertificate chain\0A\00", align 1
@.str.614 = private unnamed_addr constant [7 x i8] c"%2d s:\00", align 1
@.str.615 = private unnamed_addr constant [7 x i8] c"\0A   i:\00", align 1
@.str.616 = private unnamed_addr constant [17 x i8] c"   v:NotBefore: \00", align 1
@.str.617 = private unnamed_addr constant [13 x i8] c"; NotAfter: \00", align 1
@.str.618 = private unnamed_addr constant [20 x i8] c"Server certificate\0A\00", align 1
@.str.619 = private unnamed_addr constant [31 x i8] c"no peer certificate available\0A\00", align 1
@.str.620 = private unnamed_addr constant [44 x i8] c"Client-to-server raw public key negotiated\0A\00", align 1
@.str.621 = private unnamed_addr constant [44 x i8] c"Server-to-client raw public key negotiated\0A\00", align 1
@.str.622 = private unnamed_addr constant [23 x i8] c"Server raw public key\0A\00", align 1
@.str.623 = private unnamed_addr constant [23 x i8] c"no peer rpk available\0A\00", align 1
@.str.624 = private unnamed_addr constant [23 x i8] c"---\0ASCTs present (%i)\0A\00", align 1
@.str.625 = private unnamed_addr constant [27 x i8] c"SCT validation status: %s\0A\00", align 1
@.str.626 = private unnamed_addr constant [6 x i8] c"\0A---\0A\00", align 1
@.str.627 = private unnamed_addr constant [60 x i8] c"---\0ASSL handshake has read %ju bytes and written %ju bytes\0A\00", align 1
@.str.628 = private unnamed_addr constant [13 x i8] c"---\0AReused, \00", align 1
@.str.629 = private unnamed_addr constant [10 x i8] c"---\0ANew, \00", align 1
@.str.630 = private unnamed_addr constant [18 x i8] c"%s, Cipher is %s\0A\00", align 1
@.str.631 = private unnamed_addr constant [14 x i8] c"Protocol: %s\0A\00", align 1
@.str.632 = private unnamed_addr constant [29 x i8] c"Server public key is %d bit\0A\00", align 1
@.str.633 = private unnamed_addr constant [31 x i8] c"Compression: %s\0AExpansion: %s\0A\00", align 1
@.str.634 = private unnamed_addr constant [5 x i8] c"NONE\00", align 1
@.str.635 = private unnamed_addr constant [21 x i8] c"Next protocol: (%d) \00", align 1
@.str.636 = private unnamed_addr constant [16 x i8] c"ALPN protocol: \00", align 1
@.str.637 = private unnamed_addr constant [20 x i8] c"No ALPN negotiated\0A\00", align 1
@.str.638 = private unnamed_addr constant [39 x i8] c"SRTP Extension negotiated, profile=%s\0A\00", align 1
@.str.639 = private unnamed_addr constant [25 x i8] c"Early data was not sent\0A\00", align 1
@.str.640 = private unnamed_addr constant [25 x i8] c"Early data was rejected\0A\00", align 1
@.str.641 = private unnamed_addr constant [25 x i8] c"Early data was accepted\0A\00", align 1
@.str.642 = private unnamed_addr constant [30 x i8] c"Verify return code: %ld (%s)\0A\00", align 1
@.str.643 = private unnamed_addr constant [64 x i8] c"Keying material exporter:\0A    Label: '%s'\0A    Length: %i bytes\0A\00", align 1
@.str.644 = private unnamed_addr constant [11 x i8] c"export key\00", align 1
@.str.645 = private unnamed_addr constant [11 x i8] c"    Error\0A\00", align 1
@.str.646 = private unnamed_addr constant [22 x i8] c"    Keying material: \00", align 1
@.str.647 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.648 = private unnamed_addr constant [16 x i8] c"ECH: inner: %s\0A\00", align 1
@.str.649 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.650 = private unnamed_addr constant [16 x i8] c"ECH: outer: %s\0A\00", align 1
@.str.651 = private unnamed_addr constant [33 x i8] c"   a:PKEY: %s, (%s); sigalg: %s\0A\00", align 1
@.str.652 = private unnamed_addr constant [37 x i8] c"   a:PKEY: %s, %d (bit); sigalg: %s\0A\00", align 1
@.str.653 = private unnamed_addr constant [20 x i8] c"ECH: not tried: %d\0A\00", align 1
@.str.654 = private unnamed_addr constant [27 x i8] c"ECH: tried but failed: %d\0A\00", align 1
@.str.655 = private unnamed_addr constant [31 x i8] c"ECH: failed+retry-configs: %d\0A\00", align 1
@.str.656 = private unnamed_addr constant [18 x i8] c"ECH: success: %d\0A\00", align 1
@.str.657 = private unnamed_addr constant [31 x i8] c"ECH: GREASE+retry-configs: %d\0A\00", align 1
@.str.658 = private unnamed_addr constant [18 x i8] c"ECH: BACKEND: %d\0A\00", align 1
@.str.659 = private unnamed_addr constant [17 x i8] c"ECH: GREASE: %d\0A\00", align 1
@.str.660 = private unnamed_addr constant [19 x i8] c"ECH: BAD CALL: %d\0A\00", align 1
@.str.661 = private unnamed_addr constant [19 x i8] c"ECH: BAD NAME: %d\0A\00", align 1
@.str.662 = private unnamed_addr constant [25 x i8] c"ECH: NOT CONFIGURED: %d\0A\00", align 1
@.str.663 = private unnamed_addr constant [28 x i8] c"ECH: unexpected status: %d\0A\00", align 1
@.str.664 = private unnamed_addr constant [34 x i8] c"ECH: Error getting retry-configs\0A\00", align 1
@.str.665 = private unnamed_addr constant [34 x i8] c"ECH: Error loading retry-configs\0A\00", align 1
@.str.666 = private unnamed_addr constant [27 x i8] c"ECH: Got %d retry-configs\0A\00", align 1
@.str.667 = private unnamed_addr constant [37 x i8] c"ECH: Error getting retry-config %d.\0A\00", align 1
@.str.668 = private unnamed_addr constant [44 x i8] c"ECH: entry: %d public_name: %s age: %lld%s\0A\00", align 1
@.str.669 = private unnamed_addr constant [19 x i8] c" (has private key)\00", align 1
@.str.670 = private unnamed_addr constant [10 x i8] c"ECH: \09%s\0A\00", align 1
@.str.671 = private unnamed_addr constant [17 x i8] c"OCSP responses: \00", align 1
@.str.672 = private unnamed_addr constant [19 x i8] c"no responses sent\0A\00", align 1
@.str.673 = private unnamed_addr constant [24 x i8] c"number of responses: %d\00", align 1
@.str.674 = private unnamed_addr constant [16 x i8] c"OCSP response: \00", align 1
@.str.675 = private unnamed_addr constant [27 x i8] c"no OCSP response received\0A\00", align 1
@.str.676 = private unnamed_addr constant [27 x i8] c"OCSP response parse error\0A\00", align 1
@.str.677 = private unnamed_addr constant [27 x i8] c"no OCSP response to print\0A\00", align 1
@.str.678 = private unnamed_addr constant [41 x i8] c"\0A======================================\0A\00", align 1
@.str.679 = private unnamed_addr constant [26 x i8] c"Unexpected LDAP response\0A\00", align 1
@.str.680 = private unnamed_addr constant [14 x i8] c"No MessageID\0A\00", align 1
@.str.681 = private unnamed_addr constant [22 x i8] c"Not ExtendedResponse\0A\00", align 1
@.str.682 = private unnamed_addr constant [16 x i8] c"Not LDAPResult\0A\00", align 1
@.str.683 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.684 = private unnamed_addr constant [6 x i8] c"noreq\00", align 1
@.str.685 = private unnamed_addr constant [52 x i8] c"ERROR PROCESSING COMMAND. REST OF LINE IGNORED: %s\0A\00", align 1
@.str.686 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.687 = private unnamed_addr constant [4 x i8] c"fin\00", align 1
@.str.688 = private unnamed_addr constant [6 x i8] c"keyup\00", align 1
@.str.689 = private unnamed_addr constant [6 x i8] c"reneg\00", align 1
@.str.690 = private unnamed_addr constant [36 x i8] c"UNRECOGNISED COMMAND (IGNORED): %s\0A\00", align 1
@.str.691 = private unnamed_addr constant [36 x i8] c"BAD ARGUMENT (COMMAND IGNORED): %s\0A\00", align 1
@.str.692 = private unnamed_addr constant [300 x i8] c"Enter text to send to the peer followed by <enter>\0ATo issue a command insert {cmd} or {cmd:arg} anywhere in the text\0AEntering {{ will send { to the peer\0AThe following commands are available\0A  {help}: Get this help text\0A  {quit}: Close the connection to the peer\0A  {reconnect}: Reconnect to the peer\0A\00", align 1
@.str.693 = private unnamed_addr constant [65 x i8] c"  {fin}: Send FIN on the stream. No further writing is possible\0A\00", align 1
@.str.694 = private unnamed_addr constant [196 x i8] c"  {keyup:req|noreq}: Send a Key Update message\0A                     Arguments:\0A                     req   = peer update requested (default)\0A                     noreq = peer update not requested\0A\00", align 1
@.str.695 = private unnamed_addr constant [35 x i8] c"  {reneg}: Attempt to renegotiate\0A\00", align 1
@.str.696 = private unnamed_addr constant [14 x i8] c"RECONNECTING\0A\00", align 1
@.str.697 = private unnamed_addr constant [15 x i8] c"RENEGOTIATING\0A\00", align 1
@.str.698 = private unnamed_addr constant [11 x i8] c"KEYUPDATE\0A\00", align 1
@switch.table.print_stuff = private unnamed_addr constant [3 x ptr] [ptr @.str.639, ptr @.str.640, ptr @.str.641], align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @s_client_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
.preheader1955.preheader:
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
  %i.v = alloca i64, align 8                      ; 5 uses
  %8 = alloca %union.BIO_sock_info_u, align 8     ; 10 uses
  %i.w = alloca i32, align 4                      ; 8 uses
  %i.x = alloca i64, align 8                      ; 7 uses
  %i.y = alloca i64, align 8                      ; 6 uses
  %i.z = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store ptr null, ptr %i.a, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !62
  %i.aa = tail call ptr @TLS_client_method() #16  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store ptr null, ptr %i.d, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  store ptr null, ptr %i.e, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  store ptr null, ptr %i.f, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #16
  store ptr null, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #16
  store ptr null, ptr %i.i, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #16
  store ptr null, ptr %i.j, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #16
  store i32 0, ptr %i.k, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #16
  store i32 0, ptr %i.n, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #16
  store i32 -1, ptr %i.o, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #16
  store i32 0, ptr %i.p, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #16
  store i32 0, ptr %i.q, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) @__const.s_client_main.srp_arg, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #16
  store ptr null, ptr %i.t, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %4, i8 0, i64 128, i1 false), !tbaa !15
  store i1 false, ptr @c_quiet, align 4
  store i1 false, ptr @c_debug, align 4
  store i1 false, ptr @c_showcerts, align 4
  %i.ab = tail call ptr @CRYPTO_strdup(ptr noundef nonnull @.str.416, ptr noundef nonnull @.str.417, i32 noundef 1118) #16 ; 2 uses
  store ptr %i.ab, ptr %i.g, align 8, !tbaa !12
  %i.ac = tail call ptr @X509_VERIFY_PARAM_new() #16 ; 6 uses
  %i.ad = tail call ptr @SSL_CONF_CTX_new() #16   ; 4 uses
  %i.ae = icmp eq ptr %i.ab, null
  %i.af = icmp eq ptr %i.ac, null
  %or.cond = select i1 %i.ae, i1 true, i1 %i.af
  %i.ag = icmp eq ptr %i.ad, null
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ag
  br i1 %or.cond3, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.preheader1955.preheader
  %i.ah = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.ai = tail call ptr @opt_getprog() #16
  %i.aj = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ah, ptr noundef nonnull @.str.418, ptr noundef %i.ai) #16 ; 0 uses
  br label %.thread1818

bb.b:                                             ; preds = %.preheader1955.preheader
  %i.ak = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.419) #16 ; 115 uses
  %i.al = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.420) #16 ; 125 uses
  %i.am = tail call ptr @app_malloc(i64 noundef 16384, ptr noundef nonnull @.str.421) #16 ; 158 uses
  %i.an = tail call i32 @SSL_CONF_CTX_set_flags(ptr noundef nonnull %i.ad, i32 noundef 5) #16 ; 0 uses
  %i.ao = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @s_client_options) #16
  store ptr %i.ao, ptr @prog, align 8, !tbaa !12
  %i.ap = tail call i32 @opt_next() #16           ; 2 uses
  %.not3301 = icmp eq i32 %i.ap, 0
  br i1 %.not3301, label %._crit_edge, label %.lr.ph3388

.lr.ph3388:                                       ; preds = %bb.b
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph3388, %.loopexit1951
  %i.at = phi i32 [ %i.ap, %.lr.ph3388 ], [ %i.ij, %.loopexit1951 ] ; 9 uses
  %.010123387 = phi i32 [ 0, %.lr.ph3388 ], [ %.11013, %.loopexit1951 ] ; 134 uses
  %.010143386 = phi i32 [ 0, %.lr.ph3388 ], [ %.11015, %.loopexit1951 ] ; 134 uses
  %.010163385 = phi i32 [ 0, %.lr.ph3388 ], [ %.11017, %.loopexit1951 ] ; 134 uses
  %.010183384 = phi i32 [ 0, %.lr.ph3388 ], [ %.11019, %.loopexit1951 ] ; 134 uses
  %.010203383 = phi ptr [ null, %.lr.ph3388 ], [ %.11021, %.loopexit1951 ] ; 134 uses
  %.010223382 = phi i32 [ 0, %.lr.ph3388 ], [ %.11023, %.loopexit1951 ] ; 127 uses
  %.010243381 = phi i32 [ 0, %.lr.ph3388 ], [ %.11025, %.loopexit1951 ] ; 127 uses
  %.010263380 = phi ptr [ null, %.lr.ph3388 ], [ %.11027, %.loopexit1951 ] ; 134 uses
  %.010283379 = phi ptr [ null, %.lr.ph3388 ], [ %.11029, %.loopexit1951 ] ; 134 uses
  %.010303378 = phi ptr [ null, %.lr.ph3388 ], [ %.11031, %.loopexit1951 ] ; 156 uses
  %.010353377 = phi i32 [ 0, %.lr.ph3388 ], [ %.11036, %.loopexit1951 ] ; 132 uses
  %.010373376 = phi i32 [ 0, %.lr.ph3388 ], [ %.11038, %.loopexit1951 ] ; 134 uses
  %.010393375 = phi i32 [ 0, %.lr.ph3388 ], [ %.11040, %.loopexit1951 ] ; 134 uses
  %.010413374 = phi i32 [ 0, %.lr.ph3388 ], [ %.11042, %.loopexit1951 ] ; 132 uses
  %.010433373 = phi i32 [ 0, %.lr.ph3388 ], [ %.11044, %.loopexit1951 ] ; 133 uses
  %.010453372 = phi i32 [ 0, %.lr.ph3388 ], [ %.11046, %.loopexit1951 ] ; 134 uses
  %.010473371 = phi i8 [ 0, %.lr.ph3388 ], [ %.11048, %.loopexit1951 ] ; 131 uses
  %.010493370 = phi i32 [ 0, %.lr.ph3388 ], [ %.11050, %.loopexit1951 ] ; 135 uses
  %.010513369 = phi i32 [ 2, %.lr.ph3388 ], [ %.11052, %.loopexit1951 ] ; 131 uses
  %.010533368 = phi i32 [ 0, %.lr.ph3388 ], [ %.11054, %.loopexit1951 ] ; 134 uses
  %.010553367 = phi i32 [ 0, %.lr.ph3388 ], [ %.11056, %.loopexit1951 ] ; 134 uses
  %.010573366 = phi i32 [ 0, %.lr.ph3388 ], [ %.11058, %.loopexit1951 ] ; 134 uses
  %.010593365 = phi i32 [ 0, %.lr.ph3388 ], [ %.11060, %.loopexit1951 ] ; 134 uses
  %.010613364 = phi i32 [ 0, %.lr.ph3388 ], [ %spec.select, %.loopexit1951 ]
  %.010633363 = phi i32 [ 0, %.lr.ph3388 ], [ %.11064, %.loopexit1951 ] ; 2 uses
  %.010653362 = phi i32 [ 0, %.lr.ph3388 ], [ %.11066, %.loopexit1951 ] ; 128 uses
  %.010673361 = phi i32 [ 0, %.lr.ph3388 ], [ %.11068, %.loopexit1951 ] ; 128 uses
  %.010693360 = phi i32 [ 0, %.lr.ph3388 ], [ %.11070, %.loopexit1951 ] ; 133 uses
  %.010713359 = phi ptr [ null, %.lr.ph3388 ], [ %.11072, %.loopexit1951 ] ; 134 uses
  %.010733358 = phi ptr [ null, %.lr.ph3388 ], [ %.11074, %.loopexit1951 ] ; 134 uses
  %.010753357 = phi i32 [ 0, %.lr.ph3388 ], [ %.11076, %.loopexit1951 ] ; 134 uses
  %.010773356 = phi ptr [ null, %.lr.ph3388 ], [ %.11078, %.loopexit1951 ] ; 134 uses
  %.010793355 = phi ptr [ null, %.lr.ph3388 ], [ %.11080, %.loopexit1951 ] ; 134 uses
  %.010833354 = phi i32 [ 0, %.lr.ph3388 ], [ %.31086, %.loopexit1951 ] ; 134 uses
  %.010873353 = phi ptr [ null, %.lr.ph3388 ], [ %.11088, %.loopexit1951 ] ; 134 uses
  %.010913352 = phi ptr [ null, %.lr.ph3388 ], [ %.11092, %.loopexit1951 ] ; 134 uses
  %.010933351 = phi ptr [ null, %.lr.ph3388 ], [ %.11094, %.loopexit1951 ] ; 134 uses
  %.010953350 = phi i32 [ 0, %.lr.ph3388 ], [ %.11096, %.loopexit1951 ] ; 134 uses
  %.011023349 = phi ptr [ null, %.lr.ph3388 ], [ %.11103, %.loopexit1951 ] ; 134 uses
  %.011093348 = phi i64 [ 0, %.lr.ph3388 ], [ %.11110, %.loopexit1951 ] ; 134 uses
  %.011113347 = phi i32 [ 0, %.lr.ph3388 ], [ %.11112, %.loopexit1951 ] ; 134 uses
  %.011133346 = phi i32 [ 0, %.lr.ph3388 ], [ %.11114, %.loopexit1951 ] ; 134 uses
  %.011153345 = phi i32 [ 0, %.lr.ph3388 ], [ %.11116, %.loopexit1951 ] ; 134 uses
  %.011353344 = phi i32 [ 0, %.lr.ph3388 ], [ %.11136, %.loopexit1951 ] ; 134 uses
  %.011373343 = phi i32 [ 1, %.lr.ph3388 ], [ %.11138, %.loopexit1951 ] ; 127 uses
  %.011393342 = phi i32 [ 0, %.lr.ph3388 ], [ %.11140, %.loopexit1951 ] ; 132 uses
  %.011413341 = phi i32 [ 1, %.lr.ph3388 ], [ %.11142, %.loopexit1951 ] ; 133 uses
  %.011483340 = phi i32 [ 0, %.lr.ph3388 ], [ %.11149, %.loopexit1951 ] ; 134 uses
  %.011533339 = phi i32 [ 0, %.lr.ph3388 ], [ %.11154, %.loopexit1951 ] ; 134 uses
  %.011703338 = phi i32 [ 0, %.lr.ph3388 ], [ %.11171, %.loopexit1951 ] ; 135 uses
  %.011723337 = phi i32 [ 0, %.lr.ph3388 ], [ %.11173, %.loopexit1951 ] ; 132 uses
  %.011743336 = phi i32 [ 0, %.lr.ph3388 ], [ %.11175, %.loopexit1951 ] ; 134 uses
  %.011773335 = phi i32 [ 0, %.lr.ph3388 ], [ %.11178, %.loopexit1951 ] ; 133 uses
  %.011793334 = phi i32 [ 0, %.lr.ph3388 ], [ %.11180, %.loopexit1951 ] ; 134 uses
  %.011813333 = phi i32 [ 0, %.lr.ph3388 ], [ %.11182, %.loopexit1951 ] ; 156 uses
  %.012003332 = phi i32 [ 0, %.lr.ph3388 ], [ %.11201, %.loopexit1951 ] ; 134 uses
  %.012023331 = phi i32 [ 0, %.lr.ph3388 ], [ %.11203, %.loopexit1951 ] ; 134 uses
  %.012043330 = phi i32 [ 0, %.lr.ph3388 ], [ %.11205, %.loopexit1951 ] ; 134 uses
  %.012063329 = phi i32 [ 0, %.lr.ph3388 ], [ %.11207, %.loopexit1951 ] ; 134 uses
  %.012083328 = phi i32 [ 0, %.lr.ph3388 ], [ %.11209, %.loopexit1951 ] ; 134 uses
  %.012113327 = phi ptr [ null, %.lr.ph3388 ], [ %.11212, %.loopexit1951 ] ; 134 uses
  %.012173326 = phi ptr [ null, %.lr.ph3388 ], [ %.11218, %.loopexit1951 ] ; 134 uses
  %.012193325 = phi ptr [ null, %.lr.ph3388 ], [ %.11220, %.loopexit1951 ] ; 134 uses
  %.012213324 = phi ptr [ null, %.lr.ph3388 ], [ %.11222, %.loopexit1951 ] ; 134 uses
  %.012233323 = phi ptr [ null, %.lr.ph3388 ], [ %.11224, %.loopexit1951 ] ; 134 uses
  %.012253322 = phi ptr [ null, %.lr.ph3388 ], [ %.11226, %.loopexit1951 ] ; 134 uses
  %.012273321 = phi ptr [ null, %.lr.ph3388 ], [ %.11228, %.loopexit1951 ] ; 134 uses
  %.012293320 = phi ptr [ null, %.lr.ph3388 ], [ %.11230, %.loopexit1951 ] ; 134 uses
  %.012393319 = phi ptr [ null, %.lr.ph3388 ], [ %.11240, %.loopexit1951 ] ; 134 uses
  %.012413318 = phi ptr [ null, %.lr.ph3388 ], [ %.11242, %.loopexit1951 ] ; 134 uses
  %.012433317 = phi ptr [ null, %.lr.ph3388 ], [ %.11244, %.loopexit1951 ] ; 134 uses
  %.012453316 = phi ptr [ null, %.lr.ph3388 ], [ %.11246, %.loopexit1951 ] ; 134 uses
  %.012473315 = phi ptr [ null, %.lr.ph3388 ], [ %.11248, %.loopexit1951 ] ; 134 uses
  %.012503314 = phi ptr [ null, %.lr.ph3388 ], [ %.11251, %.loopexit1951 ] ; 134 uses
  %.012523313 = phi ptr [ null, %.lr.ph3388 ], [ %.11253, %.loopexit1951 ] ; 134 uses
  %.012543312 = phi ptr [ null, %.lr.ph3388 ], [ %.11255, %.loopexit1951 ] ; 134 uses
  %.012563311 = phi ptr [ null, %.lr.ph3388 ], [ %.11257, %.loopexit1951 ] ; 134 uses
  %.012613310 = phi ptr [ null, %.lr.ph3388 ], [ %.11262, %.loopexit1951 ] ; 134 uses
  %.012633309 = phi ptr [ null, %.lr.ph3388 ], [ %.11264, %.loopexit1951 ] ; 134 uses
  %.012653308 = phi ptr [ null, %.lr.ph3388 ], [ %.11266, %.loopexit1951 ] ; 134 uses
  %.012673307 = phi ptr [ %i.aa, %.lr.ph3388 ], [ %.11268, %.loopexit1951 ] ; 131 uses
  %.012723306 = phi i32 [ 0, %.lr.ph3388 ], [ %.11273, %.loopexit1951 ] ; 134 uses
  %.012743305 = phi ptr [ null, %.lr.ph3388 ], [ %.21276, %.loopexit1951 ] ; 158 uses
  %.012783304 = phi ptr [ null, %.lr.ph3388 ], [ %.11279, %.loopexit1951 ] ; 134 uses
  %.012803303 = phi ptr [ null, %.lr.ph3388 ], [ %.21282, %.loopexit1951 ] ; 157 uses
  %.012843302 = phi ptr [ null, %.lr.ph3388 ], [ %.21286, %.loopexit1951 ] ; 158 uses
  %i.au = icmp eq i32 %.010513369, 1
  %i.av = add i32 %i.at, -2
  %or.cond11 = icmp ult i32 %i.av, 5
  %or.cond1602 = and i1 %i.au, %or.cond11
  br i1 %or.cond1602, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aw = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.ax = load ptr, ptr @prog, align 8, !tbaa !12
  %i.ay = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aw, ptr noundef nonnull @.str.422, ptr noundef %i.ax) #16 ; 0 uses
  br label %.thread1818

bb.e:                                             ; preds = %bb.c
  %i.az = icmp eq i32 %.010513369, 0
  %i.ba = icmp eq i32 %i.at, 8
  %or.cond13 = and i1 %i.az, %i.ba
  br i1 %or.cond13, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bb = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.bc = load ptr, ptr @prog, align 8, !tbaa !12
  %i.bd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bb, ptr noundef nonnull @.str.423, ptr noundef %i.bc) #16 ; 0 uses
  br label %.thread1818

bb.g:                                             ; preds = %bb.e
  %i.be = add i32 %i.at, -52
  %or.cond27 = icmp ult i32 %i.be, 8
  br i1 %or.cond27, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not1583 = icmp eq i32 %.010633363, 0
  br i1 %.not1583, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.bg = call i32 @BIO_puts(ptr noundef %i.bf, ptr noundef nonnull @.str.424) #16 ; 0 uses
  br label %.thread1818

bb.j:                                             ; preds = %bb.g, %bb.h
  %.11064 = phi i32 [ 1, %bb.h ], [ %.010633363, %bb.g ] ; 2 uses
  %i.bh = add i32 %i.at, -3001
  %or.cond35 = icmp ult i32 %i.bh, 5
  %i.bi = zext i1 %or.cond35 to i32
  %spec.select = add nuw nsw i32 %.010613364, %i.bi ; 2 uses
  %i.bj = icmp ne i32 %.11064, 0
  %i.bk = icmp ne i32 %spec.select, 0
  %or.cond37 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond37, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bl = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.bm = call i32 @BIO_puts(ptr noundef %i.bl, ptr noundef nonnull @.str.425) #16 ; 0 uses
  br label %.thread1818

bb.l:                                             ; preds = %bb.j
  switch i32 %i.at, label %.loopexit1951 [
    i32 0, label %.loopexit1953
    i32 -1, label %.loopexit1953
    i32 1, label %.thread1892
    i32 2, label %bb.m
    i32 3, label %bb.n
    i32 4, label %bb.o
    i32 5, label %bb.p
    i32 6, label %bb.q
    i32 7, label %bb.r
    i32 3042, label %bb.s
    i32 3043, label %bb.t
    i32 3044, label %bb.u
    i32 8, label %bb.v
    i32 9, label %bb.w
    i32 91, label %bb.w
    i32 10, label %bb.x
    i32 12, label %bb.z
    i32 11, label %bb.aa
    i32 13, label %bb.ab
    i32 14, label %bb.ac
    i32 15, label %bb.ad
    i32 16, label %bb.ae
    i32 17, label %bb.af
    i32 18, label %bb.ag
    i32 19, label %bb.ah
    i32 20, label %bb.ai
    i32 21, label %bb.aj
    i32 3051, label %bb.ey
    i32 98, label %bb.ex
    i32 3001, label %bb.ak
    i32 3002, label %bb.ak
    i32 3003, label %bb.ak
    i32 3004, label %bb.ak
    i32 3005, label %bb.ak
    i32 3006, label %bb.ak
    i32 3007, label %bb.ak
    i32 3028, label %bb.ak
    i32 3035, label %bb.ak
    i32 3036, label %bb.ak
    i32 3008, label %bb.ak
    i32 3009, label %bb.ak
end_hunk_0
begin_hunk_1_@s_client_main:.preheader1955.preheader
  %. = zext i1 %i.aup to i32
  %not. = xor i1 %i.aup, true
  %.1634 = zext i1 %not. to i32
  br label %.preheader1938.preheader.backedge

bb.vw:                                            ; preds = %bb.vt
  %i.auq = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.aur = call i32 @BIO_puts(ptr noundef %i.auq, ptr noundef nonnull @.str.556) #16 ; 0 uses
  br label %.preheader1938.preheader.backedge

bb.vx:                                            ; preds = %bb.vt
  %i.aus = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.aut = call i32 @BIO_puts(ptr noundef %i.aus, ptr noundef nonnull @.str.557) #16 ; 0 uses
  call void @wait_for_async(ptr noundef %i.sy) #16
  br label %.preheader1938.preheader.backedge

bb.vy:                                            ; preds = %bb.vt
  %i.auu = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.auv = call i32 @BIO_puts(ptr noundef %i.auu, ptr noundef nonnull @.str.558) #16 ; 0 uses
  br label %.preheader1938.preheader.backedge

bb.vz:                                            ; preds = %bb.vt
  %i.auw = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.aux = call i32 @BIO_puts(ptr noundef %i.auw, ptr noundef nonnull @.str.559) #16 ; 0 uses
  br label %.preheader1938.preheader.backedge

bb.wa:                                            ; preds = %bb.vt
  %.not1572 = icmp eq i64 %i.auf, 0
  br i1 %.not1572, label %.preheader1938.preheader.backedge, label %bb.wb

bb.wb:                                            ; preds = %bb.wa
  %i.auy = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.auz = call i32 @BIO_puts(ptr noundef %i.auy, ptr noundef nonnull @.str.560) #16 ; 0 uses
  br label %.thread1812

bb.wc:                                            ; preds = %bb.vt
  %i.ava = icmp ne i32 %i.auj, 0
  %i.avb = icmp ne i64 %i.auf, 0
  %or.cond114 = or i1 %i.avb, %i.ava
  br i1 %or.cond114, label %bb.wd, label %.preheader1938.preheader.backedge

bb.wd:                                            ; preds = %bb.wc
  %i.avc = tail call ptr @__errno_location() #17
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !13 ; 2 uses
  %i.ave = icmp eq i32 %i.avd, 106
  %or.cond116.not = select i1 %i.wz, i1 %i.ave, i1 false
  br i1 %or.cond116.not, label %.preheader1938.preheader.backedge, label %bb.we

.preheader1938.preheader.backedge:                ; preds = %bb.wd, %user_data_add.exit, %bb.wi, %bb.xb, %bb.wk, %bb.wc, %bb.wa, %bb.vv, %bb.wn, %bb.wl, %bb.wu, %.critedge1640, %bb.wm, %bb.wo, %bb.vt, %bb.vw, %bb.vx, %bb.vy, %bb.vz
  %.01146.be = phi i32 [ %.01146, %bb.wd ], [ %.01146, %user_data_add.exit ], [ %i.avx, %bb.wi ], [ %.01146, %bb.xb ], [ %i.awk, %bb.wk ], [ %.01146, %bb.wc ], [ %.01146, %bb.wa ], [ %.01146, %bb.vv ], [ %.01146, %bb.wn ], [ %.01146, %bb.wl ], [ %.01146, %bb.wu ], [ %.01146, %.critedge1640 ], [ %.01146, %bb.wm ], [ %.01146, %bb.wo ], [ %.01146, %bb.vt ], [ %.01146, %bb.vw ], [ %.01146, %bb.vx ], [ %.01146, %bb.vy ], [ %.01146, %bb.vz ]
  %.01144.be = phi i32 [ %.01144, %bb.wd ], [ %.01144, %user_data_add.exit ], [ %i.avy, %bb.wi ], [ %.01144, %bb.xb ], [ 0, %bb.wk ], [ %.01144, %bb.wc ], [ %.01144, %bb.wa ], [ %.01144, %bb.vv ], [ %.01144, %bb.wn ], [ %.01144, %bb.wl ], [ %.01144, %bb.wu ], [ %.01144, %.critedge1640 ], [ %.01144, %bb.wm ], [ %.01144, %bb.wo ], [ %.01144, %bb.vt ], [ %.01144, %bb.vw ], [ %.01144, %bb.vx ], [ %.01144, %bb.vy ], [ %.01144, %bb.vz ]
  %.01133.be = phi i32 [ %.01133, %bb.wd ], [ %.01133, %user_data_add.exit ], [ %spec.select1638, %bb.wi ], [ %.01133, %bb.xb ], [ 1, %bb.wk ], [ %.01133, %bb.wc ], [ %.01133, %bb.wa ], [ %.01133, %bb.vv ], [ 0, %bb.wn ], [ 0, %bb.wl ], [ %.01133, %bb.wu ], [ %.01133, %.critedge1640 ], [ %.01133, %bb.wm ], [ %.01133, %bb.wo ], [ %.01133, %bb.vt ], [ %.01133, %bb.vw ], [ %.01133, %bb.vx ], [ 0, %bb.vy ], [ %.01133, %bb.vz ]
  %.01130.be = phi i32 [ %.11131, %bb.wd ], [ 0, %user_data_add.exit ], [ %.11131, %bb.wi ], [ 0, %bb.xb ], [ %.11131, %bb.wk ], [ 1, %bb.wc ], [ 1, %bb.wa ], [ %., %bb.vv ], [ %.11131, %bb.wn ], [ %.11131, %bb.wl ], [ %.11131, %bb.wu ], [ %.11131, %.critedge1640 ], [ 0, %bb.wm ], [ %.11131, %bb.wo ], [ %.11131, %bb.vt ], [ 0, %bb.vw ], [ 0, %bb.vx ], [ %.11131, %bb.vy ], [ %.11131, %bb.vz ]
  %.01125.be = phi i32 [ %.31128, %bb.wd ], [ %.31128, %user_data_add.exit ], [ %.31128, %bb.wi ], [ %.31128, %bb.xb ], [ %.31128, %bb.wk ], [ 0, %bb.wc ], [ 0, %bb.wa ], [ %.1634, %bb.vv ], [ %spec.store.select126, %bb.wn ], [ %spec.store.select125, %bb.wl ], [ %.31128, %bb.wu ], [ %.31128, %.critedge1640 ], [ 1, %bb.wm ], [ %.31128, %bb.wo ], [ %.31128, %bb.vt ], [ 1, %bb.vw ], [ 1, %bb.vx ], [ 0, %bb.vy ], [ %.31128, %bb.vz ]
  %.01123.be = phi i32 [ %.01123, %bb.wd ], [ %.01123, %user_data_add.exit ], [ %spec.select1639, %bb.wi ], [ %.01123, %bb.xb ], [ 0, %bb.wk ], [ %.01123, %bb.wc ], [ %.01123, %bb.wa ], [ %.01123, %bb.vv ], [ 1, %bb.wn ], [ 1, %bb.wl ], [ %.01123, %bb.wu ], [ %.01123, %.critedge1640 ], [ %.01123, %bb.wm ], [ %.01123, %bb.wo ], [ %.01123, %bb.vt ], [ %.01123, %bb.vw ], [ %.01123, %bb.vx ], [ 1, %bb.vy ], [ %.01123, %bb.vz ]
  %.11118.be = phi i32 [ %.11118, %bb.wd ], [ %spec.select1642, %user_data_add.exit ], [ %.11118, %bb.wi ], [ %spec.select1642, %bb.xb ], [ %.11118, %bb.wk ], [ %.11118, %bb.wc ], [ %.11118, %bb.wa ], [ %.11118, %bb.vv ], [ %.11118, %bb.wn ], [ %.11118, %bb.wl ], [ %.11118, %bb.wu ], [ %.11118, %.critedge1640 ], [ %.11118, %bb.wm ], [ %.11118, %bb.wo ], [ %.11118, %bb.vt ], [ %.11118, %bb.vw ], [ %.11118, %bb.vx ], [ %.11118, %bb.vy ], [ %.11118, %bb.vz ]
  br label %.preheader1938.preheader

bb.we:                                            ; preds = %bb.wd
  %i.avf = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.avg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.avf, ptr noundef nonnull @.str.561, i32 noundef %i.avd) #16 ; 0 uses
  br label %.thread1798

bb.wf:                                            ; preds = %.critedge1633, %bb.vs
  %i.avh = call i32 @fileno_stdout() #16
  %i.avi = sdiv i32 %i.avh, 64
  %i.avj = sext i32 %i.avi to i64
  %i.avk = getelementptr inbounds [8 x i8], ptr %4, i64 %i.avj
  %i.avl = load i64, ptr %i.avk, align 8, !tbaa !15
  %i.avm = call i32 @fileno_stdout() #16
  %i.avn = srem i32 %i.avm, 64
  %i.avo = zext nneg i32 %i.avn to i64
  %i.avp = shl nuw i64 1, %i.avo
  %i.avq = and i64 %i.avp, %i.avl
  %.not1573 = icmp eq i64 %i.avq, 0
  br i1 %.not1573, label %.critedge1637, label %bb.wg

bb.wg:                                            ; preds = %bb.wf
  %i.avr = zext nneg i32 %.01144 to i64
  %i.avs = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.avr
  %i.avt = call i32 @raw_write_stdout(ptr noundef %i.avs, i32 noundef %.01146) #16 ; 3 uses
  %i.avu = icmp slt i32 %i.avt, 1
  br i1 %i.avu, label %bb.wh, label %bb.wi

bb.wh:                                            ; preds = %bb.wg
  %i.avv = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.avw = call i32 @BIO_puts(ptr noundef %i.avv, ptr noundef nonnull @.str.562) #16 ; 0 uses
  br label %.thread1812

bb.wi:                                            ; preds = %bb.wg
  %i.avx = sub nsw i32 %.01146, %i.avt            ; 2 uses
  %i.avy = add nuw nsw i32 %i.avt, %.01144
  %i.avz = icmp slt i32 %i.avx, 1                 ; 2 uses
  %spec.select1638 = select i1 %i.avz, i32 0, i32 %.01133
  %spec.select1639 = select i1 %i.avz, i32 1, i32 %.01123
  br label %.preheader1938.preheader.backedge

.critedge1637:                                    ; preds = %bb.wf
  br i1 %i.xd, label %bb.wt, label %bb.wj

bb.wj:                                            ; preds = %.critedge1637
  %i.awa = call i32 @SSL_get_fd(ptr noundef %i.sy) #16
  %i.awb = sdiv i32 %i.awa, 64
  %i.awc = sext i32 %i.awb to i64
  %i.awd = getelementptr inbounds [8 x i8], ptr %3, i64 %i.awc
  %i.awe = load i64, ptr %i.awd, align 8, !tbaa !15
  %i.awf = call i32 @SSL_get_fd(ptr noundef %i.sy) #16
  %i.awg = srem i32 %i.awf, 64
  %i.awh = zext nneg i32 %i.awg to i64
  %i.awi = shl nuw i64 1, %i.awh
  %i.awj = and i64 %i.awi, %i.awe
  %.not1574 = icmp eq i64 %i.awj, 0
  br i1 %.not1574, label %bb.wt, label %.critedge1640

.critedge1640:                                    ; preds = %bb.vq, %bb.wj
  %i.awk = call i32 @SSL_read(ptr noundef %i.sy, ptr noundef %i.al, i32 noundef 16384) #16 ; 3 uses
  %i.awl = call i32 @SSL_get_error(ptr noundef %i.sy, i32 noundef %i.awk) #16
  switch i32 %i.awl, label %.preheader1938.preheader.backedge [
    i32 0, label %bb.wk
    i32 9, label %bb.wl
    i32 3, label %bb.wm
    i32 2, label %bb.wn
    i32 4, label %bb.wo
    i32 5, label %bb.wp
    i32 6, label %bb.ws
    i32 10, label %.thread1798
    i32 1, label %.thread1798
  ]

bb.wk:                                            ; preds = %.critedge1640
  %i.awm = icmp slt i32 %i.awk, 1
  br i1 %i.awm, label %.thread1818, label %.preheader1938.preheader.backedge

bb.wl:                                            ; preds = %.critedge1640
  %i.awn = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.awo = call i32 @BIO_puts(ptr noundef %i.awn, ptr noundef nonnull @.str.563) #16 ; 0 uses
  call void @wait_for_async(ptr noundef %i.sy) #16
  %i.awp = or i32 %.31128, %.11131
  %or.cond118 = icmp eq i32 %i.awp, 0
  %spec.store.select125 = select i1 %or.cond118, i32 1, i32 %.31128
  br label %.preheader1938.preheader.backedge

bb.wm:                                            ; preds = %.critedge1640
  %i.awq = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.awr = call i32 @BIO_puts(ptr noundef %i.awq, ptr noundef nonnull @.str.564) #16 ; 0 uses
  br label %.preheader1938.preheader.backedge

bb.wn:                                            ; preds = %.critedge1640
  %i.aws = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.awt = call i32 @BIO_puts(ptr noundef %i.aws, ptr noundef nonnull @.str.565) #16 ; 0 uses
  %i.awu = or i32 %.31128, %.11131
  %or.cond120 = icmp eq i32 %i.awu, 0
  %spec.store.select126 = select i1 %or.cond120, i32 1, i32 %.31128
  br label %.preheader1938.preheader.backedge

bb.wo:                                            ; preds = %.critedge1640
  %i.awv = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.aww = call i32 @BIO_puts(ptr noundef %i.awv, ptr noundef nonnull @.str.566) #16 ; 0 uses
  br label %.preheader1938.preheader.backedge

bb.wp:                                            ; preds = %.critedge1640
  %i.awx = tail call ptr @__errno_location() #17
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !13 ; 4 uses
  %i.awz = load ptr, ptr @bio_err, align 8, !tbaa !17 ; 2 uses
  br i1 %.01039.lcssa, label %bb.wr, label %bb.wq

bb.wq:                                            ; preds = %bb.wp
  %i.axa = call i32 @BIO_puts(ptr noundef %i.awz, ptr noundef nonnull @.str.567) #16 ; 0 uses
  br label %bb.xd

bb.wr:                                            ; preds = %bb.wp
  %i.axb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.awz, ptr noundef nonnull @.str.568, i32 noundef %i.awy) #16 ; 0 uses
  br label %bb.xd

bb.ws:                                            ; preds = %.critedge1640
  %i.axc = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  %i.axd = call i32 @BIO_puts(ptr noundef %i.axc, ptr noundef nonnull @.str.569) #16 ; 0 uses
  br label %.thread1812

bb.wt:                                            ; preds = %bb.wj, %.critedge1637
  br i1 %.01179.lcssa, label %bb.wu, label %.thread1812

bb.wu:                                            ; preds = %bb.wt
  %i.axe = call i32 @fileno_stdin() #16
  %i.axf = sdiv i32 %i.axe, 64
  %i.axg = sext i32 %i.axf to i64
  %i.axh = getelementptr inbounds [8 x i8], ptr %3, i64 %i.axg
  %i.axi = load i64, ptr %i.axh, align 8, !tbaa !15
  %i.axj = call i32 @fileno_stdin() #16
  %i.axk = srem i32 %i.axj, 64
  %i.axl = zext nneg i32 %i.axk to i64
  %i.axm = shl nuw i64 1, %i.axl
  %i.axn = and i64 %i.axm, %i.axi
  %.not1576 = icmp eq i64 %i.axn, 0
  br i1 %.not1576, label %.preheader1938.preheader.backedge, label %bb.wv

bb.wv:                                            ; preds = %bb.wu
  br i1 %.01200.lcssa, label %bb.wz, label %bb.ww

bb.ww:                                            ; preds = %bb.wv
  %i.axo = call i32 @raw_read_stdin(ptr noundef %i.ak, i32 noundef 8191) #16 ; 6 uses
  %i.axp = icmp sgt i32 %i.axo, 0
  br i1 %i.axp, label %.lr.ph3498.preheader, label %.loopexit

.lr.ph3498.preheader:                             ; preds = %bb.ww
  %wide.trip.count3917 = zext nneg i32 %i.axo to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.axo, 8
  br i1 %min.iters.check, label %.lr.ph3498.preheader4793, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph3498.preheader
  %n.vec = and i64 %wide.trip.count3917, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.axw, %vector.body ]
  %vec.phi4791 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.axx, %vector.body ]
  %i.axq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %index ; 2 uses
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axq, i64 4
  %wide.load = load <4 x i8>, ptr %i.axq, align 1, !tbaa !18
  %wide.load4792 = load <4 x i8>, ptr %i.axr, align 1, !tbaa !18
  %i.axs = icmp eq <4 x i8> %wide.load, splat (i8 10)
  %i.axt = icmp eq <4 x i8> %wide.load4792, splat (i8 10)
  %i.axu = zext <4 x i1> %i.axs to <4 x i32>
  %i.axv = zext <4 x i1> %i.axt to <4 x i32>
  %i.axw = add <4 x i32> %vec.phi, %i.axu         ; 2 uses
  %i.axx = add <4 x i32> %vec.phi4791, %i.axv     ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.axy = icmp eq i64 %index.next, %n.vec
  br i1 %i.axy, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.axx, %i.axw
  %i.axz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count3917
  br i1 %cmp.n, label %.lr.ph3504.preheader, label %.lr.ph3498.preheader4793

.lr.ph3498.preheader4793:                         ; preds = %.lr.ph3498.preheader, %middle.block
  %indvars.iv3914.ph = phi i64 [ 0, %.lr.ph3498.preheader ], [ %n.vec, %middle.block ]
  %.09883496.ph = phi i32 [ 0, %.lr.ph3498.preheader ], [ %i.axz, %middle.block ]
  br label %.lr.ph3498

.lr.ph3504.preheader:                             ; preds = %.lr.ph3498, %middle.block
  %spec.select1641.lcssa = phi i32 [ %i.axz, %middle.block ], [ %spec.select1641, %.lr.ph3498 ]
  %i.aya = zext nneg i32 %i.axo to i64
  br label %.lr.ph3504

.lr.ph3498:                                       ; preds = %.lr.ph3498.preheader4793, %.lr.ph3498
  %indvars.iv3914 = phi i64 [ %indvars.iv.next3915, %.lr.ph3498 ], [ %indvars.iv3914.ph, %.lr.ph3498.preheader4793 ] ; 2 uses
  %.09883496 = phi i32 [ %spec.select1641, %.lr.ph3498 ], [ %.09883496.ph, %.lr.ph3498.preheader4793 ]
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv3914
  %i.ayc = load i8, ptr %i.ayb, align 1, !tbaa !18
  %i.ayd = icmp eq i8 %i.ayc, 10
  %i.aye = zext i1 %i.ayd to i32
  %spec.select1641 = add nuw nsw i32 %.09883496, %i.aye ; 2 uses
  %indvars.iv.next3915 = add nuw nsw i64 %indvars.iv3914, 1 ; 2 uses
  %exitcond3918.not = icmp eq i64 %indvars.iv.next3915, %wide.trip.count3917
  br i1 %exitcond3918.not, label %.lr.ph3504.preheader, label %.lr.ph3498, !llvm.loop !56

.lr.ph3504:                                       ; preds = %.lr.ph3504.preheader, %bb.wy
  %indvars.iv3919 = phi i64 [ %i.aya, %.lr.ph3504.preheader ], [ %indvars.iv.next3920, %bb.wy ] ; 2 uses
  %.23502 = phi i32 [ %spec.select1641.lcssa, %.lr.ph3504.preheader ], [ %.3.a, %bb.wy ] ; 3 uses
  %.311583501 = phi i32 [ %i.axo, %.lr.ph3504.preheader ], [ %.41159.a, %bb.wy ] ; 2 uses
  %indvars.iv.next3920 = add nsw i64 %indvars.iv3919, -1 ; 4 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.next3920
  %i.ayg = load i8, ptr %i.ayf, align 1, !tbaa !18 ; 2 uses
  %i.ayh = sext i32 %.23502 to i64
  %i.ayi = getelementptr i8, ptr %i.ak, i64 %indvars.iv.next3920
  %i.ayj = getelementptr i8, ptr %i.ayi, i64 %i.ayh
  store i8 %i.ayg, ptr %i.ayj, align 1, !tbaa !18
  %i.ayk = icmp eq i8 %i.ayg, 10
  br i1 %i.ayk, label %bb.wx, label %bb.wy

bb.wx:                                            ; preds = %.lr.ph3504
  %i.ayl = add nsw i32 %.23502, -1                ; 2 uses
  %i.aym = add nuw nsw i32 %.311583501, 1
  %i.ayn = sext i32 %i.ayl to i64
  %i.ayo = getelementptr i8, ptr %i.ak, i64 %indvars.iv.next3920
  %i.ayp = getelementptr i8, ptr %i.ayo, i64 %i.ayn
  store i8 13, ptr %i.ayp, align 1, !tbaa !18
  br label %bb.wy

bb.wy:                                            ; preds = %.lr.ph3504, %bb.wx
  %.41159.a = phi i32 [ %i.aym, %bb.wx ], [ %.311583501, %.lr.ph3504 ] ; 2 uses
  %.3.a = phi i32 [ %i.ayl, %bb.wx ], [ %.23502, %.lr.ph3504 ]
  %9 = icmp samesign ugt i64 %indvars.iv3919, 1
  br i1 %9, label %.lr.ph3504, label %.loopexit, !llvm.loop !57

bb.wz:                                            ; preds = %bb.wv
  %i.ayq = call i32 @raw_read_stdin(ptr noundef %i.ak, i32 noundef 16383) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.wy, %bb.ww, %bb.wz
  %.51160 = phi i32 [ %i.ayq, %bb.wz ], [ %i.axo, %bb.ww ], [ %.41159.a, %bb.wy ] ; 4 uses
  %i.ayr = icmp eq i32 %.51160, 0
  %spec.select1642 = select i1 %i.ayr, i32 1, i32 %.11118 ; 2 uses
  %i.ays = icmp slt i32 %.51160, 1
  %or.cond122 = and i1 %.01041.lcssa, %i.ays
  br i1 %or.cond122, label %bb.xa, label %bb.xb

bb.xa:                                            ; preds = %.loopexit
  %i.ayt = load ptr, ptr @bio_err, align 8, !tbaa !17
  %i.ayu = call i32 @BIO_puts(ptr noundef %i.ayt, ptr noundef nonnull @.str.562) #16 ; 0 uses
  br label %.thread1812

bb.xb:                                            ; preds = %.loopexit
  %i.ayv = icmp sgt i32 %.51160, 0
  br i1 %i.ayv, label %bb.xc, label %.preheader1938.preheader.backedge

bb.xc:                                            ; preds = %bb.xb
  %i.ayw = zext nneg i32 %.51160 to i64           ; 2 uses
  %i.ayx = load i64, ptr %i.xy, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.ayx, 0
  %i.ayy = load i64, ptr %i.xx, align 8
  %.not7.i = icmp ugt i64 %i.ayy, %i.ayw
  %or.cond1931 = select i1 %.not.i, i1 %.not7.i, i1 false
  br i1 %or.cond1931, label %user_data_add.exit, label %.thread1812

user_data_add.exit:                               ; preds = %bb.xc
  store i64 %i.ayw, ptr %i.xy, align 8, !tbaa !36
  store i64 0, ptr %i.yc, align 8, !tbaa !37
  br label %.preheader1938.preheader.backedge

bb.xd:                                            ; preds = %bb.wq, %bb.wr
  %i.ayz = icmp sgt i32 %i.awy, 0
  br i1 %i.ayz, label %.thread1798, label %.thread1812

.thread1798:                                      ; preds = %bb.sk, %bb.sj, %bb.rf, %bb.rd, %bb.rc, %bb.re, %bb.ra, %bb.pw, %bb.qx, %bb.vt, %bb.vt, %.critedge1640, %.critedge1640, %.tail.thread, %bb.te, %bb.sh, %bb.sf, %bb.sd, %.preheader1945._crit_edge, %bb.sa, %bb.ry, %bb.rw, %bb.ru, %bb.qz, %.thread1701, %bb.pi, %bb.st, %.thread1732, %bb.qu, %bb.qn, %bb.qf, %.thread1771, %.thread1775, %bb.pa, %bb.vk, %bb.we, %bb.xd
  %.311641810 = phi i32 [ %.21163, %bb.xd ], [ %.01161, %.thread1701 ], [ %.01161, %bb.pi ], [ %.21163, %bb.vt ], [ %.01161, %bb.ru ], [ %.01161, %bb.st ], [ %.01161, %bb.sh ], [ %.01161, %bb.rw ], [ %.01161, %.thread1732 ], [ %.01161, %bb.ry ], [ %.01161, %bb.sf ], [ %.01161, %bb.qu ], [ %.01161, %bb.qn ], [ %.01161, %bb.qf ], [ %.01161, %.thread1771 ], [ %.01161, %.thread1775 ], [ %.01161, %bb.pa ], [ %.21163, %bb.vk ], [ %.01161, %bb.sa ], [ %.01161, %bb.te ], [ %.21163, %bb.we ], [ %.01161, %.tail.thread ], [ %.01161, %bb.qz ], [ %.01161, %bb.qx ], [ %.01161, %.preheader1945._crit_edge ], [ %.01161, %bb.sd ], [ %.21163, %.critedge1640 ], [ %.21163, %.critedge1640 ], [ %.21163, %bb.vt ], [ %.01161, %bb.pw ], [ %.01161, %bb.ra ], [ %.01161, %bb.re ], [ %.01161, %bb.rc ], [ %.01161, %bb.rd ], [ %.01161, %bb.rf ], [ %.01161, %bb.sj ], [ %.01161, %bb.sk ]
  %.311681808 = phi i32 [ %i.awy, %bb.xd ], [ 1, %.thread1701 ], [ 1, %bb.pi ], [ 1, %bb.vt ], [ 1, %bb.ru ], [ 1, %bb.st ], [ 1, %bb.sh ], [ 1, %bb.rw ], [ 1, %.thread1732 ], [ 1, %bb.ry ], [ 1, %bb.sf ], [ 1, %bb.qu ], [ 1, %bb.qn ], [ 1, %bb.qf ], [ 1, %.thread1771 ], [ 1, %.thread1775 ], [ 1, %bb.pa ], [ 1, %bb.vk ], [ 1, %bb.sa ], [ 1, %bb.te ], [ 1, %bb.we ], [ 1, %.tail.thread ], [ 1, %bb.qz ], [ 1, %bb.qx ], [ 1, %.preheader1945._crit_edge ], [ 1, %bb.sd ], [ 1, %.critedge1640 ], [ 1, %.critedge1640 ], [ 1, %bb.vt ], [ 1, %bb.pw ], [ 1, %bb.ra ], [ 1, %bb.re ], [ 1, %bb.rc ], [ 1, %bb.rd ], [ 1, %bb.rf ], [ 1, %bb.sj ], [ 1, %bb.sk ]
  %.411991806 = phi i32 [ %.31198, %bb.xd ], [ %.01195, %.thread1701 ], [ %.01195, %bb.pi ], [ %.31198, %bb.vt ], [ %.01195, %bb.ru ], [ %.01195, %bb.st ], [ %.01195, %bb.sh ], [ %.01195, %bb.rw ], [ %.01195, %.thread1732 ], [ %.01195, %bb.ry ], [ %.01195, %bb.sf ], [ %.01195, %bb.qu ], [ %.01195, %bb.qn ], [ %.01195, %bb.qf ], [ %.01195, %.thread1771 ], [ %.01195, %.thread1775 ], [ %.01195, %bb.pa ], [ %.31198, %bb.vk ], [ %.01195, %bb.sa ], [ %.01195, %bb.te ], [ %.31198, %bb.we ], [ %.01195, %.tail.thread ], [ %.01195, %bb.qz ], [ %.01195, %bb.qx ], [ %.01195, %.preheader1945._crit_edge ], [ %.01195, %bb.sd ], [ %.31198, %.critedge1640 ], [ %.31198, %.critedge1640 ], [ %.31198, %bb.vt ], [ %.01195, %bb.pw ], [ %.01195, %bb.ra ], [ %.01195, %bb.re ], [ %.01195, %bb.rc ], [ %.01195, %bb.rd ], [ %.01195, %bb.rf ], [ %.01195, %bb.sj ], [ %.01195, %bb.sk ]
  %.312971804 = phi ptr [ %.21296, %bb.xd ], [ %i.yz, %.thread1701 ], [ %.012941705, %bb.pi ], [ %.21296, %bb.vt ], [ %.21296, %bb.ru ], [ %.21296, %bb.st ], [ %.21296, %bb.sh ], [ %.21296, %bb.rw ], [ %.21296, %.thread1732 ], [ %.21296, %bb.ry ], [ %.21296, %bb.sf ], [ %.21296, %bb.qu ], [ %.21296, %bb.qn ], [ %.21296, %bb.qf ], [ %.21296, %.thread1771 ], [ %.21296, %.thread1775 ], [ %i.aah, %bb.pa ], [ %.21296, %bb.vk ], [ %.21296, %bb.sa ], [ %.21296, %bb.te ], [ %.21296, %bb.we ], [ %.21296, %.tail.thread ], [ %.21296, %bb.qz ], [ %.21296, %bb.qx ], [ %.21296, %.preheader1945._crit_edge ], [ %.21296, %bb.sd ], [ %.21296, %.critedge1640 ], [ %.21296, %.critedge1640 ], [ %.21296, %bb.vt ], [ %.21296, %bb.pw ], [ %.21296, %bb.ra ], [ %.21296, %bb.re ], [ %.21296, %bb.rc ], [ %.21296, %bb.rd ], [ %.21296, %bb.rf ], [ %.21296, %bb.sj ], [ %.21296, %bb.sk ]
  %i.aza = load ptr, ptr @bio_err, align 8, !tbaa !17
  call void @ERR_print_errors(ptr noundef %i.aza) #16
  br label %.thread1812

.thread1812:                                      ; preds = %bb.xc, %bb.wt, %.preheader1936, %bb.wb, %bb.wh, %bb.xa, %bb.uu, %bb.ws, %.thread1798, %bb.xd
  %.311641809 = phi i32 [ %.311641810, %.thread1798 ], [ %.21163, %bb.xd ], [ %.21163, %bb.ws ], [ %.21163, %bb.uu ], [ %.21163, %bb.wb ], [ %.21163, %bb.xa ], [ %.21163, %.preheader1936 ], [ %.21163, %bb.wh ], [ %.21163, %bb.wt ], [ %.21163, %bb.xc ]
  %.311681807 = phi i32 [ %.311681808, %.thread1798 ], [ %i.awy, %bb.xd ], [ 0, %bb.ws ], [ 0, %bb.uu ], [ 0, %bb.wb ], [ 0, %bb.xa ], [ 0, %.preheader1936 ], [ 0, %bb.wh ], [ 0, %bb.wt ], [ 0, %bb.xc ] ; 3 uses
  %.411991805 = phi i32 [ %.411991806, %.thread1798 ], [ %.31198, %bb.xd ], [ %.31198, %bb.ws ], [ %.31198, %bb.uu ], [ %.31198, %bb.wb ], [ %.31198, %bb.xa ], [ %.31198, %.preheader1936 ], [ %.31198, %bb.wh ], [ %.31198, %bb.wt ], [ %.31198, %bb.xc ]
  %.312971803 = phi ptr [ %.312971804, %.thread1798 ], [ %.21296, %bb.xd ], [ %.21296, %bb.ws ], [ %.21296, %bb.uu ], [ %.21296, %bb.wb ], [ %.21296, %bb.xa ], [ %.21296, %.preheader1936 ], [ %.21296, %bb.wh ], [ %.21296, %bb.wt ], [ %.21296, %bb.xc ]
  %.not1580 = icmp eq i32 %.311641809, 0
  br i1 %.not1580, label %bb.xf, label %bb.xe

bb.xe:                                            ; preds = %.thread1812
  %i.azb = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  call fastcc void @print_stuff(ptr noundef %i.azb, ptr noundef %i.sy, i32 noundef %.411991805)
  br label %bb.xf

bb.xf:                                            ; preds = %bb.xe, %.thread1812
  call void @do_ssl_shutdown(ptr noundef %i.sy) #16
  %i.azc = call i32 @SSL_get_fd(ptr noundef %i.sy) #16
  %i.azd = call i32 @shutdown(i32 noundef %i.azc, i32 noundef 1) #16 ; 0 uses
  store i64 0, ptr %2, align 8, !tbaa !75
  store i64 500000, ptr %i.xp, align 8, !tbaa !76
  br label %bb.xg

bb.xg:                                            ; preds = %bb.xh, %bb.xf
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 128, i1 false), !tbaa !15
  %i.aze = load i32, ptr %i.o, align 4, !tbaa !13 ; 3 uses
  %i.azf = srem i32 %i.aze, 64
  %i.azg = zext nneg i32 %i.azf to i64
  %i.azh = shl nuw i64 1, %i.azg
  %i.azi = sdiv i32 %i.aze, 64
  %i.azj = sext i32 %i.azi to i64
  %i.azk = getelementptr inbounds [8 x i8], ptr %3, i64 %i.azj ; 2 uses
  %i.azl = load i64, ptr %i.azk, align 8, !tbaa !15
  %i.azm = or i64 %i.azh, %i.azl
  store i64 %i.azm, ptr %i.azk, align 8, !tbaa !15
  %i.azn = add nsw i32 %i.aze, 1
  %i.azo = call i32 @select(i32 noundef %i.azn, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef nonnull %2) #16
  %i.azp = icmp sgt i32 %i.azo, 0
  br i1 %i.azp, label %bb.xh, label %bb.xi

bb.xh:                                            ; preds = %bb.xg
  %i.azq = call i32 @BIO_read(ptr noundef %.312971803, ptr noundef %i.al, i32 noundef 16384) #16
  %i.azr = icmp sgt i32 %i.azq, 0
  br i1 %i.azr, label %bb.xg, label %bb.xi, !llvm.loop !58

bb.xi:                                            ; preds = %bb.xh, %bb.xg
  %i.azs = call i32 @SSL_get_fd(ptr noundef %i.sy) #16
  %i.azt = call i32 @BIO_closesocket(i32 noundef %i.azs) #16 ; 0 uses
  %i.azu = icmp sgt i32 %.311681807, 0
  br i1 %i.azu, label %.thread1818, label %bb.xj

.thread1818:                                      ; preds = %bb.dw, %bb.fd, %bb.fc, %bb.ba, %bb.az, %bb.aq, %bb.ao, %bb.aa, %.lr.ph3477, %bb.oe, %bb.oh, %bb.vu, %bb.wk, %bb.tc, %bb.sv, %bb.sr, %bb.sm, %bb.mf, %bb.md, %bb.mb, %.thread1680, %bb.jw, %bb.ju, %bb.hm, %bb.hj, %bb.gn, %bb.gf, %bb.gh, %bb.fj, %bb.gb, %bb.gq, %bb.gx, %bb.gz, %bb.hh, %bb.hn, %bb.hs, %bb.hx, %bb.ib, %bb.ir, %bb.iw, %bb.iz, %bb.jc, %bb.jh, %bb.jj, %bb.jn, %.thread1678, %bb.ko, %bb.kr, %bb.ks, %bb.kw, %bb.lc, %.thread1684, %bb.lp, %bb.ls, %bb.mm, %bb.np, %bb.nl, %bb.nr, %bb.ox, %bb.rs, %bb.rb, %bb.qh, %.thread1767, %bb.pd, %bb.oc, %bb.ny, %bb.nw, %bb.nu, %bb.nj, %bb.ng, %bb.nc, %bb.mx, %bb.mu, %bb.ms, %bb.mp, %bb.ly, %bb.lv, %bb.lk, %bb.ld, %bb.kz, %bb.ka, %bb.ii, %bb.ig, %bb.ie, %bb.hy, %bb.hv, %bb.hf, %bb.hd, %bb.hb, %bb.gu, %bb.gr, %bb.dn, %bb.bv, %bb.bk, %bb.an, %.loopexit1953, %bb.k, %bb.i, %bb.f, %bb.d, %bb.a, %bb.xi
  %.410341872 = phi ptr [ %.31033, %bb.xi ], [ %.01030.lcssa, %bb.fj ], [ %.01030.lcssa, %bb.gb ], [ null, %bb.a ], [ %.01030.lcssa, %bb.gq ], [ %.01030.lcssa, %bb.gx ], [ %.01030.lcssa, %bb.gz ], [ %.01030.lcssa, %bb.hh ], [ %.01030.lcssa, %bb.gn ], [ %.01030.lcssa, %bb.hn ], [ null, %bb.hs ], [ %.31033, %bb.hx ], [ %.31033, %bb.ib ], [ %.31033, %bb.ir ], [ %.31033, %bb.iw ], [ %.31033, %bb.iz ], [ %.31033, %bb.jc ], [ %.31033, %bb.jh ], [ %.31033, %bb.jj ], [ %.31033, %bb.jn ], [ %.01030.lcssa, %bb.hm ], [ %.31033, %.thread1678 ], [ %.31033, %bb.ko ], [ %.31033, %bb.jw ], [ %.31033, %bb.kr ], [ %.31033, %bb.ks ], [ %.31033, %bb.kw ], [ %.31033, %bb.lc ], [ %.31033, %.thread1684 ], [ %.31033, %bb.lp ], [ %.31033, %bb.ls ], [ %.31033, %.thread1680 ], [ %.31033, %bb.mm ], [ %.31033, %bb.np ], [ %.31033, %bb.nl ], [ %.31033, %bb.nr ], [ %.31033, %bb.sm ], [ %.31033, %bb.oe ], [ %.31033, %bb.ox ], [ %.31033, %bb.sr ], [ %.31033, %bb.mf ], [ %.31033, %bb.rs ], [ %.31033, %bb.rb ], [ %.31033, %bb.qh ], [ %.31033, %.thread1767 ], [ %.31033, %bb.sv ], [ %.31033, %bb.tc ], [ %.31033, %bb.pd ], [ %.31033, %bb.oc ], [ %.31033, %bb.ny ], [ %.31033, %bb.nw ], [ %.31033, %bb.nu ], [ %.31033, %.lr.ph3477 ], [ %.31033, %bb.nj ], [ %.31033, %bb.ng ], [ %.31033, %bb.nc ], [ %.31033, %bb.mx ], [ %.31033, %bb.mu ], [ %.31033, %bb.ms ], [ %.31033, %bb.mp ], [ %.31033, %bb.ly ], [ %.31033, %bb.lv ], [ %.31033, %bb.lk ], [ %.31033, %bb.ld ], [ %.31033, %bb.kz ], [ %.31033, %bb.ka ], [ %.31033, %bb.ii ], [ %.31033, %bb.ig ], [ %.31033, %bb.ie ], [ %.31033, %bb.hy ], [ %.21032, %bb.hv ], [ %.01030.lcssa, %bb.hf ], [ %.01030.lcssa, %bb.hd ], [ %.01030.lcssa, %bb.hb ], [ %.01030.lcssa, %bb.gu ], [ %.01030.lcssa, %bb.gr ], [ %.010303378, %bb.d ], [ %.010303378, %bb.dn ], [ %.010303378, %bb.bv ], [ null, %bb.bk ], [ %.01030.lcssa, %bb.gh ], [ %.01030.lcssa, %bb.gf ], [ %.01030.lcssa, %bb.hj ], [ %.31033, %bb.ju ], [ %.31033, %bb.mb ], [ %.31033, %bb.md ], [ %.010303378, %bb.an ], [ %.31033, %bb.vu ], [ %.010302393, %.loopexit1953 ], [ %.010303378, %bb.k ], [ %.010303378, %bb.i ], [ %.010303378, %bb.f ], [ %.31033, %bb.wk ], [ %.31033, %bb.oh ], [ %.010303378, %bb.aa ], [ %.010303378, %bb.ao ], [ %.010303378, %bb.aq ], [ %.010303378, %bb.az ], [ %.010303378, %bb.ba ], [ %.010303378, %bb.fc ], [ %.010303378, %bb.fd ], [ %.010303378, %bb.dw ]
  %.110901870 = phi ptr [ null, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ null, %bb.hh ], [ null, %bb.gn ], [ null, %bb.hn ], [ null, %bb.hs ], [ null, %bb.hx ], [ null, %bb.ib ], [ null, %bb.ir ], [ null, %bb.iw ], [ null, %bb.iz ], [ null, %bb.jc ], [ null, %bb.jh ], [ null, %bb.jj ], [ null, %bb.jn ], [ null, %bb.hm ], [ null, %.thread1678 ], [ null, %bb.ko ], [ null, %bb.jw ], [ null, %bb.kr ], [ null, %bb.ks ], [ null, %bb.kw ], [ null, %bb.lc ], [ null, %.thread1684 ], [ null, %bb.lp ], [ null, %bb.ls ], [ null, %.thread1680 ], [ null, %bb.mm ], [ null, %bb.np ], [ null, %bb.nl ], [ null, %bb.nr ], [ null, %bb.sm ], [ null, %bb.oe ], [ null, %bb.ox ], [ null, %bb.sr ], [ null, %bb.mf ], [ null, %bb.rs ], [ null, %bb.rb ], [ null, %bb.qh ], [ null, %.thread1767 ], [ null, %bb.sv ], [ null, %bb.tc ], [ null, %bb.pd ], [ null, %bb.oc ], [ null, %bb.ny ], [ null, %bb.nw ], [ null, %bb.nu ], [ null, %.lr.ph3477 ], [ null, %bb.nj ], [ null, %bb.ng ], [ %i.vl, %bb.nc ], [ null, %bb.mx ], [ null, %bb.mu ], [ null, %bb.ms ], [ null, %bb.mp ], [ null, %bb.ly ], [ null, %bb.lv ], [ null, %bb.lk ], [ null, %bb.ld ], [ null, %bb.kz ], [ null, %bb.ka ], [ null, %bb.ii ], [ null, %bb.ig ], [ null, %bb.ie ], [ null, %bb.hy ], [ null, %bb.hv ], [ null, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ null, %bb.hj ], [ null, %bb.ju ], [ null, %bb.mb ], [ null, %bb.md ], [ null, %bb.an ], [ null, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.wk ], [ null, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.411011868 = phi ptr [ %.31100, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ %.31100, %bb.gq ], [ %.31100, %bb.gx ], [ %.31100, %bb.gz ], [ %.31100, %bb.hh ], [ %.11098, %bb.gn ], [ %.31100, %bb.hn ], [ %.31100, %bb.hs ], [ %.31100, %bb.hx ], [ %.31100, %bb.ib ], [ %.31100, %bb.ir ], [ %.31100, %bb.iw ], [ %.31100, %bb.iz ], [ %.31100, %bb.jc ], [ %.31100, %bb.jh ], [ %.31100, %bb.jj ], [ %.31100, %bb.jn ], [ %.31100, %bb.hm ], [ %.31100, %.thread1678 ], [ %.31100, %bb.ko ], [ %.31100, %bb.jw ], [ %.31100, %bb.kr ], [ %.31100, %bb.ks ], [ %.31100, %bb.kw ], [ %.31100, %bb.lc ], [ %.31100, %.thread1684 ], [ %.31100, %bb.lp ], [ %.31100, %bb.ls ], [ %.31100, %.thread1680 ], [ %.31100, %bb.mm ], [ %.31100, %bb.np ], [ %.31100, %bb.nl ], [ %.31100, %bb.nr ], [ %.31100, %bb.sm ], [ %.31100, %bb.oe ], [ %.31100, %bb.ox ], [ %.31100, %bb.sr ], [ %.31100, %bb.mf ], [ %.31100, %bb.rs ], [ %.31100, %bb.rb ], [ %.31100, %bb.qh ], [ %.31100, %.thread1767 ], [ %.31100, %bb.sv ], [ %.31100, %bb.tc ], [ %.31100, %bb.pd ], [ %.31100, %bb.oc ], [ %.31100, %bb.ny ], [ %.31100, %bb.nw ], [ %.31100, %bb.nu ], [ %.31100, %.lr.ph3477 ], [ %.31100, %bb.nj ], [ %.31100, %bb.ng ], [ %.31100, %bb.nc ], [ %.31100, %bb.mx ], [ %.31100, %bb.mu ], [ %.31100, %bb.ms ], [ %.31100, %bb.mp ], [ %.31100, %bb.ly ], [ %.31100, %bb.lv ], [ %.31100, %bb.lk ], [ %.31100, %bb.ld ], [ %.31100, %bb.kz ], [ %.31100, %bb.ka ], [ %.31100, %bb.ii ], [ %.31100, %bb.ig ], [ %.31100, %bb.ie ], [ %.31100, %bb.hy ], [ %.31100, %bb.hv ], [ %.31100, %bb.hf ], [ %.31100, %bb.hd ], [ %.31100, %bb.hb ], [ %.31100, %bb.gu ], [ %.31100, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ %.11098, %bb.gh ], [ null, %bb.gf ], [ %.31100, %bb.hj ], [ %.31100, %bb.ju ], [ %.31100, %bb.mb ], [ %.31100, %bb.md ], [ null, %bb.an ], [ %.31100, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.31100, %bb.wk ], [ %.31100, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.411691866 = phi i32 [ %.311681807, %bb.xi ], [ 1, %bb.fj ], [ 1, %bb.gb ], [ 1, %bb.a ], [ 1, %bb.gq ], [ 1, %bb.gx ], [ 1, %bb.gz ], [ 1, %bb.hh ], [ 1, %bb.gn ], [ 1, %bb.hn ], [ 1, %bb.hs ], [ 1, %bb.hx ], [ 1, %bb.ib ], [ 1, %bb.ir ], [ 1, %bb.iw ], [ 1, %bb.iz ], [ 1, %bb.jc ], [ 1, %bb.jh ], [ 1, %bb.jj ], [ 1, %bb.jn ], [ 1, %bb.hm ], [ 1, %.thread1678 ], [ 1, %bb.ko ], [ 1, %bb.jw ], [ 1, %bb.kr ], [ 1, %bb.ks ], [ 1, %bb.kw ], [ 1, %bb.lc ], [ 1, %.thread1684 ], [ 1, %bb.lp ], [ 1, %bb.ls ], [ 1, %.thread1680 ], [ 1, %bb.mm ], [ 1, %bb.np ], [ 1, %bb.nl ], [ 1, %bb.nr ], [ 1, %bb.sm ], [ 1, %bb.oe ], [ 1, %bb.ox ], [ 1, %bb.sr ], [ 1, %bb.mf ], [ 1, %bb.rs ], [ 1, %bb.rb ], [ 1, %bb.qh ], [ 1, %.thread1767 ], [ 1, %bb.sv ], [ 1, %bb.tc ], [ 1, %bb.pd ], [ 1, %bb.oc ], [ 1, %bb.ny ], [ 1, %bb.nw ], [ 1, %bb.nu ], [ 1, %.lr.ph3477 ], [ 1, %bb.nj ], [ 1, %bb.ng ], [ 1, %bb.nc ], [ 1, %bb.mx ], [ 1, %bb.mu ], [ 1, %bb.ms ], [ 1, %bb.mp ], [ 1, %bb.ly ], [ 1, %bb.lv ], [ 1, %bb.lk ], [ 1, %bb.ld ], [ 1, %bb.kz ], [ 1, %bb.ka ], [ 1, %bb.ii ], [ 1, %bb.ig ], [ 1, %bb.ie ], [ 1, %bb.hy ], [ 1, %bb.hv ], [ 1, %bb.hf ], [ 1, %bb.hd ], [ 1, %bb.hb ], [ 1, %bb.gu ], [ 1, %bb.gr ], [ 1, %bb.d ], [ 1, %bb.dn ], [ 1, %bb.bv ], [ 1, %bb.bk ], [ 1, %bb.gh ], [ 1, %bb.gf ], [ 1, %bb.hj ], [ 1, %bb.ju ], [ 1, %bb.mb ], [ 1, %bb.md ], [ 1, %bb.an ], [ 1, %bb.vu ], [ 1, %.loopexit1953 ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.f ], [ 1, %bb.wk ], [ 1, %bb.oh ], [ 1, %bb.aa ], [ 1, %bb.ao ], [ 1, %bb.aq ], [ 1, %bb.az ], [ 1, %bb.ba ], [ 1, %bb.fc ], [ 1, %bb.fd ], [ 1, %bb.dw ]
  %.211831864 = phi i32 [ %.01181.lcssa, %bb.xi ], [ %.01181.lcssa, %bb.fj ], [ %.01181.lcssa, %bb.gb ], [ 0, %bb.a ], [ %.01181.lcssa, %bb.gq ], [ %.01181.lcssa, %bb.gx ], [ %.01181.lcssa, %bb.gz ], [ %.01181.lcssa, %bb.hh ], [ %.01181.lcssa, %bb.gn ], [ %.01181.lcssa, %bb.hn ], [ %.01181.lcssa, %bb.hs ], [ %.01181.lcssa, %bb.hx ], [ %.01181.lcssa, %bb.ib ], [ %.01181.lcssa, %bb.ir ], [ %.01181.lcssa, %bb.iw ], [ %.01181.lcssa, %bb.iz ], [ %.01181.lcssa, %bb.jc ], [ %.01181.lcssa, %bb.jh ], [ %.01181.lcssa, %bb.jj ], [ %.01181.lcssa, %bb.jn ], [ %.01181.lcssa, %bb.hm ], [ %.01181.lcssa, %.thread1678 ], [ %.01181.lcssa, %bb.ko ], [ %.01181.lcssa, %bb.jw ], [ %.01181.lcssa, %bb.kr ], [ %.01181.lcssa, %bb.ks ], [ %.01181.lcssa, %bb.kw ], [ %.01181.lcssa, %bb.lc ], [ %.01181.lcssa, %.thread1684 ], [ %.01181.lcssa, %bb.lp ], [ %.01181.lcssa, %bb.ls ], [ %.01181.lcssa, %.thread1680 ], [ %.01181.lcssa, %bb.mm ], [ %.01181.lcssa, %bb.np ], [ %.01181.lcssa, %bb.nl ], [ %.01181.lcssa, %bb.nr ], [ %.01181.lcssa, %bb.sm ], [ %.01181.lcssa, %bb.oe ], [ %.01181.lcssa, %bb.ox ], [ %.01181.lcssa, %bb.sr ], [ %.01181.lcssa, %bb.mf ], [ %.01181.lcssa, %bb.rs ], [ %.01181.lcssa, %bb.rb ], [ %.01181.lcssa, %bb.qh ], [ %.01181.lcssa, %.thread1767 ], [ %.01181.lcssa, %bb.sv ], [ %.01181.lcssa, %bb.tc ], [ %.01181.lcssa, %bb.pd ], [ %.01181.lcssa, %bb.oc ], [ %.01181.lcssa, %bb.ny ], [ %.01181.lcssa, %bb.nw ], [ %.01181.lcssa, %bb.nu ], [ %.01181.lcssa, %.lr.ph3477 ], [ %.01181.lcssa, %bb.nj ], [ %.01181.lcssa, %bb.ng ], [ %.01181.lcssa, %bb.nc ], [ %.01181.lcssa, %bb.mx ], [ %.01181.lcssa, %bb.mu ], [ %.01181.lcssa, %bb.ms ], [ %.01181.lcssa, %bb.mp ], [ %.01181.lcssa, %bb.ly ], [ %.01181.lcssa, %bb.lv ], [ %.01181.lcssa, %bb.lk ], [ %.01181.lcssa, %bb.ld ], [ %.01181.lcssa, %bb.kz ], [ %.01181.lcssa, %bb.ka ], [ %.01181.lcssa, %bb.ii ], [ %.01181.lcssa, %bb.ig ], [ %.01181.lcssa, %bb.ie ], [ %.01181.lcssa, %bb.hy ], [ %.01181.lcssa, %bb.hv ], [ %.01181.lcssa, %bb.hf ], [ %.01181.lcssa, %bb.hd ], [ %.01181.lcssa, %bb.hb ], [ %.01181.lcssa, %bb.gu ], [ %.01181.lcssa, %bb.gr ], [ %.011813333, %bb.d ], [ %.011813333, %bb.dn ], [ %.011813333, %bb.bv ], [ %.011813333, %bb.bk ], [ %.01181.lcssa, %bb.gh ], [ %.01181.lcssa, %bb.gf ], [ %.01181.lcssa, %bb.hj ], [ %.01181.lcssa, %bb.ju ], [ %.01181.lcssa, %bb.mb ], [ %.01181.lcssa, %bb.md ], [ %.011813333, %bb.an ], [ %.01181.lcssa, %bb.vu ], [ %.011812898, %.loopexit1953 ], [ %.011813333, %bb.k ], [ %.011813333, %bb.i ], [ %.011813333, %bb.f ], [ %.01181.lcssa, %bb.wk ], [ %.01181.lcssa, %bb.oh ], [ %.011813333, %bb.aa ], [ %.011813333, %bb.ao ], [ %.011813333, %bb.aq ], [ %.011813333, %bb.az ], [ %.011813333, %bb.ba ], [ %.011813333, %bb.fc ], [ %.011813333, %bb.fd ], [ %.011813333, %bb.dw ]
  %.312341862 = phi ptr [ %.21233, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ %.21233, %bb.gq ], [ %.21233, %bb.gx ], [ %.21233, %bb.gz ], [ %.21233, %bb.hh ], [ %i.le, %bb.gn ], [ %.21233, %bb.hn ], [ %.21233, %bb.hs ], [ %.21233, %bb.hx ], [ %.21233, %bb.ib ], [ %.21233, %bb.ir ], [ %.21233, %bb.iw ], [ %.21233, %bb.iz ], [ %.21233, %bb.jc ], [ %.21233, %bb.jh ], [ %.21233, %bb.jj ], [ %.21233, %bb.jn ], [ %.21233, %bb.hm ], [ %.21233, %.thread1678 ], [ %.21233, %bb.ko ], [ %.21233, %bb.jw ], [ %.21233, %bb.kr ], [ %.21233, %bb.ks ], [ %.21233, %bb.kw ], [ %.21233, %bb.lc ], [ %.21233, %.thread1684 ], [ %.21233, %bb.lp ], [ %.21233, %bb.ls ], [ %.21233, %.thread1680 ], [ %.21233, %bb.mm ], [ %.21233, %bb.np ], [ %.21233, %bb.nl ], [ %.21233, %bb.nr ], [ %.21233, %bb.sm ], [ %.21233, %bb.oe ], [ %.21233, %bb.ox ], [ %.21233, %bb.sr ], [ %.21233, %bb.mf ], [ %.21233, %bb.rs ], [ %.21233, %bb.rb ], [ %.21233, %bb.qh ], [ %.21233, %.thread1767 ], [ %.21233, %bb.sv ], [ %.21233, %bb.tc ], [ %.21233, %bb.pd ], [ %.21233, %bb.oc ], [ %.21233, %bb.ny ], [ %.21233, %bb.nw ], [ %.21233, %bb.nu ], [ %.21233, %.lr.ph3477 ], [ %.21233, %bb.nj ], [ %.21233, %bb.ng ], [ %.21233, %bb.nc ], [ %.21233, %bb.mx ], [ %.21233, %bb.mu ], [ %.21233, %bb.ms ], [ %.21233, %bb.mp ], [ %.21233, %bb.ly ], [ %.21233, %bb.lv ], [ %.21233, %bb.lk ], [ %.21233, %bb.ld ], [ %.21233, %bb.kz ], [ %.21233, %bb.ka ], [ %.21233, %bb.ii ], [ %.21233, %bb.ig ], [ %.21233, %bb.ie ], [ %.21233, %bb.hy ], [ %.21233, %bb.hv ], [ %.21233, %bb.hf ], [ %.21233, %bb.hd ], [ %.21233, %bb.hb ], [ %.21233, %bb.gu ], [ %.21233, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ %i.le, %bb.gh ], [ null, %bb.gf ], [ %.21233, %bb.hj ], [ %.21233, %bb.ju ], [ %.21233, %bb.mb ], [ %.21233, %bb.md ], [ null, %bb.an ], [ %.21233, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.21233, %bb.wk ], [ %.21233, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.312381860 = phi ptr [ %.21237, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ %.21237, %bb.gq ], [ %.21237, %bb.gx ], [ %.21237, %bb.gz ], [ %.21237, %bb.hh ], [ %i.lc, %bb.gn ], [ %.21237, %bb.hn ], [ %.21237, %bb.hs ], [ %.21237, %bb.hx ], [ %.21237, %bb.ib ], [ %.21237, %bb.ir ], [ %.21237, %bb.iw ], [ %.21237, %bb.iz ], [ %.21237, %bb.jc ], [ %.21237, %bb.jh ], [ %.21237, %bb.jj ], [ %.21237, %bb.jn ], [ %.21237, %bb.hm ], [ %.21237, %.thread1678 ], [ %.21237, %bb.ko ], [ %.21237, %bb.jw ], [ %.21237, %bb.kr ], [ %.21237, %bb.ks ], [ %.21237, %bb.kw ], [ %.21237, %bb.lc ], [ %.21237, %.thread1684 ], [ %.21237, %bb.lp ], [ %.21237, %bb.ls ], [ %.21237, %.thread1680 ], [ %.21237, %bb.mm ], [ %.21237, %bb.np ], [ %.21237, %bb.nl ], [ %.21237, %bb.nr ], [ %.21237, %bb.sm ], [ %.21237, %bb.oe ], [ %.21237, %bb.ox ], [ %.21237, %bb.sr ], [ %.21237, %bb.mf ], [ %.21237, %bb.rs ], [ %.21237, %bb.rb ], [ %.21237, %bb.qh ], [ %.21237, %.thread1767 ], [ %.21237, %bb.sv ], [ %.21237, %bb.tc ], [ %.21237, %bb.pd ], [ %.21237, %bb.oc ], [ %.21237, %bb.ny ], [ %.21237, %bb.nw ], [ %.21237, %bb.nu ], [ %.21237, %.lr.ph3477 ], [ %.21237, %bb.nj ], [ %.21237, %bb.ng ], [ %.21237, %bb.nc ], [ %.21237, %bb.mx ], [ %.21237, %bb.mu ], [ %.21237, %bb.ms ], [ %.21237, %bb.mp ], [ %.21237, %bb.ly ], [ %.21237, %bb.lv ], [ %.21237, %bb.lk ], [ %.21237, %bb.ld ], [ %.21237, %bb.kz ], [ %.21237, %bb.ka ], [ %.21237, %bb.ii ], [ %.21237, %bb.ig ], [ %.21237, %bb.ie ], [ %.21237, %bb.hy ], [ %.21237, %bb.hv ], [ %.21237, %bb.hf ], [ %.21237, %bb.hd ], [ %.21237, %bb.hb ], [ %.21237, %bb.gu ], [ %.21237, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ %i.lc, %bb.gh ], [ null, %bb.gf ], [ %.21237, %bb.hj ], [ %.21237, %bb.ju ], [ %.21237, %bb.mb ], [ %.21237, %bb.md ], [ null, %bb.an ], [ %.21237, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.21237, %bb.wk ], [ %.21237, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.012581858 = phi ptr [ %i.am, %bb.xi ], [ %i.am, %bb.fj ], [ %i.am, %bb.gb ], [ null, %bb.a ], [ %i.am, %bb.gq ], [ %i.am, %bb.gx ], [ %i.am, %bb.gz ], [ %i.am, %bb.hh ], [ %i.am, %bb.gn ], [ %i.am, %bb.hn ], [ %i.am, %bb.hs ], [ %i.am, %bb.hx ], [ %i.am, %bb.ib ], [ %i.am, %bb.ir ], [ %i.am, %bb.iw ], [ %i.am, %bb.iz ], [ %i.am, %bb.jc ], [ %i.am, %bb.jh ], [ %i.am, %bb.jj ], [ %i.am, %bb.jn ], [ %i.am, %bb.hm ], [ %i.am, %.thread1678 ], [ %i.am, %bb.ko ], [ %i.am, %bb.jw ], [ %i.am, %bb.kr ], [ %i.am, %bb.ks ], [ %i.am, %bb.kw ], [ %i.am, %bb.lc ], [ %i.am, %.thread1684 ], [ %i.am, %bb.lp ], [ %i.am, %bb.ls ], [ %i.am, %.thread1680 ], [ %i.am, %bb.mm ], [ %i.am, %bb.np ], [ %i.am, %bb.nl ], [ %i.am, %bb.nr ], [ %i.am, %bb.sm ], [ %i.am, %bb.oe ], [ %i.am, %bb.ox ], [ %i.am, %bb.sr ], [ %i.am, %bb.mf ], [ %i.am, %bb.rs ], [ %i.am, %bb.rb ], [ %i.am, %bb.qh ], [ %i.am, %.thread1767 ], [ %i.am, %bb.sv ], [ %i.am, %bb.tc ], [ %i.am, %bb.pd ], [ %i.am, %bb.oc ], [ %i.am, %bb.ny ], [ %i.am, %bb.nw ], [ %i.am, %bb.nu ], [ %i.am, %.lr.ph3477 ], [ %i.am, %bb.nj ], [ %i.am, %bb.ng ], [ %i.am, %bb.nc ], [ %i.am, %bb.mx ], [ %i.am, %bb.mu ], [ %i.am, %bb.ms ], [ %i.am, %bb.mp ], [ %i.am, %bb.ly ], [ %i.am, %bb.lv ], [ %i.am, %bb.lk ], [ %i.am, %bb.ld ], [ %i.am, %bb.kz ], [ %i.am, %bb.ka ], [ %i.am, %bb.ii ], [ %i.am, %bb.ig ], [ %i.am, %bb.ie ], [ %i.am, %bb.hy ], [ %i.am, %bb.hv ], [ %i.am, %bb.hf ], [ %i.am, %bb.hd ], [ %i.am, %bb.hb ], [ %i.am, %bb.gu ], [ %i.am, %bb.gr ], [ %i.am, %bb.d ], [ %i.am, %bb.dn ], [ %i.am, %bb.bv ], [ %i.am, %bb.bk ], [ %i.am, %bb.gh ], [ %i.am, %bb.gf ], [ %i.am, %bb.hj ], [ %i.am, %bb.ju ], [ %i.am, %bb.mb ], [ %i.am, %bb.md ], [ %i.am, %bb.an ], [ %i.am, %bb.vu ], [ %i.am, %.loopexit1953 ], [ %i.am, %bb.k ], [ %i.am, %bb.i ], [ %i.am, %bb.f ], [ %i.am, %bb.wk ], [ %i.am, %bb.oh ], [ %i.am, %bb.aa ], [ %i.am, %bb.ao ], [ %i.am, %bb.aq ], [ %i.am, %bb.az ], [ %i.am, %bb.ba ], [ %i.am, %bb.fc ], [ %i.am, %bb.fd ], [ %i.am, %bb.dw ]
  %.012591856 = phi ptr [ %i.al, %bb.xi ], [ %i.al, %bb.fj ], [ %i.al, %bb.gb ], [ null, %bb.a ], [ %i.al, %bb.gq ], [ %i.al, %bb.gx ], [ %i.al, %bb.gz ], [ %i.al, %bb.hh ], [ %i.al, %bb.gn ], [ %i.al, %bb.hn ], [ %i.al, %bb.hs ], [ %i.al, %bb.hx ], [ %i.al, %bb.ib ], [ %i.al, %bb.ir ], [ %i.al, %bb.iw ], [ %i.al, %bb.iz ], [ %i.al, %bb.jc ], [ %i.al, %bb.jh ], [ %i.al, %bb.jj ], [ %i.al, %bb.jn ], [ %i.al, %bb.hm ], [ %i.al, %.thread1678 ], [ %i.al, %bb.ko ], [ %i.al, %bb.jw ], [ %i.al, %bb.kr ], [ %i.al, %bb.ks ], [ %i.al, %bb.kw ], [ %i.al, %bb.lc ], [ %i.al, %.thread1684 ], [ %i.al, %bb.lp ], [ %i.al, %bb.ls ], [ %i.al, %.thread1680 ], [ %i.al, %bb.mm ], [ %i.al, %bb.np ], [ %i.al, %bb.nl ], [ %i.al, %bb.nr ], [ %i.al, %bb.sm ], [ %i.al, %bb.oe ], [ %i.al, %bb.ox ], [ %i.al, %bb.sr ], [ %i.al, %bb.mf ], [ %i.al, %bb.rs ], [ %i.al, %bb.rb ], [ %i.al, %bb.qh ], [ %i.al, %.thread1767 ], [ %i.al, %bb.sv ], [ %i.al, %bb.tc ], [ %i.al, %bb.pd ], [ %i.al, %bb.oc ], [ %i.al, %bb.ny ], [ %i.al, %bb.nw ], [ %i.al, %bb.nu ], [ %i.al, %.lr.ph3477 ], [ %i.al, %bb.nj ], [ %i.al, %bb.ng ], [ %i.al, %bb.nc ], [ %i.al, %bb.mx ], [ %i.al, %bb.mu ], [ %i.al, %bb.ms ], [ %i.al, %bb.mp ], [ %i.al, %bb.ly ], [ %i.al, %bb.lv ], [ %i.al, %bb.lk ], [ %i.al, %bb.ld ], [ %i.al, %bb.kz ], [ %i.al, %bb.ka ], [ %i.al, %bb.ii ], [ %i.al, %bb.ig ], [ %i.al, %bb.ie ], [ %i.al, %bb.hy ], [ %i.al, %bb.hv ], [ %i.al, %bb.hf ], [ %i.al, %bb.hd ], [ %i.al, %bb.hb ], [ %i.al, %bb.gu ], [ %i.al, %bb.gr ], [ %i.al, %bb.d ], [ %i.al, %bb.dn ], [ %i.al, %bb.bv ], [ %i.al, %bb.bk ], [ %i.al, %bb.gh ], [ %i.al, %bb.gf ], [ %i.al, %bb.hj ], [ %i.al, %bb.ju ], [ %i.al, %bb.mb ], [ %i.al, %bb.md ], [ %i.al, %bb.an ], [ %i.al, %bb.vu ], [ %i.al, %.loopexit1953 ], [ %i.al, %bb.k ], [ %i.al, %bb.i ], [ %i.al, %bb.f ], [ %i.al, %bb.wk ], [ %i.al, %bb.oh ], [ %i.al, %bb.aa ], [ %i.al, %bb.ao ], [ %i.al, %bb.aq ], [ %i.al, %bb.az ], [ %i.al, %bb.ba ], [ %i.al, %bb.fc ], [ %i.al, %bb.fd ], [ %i.al, %bb.dw ]
  %.012601854 = phi ptr [ %i.ak, %bb.xi ], [ %i.ak, %bb.fj ], [ %i.ak, %bb.gb ], [ null, %bb.a ], [ %i.ak, %bb.gq ], [ %i.ak, %bb.gx ], [ %i.ak, %bb.gz ], [ %i.ak, %bb.hh ], [ %i.ak, %bb.gn ], [ %i.ak, %bb.hn ], [ %i.ak, %bb.hs ], [ %i.ak, %bb.hx ], [ %i.ak, %bb.ib ], [ %i.ak, %bb.ir ], [ %i.ak, %bb.iw ], [ %i.ak, %bb.iz ], [ %i.ak, %bb.jc ], [ %i.ak, %bb.jh ], [ %i.ak, %bb.jj ], [ %i.ak, %bb.jn ], [ %i.ak, %bb.hm ], [ %i.ak, %.thread1678 ], [ %i.ak, %bb.ko ], [ %i.ak, %bb.jw ], [ %i.ak, %bb.kr ], [ %i.ak, %bb.ks ], [ %i.ak, %bb.kw ], [ %i.ak, %bb.lc ], [ %i.ak, %.thread1684 ], [ %i.ak, %bb.lp ], [ %i.ak, %bb.ls ], [ %i.ak, %.thread1680 ], [ %i.ak, %bb.mm ], [ %i.ak, %bb.np ], [ %i.ak, %bb.nl ], [ %i.ak, %bb.nr ], [ %i.ak, %bb.sm ], [ %i.ak, %bb.oe ], [ %i.ak, %bb.ox ], [ %i.ak, %bb.sr ], [ %i.ak, %bb.mf ], [ %i.ak, %bb.rs ], [ %i.ak, %bb.rb ], [ %i.ak, %bb.qh ], [ %i.ak, %.thread1767 ], [ %i.ak, %bb.sv ], [ %i.ak, %bb.tc ], [ %i.ak, %bb.pd ], [ %i.ak, %bb.oc ], [ %i.ak, %bb.ny ], [ %i.ak, %bb.nw ], [ %i.ak, %bb.nu ], [ %i.ak, %.lr.ph3477 ], [ %i.ak, %bb.nj ], [ %i.ak, %bb.ng ], [ %i.ak, %bb.nc ], [ %i.ak, %bb.mx ], [ %i.ak, %bb.mu ], [ %i.ak, %bb.ms ], [ %i.ak, %bb.mp ], [ %i.ak, %bb.ly ], [ %i.ak, %bb.lv ], [ %i.ak, %bb.lk ], [ %i.ak, %bb.ld ], [ %i.ak, %bb.kz ], [ %i.ak, %bb.ka ], [ %i.ak, %bb.ii ], [ %i.ak, %bb.ig ], [ %i.ak, %bb.ie ], [ %i.ak, %bb.hy ], [ %i.ak, %bb.hv ], [ %i.ak, %bb.hf ], [ %i.ak, %bb.hd ], [ %i.ak, %bb.hb ], [ %i.ak, %bb.gu ], [ %i.ak, %bb.gr ], [ %i.ak, %bb.d ], [ %i.ak, %bb.dn ], [ %i.ak, %bb.bv ], [ %i.ak, %bb.bk ], [ %i.ak, %bb.gh ], [ %i.ak, %bb.gf ], [ %i.ak, %bb.hj ], [ %i.ak, %bb.ju ], [ %i.ak, %bb.mb ], [ %i.ak, %bb.md ], [ %i.ak, %bb.an ], [ %i.ak, %bb.vu ], [ %i.ak, %.loopexit1953 ], [ %i.ak, %bb.k ], [ %i.ak, %bb.i ], [ %i.ak, %bb.f ], [ %i.ak, %bb.wk ], [ %i.ak, %bb.oh ], [ %i.ak, %bb.aa ], [ %i.ak, %bb.ao ], [ %i.ak, %bb.aq ], [ %i.ak, %bb.az ], [ %i.ak, %bb.ba ], [ %i.ak, %bb.fc ], [ %i.ak, %bb.fd ], [ %i.ak, %bb.dw ]
  %.212711852 = phi ptr [ %.11270, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ null, %bb.hh ], [ null, %bb.gn ], [ %.11270, %bb.hn ], [ %.11270, %bb.hs ], [ %.11270, %bb.hx ], [ %.11270, %bb.ib ], [ %.11270, %bb.ir ], [ %.11270, %bb.iw ], [ %.11270, %bb.iz ], [ %.11270, %bb.jc ], [ %.11270, %bb.jh ], [ %.11270, %bb.jj ], [ %.11270, %bb.jn ], [ %i.ng, %bb.hm ], [ %.11270, %.thread1678 ], [ %.11270, %bb.ko ], [ %.11270, %bb.jw ], [ %.11270, %bb.kr ], [ %.11270, %bb.ks ], [ %.11270, %bb.kw ], [ %.11270, %bb.lc ], [ %.11270, %.thread1684 ], [ %.11270, %bb.lp ], [ %.11270, %bb.ls ], [ %.11270, %.thread1680 ], [ %.11270, %bb.mm ], [ %.11270, %bb.np ], [ %.11270, %bb.nl ], [ %.11270, %bb.nr ], [ %.11270, %bb.sm ], [ %.11270, %bb.oe ], [ %.11270, %bb.ox ], [ %.11270, %bb.sr ], [ %.11270, %bb.mf ], [ %.11270, %bb.rs ], [ %.11270, %bb.rb ], [ %.11270, %bb.qh ], [ %.11270, %.thread1767 ], [ %.11270, %bb.sv ], [ %.11270, %bb.tc ], [ %.11270, %bb.pd ], [ %.11270, %bb.oc ], [ %.11270, %bb.ny ], [ %.11270, %bb.nw ], [ %.11270, %bb.nu ], [ %.11270, %.lr.ph3477 ], [ %.11270, %bb.nj ], [ %.11270, %bb.ng ], [ %.11270, %bb.nc ], [ %.11270, %bb.mx ], [ %.11270, %bb.mu ], [ %.11270, %bb.ms ], [ %.11270, %bb.mp ], [ %.11270, %bb.ly ], [ %.11270, %bb.lv ], [ %.11270, %bb.lk ], [ %.11270, %bb.ld ], [ %.11270, %bb.kz ], [ %.11270, %bb.ka ], [ %.11270, %bb.ii ], [ %.11270, %bb.ig ], [ %.11270, %bb.ie ], [ %.11270, %bb.hy ], [ %.11270, %bb.hv ], [ null, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ null, %bb.hj ], [ %.11270, %bb.ju ], [ %.11270, %bb.mb ], [ %.11270, %bb.md ], [ null, %bb.an ], [ %.11270, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.11270, %bb.wk ], [ %.11270, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.312771850 = phi ptr [ %.01274.lcssa, %bb.xi ], [ %.01274.lcssa, %bb.fj ], [ %.01274.lcssa, %bb.gb ], [ null, %bb.a ], [ %.01274.lcssa, %bb.gq ], [ %.01274.lcssa, %bb.gx ], [ %.01274.lcssa, %bb.gz ], [ %.01274.lcssa, %bb.hh ], [ %.01274.lcssa, %bb.gn ], [ %.01274.lcssa, %bb.hn ], [ %.01274.lcssa, %bb.hs ], [ %.01274.lcssa, %bb.hx ], [ %.01274.lcssa, %bb.ib ], [ %.01274.lcssa, %bb.ir ], [ %.01274.lcssa, %bb.iw ], [ %.01274.lcssa, %bb.iz ], [ %.01274.lcssa, %bb.jc ], [ %.01274.lcssa, %bb.jh ], [ %.01274.lcssa, %bb.jj ], [ %.01274.lcssa, %bb.jn ], [ %.01274.lcssa, %bb.hm ], [ %.01274.lcssa, %.thread1678 ], [ %.01274.lcssa, %bb.ko ], [ %.01274.lcssa, %bb.jw ], [ %.01274.lcssa, %bb.kr ], [ %.01274.lcssa, %bb.ks ], [ %.01274.lcssa, %bb.kw ], [ %.01274.lcssa, %bb.lc ], [ %.01274.lcssa, %.thread1684 ], [ %.01274.lcssa, %bb.lp ], [ %.01274.lcssa, %bb.ls ], [ %.01274.lcssa, %.thread1680 ], [ %.01274.lcssa, %bb.mm ], [ %.01274.lcssa, %bb.np ], [ null, %bb.nl ], [ %.01274.lcssa, %bb.nr ], [ %.01274.lcssa, %bb.sm ], [ %.01274.lcssa, %bb.oe ], [ %.01274.lcssa, %bb.ox ], [ %.01274.lcssa, %bb.sr ], [ %.01274.lcssa, %bb.mf ], [ %.01274.lcssa, %bb.rs ], [ %.01274.lcssa, %bb.rb ], [ %.01274.lcssa, %bb.qh ], [ %.01274.lcssa, %.thread1767 ], [ %.01274.lcssa, %bb.sv ], [ %.01274.lcssa, %bb.tc ], [ %.01274.lcssa, %bb.pd ], [ %.01274.lcssa, %bb.oc ], [ %.01274.lcssa, %bb.ny ], [ %.01274.lcssa, %bb.nw ], [ %.01274.lcssa, %bb.nu ], [ %.01274.lcssa, %.lr.ph3477 ], [ %.01274.lcssa, %bb.nj ], [ %.01274.lcssa, %bb.ng ], [ %.01274.lcssa, %bb.nc ], [ %.01274.lcssa, %bb.mx ], [ %.01274.lcssa, %bb.mu ], [ %.01274.lcssa, %bb.ms ], [ %.01274.lcssa, %bb.mp ], [ %.01274.lcssa, %bb.ly ], [ %.01274.lcssa, %bb.lv ], [ %.01274.lcssa, %bb.lk ], [ %.01274.lcssa, %bb.ld ], [ %.01274.lcssa, %bb.kz ], [ %.01274.lcssa, %bb.ka ], [ %.01274.lcssa, %bb.ii ], [ %.01274.lcssa, %bb.ig ], [ %.01274.lcssa, %bb.ie ], [ %.01274.lcssa, %bb.hy ], [ %.01274.lcssa, %bb.hv ], [ %.01274.lcssa, %bb.hf ], [ %.01274.lcssa, %bb.hd ], [ %.01274.lcssa, %bb.hb ], [ %.01274.lcssa, %bb.gu ], [ %.01274.lcssa, %bb.gr ], [ %.012743305, %bb.d ], [ %.112751651, %bb.dn ], [ %.012743305, %bb.bv ], [ %.012743305, %bb.bk ], [ %.01274.lcssa, %bb.gh ], [ %.01274.lcssa, %bb.gf ], [ %.01274.lcssa, %bb.hj ], [ %.01274.lcssa, %bb.ju ], [ %.01274.lcssa, %bb.mb ], [ %.01274.lcssa, %bb.md ], [ %.012743305, %bb.an ], [ %.01274.lcssa, %bb.vu ], [ %.012743239, %.loopexit1953 ], [ %.012743305, %bb.k ], [ %.012743305, %bb.i ], [ %.012743305, %bb.f ], [ %.01274.lcssa, %bb.wk ], [ %.01274.lcssa, %bb.oh ], [ %.012743305, %bb.aa ], [ %.012743305, %bb.ao ], [ %.012743305, %bb.aq ], [ %.012743305, %bb.az ], [ %.012743305, %bb.ba ], [ %.012743305, %bb.fc ], [ %.012743305, %bb.fd ], [ %.012743305, %bb.dw ]
  %.312831848 = phi ptr [ %.01280.lcssa, %bb.xi ], [ %.01280.lcssa, %bb.fj ], [ %.01280.lcssa, %bb.gb ], [ null, %bb.a ], [ %.01280.lcssa, %bb.gq ], [ %.01280.lcssa, %bb.gx ], [ %.01280.lcssa, %bb.gz ], [ %.01280.lcssa, %bb.hh ], [ %.01280.lcssa, %bb.gn ], [ %.01280.lcssa, %bb.hn ], [ %.01280.lcssa, %bb.hs ], [ %.01280.lcssa, %bb.hx ], [ %.01280.lcssa, %bb.ib ], [ %.01280.lcssa, %bb.ir ], [ %.01280.lcssa, %bb.iw ], [ %.01280.lcssa, %bb.iz ], [ %.01280.lcssa, %bb.jc ], [ %.01280.lcssa, %bb.jh ], [ %.01280.lcssa, %bb.jj ], [ %.01280.lcssa, %bb.jn ], [ %.01280.lcssa, %bb.hm ], [ %.01280.lcssa, %.thread1678 ], [ %.01280.lcssa, %bb.ko ], [ %.01280.lcssa, %bb.jw ], [ %.01280.lcssa, %bb.kr ], [ %.01280.lcssa, %bb.ks ], [ %.01280.lcssa, %bb.kw ], [ %.01280.lcssa, %bb.lc ], [ %.01280.lcssa, %.thread1684 ], [ %.01280.lcssa, %bb.lp ], [ %.01280.lcssa, %bb.ls ], [ %.01280.lcssa, %.thread1680 ], [ %.01280.lcssa, %bb.mm ], [ null, %bb.np ], [ null, %bb.nl ], [ %.01280.lcssa, %bb.nr ], [ %.01280.lcssa, %bb.sm ], [ %.01280.lcssa, %bb.oe ], [ %.01280.lcssa, %bb.ox ], [ %.01280.lcssa, %bb.sr ], [ %.01280.lcssa, %bb.mf ], [ %.01280.lcssa, %bb.rs ], [ %.01280.lcssa, %bb.rb ], [ %.01280.lcssa, %bb.qh ], [ %.01280.lcssa, %.thread1767 ], [ %.01280.lcssa, %bb.sv ], [ %.01280.lcssa, %bb.tc ], [ %.01280.lcssa, %bb.pd ], [ %.01280.lcssa, %bb.oc ], [ %.01280.lcssa, %bb.ny ], [ %.01280.lcssa, %bb.nw ], [ %.01280.lcssa, %bb.nu ], [ %.01280.lcssa, %.lr.ph3477 ], [ %.01280.lcssa, %bb.nj ], [ %.01280.lcssa, %bb.ng ], [ %.01280.lcssa, %bb.nc ], [ %.01280.lcssa, %bb.mx ], [ %.01280.lcssa, %bb.mu ], [ %.01280.lcssa, %bb.ms ], [ %.01280.lcssa, %bb.mp ], [ %.01280.lcssa, %bb.ly ], [ %.01280.lcssa, %bb.lv ], [ %.01280.lcssa, %bb.lk ], [ %.01280.lcssa, %bb.ld ], [ %.01280.lcssa, %bb.kz ], [ %.01280.lcssa, %bb.ka ], [ %.01280.lcssa, %bb.ii ], [ %.01280.lcssa, %bb.ig ], [ %.01280.lcssa, %bb.ie ], [ %.01280.lcssa, %bb.hy ], [ %.01280.lcssa, %bb.hv ], [ %.01280.lcssa, %bb.hf ], [ %.01280.lcssa, %bb.hd ], [ %.01280.lcssa, %bb.hb ], [ %.01280.lcssa, %bb.gu ], [ %.01280.lcssa, %bb.gr ], [ %.012803303, %bb.d ], [ %.012803303, %bb.dn ], [ %.012803303, %bb.bv ], [ %.012803303, %bb.bk ], [ %.01280.lcssa, %bb.gh ], [ %.01280.lcssa, %bb.gf ], [ %.01280.lcssa, %bb.hj ], [ %.01280.lcssa, %bb.ju ], [ %.01280.lcssa, %bb.mb ], [ %.01280.lcssa, %bb.md ], [ %.012803303, %bb.an ], [ %.01280.lcssa, %bb.vu ], [ %.012803268, %.loopexit1953 ], [ %.012803303, %bb.k ], [ %.012803303, %bb.i ], [ %.012803303, %bb.f ], [ %.01280.lcssa, %bb.wk ], [ %.01280.lcssa, %bb.oh ], [ %.012803303, %bb.ba ], [ %.012803303, %bb.az ], [ %.012803303, %bb.aq ], [ %.012803303, %bb.ao ], [ %.012803303, %bb.aa ], [ %.012803303, %bb.dw ], [ %.11281, %bb.fd ], [ null, %bb.fc ]
  %.312871846 = phi ptr [ %.01284.lcssa, %bb.xi ], [ %.01284.lcssa, %bb.fj ], [ %.01284.lcssa, %bb.gb ], [ null, %bb.a ], [ %.01284.lcssa, %bb.gq ], [ %.01284.lcssa, %bb.gx ], [ %.01284.lcssa, %bb.gz ], [ %.01284.lcssa, %bb.hh ], [ %.01284.lcssa, %bb.gn ], [ %.01284.lcssa, %bb.hn ], [ %.01284.lcssa, %bb.hs ], [ %.01284.lcssa, %bb.hx ], [ %.01284.lcssa, %bb.ib ], [ %.01284.lcssa, %bb.ir ], [ %.01284.lcssa, %bb.iw ], [ %.01284.lcssa, %bb.iz ], [ %.01284.lcssa, %bb.jc ], [ %.01284.lcssa, %bb.jh ], [ %.01284.lcssa, %bb.jj ], [ %.01284.lcssa, %bb.jn ], [ %.01284.lcssa, %bb.hm ], [ %.01284.lcssa, %.thread1678 ], [ %.01284.lcssa, %bb.ko ], [ %.01284.lcssa, %bb.jw ], [ %.01284.lcssa, %bb.kr ], [ %.01284.lcssa, %bb.ks ], [ %.01284.lcssa, %bb.kw ], [ %.01284.lcssa, %bb.lc ], [ %.01284.lcssa, %.thread1684 ], [ %.01284.lcssa, %bb.lp ], [ %.01284.lcssa, %bb.ls ], [ %.01284.lcssa, %.thread1680 ], [ %.01284.lcssa, %bb.mm ], [ %.01284.lcssa, %bb.np ], [ %.01284.lcssa, %bb.nl ], [ %.01284.lcssa, %bb.nr ], [ %.01284.lcssa, %bb.sm ], [ %.01284.lcssa, %bb.oe ], [ %.01284.lcssa, %bb.ox ], [ %.01284.lcssa, %bb.sr ], [ %.01284.lcssa, %bb.mf ], [ %.01284.lcssa, %bb.rs ], [ %.01284.lcssa, %bb.rb ], [ %.01284.lcssa, %bb.qh ], [ %.01284.lcssa, %.thread1767 ], [ %.01284.lcssa, %bb.sv ], [ %.01284.lcssa, %bb.tc ], [ %.01284.lcssa, %bb.pd ], [ %.01284.lcssa, %bb.oc ], [ %.01284.lcssa, %bb.ny ], [ %.01284.lcssa, %bb.nw ], [ %.01284.lcssa, %bb.nu ], [ %.01284.lcssa, %.lr.ph3477 ], [ %.01284.lcssa, %bb.nj ], [ %.01284.lcssa, %bb.ng ], [ %.01284.lcssa, %bb.nc ], [ %.01284.lcssa, %bb.mx ], [ %.01284.lcssa, %bb.mu ], [ %.01284.lcssa, %bb.ms ], [ %.01284.lcssa, %bb.mp ], [ %.01284.lcssa, %bb.ly ], [ %.01284.lcssa, %bb.lv ], [ %.01284.lcssa, %bb.lk ], [ %.01284.lcssa, %bb.ld ], [ %.01284.lcssa, %bb.kz ], [ %.01284.lcssa, %bb.ka ], [ %.01284.lcssa, %bb.ii ], [ %.01284.lcssa, %bb.ig ], [ %.01284.lcssa, %bb.ie ], [ %.01284.lcssa, %bb.hy ], [ %.01284.lcssa, %bb.hv ], [ %.01284.lcssa, %bb.hf ], [ %.01284.lcssa, %bb.hd ], [ %.01284.lcssa, %bb.hb ], [ %.01284.lcssa, %bb.gu ], [ %.01284.lcssa, %bb.gr ], [ %.012843302, %bb.d ], [ %.012843302, %bb.dn ], [ %.012843302, %bb.bv ], [ %.012843302, %bb.bk ], [ %.01284.lcssa, %bb.gh ], [ %.01284.lcssa, %bb.gf ], [ %.01284.lcssa, %bb.hj ], [ %.01284.lcssa, %bb.ju ], [ %.01284.lcssa, %bb.mb ], [ %.01284.lcssa, %bb.md ], [ %.112851647, %bb.an ], [ %.01284.lcssa, %bb.vu ], [ %.012843285, %.loopexit1953 ], [ %.012843302, %bb.k ], [ %.012843302, %bb.i ], [ %.012843302, %bb.f ], [ %.01284.lcssa, %bb.wk ], [ %.01284.lcssa, %bb.oh ], [ %.012843302, %bb.aa ], [ %.012843302, %bb.ao ], [ %.012843302, %bb.aq ], [ %.012843302, %bb.az ], [ %.012843302, %bb.ba ], [ %.012843302, %bb.fc ], [ %.012843302, %bb.fd ], [ %.012843302, %bb.dw ]
  %.112891844 = phi ptr [ %.01288, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ %.01288, %bb.hh ], [ null, %bb.gn ], [ %.01288, %bb.hn ], [ %.01288, %bb.hs ], [ %.01288, %bb.hx ], [ %.01288, %bb.ib ], [ %.01288, %bb.ir ], [ %.01288, %bb.iw ], [ %.01288, %bb.iz ], [ %.01288, %bb.jc ], [ %.01288, %bb.jh ], [ %.01288, %bb.jj ], [ %.01288, %bb.jn ], [ %.01288, %bb.hm ], [ %.01288, %.thread1678 ], [ %.01288, %bb.ko ], [ %.01288, %bb.jw ], [ %.01288, %bb.kr ], [ %.01288, %bb.ks ], [ %.01288, %bb.kw ], [ %.01288, %bb.lc ], [ %.01288, %.thread1684 ], [ %.01288, %bb.lp ], [ %.01288, %bb.ls ], [ %.01288, %.thread1680 ], [ %.01288, %bb.mm ], [ %.01288, %bb.np ], [ %.01288, %bb.nl ], [ %.01288, %bb.nr ], [ %.01288, %bb.sm ], [ %.01288, %bb.oe ], [ %.01288, %bb.ox ], [ %.01288, %bb.sr ], [ %.01288, %bb.mf ], [ %.01288, %bb.rs ], [ %.01288, %bb.rb ], [ %.01288, %bb.qh ], [ %.01288, %.thread1767 ], [ %.01288, %bb.sv ], [ %.01288, %bb.tc ], [ %.01288, %bb.pd ], [ %.01288, %bb.oc ], [ %.01288, %bb.ny ], [ %.01288, %bb.nw ], [ %.01288, %bb.nu ], [ %.01288, %.lr.ph3477 ], [ %.01288, %bb.nj ], [ %.01288, %bb.ng ], [ %.01288, %bb.nc ], [ %.01288, %bb.mx ], [ %.01288, %bb.mu ], [ %.01288, %bb.ms ], [ %.01288, %bb.mp ], [ %.01288, %bb.ly ], [ %.01288, %bb.lv ], [ %.01288, %bb.lk ], [ %.01288, %bb.ld ], [ %.01288, %bb.kz ], [ %.01288, %bb.ka ], [ %.01288, %bb.ii ], [ %.01288, %bb.ig ], [ %.01288, %bb.ie ], [ %.01288, %bb.hy ], [ %.01288, %bb.hv ], [ null, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ %.01288, %bb.hj ], [ %.01288, %bb.ju ], [ %.01288, %bb.mb ], [ %.01288, %bb.md ], [ null, %bb.an ], [ %.01288, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.01288, %bb.wk ], [ %.01288, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.012901842 = phi ptr [ %i.oh, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ null, %bb.hh ], [ null, %bb.gn ], [ null, %bb.hn ], [ null, %bb.hs ], [ null, %bb.hx ], [ %i.oh, %bb.ib ], [ %i.oh, %bb.ir ], [ %i.oh, %bb.iw ], [ %i.oh, %bb.iz ], [ %i.oh, %bb.jc ], [ %i.oh, %bb.jh ], [ %i.oh, %bb.jj ], [ %i.oh, %bb.jn ], [ null, %bb.hm ], [ %i.oh, %.thread1678 ], [ %i.oh, %bb.ko ], [ %i.oh, %bb.jw ], [ %i.oh, %bb.kr ], [ %i.oh, %bb.ks ], [ %i.oh, %bb.kw ], [ %i.oh, %bb.lc ], [ %i.oh, %.thread1684 ], [ %i.oh, %bb.lp ], [ %i.oh, %bb.ls ], [ %i.oh, %.thread1680 ], [ %i.oh, %bb.mm ], [ %i.oh, %bb.np ], [ %i.oh, %bb.nl ], [ %i.oh, %bb.nr ], [ %i.oh, %bb.sm ], [ %i.oh, %bb.oe ], [ %i.oh, %bb.ox ], [ %i.oh, %bb.sr ], [ %i.oh, %bb.mf ], [ %i.oh, %bb.rs ], [ %i.oh, %bb.rb ], [ %i.oh, %bb.qh ], [ %i.oh, %.thread1767 ], [ %i.oh, %bb.sv ], [ %i.oh, %bb.tc ], [ %i.oh, %bb.pd ], [ %i.oh, %bb.oc ], [ %i.oh, %bb.ny ], [ %i.oh, %bb.nw ], [ %i.oh, %bb.nu ], [ %i.oh, %.lr.ph3477 ], [ %i.oh, %bb.nj ], [ %i.oh, %bb.ng ], [ %i.oh, %bb.nc ], [ %i.oh, %bb.mx ], [ %i.oh, %bb.mu ], [ %i.oh, %bb.ms ], [ %i.oh, %bb.mp ], [ %i.oh, %bb.ly ], [ %i.oh, %bb.lv ], [ %i.oh, %bb.lk ], [ %i.oh, %bb.ld ], [ %i.oh, %bb.kz ], [ %i.oh, %bb.ka ], [ %i.oh, %bb.ii ], [ %i.oh, %bb.ig ], [ %i.oh, %bb.ie ], [ null, %bb.hy ], [ null, %bb.hv ], [ null, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ null, %bb.hj ], [ %i.oh, %bb.ju ], [ %i.oh, %bb.mb ], [ %i.oh, %bb.md ], [ null, %bb.an ], [ %i.oh, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %i.oh, %bb.wk ], [ %i.oh, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.012911840 = phi ptr [ %i.sy, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ null, %bb.hh ], [ null, %bb.gn ], [ null, %bb.hn ], [ null, %bb.hs ], [ null, %bb.hx ], [ null, %bb.ib ], [ null, %bb.ir ], [ null, %bb.iw ], [ null, %bb.iz ], [ null, %bb.jc ], [ null, %bb.jh ], [ null, %bb.jj ], [ null, %bb.jn ], [ null, %bb.hm ], [ null, %.thread1678 ], [ null, %bb.ko ], [ null, %bb.jw ], [ null, %bb.kr ], [ null, %bb.ks ], [ null, %bb.kw ], [ null, %bb.lc ], [ null, %.thread1684 ], [ %i.sy, %bb.lp ], [ %i.sy, %bb.ls ], [ null, %.thread1680 ], [ %i.sy, %bb.mm ], [ %i.sy, %bb.np ], [ %i.sy, %bb.nl ], [ %i.sy, %bb.nr ], [ %i.sy, %bb.sm ], [ %i.sy, %bb.oe ], [ %i.sy, %bb.ox ], [ %i.sy, %bb.sr ], [ %i.sy, %bb.mf ], [ %i.sy, %bb.rs ], [ %i.sy, %bb.rb ], [ %i.sy, %bb.qh ], [ %i.sy, %.thread1767 ], [ %i.sy, %bb.sv ], [ %i.sy, %bb.tc ], [ %i.sy, %bb.pd ], [ %i.sy, %bb.oc ], [ %i.sy, %bb.ny ], [ %i.sy, %bb.nw ], [ %i.sy, %bb.nu ], [ %i.sy, %.lr.ph3477 ], [ %i.sy, %bb.nj ], [ %i.sy, %bb.ng ], [ %i.sy, %bb.nc ], [ %i.sy, %bb.mx ], [ %i.sy, %bb.mu ], [ %i.sy, %bb.ms ], [ %i.sy, %bb.mp ], [ %i.sy, %bb.ly ], [ %i.sy, %bb.lv ], [ null, %bb.lk ], [ null, %bb.ld ], [ null, %bb.kz ], [ null, %bb.ka ], [ null, %bb.ii ], [ null, %bb.ig ], [ null, %bb.ie ], [ null, %bb.hy ], [ null, %bb.hv ], [ null, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ null, %bb.hj ], [ null, %bb.ju ], [ %i.sy, %bb.mb ], [ %i.sy, %bb.md ], [ null, %bb.an ], [ %i.sy, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %i.sy, %bb.wk ], [ %i.sy, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %.112931838 = phi ptr [ %.01292, %bb.xi ], [ null, %bb.fj ], [ null, %bb.gb ], [ null, %bb.a ], [ null, %bb.gq ], [ null, %bb.gx ], [ null, %bb.gz ], [ %.01292, %bb.hh ], [ null, %bb.gn ], [ %.01292, %bb.hn ], [ %.01292, %bb.hs ], [ %.01292, %bb.hx ], [ %.01292, %bb.ib ], [ %.01292, %bb.ir ], [ %.01292, %bb.iw ], [ %.01292, %bb.iz ], [ %.01292, %bb.jc ], [ %.01292, %bb.jh ], [ %.01292, %bb.jj ], [ %.01292, %bb.jn ], [ %.01292, %bb.hm ], [ %.01292, %.thread1678 ], [ %.01292, %bb.ko ], [ %.01292, %bb.jw ], [ %.01292, %bb.kr ], [ %.01292, %bb.ks ], [ %.01292, %bb.kw ], [ %.01292, %bb.lc ], [ %.01292, %.thread1684 ], [ %.01292, %bb.lp ], [ %.01292, %bb.ls ], [ %.01292, %.thread1680 ], [ %.01292, %bb.mm ], [ %.01292, %bb.np ], [ %.01292, %bb.nl ], [ %.01292, %bb.nr ], [ %.01292, %bb.sm ], [ %.01292, %bb.oe ], [ %.01292, %bb.ox ], [ %.01292, %bb.sr ], [ %.01292, %bb.mf ], [ %.01292, %bb.rs ], [ %.01292, %bb.rb ], [ %.01292, %bb.qh ], [ %.01292, %.thread1767 ], [ %.01292, %bb.sv ], [ %.01292, %bb.tc ], [ %.01292, %bb.pd ], [ %.01292, %bb.oc ], [ %.01292, %bb.ny ], [ %.01292, %bb.nw ], [ %.01292, %bb.nu ], [ %.01292, %.lr.ph3477 ], [ %.01292, %bb.nj ], [ %.01292, %bb.ng ], [ %.01292, %bb.nc ], [ %.01292, %bb.mx ], [ %.01292, %bb.mu ], [ %.01292, %bb.ms ], [ %.01292, %bb.mp ], [ %.01292, %bb.ly ], [ %.01292, %bb.lv ], [ %.01292, %bb.lk ], [ %.01292, %bb.ld ], [ %.01292, %bb.kz ], [ %.01292, %bb.ka ], [ %.01292, %bb.ii ], [ %.01292, %bb.ig ], [ %.01292, %bb.ie ], [ %.01292, %bb.hy ], [ %.01292, %bb.hv ], [ %.01292, %bb.hf ], [ null, %bb.hd ], [ null, %bb.hb ], [ null, %bb.gu ], [ null, %bb.gr ], [ null, %bb.d ], [ null, %bb.dn ], [ null, %bb.bv ], [ null, %bb.bk ], [ null, %bb.gh ], [ null, %bb.gf ], [ %.01292, %bb.hj ], [ %.01292, %bb.ju ], [ %.01292, %bb.mb ], [ %.01292, %bb.md ], [ null, %bb.an ], [ %.01292, %bb.vu ], [ null, %.loopexit1953 ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.f ], [ %.01292, %bb.wk ], [ %.01292, %bb.oh ], [ null, %bb.aa ], [ null, %bb.ao ], [ null, %bb.aq ], [ null, %bb.az ], [ null, %bb.ba ], [ null, %bb.fc ], [ null, %bb.fd ], [ null, %bb.dw ]
  %i.azv = load ptr, ptr @bio_err, align 8, !tbaa !17
  call void @ERR_print_errors(ptr noundef %i.azv) #16
  br label %bb.xj

bb.xj:                                            ; preds = %.thread1818, %bb.xi
  %.410341871 = phi ptr [ %.410341872, %.thread1818 ], [ %.31033, %bb.xi ] ; 2 uses
  %.110901869 = phi ptr [ %.110901870, %.thread1818 ], [ null, %bb.xi ] ; 2 uses
  %.411011867 = phi ptr [ %.411011868, %.thread1818 ], [ %.31100, %bb.xi ] ; 2 uses
  %.411691865 = phi i32 [ %.411691866, %.thread1818 ], [ %.311681807, %bb.xi ] ; 2 uses
  %.211831863 = phi i32 [ %.211831864, %.thread1818 ], [ %.01181.lcssa, %bb.xi ]
  %.312341861 = phi ptr [ %.312341862, %.thread1818 ], [ %.21233, %bb.xi ] ; 2 uses
  %.312381859 = phi ptr [ %.312381860, %.thread1818 ], [ %.21237, %bb.xi ] ; 2 uses
  %.012581857 = phi ptr [ %.012581858, %.thread1818 ], [ %i.am, %bb.xi ] ; 2 uses
  %.012591855 = phi ptr [ %.012591856, %.thread1818 ], [ %i.al, %bb.xi ] ; 2 uses
  %.012601853 = phi ptr [ %.012601854, %.thread1818 ], [ %i.ak, %bb.xi ] ; 2 uses
  %.212711851 = phi ptr [ %.212711852, %.thread1818 ], [ %.11270, %bb.xi ] ; 2 uses
  %.312771849 = phi ptr [ %.312771850, %.thread1818 ], [ %.01274.lcssa, %bb.xi ] ; 2 uses
  %.312831847 = phi ptr [ %.312831848, %.thread1818 ], [ %.01280.lcssa, %bb.xi ] ; 2 uses
  %.312871845 = phi ptr [ %.312871846, %.thread1818 ], [ %.01284.lcssa, %bb.xi ] ; 2 uses
  %.112891843 = phi ptr [ %.112891844, %.thread1818 ], [ %.01288, %bb.xi ] ; 2 uses
  %.012901841 = phi ptr [ %.012901842, %.thread1818 ], [ %i.oh, %bb.xi ] ; 2 uses
  %.012911839 = phi ptr [ %.012911840, %.thread1818 ], [ %i.sy, %bb.xi ] ; 3 uses
  %.112931837 = phi ptr [ %.112931838, %.thread1818 ], [ %.01292, %bb.xi ] ; 2 uses
  %.not1600 = icmp eq ptr %.012911839, null
  br i1 %.not1600, label %bb.xn, label %bb.xk

bb.xk:                                            ; preds = %bb.xj
  %.not1601 = icmp eq i32 %.211831863, 0
  br i1 %.not1601, label %bb.xm, label %bb.xl

bb.xl:                                            ; preds = %bb.xk
  %i.azw = load ptr, ptr @bio_c_out, align 8, !tbaa !17
  call fastcc void @print_stuff(ptr noundef %i.azw, ptr noundef %.012911839, i32 noundef 1)
  br label %bb.xm

bb.xm:                                            ; preds = %bb.xl, %bb.xk
  call void @SSL_free(ptr noundef nonnull %.012911839) #16
  br label %bb.xn

bb.xn:                                            ; preds = %.thread1892, %bb.xm, %bb.xj
  %.1129318371927 = phi ptr [ null, %.thread1892 ], [ %.112931837, %bb.xm ], [ %.112931837, %bb.xj ]
  %.0129018411926 = phi ptr [ null, %.thread1892 ], [ %.012901841, %bb.xm ], [ %.012901841, %bb.xj ]
  %.1128918431925 = phi ptr [ null, %.thread1892 ], [ %.112891843, %bb.xm ], [ %.112891843, %bb.xj ]
  %.3128718451924 = phi ptr [ %.012843302, %.thread1892 ], [ %.312871845, %bb.xm ], [ %.312871845, %bb.xj ]
  %.3128318471923 = phi ptr [ %.012803303, %.thread1892 ], [ %.312831847, %bb.xm ], [ %.312831847, %bb.xj ]
  %.3127718491922 = phi ptr [ %.012743305, %.thread1892 ], [ %.312771849, %bb.xm ], [ %.312771849, %bb.xj ]
  %.2127118511921 = phi ptr [ null, %.thread1892 ], [ %.212711851, %bb.xm ], [ %.212711851, %bb.xj ]
  %.0126018531920 = phi ptr [ %i.ak, %.thread1892 ], [ %.012601853, %bb.xm ], [ %.012601853, %bb.xj ]
  %.0125918551919 = phi ptr [ %i.al, %.thread1892 ], [ %.012591855, %bb.xm ], [ %.012591855, %bb.xj ]
  %.0125818571918 = phi ptr [ %i.am, %.thread1892 ], [ %.012581857, %bb.xm ], [ %.012581857, %bb.xj ]
  %.3123818591917 = phi ptr [ null, %.thread1892 ], [ %.312381859, %bb.xm ], [ %.312381859, %bb.xj ]
  %.3123418611916 = phi ptr [ null, %.thread1892 ], [ %.312341861, %bb.xm ], [ %.312341861, %bb.xj ]
  %.4116918651915 = phi i32 [ 0, %.thread1892 ], [ %.411691865, %bb.xm ], [ %.411691865, %bb.xj ]
  %.4110118671914 = phi ptr [ null, %.thread1892 ], [ %.411011867, %bb.xm ], [ %.411011867, %bb.xj ]
  %.1109018691913 = phi ptr [ null, %.thread1892 ], [ %.110901869, %bb.xm ], [ %.110901869, %bb.xj ]
  %.4103418711912 = phi ptr [ %.010303378, %.thread1892 ], [ %.410341871, %bb.xm ], [ %.410341871, %bb.xj ]
  %i.azx = load ptr, ptr @psksess, align 8, !tbaa !28
  call void @SSL_SESSION_free(ptr noundef %i.azx) #16
  %i.azy = load ptr, ptr @next_proto, align 8, !tbaa !26
  call void @CRYPTO_free(ptr noundef %i.azy, ptr noundef nonnull @.str.417, i32 noundef 3539) #16
  call void @SSL_CTX_free(ptr noundef %.0129018411926) #16
  %i.azz = call i32 @set_keylog_file(ptr noundef null, ptr noundef null) #16 ; 0 uses
  call void @X509_free(ptr noundef %.1128918431925) #16
  call void @OPENSSL_sk_pop_free(ptr noundef %.2127118511921, ptr noundef nonnull @X509_CRL_free) #16
  call void @EVP_PKEY_free(ptr noundef %.1129318371927) #16
  %i.baa = load ptr, ptr %i.a, align 8, !tbaa !60
  call void @OSSL_STACK_OF_X509_free(ptr noundef %i.baa) #16
  %i.bab = load ptr, ptr %i.j, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.bab, ptr noundef nonnull @.str.417, i32 noundef 3547) #16
  %i.bac = load ptr, ptr %6, align 8, !tbaa !82
  call void @CRYPTO_free(ptr noundef %i.bac, ptr noundef nonnull @.str.417, i32 noundef 3549) #16
  call void @CRYPTO_free(ptr noundef %.4110118671914, ptr noundef nonnull @.str.417, i32 noundef 3551) #16
  %i.bad = load ptr, ptr %i.t, align 8, !tbaa !64
  call void @BIO_ADDR_free(ptr noundef %i.bad) #16
  %i.bae = load ptr, ptr %i.d, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.bae, ptr noundef nonnull @.str.417, i32 noundef 3553) #16
  %i.baf = load ptr, ptr %i.e, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.baf, ptr noundef nonnull @.str.417, i32 noundef 3554) #16
  %i.bag = load ptr, ptr %i.h, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.bag, ptr noundef nonnull @.str.417, i32 noundef 3555) #16
  %i.bah = load ptr, ptr %i.i, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.bah, ptr noundef nonnull @.str.417, i32 noundef 3556) #16
  %i.bai = load ptr, ptr %i.f, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.bai, ptr noundef nonnull @.str.417, i32 noundef 3557) #16
  %i.baj = load ptr, ptr %i.g, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.baj, ptr noundef nonnull @.str.417, i32 noundef 3558) #16
  call void @CRYPTO_free(ptr noundef %.3123818591917, ptr noundef nonnull @.str.417, i32 noundef 3559) #16
  call void @CRYPTO_free(ptr noundef %.3123418611916, ptr noundef nonnull @.str.417, i32 noundef 3560) #16
  call void @X509_VERIFY_PARAM_free(ptr noundef %i.ac) #16
  %i.bak = load ptr, ptr %i.b, align 8, !tbaa !62
end_hunk_1
