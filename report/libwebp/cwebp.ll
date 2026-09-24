Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/cwebp?download=true
inline.NumInlined: 29
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@main:bb.a
bb.df:                                            ; preds = %bb.de
  %i.kl = sext i32 %i.kj to i64
  %i.km = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kl
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !44
  %i.ko = call i32 @ExUtilGetInt(ptr noundef %i.kn, i32 noundef 0, ptr noundef nonnull %i.l) #11
  store i32 %i.ko, ptr %i.u, align 8, !tbaa !20
  br label %.thread827

bb.dg:                                            ; preds = %bb.de, %bb.dd
  %i.kp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.52) #13
  %.not671 = icmp eq i32 %i.kp, 0
  %i.kq = add nsw i32 %.05771354, 4               ; 3 uses
  %i.kr = icmp slt i32 %i.kq, %0
  %or.cond750 = select i1 %.not671, i1 %i.kr, i1 false
  br i1 %or.cond750, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.ks = getelementptr i8, ptr %i.ax, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !44
  %i.ku = call i32 @ExUtilGetInt(ptr noundef %i.kt, i32 noundef 0, ptr noundef nonnull %i.l) #11
  %i.kv = sext i32 %i.ev to i64
  %i.kw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.kv
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !44
  %i.ky = call i32 @ExUtilGetInt(ptr noundef %i.kx, i32 noundef 0, ptr noundef nonnull %i.l) #11
  %i.kz = getelementptr i8, ptr %i.ax, i64 24
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !44
  %i.lb = call i32 @ExUtilGetInt(ptr noundef %i.la, i32 noundef 0, ptr noundef nonnull %i.l) #11
  %i.lc = sext i32 %i.kq to i64
  %i.ld = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !44
  %i.lf = call i32 @ExUtilGetInt(ptr noundef %i.le, i32 noundef 0, ptr noundef nonnull %i.l) #11
  br label %.thread827

bb.di:                                            ; preds = %bb.dg
  %i.lg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(8) @.str.53) #13
  %.not672 = icmp eq i32 %i.lg, 0
  %or.cond752 = select i1 %.not672, i1 %i.eu, i1 false
  br i1 %or.cond752, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.lh = getelementptr i8, ptr %i.ax, i64 8
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !44
  %i.lj = call i32 @ExUtilGetInt(ptr noundef %i.li, i32 noundef 0, ptr noundef nonnull %i.l) #11
  %i.lk = sext i32 %i.ev to i64
  %i.ll = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lk
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !44
  %i.ln = call i32 @ExUtilGetInt(ptr noundef %i.lm, i32 noundef 0, ptr noundef nonnull %i.l) #11
  br label %.thread827

bb.dk:                                            ; preds = %bb.di
  %i.lo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(13) @.str.54) #13
  %.not673 = icmp eq i32 %i.lo, 0
  br i1 %.not673, label %bb.dl, label %bb.dq

bb.dl:                                            ; preds = %bb.dk
  %i.lp = add nsw i32 %.05771354, 1               ; 5 uses
  %i.lq = icmp slt i32 %i.lp, %0
  br i1 %i.lq, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %bb.dl
  %i.lr = sext i32 %i.lp to i64
  %i.ls = getelementptr inbounds [8 x i8], ptr %1, i64 %i.lr
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !44 ; 4 uses
  %i.lu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lt, ptr noundef nonnull dereferenceable(10) @.str.55) #13
  %.not674 = icmp eq i32 %i.lu, 0
  br i1 %.not674, label %.thread827, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.lv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lt, ptr noundef nonnull dereferenceable(8) @.str.56) #13
  %.not675 = icmp eq i32 %i.lv, 0
  br i1 %.not675, label %.thread827, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.lw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.lt, ptr noundef nonnull dereferenceable(7) @.str.57) #13
  %.not676 = icmp eq i32 %i.lw, 0
  br i1 %.not676, label %.thread827, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ly = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lx, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.lt) #14 ; 0 uses
  br label %.thread857

bb.dq:                                            ; preds = %bb.dl, %bb.dk
  %i.lz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.59) #13
  %.not677 = icmp eq i32 %i.lz, 0
  br i1 %.not677, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store ptr null, ptr @VP8GetCPUInfo, align 8, !tbaa !73
  br label %.thread827

bb.ds:                                            ; preds = %bb.dq
  %i.ma = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(9) @.str.60) #13
  %.not678 = icmp eq i32 %i.ma, 0
  br i1 %.not678, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.mb = call i32 @WebPGetEncoderVersion() #11   ; 3 uses
  %i.mc = call i32 @SharpYuvGetVersion() #11      ; 3 uses
  %i.md = lshr i32 %i.mb, 16
  %i.me = and i32 %i.md, 255
  %i.mf = lshr i32 %i.mb, 8
  %i.mg = and i32 %i.mf, 255
  %i.mh = and i32 %i.mb, 255
  %i.mi = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.61, i32 noundef %i.me, i32 noundef %i.mg, i32 noundef %i.mh) ; 0 uses
  %i.mj = lshr i32 %i.mc, 24
  %i.mk = lshr i32 %i.mc, 16
  %i.ml = and i32 %i.mc, 255
  %i.mm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.62, i32 noundef %i.mj, i32 noundef %i.mk, i32 noundef %i.ml) ; 0 uses
  br label %.thread831

bb.du:                                            ; preds = %bb.ds
  %i.mn = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.63) #13
  %.not679 = icmp eq i32 %i.mn, 0
  br i1 %.not679, label %.thread827, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.mo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.64) #13
  %.not680 = icmp eq i32 %i.mo, 0
  br i1 %.not680, label %.thread827, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.mp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(8) @.str.65) #13
  %.not681 = icmp eq i32 %i.mp, 0
  br i1 %.not681, label %bb.dx, label %bb.eh

bb.dx:                                            ; preds = %bb.dw
  %i.mq = add nsw i32 %.05771354, 1               ; 3 uses
  %i.mr = icmp slt i32 %i.mq, %0
  br i1 %i.mr, label %bb.dy, label %bb.eh

bb.dy:                                            ; preds = %bb.dx
  %i.ms = sext i32 %i.mq to i64
  %i.mt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ms
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !44 ; 7 uses
  %i.mv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(8) @.str.66) #13
  %.not682 = icmp eq i32 %i.mv, 0
  br i1 %.not682, label %bb.ef, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.mw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(6) @.str.30) #13
  %.not683 = icmp eq i32 %i.mw, 0
  br i1 %.not683, label %bb.ef, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.mx = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(8) @.str.31) #13
  %.not684 = icmp eq i32 %i.mx, 0
  br i1 %.not684, label %bb.ef, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.my = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(8) @.str.67) #13
  %.not685 = icmp eq i32 %i.my, 0
  br i1 %.not685, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.mz = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(5) @.str.68) #13
  %.not686 = icmp eq i32 %i.mz, 0
  br i1 %.not686, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.na = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mu, ptr noundef nonnull dereferenceable(5) @.str.69) #13
  %.not687 = icmp eq i32 %i.na, 0
  br i1 %.not687, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.nb = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.nc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.nb, ptr noundef nonnull @.str.70, ptr noundef nonnull %i.mu) #14 ; 0 uses
  br label %.thread857

bb.ef:                                            ; preds = %bb.ed, %bb.ec, %bb.eb, %bb.ea, %bb.dz, %bb.dy
  %.0494 = phi i32 [ 4, %bb.ec ], [ 3, %bb.eb ], [ 1, %bb.ea ], [ 2, %bb.dz ], [ 0, %bb.dy ], [ 5, %bb.ed ]
  %i.nd = load float, ptr %i.t, align 4, !tbaa !48
  %i.ne = call i32 @WebPConfigInitInternal(ptr noundef nonnull %4, i32 noundef range(i32 0, 6) %.0494, float noundef %i.nd, i32 noundef 528) #11
  %.not688 = icmp eq i32 %i.ne, 0
  br i1 %.not688, label %bb.eg, label %.thread827

bb.eg:                                            ; preds = %bb.ef
  %i.nf = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite689 = call i64 @fwrite(ptr nonnull @.str.71, i64 51, i64 1, ptr %i.nf) #12 ; 0 uses
  br label %.thread857

bb.eh:                                            ; preds = %bb.dx, %bb.dw
  %i.ng = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(10) @.str.72) #13
  %.not690 = icmp eq i32 %i.ng, 0
  br i1 %.not690, label %bb.ei, label %sub_0997

bb.ei:                                            ; preds = %bb.eh
  %i.nh = add nsw i32 %.05771354, 1               ; 4 uses
  %i.ni = icmp slt i32 %i.nh, %0
  br i1 %i.ni, label %bb.ej, label %sub_0997

bb.ej:                                            ; preds = %bb.ei
  %i.nj = sext i32 %i.nh to i64
  %i.nk = getelementptr inbounds [8 x i8], ptr %1, i64 %i.nj
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !44 ; 3 uses
  %i.nm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.nl) #13 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 2 uses
  %.not69413451348.not = icmp eq i64 %i.nm, 0
  br i1 %.not69413451348.not, label %.thread827, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ej, %.thread815.a
  %.0492.ph1350 = phi ptr [ %11, %.thread815.a ], [ %i.nl, %bb.ej ] ; 8 uses
  %.1515.ph1349 = phi i32 [ %.2516.ph, %.thread815.a ], [ %.05141369, %bb.ej ]
  %i.no = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0492.ph1350, i32 noundef 44) #13 ; 2 uses
  %i.np = icmp eq ptr %i.no, null
  %spec.select = select i1 %i.np, ptr %i.nn, ptr %i.no ; 2 uses
  %i.nq = ptrtoint ptr %spec.select to i64
  %i.nr = ptrtoint ptr %.0492.ph1350 to i64
  %i.ns = sub i64 %i.nq, %i.nr                    ; 7 uses
  switch i64 %i.ns, label %.thread1879 [
    i64 3, label %bb.ek
    i64 4, label %bb.em
  ]

