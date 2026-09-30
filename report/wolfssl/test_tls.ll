Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/test_tls?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@test_tls12_certreq_odd_sigalgs:bb.a
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.j) ; 0 uses
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.5) ; 0 uses
  %i.l = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite489 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.l) ; 0 uses
  %i.m = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.g, i32 noundef 0) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite490 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.n) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.p = call i32 @fflush(ptr noundef %i.o)       ; 0 uses
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_set_verify(ptr noundef %i.q, i32 noundef 1, ptr noundef null) #10
  br label %.critedge532

.critedge:                                        ; preds = %bb.a
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_set_verify(ptr noundef %i.r, i32 noundef 1, ptr noundef null) #10
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.t = call i32 @wolfSSL_clear_group_messages(ptr noundef %i.s) #10 ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %.critedge527, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 441) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite491 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite492 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.t, i32 noundef 1) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite493 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ac = call i32 @fflush(ptr noundef %i.ab)     ; 0 uses
  br label %.critedge532

.critedge527:                                     ; preds = %.critedge
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ae = call i32 @wolfSSL_connect(ptr noundef %i.ad) #10 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %.critedge529, label %.critedge525

.critedge525:                                     ; preds = %.critedge527
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 444) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite494 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite495 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ae, i32 noundef -1) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite496 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.al) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.an = call i32 @fflush(ptr noundef %i.am)     ; 0 uses
  br label %.critedge532

.critedge529:                                     ; preds = %.critedge527
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ap = call i32 @wolfSSL_get_error(ptr noundef %i.ao, i32 noundef -1) #10 ; 2 uses
  %i.aq = icmp eq i32 %i.ap, 2
  br i1 %i.aq, label %.critedge531, label %.critedge528

.critedge528:                                     ; preds = %.critedge529
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 445) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite497 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.as) ; 0 uses
  %i.at = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) ; 0 uses
  %i.au = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite498 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.au) ; 0 uses
  %i.av = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ap, i32 noundef 2) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite499 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aw) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ay = call i32 @fflush(ptr noundef %i.ax)     ; 0 uses
  br label %.critedge532

.critedge531:                                     ; preds = %.critedge529
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ba = call i32 @wolfSSL_accept(ptr noundef %i.az) #10 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, -1
  br i1 %i.bb, label %.critedge533, label %.critedge530

.critedge530:                                     ; preds = %.critedge531
  %i.bc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 447) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite500 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bd) ; 0 uses
  %i.be = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite501 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bf) ; 0 uses
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ba, i32 noundef -1) ; 0 uses
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite502 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bj = call i32 @fflush(ptr noundef %i.bi)     ; 0 uses
  br label %.critedge532

.critedge533:                                     ; preds = %.critedge531
  %i.bk = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.bl = call i32 @wolfSSL_get_error(ptr noundef %i.bk, i32 noundef -1) #10 ; 2 uses
  %i.bm = icmp eq i32 %i.bl, 2
  br i1 %i.bm, label %.critedge532, label %bb.d

bb.d:                                             ; preds = %.critedge533
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 448) ; 0 uses
  %i.bo = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite503 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.bo) ; 0 uses
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite504 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bq) ; 0 uses
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.bl, i32 noundef 2) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite505 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bs) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.bu = call i32 @fflush(ptr noundef %i.bt)     ; 0 uses
  br label %.critedge532

.critedge532:                                     ; preds = %.critedge530, %.critedge528, %.critedge525, %bb.c, %bb.b, %.critedge533, %bb.d
  %.11466 = phi i1 [ true, %.critedge533 ], [ false, %.critedge530 ], [ false, %bb.d ], [ false, %.critedge525 ], [ false, %bb.b ], [ false, %bb.c ], [ false, %.critedge528 ] ; 2 uses
  %i.bv = call i32 @test_memio_get_message(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef 0) #10
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.critedge532, %bb.f
  %.0453553 = phi i32 [ %i.cd, %bb.f ], [ 0, %.critedge532 ]
  %i.bx = load i32, ptr %i.f, align 4, !tbaa !19  ; 3 uses
  %i.by = icmp sgt i32 %i.bx, 12
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !18  ; 8 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 5
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !20
  %i.cc = icmp eq i8 %i.cb, 13
  br i1 %i.cc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %i.cd = add nuw nsw i32 %.0453553, 1            ; 2 uses
  %i.ce = call i32 @test_memio_get_message(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, i32 noundef %i.cd) #10
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %.lr.ph, label %.thread, !llvm.loop !59

bb.g:                                             ; preds = %bb.e
  br i1 %.11466, label %.critedge537, label %.critedge546

.thread:                                          ; preds = %bb.f, %.critedge532
  br i1 %.11466, label %bb.h, label %.critedge546

bb.h:                                             ; preds = %.thread
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 458) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite506 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ch) ; 0 uses
  %i.ci = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.5) ; 0 uses
  %i.cj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite507 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cj) ; 0 uses
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef -1, i32 noundef 0) ; 0 uses
  br label %.critedge546.sink.split

.critedge537:                                     ; preds = %bb.g
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 9
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !20  ; 2 uses
  %i.cn = zext i8 %i.cm to i32                    ; 2 uses
  %i.co = add nuw nsw i32 %i.cn, 12               ; 2 uses
  %i.cp = icmp samesign ult i32 %i.co, %i.bx
  br i1 %i.cp, label %.critedge539, label %bb.i

bb.i:                                             ; preds = %.critedge537
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 467) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite509 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.cr) ; 0 uses
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) ; 0 uses
  %i.ct = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite510 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ct) ; 0 uses
  %i.cu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.50, i32 noundef %i.co, i32 noundef %i.bx) ; 0 uses
  br label %.critedge546.sink.split

