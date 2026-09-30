Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/decNumber?download=true
inline.NumInlined: 166
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 15
begin_hunk_0_@decDivideOp:bb.a
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !18
  %i.bx = sub nsw i32 %i.bu, %i.bw
  %i.by = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.l, ptr %i.bz, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.bx, ptr %i.ca, align 4, !tbaa !18
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread644.thread

bb.y:                                             ; preds = %bb.w
  %i.cb = and i8 %4, 32
  %.not583 = icmp eq i8 %i.cb, 0
  br i1 %.not583, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.ce, align 2, !tbaa !21
  store i8 %i.l, ptr %i.cc, align 4, !tbaa !17
  br label %.thread644.thread

bb.aa:                                            ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !18 ; 2 uses
  %i.ch = tail call ptr @decNumberCopy(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !18
  %i.ck = icmp slt i32 %i.cg, %i.cj
  br i1 %i.ck, label %bb.ab, label %.thread644.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.cg, ptr %i.ci, align 4, !tbaa !18
  br label %.thread644.thread

thread-pre-split:                                 ; preds = %bb.u, %bb.v
  %i.cl = phi i32 [ %i.bp, %bb.u ], [ 1, %bb.v ]  ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18 ; 7 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !18 ; 7 uses
  %i.cq = load i32, ptr %2, align 4, !tbaa !19    ; 7 uses
  %.neg663 = add i32 %i.cn, %i.cl
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = sub i32 %.neg663, %i.cr                 ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  %i.cu = zext i8 %4 to i32                       ; 4 uses
  %i.cv = icmp eq i8 %4, -128
  %or.cond = or i1 %i.cv, %i.ct
  br i1 %or.cond, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %thread-pre-split
  %i.cw = and i32 %i.cu, 32
  %.not550 = icmp eq i32 %i.cw, 0
  br i1 %.not550, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !18
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 0, ptr %i.cz, align 2, !tbaa !21
  store i8 %i.l, ptr %i.cx, align 4, !tbaa !17
  br label %.thread644.thread

bb.ae:                                            ; preds = %bb.ac
  %.not551 = icmp sgt i32 %i.cn, %i.cp
  br i1 %.not551, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.da = and i32 %i.cu, 64
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp ne i32 %i.cs, -1
  %or.cond5 = or i1 %i.db, %i.dc
  br i1 %or.cond5, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.dd, align 4, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cn, ptr %i.de, align 4, !tbaa !18
  call fastcc void @decSetCoeff(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %.ptr556, i32 noundef %i.cl, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  call fastcc void @decFinalize(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread644.thread

bb.ah:                                            ; preds = %bb.ae, %bb.af, %thread-pre-split
  %i.df = icmp slt i32 %i.d, 47
  br i1 %i.df, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dg = sext i32 %i.d to i64
  %i.dh = getelementptr i8, ptr @d2utable, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 3
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !24
  %i.dk = zext i8 %i.dj to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dl = add nuw nsw i32 %i.d, 5
  %i.dm = udiv i32 %i.dl, 3
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dn = phi i32 [ %i.dk, %bb.ai ], [ %i.dm, %bb.aj ] ; 2 uses
  %i.do = zext nneg i32 %i.dn to i64              ; 2 uses
  %i.dp = icmp samesign ugt i32 %i.dn, 17
  br i1 %i.dp, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.dq = shl nuw nsw i64 %i.do, 1
  %i.dr = tail call noalias ptr @malloc(i64 noundef %i.dq) #20 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.dt = load i32, ptr %5, align 4, !tbaa !23
  %i.du = or i32 %i.dt, 16
  store i32 %i.du, ptr %5, align 4, !tbaa !23
  br label %.thread644.thread

bb.an:                                            ; preds = %bb.al, %bb.ak
  %.0507 = phi ptr [ %i.a, %bb.ak ], [ %i.dr, %bb.al ]
  %.0505 = phi ptr [ null, %bb.ak ], [ %i.dr, %bb.al ] ; 2 uses
  %i.dv = add nsw i32 %i.cq, %i.d                 ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  %.not552 = icmp slt i32 %i.cl, %i.dv
  %spec.select = select i1 %.not552, i32 %i.dw, i32 %i.cl ; 3 uses
  %i.dx = icmp slt i32 %spec.select, 50
  br i1 %i.dx, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dy = sext i32 %spec.select to i64
  %i.dz = getelementptr inbounds i8, ptr @d2utable, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !24
  %i.eb = zext i8 %i.ea to i32
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.ec = add nuw nsw i32 %spec.select, 2
  %i.ed = udiv i32 %i.ec, 3
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ee = phi i32 [ %i.eb, %bb.ao ], [ %i.ed, %bb.ap ] ; 3 uses
  %i.ef = add nuw nsw i32 %i.ee, 2                ; 2 uses
  %.not553 = icmp sgt i8 %4, -1                   ; 6 uses
  %i.eg = add nuw nsw i32 %i.ee, 3                ; 5 uses
  %spec.select598 = select i1 %.not553, i32 %i.eg, i32 %i.ef ; 4 uses
  %i.eh = icmp samesign ugt i32 %spec.select598, 24
  br i1 %i.eh, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ei = shl nuw nsw i32 %spec.select598, 1
  %i.ej = add nuw nsw i32 %i.ei, 2
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = tail call noalias ptr @malloc(i64 noundef %i.ek) #20 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load i32, ptr %5, align 4, !tbaa !23
  %i.eo = or i32 %i.en, 16
  store i32 %i.eo, ptr %5, align 4, !tbaa !23
  br label %.thread644

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.0485 = phi ptr [ %i.b, %bb.aq ], [ %i.el, %bb.ar ] ; 29 uses
  %.0483 = phi ptr [ null, %bb.aq ], [ %i.el, %bb.ar ] ; 2 uses
  %i.ep = zext nneg i32 %spec.select598 to i64    ; 3 uses
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %.0485, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -2 ; 3 uses
  %i.es = icmp slt i32 %i.cl, 50                  ; 2 uses
  br i1 %i.es, label %bb.au, label %.thread779

.thread779:                                       ; preds = %bb.at
  %i.et = add nuw nsw i32 %i.cl, 2
  %i.eu = udiv i32 %i.et, 3
  br label %.lr.ph.preheader

bb.au:                                            ; preds = %bb.at
  %i.ev = sext i32 %i.cl to i64
  %i.ew = getelementptr inbounds i8, ptr @d2utable, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !24
  %i.ey = zext i8 %i.ex to i32
  %.not554680 = icmp eq i32 %i.cl, 0
  br i1 %.not554680, label %.preheader671, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread779, %bb.au
  %i.ez = phi i32 [ %i.eu, %.thread779 ], [ %i.ey, %bb.au ]
  %i.fa = shl nuw nsw i64 %i.ep, 1                ; 2 uses
  %i.fb = shl nuw nsw i32 %i.ez, 1
  %i.fc = zext nneg i32 %i.fb to i64              ; 3 uses
  %i.fd = sub nsw i64 %i.fa, %i.fc
  %scevgep = getelementptr i8, ptr %.0485, i64 %i.fd
  %scevgep743 = getelementptr i8, ptr %1, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %scevgep, ptr align 2 %scevgep743, i64 %i.fc, i1 false), !tbaa !21
  %i.fe = sub nsw i64 %i.fa, %i.fc
  %i.ff = getelementptr i8, ptr %.0485, i64 %i.fe
  %scevgep745.a = getelementptr i8, ptr %i.ff, i64 -2
  br label %.preheader671

.preheader671:                                    ; preds = %.lr.ph.preheader, %bb.au
  %.0445.lcssa = phi ptr [ %i.er, %bb.au ], [ %scevgep745.a, %.lr.ph.preheader ] ; 2 uses
  %.not559683 = icmp ult ptr %.0445.lcssa, %.0485
  br i1 %.not559683, label %._crit_edge, label %.lr.ph685

.lr.ph685:                                        ; preds = %.preheader671, %.lr.ph685
  %.1446684 = phi ptr [ %i.fg, %.lr.ph685 ], [ %.0445.lcssa, %.preheader671 ] ; 2 uses
  store i16 0, ptr %.1446684, align 2, !tbaa !21
  %i.fg = getelementptr inbounds i8, ptr %.1446684, i64 -2 ; 2 uses
  %.not559 = icmp ult ptr %i.fg, %.0485
  br i1 %.not559, label %._crit_edge, label %.lr.ph685, !llvm.loop !65

._crit_edge:                                      ; preds = %.lr.ph685, %.preheader671
  %i.fh = icmp slt i32 %i.cq, 50                  ; 2 uses
  br i1 %i.fh, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %._crit_edge
  %i.fi = sext i32 %i.cq to i64
  %i.fj = getelementptr inbounds i8, ptr @d2utable, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !24
  %i.fl = zext i8 %i.fk to i32
  br label %bb.ax

bb.aw:                                            ; preds = %._crit_edge
  %i.fm = add nuw nsw i32 %i.cq, 2
  %i.fn = udiv i32 %i.fm, 3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fo = phi i32 [ %i.fl, %bb.av ], [ %i.fn, %bb.aw ] ; 5 uses
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %.idx564 = zext nneg i32 %i.fp to i64           ; 2 uses
  %.add565 = add nuw nsw i64 %.idx564, 8          ; 2 uses
  %.ptr568 = getelementptr inbounds nuw i8, ptr %2, i64 %.add565
  %i.fq = load i16, ptr %.ptr568, align 2, !tbaa !21 ; 2 uses
  %i.fr = zext i16 %i.fq to i32                   ; 4 uses
  %i.fs = icmp samesign ugt i32 %i.fo, 1          ; 2 uses
  %i.ft = zext i1 %i.fs to i32
  %spec.select599 = add nuw nsw i32 %i.fr, %i.ft
  %i.fu = mul nuw nsw i32 %i.fr, 1000             ; 2 uses
  br i1 %i.fs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 %.idx564
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 6
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !21
  %i.fy = zext i16 %i.fx to i32
  %.not560 = icmp ne i32 %i.fo, 2
  %i.fz = zext i1 %.not560 to i32
  %i.ga = or disjoint i32 %i.fu, %i.fz
  %spec.select600 = add nuw nsw i32 %i.ga, %i.fy
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.0478 = phi i32 [ %i.fu, %bb.ax ], [ %spec.select600, %bb.ay ]
  %i.gb = load i16, ptr %i.er, align 2, !tbaa !21 ; 2 uses
  %i.gc = zext i16 %i.gb to i32                   ; 2 uses
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), align 4, !tbaa !23 ; 2 uses
  %.not561686 = icmp ugt i32 %i.gd, %i.gc
  br i1 %.not561686, label %.preheader670, label %.lr.ph690

.preheader670:                                    ; preds = %.lr.ph690, %bb.az
  %.0452.lcssa = phi i32 [ %i.cs, %bb.az ], [ %i.ge, %.lr.ph690 ] ; 2 uses
  %.not562693 = icmp ugt i32 %i.gd, %i.fr
  br i1 %.not562693, label %._crit_edge697, label %.lr.ph696

.lr.ph690:                                        ; preds = %bb.az, %.lr.ph690
  %.0441688 = phi ptr [ %i.gf, %.lr.ph690 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %bb.az ]
  %.0452687 = phi i32 [ %i.ge, %.lr.ph690 ], [ %i.cs, %bb.az ]
  %i.ge = add nsw i32 %.0452687, -1               ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0441688, i64 4 ; 2 uses
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !23
  %.not561 = icmp ugt i32 %i.gg, %i.gc
  br i1 %.not561, label %.preheader670, label %.lr.ph690, !llvm.loop !66

.lr.ph696:                                        ; preds = %.preheader670, %.lr.ph696
  %.1442695 = phi ptr [ %i.gi, %.lr.ph696 ], [ getelementptr inbounds nuw (i8, ptr @DECPOWERS, i64 4), %.preheader670 ]
  %.1453694 = phi i32 [ %i.gh, %.lr.ph696 ], [ %.0452.lcssa, %.preheader670 ]
  %i.gh = add nsw i32 %.1453694, 1                ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.1442695, i64 4 ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !23
  %.not562 = icmp ugt i32 %i.gj, %i.fr
  br i1 %.not562, label %._crit_edge697, label %.lr.ph696, !llvm.loop !67

._crit_edge697:                                   ; preds = %.lr.ph696, %.preheader670
  %.1453.lcssa = phi i32 [ %.0452.lcssa, %.preheader670 ], [ %i.gh, %.lr.ph696 ] ; 6 uses
  br i1 %.not553, label %bb.ba, label %bb.bh

bb.ba:                                            ; preds = %._crit_edge697
  br i1 %i.es, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gk = sext i32 %i.cl to i64
  %i.gl = getelementptr inbounds i8, ptr @d2utable, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !24
  %i.gn = zext i8 %i.gm to i32
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.go = add nuw nsw i32 %i.cl, 2
  %i.gp = udiv i32 %i.go, 3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gq = phi i32 [ %i.gn, %bb.bb ], [ %i.gp, %bb.bc ]
  %i.gr = sub nsw i32 %i.eg, %i.gq
  %i.gs = mul nsw i32 %i.gr, 3
  %i.gt = icmp slt i32 %.1453.lcssa, 0
  br i1 %i.gt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.gu = sub nsw i32 0, %.1453.lcssa
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gv = urem i32 %.1453.lcssa, 3
  %i.gw = xor i32 %i.gv, 3
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.0439 = phi i32 [ %i.gu, %bb.be ], [ %i.gw, %bb.bf ] ; 5 uses
  %i.gx = call fastcc i32 @decShiftToLeast(ptr noundef nonnull %.0485, i32 noundef %i.eg, i32 noundef %.0439) ; 0 uses
  %i.gy = add nsw i32 %.0439, %.1453.lcssa        ; 2 uses
  %i.gz = sub nsw i32 %i.gs, %.0439               ; 2 uses
  %i.ha = icmp samesign ugt i32 %.0439, 2
  br i1 %i.ha, label %.lr.ph702.preheader, label %.loopexit669

.lr.ph702.preheader:                              ; preds = %bb.bg
  %i.hb = shl nuw nsw i64 %i.ep, 1
  %i.hc = add nsw i64 %i.hb, -2
  %i.hd = call i32 @llvm.usub.sat.i32(i32 %.0439, i32 5)
  %i.he = add nuw i32 %i.hd, 2
  %i.hf = udiv i32 %i.he, 3
  %i.hg = shl nuw nsw i32 %i.hf, 1
  %i.hh = zext nneg i32 %i.hg to i64              ; 2 uses
  %i.hi = sub nsw i64 %i.hc, %i.hh
  %scevgep747 = getelementptr i8, ptr %.0485, i64 %i.hi
  %i.hj = add nuw nsw i64 %i.hh, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep747, i8 0, i64 %i.hj, i1 false), !tbaa !21
  br label %.loopexit669

