Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls13?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_tls13_cipher_fuzz_cs:bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %2, i8 0, i64 131384, i1 false)
  store ptr %1, ptr %i.g, align 8, !tbaa !59
  store ptr %1, ptr %i.h, align 8, !tbaa !60
  %i.l = call i32 @test_memio_setup(ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_3_client_method, ptr noundef nonnull @wolfTLSv1_3_server_method) #11 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.critedge726.i, label %bb.c

bb.c:                                             ; preds = %.critedge13
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6555) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.29) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite671.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge726.i:                                   ; preds = %.critedge13
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.t = call i32 @wolfSSL_connect(ptr noundef %i.s) #11
  %.not.not.i = icmp eq i32 %i.t, 1
  br i1 %.not.not.i, label %bb.d, label %.critedge730.i

bb.d:                                             ; preds = %.critedge726.i
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6564) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite673.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.v) ; 0 uses
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite674.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge730.i:                                   ; preds = %.critedge726.i
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.aa = call i32 @wolfSSL_get_error(ptr noundef %i.z, i32 noundef -1) #11 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 2
  br i1 %i.ab, label %.critedge732.i, label %.critedge728.i

.critedge728.i:                                   ; preds = %.critedge730.i
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6565) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite676.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.120) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite677.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.aa, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge732.i:                                   ; preds = %.critedge730.i
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ai = call i32 @wolfSSL_accept(ptr noundef %i.ah) #11
  %.not679.not.i = icmp eq i32 %i.ai, 1
  br i1 %.not679.not.i, label %.critedge731.i, label %.critedge734.i

.critedge731.i:                                   ; preds = %.critedge732.i
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6566) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite680.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.15) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite681.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge734.i:                                   ; preds = %.critedge732.i
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ap = call i32 @wolfSSL_get_error(ptr noundef %i.ao, i32 noundef -1) #11 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %.critedge733.i, label %bb.e

bb.e:                                             ; preds = %.critedge734.i
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6567) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite683.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.as) ; 0 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite684.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.au) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ap, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge733.i:                                   ; preds = %.critedge734.i
  %i.aw = call i32 @test_memio_msg_is_hello_retry_request(ptr noundef nonnull %2) #11
  %.not686.i = icmp eq i32 %i.aw, 0
  br i1 %.not686.i, label %.critedge741.thread799.i, label %bb.f

bb.f:                                             ; preds = %.critedge733.i
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ay = call i32 @wolfSSL_connect(ptr noundef %i.ax) #11
  %.not687.not.i = icmp eq i32 %i.ay, 1
  br i1 %.not687.not.i, label %bb.g, label %.critedge736.i

bb.g:                                             ; preds = %bb.f
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6573) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite688.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite689.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bc) ; 0 uses
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge736.i:                                   ; preds = %bb.f
  %i.be = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.bf = call i32 @wolfSSL_get_error(ptr noundef %i.be, i32 noundef -1) #11 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 2
  br i1 %i.bg, label %.critedge740.i, label %bb.h

bb.h:                                             ; preds = %.critedge736.i
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6574) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite691.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.bi) ; 0 uses
  %i.bj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.120) ; 0 uses
  %i.bk = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite692.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bk) ; 0 uses
  %i.bl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.bf, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge740.i:                                   ; preds = %.critedge736.i
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.bn = call i32 @wolfSSL_accept(ptr noundef %i.bm) #11
  %.not694.not.i = icmp eq i32 %i.bn, 1
  br i1 %.not694.not.i, label %.critedge738.i, label %.critedge742.i

.critedge738.i:                                   ; preds = %.critedge740.i
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6575) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite695.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.164, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.15) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite696.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.165, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge742.i:                                   ; preds = %.critedge740.i
  %i.bt = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.bu = call i32 @wolfSSL_get_error(ptr noundef %i.bt, i32 noundef -1) #11 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %.critedge741.thread.i, label %bb.i