.critedge539:                                     ; preds = %.critedge537
  %i.cv = zext i8 %i.cm to i64
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 10 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !20
  %i.cz = zext i8 %i.cy to i32
  %i.da = shl nuw nsw i32 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 11 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !20
  %i.dd = zext i8 %i.dc to i32
  %i.de = or disjoint i32 %i.da, %i.dd            ; 4 uses
  %i.df = icmp samesign ugt i32 %i.de, 3
  br i1 %i.df, label %.critedge543, label %bb.j

bb.j:                                             ; preds = %.critedge539
  %i.dg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 472) ; 0 uses
  %i.dh = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite512 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.dh) ; 0 uses
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52) ; 0 uses
  %i.dj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite513 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dj) ; 0 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, i32 noundef %i.de, i32 noundef 4) ; 0 uses
  br label %.critedge546.sink.split

.critedge543:                                     ; preds = %.critedge539
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bz, i64 3 ; 2 uses
  %1 = load i16, ptr %i.dl, align 1
  %2 = call i16 @llvm.bswap.i16(i16 %1)
  %3 = zext i16 %2 to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.dn = add nsw i32 %3, -1                      ; 2 uses
  %i.do = lshr i32 %i.dn, 8
  %i.dp = trunc i32 %i.do to i8
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !20
  %i.dq = trunc i32 %i.dn to i8
  store i8 %i.dq, ptr %i.dm, align 1, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bz, i64 6 ; 2 uses
  %4 = load i16, ptr %i.dr, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %4)
  %i.ds = zext i16 %5 to i32
  %i.dt = shl nuw nsw i32 %i.ds, 8
  %6 = getelementptr inbounds nuw i8, ptr %i.bz, i64 7
  %i.du = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !20
  %i.dw = zext i8 %i.dv to i32
  %7 = add nsw i32 %i.dw, -1                      ; 2 uses
  %i.dx = add nsw i32 %7, %i.dt                   ; 2 uses
  %i.dy = lshr i32 %i.dx, 16
  %i.dz = trunc i32 %i.dy to i8
  store i8 %i.dz, ptr %i.dr, align 1, !tbaa !20
  %i.ea = lshr i32 %i.dx, 8
  %i.eb = trunc i32 %i.ea to i8
  store i8 %i.eb, ptr %6, align 1, !tbaa !20
  %i.ec = trunc i32 %7 to i8
  store i8 %i.ec, ptr %i.du, align 1, !tbaa !20
  %i.ed = add nsw i32 %i.de, -1                   ; 2 uses
  %i.ee = lshr i32 %i.ed, 8
  %i.ef = trunc nuw i32 %i.ee to i8
  store i8 %i.ef, ptr %i.cx, align 1, !tbaa !20
  %i.eg = trunc i32 %i.ed to i8
  store i8 %i.eg, ptr %i.db, align 1, !tbaa !20
  %i.eh = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.ei = ptrtoint ptr %i.eh to i64
  %i.ej = ptrtoint ptr %0 to i64
  %i.ek = sub i64 %i.ei, %i.ej
  %i.el = trunc i64 %i.ek to i32
  %i.em = add nuw nsw i32 %i.cn, 11
  %i.en = add nuw nsw i32 %i.em, %i.de
  %i.eo = add i32 %i.en, %i.el
  %i.ep = call i32 @test_memio_remove_from_buffer(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %i.eo, i32 noundef 1) #10 ; 2 uses
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.critedge545, label %.critedge535

.critedge535:                                     ; preds = %.critedge543
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 492) ; 0 uses
  %i.es = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite515 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.es) ; 0 uses
  %i.et = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.5) ; 0 uses
  %i.eu = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite516 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.eu) ; 0 uses
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ep, i32 noundef 0) ; 0 uses
  br label %.critedge546.sink.split

.critedge545:                                     ; preds = %.critedge543
  %i.ew = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ex = call i32 @wolfSSL_connect(ptr noundef %i.ew) #10 ; 2 uses
  %i.ey = icmp eq i32 %i.ex, -1
  br i1 %i.ey, label %.critedge547, label %.critedge544

.critedge544:                                     ; preds = %.critedge545
  %i.ez = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 497) ; 0 uses
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite518 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.fa) ; 0 uses
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) ; 0 uses
  %i.fc = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite519 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fc) ; 0 uses
  %i.fd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ex, i32 noundef -1) ; 0 uses
  br label %.critedge546.sink.split

.critedge547:                                     ; preds = %.critedge545
  %i.fe = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ff = call i32 @wolfSSL_get_error(ptr noundef %i.fe, i32 noundef -1) #10 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, -328
  br i1 %i.fg, label %.critedge546, label %bb.k

bb.k:                                             ; preds = %.critedge547
  %i.fh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 498) ; 0 uses
  %i.fi = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite521 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.fi) ; 0 uses
  %i.fj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.54) ; 0 uses
  %i.fk = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite522 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fk) ; 0 uses
  %i.fl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ff, i32 noundef -328) ; 0 uses
  br label %.critedge546.sink.split

.critedge546.sink.split:                          ; preds = %bb.k, %bb.h, %bb.i, %bb.j, %.critedge535, %.critedge544
  %i.fm = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite520 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.fm) ; 0 uses
  %i.fn = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.fo = call i32 @fflush(ptr noundef %i.fn)     ; 0 uses
  br label %.critedge546

.critedge546:                                     ; preds = %.critedge546.sink.split, %.thread, %bb.g, %.critedge547
  %.23 = phi i32 [ 1, %.critedge547 ], [ 0, %bb.g ], [ 0, %.thread ], [ 0, %.critedge546.sink.split ]
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.fp) #10
  %i.fq = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.fq) #10
  %i.fr = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.fr) #10
  %i.fs = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.fs) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.23
}

