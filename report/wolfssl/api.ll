Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/api?download=true
inline.NumInlined: 44
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@test_certreq_sighash_algos:bb.a
  %i.x = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite599 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.x) ; 0 uses
  %i.y = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.s, i32 noundef 1) ; 0 uses
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite600 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.z) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ab = call i32 @fflush(ptr noundef %i.aa)     ; 0 uses
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_set_verify(ptr noundef %i.ac, i32 noundef 1, ptr noundef null) #24
  br label %.critedge656

.critedge645:                                     ; preds = %.critedge641
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_set_verify(ptr noundef %i.ad, i32 noundef 1, ptr noundef null) #24
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.af = call i32 @wolfSSL_use_PrivateKey_file(ptr noundef %i.ae, ptr noundef nonnull @.str.2413, i32 noundef 1) #24 ; 2 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %.critedge649, label %bb.c

bb.c:                                             ; preds = %.critedge645
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31981) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite601 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2414, ptr noundef nonnull @.str.15) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite602 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ak) ; 0 uses
  %i.al = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.af, i32 noundef 1) ; 0 uses
  %i.am = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite603 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.am) ; 0 uses
  %i.an = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ao = call i32 @fflush(ptr noundef %i.an)     ; 0 uses
  br label %.critedge656

.critedge649:                                     ; preds = %.critedge645
  %i.ap = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.aq = call i32 @wolfSSL_use_certificate_file(ptr noundef %i.ap, ptr noundef nonnull @.str.2415, i32 noundef 1) #24 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.critedge651, label %.critedge647

.critedge647:                                     ; preds = %.critedge649
  %i.as = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31983) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite604 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.at) ; 0 uses
  %i.au = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2416, ptr noundef nonnull @.str.15) ; 0 uses
  %i.av = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite605 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.av) ; 0 uses
  %i.aw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.aq, i32 noundef 1) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite606 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ax) ; 0 uses
  %i.ay = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.az = call i32 @fflush(ptr noundef %i.ay)     ; 0 uses
  br label %.critedge656

.critedge651:                                     ; preds = %.critedge649
  %i.ba = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.bb = call i32 @wolfSSL_connect(ptr noundef %i.ba) #24 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %.critedge653, label %.critedge650

.critedge650:                                     ; preds = %.critedge651
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31985) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite607 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.be) ; 0 uses
  %i.bf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2378, ptr noundef nonnull @.str.2417) ; 0 uses
  %i.bg = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite608 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bg) ; 0 uses
  %i.bh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bb, i32 noundef -1) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite609 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bi) ; 0 uses
  %i.bj = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bk = call i32 @fflush(ptr noundef %i.bj)     ; 0 uses
  br label %.critedge656

.critedge653:                                     ; preds = %.critedge651
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.bm = call i32 @wolfSSL_get_error(ptr noundef %i.bl, i32 noundef -1) #24 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 2
  br i1 %i.bn, label %.critedge655, label %.critedge652

.critedge652:                                     ; preds = %.critedge653
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31987) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite610 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2379, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite611 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.br) ; 0 uses
  %i.bs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bm, i32 noundef 2) ; 0 uses
  %i.bt = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite612 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bt) ; 0 uses
  %i.bu = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bv = call i32 @fflush(ptr noundef %i.bu)     ; 0 uses
  br label %.critedge656

.critedge655:                                     ; preds = %.critedge653
  %i.bw = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.bx = call i32 @wolfSSL_accept(ptr noundef %i.bw) #24 ; 2 uses
  %i.by = icmp eq i32 %i.bx, -1
  br i1 %i.by, label %.critedge657, label %.critedge654

.critedge654:                                     ; preds = %.critedge655
  %i.bz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31989) ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite613 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ca) ; 0 uses
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2418, ptr noundef nonnull @.str.2417) ; 0 uses
  %i.cc = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite614 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cc) ; 0 uses
  %i.cd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.bx, i32 noundef -1) ; 0 uses
  %i.ce = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite615 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ce) ; 0 uses
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cg = call i32 @fflush(ptr noundef %i.cf)     ; 0 uses
  br label %.critedge656

.critedge657:                                     ; preds = %.critedge655
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ci = call i32 @wolfSSL_get_error(ptr noundef %i.ch, i32 noundef -1) #24 ; 2 uses
  %i.cj = icmp eq i32 %i.ci, 2
  br i1 %i.cj, label %.critedge656, label %bb.d

bb.d:                                             ; preds = %.critedge657
  %i.ck = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 31991) ; 0 uses
  %i.cl = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite616 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cl) ; 0 uses
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2419, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite617 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ci, i32 noundef 2) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite618 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cr = call i32 @fflush(ptr noundef %i.cq)     ; 0 uses
  br label %.critedge656

