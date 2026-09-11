Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/quic-server?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timeval = type { i64, i64 }

@fake_now.0 = internal unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @FuzzerInitialize(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerSetRand() #7
  %i.a = tail call i32 @OPENSSL_init_crypto(i64 noundef 258, ptr noundef null) #7 ; 0 uses
  %i.b = tail call i32 @OPENSSL_init_ssl(i64 noundef 2097152, ptr noundef null) #7 ; 0 uses
  tail call void @ERR_clear_error() #7
  %i.c = tail call i32 @CRYPTO_free_ex_index(i32 noundef 0, i32 noundef -1) #7 ; 0 uses
  %i.d = tail call i32 @SSL_get_ex_data_X509_STORE_CTX_idx() #7 ; 0 uses
  %i.e = tail call ptr @SSL_COMP_get_compression_methods() #7 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_sk_sort(ptr noundef nonnull %i.e) #7
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
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %bb.as, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @OSSL_QUIC_server_method() #7
  %i.f = tail call ptr @SSL_CTX_new(ptr noundef %i.e) #7 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.lr.ph.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @SSL_CTX_set_alpn_select_cb(ptr noundef nonnull %i.f, ptr noundef nonnull @select_alpn, ptr noundef null) #7
  %i.h = tail call ptr @SSL_new_listener(ptr noundef nonnull %i.f, i64 noundef 0) #7 ; 10 uses
  store ptr %i.h, ptr %i.a, align 16, !tbaa !14
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.lr.ph.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 1000000, ptr @fake_now.0, align 8, !tbaa !10
  %i.j = tail call i32 @ossl_quic_set_override_now_cb(ptr noundef nonnull %i.h, ptr noundef nonnull @fake_now_cb, ptr noundef null) #7
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.lr.ph.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @BIO_s_dgram_mem() #7
  %i.l = tail call ptr @BIO_new(ptr noundef %i.k) #7 ; 5 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.lr.ph.preheader, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @BIO_s_dgram_mem() #7
  %i.o = tail call ptr @BIO_new(ptr noundef %i.n) #7 ; 4 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %3, label %bb.g

3:                                                ; preds = %bb.f
  %4 = tail call i32 @BIO_free(ptr noundef nonnull %i.l) #7 ; 0 uses
  br label %.lr.ph.preheader

bb.g:                                             ; preds = %bb.f
  %i.q = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.o, i32 noundef 87, i64 noundef 2, ptr noundef null) #7
  %i.r = and i64 %i.q, 4294967295
  %.not134 = icmp eq i64 %i.r, 0
  br i1 %.not134, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i32 @BIO_free(ptr noundef nonnull %i.l) #7 ; 0 uses
  %5 = tail call i32 @BIO_free(ptr noundef nonnull %i.o) #7 ; 0 uses
  br label %.lr.ph.preheader