bb.i:                                             ; preds = %.critedge742.i
  %i.bw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6576) ; 0 uses
  %i.bx = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite698.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.bx) ; 0 uses
  %i.by = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120) ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite699.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.bz) ; 0 uses
  %i.ca = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.bu, i32 noundef 2) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge741.thread799.i:                         ; preds = %.critedge733.i
  br i1 %.not701757.i, label %.thread, label %.thread.i

.critedge741.thread.i:                            ; preds = %.critedge742.i
  br i1 %.not701757.i, label %.thread, label %.thread.i

.thread.i:                                        ; preds = %.critedge741.thread.i, %.critedge741.thread799.i
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.cc = call i32 @wolfSSL_connect(ptr noundef %i.cb) #11 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread.i
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6579) ; 0 uses
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite702.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.cf) ; 0 uses
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite703.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ch) ; 0 uses
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.cc, i32 noundef 1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.thread:                                          ; preds = %.critedge741.thread799.i, %.critedge741.thread.i
  %i.cj = load i32, ptr %.sink816.i.sroa.gep81, align 8, !tbaa !48
  br label %.preheader.i

bb.k:                                             ; preds = %.thread.i
  %i.ck = load i32, ptr %.sink816.i.sroa.gep, align 8, !tbaa !48
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %.thread
  %i.cl = phi i32 [ %i.cj, %.thread ], [ %i.ck, %bb.k ] ; 4 uses
  %.0620.i89 = phi ptr [ %2, %.thread ], [ %i.i, %bb.k ] ; 2 uses
  %.not701760.i88 = phi i1 [ true, %.thread ], [ false, %bb.k ]
  %.not705779.i = icmp slt i32 %i.cl, 5
  br i1 %.not705779.i, label %.thread767.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.0609780.i = phi i32 [ %i.ct, %bb.l ], [ 0, %.preheader.i ] ; 2 uses
  %i.cm = zext nneg i32 %.0609780.i to i64
  %i.cn = getelementptr i8, ptr %.0620.i89, i64 %i.cm ; 3 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 3
  %3 = load i8, ptr %i.co, align 1, !tbaa !55
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 8
  %6 = getelementptr i8, ptr %i.cn, i64 4
  %7 = load i8, ptr %6, align 1, !tbaa !55
  %i.cp = zext i8 %7 to i32
  %8 = or disjoint i32 %5, %i.cp                  ; 4 uses
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !55
  %i.cr = icmp eq i8 %i.cq, 23
  %i.cs = add nsw i32 %.0609780.i, 5              ; 3 uses
  br i1 %i.cr, label %.thread767.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ct = add nuw nsw i32 %i.cs, %8               ; 2 uses
  %i.cu = add nuw nsw i32 %i.ct, 5
  %.not705.i = icmp sgt i32 %i.cu, %i.cl
  br i1 %.not705.i, label %.thread767.thread.i, label %.lr.ph.i

.thread767.i:                                     ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %.thread767.thread.i, label %.critedge746.i

.thread767.thread.i:                              ; preds = %bb.l, %.thread767.i, %.preheader.i
  %i.cv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6605) ; 0 uses
  %i.cw = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite706.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.cw) ; 0 uses
  %i.cx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, ptr noundef nonnull @.str.214, ptr noundef nonnull @.str.29) ; 0 uses
  %i.cy = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite707.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.cy) ; 0 uses
  %i.cz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge746.i:                                   ; preds = %.thread767.i
  %i.da = add nsw i32 %8, %i.cs                   ; 2 uses
  %.not709.not.i = icmp sgt i32 %i.da, %i.cl
  br i1 %.not709.not.i, label %.critedge744.i, label %.critedge748.i

.critedge744.i:                                   ; preds = %.critedge746.i
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6606) ; 0 uses
  %i.dc = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite710.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.dc) ; 0 uses
  %i.dd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.149, ptr noundef nonnull @.str.215, ptr noundef nonnull @.str.216) ; 0 uses
  %i.de = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite711.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.de) ; 0 uses
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.151, i32 noundef %i.da, i32 noundef %i.cl) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge748.i:                                   ; preds = %.critedge746.i
  store i32 0, ptr %i.f, align 4, !tbaa !48
  %i.dg = call i32 @wc_RNG_GenerateBlock(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef 4) #11 ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.m, label %.critedge747.loopexit.i