.critedge656:                                     ; preds = %.critedge654, %.critedge652, %.critedge650, %.critedge647, %bb.c, %bb.b, %.critedge643, %.critedge657, %bb.d
  %.15566 = phi i32 [ 1, %.critedge657 ], [ 0, %.critedge654 ], [ 0, %bb.d ], [ 0, %.critedge650 ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %.critedge643 ], [ 0, %.critedge647 ], [ 0, %.critedge652 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 3 uses
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !76
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.critedge656, %.critedge165
  %.0543683 = phi i32 [ %i.fl, %.critedge165 ], [ 0, %.critedge656 ] ; 4 uses
  %.16567682 = phi i32 [ %.22573, %.critedge165 ], [ %.15566, %.critedge656 ]
  %i.cv = icmp eq i32 %.16567682, 1
  br i1 %i.cv, label %.critedge117, label %.critedge661

.critedge117:                                     ; preds = %.lr.ph
  %i.cw = add nsw i32 %.0543683, 1                ; 2 uses
  %i.cx = sext i32 %.0543683 to i64
  %i.cy = getelementptr inbounds i8, ptr %0, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16  ; 2 uses
  %i.da = icmp eq i8 %i.cz, 22
  br i1 %i.da, label %.critedge659, label %.thread.sink.split

.critedge659:                                     ; preds = %.critedge117
  %i.db = add nsw i32 %.0543683, 2                ; 2 uses
  %i.dc = sext i32 %i.cw to i64
  %i.dd = getelementptr inbounds i8, ptr %0, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !16  ; 2 uses
  %i.df = icmp eq i8 %i.de, 3
  br i1 %i.df, label %bb.e, label %.thread.sink.split

bb.e:                                             ; preds = %.critedge659
  %i.dg = add nsw i32 %.0543683, 3                ; 2 uses
  %i.dh = sext i32 %i.db to i64
  %i.di = getelementptr inbounds i8, ptr %0, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !16  ; 2 uses
  %i.dk = icmp eq i8 %i.dj, 3
  br i1 %i.dk, label %.thread, label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.e, %.critedge659, %.critedge117
  %.sink730 = phi i8 [ %i.cz, %.critedge117 ], [ %i.de, %.critedge659 ], [ %i.dj, %bb.e ]
  %.sink729 = phi i32 [ 31996, %.critedge117 ], [ 31997, %.critedge659 ], [ 31998, %bb.e ]
  %.str.2422.sink = phi ptr [ @.str.2421, %.critedge117 ], [ @.str.2422, %.critedge659 ], [ @.str.2423, %bb.e ]
  %.sink726 = phi i32 [ 22, %.critedge117 ], [ 3, %.critedge659 ], [ 3, %bb.e ]
  %.3.ph = phi i32 [ %i.cw, %.critedge117 ], [ %i.db, %.critedge659 ], [ %i.dg, %bb.e ]
  %i.dl = zext i8 %.sink730 to i32
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef %.sink729) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite622 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dn) ; 0 uses
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2420, ptr noundef nonnull %.str.2422.sink) ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite623 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.dp) ; 0 uses
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.dl, i32 noundef %.sink726) ; 0 uses
  %i.dr = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite624 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.dr) ; 0 uses
  %i.ds = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.dt = call i32 @fflush(ptr noundef %i.ds)     ; 0 uses
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %i.du = phi i1 [ true, %bb.e ], [ false, %.thread.sink.split ]
  %.22573 = phi i32 [ 1, %bb.e ], [ 0, %.thread.sink.split ] ; 3 uses
  %.3 = phi i32 [ %i.dg, %bb.e ], [ %.3.ph, %.thread.sink.split ] ; 3 uses
  %i.dv = add nsw i32 %.3, 2                      ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %0, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !16
  %i.dz = icmp eq i8 %i.dy, 13
  %i.ea = sext i32 %.3 to i64
  %i.eb = getelementptr i8, ptr %0, i64 %i.ea     ; 2 uses
  br i1 %i.dz, label %bb.f, label %.critedge165

bb.f:                                             ; preds = %.thread
  %i.ec = getelementptr i8, ptr %i.eb, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !16
  %i.ee = zext i8 %i.ed to i32
  %i.ef = add i32 %.3, 7
  %i.eg = add i32 %i.ef, %i.ee                    ; 2 uses
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds i8, ptr %0, i64 %i.eh
  %.val = load i16, ptr %i.ei, align 1            ; 2 uses
  %i.ej = add i32 %i.eg, 2                        ; 3 uses
  %i.ek = icmp ne i16 %.val, 0
  %or.cond685 = and i1 %i.du, %i.ek
  br i1 %or.cond685, label %.critedge167.preheader, label %.critedge

.critedge167.preheader:                           ; preds = %bb.f
  %1 = call i16 @llvm.bswap.i16(i16 %.val)
  %2 = zext i16 %1 to i32
  %i.el = add nsw i32 %i.ej, %2
  %i.em = sext i32 %i.ej to i64
  %i.en = sext i32 %i.el to i64
  br label %.critedge167

.critedge167:                                     ; preds = %.critedge167.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.em, %.critedge167.preheader ], [ %indvars.iv.next, %bb.k ] ; 3 uses
  %i.eo = getelementptr inbounds i8, ptr %0, i64 %indvars.iv ; 2 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !16  ; 3 uses
  %i.eq = getelementptr i8, ptr %i.eo, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16  ; 2 uses
  switch i8 %i.er, label %bb.i [
    i8 28, label %bb.g
    i8 27, label %bb.g
    i8 26, label %bb.g
    i8 8, label %bb.g
    i8 7, label %bb.g
  ]