bb.i:                                             ; preds = %bb.g
  tail call void @SSL_set_bio(ptr noundef nonnull %i.h, ptr noundef nonnull %i.l, ptr noundef nonnull %i.o) #7
  tail call void @SSL_set_accept_state(ptr noundef nonnull %i.h) #7
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.ar, %bb.i
  %.0117 = phi i64 [ 0, %bb.i ], [ %.2119149, %bb.ar ]
  %.0112 = phi i64 [ 1, %bb.i ], [ %.2114150, %bb.ar ]
  %.0108 = phi i32 [ 0, %bb.i ], [ %.5151, %bb.ar ] ; 11 uses
  %.0104 = phi i32 [ 0, %bb.i ], [ %.2106152, %bb.ar ]
  %.099 = phi ptr [ %i.h, %bb.i ], [ %.2101153, %bb.ar ]
  %.093 = phi i64 [ %1, %bb.i ], [ %i.ck, %bb.ar ] ; 7 uses
  %.092 = phi ptr [ %0, %bb.i ], [ %i.cl, %bb.ar ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.u = icmp ugt i64 %.093, 1
  br i1 %i.u, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.v = icmp ugt i64 %.093, 4
  br i1 %i.v, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %i.w = load i8, ptr %.092, align 1, !tbaa !15
  %i.x = icmp eq i8 %i.w, -1
  br i1 %i.x, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.092, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !15
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %.092, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !15
  switch i8 %i.ac, label %bb.r [
    i8 0, label %bb.o
    i8 1, label %bb.p
    i8 2, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.ad = icmp eq i32 %.0108, 1
  %spec.store.select = select i1 %i.ad, i32 3, i32 %.0108
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ae = icmp eq i32 %.0108, 1
  %spec.store.select1 = select i1 %i.ae, i32 4, i32 %.0108
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.af = icmp eq i32 %.0108, 1
  %spec.store.select2 = select i1 %i.af, i32 5, i32 %.0108
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.q, %bb.p, %bb.o
  %.1109 = phi i32 [ %.0108, %bb.n ], [ %spec.store.select, %bb.o ], [ %spec.store.select1, %bb.p ], [ %spec.store.select2, %bb.q ]
  %i.ag = add i64 %.093, -3
  %i.ah = getelementptr inbounds nuw i8, ptr %.092, i64 3
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.m, %bb.l, %bb.k
  %.2110 = phi i32 [ %.1109, %bb.r ], [ %.0108, %bb.m ], [ %.0108, %bb.l ], [ %.0108, %bb.k ]
  %.194 = phi i64 [ %i.ag, %bb.r ], [ %.093, %bb.m ], [ %.093, %bb.l ], [ %.093, %bb.k ]
  %.1 = phi ptr [ %i.ah, %bb.r ], [ %.092, %bb.m ], [ %.092, %bb.l ], [ %.092, %bb.k ] ; 2 uses
  %i.ai = load i16, ptr %.1, align 1
  %i.aj = zext i16 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.aj, 1000000
  %i.al = load i64, ptr @fake_now.0, align 8
  %.sroa.03.0.i = call i64 @llvm.uadd.sat.i64(i64 %i.al, i64 %i.ak)
  %i.am = add i64 %.194, -2
  %i.an = getelementptr inbounds nuw i8, ptr %.1, i64 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j
  %.3111 = phi i32 [ %.2110, %bb.s ], [ %.0108, %bb.j ]
  %.sroa.013.0 = phi i64 [ %.sroa.03.0.i, %bb.s ], [ 0, %bb.j ] ; 3 uses
  %.295 = phi i64 [ %i.am, %bb.s ], [ %.093, %bb.j ] ; 4 uses
  %.2 = phi ptr [ %i.an, %bb.s ], [ %.092, %bb.j ] ; 3 uses
  %i.ao = icmp ugt i64 %.295, 3
  br label %bb.u

bb.u:                                             ; preds = %bb.am, %bb.t
  %.1118 = phi i64 [ %.0117, %bb.t ], [ %.2119149, %bb.am ] ; 9 uses
  %.1113 = phi i64 [ %.0112, %bb.t ], [ %.2114150, %bb.am ] ; 16 uses
  %.4 = phi i32 [ %.3111, %bb.t ], [ %.5151, %bb.am ] ; 2 uses
  %.1105 = phi i32 [ %.0104, %bb.t ], [ %.2106152, %bb.am ] ; 13 uses
  %.1100 = phi ptr [ %.099, %bb.t ], [ %.2101153, %bb.am ] ; 10 uses
  %.097 = phi i32 [ 0, %bb.t ], [ %.198154, %bb.am ]
  switch i32 %.4, label %bb.ah [
    i32 0, label %bb.v
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 4, label %bb.ab
    i32 5, label %bb.af
  ]

bb.v:                                             ; preds = %bb.u
  %i.ap = call ptr @SSL_accept_connection(ptr noundef %.1100, i64 noundef 0) #7
  %i.aq = icmp ne ptr %i.ap, null
  %i.ar = zext i1 %i.aq to i32                    ; 2 uses
  br label %bb.ah

bb.w:                                             ; preds = %bb.u
  %i.as = call i32 @SSL_read(ptr noundef %.1100, ptr noundef nonnull %i.b, i32 noundef 1024) #7 ; 3 uses
  %i.at = icmp sgt i32 %i.as, 0                   ; 2 uses
  %spec.select138 = select i1 %i.at, i32 2, i32 1
  %spec.select139 = select i1 %i.at, i32 %i.as, i32 %.1105
  br label %bb.ah

bb.x:                                             ; preds = %bb.u
  %i.au = call i32 @SSL_write(ptr noundef %.1100, ptr noundef nonnull %i.b, i32 noundef %.1105) #7 ; 2 uses
  %.inv = icmp slt i32 %i.au, 1
  %spec.select140 = select i1 %.inv, i32 2, i32 1
  br label %bb.ah

bb.y:                                             ; preds = %bb.u
  %i.av = icmp eq i64 %.1113, 4
  br i1 %i.av, label %.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aw = call i64 @SSL_get_accept_stream_queue_len(ptr noundef nonnull %i.h) #7
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ay = call ptr @SSL_accept_stream(ptr noundef nonnull %i.h, i64 noundef 0) #7 ; 3 uses
  %i.az = add nuw nsw i64 %.1113, 1               ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1113
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !14
  %i.bb = icmp eq ptr %i.ay, null
  br i1 %i.bb, label %.thread204, label %.thread

.thread204:                                       ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %.lr.ph.preheader

bb.ab:                                            ; preds = %bb.u
  %i.bc = icmp eq i64 %.1113, 4
  br i1 %i.bc, label %.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = call ptr @SSL_new_stream(ptr noundef nonnull %i.h, i64 noundef 0) #7 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1118
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !14
  br label %.thread

bb.ae:                                            ; preds = %bb.ac
  %i.bh = add nuw nsw i64 %.1113, 1
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.1113
  store ptr %i.bd, ptr %i.bi, align 8, !tbaa !14
  br label %.thread

bb.af:                                            ; preds = %bb.u
  %i.bj = icmp eq i64 %.1113, 1
  br i1 %i.bj, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bk = add i64 %.1118, 1                       ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %.1113
  %spec.store.select3 = select i1 %i.bl, i64 0, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %spec.store.select3
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !14
  br label %.thread

bb.ah:                                            ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.5 = phi i32 [ %.4, %bb.u ], [ %spec.select140, %bb.x ], [ %spec.select138, %bb.w ], [ %i.ar, %bb.v ] ; 2 uses
  %.2106 = phi i32 [ %.1105, %bb.u ], [ %.1105, %bb.x ], [ %spec.select139, %bb.w ], [ %.1105, %bb.v ] ; 2 uses
  %.198 = phi i32 [ %.097, %bb.u ], [ %i.au, %bb.x ], [ %i.as, %bb.w ], [ %i.ar, %bb.v ] ; 4 uses
  %i.bo = icmp slt i32 %.198, 1
  br i1 %i.bo, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.bp = call i32 @SSL_get_error(ptr noundef %.1100, i32 noundef %.198) #7
  %i.bq = and i32 %i.bp, -2
  %switch = icmp eq i32 %i.bq, 2
  br i1 %switch, label %.thread, label %.loopexit

.thread:                                          ; preds = %bb.ad, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.af, %bb.ae, %bb.ag, %bb.ai, %bb.ah
  %.198154 = phi i32 [ %.198, %bb.ah ], [ %.198, %bb.ai ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ad ]
  %.2101153 = phi ptr [ %.1100, %bb.ah ], [ %.1100, %bb.ai ], [ %i.bn, %bb.ag ], [ %i.bd, %bb.ae ], [ %.1100, %bb.af ], [ %.1100, %bb.y ], [ %.1100, %bb.z ], [ %i.ay, %bb.aa ], [ %.1100, %bb.ab ], [ %i.bg, %bb.ad ] ; 2 uses
  %.2106152 = phi i32 [ %.2106, %bb.ah ], [ %.2106, %bb.ai ], [ %.1105, %bb.ag ], [ %.1105, %bb.ae ], [ %.1105, %bb.af ], [ %.1105, %bb.y ], [ %.1105, %bb.z ], [ %.1105, %bb.aa ], [ %.1105, %bb.ab ], [ %.1105, %bb.ad ] ; 2 uses
  %.5151 = phi i32 [ %.5, %bb.ah ], [ %.5, %bb.ai ], [ 1, %bb.ag ], [ 1, %bb.ae ], [ 1, %bb.af ], [ 1, %bb.y ], [ 1, %bb.z ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ad ] ; 2 uses
  %.2114150 = phi i64 [ %.1113, %bb.ah ], [ %.1113, %bb.ai ], [ %.1113, %bb.ag ], [ %i.bh, %bb.ae ], [ 1, %bb.af ], [ 4, %bb.y ], [ %.1113, %bb.z ], [ %i.az, %bb.aa ], [ 4, %bb.ab ], [ %.1113, %bb.ad ] ; 5 uses
  %.2119149 = phi i64 [ %.1118, %bb.ah ], [ %.1118, %bb.ai ], [ %spec.store.select3, %bb.ag ], [ %.1113, %bb.ae ], [ %.1118, %bb.af ], [ %.1118, %bb.y ], [ %.1118, %bb.z ], [ %.1113, %bb.aa ], [ %.1118, %bb.ab ], [ %.1118, %bb.ad ] ; 2 uses
  %i.br = call i32 @SSL_get_event_timeout(ptr noundef nonnull %i.h, ptr noundef nonnull %2, ptr noundef nonnull %i.c) #7
  %.not135 = icmp eq i32 %i.br, 0
  br i1 %.not135, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !16
  %.not136 = icmp eq i32 %i.bs, 0
  br i1 %.not136, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.bt = load i64, ptr %2, align 8               ; 2 uses
  %i.bu = icmp slt i64 %i.bt, 0
  br i1 %i.bu, label %ossl_time_from_timeval.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bv = load i64, ptr %i.t, align 8
  %i.bw = mul i64 %i.bt, 1000000000
  %i.bx = mul i64 %i.bv, 1000
  %i.by = add i64 %i.bx, %i.bw
  br label %ossl_time_from_timeval.exit

ossl_time_from_timeval.exit:                      ; preds = %bb.ak, %bb.al
  %.sroa.03.0.i141 = phi i64 [ %i.by, %bb.al ], [ 0, %bb.ak ]
  %i.bz = load i64, ptr @fake_now.0, align 8
  %.sroa.03.0.i142 = call i64 @llvm.uadd.sat.i64(i64 %i.bz, i64 %.sroa.03.0.i141) ; 2 uses
  %i.ca = icmp uge i64 %.sroa.03.0.i142, %.sroa.013.0
  %or.cond = select i1 %i.ao, i1 %i.ca, i1 false
  br i1 %or.cond, label %.thread155, label %bb.am

.thread155:                                       ; preds = %ossl_time_from_timeval.exit
  store i64 %.sroa.013.0, ptr @fake_now.0, align 8, !tbaa !10
  br label %bb.ao

bb.am:                                            ; preds = %ossl_time_from_timeval.exit
  store i64 %.sroa.03.0.i142, ptr @fake_now.0, align 8, !tbaa !10
  br label %bb.u

bb.an:                                            ; preds = %bb.aj
  store i64 %.sroa.013.0, ptr @fake_now.0, align 8, !tbaa !10
  %i.cb = icmp ult i64 %.295, 4
  br i1 %i.cb, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %.thread155, %bb.an
  %i.cc = load i16, ptr %.2, align 1              ; 3 uses
  %i.cd = zext i16 %i.cc to i32
  %i.ce = zext i16 %i.cc to i64                   ; 2 uses
  %i.cf = add i64 %.295, -2
  %i.cg = icmp ult i64 %i.cf, %i.ce
  br i1 %i.cg, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not137 = icmp eq i16 %i.cc, 0
  br i1 %.not137, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ch = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.ci = call i32 @BIO_write(ptr noundef nonnull %i.l, ptr noundef nonnull %i.ch, i32 noundef %i.cd) #7 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.cj = add nuw nsw i64 %i.ce, 2                ; 2 uses
  %i.ck = sub i64 %.295, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %.2, i64 %i.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.j

.loopexit:                                        ; preds = %bb.ao, %bb.an, %bb.ai, %.thread
  %.3115.ph = phi i64 [ %.1113, %bb.ai ], [ %.2114150, %.thread ], [ %.2114150, %bb.an ], [ %.2114150, %bb.ao ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %.not179 = icmp eq i64 %.3115.ph, 0
  br i1 %.not179, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h, %bb.d, %3, %bb.e, %bb.c, %bb.b, %.thread204, %.loopexit
  %.4116203 = phi i64 [ %i.az, %.thread204 ], [ %.3115.ph, %.loopexit ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %3 ], [ 1, %bb.d ], [ 1, %bb.h ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0121178 = phi i64 [ %i.co, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.0121178
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14
  call void @SSL_free(ptr noundef %i.cn) #7
  %i.co = add nuw i64 %.0121178, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.co, %.4116203
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %.loopexit
  call void @ERR_clear_error() #7
  call void @SSL_CTX_free(ptr noundef %i.f) #7
  br label %bb.as

bb.as:                                            ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @SSL_CTX_new(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_QUIC_server_method() local_unnamed_addr #2

declare void @SSL_CTX_set_alpn_select_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @select_alpn(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3, i32 %4, ptr nofree readnone captures(none) %5) #4 {
bb.a:
  ret i32 0
}

declare ptr @SSL_new_listener(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @ossl_quic_set_override_now_cb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal i64 @fake_now_cb(ptr nofree readnone captures(none) %0) #5 {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr @fake_now.0, align 8, !tbaa !10
  ret i64 %.sroa.0.0.copyload
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_s_dgram_mem() local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_bio(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @SSL_set_accept_state(ptr noundef) local_unnamed_addr #2

declare ptr @SSL_accept_connection(ptr noundef, i64 noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind uwtable
define dso_local void @FuzzerCleanup() local_unnamed_addr #0 {
bb.a:
  tail call void @FuzzerClearRand() #7
  ret void
}

declare void @FuzzerClearRand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!11 = distinct !{!11, !17}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS6ssl_st", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!6, !6, i64 0}
!17 = !{!"llvm.loop.mustprogress"}
end_hunk_0