bb.ek:                                            ; preds = %.lr.ph
  %i.nt = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.73, i64 noundef %i.ns) #13
  %.not691 = icmp eq i32 %i.nt, 0
  br i1 %.not691, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek, %bb.en, %bb.eo, %bb.ep
  %.lcssa.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 64), %bb.ep ], [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 48), %bb.eo ], [ getelementptr inbounds nuw (i8, ptr @main.kTokens, i64 32), %bb.en ], [ @main.kTokens, %bb.ek ]
  %i.nu = getelementptr inbounds nuw i8, ptr %.lcssa.ph, i64 8
  %i.nv = load i32, ptr %i.nu, align 8, !tbaa !75
  %i.nw = or i32 %i.nv, %.1515.ph1349
  br label %.thread815.a

bb.em:                                            ; preds = %.lr.ph
  %i.nx = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.22, i64 noundef %i.ns) #13
  %.not691.1 = icmp eq i32 %i.nx, 0
  br i1 %.not691.1, label %.thread815.a, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ny = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.74, i64 noundef %i.ns) #13
  %.not691.2 = icmp eq i32 %i.ny, 0
  br i1 %.not691.2, label %bb.el, label %.thread1879

bb.eo:                                            ; preds = %bb.ek
  %i.nz = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.75, i64 noundef %i.ns) #13
  %.not691.3 = icmp eq i32 %i.nz, 0
  br i1 %.not691.3, label %bb.el, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.oa = call i32 @strncmp(ptr noundef nonnull %.0492.ph1350, ptr noundef nonnull @.str.76, i64 noundef %i.ns) #13
  %.not691.4 = icmp eq i32 %i.oa, 0
  br i1 %.not691.4, label %bb.el, label %.thread1879

.thread815.a:                                     ; preds = %bb.em, %bb.el
  %.2516.ph = phi i32 [ %i.nw, %bb.el ], [ 0, %bb.em ] ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %.not6941345 = icmp ult ptr %11, %i.nn
  br i1 %.not6941345, label %.lr.ph, label %.thread827, !llvm.loop !33

.thread1879:                                      ; preds = %.lr.ph, %bb.en, %bb.ep
  %12 = load ptr, ptr @stderr, align 8, !tbaa !11
  %13 = trunc i64 %i.ns to i32
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.77, i32 noundef %13, ptr noundef nonnull %.0492.ph1350) #14 ; 0 uses
  br label %.thread831

sub_0997:                                         ; preds = %bb.eh, %bb.ei
  br i1 %.not1415, label %sub_1998, label %.thread827

sub_1998:                                         ; preds = %sub_0997
  %i.ob = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.oc = load i8, ptr %i.ob, align 1
  %.not1434 = icmp eq i8 %i.oc, 118
  br i1 %.not1434, label %.tail996, label %sub_11003

.tail996:                                         ; preds = %sub_1998
  %i.od = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.oe = load i8, ptr %i.od, align 1
  %i.of = icmp eq i8 %i.oe, 0
  br i1 %i.of, label %bb.eq, label %sub_11003

bb.eq:                                            ; preds = %.tail996
  store i1 true, ptr @verbose, align 4
  br label %.thread827

sub_11003:                                        ; preds = %.tail996, %sub_1998
  %i.og = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.oh = load i8, ptr %i.og, align 1
  %.not1436 = icmp eq i8 %i.oh, 45
  br i1 %.not1436, label %.tail1001, label %.thread1884

.tail1001:                                        ; preds = %sub_11003
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = icmp eq i8 %i.oj, 0
  br i1 %i.ok, label %bb.er, label %.thread1884

bb.er:                                            ; preds = %.tail1001
  %i.ol = add nsw i32 %.05771354, 1               ; 2 uses
  %i.om = icmp slt i32 %i.ol, %0
  br i1 %i.om, label %bb.es, label %.thread883

bb.es:                                            ; preds = %bb.er
  %i.on = sext i32 %i.ol to i64
  %i.oo = getelementptr inbounds [8 x i8], ptr %1, i64 %i.on
  %i.op = load ptr, ptr %i.oo, align 8, !tbaa !44
  br label %.thread883

.thread1884:                                      ; preds = %.tail1001, %sub_11003
  %i.oq = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.or = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oq, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.ay) #14 ; 0 uses
  call fastcc void @HelpLong()
  br label %.thread831