declare i32 @test_memio_remove_from_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls12_bad_cv_sig_alg() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1908 x i8], align 16             ; 5 uses
  %0 = alloca %struct.WOLFSSL_BUFFER_INFO, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1908) %i.a, ptr noundef nonnull align 16 dereferenceable(1908) @__const.test_tls12_bad_cv_sig_alg.clientMsgs, i64 1908, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.b = tail call ptr @wolfTLSv1_2_server_method() #10
  %i.c = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.b) #10 ; 10 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 801) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.56) ; 0 uses
  br label %.critedge202

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @wolfSSL_CTX_use_certificate_file(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.58, i32 noundef 1) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 803) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef nonnull @.str.60) ; 0 uses
  br label %.critedge202

bb.d:                                             ; preds = %bb.b
  %i.k = tail call i32 @wolfSSL_CTX_use_PrivateKey_file(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.62, i32 noundef 1) #10
  %.not187 = icmp eq i32 %i.k, 0
  br i1 %.not187, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 805) ; 0 uses
  %i.m = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite188 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.m) ; 0 uses
  %i.n = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.59, ptr noundef nonnull @.str.63) ; 0 uses
  br label %.critedge202

.critedge:                                        ; preds = %bb.d
  tail call void @wolfSSL_CTX_set_verify(ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef null) #10
  tail call void @wolfSSL_CTX_SetIORecv(ptr noundef nonnull %i.c, ptr noundef nonnull @CsRecv) #10
  tail call void @wolfSSL_CTX_SetIOSend(ptr noundef nonnull %i.c, ptr noundef nonnull @CsSend) #10
  %i.o = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.c) #10 ; 7 uses
  %.not191 = icmp eq ptr %i.o, null
  br i1 %.not191, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.critedge
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 814) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite192 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.65) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite193 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite194 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.u) ; 0 uses
  %i.v = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.w = tail call i32 @fflush(ptr noundef %i.v)  ; 0 uses
  br label %.thread210

.critedge202:                                     ; preds = %.thread, %bb.e, %bb.c
  %.str.57.sink = phi ptr [ @.str.57, %.thread ], [ @.str.64, %bb.e ], [ @.str.61, %bb.c ]
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite182 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.57.sink) ; 0 uses
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite183 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.z) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ab = tail call i32 @fflush(ptr noundef %i.aa) ; 0 uses
  tail call void @wolfSSL_CTX_SetIORecv(ptr noundef %i.c, ptr noundef nonnull @CsRecv) #10
  tail call void @wolfSSL_CTX_SetIOSend(ptr noundef %i.c, ptr noundef nonnull @CsSend) #10
  br label %.thread210

.thread210:                                       ; preds = %bb.f, %.critedge202
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1908, ptr %i.ac, align 8, !tbaa !24
  br label %.critedge205

bb.g:                                             ; preds = %.critedge
  store ptr %i.a, ptr %0, align 8, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1908, ptr %i.ad, align 8, !tbaa !24
  call void @wolfSSL_SetIOReadCtx(ptr noundef nonnull %i.o, ptr noundef nonnull %0) #10
  %i.ae = call i32 @wolfSSL_accept(ptr noundef nonnull %i.o) #10 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %.critedge206, label %.critedge204

.critedge204:                                     ; preds = %bb.g
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 822) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite195 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite196 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ae, i32 noundef -1) ; 0 uses
  %i.al = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite197 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.al) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.an = call i32 @fflush(ptr noundef %i.am)     ; 0 uses
  br label %.critedge205

.critedge206:                                     ; preds = %bb.g
  %i.ao = call i32 @wolfSSL_get_error(ptr noundef nonnull %i.o, i32 noundef -1) #10 ; 2 uses
end_hunk_0
begin_hunk_1_@test_tls12_corrupted_finished:bb.a
  %i.fz = and i32 %i.fy, 262144
  %.not752.not = icmp eq i32 %i.fz, 0
  br i1 %.not752.not, label %bb.n, label %.critedge801

bb.n:                                             ; preds = %.critedge799
  %i.ga = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1845) ; 0 uses
  %i.gb = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite753 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.gb) ; 0 uses
  %i.gc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.10) ; 0 uses
  %i.gd = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite754 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.gd) ; 0 uses
  %i.ge = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.critedge803

.critedge801:                                     ; preds = %.critedge799
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fw, i64 128
  %i.gg = load ptr, ptr %i.gf, align 16, !tbaa !60 ; 2 uses
  %.not756 = icmp eq ptr %i.gg, null
  br i1 %.not756, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.critedge801
  %i.gh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1846) ; 0 uses
  %i.gi = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite757 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.gi) ; 0 uses
  %i.gj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.93) ; 0 uses
  %i.gk = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite758 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.gk) ; 0 uses
  %i.gl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.94) ; 0 uses
  br label %.critedge803

bb.p:                                             ; preds = %.critedge801
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.gg, i8 -91, i64 144, i1 false)
  %i.gm = load i32, ptr %i.f, align 4, !tbaa !19
  %i.gn = call i32 @test_memio_inject_message(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.e, i32 noundef %i.gm) #10 ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.critedge805, label %.critedge798

.critedge798:                                     ; preds = %bb.p
  %i.gp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1850) ; 0 uses
  %i.gq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite760 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.gq) ; 0 uses
  %i.gr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.5) ; 0 uses
  %i.gs = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite761 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.gs) ; 0 uses
  %i.gt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.gn, i32 noundef 0) ; 0 uses
  %i.gu = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite762 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.gu) ; 0 uses
  %i.gv = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.gw = call i32 @fflush(ptr noundef %i.gv)     ; 0 uses
  br label %.critedge806