bb.m:                                             ; preds = %.critedge748.i
  %i.di = load i32, ptr %i.f, align 4, !tbaa !48
  %i.dj = urem i32 %i.di, %8
  %i.dk = add nsw i32 %i.dj, %i.cs
  %i.dl = sext i32 %i.dk to i64
  %i.dm = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.do = load i8, ptr %i.e, align 1              ; 2 uses
  %i.dp = icmp eq i8 %i.do, 0
  br i1 %i.dp, label %.peel.next.i, label %.critedge751.i

.peel.next.i:                                     ; preds = %bb.n, %bb.o
  %i.dq = call i32 @wc_RNG_GenerateByte(ptr noundef nonnull %0, ptr noundef nonnull %i.e) #11 ; 2 uses
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.o, label %.loopexit.i

.loopexit.i:                                      ; preds = %.peel.next.i, %bb.m
  %.lcssa.i = phi i32 [ %i.dm, %bb.m ], [ %i.dq, %.peel.next.i ]
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6620) ; 0 uses
  %i.dt = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite716.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.dt) ; 0 uses
  %i.du = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.218, ptr noundef nonnull @.str.29) ; 0 uses
  %i.dv = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite717.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.dv) ; 0 uses
  %i.dw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.lcssa.i, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

bb.o:                                             ; preds = %.peel.next.i
  %i.dx = load i8, ptr %i.e, align 1              ; 2 uses
  %i.dy = icmp eq i8 %i.dx, 0
  br i1 %i.dy, label %.peel.next.i, label %.critedge751.i, !llvm.loop !87

.critedge751.i:                                   ; preds = %bb.o, %bb.n
  %.lcssa786.i = phi i8 [ %i.do, %bb.n ], [ %i.dx, %bb.o ]
  %i.dz = getelementptr inbounds i8, ptr %.0620.i89, i64 %i.dl ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !55
  %i.eb = xor i8 %i.ea, %.lcssa786.i
  store i8 %i.eb, ptr %i.dz, align 1, !tbaa !55
  br i1 %.not701760.i88, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge751.i
  %i.ec = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ed = call i32 @wolfSSL_accept(ptr noundef %i.ec) #11
  br label %bb.r

bb.q:                                             ; preds = %.critedge751.i
  %i.ee = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.ef = call i32 @wolfSSL_connect(ptr noundef %i.ee) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink818.i = phi ptr [ %i.d, %bb.p ], [ %i.c, %bb.q ]
  %.sink817.i = phi i32 [ %i.ed, %bb.p ], [ %i.ef, %bb.q ] ; 3 uses
  %i.eg = load ptr, ptr %.sink818.i, align 8, !tbaa !50
  %i.eh = call i32 @wolfSSL_get_error(ptr noundef %i.eg, i32 noundef %.sink817.i) #11
  %i.ei = icmp eq i32 %.sink817.i, -1
  br i1 %i.ei, label %.critedge753.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6638) ; 0 uses
  %i.ek = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite719.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ek) ; 0 uses
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.168) ; 0 uses
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite720.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.em) ; 0 uses
  %i.en = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.sink817.i, i32 noundef -1) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge753.i:                                   ; preds = %bb.r
  switch i32 %i.eh, label %bb.t [
    i32 -180, label %test_tls13_cipher_fuzz_once.exit
    i32 -181, label %test_tls13_cipher_fuzz_once.exit
    i32 -305, label %test_tls13_cipher_fuzz_once.exit
  ]

bb.t:                                             ; preds = %.critedge753.i
  %i.eo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6641) ; 0 uses
  %i.ep = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite722.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ep) ; 0 uses
  %i.eq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.92, ptr noundef nonnull @.str.219) ; 0 uses
  %i.er = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite723.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.er) ; 0 uses
  %i.es = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.220) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

.critedge747.loopexit.i:                          ; preds = %.critedge748.i
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6615) ; 0 uses
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite713.i = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.eu) ; 0 uses
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.217, ptr noundef nonnull @.str.29) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite714.i = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ew) ; 0 uses
  %i.ex = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.dg, i32 noundef 0) ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit.sink.split