bb.bh:                                            ; preds = %._crit_edge697
  %i.hk = sub nsw i32 %i.cn, %i.cp                ; 2 uses
  %i.hl = icmp ult i16 %i.gb, %i.fq
  br i1 %i.hl, label %bb.bi, label %.loopexit669

bb.bi:                                            ; preds = %bb.bh
  %i.hm = add nuw nsw i32 %i.ee, 1
  %i.hn = add nsw i32 %.1453.lcssa, -3
  br label %.loopexit669

.loopexit669:                                     ; preds = %.lr.ph702.preheader, %bb.bg, %bb.bh, %bb.bi
  %.0469 = phi i32 [ %i.hm, %bb.bi ], [ %i.ef, %bb.bh ], [ %i.eg, %bb.bg ], [ %i.eg, %.lr.ph702.preheader ]
  %.0468 = phi i32 [ 0, %bb.bi ], [ 0, %bb.bh ], [ %i.gz, %bb.bg ], [ %i.gz, %.lr.ph702.preheader ] ; 2 uses
  %.2454 = phi i32 [ %i.hn, %bb.bi ], [ %.1453.lcssa, %bb.bh ], [ %i.gy, %bb.bg ], [ %i.gy, %.lr.ph702.preheader ] ; 2 uses
  %.0451 = phi i32 [ %i.hk, %bb.bi ], [ %i.hk, %bb.bh ], [ 0, %bb.bg ], [ 0, %.lr.ph702.preheader ] ; 4 uses
  %i.ho = getelementptr inbounds nuw [2 x i8], ptr %.0507, i64 %i.do
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -2
  %i.hq = and i32 %i.cu, 80
  %.not571 = icmp eq i32 %i.hq, 0                 ; 2 uses
  %i.hr = zext nneg i32 %.0469 to i64
  %i.hs = zext nneg i32 %i.fo to i64
  %i.ht = sub i32 %.0451, %.2454
  br label %bb.bj