bb.g:                                             ; preds = %.critedge167, %.critedge167, %.critedge167, %.critedge167, %.critedge167
  %i.es = icmp eq i8 %i.ep, 8
  br i1 %i.es, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.et = zext i8 %i.ep to i32
  %i.eu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32019) ; 0 uses
  %i.ev = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite637 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ev) ; 0 uses
  %i.ew = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2424, ptr noundef nonnull @.str.2425) ; 0 uses
  %i.ex = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite638 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ex) ; 0 uses
  %i.ey = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.et, i32 noundef 8) ; 0 uses
  br label %.thread709

bb.i:                                             ; preds = %.critedge167
  %i.ez = and i8 %i.er, -3
  %or.cond202 = icmp eq i8 %i.ez, 1
  %i.fa = icmp eq i8 %i.ep, 8
  %or.cond205 = select i1 %or.cond202, i1 true, i1 %i.fa
  br i1 %or.cond205, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32028) ; 0 uses
  %i.fc = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite634 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.fc) ; 0 uses
  %i.fd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1994, ptr noundef nonnull @.str.2426) ; 0 uses
  %i.fe = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite635 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.fe) ; 0 uses
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2427) ; 0 uses
  br label %.thread709

.thread709:                                       ; preds = %bb.h, %bb.j
  %i.fg = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite639 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.fg) ; 0 uses
  %i.fh = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.fi = call i32 @fflush(ptr noundef %i.fh)     ; 0 uses
  %indvars.iv.next711 = add nsw i64 %indvars.iv, 2
  br label %.critedge.loopexit

bb.k:                                             ; preds = %bb.i, %bb.g
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.fj = icmp slt i64 %indvars.iv.next, %i.en
  br i1 %i.fj, label %.critedge167, label %.critedge.loopexit, !llvm.loop !184

.critedge165:                                     ; preds = %.thread
  %.val665 = load i16, ptr %i.eb, align 1
  %3 = call i16 @llvm.bswap.i16(i16 %.val665)
  %i.fk = zext i16 %3 to i32
  %i.fl = add nsw i32 %i.dv, %i.fk                ; 3 uses
  %i.fm = load i32, ptr %i.cs, align 8, !tbaa !76
  %i.fn = icmp slt i32 %i.fl, %i.fm
  br i1 %i.fn, label %.lr.ph, label %.critedge

.critedge.loopexit:                               ; preds = %bb.k, %.thread709
  %indvars.iv.next714 = phi i64 [ %indvars.iv.next711, %.thread709 ], [ %indvars.iv.next, %bb.k ]
  %.26577713 = phi i32 [ 0, %.thread709 ], [ 1, %bb.k ]
  %i.fo = trunc nsw i64 %indvars.iv.next714 to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge165, %.critedge656, %.critedge.loopexit, %bb.f
  %.28579 = phi i32 [ %.26577713, %.critedge.loopexit ], [ %.22573, %bb.f ], [ %.15566, %.critedge656 ], [ %.22573, %.critedge165 ]
  %.6 = phi i32 [ %i.fo, %.critedge.loopexit ], [ %i.ej, %bb.f ], [ 0, %.critedge656 ], [ %i.fl, %.critedge165 ] ; 2 uses
  %i.fp = icmp eq i32 %.28579, 1
  br i1 %i.fp, label %bb.l, label %.critedge661

bb.l:                                             ; preds = %.critedge
  %i.fq = load i32, ptr %i.cs, align 8, !tbaa !76 ; 2 uses
  %i.fr = icmp slt i32 %.6, %i.fq
  br i1 %i.fr, label %.critedge663, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32037) ; 0 uses
  %i.ft = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite628 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ft) ; 0 uses
  %i.fu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2428, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.2392) ; 0 uses
  %i.fv = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite629 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.fv) ; 0 uses
  %i.fw = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2429, i32 noundef %.6, i32 noundef %i.fq) ; 0 uses
  br label %.critedge661.sink.split

.critedge663:                                     ; preds = %bb.l
  %i.fx = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.fy = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.fz = call i32 @test_memio_do_handshake(ptr noundef %i.fx, ptr noundef %i.fy, i32 noundef 10, ptr noundef null) #24 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %.critedge661, label %bb.n

bb.n:                                             ; preds = %.critedge663
  %i.gb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32040) ; 0 uses
  %i.gc = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite631 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.gc) ; 0 uses
  %i.gd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2302, ptr noundef nonnull @.str.43) ; 0 uses
  %i.ge = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite632 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ge) ; 0 uses
  %i.gf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.fz, i32 noundef 0) ; 0 uses
  br label %.critedge661.sink.split

.critedge661.sink.split:                          ; preds = %bb.n, %bb.m
  %i.gg = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite630 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.gg) ; 0 uses
  %i.gh = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.gi = call i32 @fflush(ptr noundef %i.gh)     ; 0 uses
  br label %.critedge661

.critedge661:                                     ; preds = %.lr.ph, %.critedge661.sink.split, %.critedge, %.critedge663
  %.32 = phi i32 [ 1, %.critedge663 ], [ 0, %.critedge ], [ 0, %.critedge661.sink.split ], [ 0, %.lr.ph ]
  %i.gj = load ptr, ptr %i.c, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.gj) #24
  %i.gk = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.gk) #24
  %i.gl = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.gl) #24
  %i.gm = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.gm) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_revoked_loaded_int_cert() #9 {