.critedge803:                                     ; preds = %bb.n, %bb.o
  %i.gx = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite755 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.gx) ; 0 uses
  %i.gy = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.gz = call i32 @fflush(ptr noundef %i.gy)     ; 0 uses
  %i.ha = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 128
  %i.hc = load ptr, ptr %i.hb, align 16, !tbaa !60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.hc, i8 -91, i64 144, i1 false)
  br label %.critedge806

.critedge805:                                     ; preds = %bb.p
  %i.hd = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.he = call i32 @wolfSSL_accept(ptr noundef %i.hd) #10
  %.not763.not = icmp eq i32 %i.he, 1
  br i1 %.not763.not, label %.critedge804, label %.critedge807

.critedge804:                                     ; preds = %.critedge805
  %i.hf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1854) ; 0 uses
  %i.hg = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite764 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.hg) ; 0 uses
  %i.hh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.40, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.75) ; 0 uses
  %i.hi = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite765 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.hi) ; 0 uses
  %i.hj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.hk = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite766 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.hk) ; 0 uses
  %i.hl = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.hm = call i32 @fflush(ptr noundef %i.hl)     ; 0 uses
  br label %.critedge806

.critedge807:                                     ; preds = %.critedge805
  %i.hn = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ho = call i32 @wolfSSL_get_error(ptr noundef %i.hn, i32 noundef -1) #10 ; 2 uses
  %i.hp = icmp eq i32 %i.ho, -304
  br i1 %i.hp, label %.critedge806, label %bb.q

bb.q:                                             ; preds = %.critedge807
  %i.hq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1856) ; 0 uses
  %i.hr = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite767 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.hr) ; 0 uses
  %i.hs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.96) ; 0 uses
  %i.ht = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite768 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ht) ; 0 uses
  %i.hu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.ho, i32 noundef -304) ; 0 uses
  %i.hv = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite769 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.hv) ; 0 uses
  %i.hw = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.hx = call i32 @fflush(ptr noundef %i.hw)     ; 0 uses
  br label %.critedge806

.critedge806:                                     ; preds = %bb.f, %.critedge774, %bb.c, %bb.b, %.critedge771, %.critedge776, %bb.l, %bb.i, %.critedge780, %bb.k, %.critedge791, %bb.h, %.critedge778, %.critedge804, %.critedge798, %.critedge795, %bb.m, %.critedge803, %.critedge807, %bb.q
  %.37 = phi i32 [ 1, %.critedge807 ], [ 0, %.critedge804 ], [ 0, %bb.q ], [ 0, %.critedge803 ], [ 0, %.critedge795 ], [ 0, %.critedge798 ], [ 0, %bb.m ], [ 0, %.critedge778 ], [ 0, %bb.h ], [ 0, %.critedge791 ], [ 0, %bb.k ], [ 0, %.critedge780 ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %.critedge776 ], [ 0, %.critedge771 ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %.critedge774 ], [ 0, %bb.f ]
  %i.hy = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.hy) #10
  %i.hz = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.hz) #10
  %i.ia = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ia) #10
  %i.ib = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.ib) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.37
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @test_tls12_find_client_finished(ptr noundef nonnull %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 0, ptr %i.b, align 4, !tbaa !19
  store i32 -1, ptr %1, align 4, !tbaa !19
  store i32 -1, ptr %2, align 4, !tbaa !19
  store i32 0, ptr %3, align 4, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 131376 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !63
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread70

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.05383 = phi i32 [ %i.m, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.f = call i32 @test_memio_get_message(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.05383) #10
  %i.g = icmp ne i32 %i.f, 0
  %i.h = load i32, ptr %i.b, align 4
  %i.i = icmp slt i32 %i.h, 5
  %or.cond = select i1 %i.g, i1 true, i1 %i.i
  br i1 %or.cond, label %.thread70, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.k = load i8, ptr %i.j, align 1, !tbaa !20
  %i.l = icmp eq i8 %i.k, 20
  %i.m = add nuw nsw i32 %.05383, 1               ; 4 uses
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i32, ptr %i.c, align 8, !tbaa !63   ; 2 uses
  %i.o = icmp slt i32 %i.m, %i.n
  br i1 %i.o, label %.lr.ph, label %.loopexit, !llvm.loop !61

bb.d:                                             ; preds = %bb.b
  %i.p = call i32 @test_memio_get_message(ptr noundef nonnull %0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.m) #10
  %i.q = icmp eq i32 %i.p, 0
  %i.r = load i32, ptr %i.b, align 4              ; 2 uses
  %i.s = icmp sgt i32 %i.r, 4
  %or.cond4 = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond4, label %bb.e, label %thread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = icmp eq i8 %i.u, 22
  br i1 %i.v, label %.thread70.sink.split, label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.d, %bb.e
  %.pr = load i32, ptr %i.c, align 8, !tbaa !63
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %thread-pre-split
  %i.w = phi i32 [ %.pr, %thread-pre-split ], [ %i.n, %bb.c ]
  %i.x = icmp eq i32 %i.w, 1
  br i1 %i.x, label %.preheader, label %.thread70

.preheader:                                       ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 131088
  %i.z = load i32, ptr %i.y, align 8, !tbaa !64   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 65552 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.preheader, %bb.h
  %.0 = phi i32 [ %i.ag, %bb.h ], [ 0, %.preheader ] ; 2 uses
  %i.ab = add nuw nsw i32 %.0, 5                  ; 2 uses
  %.not = icmp sgt i32 %i.ab, %i.z
  br i1 %.not, label %.thread70, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = zext nneg i32 %.0 to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 3
  %.val61 = load i16, ptr %i.ae, align 1
  %4 = call i16 @llvm.bswap.i16(i16 %.val61)
  %i.af = zext i16 %4 to i32
  %i.ag = add nuw nsw i32 %i.ab, %i.af            ; 6 uses
  %i.ah = icmp sgt i32 %i.ag, %i.z
  br i1 %i.ah, label %.thread70, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !20
  %i.aj = icmp eq i8 %i.ai, 20
  br i1 %i.aj, label %bb.i, label %bb.f, !llvm.loop !62

bb.i:                                             ; preds = %bb.h
  %i.ak = add nuw nsw i32 %i.ag, 5
  %i.al = icmp sgt i32 %i.ak, %i.z
  br i1 %i.al, label %.thread70, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %i.ag to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !20
  %.not59 = icmp eq i8 %i.ao, 22
  br i1 %.not59, label %bb.k, label %.thread70

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 3
  %.val = load i16, ptr %i.ap, align 1
  %5 = call i16 @llvm.bswap.i16(i16 %.val)
  %i.aq = zext i16 %5 to i32
  %i.ar = add nuw nsw i32 %i.aq, 5                ; 2 uses
  %i.as = add nuw nsw i32 %i.ar, %i.ag
  %i.at = icmp sgt i32 %i.as, %i.z
  br i1 %i.at, label %.thread70, label %.thread70.sink.split

.thread70.sink.split:                             ; preds = %bb.k, %bb.e
  %.sink99 = phi i32 [ %i.m, %bb.e ], [ 0, %bb.k ]
  %.lcssa.sink = phi i32 [ 0, %bb.e ], [ %i.ag, %bb.k ]
  %.sink = phi i32 [ %i.r, %bb.e ], [ %i.ar, %bb.k ]
  store i32 %.sink99, ptr %1, align 4, !tbaa !19
  store i32 %.lcssa.sink, ptr %2, align 4, !tbaa !19
  store i32 %.sink, ptr %3, align 4, !tbaa !19
  br label %.thread70

.thread70:                                        ; preds = %.lr.ph, %bb.f, %bb.g, %.thread70.sink.split, %bb.a, %.loopexit, %bb.j, %bb.i, %bb.k
  %.4 = phi i32 [ -1, %bb.a ], [ 0, %.thread70.sink.split ], [ -1, %bb.k ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.f ], [ -1, %.loopexit ], [ -1, %bb.g ], [ -1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.4
}

declare i32 @test_memio_copy_message(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @test_memio_drop_message(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @test_memio_modify_message_len(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_wolfSSL_alert_type_string() local_unnamed_addr #5 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_wolfSSL_get_shared_ciphers() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = tail call ptr @wolfSSLv23_client_method() #10
  %i.c = tail call ptr @wolfSSL_CTX_new(ptr noundef %i.b) #10 ; 3 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1887) ; 0 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.e) ; 0 uses
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.97) ; 0 uses
  %i.g = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite184 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.g) ; 0 uses
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.98) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite185 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.i) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.k = tail call i32 @fflush(ptr noundef %i.j)  ; 0 uses
  br label %.critedge208

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @wolfSSL_new(ptr noundef nonnull %i.c) #10 ; 9 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1888) ; 0 uses
  %i.n = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite186 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.n) ; 0 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.55, ptr noundef nonnull @.str.65) ; 0 uses
  %i.p = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite187 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.p) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.66) ; 0 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite188 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.r) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.t = tail call i32 @fflush(ptr noundef %i.s)  ; 0 uses
  br label %.critedge208