test_tls13_cipher_fuzz_once.exit.sink.split:      ; preds = %.thread767.thread.i, %.critedge744.i, %.loopexit.i, %bb.s, %bb.t, %.critedge747.loopexit.i, %bb.c, %bb.d, %.critedge728.i, %.critedge731.i, %bb.e, %bb.g, %bb.h, %.critedge738.i, %bb.i, %bb.j
  %i.ey = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite678.i = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.ey) ; 0 uses
  %i.ez = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fa = call i32 @fflush(ptr noundef %i.ez)     ; 0 uses
  br label %test_tls13_cipher_fuzz_once.exit

test_tls13_cipher_fuzz_once.exit:                 ; preds = %test_tls13_cipher_fuzz_once.exit.sink.split, %.critedge753.i, %.critedge753.i, %.critedge753.i
  %cond = phi i1 [ false, %.critedge753.i ], [ false, %.critedge753.i ], [ false, %.critedge753.i ], [ true, %test_tls13_cipher_fuzz_once.exit.sink.split ]
  %i.fb = load ptr, ptr %i.c, align 8, !tbaa !50
  call void @wolfSSL_free(ptr noundef %i.fb) #11
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !49
  call void @wolfSSL_CTX_free(ptr noundef %i.fc) #11
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !50
  call void @wolfSSL_free(ptr noundef %i.fd) #11
  %i.fe = load ptr, ptr %i.b, align 8, !tbaa !49
  call void @wolfSSL_CTX_free(ptr noundef %i.fe) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %cond, label %bb.u, label %.critedge5

bb.u:                                             ; preds = %test_tls13_cipher_fuzz_once.exit
  %i.ff = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.fg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ff, ptr noundef nonnull @.str.212, ptr noundef %1, i32 noundef %.071105, i32 noundef %.0103) #14 ; 0 uses
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6665) ; 0 uses
  %i.fi = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.fi) ; 0 uses
  %i.fj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.81) ; 0 uses
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite78 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.fk) ; 0 uses
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.fm = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite79 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.fm) ; 0 uses
  %i.fn = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fo = call i32 @fflush(ptr noundef %i.fn)     ; 0 uses
  br label %.critedge5

.critedge5:                                       ; preds = %test_tls13_cipher_fuzz_once.exit, %bb.u
  %.275 = phi i32 [ 0, %bb.u ], [ 1, %test_tls13_cipher_fuzz_once.exit ] ; 3 uses
  %i.fp = add nuw nsw i32 %.0103, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fp, 5
  br i1 %exitcond.not, label %.critedge11, label %bb.b, !llvm.loop !88

.critedge11:                                      ; preds = %.critedge5
  %.pre = add nsw i32 %.275, -1
  %i.fq = icmp ult i32 %.pre, 3
  %i.fr = and i1 %.not701757.i, %i.fq
  br i1 %i.fr, label %.critedge5.preheader, label %.critedge, !llvm.loop !89

.critedge:                                        ; preds = %.critedge11, %bb.b
  %.174.lcssa128 = phi i32 [ %.174102, %bb.b ], [ %.275, %.critedge11 ]
  ret i32 %.174.lcssa128
}

declare i32 @wc_FreeRng(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_cipher_fuzz_aes256_gcm_sha384() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.WC_RNG, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 0, i64 40, i1 false)
  %i.a = call i32 @wc_InitRng(ptr noundef nonnull %0) #11 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.critedge87, label %bb.c