bb.a:
  ret i32 3
}

declare i32 @test_dtls12_basic_connection_id() #2

declare i32 @test_wolfSSL_dtls_cid_parse() #2

declare i32 @test_wolfSSL_dtls_set_pending_peer() #2

declare i32 @test_dtls_version_checking() #2

declare i32 @test_dtls_short_ciphertext() #2

declare i32 @test_dtls12_record_length_mismatch() #2

declare i32 @test_dtls12_short_read() #2

declare i32 @test_dtls13_longer_length() #2

declare i32 @test_dtls13_short_read() #2

declare i32 @test_records_span_network_boundaries() #2

declare i32 @test_dtls_record_cross_boundaries() #2

declare i32 @test_dtls_rtx_across_epoch_change() #2

declare i32 @test_dtls_drop_client_ack() #2

declare i32 @test_dtls_bogus_finished_epoch_zero() #2

declare i32 @test_dtls_replay() #2

declare i32 @test_dtls_certreq_order() #2

declare i32 @test_dtls_timeout() #2

declare i32 @test_dtls_memio_wolfio() #2

declare i32 @test_dtls_mtu_fragment_headroom() #2

declare i32 @test_dtls_mtu_split_messages() #2

declare i32 @test_dtls_memio_wolfio_stateless() #2

declare i32 @test_dtls_set_session_min_downgrade() #2

declare i32 @test_wolfSSL_dtls_export() #2

declare i32 @test_wolfSSL_dtls_export_peers() #2

declare i32 @test_wolfSSL_dtls_import_state_extra_window_words() #2

declare i32 @test_wolfSSL_DTLS_either_side() #2

declare i32 @test_generate_cookie() #2

declare i32 @test_wolfSSL_dtls_set_mtu() #2

declare i32 @test_wolfSSL_dtls_plaintext() #2

declare i32 @test_wolfSSL_dtls_fragments() #2

declare i32 @test_wolfSSL_ignore_alert_before_cookie() #2

declare i32 @test_wolfSSL_dtls_bad_record() #2

declare i32 @test_wolfSSL_dtls_AEAD_limit() #2

declare i32 @test_wolfSSL_dtls_stateless() #2

declare i32 @test_wolfSSL_dtls_stateless_hrr_group() #2

declare i32 @test_wolfSSL_DtlsUpdateWindow() #2

declare i32 @test_wolfSSL_DTLS_fragment_buckets() #2

declare i32 @test_wolfSSL_dtls_stateless2() #2

declare i32 @test_wolfSSL_dtls_stateless_maxfrag() #2

declare i32 @test_wolfSSL_dtls_stateless_resume() #2

declare i32 @test_wolfSSL_dtls_stateless_downgrade() #2

declare i32 @test_WOLFSSL_dtls_version_alert() #2

declare i32 @test_dtls_msg_from_other_peer() #2

declare i32 @test_dtls_ipv6_check() #2

declare i32 @test_dtls_no_extensions() #2

declare i32 @test_dtls_1_0_hvr_downgrade() #2

declare i32 @test_dtls_downgrade_scr_server() #2

declare i32 @test_dtls_downgrade_scr() #2

declare i32 @test_dtls_client_hello_timeout_downgrade() #2

declare i32 @test_dtls_client_hello_timeout() #2

declare i32 @test_dtls_dropped_ccs() #2

declare i32 @test_dtls_seq_num_downgrade() #2

declare i32 @test_dtls_old_seq_number() #2

declare i32 @test_dtls12_missing_finished() #2

declare i32 @test_dtls12_export_import_etm() #2

declare i32 @test_dtls13_min_rtx_interval() #2

declare i32 @test_dtls13_no_session_id_echo() #2

declare i32 @test_dtls13_oversized_cert_chain() #2

declare i32 @test_wolfSSL_dtls_create_free_peer() #2

declare i32 @test_wolfSSL_dtls_get0_peer() #2

declare i32 @test_wolfSSL_dtls_set_timeout_init() #2

declare i32 @test_wolfSSL_dtls_retransmit() #2

declare i32 @test_wolfSSL_DTLSv1_compat_timeouts() #2

declare i32 @test_wolfSSL_dtls13_set_send_more_acks() #2

declare i32 @test_wolfSSL_dtls_srtp_keying_material() #2

declare i32 @test_wolfSSL_mcast_peers() #2

declare i32 @test_wolfSSL_set_dtls_fd_connected() #2

declare i32 @test_wolfSSL_dtls_get_peer() #2

declare i32 @test_wolfSSL_dtls_set_peer() #2

declare i32 @test_wolfSSL_GetDtlsMacSecret() #2

declare i32 @test_wolfSSL_dtls_get_using_nonblock() #2

declare i32 @test_wolfSSL_dtls_set_using_nonblock() #2

declare i32 @test_wolfSSL_set_mtu_compat() #2

declare i32 @test_wolfSSL_dtls_set_timeout_max() #2

declare i32 @test_wolfSSL_CTX_mcast_set_member_id() #2

declare i32 @test_wolfSSL_mcast_read() #2

declare i32 @test_wolfSSL_dtls_got_timeout() #2

declare i32 @test_wolfSSL_DTLS_SetCookieSecret() #2

declare i32 @test_wolfSSL_set_secret() #2

declare i32 @test_dtls13_bad_epoch_ch() #2