bb.d:                                             ; preds = %bb.b
  %i.u = call ptr @wolfSSL_get_shared_ciphers(ptr noundef null, ptr noundef nonnull %i.a, i32 noundef 32) #10 ; 2 uses
  %.not189 = icmp eq ptr %i.u, null
  br i1 %.not189, label %.critedge205, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1890) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite190 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull @.str.100) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite191 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, ptr noundef nonnull %i.u) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite192 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ac = call i32 @fflush(ptr noundef %i.ab)     ; 0 uses
  br label %.critedge208

.critedge205:                                     ; preds = %bb.d
  %i.ad = call ptr @wolfSSL_get_shared_ciphers(ptr noundef nonnull %i.l, ptr noundef null, i32 noundef 32) #10 ; 2 uses
  %.not193 = icmp eq ptr %i.ad, null
  br i1 %.not193, label %.critedge207, label %.critedge

.critedge:                                        ; preds = %.critedge205
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1891) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite194 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull @.str.102) ; 0 uses
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite195 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, ptr noundef nonnull %i.ad) ; 0 uses
  %i.aj = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite196 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.aj) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.al = call i32 @fflush(ptr noundef %i.ak)     ; 0 uses
  br label %.critedge208

.critedge207:                                     ; preds = %.critedge205
  %i.am = call ptr @wolfSSL_get_shared_ciphers(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef 0) #10 ; 2 uses
  %.not197 = icmp eq ptr %i.am, null
  br i1 %.not197, label %.critedge209, label %.critedge206

.critedge206:                                     ; preds = %.critedge207
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1892) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite198 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, ptr noundef nonnull @.str.104) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite199 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.105, ptr noundef nonnull %i.am) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite200 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.as) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.au = call i32 @fflush(ptr noundef %i.at)     ; 0 uses
  br label %.critedge208

.critedge209:                                     ; preds = %.critedge207
  %i.av = call ptr @wolfSSL_get_shared_ciphers(ptr noundef nonnull %i.l, ptr noundef nonnull %i.a, i32 noundef 32) #10 ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %.critedge208, label %bb.f

bb.f:                                             ; preds = %.critedge209
  %i.ax = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1894) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite201 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ay) ; 0 uses
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite202 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.108, ptr noundef %i.av, ptr noundef nonnull %i.a) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite203 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.bc) ; 0 uses
  %i.bd = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.be = call i32 @fflush(ptr noundef %i.bd)     ; 0 uses
  br label %.critedge208