.thread827:                                       ; preds = %.thread815.a, %sub_0997, %bb.ej, %bb.ef, %bb.dv, %bb.du, %bb.do, %bb.dn, %bb.dm, %bb.aw, %bb.l, %bb.o, %bb.s, %bb.w, %bb.aa, %bb.af, %bb.aj, %bb.as, %bb.au, %bb.aq, %bb.ay, %bb.bh, %bb.bj, %bb.bf, %bb.bq, %bb.bv, %bb.by, %bb.cc, %bb.cg, %bb.cl, %bb.ct, %bb.cs, %bb.cz, %bb.df, %bb.dj, %bb.dr, %bb.eq, %bb.dh, %bb.dc, %bb.cw, %bb.co, %bb.cj, %bb.ce, %bb.ca, %bb.bw, %bb.bt, %bb.bn, %bb.bb, %bb.am, %bb.ah, %bb.ac, %bb.y, %bb.t, %bb.q, %bb.m, %bb.j
  %.1808 = phi i32 [ %.08071352, %bb.j ], [ %.08071352, %bb.l ], [ %.08071352, %bb.m ], [ %.08071352, %bb.o ], [ %.08071352, %bb.q ], [ %.08071352, %bb.s ], [ %.08071352, %bb.t ], [ %.08071352, %bb.w ], [ %.08071352, %bb.y ], [ %.08071352, %bb.aa ], [ %.08071352, %bb.ac ], [ %.08071352, %bb.af ], [ %.08071352, %bb.ah ], [ %.08071352, %bb.aj ], [ %.08071352, %bb.am ], [ %.08071352, %bb.aq ], [ %.08071352, %bb.as ], [ %.08071352, %bb.au ], [ %.08071352, %bb.aw ], [ %.08071352, %bb.ay ], [ %.08071352, %bb.bb ], [ %.08071352, %bb.bf ], [ %.08071352, %bb.bh ], [ %.08071352, %bb.bj ], [ %.08071352, %bb.bn ], [ %.08071352, %bb.bq ], [ %.08071352, %bb.bt ], [ %.08071352, %bb.bv ], [ %.08071352, %bb.bw ], [ %.08071352, %bb.by ], [ %.08071352, %bb.ca ], [ %.08071352, %bb.cc ], [ %.08071352, %bb.ce ], [ %.08071352, %bb.cg ], [ %.08071352, %bb.cj ], [ %.08071352, %bb.cl ], [ %.08071352, %bb.co ], [ %.08071352, %bb.ct ], [ %.08071352, %bb.cs ], [ %.08071352, %bb.cw ], [ %.08071352, %bb.cz ], [ %.08071352, %bb.dc ], [ %.08071352, %bb.df ], [ %.08071352, %bb.dh ], [ %i.lj, %bb.dj ], [ %.08071352, %bb.dm ], [ %.08071352, %bb.dn ], [ %.08071352, %bb.do ], [ %.08071352, %bb.dr ], [ %.08071352, %bb.du ], [ %.08071352, %bb.dv ], [ %.08071352, %bb.ej ], [ %.08071352, %bb.ef ], [ %.08071352, %bb.eq ], [ %.08071352, %sub_0997 ], [ %.08071352, %.thread815.a ] ; 2 uses
  %.1803 = phi i32 [ %.08021353, %bb.j ], [ %.08021353, %bb.l ], [ %.08021353, %bb.m ], [ %.08021353, %bb.o ], [ %.08021353, %bb.q ], [ %.08021353, %bb.s ], [ %.08021353, %bb.t ], [ %.08021353, %bb.w ], [ %.08021353, %bb.y ], [ %.08021353, %bb.aa ], [ %.08021353, %bb.ac ], [ %.08021353, %bb.af ], [ %.08021353, %bb.ah ], [ %.08021353, %bb.aj ], [ %.08021353, %bb.am ], [ %.08021353, %bb.aq ], [ %.08021353, %bb.as ], [ %.08021353, %bb.au ], [ %.08021353, %bb.aw ], [ %.08021353, %bb.ay ], [ %.08021353, %bb.bb ], [ %.08021353, %bb.bf ], [ %.08021353, %bb.bh ], [ %.08021353, %bb.bj ], [ %.08021353, %bb.bn ], [ %.08021353, %bb.bq ], [ %.08021353, %bb.bt ], [ %.08021353, %bb.bv ], [ %.08021353, %bb.bw ], [ %.08021353, %bb.by ], [ %.08021353, %bb.ca ], [ %.08021353, %bb.cc ], [ %.08021353, %bb.ce ], [ %.08021353, %bb.cg ], [ %.08021353, %bb.cj ], [ %.08021353, %bb.cl ], [ %.08021353, %bb.co ], [ %.08021353, %bb.ct ], [ %.08021353, %bb.cs ], [ %.08021353, %bb.cw ], [ %.08021353, %bb.cz ], [ %.08021353, %bb.dc ], [ %.08021353, %bb.df ], [ %.08021353, %bb.dh ], [ %i.ln, %bb.dj ], [ %.08021353, %bb.dm ], [ %.08021353, %bb.dn ], [ %.08021353, %bb.do ], [ %.08021353, %bb.dr ], [ %.08021353, %bb.du ], [ %.08021353, %bb.dv ], [ %.08021353, %bb.ej ], [ %.08021353, %bb.ef ], [ %.08021353, %bb.eq ], [ %.08021353, %sub_0997 ], [ %.08021353, %.thread815.a ] ; 2 uses
  %.2579 = phi i32 [ %i.bv, %bb.j ], [ %i.cf, %bb.l ], [ %.05771354, %bb.m ], [ %.05771354, %bb.o ], [ %.05771354, %bb.q ], [ %.05771354, %bb.s ], [ %i.cw, %bb.t ], [ %i.dq, %bb.w ], [ %i.eb, %bb.y ], [ %i.eo, %bb.aa ], [ %i.ex, %bb.ac ], [ %i.fe, %bb.af ], [ %.05771354, %bb.ah ], [ %.05771354, %bb.aj ], [ %i.fn, %bb.am ], [ %i.fv, %bb.aq ], [ %i.fv, %bb.as ], [ %i.fv, %bb.au ], [ %.05771354, %bb.aw ], [ %.05771354, %bb.ay ], [ %i.gi, %bb.bb ], [ %i.gp, %bb.bf ], [ %i.gp, %bb.bh ], [ %i.gp, %bb.bj ], [ %i.ha, %bb.bn ], [ %i.hh, %bb.bq ], [ %i.ho, %bb.bt ], [ %i.hz, %bb.bv ], [ %.05771354, %bb.bw ], [ %.05771354, %bb.by ], [ %.05771354, %bb.ca ], [ %.05771354, %bb.cc ], [ %.05771354, %bb.ce ], [ %.05771354, %bb.cg ], [ %i.io, %bb.cj ], [ %.05771354, %bb.cl ], [ %i.iw, %bb.co ], [ %i.ev, %bb.ct ], [ %i.ev, %bb.cs ], [ %i.jo, %bb.cw ], [ %i.jv, %bb.cz ], [ %i.kc, %bb.dc ], [ %i.kj, %bb.df ], [ %i.kq, %bb.dh ], [ %i.ev, %bb.dj ], [ %i.lp, %bb.dm ], [ %i.lp, %bb.dn ], [ %i.lp, %bb.do ], [ %.05771354, %bb.dr ], [ %.05771354, %bb.du ], [ %.05771354, %bb.dv ], [ %i.nh, %bb.ej ], [ %i.mq, %bb.ef ], [ %.05771354, %bb.eq ], [ %.05771354, %sub_0997 ], [ %i.nh, %.thread815.a ]
  %.1574 = phi i32 [ %.05731355, %bb.j ], [ %.05731355, %bb.l ], [ %.05731355, %bb.m ], [ %.05731355, %bb.o ], [ %.05731355, %bb.q ], [ %i.co, %bb.s ], [ %.05731355, %bb.t ], [ %.05731355, %bb.w ], [ %.05731355, %bb.y ], [ %.05731355, %bb.aa ], [ %.05731355, %bb.ac ], [ %.05731355, %bb.af ], [ %.05731355, %bb.ah ], [ %.05731355, %bb.aj ], [ %.05731355, %bb.am ], [ %.05731355, %bb.aq ], [ %.05731355, %bb.as ], [ %.05731355, %bb.au ], [ %.05731355, %bb.aw ], [ %.05731355, %bb.ay ], [ %.05731355, %bb.bb ], [ %.05731355, %bb.bf ], [ %.05731355, %bb.bh ], [ %.05731355, %bb.bj ], [ %.05731355, %bb.bn ], [ %.05731355, %bb.bq ], [ %.05731355, %bb.bt ], [ %.05731355, %bb.bv ], [ %.05731355, %bb.bw ], [ %.05731355, %bb.by ], [ %.05731355, %bb.ca ], [ %.05731355, %bb.cc ], [ %.05731355, %bb.ce ], [ %.05731355, %bb.cg ], [ %.05731355, %bb.cj ], [ %.05731355, %bb.cl ], [ %.05731355, %bb.co ], [ %.05731355, %bb.ct ], [ %.05731355, %bb.cs ], [ %.05731355, %bb.cw ], [ %.05731355, %bb.cz ], [ %.05731355, %bb.dc ], [ %.05731355, %bb.df ], [ %.05731355, %bb.dh ], [ %.05731355, %bb.dj ], [ %.05731355, %bb.dm ], [ %.05731355, %bb.dn ], [ %.05731355, %bb.do ], [ %.05731355, %bb.dr ], [ %.05731355, %bb.du ], [ %.05731355, %bb.dv ], [ %.05731355, %bb.ej ], [ %.05731355, %bb.ef ], [ %.05731355, %bb.eq ], [ %.05731355, %sub_0997 ], [ %.05731355, %.thread815.a ] ; 2 uses
  %.1570 = phi i32 [ %.05691356, %bb.j ], [ %.05691356, %bb.l ], [ %.05691356, %bb.m ], [ %.05691356, %bb.o ], [ %.05691356, %bb.q ], [ %.05691356, %bb.s ], [ %.05691356, %bb.t ], [ %.05691356, %bb.w ], [ %.05691356, %bb.y ], [ %.05691356, %bb.aa ], [ %.05691356, %bb.ac ], [ %.05691356, %bb.af ], [ %.05691356, %bb.ah ], [ %.05691356, %bb.aj ], [ %.05691356, %bb.am ], [ %.05691356, %bb.aq ], [ %.05691356, %bb.as ], [ %.05691356, %bb.au ], [ %.05691356, %bb.aw ], [ %.05691356, %bb.ay ], [ %.05691356, %bb.bb ], [ %.05691356, %bb.bf ], [ %.05691356, %bb.bh ], [ %.05691356, %bb.bj ], [ %.05691356, %bb.bn ], [ %.05691356, %bb.bq ], [ %.05691356, %bb.bt ], [ %.05691356, %bb.bv ], [ %.05691356, %bb.bw ], [ %.05691356, %bb.by ], [ %.05691356, %bb.ca ], [ %.05691356, %bb.cc ], [ %.05691356, %bb.ce ], [ %.05691356, %bb.cg ], [ %.05691356, %bb.cj ], [ %.05691356, %bb.cl ], [ %.05691356, %bb.co ], [ %.05691356, %bb.ct ], [ %.05691356, %bb.cs ], [ %.05691356, %bb.cw ], [ %.05691356, %bb.cz ], [ %.05691356, %bb.dc ], [ %.05691356, %bb.df ], [ %.05691356, %bb.dh ], [ %.05691356, %bb.dj ], [ %.05691356, %bb.dm ], [ %.05691356, %bb.dn ], [ %.05691356, %bb.do ], [ %.05691356, %bb.dr ], [ %.05691356, %bb.du ], [ 1, %bb.dv ], [ %.05691356, %bb.ej ], [ %.05691356, %bb.ef ], [ %.05691356, %bb.eq ], [ %.05691356, %sub_0997 ], [ %.05691356, %.thread815.a ] ; 2 uses
  %.1566 = phi i32 [ %.05651357, %bb.j ], [ %.05651357, %bb.l ], [ %.05651357, %bb.m ], [ %.05651357, %bb.o ], [ %.05651357, %bb.q ], [ %.05651357, %bb.s ], [ %.05651357, %bb.t ], [ %.05651357, %bb.w ], [ %.05651357, %bb.y ], [ %.05651357, %bb.aa ], [ %.05651357, %bb.ac ], [ %.05651357, %bb.af ], [ %.05651357, %bb.ah ], [ %.05651357, %bb.aj ], [ %.05651357, %bb.am ], [ %.05651357, %bb.aq ], [ %.05651357, %bb.as ], [ %.05651357, %bb.au ], [ 0, %bb.aw ], [ %.05651357, %bb.ay ], [ %.05651357, %bb.bb ], [ %.05651357, %bb.bf ], [ %.05651357, %bb.bh ], [ %.05651357, %bb.bj ], [ %.05651357, %bb.bn ], [ %.05651357, %bb.bq ], [ %.05651357, %bb.bt ], [ %.05651357, %bb.bv ], [ %.05651357, %bb.bw ], [ %.05651357, %bb.by ], [ %.05651357, %bb.ca ], [ %.05651357, %bb.cc ], [ %.05651357, %bb.ce ], [ %.05651357, %bb.cg ], [ %.05651357, %bb.cj ], [ %.05651357, %bb.cl ], [ %.05651357, %bb.co ], [ %.05651357, %bb.ct ], [ %.05651357, %bb.cs ], [ %.05651357, %bb.cw ], [ %.05651357, %bb.cz ], [ %.05651357, %bb.dc ], [ %.05651357, %bb.df ], [ %.05651357, %bb.dh ], [ %.05651357, %bb.dj ], [ %.05651357, %bb.dm ], [ %.05651357, %bb.dn ], [ %.05651357, %bb.do ], [ %.05651357, %bb.dr ], [ %.05651357, %bb.du ], [ %.05651357, %bb.dv ], [ %.05651357, %bb.ej ], [ %.05651357, %bb.ef ], [ %.05651357, %bb.eq ], [ %.05651357, %sub_0997 ], [ %.05651357, %.thread815.a ] ; 2 uses
  %.1562 = phi i32 [ %.05611358, %bb.j ], [ %.05611358, %bb.l ], [ %.05611358, %bb.m ], [ %.05611358, %bb.o ], [ %.05611358, %bb.q ], [ %.05611358, %bb.s ], [ %.05611358, %bb.t ], [ %.05611358, %bb.w ], [ %.05611358, %bb.y ], [ %.05611358, %bb.aa ], [ %.05611358, %bb.ac ], [ %.05611358, %bb.af ], [ %.05611358, %bb.ah ], [ %.05611358, %bb.aj ], [ 1, %bb.am ], [ %.05611358, %bb.aq ], [ %.05611358, %bb.as ], [ %.05611358, %bb.au ], [ %.05611358, %bb.aw ], [ %.05611358, %bb.ay ], [ %.05611358, %bb.bb ], [ %.05611358, %bb.bf ], [ %.05611358, %bb.bh ], [ %.05611358, %bb.bj ], [ %.05611358, %bb.bn ], [ %.05611358, %bb.bq ], [ %.05611358, %bb.bt ], [ %.05611358, %bb.bv ], [ %.05611358, %bb.bw ], [ %.05611358, %bb.by ], [ %.05611358, %bb.ca ], [ %.05611358, %bb.cc ], [ %.05611358, %bb.ce ], [ %.05611358, %bb.cg ], [ %.05611358, %bb.cj ], [ %.05611358, %bb.cl ], [ %.05611358, %bb.co ], [ %.05611358, %bb.ct ], [ %.05611358, %bb.cs ], [ %.05611358, %bb.cw ], [ %.05611358, %bb.cz ], [ %.05611358, %bb.dc ], [ %.05611358, %bb.df ], [ %.05611358, %bb.dh ], [ %.05611358, %bb.dj ], [ %.05611358, %bb.dm ], [ %.05611358, %bb.dn ], [ %.05611358, %bb.do ], [ %.05611358, %bb.dr ], [ %.05611358, %bb.du ], [ %.05611358, %bb.dv ], [ %.05611358, %bb.ej ], [ %.05611358, %bb.ef ], [ %.05611358, %bb.eq ], [ %.05611358, %sub_0997 ], [ %.05611358, %.thread815.a ] ; 2 uses
  %.1558 = phi i32 [ %.05571359, %bb.j ], [ %.05571359, %bb.l ], [ %.05571359, %bb.m ], [ %.05571359, %bb.o ], [ %.05571359, %bb.q ], [ %.05571359, %bb.s ], [ %.05571359, %bb.t ], [ %.05571359, %bb.w ], [ %.05571359, %bb.y ], [ %.05571359, %bb.aa ], [ %.05571359, %bb.ac ], [ %.05571359, %bb.af ], [ %.05571359, %bb.ah ], [ %.05571359, %bb.aj ], [ %i.ft, %bb.am ], [ %.05571359, %bb.aq ], [ %.05571359, %bb.as ], [ %.05571359, %bb.au ], [ %.05571359, %bb.aw ], [ %.05571359, %bb.ay ], [ %.05571359, %bb.bb ], [ %.05571359, %bb.bf ], [ %.05571359, %bb.bh ], [ %.05571359, %bb.bj ], [ %.05571359, %bb.bn ], [ %.05571359, %bb.bq ], [ %.05571359, %bb.bt ], [ %.05571359, %bb.bv ], [ %.05571359, %bb.bw ], [ %.05571359, %bb.by ], [ %.05571359, %bb.ca ], [ %.05571359, %bb.cc ], [ %.05571359, %bb.ce ], [ %.05571359, %bb.cg ], [ %.05571359, %bb.cj ], [ %.05571359, %bb.cl ], [ %.05571359, %bb.co ], [ %.05571359, %bb.ct ], [ %.05571359, %bb.cs ], [ %.05571359, %bb.cw ], [ %.05571359, %bb.cz ], [ %.05571359, %bb.dc ], [ %.05571359, %bb.df ], [ %.05571359, %bb.dh ], [ %.05571359, %bb.dj ], [ %.05571359, %bb.dm ], [ %.05571359, %bb.dn ], [ %.05571359, %bb.do ], [ %.05571359, %bb.dr ], [ %.05571359, %bb.du ], [ %.05571359, %bb.dv ], [ %.05571359, %bb.ej ], [ %.05571359, %bb.ef ], [ %.05571359, %bb.eq ], [ %.05571359, %sub_0997 ], [ %.05571359, %.thread815.a ] ; 2 uses
  %.1554 = phi i32 [ %.05531360, %bb.j ], [ %.05531360, %bb.l ], [ %.05531360, %bb.m ], [ %.05531360, %bb.o ], [ %.05531360, %bb.q ], [ %.05531360, %bb.s ], [ %.05531360, %bb.t ], [ %.05531360, %bb.w ], [ %.05531360, %bb.y ], [ %.05531360, %bb.aa ], [ %.05531360, %bb.ac ], [ %.05531360, %bb.af ], [ %.05531360, %bb.ah ], [ %.05531360, %bb.aj ], [ %.05531360, %bb.am ], [ %.05531360, %bb.aq ], [ %.05531360, %bb.as ], [ %.05531360, %bb.au ], [ %.05531360, %bb.aw ], [ %.05531360, %bb.ay ], [ %.05531360, %bb.bb ], [ %.05531360, %bb.bf ], [ %.05531360, %bb.bh ], [ %.05531360, %bb.bj ], [ %.05531360, %bb.bn ], [ %.05531360, %bb.bq ], [ %.05531360, %bb.bt ], [ %.05531360, %bb.bv ], [ %.05531360, %bb.bw ], [ %.05531360, %bb.by ], [ %.05531360, %bb.ca ], [ %.05531360, %bb.cc ], [ %.05531360, %bb.ce ], [ %.05531360, %bb.cg ], [ %.05531360, %bb.cj ], [ %.05531360, %bb.cl ], [ %.05531360, %bb.co ], [ %.05531360, %bb.ct ], [ %.05531360, %bb.cs ], [ %.05531360, %bb.cw ], [ %.05531360, %bb.cz ], [ %.05531360, %bb.dc ], [ %.05531360, %bb.df ], [ 1, %bb.dh ], [ %.05531360, %bb.dj ], [ %.05531360, %bb.dm ], [ %.05531360, %bb.dn ], [ %.05531360, %bb.do ], [ %.05531360, %bb.dr ], [ %.05531360, %bb.du ], [ %.05531360, %bb.dv ], [ %.05531360, %bb.ej ], [ %.05531360, %bb.ef ], [ %.05531360, %bb.eq ], [ %.05531360, %sub_0997 ], [ %.05531360, %.thread815.a ] ; 2 uses
  %.1550 = phi i32 [ %.05491361, %bb.j ], [ %.05491361, %bb.l ], [ %.05491361, %bb.m ], [ %.05491361, %bb.o ], [ %.05491361, %bb.q ], [ %.05491361, %bb.s ], [ %.05491361, %bb.t ], [ %.05491361, %bb.w ], [ %.05491361, %bb.y ], [ %.05491361, %bb.aa ], [ %.05491361, %bb.ac ], [ %.05491361, %bb.af ], [ %.05491361, %bb.ah ], [ %.05491361, %bb.aj ], [ %.05491361, %bb.am ], [ %.05491361, %bb.aq ], [ %.05491361, %bb.as ], [ %.05491361, %bb.au ], [ %.05491361, %bb.aw ], [ %.05491361, %bb.ay ], [ %.05491361, %bb.bb ], [ %.05491361, %bb.bf ], [ %.05491361, %bb.bh ], [ %.05491361, %bb.bj ], [ %.05491361, %bb.bn ], [ %.05491361, %bb.bq ], [ %.05491361, %bb.bt ], [ %.05491361, %bb.bv ], [ %.05491361, %bb.bw ], [ %.05491361, %bb.by ], [ %.05491361, %bb.ca ], [ %.05491361, %bb.cc ], [ %.05491361, %bb.ce ], [ %.05491361, %bb.cg ], [ %.05491361, %bb.cj ], [ %.05491361, %bb.cl ], [ %.05491361, %bb.co ], [ %.05491361, %bb.ct ], [ %.05491361, %bb.cs ], [ %.05491361, %bb.cw ], [ %.05491361, %bb.cz ], [ %.05491361, %bb.dc ], [ %.05491361, %bb.df ], [ %i.ku, %bb.dh ], [ %.05491361, %bb.dj ], [ %.05491361, %bb.dm ], [ %.05491361, %bb.dn ], [ %.05491361, %bb.do ], [ %.05491361, %bb.dr ], [ %.05491361, %bb.du ], [ %.05491361, %bb.dv ], [ %.05491361, %bb.ej ], [ %.05491361, %bb.ef ], [ %.05491361, %bb.eq ], [ %.05491361, %sub_0997 ], [ %.05491361, %.thread815.a ] ; 2 uses
  %.1546 = phi i32 [ %.05451362, %bb.j ], [ %.05451362, %bb.l ], [ %.05451362, %bb.m ], [ %.05451362, %bb.o ], [ %.05451362, %bb.q ], [ %.05451362, %bb.s ], [ %.05451362, %bb.t ], [ %.05451362, %bb.w ], [ %.05451362, %bb.y ], [ %.05451362, %bb.aa ], [ %.05451362, %bb.ac ], [ %.05451362, %bb.af ], [ %.05451362, %bb.ah ], [ %.05451362, %bb.aj ], [ %.05451362, %bb.am ], [ %.05451362, %bb.aq ], [ %.05451362, %bb.as ], [ %.05451362, %bb.au ], [ %.05451362, %bb.aw ], [ %.05451362, %bb.ay ], [ %.05451362, %bb.bb ], [ %.05451362, %bb.bf ], [ %.05451362, %bb.bh ], [ %.05451362, %bb.bj ], [ %.05451362, %bb.bn ], [ %.05451362, %bb.bq ], [ %.05451362, %bb.bt ], [ %.05451362, %bb.bv ], [ %.05451362, %bb.bw ], [ %.05451362, %bb.by ], [ %.05451362, %bb.ca ], [ %.05451362, %bb.cc ], [ %.05451362, %bb.ce ], [ %.05451362, %bb.cg ], [ %.05451362, %bb.cj ], [ %.05451362, %bb.cl ], [ %.05451362, %bb.co ], [ %.05451362, %bb.ct ], [ %.05451362, %bb.cs ], [ %.05451362, %bb.cw ], [ %.05451362, %bb.cz ], [ %.05451362, %bb.dc ], [ %.05451362, %bb.df ], [ %i.ky, %bb.dh ], [ %.05451362, %bb.dj ], [ %.05451362, %bb.dm ], [ %.05451362, %bb.dn ], [ %.05451362, %bb.do ], [ %.05451362, %bb.dr ], [ %.05451362, %bb.du ], [ %.05451362, %bb.dv ], [ %.05451362, %bb.ej ], [ %.05451362, %bb.ef ], [ %.05451362, %bb.eq ], [ %.05451362, %sub_0997 ], [ %.05451362, %.thread815.a ] ; 2 uses
  %.1542 = phi i32 [ %.05411363, %bb.j ], [ %.05411363, %bb.l ], [ %.05411363, %bb.m ], [ %.05411363, %bb.o ], [ %.05411363, %bb.q ], [ %.05411363, %bb.s ], [ %.05411363, %bb.t ], [ %.05411363, %bb.w ], [ %.05411363, %bb.y ], [ %.05411363, %bb.aa ], [ %.05411363, %bb.ac ], [ %.05411363, %bb.af ], [ %.05411363, %bb.ah ], [ %.05411363, %bb.aj ], [ %.05411363, %bb.am ], [ %.05411363, %bb.aq ], [ %.05411363, %bb.as ], [ %.05411363, %bb.au ], [ %.05411363, %bb.aw ], [ %.05411363, %bb.ay ], [ %.05411363, %bb.bb ], [ %.05411363, %bb.bf ], [ %.05411363, %bb.bh ], [ %.05411363, %bb.bj ], [ %.05411363, %bb.bn ], [ %.05411363, %bb.bq ], [ %.05411363, %bb.bt ], [ %.05411363, %bb.bv ], [ %.05411363, %bb.bw ], [ %.05411363, %bb.by ], [ %.05411363, %bb.ca ], [ %.05411363, %bb.cc ], [ %.05411363, %bb.ce ], [ %.05411363, %bb.cg ], [ %.05411363, %bb.cj ], [ %.05411363, %bb.cl ], [ %.05411363, %bb.co ], [ %.05411363, %bb.ct ], [ %.05411363, %bb.cs ], [ %.05411363, %bb.cw ], [ %.05411363, %bb.cz ], [ %.05411363, %bb.dc ], [ %.05411363, %bb.df ], [ %i.lb, %bb.dh ], [ %.05411363, %bb.dj ], [ %.05411363, %bb.dm ], [ %.05411363, %bb.dn ], [ %.05411363, %bb.do ], [ %.05411363, %bb.dr ], [ %.05411363, %bb.du ], [ %.05411363, %bb.dv ], [ %.05411363, %bb.ej ], [ %.05411363, %bb.ef ], [ %.05411363, %bb.eq ], [ %.05411363, %sub_0997 ], [ %.05411363, %.thread815.a ] ; 2 uses
  %.1538 = phi i32 [ %.05371364, %bb.j ], [ %.05371364, %bb.l ], [ %.05371364, %bb.m ], [ %.05371364, %bb.o ], [ %.05371364, %bb.q ], [ %.05371364, %bb.s ], [ %.05371364, %bb.t ], [ %.05371364, %bb.w ], [ %.05371364, %bb.y ], [ %.05371364, %bb.aa ], [ %.05371364, %bb.ac ], [ %.05371364, %bb.af ], [ %.05371364, %bb.ah ], [ %.05371364, %bb.aj ], [ %.05371364, %bb.am ], [ %.05371364, %bb.aq ], [ %.05371364, %bb.as ], [ %.05371364, %bb.au ], [ %.05371364, %bb.aw ], [ %.05371364, %bb.ay ], [ %.05371364, %bb.bb ], [ %.05371364, %bb.bf ], [ %.05371364, %bb.bh ], [ %.05371364, %bb.bj ], [ %.05371364, %bb.bn ], [ %.05371364, %bb.bq ], [ %.05371364, %bb.bt ], [ %.05371364, %bb.bv ], [ %.05371364, %bb.bw ], [ %.05371364, %bb.by ], [ %.05371364, %bb.ca ], [ %.05371364, %bb.cc ], [ %.05371364, %bb.ce ], [ %.05371364, %bb.cg ], [ %.05371364, %bb.cj ], [ %.05371364, %bb.cl ], [ %.05371364, %bb.co ], [ %.05371364, %bb.ct ], [ %.05371364, %bb.cs ], [ %.05371364, %bb.cw ], [ %.05371364, %bb.cz ], [ %.05371364, %bb.dc ], [ %.05371364, %bb.df ], [ %i.lf, %bb.dh ], [ %.05371364, %bb.dj ], [ %.05371364, %bb.dm ], [ %.05371364, %bb.dn ], [ %.05371364, %bb.do ], [ %.05371364, %bb.dr ], [ %.05371364, %bb.du ], [ %.05371364, %bb.dv ], [ %.05371364, %bb.ej ], [ %.05371364, %bb.ef ], [ %.05371364, %bb.eq ], [ %.05371364, %sub_0997 ], [ %.05371364, %.thread815.a ] ; 2 uses
  %.1534 = phi i32 [ %.05331365, %bb.j ], [ %.05331365, %bb.l ], [ %.05331365, %bb.m ], [ %.05331365, %bb.o ], [ %.05331365, %bb.q ], [ %.05331365, %bb.s ], [ %.05331365, %bb.t ], [ %.05331365, %bb.w ], [ %.05331365, %bb.y ], [ %.05331365, %bb.aa ], [ %.05331365, %bb.ac ], [ %.05331365, %bb.af ], [ %.05331365, %bb.ah ], [ %.05331365, %bb.aj ], [ %.05331365, %bb.am ], [ %.05331365, %bb.aq ], [ %.05331365, %bb.as ], [ %.05331365, %bb.au ], [ %.05331365, %bb.aw ], [ %.05331365, %bb.ay ], [ %.05331365, %bb.bb ], [ %.05331365, %bb.bf ], [ %.05331365, %bb.bh ], [ %.05331365, %bb.bj ], [ %.05331365, %bb.bn ], [ %.05331365, %bb.bq ], [ %.05331365, %bb.bt ], [ %.05331365, %bb.bv ], [ %.05331365, %bb.bw ], [ %.05331365, %bb.by ], [ %.05331365, %bb.ca ], [ %.05331365, %bb.cc ], [ %.05331365, %bb.ce ], [ %.05331365, %bb.cg ], [ %.05331365, %bb.cj ], [ %.05331365, %bb.cl ], [ %.05331365, %bb.co ], [ %.05331365, %bb.ct ], [ %.05331365, %bb.cs ], [ %.05331365, %bb.cw ], [ %.05331365, %bb.cz ], [ %.05331365, %bb.dc ], [ %.05331365, %bb.df ], [ %.05331365, %bb.dh ], [ %.05331365, %bb.dj ], [ 0, %bb.dm ], [ 1, %bb.dn ], [ 2, %bb.do ], [ %.05331365, %bb.dr ], [ %.05331365, %bb.du ], [ %.05331365, %bb.dv ], [ %.05331365, %bb.ej ], [ %.05331365, %bb.ef ], [ %.05331365, %bb.eq ], [ %.05331365, %sub_0997 ], [ %.05331365, %.thread815.a ] ; 2 uses
  %.1530 = phi i32 [ %.05291366, %bb.j ], [ %.05291366, %bb.l ], [ %.05291366, %bb.m ], [ %.05291366, %bb.o ], [ %.05291366, %bb.q ], [ %.05291366, %bb.s ], [ %.05291366, %bb.t ], [ %.05291366, %bb.w ], [ %.05291366, %bb.y ], [ %i.et, %bb.aa ], [ %.05291366, %bb.ac ], [ %.05291366, %bb.af ], [ %.05291366, %bb.ah ], [ %.05291366, %bb.aj ], [ %.05291366, %bb.am ], [ %.05291366, %bb.aq ], [ %.05291366, %bb.as ], [ %.05291366, %bb.au ], [ %.05291366, %bb.aw ], [ %.05291366, %bb.ay ], [ %.05291366, %bb.bb ], [ %.05291366, %bb.bf ], [ %.05291366, %bb.bh ], [ %.05291366, %bb.bj ], [ %.05291366, %bb.bn ], [ %.05291366, %bb.bq ], [ %.05291366, %bb.bt ], [ %.05291366, %bb.bv ], [ %.05291366, %bb.bw ], [ %.05291366, %bb.by ], [ %.05291366, %bb.ca ], [ %.05291366, %bb.cc ], [ %.05291366, %bb.ce ], [ %.05291366, %bb.cg ], [ %.05291366, %bb.cj ], [ %.05291366, %bb.cl ], [ %.05291366, %bb.co ], [ %.05291366, %bb.ct ], [ %.05291366, %bb.cs ], [ %.05291366, %bb.cw ], [ %.05291366, %bb.cz ], [ %.05291366, %bb.dc ], [ %.05291366, %bb.df ], [ %.05291366, %bb.dh ], [ %.05291366, %bb.dj ], [ %.05291366, %bb.dm ], [ %.05291366, %bb.dn ], [ %.05291366, %bb.do ], [ %.05291366, %bb.dr ], [ %.05291366, %bb.du ], [ %.05291366, %bb.dv ], [ %.05291366, %bb.ej ], [ %.05291366, %bb.ef ], [ %.05291366, %bb.eq ], [ %.05291366, %sub_0997 ], [ %.05291366, %.thread815.a ] ; 2 uses
  %.1526 = phi i32 [ %.05251367, %bb.j ], [ %.05251367, %bb.l ], [ %.05251367, %bb.m ], [ %.05251367, %bb.o ], [ %.05251367, %bb.q ], [ %.05251367, %bb.s ], [ %.05251367, %bb.t ], [ 0, %bb.w ], [ 0, %bb.y ], [ %spec.store.select, %bb.aa ], [ %.05251367, %bb.ac ], [ %.05251367, %bb.af ], [ %.05251367, %bb.ah ], [ %.05251367, %bb.aj ], [ %.05251367, %bb.am ], [ %.05251367, %bb.aq ], [ %.05251367, %bb.as ], [ %.05251367, %bb.au ], [ %.05251367, %bb.aw ], [ %.05251367, %bb.ay ], [ %.05251367, %bb.bb ], [ %.05251367, %bb.bf ], [ %.05251367, %bb.bh ], [ %.05251367, %bb.bj ], [ %.05251367, %bb.bn ], [ %.05251367, %bb.bq ], [ %.05251367, %bb.bt ], [ %.05251367, %bb.bv ], [ %.05251367, %bb.bw ], [ %.05251367, %bb.by ], [ %.05251367, %bb.ca ], [ %.05251367, %bb.cc ], [ %.05251367, %bb.ce ], [ %.05251367, %bb.cg ], [ %.05251367, %bb.cj ], [ %.05251367, %bb.cl ], [ %.05251367, %bb.co ], [ %.05251367, %bb.ct ], [ %.05251367, %bb.cs ], [ %.05251367, %bb.cw ], [ %.05251367, %bb.cz ], [ %.05251367, %bb.dc ], [ %.05251367, %bb.df ], [ %.05251367, %bb.dh ], [ %.05251367, %bb.dj ], [ %.05251367, %bb.dm ], [ %.05251367, %bb.dn ], [ %.05251367, %bb.do ], [ %.05251367, %bb.dr ], [ %.05251367, %bb.du ], [ %.05251367, %bb.dv ], [ %.05251367, %bb.ej ], [ %.05251367, %bb.ef ], [ %.05251367, %bb.eq ], [ %.05251367, %sub_0997 ], [ %.05251367, %.thread815.a ] ; 2 uses
  %.1522 = phi i32 [ %.05211368, %bb.j ], [ %.05211368, %bb.l ], [ %.05211368, %bb.m ], [ %.05211368, %bb.o ], [ %.05211368, %bb.q ], [ %.05211368, %bb.s ], [ %.05211368, %bb.t ], [ %.05211368, %bb.w ], [ %.05211368, %bb.y ], [ %.05211368, %bb.aa ], [ %.05211368, %bb.ac ], [ %.05211368, %bb.af ], [ %.05211368, %bb.ah ], [ %.05211368, %bb.aj ], [ %.05211368, %bb.am ], [ %.05211368, %bb.aq ], [ %.05211368, %bb.as ], [ %.05211368, %bb.au ], [ %.05211368, %bb.aw ], [ %.05211368, %bb.ay ], [ %.05211368, %bb.bb ], [ %.05211368, %bb.bf ], [ %.05211368, %bb.bh ], [ %.05211368, %bb.bj ], [ %.05211368, %bb.bn ], [ %.05211368, %bb.bq ], [ %.05211368, %bb.bt ], [ %.05211368, %bb.bv ], [ %.05211368, %bb.bw ], [ %.05211368, %bb.by ], [ %.05211368, %bb.ca ], [ %.05211368, %bb.cc ], [ %.05211368, %bb.ce ], [ %.05211368, %bb.cg ], [ %.05211368, %bb.cj ], [ %.05211368, %bb.cl ], [ %.05211368, %bb.co ], [ %.05211368, %bb.ct ], [ %.05211368, %bb.cs ], [ %.05211368, %bb.cw ], [ %.05211368, %bb.cz ], [ %.05211368, %bb.dc ], [ %.05211368, %bb.df ], [ %.05211368, %bb.dh ], [ %.05211368, %bb.dj ], [ %.05211368, %bb.dm ], [ %.05211368, %bb.dn ], [ %.05211368, %bb.do ], [ %.05211368, %bb.dr ], [ 1, %bb.du ], [ %.05211368, %bb.dv ], [ %.05211368, %bb.ej ], [ %.05211368, %bb.ef ], [ %.05211368, %bb.eq ], [ %.05211368, %sub_0997 ], [ %.05211368, %.thread815.a ] ; 2 uses
  %.4518 = phi i32 [ %.05141369, %bb.j ], [ %.05141369, %bb.l ], [ %.05141369, %bb.m ], [ %.05141369, %bb.o ], [ %.05141369, %bb.q ], [ %.05141369, %bb.s ], [ %.05141369, %bb.t ], [ %.05141369, %bb.w ], [ %.05141369, %bb.y ], [ %.05141369, %bb.aa ], [ %.05141369, %bb.ac ], [ %.05141369, %bb.af ], [ %.05141369, %bb.ah ], [ %.05141369, %bb.aj ], [ %.05141369, %bb.am ], [ %.05141369, %bb.aq ], [ %.05141369, %bb.as ], [ %.05141369, %bb.au ], [ %.05141369, %bb.aw ], [ %.05141369, %bb.ay ], [ %.05141369, %bb.bb ], [ %.05141369, %bb.bf ], [ %.05141369, %bb.bh ], [ %.05141369, %bb.bj ], [ %.05141369, %bb.bn ], [ %.05141369, %bb.bq ], [ %.05141369, %bb.bt ], [ %.05141369, %bb.bv ], [ %.05141369, %bb.bw ], [ %.05141369, %bb.by ], [ %.05141369, %bb.ca ], [ %.05141369, %bb.cc ], [ %.05141369, %bb.ce ], [ %.05141369, %bb.cg ], [ %.05141369, %bb.cj ], [ %.05141369, %bb.cl ], [ %.05141369, %bb.co ], [ %.05141369, %bb.ct ], [ %.05141369, %bb.cs ], [ %.05141369, %bb.cw ], [ %.05141369, %bb.cz ], [ %.05141369, %bb.dc ], [ %.05141369, %bb.df ], [ %.05141369, %bb.dh ], [ %.05141369, %bb.dj ], [ %.05141369, %bb.dm ], [ %.05141369, %bb.dn ], [ %.05141369, %bb.do ], [ %.05141369, %bb.dr ], [ %.05141369, %bb.du ], [ %.05141369, %bb.dv ], [ %.05141369, %bb.ej ], [ %.05141369, %bb.ef ], [ %.05141369, %bb.eq ], [ %.05141369, %sub_0997 ], [ %.2516.ph, %.thread815.a ] ; 2 uses
  %.1511 = phi i32 [ %.05101370, %bb.j ], [ %.05101370, %bb.l ], [ 0, %bb.m ], [ 1, %bb.o ], [ 2, %bb.q ], [ %.05101370, %bb.s ], [ %.05101370, %bb.t ], [ %.05101370, %bb.w ], [ %.05101370, %bb.y ], [ %.05101370, %bb.aa ], [ %.05101370, %bb.ac ], [ %.05101370, %bb.af ], [ %.05101370, %bb.ah ], [ %.05101370, %bb.aj ], [ %.05101370, %bb.am ], [ %.05101370, %bb.aq ], [ %.05101370, %bb.as ], [ %.05101370, %bb.au ], [ %.05101370, %bb.aw ], [ %.05101370, %bb.ay ], [ %.05101370, %bb.bb ], [ %.05101370, %bb.bf ], [ %.05101370, %bb.bh ], [ %.05101370, %bb.bj ], [ %.05101370, %bb.bn ], [ %.05101370, %bb.bq ], [ %.05101370, %bb.bt ], [ %.05101370, %bb.bv ], [ %.05101370, %bb.bw ], [ %.05101370, %bb.by ], [ %.05101370, %bb.ca ], [ %.05101370, %bb.cc ], [ %.05101370, %bb.ce ], [ %.05101370, %bb.cg ], [ %.05101370, %bb.cj ], [ %.05101370, %bb.cl ], [ %.05101370, %bb.co ], [ %.05101370, %bb.ct ], [ %.05101370, %bb.cs ], [ %.05101370, %bb.cw ], [ %.05101370, %bb.cz ], [ %.05101370, %bb.dc ], [ %.05101370, %bb.df ], [ %.05101370, %bb.dh ], [ %.05101370, %bb.dj ], [ %.05101370, %bb.dm ], [ %.05101370, %bb.dn ], [ %.05101370, %bb.do ], [ %.05101370, %bb.dr ], [ %.05101370, %bb.du ], [ %.05101370, %bb.dv ], [ %.05101370, %bb.ej ], [ %.05101370, %bb.ef ], [ %.05101370, %bb.eq ], [ %.05101370, %sub_0997 ], [ %.05101370, %.thread815.a ] ; 2 uses
  %.1500 = phi ptr [ %.04991371, %bb.j ], [ %i.cj, %bb.l ], [ %.04991371, %bb.m ], [ %.04991371, %bb.o ], [ %.04991371, %bb.q ], [ %.04991371, %bb.s ], [ %.04991371, %bb.t ], [ %.04991371, %bb.w ], [ %.04991371, %bb.y ], [ %.04991371, %bb.aa ], [ %.04991371, %bb.ac ], [ %.04991371, %bb.af ], [ %.04991371, %bb.ah ], [ %.04991371, %bb.aj ], [ %.04991371, %bb.am ], [ %.04991371, %bb.aq ], [ %.04991371, %bb.as ], [ %.04991371, %bb.au ], [ %.04991371, %bb.aw ], [ %.04991371, %bb.ay ], [ %.04991371, %bb.bb ], [ %.04991371, %bb.bf ], [ %.04991371, %bb.bh ], [ %.04991371, %bb.bj ], [ %.04991371, %bb.bn ], [ %.04991371, %bb.bq ], [ %.04991371, %bb.bt ], [ %.04991371, %bb.bv ], [ %.04991371, %bb.bw ], [ %.04991371, %bb.by ], [ %.04991371, %bb.ca ], [ %.04991371, %bb.cc ], [ %.04991371, %bb.ce ], [ %.04991371, %bb.cg ], [ %.04991371, %bb.cj ], [ %.04991371, %bb.cl ], [ %.04991371, %bb.co ], [ %.04991371, %bb.ct ], [ %.04991371, %bb.cs ], [ %.04991371, %bb.cw ], [ %.04991371, %bb.cz ], [ %.04991371, %bb.dc ], [ %.04991371, %bb.df ], [ %.04991371, %bb.dh ], [ %.04991371, %bb.dj ], [ %.04991371, %bb.dm ], [ %.04991371, %bb.dn ], [ %.04991371, %bb.do ], [ %.04991371, %bb.dr ], [ %.04991371, %bb.du ], [ %.04991371, %bb.dv ], [ %.04991371, %bb.ej ], [ %.04991371, %bb.ef ], [ %.04991371, %bb.eq ], [ %.04991371, %sub_0997 ], [ %.04991371, %.thread815.a ] ; 2 uses
  %.1496 = phi ptr [ %i.bz, %bb.j ], [ %.04951372, %bb.l ], [ %.04951372, %bb.m ], [ %.04951372, %bb.o ], [ %.04951372, %bb.q ], [ %.04951372, %bb.s ], [ %.04951372, %bb.t ], [ %.04951372, %bb.w ], [ %.04951372, %bb.y ], [ %.04951372, %bb.aa ], [ %.04951372, %bb.ac ], [ %.04951372, %bb.af ], [ %.04951372, %bb.ah ], [ %.04951372, %bb.aj ], [ %.04951372, %bb.am ], [ %.04951372, %bb.aq ], [ %.04951372, %bb.as ], [ %.04951372, %bb.au ], [ %.04951372, %bb.aw ], [ %.04951372, %bb.ay ], [ %.04951372, %bb.bb ], [ %.04951372, %bb.bf ], [ %.04951372, %bb.bh ], [ %.04951372, %bb.bj ], [ %.04951372, %bb.bn ], [ %.04951372, %bb.bq ], [ %.04951372, %bb.bt ], [ %.04951372, %bb.bv ], [ %.04951372, %bb.bw ], [ %.04951372, %bb.by ], [ %.04951372, %bb.ca ], [ %.04951372, %bb.cc ], [ %.04951372, %bb.ce ], [ %.04951372, %bb.cg ], [ %.04951372, %bb.cj ], [ %.04951372, %bb.cl ], [ %.04951372, %bb.co ], [ %.04951372, %bb.ct ], [ %.04951372, %bb.cs ], [ %.04951372, %bb.cw ], [ %.04951372, %bb.cz ], [ %.04951372, %bb.dc ], [ %.04951372, %bb.df ], [ %.04951372, %bb.dh ], [ %.04951372, %bb.dj ], [ %.04951372, %bb.dm ], [ %.04951372, %bb.dn ], [ %.04951372, %bb.do ], [ %.04951372, %bb.dr ], [ %.04951372, %bb.du ], [ %.04951372, %bb.dv ], [ %.04951372, %bb.ej ], [ %.04951372, %bb.ef ], [ %.04951372, %bb.eq ], [ %.04951372, %sub_0997 ], [ %.04951372, %.thread815.a ] ; 2 uses
  %.2487 = phi ptr [ %.04851373, %bb.j ], [ %.04851373, %bb.l ], [ %.04851373, %bb.m ], [ %.04851373, %bb.o ], [ %.04851373, %bb.q ], [ %.04851373, %bb.s ], [ %.04851373, %bb.t ], [ %.04851373, %bb.w ], [ %.04851373, %bb.y ], [ %.04851373, %bb.aa ], [ %.04851373, %bb.ac ], [ %.04851373, %bb.af ], [ %.04851373, %bb.ah ], [ %.04851373, %bb.aj ], [ %.04851373, %bb.am ], [ %.04851373, %bb.aq ], [ %.04851373, %bb.as ], [ %.04851373, %bb.au ], [ %.04851373, %bb.aw ], [ %.04851373, %bb.ay ], [ %.04851373, %bb.bb ], [ %.04851373, %bb.bf ], [ %.04851373, %bb.bh ], [ %.04851373, %bb.bj ], [ %.04851373, %bb.bn ], [ %.04851373, %bb.bq ], [ %.04851373, %bb.bt ], [ %.04851373, %bb.bv ], [ %.04851373, %bb.bw ], [ %.04851373, %bb.by ], [ %.04851373, %bb.ca ], [ %.04851373, %bb.cc ], [ %.04851373, %bb.ce ], [ %.04851373, %bb.cg ], [ %.04851373, %bb.cj ], [ %.04851373, %bb.cl ], [ %.04851373, %bb.co ], [ %.04851373, %bb.ct ], [ %.04851373, %bb.cs ], [ %.04851373, %bb.cw ], [ %.04851373, %bb.cz ], [ %.04851373, %bb.dc ], [ %.04851373, %bb.df ], [ %.04851373, %bb.dh ], [ %.04851373, %bb.dj ], [ %.04851373, %bb.dm ], [ %.04851373, %bb.dn ], [ %.04851373, %bb.do ], [ %.04851373, %bb.dr ], [ %.04851373, %bb.du ], [ %.04851373, %bb.dv ], [ %.04851373, %bb.ej ], [ %.04851373, %bb.ef ], [ %.04851373, %bb.eq ], [ %i.ay, %sub_0997 ], [ %.04851373, %.thread815.a ] ; 2 uses
  %i.os = load i32, ptr %i.l, align 4, !tbaa !12
  %.not697 = icmp eq i32 %i.os, 0
  br i1 %.not697, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %.thread827
  call fastcc void @HelpLong()
  br label %.thread831