.critedge87:                                      ; preds = %bb.a
  %i.b = call fastcc i32 @test_tls13_cipher_fuzz_cs(ptr noundef %0, ptr noundef nonnull @.str.198)
  %.not91 = icmp eq i32 %i.b, 0
  br i1 %.not91, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.critedge87
  %i.c = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6719) ; 0 uses
  %i.d = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite84 = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.d) ; 0 uses
  %i.e = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.199, ptr noundef nonnull @.str.81) ; 0 uses
  %i.f = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite85 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.f) ; 0 uses
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite86 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.h) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.j = call i32 @fflush(ptr noundef %i.i)       ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6714) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.196, ptr noundef nonnull @.str.29) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite82 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.n) ; 0 uses
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.a, i32 noundef 0) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite83 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.p) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.r = call i32 @fflush(ptr noundef %i.q)       ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.critedge87, %bb.b
end_hunk_0
begin_hunk_1_@test_tls13_AEAD_limit_triggers_KeyUpdate_cs:bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 1016
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !93 ; 2 uses
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %.thread576, label %bb.s

bb.s:                                             ; preds = %.critedge565
  %i.ec = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6925) ; 0 uses
  %i.ed = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite548 = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ed) ; 0 uses
  %i.ee = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.231, ptr noundef nonnull @.str.29) ; 0 uses
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite549 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.ef) ; 0 uses
  %i.eg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.ea, i32 noundef 0) ; 0 uses
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite550 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.eh) ; 0 uses
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.ej = call i32 @fflush(ptr noundef %i.ei)     ; 0 uses
  br label %.thread576

.thread576:                                       ; preds = %bb.o, %.critedge560, %.critedge563, %bb.r, %.critedge565, %bb.s, %bb.p
  %i.ek = phi i1 [ true, %bb.p ], [ false, %bb.r ], [ false, %bb.s ], [ true, %.critedge565 ], [ false, %.critedge563 ], [ false, %.critedge560 ], [ false, %bb.o ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) %i.f, i8 0, i64 18, i1 false)
  %i.el = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.em = call i32 @wolfSSL_read(ptr noundef %i.el, ptr noundef nonnull %i.f, i32 noundef 18) #11 ; 4 uses
  %i.en = icmp sgt i32 %i.em, 0
  br i1 %i.en, label %bb.ac, label %bb.ab

bb.t:                                             ; preds = %bb.ab
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ep = call i32 @wolfSSL_read(ptr noundef %i.eo, ptr noundef nonnull %i.f, i32 noundef 18) #11 ; 4 uses
  %i.eq = icmp sgt i32 %i.ep, 0
  br i1 %i.eq, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.es = call i32 @wolfSSL_get_error(ptr noundef %i.er, i32 noundef %i.ep) #11
  %.not.1 = icmp eq i32 %i.es, 2
  br i1 %.not.1, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.et = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.eu = call i32 @wolfSSL_read(ptr noundef %i.et, ptr noundef nonnull %i.f, i32 noundef 18) #11 ; 4 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %bb.ac, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ex = call i32 @wolfSSL_get_error(ptr noundef %i.ew, i32 noundef %i.eu) #11
  %.not.2 = icmp eq i32 %i.ex, 2
  br i1 %.not.2, label %bb.x, label %bb.ac

bb.x:                                             ; preds = %bb.w
  %i.ey = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.ez = call i32 @wolfSSL_read(ptr noundef %i.ey, ptr noundef nonnull %i.f, i32 noundef 18) #11 ; 4 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.fc = call i32 @wolfSSL_get_error(ptr noundef %i.fb, i32 noundef %i.ez) #11
  %.not.3 = icmp eq i32 %i.fc, 2
  br i1 %.not.3, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.fd = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.fe = call i32 @wolfSSL_read(ptr noundef %i.fd, ptr noundef nonnull %i.f, i32 noundef 18) #11 ; 4 uses
  %i.ff = icmp sgt i32 %i.fe, 0
  br i1 %i.ff, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fg = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.fh = call i32 @wolfSSL_get_error(ptr noundef %i.fg, i32 noundef %i.fe) #11 ; 0 uses
  br label %bb.ac

bb.ab:                                            ; preds = %.thread576
  %i.fi = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.fj = call i32 @wolfSSL_get_error(ptr noundef %i.fi, i32 noundef %i.em) #11
  %.not = icmp eq i32 %i.fj, 2
  br i1 %.not, label %bb.t, label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %.thread576, %bb.ab
  %.lcssa = phi i32 [ %i.ez, %bb.y ], [ %i.em, %.thread576 ], [ %i.em, %bb.ab ], [ %i.ep, %bb.t ], [ %i.ep, %bb.u ], [ %i.fe, %bb.aa ], [ %i.eu, %bb.v ], [ %i.eu, %bb.w ], [ %i.fe, %bb.z ], [ %i.ez, %bb.x ] ; 2 uses
  br i1 %i.ek, label %bb.ad, label %.critedge567