.critedge208:                                     ; preds = %.thread, %bb.c, %.critedge206, %.critedge, %bb.e, %.critedge209, %bb.f
  %.0216 = phi ptr [ %i.l, %.critedge209 ], [ %i.l, %.critedge206 ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %.critedge ], [ null, %bb.c ], [ null, %.thread ]
  %.9 = phi i32 [ 1, %.critedge209 ], [ 0, %.critedge206 ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %.critedge ], [ 0, %bb.c ], [ 0, %.thread ]
  call void @wolfSSL_free(ptr noundef %.0216) #10
  call void @wolfSSL_CTX_free(ptr noundef %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.9
}

declare ptr @wolfSSLv23_client_method() local_unnamed_addr #3

declare ptr @wolfSSL_get_shared_ciphers(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @test_tls12_peerauth_failsafe() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca ptr, align 8                      ; 10 uses
  %0 = alloca %struct.test_memio_ctx, align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store ptr null, ptr %i.d, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.e = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #10 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 1923) ; 0 uses
  %i.h = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.h) ; 0 uses
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.5) ; 0 uses
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite268 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.j) ; 0 uses
  %i.k = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.e, i32 noundef 0) ; 0 uses
  br label %.critedge291.sink.split

.critedge:                                        ; preds = %bb.a
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !13   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1066
  store i8 6, ptr %i.m, align 2, !tbaa !65
end_hunk_1
begin_hunk_2_@record_size_run_pair:bb.a
  %i.v = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.5) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite147 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.r, i32 noundef 0) ; 0 uses
  br label %.critedge162.sink.split

.critedge:                                        ; preds = %bb.g
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.aa = call i32 @test_memio_do_handshake(ptr noundef %i.y, ptr noundef %i.z, i32 noundef 30, ptr noundef null) #10 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.critedge161, label %bb.i

bb.i:                                             ; preds = %.critedge
  %i.ac = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2209) ; 0 uses
  %i.ad = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite149 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ad) ; 0 uses
  %i.ae = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.5) ; 0 uses
  %i.af = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite150 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.af) ; 0 uses
  %i.ag = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa, i32 noundef 0) ; 0 uses
  br label %.critedge162.sink.split

.critedge161:                                     ; preds = %.critedge
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ai = call fastcc i32 @record_size_check_ssl(ptr noundef %i.ah)
  %.not164 = icmp eq i32 %i.ai, 0
  br i1 %.not164, label %.critedge159, label %.critedge163

.critedge159:                                     ; preds = %.critedge161
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2210) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite152 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.10) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite153 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.am) ; 0 uses
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.critedge162.sink.split

.critedge163:                                     ; preds = %.critedge161
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.ap = call fastcc i32 @record_size_check_ssl(ptr noundef %i.ao)
  %.not165 = icmp eq i32 %i.ap, 0
  br i1 %.not165, label %bb.j, label %.critedge162

bb.j:                                             ; preds = %.critedge163
  %i.aq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2211) ; 0 uses
  %i.ar = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite155 = call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ar) ; 0 uses
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.10) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite156 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef 0, i32 noundef 1) ; 0 uses
  br label %.critedge162.sink.split

.critedge162.sink.split:                          ; preds = %bb.j, %bb.h, %bb.i, %.critedge159
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite154 = call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.av) ; 0 uses
  %i.aw = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.ax = call i32 @fflush(ptr noundef %i.aw)     ; 0 uses
  br label %.critedge162

.critedge162:                                     ; preds = %.critedge162.sink.split, %.critedge163
  %.7 = phi i32 [ 1, %.critedge163 ], [ 0, %.critedge162.sink.split ]
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.ay) #10
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !13
  call void @wolfSSL_free(ptr noundef %i.az) #10
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.ba) #10
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @wolfSSL_CTX_free(ptr noundef %i.bb) #10
  br label %bb.k

bb.k:                                             ; preds = %record_size_cipher_selectable.exit, %.critedge162
  %.0142 = phi i32 [ %.7, %.critedge162 ], [ 1, %record_size_cipher_selectable.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.0142
}

declare ptr @wolfTLSv1_3_client_method() #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @test_record_size_cache_invalidated_on_renegotiation() local_unnamed_addr #5 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @record_size_check_ssl(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1396 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread111
  %.0131 = phi i64 [ 0, %bb.a ], [ %i.ag, %.thread111 ] ; 4 uses
  %.080129 = phi i32 [ 3, %bb.a ], [ %.484, %.thread111 ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @record_size_check_ssl.payloads, i64 %.0131
  %i.c = load i32, ptr %i.b, align 4, !tbaa !19   ; 3 uses
  %i.d = tail call i32 @BuildMessage(ptr noundef %0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %i.c, i32 noundef 23, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.e = tail call i32 @wolfssl_local_GetRecordSize(ptr noundef %0, i32 noundef %i.c, i32 noundef 1) #10 ; 2 uses
  %i.f = tail call i32 @wolfssl_local_GetRecordSize(ptr noundef %0, i32 noundef %i.c, i32 noundef 1) #10
  %i.g = add nsw i32 %.080129, -1
  %i.h = icmp ult i32 %i.g, 4
  br i1 %i.h, label %bb.d, label %.thread111

bb.c:                                             ; preds = %.thread111.jt0
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @record_size_check_ssl.payloads, i64 %i.ak
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19   ; 3 uses
  %i.k = tail call i32 @BuildMessage(ptr noundef nonnull %0, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef %i.j, i32 noundef 23, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #10 ; 3 uses
  store i32 0, ptr %i.a, align 4, !tbaa !78
  %i.l = tail call i32 @wolfssl_local_GetRecordSize(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef 1) #10 ; 2 uses
  %i.m = tail call i32 @wolfssl_local_GetRecordSize(ptr noundef nonnull %0, i32 noundef %i.j, i32 noundef 1) #10
  %i.n = add nsw i32 %.484.jt0, -1
  %i.o = icmp ult i32 %i.n, 4
  br i1 %i.o, label %bb.e, label %.thread111

bb.d:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.e, %i.d
  br i1 %i.p, label %.thread.thread, label %.thread.thread121

bb.e:                                             ; preds = %bb.c
  %i.q = icmp eq i32 %i.l, %i.k
  br i1 %i.q, label %.thread.thread, label %.thread.thread121

.thread.thread121:                                ; preds = %bb.d, %bb.e
  %i.r = phi i32 [ %i.l, %bb.e ], [ %i.e, %bb.d ]
  %i.s = phi i32 [ %i.k, %bb.e ], [ %i.d, %bb.d ]
  %.0131139 = phi i64 [ %i.ak, %bb.e ], [ %.0131, %bb.d ]
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2154) ; 0 uses
  %i.u = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.u) ; 0 uses
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) ; 0 uses
  %i.w = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite89 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.w) ; 0 uses
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.r, i32 noundef %i.s) ; 0 uses
  br label %.thread111.jt0.sink.split