.thread831:                                       ; preds = %.thread1879, %.thread1884, %bb.et, %bb.g, %bb.dt, %bb.h
  %.5.ph = phi i32 [ 0, %bb.h ], [ 0, %bb.dt ], [ 1, %.thread1879 ], [ 0, %bb.g ], [ 1, %bb.et ], [ 1, %.thread1884 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %bb.kr

.thread857:                                       ; preds = %bb.bk, %bb.av, %bb.u, %bb.dp, %bb.ee, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %bb.kp

.thread883:                                       ; preds = %bb.es, %bb.er
  %.3488.ph = phi ptr [ %.04851373, %bb.er ], [ %i.op, %bb.es ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  br label %.loopexit

bb.eu:                                            ; preds = %.thread827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #11
  %i.ot = add nsw i32 %.2579, 1                   ; 2 uses
  %i.ou = icmp slt i32 %i.ot, %0
  br i1 %i.ou, label %sub_0, label %.loopexit, !llvm.loop !34

.loopexit:                                        ; preds = %bb.eu, %.thread883
  %.08071330 = phi i32 [ %.08071352, %.thread883 ], [ %.1808, %bb.eu ] ; 7 uses
  %.08021316 = phi i32 [ %.08021353, %.thread883 ], [ %.1803, %bb.eu ] ; 7 uses
  %.05731289 = phi i32 [ %.05731355, %.thread883 ], [ %.1574, %bb.eu ] ; 5 uses
  %.05691275 = phi i32 [ %.05691356, %.thread883 ], [ %.1570, %bb.eu ] ; 3 uses
  %.05651261 = phi i32 [ %.05651357, %.thread883 ], [ %.1566, %bb.eu ]
  %.05611247 = phi i32 [ %.05611358, %.thread883 ], [ %.1562, %bb.eu ]
  %.05571233 = phi i32 [ %.05571359, %.thread883 ], [ %.1558, %bb.eu ]
  %.05531219 = phi i32 [ %.05531360, %.thread883 ], [ %.1554, %bb.eu ]
  %.05491205 = phi i32 [ %.05491361, %.thread883 ], [ %.1550, %bb.eu ]
  %.05451191 = phi i32 [ %.05451362, %.thread883 ], [ %.1546, %bb.eu ]
  %.05411177 = phi i32 [ %.05411363, %.thread883 ], [ %.1542, %bb.eu ]
  %.05371163 = phi i32 [ %.05371364, %.thread883 ], [ %.1538, %bb.eu ]
  %.05331149 = phi i32 [ %.05331365, %.thread883 ], [ %.1534, %bb.eu ]
  %.05291135 = phi i32 [ %.05291366, %.thread883 ], [ %.1530, %bb.eu ] ; 2 uses
  %.05251121 = phi i32 [ %.05251367, %.thread883 ], [ %.1526, %bb.eu ]
  %.05211107 = phi i32 [ %.05211368, %.thread883 ], [ %.1522, %bb.eu ]
  %.05141093 = phi i32 [ %.05141369, %.thread883 ], [ %.4518, %bb.eu ] ; 6 uses
  %.05101079 = phi i32 [ %.05101370, %.thread883 ], [ %.1511, %bb.eu ] ; 5 uses
  %.04991065 = phi ptr [ %.04991371, %.thread883 ], [ %.1500, %bb.eu ] ; 3 uses
  %.04951051 = phi ptr [ %.04951372, %.thread883 ], [ %.1496, %bb.eu ] ; 6 uses
  %.4489 = phi ptr [ %.3488.ph, %.thread883 ], [ %.2487, %bb.eu ] ; 7 uses
  %i.ov = icmp eq ptr %.4489, null
  br i1 %i.ov, label %.loopexit.thread, label %bb.ev

.loopexit.thread:                                 ; preds = %.preheader1012, %.loopexit
  %i.ow = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite742 = call i64 @fwrite(ptr nonnull @.str.81, i64 25, i64 1, ptr %i.ow) #12 ; 0 uses
  call fastcc void @HelpShort()
  br label %bb.kp

bb.ev:                                            ; preds = %.loopexit
  %i.ox = icmp eq i32 %.05251121, 1
  br i1 %i.ox, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  %i.oy = call i32 @WebPConfigLosslessPreset(ptr noundef nonnull %4, i32 noundef %.05291135) #11
  %.not698 = icmp eq i32 %i.oy, 0
  br i1 %.not698, label %bb.ex, label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  %i.oz = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.pa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oz, ptr noundef nonnull @.str.82, i32 noundef %.05291135) #14 ; 0 uses
  br label %bb.kp

bb.ey:                                            ; preds = %bb.ew, %bb.ev
  %i.pb = icmp eq i32 %.05691275, 0               ; 6 uses
  %i.pc = load i32, ptr %4, align 4
  %i.pd = icmp eq i32 %i.pc, 1
  %or.cond14 = select i1 %i.pb, i1 %i.pd, i1 false
  br i1 %or.cond14, label %bb.ez, label %bb.fd

bb.ez:                                            ; preds = %bb.ey
  %i.pe = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !56
  %i.pg = icmp sgt i32 %i.pf, 0
  %i.ph = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.pi = load float, ptr %i.ph, align 4
  %i.pj = fcmp ogt float %i.pi, 0.000000e+00
  %or.cond17 = select i1 %i.pg, i1 true, i1 %i.pj
  br i1 %or.cond17, label %bb.fa, label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  %i.pk = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite699 = call i64 @fwrite(ptr nonnull @.str.83, i64 101, i64 1, ptr %i.pk) #12 ; 0 uses
  br label %bb.fb

bb.fb:                                            ; preds = %bb.ez, %bb.fa
  %i.pl = getelementptr inbounds nuw i8, ptr %4, i64 76
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !72
  %i.pn = icmp sgt i32 %i.pm, 0
  br i1 %i.pn, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %bb.fb
  %i.po = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite700 = call i64 @fwrite(ptr nonnull @.str.84, i64 84, i64 1, ptr %i.po) #12 ; 0 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fb, %bb.fc, %bb.ey
  %i.pp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !56
  %i.pr = icmp sgt i32 %i.pq, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.pt = load float, ptr %i.ps, align 4
  %i.pu = fcmp ogt float %i.pt, 0.000000e+00
  %or.cond20 = select i1 %i.pr, i1 true, i1 %i.pu
  %i.pv = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  %i.pw = load i32, ptr %i.pv, align 4
  %i.px = icmp eq i32 %i.pw, 1
  %or.cond59 = select i1 %or.cond20, i1 %i.px, i1 false
  br i1 %or.cond59, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  store i32 6, ptr %i.pv, align 4, !tbaa !67
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.py = call i32 @WebPValidateConfig(ptr noundef nonnull %4) #11
  %.not701 = icmp eq i32 %i.py, 0
  br i1 %.not701, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %bb.ff
  %i.pz = load ptr, ptr @stderr, align 8, !tbaa !11
  %fwrite702 = call i64 @fwrite(ptr nonnull @.str.85, i64 30, i64 1, ptr %i.pz) #12 ; 0 uses
  br label %bb.kp

bb.fh:                                            ; preds = %bb.ff
  %i.qa = load i32, ptr %4, align 4, !tbaa !53
  %i.qb = icmp ne i32 %i.qa, 0
  %i.qc = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.qd = load i32, ptr %i.qc, align 4
  %i.qe = icmp ne i32 %i.qd, 0
  %or.cond23 = select i1 %i.qb, i1 true, i1 %i.qe
  %i.qf = getelementptr inbounds nuw i8, ptr %4, i64 68
  %i.qg = load i32, ptr %i.qf, align 4
  %i.qh = icmp sgt i32 %i.qg, 0
  %or.cond26 = select i1 %or.cond23, i1 true, i1 %i.qh
  %i.qi = icmp ne i32 %.05531219, 0               ; 3 uses
  %or.cond28 = select i1 %or.cond26, i1 true, i1 %i.qi
  %i.qj = or i32 %.08021316, %.08071330
  %i.qk = icmp sgt i32 %i.qj, 0
  %narrow = select i1 %or.cond28, i1 true, i1 %i.qk
  %i.ql = zext i1 %narrow to i32
  store i32 %i.ql, ptr %2, align 8, !tbaa !76
  %.b619 = load i1, ptr @verbose, align 4
  br i1 %.b619, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.qm = call i32 @gettimeofday(ptr noundef nonnull %8, ptr noundef null) #11 ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.qn = icmp eq i32 %.05141093, 0
  %. = select i1 %i.qn, ptr null, ptr %7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store ptr null, ptr %i.j, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  store i64 0, ptr %i.k, align 8, !tbaa !77
  %i.qo = call i32 @ImgIoUtilReadFile(ptr noundef nonnull %.4489, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k) #11
  %.not.i = icmp eq i32 %i.qo, 0
  br i1 %.not.i, label %bb.fs, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.qp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 10 uses
  %i.qq = load i32, ptr %i.qp, align 8, !tbaa !18 ; 3 uses
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.qs = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !19 ; 3 uses
  %i.qu = icmp eq i32 %i.qt, 0
  br i1 %i.qu, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.qv = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.qw = load i64, ptr %i.k, align 8, !tbaa !77
  %i.qx = call ptr @WebPGuessImageReader(ptr noundef %i.qv, i64 noundef %i.qw) #11
  %i.qy = load ptr, ptr %i.j, align 8, !tbaa !44
  %i.qz = load i64, ptr %i.k, align 8, !tbaa !77
  %i.ra = call i32 %i.qx(ptr noundef %i.qy, i64 noundef %i.qz, ptr noundef nonnull %2, i32 noundef range(i32 0, 2) %.05651261, ptr noundef %.) #11, !inline_history !35
  br label %ReadYUV.exit.i

bb.fn:                                            ; preds = %bb.fl
  %i.rb = load ptr, ptr %i.j, align 8, !tbaa !44  ; 2 uses
  %i.rc = load i64, ptr %i.k, align 8, !tbaa !77  ; 2 uses
  %i.rd = load i32, ptr %2, align 8, !tbaa !76
  %i.re = add nsw i32 %i.qq, 1
  %i.rf = sdiv i32 %i.re, 2                       ; 5 uses
  %i.rg = add nsw i32 %i.qt, 1
  %i.rh = sdiv i32 %i.rg, 2                       ; 3 uses
  %i.ri = mul nsw i32 %i.qt, %i.qq                ; 2 uses
  %i.rj = mul nsw i32 %i.rh, %i.rf                ; 2 uses
  %i.rk = shl nsw i32 %i.rj, 1
  %i.rl = add nsw i32 %i.rk, %i.ri                ; 2 uses
  %i.rm = sext i32 %i.rl to i64
  %.not.i.i = icmp eq i64 %i.rc, %i.rm
  br i1 %.not.i.i, label %bb.fp, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.rn = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.ro = trunc i64 %i.rc to i32
end_hunk_0