declare i32 @test_wolfSSL_dtls13_null_cipher() #2

declare i32 @test_dtls13_frag_ch_pq() #2

declare i32 @test_dtls_frag_ch() #2

declare i32 @test_dtls_empty_keyshare_with_cookie() #2

declare i32 @test_dtls13_missing_finished_client() #2

declare i32 @test_dtls13_missing_finished_server() #2

declare i32 @test_dtls13_finished_send_error_propagation() #2

declare i32 @test_dtls13_basic_connection_id() #2

declare i32 @test_dtls13_hrr_want_write() #2

declare i32 @test_dtls13_every_write_want_write() #2

declare i32 @test_dtls13_epochs() #2

declare i32 @test_dtls13_ack_order() #2

declare i32 @test_dtls13_ack_overflow() #2

declare i32 @test_dtls13_ack_dup_write_counter() #2

declare i32 @test_dtls13_ch2_rtx_no_ch1() #2

declare i32 @test_dtls13_frag_ch2_with_ch1_rtx() #2

declare i32 @test_dtls_srtp() #2

declare i32 @test_dtls13_5_9_0_compat() #2

declare i32 @test_wolfSSL_get_verify_mode() #2

declare i32 @test_wolfSSL_CTX_get_verify_mode() #2

declare i32 @test_wolfSSL_get_verify_callback() #2

declare i32 @test_wolfSSL_CTX_get_extra_chain_certs() #2

declare i32 @test_wolfSSL_get_peer_chain() #2

declare i32 @test_wolfSSL_get_chain_X509() #2

declare i32 @test_wolfSSL_get_chain_cert_pem() #2

declare i32 @test_wolfSSL_cmp_peer_cert_to_file() #2

declare i32 @test_wolfSSL_CTX_SetMinEccKey_Sz() #2

declare i32 @test_wolfSSL_SetMinEccKey_Sz() #2

declare i32 @test_wolfSSL_CTX_SetMinRsaKey_Sz() #2

declare i32 @test_wolfSSL_SetMinRsaKey_Sz() #2

declare i32 @test_wolfSSL_SetEnableDhKeyTest() #2

declare i32 @test_wolfSSL_CTX_SetMinDhKey_Sz() #2

declare i32 @test_wolfSSL_SetMinDhKey_Sz() #2

declare i32 @test_wolfSSL_CTX_SetMaxDhKey_Sz() #2

declare i32 @test_wolfSSL_SetMaxDhKey_Sz() #2

declare i32 @test_wolfSSL_GetDhKey_Sz() #2

declare i32 @test_wolfSSL_get_privatekey() #2

declare i32 @test_wolfSSL_get_signature_nid() #2

declare i32 @test_wolfSSL_get_signature_type_nid() #2

declare i32 @test_wolfSSL_get_peer_signature_nid() #2

declare i32 @test_wolfSSL_get_peer_signature_type_nid() #2

declare i32 @test_wolfSSL_SSL_CTX_set_tmp_ecdh() #2

declare i32 @test_wolfSSL_CTX_set_dh_auto() #2

declare i32 @test_wolfSSL_NoTicketTLSv12_ext() #2

declare i32 @test_wolfSSL_CTX_UseMaxFragment_ext() #2

declare i32 @test_wolfSSL_CTX_num_tickets_ext() #2

declare i32 @test_wolfSSL_set1_groups_ext() #2

declare i32 @test_wolfSSL_set1_groups_list_ext() #2

declare i32 @test_wolfSSL_CTX_set_TicketHint_ext() #2

declare i32 @test_wolfSSL_tlsext_max_fragment_length_ext() #2

declare i32 @test_wolfSSL_DisableExtendedMasterSecret_ext() #2

declare i32 @test_wolfSSL_set_tlsext_host_name_ext() #2

declare i32 @test_wolfSSL_CTX_set_tlsext_servername_callback_ext() #2

declare i32 @test_wolfSSL_set_tlsext_debug_arg_ext() #2

declare i32 @test_wolfSSL_set_SessionTicket_cb_ext() #2

declare i32 @test_wolfSSL_set1_curves_list_ext() #2

declare i32 @test_wolfSSL_SecureResume_ext() #2

declare i32 @test_wolfSSL_CTX_UseSecureRenegotiation_ext() #2

declare i32 @test_wolfSSL_next_proto_cb_ext() #2

declare i32 @test_wolfSSL_tlsext_status_exts_ids_ext() #2

declare i32 @test_wolfSSL_SNI_GetFromBuffer_inval_ext() #2

declare i32 @test_wolfSSL_UseTrustedCA_inval_ext() #2

declare i32 @test_wolfSSL_UseMaxFragment_inval_ext() #2

declare i32 @test_wolfSSL_set1_groups_inval_ext() #2

declare i32 @test_wolfSSL_UseALPN_inval_ext() #2

declare i32 @test_wolfSSL_ALPN_GetPeerProtocol_inval_ext() #2

declare i32 @test_wolfSSL_CTX_set_TicketEncCb_inval_ext() #2

declare i32 @test_wolfSSL_SessionTicket_inval_ext() #2

declare i32 @test_wolfSSL_CTX_set_servername_arg_inval_ext() #2