bb.bj:                                            ; preds = %bb.by, %.loopexit669
  %indvars.iv751 = phi i32 [ %indvars.iv.next752, %bb.by ], [ %i.ht, %.loopexit669 ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.by ], [ %i.hr, %.loopexit669 ] ; 4 uses
  %.0499 = phi ptr [ %.1500, %bb.by ], [ %i.hp, %.loopexit669 ] ; 3 uses
  %.0495 = phi i32 [ %.1496, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0486 = phi i32 [ %.3489, %bb.by ], [ 0, %.loopexit669 ] ; 3 uses
  %.0480 = phi ptr [ %.2482.lcssa, %bb.by ], [ %i.er, %.loopexit669 ]
  %.1472 = phi i32 [ %.6477, %bb.by ], [ %spec.select598, %.loopexit669 ]
  %.3455 = phi i32 [ %i.ju, %bb.by ], [ %.2454, %.loopexit669 ] ; 6 uses
  %i.hu = sub nsw i64 %indvars.iv, %i.hs          ; 2 uses
  %i.hv = getelementptr inbounds [2 x i8], ptr %.0485, i64 %i.hu ; 2 uses
  %i.hw = trunc nsw i64 %indvars.iv to i32
  %i.hx = trunc nsw i64 %i.hu to i32
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bs, %bb.bj
  %.1481 = phi ptr [ %.0480, %bb.bj ], [ %.2482.lcssa, %bb.bs ] ; 4 uses
  %.2473 = phi i32 [ %.1472, %bb.bj ], [ %.3474.lcssa, %bb.bs ] ; 2 uses
  %.0458 = phi i16 [ 0, %bb.bj ], [ %i.jc, %bb.bs ] ; 4 uses
  %i.hy = load i16, ptr %.1481, align 2, !tbaa !21 ; 2 uses
  %i.hz = icmp eq i16 %i.hy, 0
  %i.ia = icmp ugt ptr %.1481, %.0485
  %i.ib = and i1 %i.ia, %i.hz
  br i1 %i.ib, label %.lr.ph707, label %._crit_edge708

.lr.ph707:                                        ; preds = %bb.bk, %.lr.ph707
  %.3474705 = phi i32 [ %i.ic, %.lr.ph707 ], [ %.2473, %bb.bk ]
  %.2482704 = phi ptr [ %i.id, %.lr.ph707 ], [ %.1481, %bb.bk ]
  %i.ic = add nsw i32 %.3474705, -1               ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.2482704, i64 -2 ; 4 uses
end_hunk_0