.thread.thread:                                   ; preds = %bb.d, %bb.e
  %i.y = phi i32 [ %i.m, %bb.e ], [ %i.f, %bb.d ] ; 2 uses
  %i.z = phi i32 [ %i.k, %bb.e ], [ %i.d, %bb.d ] ; 2 uses
  %.0131138 = phi i64 [ %i.ak, %bb.e ], [ %.0131, %bb.d ] ; 2 uses
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %.thread111.jt0, label %bb.f

bb.f:                                             ; preds = %.thread.thread
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull @.str.1, i32 noundef 2155) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite91 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 15, i64 1, ptr %i.ac) ; 0 uses
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.132) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite92 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ae) ; 0 uses
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.y, i32 noundef %i.z) ; 0 uses
  br label %.thread111.jt0.sink.split

.thread111:                                       ; preds = %bb.b, %bb.c
  %.484 = phi i32 [ %.080129, %bb.b ], [ 0, %bb.c ] ; 2 uses
  %.0131137 = phi i64 [ %.0131, %bb.b ], [ %i.ak, %bb.c ]
  %i.ag = add nuw nsw i64 %.0131137, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, 5
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !77

.thread111.jt0.sink.split:                        ; preds = %.thread.thread121, %bb.f
  %.0131140.ph = phi i64 [ %.0131139, %.thread.thread121 ], [ %.0131138, %bb.f ]
  %i.ah = load ptr, ptr @stdout, align 8, !tbaa !15
  %fwrite93 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 2, i64 1, ptr %i.ah) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !15
  %i.aj = tail call i32 @fflush(ptr noundef %i.ai) ; 0 uses
  br label %.thread111.jt0

.thread111.jt0:                                   ; preds = %.thread111.jt0.sink.split, %.thread.thread
  %.0131140 = phi i64 [ %.0131140.ph, %.thread111.jt0.sink.split ], [ %.0131138, %.thread.thread ]
  %.484.jt0 = phi i32 [ 0, %.thread111.jt0.sink.split ], [ 1, %.thread.thread ] ; 2 uses
  %i.ak = add nuw nsw i64 %.0131140, 1            ; 5 uses
  %exitcond.not.jt0 = icmp eq i64 %i.ak, 5
  br i1 %exitcond.not.jt0, label %bb.g, label %bb.c, !llvm.loop !77

bb.g:                                             ; preds = %.thread111.jt0, %.thread111
  %.484136 = phi i32 [ %.484.jt0, %.thread111.jt0 ], [ %.484, %.thread111 ]
  ret i32 %.484136
}