declare i32 @test_wolfSSL_CTX_set_alpn_protos_inval_ext() #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @test_tls_multi_handshakes_one_record() #0 {
bb.a:
  %0 = alloca %struct.test_memio_ctx, align 8     ; 11 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 8 uses
  %i.e = alloca [65536 x i8], align 16            ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.f = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull @wolfTLS_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #24 ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32308) ; 0 uses
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.i) ; 0 uses
  %i.j = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2430, ptr noundef nonnull @.str.43) ; 0 uses
  %i.k = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite472 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.k) ; 0 uses
  %i.l = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.f, i32 noundef 0) ; 0 uses
  br label %.critedge517

.critedge:                                        ; preds = %bb.a
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.n = call i32 @wolfSSL_connect(ptr noundef %i.m) #24 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %.critedge512, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32310) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite474 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2378, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite475 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.s) ; 0 uses
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.n, i32 noundef -1) ; 0 uses
  br label %.critedge517

.critedge512:                                     ; preds = %.critedge
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.v = call i32 @wolfSSL_get_error(ptr noundef %i.u, i32 noundef -1) #24 ; 2 uses
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %.critedge514, label %.critedge510

.critedge510:                                     ; preds = %.critedge512
  %i.x = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32311) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite477 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.y) ; 0 uses
  %i.z = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2399, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.aa = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite478 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.aa) ; 0 uses
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.v, i32 noundef 2) ; 0 uses
  br label %.critedge517

.critedge514:                                     ; preds = %.critedge512
  %i.ac = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ad = call i32 @wolfSSL_accept(ptr noundef %i.ac) #24 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %.critedge516, label %.critedge513

.critedge513:                                     ; preds = %.critedge514
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32312) ; 0 uses
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite480 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ag) ; 0 uses
  %i.ah = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2418, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.ai = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite481 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ai) ; 0 uses
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ad, i32 noundef -1) ; 0 uses
  br label %.critedge517

.critedge516:                                     ; preds = %.critedge514
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.al = call i32 @wolfSSL_get_error(ptr noundef %i.ak, i32 noundef -1) #24 ; 2 uses
  %i.am = icmp eq i32 %i.al, 2
  br i1 %i.am, label %.critedge518, label %.critedge515

.critedge515:                                     ; preds = %.critedge516
  %i.an = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32313) ; 0 uses
  %i.ao = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite483 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ao) ; 0 uses
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2431, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.aq = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite484 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.aq) ; 0 uses
  %i.ar = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.al, i32 noundef 2) ; 0 uses
  %i.as = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite485 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.as) ; 0 uses
  %i.at = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.au = call i32 @fflush(ptr noundef %i.at)     ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false)
  br label %.critedge523

.critedge518:                                     ; preds = %.critedge516
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.val = load i16, ptr %i.av, align 1
  %1 = call i16 @llvm.bswap.i16(i16 %.val)        ; 3 uses
  %i.aw = zext i16 %1 to i32
  %i.ax = add nuw nsw i32 %i.aw, 5                ; 7 uses
  %i.ay = icmp ult i16 %1, -4
  br i1 %i.ay, label %.critedge522, label %bb.d

bb.d:                                             ; preds = %.critedge518
  %i.az = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32320) ; 0 uses
  %i.ba = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite486 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ba) ; 0 uses
  %i.bb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2432, ptr noundef nonnull @.str.2433) ; 0 uses
  %i.bc = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite487 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bc) ; 0 uses
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.ax, i32 noundef 65536) ; 0 uses
  %i.be = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite488 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.be) ; 0 uses
  %i.bf = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bg = call i32 @fflush(ptr noundef %i.bf)     ; 0 uses
  br label %.critedge523

.critedge517:                                     ; preds = %.critedge513, %.critedge510, %bb.c, %bb.b
  %i.bh = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite482 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.bh) ; 0 uses
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bj = call i32 @fflush(ptr noundef %i.bi)     ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(65536) %i.e, i8 0, i64 65536, i1 false)
  br label %.critedge523

.critedge522:                                     ; preds = %.critedge518
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 65536
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !76 ; 6 uses
  %.not.not = icmp sgt i32 %i.ax, %i.bl
  br i1 %.not.not, label %.critedge520, label %.critedge524

.critedge520:                                     ; preds = %.critedge522
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32321) ; 0 uses
  %i.bn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite489 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.bn) ; 0 uses
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2432, ptr noundef nonnull @.str.2392) ; 0 uses
  %i.bp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite490 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.bp) ; 0 uses
  %i.bq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.ax, i32 noundef %i.bl) ; 0 uses
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite491 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.br) ; 0 uses
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.bt = call i32 @fflush(ptr noundef %i.bs)     ; 0 uses
  br label %.critedge523

.critedge524:                                     ; preds = %.critedge522
  %i.bu = zext i16 %1 to i64
  %i.bv = add nuw nsw i64 %i.bu, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.e, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.bv, i1 false)
  %.not499554 = icmp samesign ult i32 %i.ax, %i.bl
  br i1 %.not499554, label %.lr.ph, label %.critedge531