bb.ad:                                            ; preds = %bb.ac
  %i.fk = icmp eq i32 %.lcssa, 18
  br i1 %i.fk, label %.critedge569, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6942) ; 0 uses
  %i.fm = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite551 = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.fm) ; 0 uses
  %i.fn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.224) ; 0 uses
  %i.fo = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite552 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.fo) ; 0 uses
  %i.fp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %.lcssa, i32 noundef 18) ; 0 uses
  br label %.critedge567.sink.split

.critedge569:                                     ; preds = %bb.ad
  %i.fq = call i32 @memcmp(ptr noundef nonnull dereferenceable(18) %i.f, ptr noundef nonnull dereferenceable(18) %i.e, i64 noundef 18) #13 ; 2 uses
  %i.fr = icmp eq i32 %i.fq, 0
  br i1 %i.fr, label %.critedge567, label %bb.af

bb.af:                                            ; preds = %.critedge569
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6944) ; 0 uses
  %i.ft = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite554 = call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.ft) ; 0 uses
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.29) ; 0 uses
  %i.fv = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite555 = call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.fv) ; 0 uses
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.fq, i32 noundef 0) ; 0 uses
  br label %.critedge567.sink.split

.critedge567.sink.split:                          ; preds = %bb.af, %bb.ae
  %i.fx = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite553 = call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.fx) ; 0 uses
  %i.fy = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.fz = call i32 @fflush(ptr noundef %i.fy)     ; 0 uses
  br label %.critedge567

.critedge567:                                     ; preds = %.critedge567.sink.split, %bb.ac, %.critedge569
  %.26 = phi i32 [ 1, %.critedge569 ], [ 0, %bb.ac ], [ 0, %.critedge567.sink.split ]
  %i.ga = load ptr, ptr %i.c, align 8, !tbaa !50
  call void @wolfSSL_free(ptr noundef %i.ga) #11
  %i.gb = load ptr, ptr %i.d, align 8, !tbaa !50
  call void @wolfSSL_free(ptr noundef %i.gb) #11
  %i.gc = load ptr, ptr %i.a, align 8, !tbaa !49
  call void @wolfSSL_CTX_free(ptr noundef %i.gc) #11
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !49
  call void @wolfSSL_CTX_free(ptr noundef %i.gd) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  ret i32 %.26
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls13_AEAD_limit_KU_aes256_gcm_sha384() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @test_tls13_AEAD_limit_triggers_KeyUpdate_cs(ptr noundef nonnull @.str.198)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull @.str.3, i32 noundef 6978) ; 0 uses
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.4, i64 15, i64 1, ptr %i.c) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.81) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite35 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef 0, i32 noundef 1) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !11
  %fwrite36 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 2, i64 1, ptr %i.g) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !11
  %i.i = tail call i32 @fflush(ptr noundef %i.h)  ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_AEAD_limit_KU_aes128_ccm_sha256() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_tls13_AEAD_limit_KU_aes128_ccm_8_sha256() local_unnamed_addr #4 {
bb.a:
  ret i32 3
}

