Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic-client?download=true
inline.NumInlined: 15
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.in_addr = type { i32 }
%struct.timeval = type { i64, i64 }

@fake_now.0 = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"localhost\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\08ossltest\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FuzzerInitialize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerSetRand() #6
  %i.a = tail call i32 @OPENSSL_init_crypto(i64 noundef 258, ptr noundef null) #6 ; 0 uses
  %i.b = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, ptr noundef null) #6 ; 0 uses
  tail call void @ERR_clear_error() #6
  %i.c = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #6 ; 0 uses
  %i.d = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #6 ; 0 uses
  %i.e = tail call ptr @SSL_COMP_get_compression_methods() #6 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_sk_sort(ptr noundef nonnull %i.e) #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @FuzzerSetRand() local_unnamed_addr #2

declare i32 @OPENSSL_init_crypto(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_init_ssl(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_clear_error() local_unnamed_addr #2

declare i32 @CRYPTO_free_ex_index(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_get_ex_data_X509_STORE_CTX_idx() local_unnamed_addr #2

declare ptr @SSL_COMP_get_compression_methods() local_unnamed_addr #2

declare void @OPENSSL_sk_sort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FuzzerTestOneInput(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 9 uses
  %2 = alloca %struct.in_addr, align 4            ; 5 uses
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OSSL_QUIC_client_method() #6
  %i.f = tail call ptr @SSL_CTX_new(ptr noundef %i.e) #6 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @SSL_new(ptr noundef nonnull %i.f) #6 ; 14 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1000000, ptr @fake_now.0, align 8, !tbaa !10
  %i.j = tail call i32 @ossl_quic_set_override_now_cb(ptr noundef nonnull %i.h, ptr noundef nonnull @fake_now_cb, ptr noundef null) #6
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @BIO_ADDR_new() #6         ; 13 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 16777343, ptr %2, align 4, !tbaa !13
  %i.m = call i32 @BIO_ADDR_rawmake(ptr noundef nonnull %i.k, i32 noundef 2, ptr noundef nonnull %2, i64 noundef 4, i16 noundef zeroext 20753) #6
  %.not146 = icmp eq i32 %i.m, 0
  br i1 %.not146, label %.lr.ph.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call i64 @SSL_ctrl(ptr noundef nonnull %i.h, i32 noundef 55, i64 noundef 0, ptr noundef nonnull @.str) #6 ; 0 uses
  %i.o = call ptr @BIO_s_dgram_mem() #6
  %i.p = call ptr @BIO_new(ptr noundef %i.o) #6   ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.lr.ph.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = call ptr @BIO_s_dgram_mem() #6
  %i.s = call ptr @BIO_new(ptr noundef %i.r) #6   ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %4, label %bb.i

4:                                                ; preds = %bb.h
  %5 = call i32 @BIO_free(ptr noundef nonnull %i.p) #6 ; 0 uses
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.h
  %i.u = call i64 @BIO_ctrl(ptr noundef nonnull %i.s, i32 noundef 87, i64 noundef 2, ptr noundef null) #6
  %i.v = and i64 %i.u, 4294967295
  %.not147 = icmp eq i64 %i.v, 0
  br i1 %.not147, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = call i32 @BIO_free(ptr noundef nonnull %i.p) #6 ; 0 uses
  %6 = call i32 @BIO_free(ptr noundef nonnull %i.s) #6 ; 0 uses
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %bb.i
  call void @SSL_set_bio(ptr noundef nonnull %i.h, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s) #6
  %i.x = call i32 @SSL_set_alpn_protos(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.1, i32 noundef 9) #6
  %.not148 = icmp eq i32 %i.x, 0
  br i1 %.not148, label %bb.l, label %.lr.ph.preheader

bb.l:                                             ; preds = %bb.k
  %i.y = call i32 @SSL_set1_initial_peer_addr(ptr noundef nonnull %i.h, ptr noundef nonnull %i.k) #6
  %.not149 = icmp eq i32 %i.y, 1
  br i1 %.not149, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  call void @SSL_set_connect_state(ptr noundef nonnull %i.h) #6
  %i.z = call i32 @SSL_set_incoming_stream_policy(ptr noundef nonnull %i.h, i32 noundef 1, i64 noundef 0) #6
  %.not150 = icmp eq i32 %i.z, 0
  br i1 %.not150, label %.lr.ph.preheader, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.h, ptr %i.a, align 16, !tbaa !16
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.o

bb.o:                                             ; preds = %bb.aw, %bb.n
  %.0125 = phi i64 [ 0, %bb.n ], [ %.2127166, %bb.aw ]
  %.0120 = phi i64 [ 1, %bb.n ], [ %.2122167, %bb.aw ]
  %.0115 = phi i32 [ 0, %bb.n ], [ %.5168, %bb.aw ] ; 11 uses
  %.0111 = phi i32 [ 0, %bb.n ], [ %.2113169, %bb.aw ]
  %.0106 = phi ptr [ %i.h, %bb.n ], [ %.2108170, %bb.aw ]
  %.0100 = phi i64 [ %1, %bb.n ], [ %i.cq, %bb.aw ] ; 7 uses
  %.099 = phi ptr [ %0, %bb.n ], [ %i.cr, %bb.aw ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ab = icmp ugt i64 %.0100, 1
  br i1 %i.ab, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp ugt i64 %.0100, 4
  br i1 %i.ac, label %bb.q, label %bb.x

bb.q:                                             ; preds = %bb.p
  %i.ad = load i8, ptr %.099, align 1, !tbaa !17
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.099, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  %i.ah = icmp eq i8 %i.ag, -1
  br i1 %i.ah, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.ai = getelementptr inbounds nuw i8, ptr %.099, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  switch i8 %i.aj, label %bb.w [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ak = icmp eq i32 %.0115, 1
  %spec.store.select = select i1 %i.ak, i32 3, i32 %.0115
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.al = icmp eq i32 %.0115, 1
  %spec.store.select1 = select i1 %i.al, i32 4, i32 %.0115
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.am = icmp eq i32 %.0115, 1
  %spec.store.select2 = select i1 %i.am, i32 5, i32 %.0115
  br label %bb.w

bb.w:                                             ; preds = %bb.s, %bb.v, %bb.u, %bb.t
  %.1116 = phi i32 [ %.0115, %bb.s ], [ %spec.store.select, %bb.t ], [ %spec.store.select1, %bb.u ], [ %spec.store.select2, %bb.v ]
  %i.an = add i64 %.0100, -3
  %i.ao = getelementptr inbounds nuw i8, ptr %.099, i64 3
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r, %bb.q, %bb.p
  %.2117 = phi i32 [ %.1116, %bb.w ], [ %.0115, %bb.r ], [ %.0115, %bb.q ], [ %.0115, %bb.p ]
  %.1101 = phi i64 [ %i.an, %bb.w ], [ %.0100, %bb.r ], [ %.0100, %bb.q ], [ %.0100, %bb.p ]
  %.1 = phi ptr [ %i.ao, %bb.w ], [ %.099, %bb.r ], [ %.099, %bb.q ], [ %.099, %bb.p ] ; 2 uses
  %i.ap = load i16, ptr %.1, align 1
  %i.aq = zext i16 %i.ap to i64
  %i.ar = mul nuw nsw i64 %i.aq, 1000000
  %i.as = load i64, ptr @fake_now.0, align 8
  %.sroa.03.0.i = call i64 @llvm.uadd.sat.i64(i64 %i.as, i64 %i.ar)
  %i.at = add i64 %.1101, -2
  %i.au = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.o
  %.3118 = phi i32 [ %.2117, %bb.x ], [ %.0115, %bb.o ]
  %.sroa.013.0 = phi i64 [ %.sroa.03.0.i, %bb.x ], [ 0, %bb.o ] ; 3 uses
  %.2102 = phi i64 [ %i.at, %bb.x ], [ %.0100, %bb.o ] ; 4 uses
  %.2 = phi ptr [ %i.au, %bb.x ], [ %.099, %bb.o ] ; 3 uses
  %i.av = icmp ugt i64 %.2102, 3
  br label %bb.z

bb.z:                                             ; preds = %bb.ar, %bb.y
  %.1126 = phi i64 [ %.0125, %bb.y ], [ %.2127166, %bb.ar ] ; 9 uses
  %.1121 = phi i64 [ %.0120, %bb.y ], [ %.2122167, %bb.ar ] ; 16 uses
  %.4 = phi i32 [ %.3118, %bb.y ], [ %.5168, %bb.ar ] ; 2 uses
  %.1112 = phi i32 [ %.0111, %bb.y ], [ %.2113169, %bb.ar ] ; 13 uses
  %.1107 = phi ptr [ %.0106, %bb.y ], [ %.2108170, %bb.ar ] ; 10 uses
  %.0104 = phi i32 [ 0, %bb.y ], [ %.1105171, %bb.ar ]
  switch i32 %.4, label %bb.am [
    i32 0, label %bb.aa
    i32 1, label %bb.ab
    i32 2, label %bb.ac
    i32 3, label %bb.ad
    i32 4, label %bb.ag
    i32 5, label %bb.ak
  ]

bb.aa:                                            ; preds = %bb.z
  %i.aw = call i32 @SSL_do_handshake(ptr noundef %.1107) #6 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 1
  %spec.select = zext i1 %i.ax to i32
  br label %bb.am

bb.ab:                                            ; preds = %bb.z
  %i.ay = call i32 @SSL_read(ptr noundef %.1107, ptr noundef nonnull %i.b, i32 noundef 1024) #6 ; 3 uses
  %i.az = icmp sgt i32 %i.ay, 0                   ; 2 uses
  %spec.select155 = select i1 %i.az, i32 2, i32 1
  %spec.select156 = select i1 %i.az, i32 %i.ay, i32 %.1112
  br label %bb.am

bb.ac:                                            ; preds = %bb.z
  %i.ba = call i32 @SSL_write(ptr noundef %.1107, ptr noundef nonnull %i.b, i32 noundef %.1112) #6 ; 2 uses
  %.inv = icmp slt i32 %i.ba, 1
  %spec.select157 = select i1 %.inv, i32 2, i32 1
  br label %bb.am

bb.ad:                                            ; preds = %bb.z
  %i.bb = icmp eq i64 %.1121, 4
  br i1 %i.bb, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = call i64 @SSL_get_accept_stream_queue_len(ptr noundef nonnull %i.h) #6
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.be = call ptr @SSL_accept_stream(ptr noundef nonnull %i.h, i64 noundef 0) #6 ; 3 uses
  %i.bf = add nuw nsw i64 %.1121, 1               ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1121
  store ptr %i.be, ptr %i.bg, align 8, !tbaa !16
  %i.bh = icmp eq ptr %i.be, null
  br i1 %i.bh, label %.thread225, label %.thread

.thread225:                                       ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %.lr.ph.preheader

bb.ag:                                            ; preds = %bb.z
  %i.bi = icmp eq i64 %.1121, 4
  br i1 %i.bi, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bj = call ptr @SSL_new_stream(ptr noundef nonnull %i.h, i64 noundef 0) #6 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1126
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16
  br label %.thread

bb.aj:                                            ; preds = %bb.ah
  %i.bn = add nuw nsw i64 %.1121, 1
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1121
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !16
  br label %.thread

bb.ak:                                            ; preds = %bb.z
  %i.bp = icmp eq i64 %.1121, 1
  br i1 %i.bp, label %.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bq = add i64 %.1126, 1                       ; 2 uses
  %i.br = icmp eq i64 %i.bq, %.1121
  %spec.store.select3 = select i1 %i.br, i64 0, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.store.select3
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !16
  br label %.thread

bb.am:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z
  %.5 = phi i32 [ %.4, %bb.z ], [ %spec.select157, %bb.ac ], [ %spec.select155, %bb.ab ], [ %spec.select, %bb.aa ] ; 2 uses
  %.2113 = phi i32 [ %.1112, %bb.z ], [ %.1112, %bb.ac ], [ %spec.select156, %bb.ab ], [ %.1112, %bb.aa ] ; 2 uses
  %.1105 = phi i32 [ %.0104, %bb.z ], [ %i.ba, %bb.ac ], [ %i.ay, %bb.ab ], [ %i.aw, %bb.aa ] ; 4 uses
  %i.bu = icmp slt i32 %.1105, 1
  br i1 %i.bu, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.bv = call i32 @SSL_get_error(ptr noundef %.1107, i32 noundef %.1105) #6
  %i.bw = and i32 %i.bv, -2
  %switch = icmp eq i32 %i.bw, 2
  br i1 %switch, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.ai, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ak, %bb.aj, %bb.al, %bb.an, %bb.am
  %.1105171 = phi i32 [ %.1105, %bb.am ], [ %.1105, %bb.an ], [ 1, %bb.al ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ai ]
  %.2108170 = phi ptr [ %.1107, %bb.am ], [ %.1107, %bb.an ], [ %i.bt, %bb.al ], [ %i.bj, %bb.aj ], [ %.1107, %bb.ak ], [ %.1107, %bb.ad ], [ %.1107, %bb.ae ], [ %i.be, %bb.af ], [ %.1107, %bb.ag ], [ %i.bm, %bb.ai ] ; 2 uses
  %.2113169 = phi i32 [ %.2113, %bb.am ], [ %.2113, %bb.an ], [ %.1112, %bb.al ], [ %.1112, %bb.aj ], [ %.1112, %bb.ak ], [ %.1112, %bb.ad ], [ %.1112, %bb.ae ], [ %.1112, %bb.af ], [ %.1112, %bb.ag ], [ %.1112, %bb.ai ] ; 2 uses
  %.5168 = phi i32 [ %.5, %bb.am ], [ %.5, %bb.an ], [ 1, %bb.al ], [ 1, %bb.aj ], [ 1, %bb.ak ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.ai ] ; 2 uses
  %.2122167 = phi i64 [ %.1121, %bb.am ], [ %.1121, %bb.an ], [ %.1121, %bb.al ], [ %i.bn, %bb.aj ], [ 1, %bb.ak ], [ 4, %bb.ad ], [ %.1121, %bb.ae ], [ %i.bf, %bb.af ], [ 4, %bb.ag ], [ %.1121, %bb.ai ] ; 5 uses
  %.2127166 = phi i64 [ %.1126, %bb.am ], [ %.1126, %bb.an ], [ %spec.store.select3, %bb.al ], [ %.1121, %bb.aj ], [ %.1126, %bb.ak ], [ %.1126, %bb.ad ], [ %.1126, %bb.ae ], [ %.1121, %bb.af ], [ %.1126, %bb.ag ], [ %.1126, %bb.ai ] ; 2 uses
  %i.bx = call i32 @SSL_get_event_timeout(ptr noundef nonnull %i.h, ptr noundef nonnull %3, ptr noundef nonnull %i.c) #6
  %.not151 = icmp eq i32 %i.bx, 0
  br i1 %.not151, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %.thread
  %i.by = load i32, ptr %i.c, align 4, !tbaa !18
  %.not152 = icmp eq i32 %i.by, 0
  br i1 %.not152, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.bz = load i64, ptr %3, align 8               ; 2 uses
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %ossl_time_from_timeval.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cb = load i64, ptr %i.aa, align 8
  %i.cc = mul i64 %i.bz, 1000000000
  %i.cd = mul i64 %i.cb, 1000
  %i.ce = add i64 %i.cd, %i.cc
  br label %ossl_time_from_timeval.exit

ossl_time_from_timeval.exit:                      ; preds = %bb.ap, %bb.aq
  %.sroa.03.0.i158 = phi i64 [ %i.ce, %bb.aq ], [ 0, %bb.ap ]
  %i.cf = load i64, ptr @fake_now.0, align 8
  %.sroa.03.0.i159 = call i64 @llvm.uadd.sat.i64(i64 %i.cf, i64 %.sroa.03.0.i158) ; 2 uses
  %i.cg = icmp uge i64 %.sroa.03.0.i159, %.sroa.013.0
  %or.cond = select i1 %i.av, i1 %i.cg, i1 false
  br i1 %or.cond, label %.thread172, label %bb.ar

.thread172:                                       ; preds = %ossl_time_from_timeval.exit
  store i64 %.sroa.013.0, ptr @fake_now.0, align 8, !tbaa !10
  br label %bb.at

bb.ar:                                            ; preds = %ossl_time_from_timeval.exit
  store i64 %.sroa.03.0.i159, ptr @fake_now.0, align 8, !tbaa !10
  br label %bb.z

bb.as:                                            ; preds = %bb.ao
  store i64 %.sroa.013.0, ptr @fake_now.0, align 8, !tbaa !10
  %i.ch = icmp ult i64 %.2102, 4
  br i1 %i.ch, label %.loopexit, label %bb.at

bb.at:                                            ; preds = %.thread172, %bb.as
  %i.ci = load i16, ptr %.2, align 1              ; 3 uses
  %i.cj = zext i16 %i.ci to i32
  %i.ck = zext i16 %i.ci to i64                   ; 2 uses
  %i.cl = add i64 %.2102, -2
  %i.cm = icmp ult i64 %i.cl, %i.ck
  br i1 %i.cm, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.not153 = icmp eq i16 %i.ci, 0
  br i1 %.not153, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cn = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.co = call i32 @BIO_write(ptr noundef nonnull %i.p, ptr noundef nonnull %i.cn, i32 noundef %i.cj) #6 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.cp = add nuw nsw i64 %i.ck, 2                ; 2 uses
  %i.cq = sub i64 %.2102, %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %bb.o

.loopexit:                                        ; preds = %bb.at, %bb.as, %bb.an, %.thread
  %.3123.ph = phi i64 [ %.1121, %bb.an ], [ %.2122167, %.thread ], [ %.2122167, %bb.as ], [ %.2122167, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  %.not196 = icmp eq i64 %.3123.ph, 0
  br i1 %.not196, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f, %bb.j, %bb.m, %bb.d, %bb.l, %bb.k, %4, %bb.g, %bb.e, %bb.c, %bb.b, %.thread225, %.loopexit
  %.0119223 = phi ptr [ %i.k, %.thread225 ], [ %i.k, %.loopexit ], [ %i.k, %bb.f ], [ %i.k, %bb.j ], [ %i.k, %bb.m ], [ null, %bb.d ], [ %i.k, %bb.l ], [ %i.k, %bb.k ], [ %i.k, %4 ], [ %i.k, %bb.g ], [ null, %bb.e ], [ null, %bb.c ], [ null, %bb.b ]
  %.4124222 = phi i64 [ %i.bf, %.thread225 ], [ %.3123.ph, %.loopexit ], [ 1, %bb.f ], [ 1, %bb.j ], [ 1, %bb.m ], [ 1, %bb.d ], [ 1, %bb.l ], [ 1, %bb.k ], [ 1, %4 ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.b ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0129195 = phi i64 [ %i.cu, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0129195
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !16
  call void @SSL_free(ptr noundef %i.ct) #6
  %i.cu = add nuw i64 %.0129195, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cu, %.4124222
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  %.0119224 = phi ptr [ %i.k, %.loopexit ], [ %.0119223, %.lr.ph ]
  call void @ERR_clear_error() #6
  call void @SSL_CTX_free(ptr noundef %i.f) #6
  call void @BIO_ADDR_free(ptr noundef %.0119224) #6
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_QUIC_client_method() local_unnamed_addr #2

declare ptr @SSL_new(ptr noundef) local_unnamed_addr #2

declare i32 @ossl_quic_set_override_now_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @fake_now_cb(ptr nofree readnone captures(none) %0) #4 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @fake_now.0, align 8, !tbaa !10
  ret i64 %.sroa.0.0.copyload
}

declare ptr @BIO_ADDR_new() local_unnamed_addr #2

declare i32 @BIO_ADDR_rawmake(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i64 @SSL_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_s_dgram_mem() local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @SSL_set_alpn_protos(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_set1_initial_peer_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_connect_state(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_set_incoming_stream_policy(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_do_handshake(ptr noundef) local_unnamed_addr #2

declare i32 @SSL_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @SSL_get_accept_stream_queue_len(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_accept_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @SSL_new_stream(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @SSL_get_error(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @SSL_get_event_timeout(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @SSL_free(ptr noundef) local_unnamed_addr #2

declare void @SSL_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @BIO_ADDR_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerClearRand() #6
  ret void
}

declare void @FuzzerClearRand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, !19}
!12 = !{!"in_addr", !6, i64 0}
!13 = !{!12, !6, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"p1 _ZTS6ssl_st", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!5, !5, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!"llvm.loop.mustprogress"}
end_hunk_0