.lr.ph:                                           ; preds = %.critedge524, %.critedge530
  %.0556 = phi i32 [ %i.cb, %.critedge530 ], [ %i.ax, %.critedge524 ] ; 2 uses
  %.0432555 = phi i32 [ %i.ck, %.critedge530 ], [ %i.ax, %.critedge524 ] ; 2 uses
  %i.bw = sext i32 %.0556 to i64
  %i.bx = getelementptr inbounds i8, ptr %0, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 3
  %.val541 = load i16, ptr %i.by, align 1
  %2 = call i16 @llvm.bswap.i16(i16 %.val541)     ; 2 uses
  %i.bz = add nsw i32 %.0556, 5                   ; 2 uses
  %i.ca = zext i16 %2 to i32                      ; 2 uses
  %i.cb = add nsw i32 %i.bz, %i.ca                ; 4 uses
  %.not492.not = icmp sgt i32 %i.cb, %i.bl
  br i1 %.not492.not, label %bb.e, label %.critedge526

bb.e:                                             ; preds = %.lr.ph
  %i.cc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32333) ; 0 uses
  %i.cd = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite493 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cd) ; 0 uses
  %i.ce = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2434, ptr noundef nonnull @.str.2392) ; 0 uses
  %i.cf = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite494 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cf) ; 0 uses
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.cb, i32 noundef %i.bl) ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite495 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ch) ; 0 uses
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.cj = call i32 @fflush(ptr noundef %i.ci)     ; 0 uses
  br label %.critedge523

.critedge526:                                     ; preds = %.lr.ph
  %i.ck = add nuw nsw i32 %.0432555, %i.ca        ; 4 uses
  %i.cl = icmp samesign ult i32 %i.ck, 65537
  br i1 %i.cl, label %.critedge530, label %bb.f

bb.f:                                             ; preds = %.critedge526
  %i.cm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32334) ; 0 uses
  %i.cn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite496 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.cn) ; 0 uses
  %i.co = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1962, ptr noundef nonnull @.str.2435, ptr noundef nonnull @.str.2433) ; 0 uses
  %i.cp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite497 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.cp) ; 0 uses
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1965, i32 noundef %i.ck, i32 noundef 65536) ; 0 uses
  %i.cr = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite498 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.cr) ; 0 uses
  %i.cs = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ct = call i32 @fflush(ptr noundef %i.cs)     ; 0 uses
  br label %.critedge523

.critedge530:                                     ; preds = %.critedge526
  %i.cu = zext nneg i32 %.0432555 to i64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.cu
  %i.cw = sext i32 %i.bz to i64
  %i.cx = getelementptr inbounds i8, ptr %0, i64 %i.cw
  %i.cy = zext i16 %2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr nonnull align 1 %i.cx, i64 %i.cy, i1 false)
  %.not499 = icmp slt i32 %i.cb, %i.bl
  br i1 %.not499, label %.lr.ph, label %.critedge531, !llvm.loop !187

.critedge531:                                     ; preds = %.critedge530, %.critedge524
  %.0432.lcssa = phi i32 [ %i.ax, %.critedge524 ], [ %i.ck, %.critedge530 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.da = trunc i32 %.0432.lcssa to i16
  %i.db = add i16 %i.da, -5                       ; 2 uses
  %i.dc = lshr i16 %i.db, 8
  %i.dd = trunc nuw i16 %i.dc to i8
  store i8 %i.dd, ptr %i.cz, align 1, !tbaa !16
  %i.de = trunc i16 %i.db to i8
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i8 %i.de, ptr %i.df, align 4, !tbaa !16
  call void @test_memio_clear_buffer(ptr noundef nonnull %0, i32 noundef 1) #24
  %i.dg = call i32 @test_memio_inject_message(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %i.e, i32 noundef %.0432.lcssa) #24 ; 0 uses
  %i.dh = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.di = call i32 @wolfSSL_connect(ptr noundef %i.dh) #24 ; 2 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %.critedge533, label %bb.g

bb.g:                                             ; preds = %.critedge531
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32356) ; 0 uses
  %i.dl = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite500 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dl) ; 0 uses
  %i.dm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2378, ptr noundef nonnull @.str.2395) ; 0 uses
  %i.dn = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite501 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.dn) ; 0 uses
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.di, i32 noundef -1) ; 0 uses
  %i.dp = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite502 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.dp) ; 0 uses
  %i.dq = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.dr = call i32 @fflush(ptr noundef %i.dq)     ; 0 uses
  br label %.critedge523

.critedge533:                                     ; preds = %.critedge531
  %i.ds = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.dt = call i32 @wolfSSL_get_error(ptr noundef %i.ds, i32 noundef -1) #24 ; 2 uses
  %i.du = icmp eq i32 %i.dt, 2
  br i1 %i.du, label %.critedge537, label %bb.h

bb.h:                                             ; preds = %.critedge533
  %i.dv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32357) ; 0 uses
  %i.dw = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite503 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.dw) ; 0 uses
  %i.dx = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2399, ptr noundef nonnull @.str.2380) ; 0 uses
  %i.dy = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite504 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.dy) ; 0 uses
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.dt, i32 noundef 2) ; 0 uses
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite505 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.ea) ; 0 uses
  %i.eb = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.ec = call i32 @fflush(ptr noundef %i.eb)     ; 0 uses
  br label %.critedge523

.critedge537:                                     ; preds = %.critedge533
  %i.ed = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ee = load ptr, ptr %i.d, align 8, !tbaa !70
  %i.ef = call i32 @test_memio_do_handshake(ptr noundef %i.ed, ptr noundef %i.ee, i32 noundef 10, ptr noundef null) #24 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.critedge523, label %bb.i