declare i32 @wolfSSL_CTX_set_cipher_list(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BuildMessage(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @wolfssl_local_GetRecordSize(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(read) }

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
!10 = !{!"p1 _ZTS11WOLFSSL_CTX", !9, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"p1 _ZTS7WOLFSSL", !9, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 omnipotent char", !9, i64 0}
!17 = !{!"test_memio_ctx", !5, i64 0, !6, i64 65536, !16, i64 65544, !5, i64 65552, !6, i64 131088, !16, i64 131096, !6, i64 131104, !6, i64 131108, !5, i64 131112, !6, i64 131240, !6, i64 131244, !5, i64 131248, !6, i64 131376, !6, i64 131380}
!18 = !{!16, !16, i64 0}
!19 = !{!6, !6, i64 0}
!20 = !{!5, !5, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"WOLFSSL_BUFFER_INFO", !16, i64 0, !6, i64 8}
!23 = !{!22, !16, i64 0}
!24 = !{!22, !6, i64 8}
!25 = !{!"p1 _ZTS6Suites", !9, i64 0}
!26 = !{!"p1 _ZTS6Arrays", !9, i64 0}
!27 = !{!"p1 _ZTS9HS_Hashes", !9, i64 0}
!28 = !{!"p1 _ZTS6WC_RNG", !9, i64 0}
!29 = !{!"p1 _ZTS13WOLFSSL_ASYNC", !9, i64 0}
!30 = !{!"WOLFSSL_CIPHER", !5, i64 0, !5, i64 1, !12, i64 8}
!31 = !{!"p1 _ZTS3Aes", !9, i64 0}
!32 = !{!"p1 _ZTS6ChaCha", !9, i64 0}
!33 = !{!"Ciphers", !31, i64 0, !16, i64 8, !16, i64 16, !32, i64 24, !5, i64 32, !5, i64 33}
!34 = !{!"", !5, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !5, i64 28, !5, i64 29}
!35 = !{!"p1 _ZTS5DhKey", !9, i64 0}
!36 = !{!"p1 _ZTS9DerBuffer", !9, i64 0}
!37 = !{!"Buffers", !34, i64 0, !34, i64 32, !22, i64 64, !22, i64 80, !22, i64 96, !22, i64 112, !22, i64 128, !6, i64 144, !6, i64 148, !5, i64 152, !5, i64 153, !5, i64 154, !5, i64 155, !22, i64 160, !22, i64 176, !22, i64 192, !22, i64 208, !35, i64 224, !36, i64 232, !36, i64 240, !5, i64 248, !5, i64 249, !5, i64 249, !6, i64 252, !6, i64 256, !36, i64 264, !6, i64 272, !5, i64 280}
!38 = !{!"p1 _ZTS15WOLFSSL_SESSION", !9, i64 0}
!39 = !{!"p1 _ZTS13ClientSession", !9, i64 0}
!40 = !{!"WOLFSSL_ALERT", !6, i64 0, !6, i64 4}
!41 = !{!"WOLFSSL_ALERT_HISTORY", !40, i64 0, !40, i64 8}
!42 = !{!"short", !5, i64 0}
!43 = !{!"RecordLayerHeader", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!44 = !{!"MsgsReceived", !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 0, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 1, !42, i64 2, !42, i64 2, !42, i64 2}
!45 = !{!"ProtocolVersion", !5, i64 0, !5, i64 1}
!46 = !{!"CipherSpecs", !42, i64 0, !42, i64 2, !42, i64 4, !42, i64 6, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 12, !5, i64 13, !5, i64 14, !5, i64 15}
!47 = !{!"Keys", !5, i64 0, !5, i64 64, !5, i64 128, !5, i64 160, !5, i64 192, !5, i64 208, !5, i64 224, !5, i64 232, !5, i64 244, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !5, i64 280, !5, i64 281, !5, i64 282, !5, i64 283}
!48 = !{!"long", !5, i64 0}
!49 = !{!"Options", !48, i64 0, !42, i64 8, !42, i64 8, !42, i64 8, !42, i64 8, !42, i64 8, !42, i64 8, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 9, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 10, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 11, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 12, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 13, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 14, !42, i64 15, !42, i64 15, !42, i64 15, !42, i64 15, !42, i64 15, !42, i64 15, !5, i64 16, !5, i64 17, !5, i64 18, !5, i64 19, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !5, i64 24, !5, i64 25, !5, i64 26, !5, i64 27, !5, i64 28, !5, i64 29, !5, i64 30, !5, i64 31, !5, i64 32, !5, i64 33, !5, i64 34, !5, i64 35, !5, i64 36, !5, i64 37, !5, i64 38, !5, i64 39, !42, i64 40, !42, i64 42, !42, i64 44, !42, i64 46, !42, i64 48, !5, i64 50}
!50 = !{!"p1 _ZTS6RsaKey", !9, i64 0}
!51 = !{!"p1 _ZTS7ecc_key", !9, i64 0}
!52 = !{!"p1 _ZTS8Poly1305", !9, i64 0}
!53 = !{!"OneTimeAuth", !52, i64 0, !5, i64 8}
!54 = !{!"p1 _ZTS4TLSX", !9, i64 0}
!55 = !{!"WOLFSSL", !10, i64 0, !25, i64 8, !25, i64 16, !26, i64 24, !5, i64 32, !5, i64 80, !27, i64 128, !9, i64 136, !9, i64 144, !28, i64 152, !9, i64 160, !9, i64 168, !9, i64 176, !9, i64 184, !9, i64 192, !9, i64 200, !9, i64 208, !29, i64 216, !9, i64 224, !6, i64 232, !30, i64 240, !9, i64 256, !33, i64 264, !33, i64 304, !37, i64 352, !38, i64 640, !39, i64 648, !41, i64 656, !40, i64 672, !6, i64 680, !6, i64 684, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !42, i64 708, !6, i64 712, !5, i64 716, !43, i64 717, !44, i64 722, !45, i64 726, !45, i64 728, !46, i64 730, !47, i64 748, !49, i64 1032, !50, i64 1088, !5, i64 1096, !5, i64 1097, !42, i64 1098, !5, i64 1100, !5, i64 1172, !42, i64 1174, !42, i64 1176, !5, i64 1178, !6, i64 1308, !6, i64 1312, !51, i64 1320, !5, i64 1328, !5, i64 1329, !51, i64 1336, !51, i64 1344, !42, i64 1352, !5, i64 1354, !6, i64 1356, !5, i64 1360, !6, i64 1364, !53, i64 1368, !54, i64 1384, !42, i64 1392, !6, i64 1396}
!56 = !{!55, !9, i64 176}
!57 = !{!17, !6, i64 65536}
!58 = distinct !{!58, !21}
!59 = distinct !{!59, !21}
!60 = !{!55, !27, i64 128}
!61 = distinct !{!61, !21}
!62 = distinct !{!62, !21}
!63 = !{!17, !6, i64 131376}
!64 = !{!17, !6, i64 131088}
!65 = !{!55, !5, i64 1066}
!66 = !{!55, !5, i64 1067}
!67 = distinct !{!67, !71}
!68 = distinct !{!68, !21}
!69 = !{!"CipherSuiteInfo", !16, i64 0, !16, i64 8, !5, i64 16, !5, i64 17, !5, i64 18}
!70 = !{!69, !16, i64 0}
!71 = !{!"llvm.loop.peeled.count", i32 1}
!72 = distinct !{null}
!73 = !{ptr @wolfTLSv1_2_client_method, ptr @wolfTLSv1_3_client_method}
!74 = !{ptr @wolfTLSv1_2_server_method, ptr @wolfTLSv1_3_server_method}
!75 = !{!17, !16, i64 131096}
!76 = !{!17, !16, i64 65544}
!77 = distinct !{!77, !21}
!78 = !{!55, !6, i64 1396}
end_hunk_2