declare ptr @wolfSSL_get_curve_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare i32 @test_memio_msg_is_hello_retry_request(ptr noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateBlock(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @wc_RNG_GenerateByte(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @wolfSSL_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"p1 omnipotent char", !9, i64 0}
!14 = !{!"WOLFSSL_BUFFER_INFO", !13, i64 0, !6, i64 8}
!15 = !{!"p1 _ZTS9DerBuffer", !9, i64 0}
!16 = !{!"p1 _ZTS6Suites", !9, i64 0}
!17 = !{!"short", !5, i64 0}
!18 = !{!"long", !5, i64 0}
!19 = !{!"p1 _ZTS4TLSX", !9, i64 0}
!20 = !{!"p1 _ZTS11WOLFSSL_CTX", !9, i64 0}
!21 = !{!"p1 _ZTS6Arrays", !9, i64 0}
!22 = !{!"p1 _ZTS9HS_Hashes", !9, i64 0}
!23 = !{!"p1 _ZTS6WC_RNG", !9, i64 0}
!24 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !9, i64 0}
!25 = !{!"p1 _ZTS7WOLFSSL", !9, i64 0}
!26 = !{!"WOLFSSL_CIPHER", !5, i64 0, !5, i64 1, !25, i64 8}
!27 = !{!"p1 _ZTS3Aes", !9, i64 0}
!28 = !{!"p1 _ZTS6ChaCha", !9, i64 0}
!29 = !{!"Ciphers", !27, i64 0, !13, i64 8, !13, i64 16, !28, i64 24, !5, i64 32, !5, i64 33}
!30 = !{!"", !5, i64 0, !13, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29}
!31 = !{!"p1 _ZTS5DhKey", !9, i64 0}
!32 = !{!"Buffers", !30, i64 0, !30, i64 32, !14, i64 64, !14, i64 80, !14, i64 96, !14, i64 112, !14, i64 128, !6, i64 144, !6, i64 148, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !14, i64 160, !14, i64 176, !14, i64 192, !14, i64 208, !31, i64 224, !15, i64 232, !15, i64 240, !5, i64 248, !5, i64 249, !5, i64 249, !6, i64 252, !6, i64 256, !15, i64 264, !6, i64 272, !5, i64 280}
!33 = !{!"p1 _ZTS15WOLFSSL_SESSION", !9, i64 0}
!34 = !{!"p1 _ZTS13ClientSession", !9, i64 0}
!35 = !{!"WOLFSSL_ALERT", !6, i64 0, !6, i64 4}
!36 = !{!"WOLFSSL_ALERT_HISTORY", !35, i64 0, !35, i64 8}
!37 = !{!"RecordLayerHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!38 = !{!"MsgsReceived", !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 0, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 1, !17, i64 2, !17, i64 2, !17, i64 2}
!39 = !{!"ProtocolVersion", !5, i64 0, !5, i64 1}
!40 = !{!"CipherSpecs", !17, i64 0, !17, i64 2, !17, i64 4, !17, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15}
!41 = !{!"Keys", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !5, i64 232, !5, i64 244, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 281, !5, i64 282, !5, i64 283}
!42 = !{!"Options", !18, i64 0, !17, i64 8, !17, i64 8, !17, i64 8, !17, i64 8, !17, i64 8, !17, i64 8, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 9, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 10, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 11, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 12, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 13, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 14, !17, i64 15, !17, i64 15, !17, i64 15, !17, i64 15, !17, i64 15, !17, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !5, i64 24, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 30, !5, i64 31, !5, i64 32, !5, i64 33, !5, i64 34, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !17, i64 40, !17, i64 42, !17, i64 44, !17, i64 46, !17, i64 48, !5, i64 50}
!43 = !{!"p1 _ZTS6RsaKey", !9, i64 0}
!44 = !{!"p1 _ZTS7ecc_key", !9, i64 0}
!45 = !{!"p1 _ZTS8Poly1305", !9, i64 0}
!46 = !{!"OneTimeAuth", !45, i64 0, !5, i64 8}
!47 = !{!"WOLFSSL", !20, i64 0, !16, i64 8, !16, i64 16, !21, i64 24, !5, i64 32, !5, i64 80, !22, i64 128, !9, i64 136, !9, i64 144, !23, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !24, i64 216, !9, i64 224, !6, i64 232, !26, i64 240, !9, i64 256, !29, i64 264, !29, i64 304, !32, i64 352, !33, i64 640, !34, i64 648, !36, i64 656, !35, i64 672, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !17, i64 708, !6, i64 712, !5, i64 716, !37, i64 717, !38, i64 722, !39, i64 726, !39, i64 728, !40, i64 730, !41, i64 748, !42, i64 1032, !43, i64 1088, !5, i64 1096, !5, i64 1097, !17, i64 1098, !5, i64 1100, !5, i64 1172, !17, i64 1174, !17, i64 1176, !5, i64 1178, !6, i64 1308, !6, i64 1312, !44, i64 1320, !5, i64 1328, !5, i64 1329, !44, i64 1336, !44, i64 1344, !17, i64 1352, !5, i64 1354, !6, i64 1356, !5, i64 1360, !6, i64 1364, !46, i64 1368, !19, i64 1384, !17, i64 1392, !6, i64 1396}
!48 = !{!6, !6, i64 0}
!49 = !{!20, !20, i64 0}
!50 = !{!25, !25, i64 0}
!51 = !{!14, !13, i64 0}
!52 = !{!14, !6, i64 8}
!53 = !{!36, !6, i64 8}
!54 = !{!36, !6, i64 12}
!55 = !{!5, !5, i64 0}
!56 = !{!"test_memio_ctx", !5, i64 0, !6, i64 65536, !13, i64 65544, !5, i64 65552, !6, i64 131088, !13, i64 131096, !6, i64 131104, !6, i64 131108, !5, i64 131112, !6, i64 131240, !6, i64 131244, !5, i64 131248, !6, i64 131376, !6, i64 131380}
!57 = !{!56, !6, i64 131088}
!58 = !{!56, !6, i64 65536}
!59 = !{!56, !13, i64 65544}
!60 = !{!56, !13, i64 131096}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = !{!"p1 _ZTS14WOLFSSL_METHOD", !9, i64 0}
!65 = !{!"wolfSSL_RefWithMutex", !5, i64 0, !6, i64 40}
!66 = !{!"p1 _ZTS20WOLFSSL_CERT_MANAGER", !9, i64 0}
!67 = !{!"WOLFSSL_CTX", !64, i64 0, !65, i64 8, !6, i64 56, !14, i64 64, !14, i64 80, !15, i64 96, !15, i64 104, !6, i64 112, !15, i64 120, !5, i64 128, !5, i64 129, !5, i64 129, !6, i64 132, !6, i64 136, !66, i64 144, !16, i64 152, !9, i64 160, !5, i64 168, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 169, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 170, !5, i64 171, !5, i64 171, !5, i64 171, !5, i64 172, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !5, i64 173, !17, i64 173, !17, i64 173, !17, i64 174, !17, i64 176, !17, i64 178, !5, i64 180, !17, i64 182, !18, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !9, i64 216, !6, i64 224, !6, i64 228, !17, i64 232, !6, i64 236, !5, i64 240, !5, i64 312, !9, i64 320, !9, i64 328, !6, i64 336, !19, i64 344, !5, i64 352}
!68 = !{!67, !5, i64 312}
!69 = !{!47, !5, i64 1172}
!70 = !{!"callback_functions", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !20, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !5, i64 92, !5, i64 92, !5, i64 92, !5, i64 92}
!71 = !{!70, !9, i64 0}
!72 = !{!70, !9, i64 8}
!73 = !{!70, !9, i64 24}
!74 = !{!70, !6, i64 84}
!75 = !{!36, !6, i64 0}
!76 = !{!36, !6, i64 4}
!77 = distinct !{!77, !12}
!78 = distinct !{!78, !12}
!79 = distinct !{!79, !12}
!80 = distinct !{!80, !12}
!81 = !{!47, !5, i64 1066}
!82 = !{!47, !5, i64 1053}
!83 = !{!47, !5, i64 1054}
!84 = !{!47, !16, i64 8}
!85 = !{!"Suites", !17, i64 0, !17, i64 2, !5, i64 4, !5, i64 304, !5, i64 432}
!86 = !{!85, !17, i64 0}
!87 = distinct !{!87, !12, !90}
!88 = distinct !{!88, !12}
!89 = distinct !{!89, !12}
!90 = !{!"llvm.loop.peeled.count", i32 1}
!91 = !{!47, !5, i64 738}
!92 = !{!47, !6, i64 1012}
!93 = !{!47, !6, i64 1016}
!94 = !{!47, !6, i64 1004}
!95 = !{!47, !6, i64 1008}
end_hunk_1