bb.i:                                             ; preds = %.critedge537
  %i.eh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 32359) ; 0 uses
  %i.ei = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite506 = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.ei) ; 0 uses
  %i.ej = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2302, ptr noundef nonnull @.str.43) ; 0 uses
  %i.ek = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite507 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.ek) ; 0 uses
  %i.el = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.ef, i32 noundef 0) ; 0 uses
  %i.em = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite508 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.em) ; 0 uses
  %i.en = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.eo = call i32 @fflush(ptr noundef %i.en)     ; 0 uses
  br label %.critedge523

.critedge523:                                     ; preds = %bb.e, %bb.f, %bb.h, %bb.g, %.critedge520, %bb.d, %.critedge515, %.critedge517, %.critedge537, %bb.i
  %.25 = phi i32 [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %.critedge520 ], [ 1, %.critedge537 ], [ 0, %bb.i ], [ 0, %.critedge517 ], [ 0, %.critedge515 ], [ 0, %bb.f ], [ 0, %bb.e ]
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.ep) #24
  %i.eq = load ptr, ptr %i.d, align 8, !tbaa !70
  call void @wolfSSL_free(ptr noundef %i.eq) #24
  %i.er = load ptr, ptr %i.a, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.er) #24
  %i.es = load ptr, ptr %i.b, align 8, !tbaa !69
  call void @wolfSSL_CTX_free(ptr noundef %i.es) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #24
  ret i32 %.25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_want_write() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_want_write_simul() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @test_write_dup_oom() #9 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define internal range(i32 5, 4) i32 @test_read_write_hs() #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 16 uses
  %i.d = alloca ptr, align 8                      ; 17 uses
  %0 = alloca %struct.test_memio_ctx, align 8     ; 9 uses
  %i.e = alloca [16 x i8], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 65536 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 65530 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.thread1385
  %.0849.fr1725 = phi i32 [ 0, %bb.a ], [ %.0849.fr, %.thread1385 ] ; 9 uses
  %.0850.fr1724 = phi i32 [ 3, %bb.a ], [ %.0850.fr, %.thread1385 ] ; 4 uses
  %i.h = phi i1 [ true, %bb.a ], [ false, %.thread1385 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(131384) %0, i8 0, i64 131384, i1 false)
  %i.i = icmp eq i32 %.0850.fr1724, 4             ; 2 uses
  %i.j = add i32 %.0850.fr1724, -1
  %i.k = icmp ult i32 %i.j, 4
  br i1 %i.k, label %bb.c, label %.thread1064

bb.c:                                             ; preds = %bb.b
  %i.l = call i32 @test_memio_setup(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef nonnull @wolfTLSv1_2_client_method, ptr noundef nonnull @wolfTLSv1_2_server_method) #24 ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.0850.fr1724, label %.thread.thread1395 [
    i32 4, label %.thread
    i32 2, label %.thread
  ]

.thread.thread1395:                               ; preds = %bb.d
  %i.n = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef nonnull @.str.5, i32 noundef 33032) ; 0 uses
  %i.o = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite = call i64 @fwrite(ptr nonnull @.str.6, i64 15, i64 1, ptr %i.o) ; 0 uses
  %i.p = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef nonnull @.str.2383, ptr noundef nonnull @.str.43) ; 0 uses
  %i.q = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite922 = call i64 @fwrite(ptr nonnull @.str.9, i64 15, i64 1, ptr %i.q) ; 0 uses
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.l, i32 noundef 0) ; 0 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !18
  %fwrite923 = call i64 @fwrite(ptr nonnull @.str.11, i64 2, i64 1, ptr %i.s) ; 0 uses
  %i.t = load ptr, ptr @stdout, align 8, !tbaa !18
  %i.u = call i32 @fflush(ptr noundef %i.t)       ; 0 uses
  br label %.thread1064

bb.e:                                             ; preds = %bb.c
  %i.v = sext i1 %i.i to i32
  %spec.select = add i32 %.0849.fr1725, %i.v
  %spec.select1640 = select i1 %i.i, i32 2, i32 1
  br label %.thread.thread

.thread:                                          ; preds = %bb.d, %bb.d
  %i.w = icmp eq i32 %.0849.fr1725, 2
  %spec.select1641 = select i1 %i.w, i32 1, i32 %.0849.fr1725 ; 2 uses
  %.pre1730 = add i32 %.0849.fr1725, -1
  %i.x = icmp ult i32 %.pre1730, 4
  %i.y = icmp eq i32 %.0849.fr1725, 4
  br i1 %i.x, label %.thread.thread, label %.thread1064

.thread.thread:                                   ; preds = %bb.e, %.thread
  %i.z = phi i1 [ false, %bb.e ], [ %i.y, %.thread ] ; 2 uses
  %.21060 = phi i32 [ %spec.select, %bb.e ], [ %spec.select1641, %.thread ] ; 5 uses
  %.28521059 = phi i32 [ %spec.select1640, %bb.e ], [ %.0849.fr1725, %.thread ]
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.ab = call i32 @wolfSSL_set_group_messages(ptr noundef %i.aa) #24 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.h, label %bb.f
end_hunk_0
