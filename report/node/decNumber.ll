inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj:bb.a
  store i8 0, ptr %i.be, align 1
  %i.bf = load i32, ptr %5, align 4
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %5, align 4
  br label %.thread624.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bi, align 4
  store i32 1, ptr %0, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bj, align 1
  %i.bk = and i8 %4, 80
  %.not549 = icmp eq i8 %i.bk, 0
  %i.bl = load i32, ptr %5, align 4               ; 2 uses
  br i1 %.not549, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = or i32 %i.bl, 128
  store i32 %i.bm, ptr %5, align 4
  br label %.thread624.thread

bb.t:                                             ; preds = %bb.r
  %i.bn = or i32 %i.bl, 2
  store i32 %i.bn, ptr %5, align 4
  %i.bo = or disjoint i8 %i.l, 64
  store i8 %i.bo, ptr %i.bh, align 4
  br label %.thread624.thread

bb.u:                                             ; preds = %bb.n, %bb.m
  %.ptr524 = getelementptr i8, ptr %1, i64 9      ; 3 uses
  %i.bp = load i8, ptr %.ptr524, align 1
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre = load i32, ptr %1, align 4               ; 3 uses
  br i1 %i.bq, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i32 %.pre, 1
  %i.bs = and i8 %i.f, 112
  %i.bt = icmp eq i8 %i.bs, 0
  %or.cond645 = and i1 %i.bt, %i.br
  br i1 %or.cond645, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %.not547 = icmp sgt i8 %4, -1
  br i1 %.not547, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.c, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = sub nsw i32 %i.bv, %i.bx
  %i.bz = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.l, ptr %i.ca, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.by, ptr %i.cb, align 4
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread624.thread

bb.y:                                             ; preds = %bb.w
  %i.cc = and i8 %4, 32
  %.not548 = icmp eq i8 %i.cc, 0
  br i1 %.not548, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ce, align 4
  store i32 1, ptr %0, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cf, align 1
  store i8 %i.l, ptr %i.cd, align 4
  br label %.thread624.thread

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ch = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.ci = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = icmp slt i32 %i.ch, %i.ck
  br i1 %i.cl, label %bb.ab, label %.thread624.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ch, ptr %i.cj, align 4
  br label %.thread624.thread

bb.ac:                                            ; preds = %bb.v, %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  %i.cq = load i32, ptr %2, align 4               ; 2 uses
  %.neg651 = add i32 %.pre, %i.cn
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = sub i32 %.neg651, %i.cr                 ; 4 uses
  %i.ct = icmp sgt i32 %i.cs, -1
  %i.cu = zext i8 %4 to i32                       ; 4 uses
  %i.cv = icmp eq i8 %4, -128
  %or.cond = or i1 %i.cv, %i.ct
  br i1 %or.cond, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cw = and i32 %i.cu, 32
  %.not518 = icmp eq i32 %i.cw, 0
  br i1 %.not518, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.cy, align 4
  store i32 1, ptr %0, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cz, align 1
  store i8 %i.l, ptr %i.cx, align 4
  br label %.thread624.thread

bb.af:                                            ; preds = %bb.ad
  %.not519 = icmp sgt i32 %i.cn, %i.cp
  br i1 %.not519, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = and i32 %i.cu, 64
  %i.db = icmp ne i32 %i.da, 0
  %i.dc = icmp ne i32 %i.cs, -1
  %or.cond5 = or i1 %i.db, %i.dc
  br i1 %or.cond5, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 0, ptr %i.c, align 4
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.dd, align 4
  %i.de = load i32, ptr %i.cm, align 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.de, ptr %i.df, align 4
  %i.dg = load i32, ptr %1, align 4
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %.ptr524, i32 noundef %i.dg, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread624.thread

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  %i.dh = add nsw i32 %i.d, 1                     ; 2 uses
  %i.di = icmp slt i32 %i.d, 49
  br i1 %i.di, label %bb.aj, label %.thread

.thread:                                          ; preds = %bb.ai
  %i.dj = zext nneg i32 %i.dh to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.dk = sext i32 %i.dh to i64
  %i.dl = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = zext i8 %i.dm to i64                    ; 2 uses
  %i.do = icmp sgt i32 %i.d, 46
  br i1 %i.do, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.thread, %bb.aj
  %i.dp = phi i64 [ %i.dj, %.thread ], [ %i.dn, %bb.aj ] ; 2 uses
  %i.dq = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.dp) #16 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %._crit_edge733

._crit_edge733:                                   ; preds = %bb.ak
  %.pre734 = load i32, ptr %2, align 4
  %.pre735 = load i32, ptr %1, align 4
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ds = load i32, ptr %5, align 4
  %i.dt = or i32 %i.ds, 16
  store i32 %i.dt, ptr %5, align 4
  br label %.thread624.thread

bb.am:                                            ; preds = %._crit_edge733, %bb.aj
  %i.du = phi i32 [ %.pre, %bb.aj ], [ %.pre735, %._crit_edge733 ] ; 3 uses
  %i.dv = phi i32 [ %i.cq, %bb.aj ], [ %.pre734, %._crit_edge733 ]
  %i.dw = phi i64 [ %i.dn, %bb.aj ], [ %i.dp, %._crit_edge733 ]
  %.0403 = phi ptr [ null, %bb.aj ], [ %i.dq, %._crit_edge733 ] ; 2 uses
  %.0402 = phi ptr [ %i.a, %bb.aj ], [ %i.dq, %._crit_edge733 ]
  %i.dx = add nsw i32 %i.dv, %i.d                 ; 2 uses
  %i.dy = add nsw i32 %i.dx, -1
  %.not520 = icmp slt i32 %i.du, %i.dx
  %spec.select = select i1 %.not520, i32 %i.dy, i32 %i.du ; 3 uses
  %i.dz = icmp slt i32 %spec.select, 50
  br i1 %i.dz, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ea = sext i32 %spec.select to i64
  %i.eb = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1
  %i.ed = zext i8 %i.ec to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.ee = phi i32 [ %i.ed, %bb.an ], [ %spec.select, %bb.am ] ; 4 uses
  %i.ef = add nuw nsw i32 %i.ee, 2                ; 2 uses
  %.not521 = icmp sgt i8 %4, -1                   ; 6 uses
  %i.eg = add nuw nsw i32 %i.ee, 3                ; 8 uses
  %spec.select563 = select i1 %.not521, i32 %i.eg, i32 %i.ef ; 7 uses
  %i.eh = icmp samesign ugt i32 %spec.select563, 72
  br i1 %i.eh, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.ei = add nuw nsw i32 %spec.select563, 1
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.ej) #16 ; 3 uses
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.aq, label %._crit_edge736

._crit_edge736:                                   ; preds = %bb.ap
  %.pre737 = load i32, ptr %1, align 4
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i32, ptr %5, align 4
  %i.en = or i32 %i.em, 16
  store i32 %i.en, ptr %5, align 4
  br label %.thread624

bb.ar:                                            ; preds = %._crit_edge736, %bb.ao
  %i.eo = phi i32 [ %i.du, %bb.ao ], [ %.pre737, %._crit_edge736 ] ; 6 uses
  %.0420 = phi ptr [ null, %bb.ao ], [ %i.ek, %._crit_edge736 ] ; 2 uses
  %.0417 = phi ptr [ %i.b, %bb.ao ], [ %i.ek, %._crit_edge736 ] ; 44 uses
  %.0417728 = ptrtoaddr ptr %.0417 to i64         ; 4 uses
  %i.ep = zext nneg i32 %spec.select563 to i64    ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.ep
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 -1 ; 3 uses
  %i.es = icmp slt i32 %i.eo, 50                  ; 2 uses
  br i1 %i.es, label %bb.as, label %.lr.ph.preheader

bb.as:                                            ; preds = %bb.ar
  %i.et = sext i32 %i.eo to i64
  %i.eu = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1
  %i.ew = zext i8 %i.ev to i32
  %.not522672 = icmp eq i32 %i.eo, 0
  br i1 %.not522672, label %.preheader663, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ar, %bb.as
  %i.ex = phi i32 [ %i.ew, %bb.as ], [ %i.eo, %bb.ar ]
  %i.ey = zext nneg i32 %i.ex to i64              ; 3 uses
  %i.ez = sub nsw i64 %i.ep, %i.ey
  %scevgep = getelementptr i8, ptr %.0417, i64 %i.ez
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 1 %.ptr524, i64 %i.ey, i1 false)
  %i.fa = xor i64 %i.ey, -1
  %i.fb = getelementptr i8, ptr %.0417, i64 %i.fa
  %scevgep726 = getelementptr i8, ptr %i.fb, i64 %i.ep
  br label %.preheader663

.preheader663:                                    ; preds = %.lr.ph.preheader, %bb.as
  %.0441.lcssa = phi ptr [ %i.er, %bb.as ], [ %scevgep726, %.lr.ph.preheader ] ; 3 uses
  %.not527675 = icmp ult ptr %.0441.lcssa, %.0417
  br i1 %.not527675, label %._crit_edge, label %.lr.ph677.preheader

.lr.ph677.preheader:                              ; preds = %.preheader663
  %.0441.lcssa727 = ptrtoaddr ptr %.0441.lcssa to i64 ; 3 uses
  %i.fc = add i64 %.0441.lcssa727, -1
  %i.fd = add i64 %.0417728, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.fc, i64 %i.fd) ; 2 uses
  %i.fe = add i64 %umin, 1
  %i.ff = sub i64 %i.fe, %.0441.lcssa727
  %scevgep729 = getelementptr i8, ptr %.0441.lcssa, i64 %i.ff
  %i.fg = sub i64 %.0441.lcssa727, %umin
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep729, i8 0, i64 %i.fg, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph677.preheader, %.preheader663
  %i.fh = load i32, ptr %2, align 4               ; 3 uses
  %i.fi = icmp slt i32 %i.fh, 50
  br i1 %i.fi, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge
  %i.fj = sext i32 %i.fh to i64
  %i.fk = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = zext i8 %i.fl to i32
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %bb.at
  %i.fn = phi i32 [ %i.fm, %bb.at ], [ %i.fh, %._crit_edge ] ; 5 uses
  %narrow536 = add nuw i32 %i.fn, 9
  %.add = zext i32 %narrow536 to i64              ; 2 uses
  %.add532 = add nsw i64 %.add, -1                ; 2 uses
  %.ptr535 = getelementptr inbounds nuw i8, ptr %2, i64 %.add532
  %i.fo = load i8, ptr %.ptr535, align 1          ; 3 uses
  %i.fp = zext i8 %i.fo to i32                    ; 3 uses
  %i.fq = icmp samesign ugt i32 %i.fn, 1          ; 2 uses
  %i.fr = zext i1 %i.fq to i32
  %spec.select564 = add nuw nsw i32 %i.fp, %i.fr
  %i.fs = mul nuw nsw i32 %i.fp, 10               ; 2 uses
  br i1 %i.fq, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.ptr534 = getelementptr inbounds nuw i8, ptr %2, i64 %.add
  %i.ft = getelementptr inbounds i8, ptr %.ptr534, i64 -2
  %i.fu = load i8, ptr %i.ft, align 1
  %i.fv = zext i8 %i.fu to i32
  %.not528 = icmp ne i32 %i.fn, 2
  %i.fw = zext i1 %.not528 to i32
  %i.fx = or disjoint i32 %i.fs, %i.fw
  %spec.select565 = add nuw nsw i32 %i.fx, %i.fv
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0471 = phi i32 [ %i.fs, %bb.au ], [ %spec.select565, %bb.av ]
  %i.fy = load i8, ptr %i.er, align 1             ; 3 uses
  %i.fz = zext i8 %i.fy to i32
  %.not529678 = icmp ult i8 %i.fy, 10
  br i1 %.not529678, label %.preheader662, label %.lr.ph682

.preheader662:                                    ; preds = %.lr.ph682, %bb.aw
  %.0450.lcssa = phi i32 [ %i.cs, %bb.aw ], [ %i.ga, %.lr.ph682 ] ; 2 uses
  %.not530685 = icmp ult i8 %i.fo, 10
  br i1 %.not530685, label %._crit_edge689, label %.lr.ph688

.lr.ph682:                                        ; preds = %bb.aw, %.lr.ph682
  %.0437680 = phi ptr [ %i.gb, %.lr.ph682 ], [ getelementptr inbounds nuw (i8, ptr @_ZL9DECPOWERS, i64 4), %bb.aw ]
  %.0450679 = phi i32 [ %i.ga, %.lr.ph682 ], [ %i.cs, %bb.aw ]
  %i.ga = add nsw i32 %.0450679, -1               ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0437680, i64 4 ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4
  %.not529 = icmp ugt i32 %i.gc, %i.fz
  br i1 %.not529, label %.preheader662, label %.lr.ph682, !llvm.loop !52

.lr.ph688:                                        ; preds = %.preheader662, %.lr.ph688
  %.1438687 = phi ptr [ %i.ge, %.lr.ph688 ], [ getelementptr inbounds nuw (i8, ptr @_ZL9DECPOWERS, i64 4), %.preheader662 ]
  %.1451686 = phi i32 [ %i.gd, %.lr.ph688 ], [ %.0450.lcssa, %.preheader662 ]
  %i.gd = add nsw i32 %.1451686, 1                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.1438687, i64 4 ; 2 uses
  %i.gf = load i32, ptr %i.ge, align 4
  %.not530 = icmp ugt i32 %i.gf, %i.fp
  br i1 %.not530, label %._crit_edge689, label %.lr.ph688, !llvm.loop !53

._crit_edge689:                                   ; preds = %.lr.ph688, %.preheader662
  %.1451.lcssa = phi i32 [ %.0450.lcssa, %.preheader662 ], [ %i.gd, %.lr.ph688 ] ; 7 uses
  br i1 %.not521, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %._crit_edge689
  br i1 %i.es, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gg = sext i32 %i.eo to i64
  %i.gh = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.gg
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = zext i8 %i.gi to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gk = phi i32 [ %i.gj, %bb.ay ], [ %i.eo, %bb.ax ] ; 3 uses
  %i.gl = icmp slt i32 %.1451.lcssa, 0
  %i.gm = sub nsw i32 0, %.1451.lcssa             ; 2 uses
  %.0432 = select i1 %i.gl, i32 %i.gm, i32 1      ; 13 uses
  %i.gn = icmp eq i32 %.0432, 0
  br i1 %i.gn, label %_ZL15decShiftToLeastPhii.exit.thread766, label %bb.ba

_ZL15decShiftToLeastPhii.exit.thread766:          ; preds = %bb.az
  %i.go = sub nsw i32 %i.eg, %i.gk
  br label %.loopexit660

bb.ba:                                            ; preds = %bb.az
  %i.gp = icmp eq i32 %.0432, %i.eg
  br i1 %i.gp, label %_ZL15decShiftToLeastPhii.exit.thread, label %bb.bb

_ZL15decShiftToLeastPhii.exit.thread:             ; preds = %bb.ba
  store i8 0, ptr %.0417, align 1
  %i.gq = add nsw i32 %.0432, %.1451.lcssa
  %i.gr = add nuw i32 %.0432, %i.gk
  %i.gs = sub i32 %i.eg, %i.gr
  br label %.lr.ph693.preheader

bb.bb:                                            ; preds = %bb.ba
  %i.gt = icmp slt i32 %.0432, 50
  br i1 %i.gt, label %bb.bc, label %.thread71.i

bb.bc:                                            ; preds = %bb.bb
  %i.gu = sext i32 %.0432 to i64
  %i.gv = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1
  %i.gx = zext i8 %i.gw to i32                    ; 2 uses
  %i.gy = add nsw i32 %i.gx, -1                   ; 2 uses
  %i.gz = sub nsw i32 %.0432, %i.gy               ; 7 uses
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %.thread71.i, label %bb.bd

.thread71.i:                                      ; preds = %bb.bc, %bb.bb
  %i.hb = phi i32 [ %i.gm, %bb.bb ], [ %i.gx, %bb.bc ] ; 2 uses
  %6 = zext nneg i32 %i.eg to i64
  %7 = getelementptr inbounds nuw i8, ptr %.0417, i64 %6
  %i.hc = icmp slt i32 %i.hb, %i.eg
  br i1 %i.hc, label %iter.check, label %_ZL15decShiftToLeastPhii.exit

iter.check:                                       ; preds = %.thread71.i
  %i.hd = zext i32 %i.hb to i64                   ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.hd ; 5 uses
  %8 = zext nneg i32 %i.ee to i64
  %9 = add i64 %.0417728, %8
  %i.hf = add i64 %9, 3
  %i.hg = add i64 %.0417728, %i.hd
  %i.hh = add i64 %i.hg, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.hf, i64 %i.hh)
  %i.hi = add i64 %.0417728, %i.hd
  %i.hj = sub i64 %umax, %i.hi                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.hj, 4
  br i1 %min.iters.check, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check790 = icmp ult i64 %i.hj, 32
  br i1 %min.iters.check790, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.hj, 28
  %n.vec = and i64 %i.hj, -32                     ; 5 uses
  %i.hk = getelementptr i8, ptr %.0417, i64 %n.vec
  %i.hl = getelementptr i8, ptr %i.he, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0417, i64 %index ; 2 uses
  %next.gep791 = getelementptr i8, ptr %i.he, i64 %index ; 2 uses
  %i.hm = getelementptr i8, ptr %next.gep791, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep791, align 1
  %wide.load792 = load <16 x i8>, ptr %i.hm, align 1
  %i.hn = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load792, ptr %i.hn, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ho = icmp eq i64 %index.next, %n.vec
  br i1 %i.ho, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hj, %n.vec
  br i1 %cmp.n, label %_ZL15decShiftToLeastPhii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.i.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec795 = and i64 %i.hj, -4                   ; 4 uses
  %i.hp = getelementptr i8, ptr %.0417, i64 %n.vec795
  %i.hq = getelementptr i8, ptr %i.he, i64 %n.vec795
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index796 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next800, %vec.epilog.vector.body ] ; 3 uses
  %next.gep797 = getelementptr i8, ptr %.0417, i64 %index796
  %next.gep798 = getelementptr i8, ptr %i.he, i64 %index796
  %wide.load799 = load <4 x i8>, ptr %next.gep798, align 1
  store <4 x i8> %wide.load799, ptr %next.gep797, align 1
  %index.next800 = add nuw i64 %index796, 4       ; 2 uses
  %i.hr = icmp eq i64 %index.next800, %n.vec795
  br i1 %i.hr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !55

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n801 = icmp eq i64 %i.hj, %n.vec795
  br i1 %cmp.n801, label %_ZL15decShiftToLeastPhii.exit, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06178.i.ph = phi ptr [ %.0417, %iter.check ], [ %i.hk, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ]
  %.06277.i.ph = phi ptr [ %i.he, %iter.check ], [ %i.hl, %vec.epilog.iter.check ], [ %i.hq, %vec.epilog.middle.block ]
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i
  %.06178.i = phi ptr [ %i.ht, %.lr.ph79.i ], [ %.06178.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.06277.i = phi ptr [ %i.hu, %.lr.ph79.i ], [ %.06277.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %i.hs = load i8, ptr %.06277.i, align 1
  store i8 %i.hs, ptr %.06178.i, align 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.06178.i, i64 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.06277.i, i64 1 ; 2 uses
  %i.hv = icmp ult ptr %i.hu, %7
  br i1 %i.hv, label %.lr.ph79.i, label %_ZL15decShiftToLeastPhii.exit, !llvm.loop !56

bb.bd:                                            ; preds = %bb.bc
  %i.hw = sext i32 %i.gy to i64
  %i.hx = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.hw
  %i.hy = load i8, ptr %i.hx, align 1
  %i.hz = zext i8 %i.hy to i64
  %i.ia = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.hz ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1
  %i.ic = zext i8 %i.ib to i32
  %i.id = lshr i32 %i.ic, %i.gz
  %i.ie = sext i32 %i.gz to i64                   ; 2 uses
  %i.if = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.ie
  %i.ig = load i32, ptr %i.if, align 4            ; 2 uses
  %i.ih = mul i32 %i.id, %i.ig
  %i.ii = lshr i32 %i.ih, 17                      ; 2 uses
  %.neg = add i32 %i.gz, -1
  %i.ij = sub nsw i32 1, %i.gz                    ; 2 uses
  %i.ik = trunc i32 %i.ii to i8
  store i8 %i.ik, ptr %.0417, align 1
  %.neg653 = sub i32 %i.eg, %.0432
  %i.il = add i32 %.neg653, %.neg                 ; 2 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %_ZL15decShiftToLeastPhii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd
  %i.in = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ie
  %i.io = load i32, ptr %i.in, align 4
  %i.ip = sext i32 %i.ij to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i
  %i.is = phi i32 [ %i.il, %.lr.ph.i ], [ %i.ji, %bb.bf ]
  %.05974.i = phi i32 [ %i.ii, %.lr.ph.i ], [ %i.iy, %bb.bf ]
  %.173.i = phi ptr [ %.0417, %.lr.ph.i ], [ %i.jg, %bb.bf ] ; 2 uses
  %.16372.i = phi ptr [ %i.ia, %.lr.ph.i ], [ %i.it, %bb.bf ]
  %i.it = getelementptr inbounds nuw i8, ptr %.16372.i, i64 1 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = zext i8 %i.iu to i32                    ; 2 uses
  %i.iw = lshr i32 %i.iv, %i.gz
  %i.ix = mul i32 %i.iw, %i.ig
  %i.iy = lshr i32 %i.ix, 17                      ; 3 uses
  %i.iz = mul i32 %i.iy, %i.io
  %i.ja = sub i32 %i.iv, %i.iz
  %i.jb = mul i32 %i.ja, %i.ir
  %i.jc = add i32 %i.jb, %.05974.i
  %i.jd = trunc i32 %i.jc to i8
  store i8 %i.jd, ptr %.173.i, align 1
  %i.je = sub nsw i32 %i.is, %i.gz                ; 2 uses
  %i.jf = icmp slt i32 %i.je, 1
  br i1 %i.jf, label %_ZL15decShiftToLeastPhii.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jg = getelementptr inbounds nuw i8, ptr %.173.i, i64 1 ; 2 uses
  %i.jh = trunc i32 %i.iy to i8
  store i8 %i.jh, ptr %i.jg, align 1
  %i.ji = sub nsw i32 %i.je, %i.ij                ; 2 uses
  %i.jj = icmp slt i32 %i.ji, 1
  br i1 %i.jj, label %_ZL15decShiftToLeastPhii.exit, label %bb.be, !llvm.loop !57

_ZL15decShiftToLeastPhii.exit:                    ; preds = %bb.be, %bb.bf, %.lr.ph79.i, %middle.block, %vec.epilog.middle.block, %bb.bd, %.thread71.i
  %i.jk = add nsw i32 %.0432, %.1451.lcssa        ; 2 uses
  %i.jl = add i32 %.0432, %i.gk
  %i.jm = sub i32 %spec.select563, %i.jl          ; 2 uses
  %i.jn = icmp sgt i32 %.0432, 0
  br i1 %i.jn, label %.lr.ph693.preheader, label %.loopexit660

.lr.ph693.preheader:                              ; preds = %_ZL15decShiftToLeastPhii.exit.thread, %_ZL15decShiftToLeastPhii.exit
  %i.jo = phi i32 [ %i.gs, %_ZL15decShiftToLeastPhii.exit.thread ], [ %i.jm, %_ZL15decShiftToLeastPhii.exit ]
  %i.jp = phi i32 [ %i.gq, %_ZL15decShiftToLeastPhii.exit.thread ], [ %i.jk, %_ZL15decShiftToLeastPhii.exit ]
  %i.jq = sub nsw i32 0, %.0432
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr i8, ptr %.0417, i64 %i.jr
  %scevgep730 = getelementptr i8, ptr %i.js, i64 %i.ep
  %i.jt = zext nneg i32 %.0432 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep730, i8 0, i64 %i.jt, i1 false)
  br label %.loopexit660

bb.bg:                                            ; preds = %._crit_edge689
  %i.ju = load i32, ptr %i.cm, align 4
  %i.jv = load i32, ptr %i.co, align 4
  %i.jw = sub nsw i32 %i.ju, %i.jv                ; 2 uses
  %i.jx = icmp ult i8 %i.fy, %i.fo
  br i1 %i.jx, label %bb.bh, label %.loopexit660

bb.bh:                                            ; preds = %bb.bg
  %i.jy = add nuw nsw i32 %i.ee, 1
  %i.jz = add nsw i32 %.1451.lcssa, -1
  br label %.loopexit660

.loopexit660:                                     ; preds = %_ZL15decShiftToLeastPhii.exit.thread766, %.lr.ph693.preheader, %_ZL15decShiftToLeastPhii.exit, %bb.bg, %bb.bh
  %.0469 = phi i32 [ %i.jy, %bb.bh ], [ %i.ef, %bb.bg ], [ %spec.select563, %_ZL15decShiftToLeastPhii.exit ], [ %spec.select563, %.lr.ph693.preheader ], [ %i.eg, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %.0468 = phi i32 [ 0, %bb.bh ], [ 0, %bb.bg ], [ %i.jm, %_ZL15decShiftToLeastPhii.exit ], [ %i.jo, %.lr.ph693.preheader ], [ %i.go, %_ZL15decShiftToLeastPhii.exit.thread766 ] ; 2 uses
  %.2452 = phi i32 [ %i.jz, %bb.bh ], [ %.1451.lcssa, %bb.bg ], [ %i.jk, %_ZL15decShiftToLeastPhii.exit ], [ %i.jp, %.lr.ph693.preheader ], [ %.1451.lcssa, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %.0449 = phi i32 [ %i.jw, %bb.bh ], [ %i.jw, %bb.bg ], [ 0, %_ZL15decShiftToLeastPhii.exit ], [ 0, %.lr.ph693.preheader ], [ 0, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %i.ka = getelementptr inbounds nuw i8, ptr %.0402, i64 %i.dw
  %i.kb = getelementptr inbounds i8, ptr %i.ka, i64 -1
  %i.kc = and i32 %i.cu, 80
  %.not539 = icmp eq i32 %i.kc, 0                 ; 2 uses
  %i.kd = zext nneg i32 %.0469 to i64
  %i.ke = zext nneg i32 %i.fn to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bx, %.loopexit660
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bx ], [ %i.kd, %.loopexit660 ] ; 4 uses
  %.1473 = phi i32 [ %.6478, %bb.bx ], [ %spec.select563, %.loopexit660 ]
  %.3453 = phi i32 [ %i.mf, %bb.bx ], [ %.2452, %.loopexit660 ] ; 6 uses
  %.0434 = phi ptr [ %.2436.lcssa, %bb.bx ], [ %i.er, %.loopexit660 ]
  %.0411 = phi i32 [ %.3414, %bb.bx ], [ 0, %.loopexit660 ] ; 3 uses
  %.0406 = phi i32 [ %.1407, %bb.bx ], [ 0, %.loopexit660 ] ; 3 uses
  %.0404 = phi ptr [ %.1405, %bb.bx ], [ %i.kb, %.loopexit660 ] ; 3 uses
  %i.kf = sub nsw i64 %indvars.iv, %i.ke          ; 2 uses
  %i.kg = getelementptr inbounds i8, ptr %.0417, i64 %i.kf ; 2 uses
  %i.kh = trunc nsw i64 %indvars.iv to i32
  %i.ki = trunc nsw i64 %i.kf to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.br, %bb.bi
  %.2474 = phi i32 [ %.1473, %bb.bi ], [ %.3475.lcssa, %bb.br ] ; 2 uses
  %.0458 = phi i8 [ 0, %bb.bi ], [ %i.ln, %bb.br ] ; 4 uses
  %.1435 = phi ptr [ %.0434, %bb.bi ], [ %.2436.lcssa, %bb.br ] ; 4 uses
  %i.kj = load i8, ptr %.1435, align 1            ; 2 uses
  %i.kk = icmp eq i8 %i.kj, 0
  %i.kl = icmp ugt ptr %.1435, %.0417
  %i.km = and i1 %i.kl, %i.kk
  br i1 %i.km, label %.lr.ph698, label %._crit_edge699

.lr.ph698:                                        ; preds = %bb.bj, %.lr.ph698
  %.2436696 = phi ptr [ %i.ko, %.lr.ph698 ], [ %.1435, %bb.bj ]
  %.3475695 = phi i32 [ %i.kn, %.lr.ph698 ], [ %.2474, %bb.bj ]
  %i.kn = add nsw i32 %.3475695, -1               ; 2 uses
  %i.ko = getelementptr inbounds i8, ptr %.2436696, i64 -1 ; 4 uses
  %i.kp = load i8, ptr %i.ko, align 1             ; 2 uses
  %i.kq = icmp eq i8 %i.kp, 0
  %i.kr = icmp ugt ptr %i.ko, %.0417
  %i.ks = and i1 %i.kr, %i.kq
  br i1 %i.ks, label %.lr.ph698, label %._crit_edge699, !llvm.loop !58

._crit_edge699:                                   ; preds = %.lr.ph698, %bb.bj
  %.lcssa694 = phi i8 [ %i.kj, %bb.bj ], [ %i.kp, %.lr.ph698 ]
  %.3475.lcssa = phi i32 [ %.2474, %bb.bj ], [ %i.kn, %.lr.ph698 ] ; 6 uses
  %.2436.lcssa = phi ptr [ %.1435, %bb.bj ], [ %i.ko, %.lr.ph698 ] ; 4 uses
  %i.kt = zext i8 %.lcssa694 to i32
  %i.ku = sext i32 %.3475.lcssa to i64
  %i.kv = icmp sgt i64 %indvars.iv, %i.ku
  br i1 %i.kv, label %.thread590, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge699
  %i.kw = icmp eq i32 %.3475.lcssa, %i.kh
  br i1 %i.kw, label %.preheader658, label %bb.br

.preheader658:                                    ; preds = %bb.bk, %bb.bn
  %.0430 = phi ptr [ %i.lc, %bb.bn ], [ %.2436.lcssa, %bb.bk ] ; 3 uses
  %.0429.idx = phi i64 [ %.0429.add, %bb.bn ], [ %.add532, %bb.bk ] ; 3 uses
  %.not531 = icmp slt i64 %.0429.idx, 9
  br i1 %.not531, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.preheader658
  %.0429.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.0429.idx
  %i.kx = load i8, ptr %.0429.ptr, align 1
  %i.ky = zext i8 %i.kx to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.preheader658
  %.0428 = phi i32 [ %i.ky, %bb.bl ], [ 0, %.preheader658 ] ; 3 uses
  %i.kz = load i8, ptr %.0430, align 1
  %i.la = zext i8 %i.kz to i32                    ; 3 uses
  %.not537 = icmp ne i32 %.0428, %i.la
  %i.lb = icmp eq ptr %.0430, %.0417
  %or.cond566 = select i1 %.not537, i1 true, i1 %i.lb
  br i1 %or.cond566, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lc = getelementptr inbounds i8, ptr %.0430, i64 -1
  %.0429.add = add nsw i64 %.0429.idx, -1
  br label %.preheader658, !llvm.loop !59

bb.bo:                                            ; preds = %bb.bm
  %i.ld = icmp samesign ugt i32 %.0428, %i.la
  br i1 %i.ld, label %.thread590, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.le = icmp eq i32 %.0428, %i.la
  br i1 %i.le, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.lf = add i8 %.0458, 1
  store i8 0, ptr %.0417, align 1
  br label %.thread590

bb.br:                                            ; preds = %bb.bk, %bb.bp
  %.0471.sink = phi i32 [ %.0471, %bb.bp ], [ %spec.select564, %bb.bk ]
  %i.lg = mul nuw nsw i32 %i.kt, 10
  %i.lh = getelementptr inbounds i8, ptr %.2436.lcssa, i64 -1
  %i.li = load i8, ptr %i.lh, align 1
  %i.lj = zext i8 %i.li to i32
  %i.lk = add nuw nsw i32 %i.lg, %i.lj
  %i.ll = udiv i32 %i.lk, %.0471.sink
end_hunk_0
begin_hunk_1_@uprv_decNumberRotate_78:bb.a
._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.q
  %i.do = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.ck, %bb.q ] ; 5 uses
  store i32 %i.do, ptr %0, align 4
  %i.dp = icmp slt i32 %i.do, 50
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.du = phi i32 [ %i.dt, %bb.r ], [ %i.do, %._crit_edge ]
  %.neg154 = add i32 %i.do, 1
  %i.dv = sub i32 %.neg154, %i.du                 ; 3 uses
  %i.dw = load i32, ptr %3, align 4               ; 2 uses
  %i.dx = sub nsw i32 %i.dw, %.0                  ; 3 uses
  %.not122 = icmp eq i32 %i.dw, %.0
  br i1 %.not122, label %_ZL10decReversePhS_.exit136, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not123 = icmp eq i32 %i.dv, 1
  br i1 %.not123, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dy = sub i32 1, %i.dv                        ; 2 uses
  %i.dz = load i8, ptr %i.co, align 1
  %i.ea = zext i8 %i.dz to i32
  %i.eb = zext i32 %i.dy to i64
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = urem i32 %i.ea, %i.ed
  %i.ef = tail call fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef nonnull %i.co, i32 noundef %i.dx, i32 noundef %i.dy) ; 0 uses
  %i.eg = load i8, ptr %i.dg, align 1
  %i.eh = zext i32 %i.dv to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = mul i32 %i.ej, %i.ee
  %i.el = trunc i32 %i.ek to i8
  %i.em = add i8 %i.eg, %i.el
  store i8 %i.em, ptr %i.dg, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.en = zext i32 %i.dx to i64                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.en ; 2 uses
  %i.ep = icmp sgt i64 %i.df, %i.en
  br i1 %i.ep, label %.lr.ph.i126, label %_ZL10decReversePhS_.exit

.lr.ph.i126:                                      ; preds = %bb.v, %.lr.ph.i126
  %.010.i = phi ptr [ %i.es, %.lr.ph.i126 ], [ %i.eo, %bb.v ] ; 3 uses
  %.089.i = phi ptr [ %i.et, %.lr.ph.i126 ], [ %i.dg, %bb.v ] ; 3 uses
  %i.eq = load i8, ptr %.010.i, align 1
  %i.er = load i8, ptr %.089.i, align 1
  store i8 %i.er, ptr %.010.i, align 1
  store i8 %i.eq, ptr %.089.i, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %.089.i, i64 -1 ; 2 uses
  %i.eu = icmp ult ptr %i.es, %i.et
  br i1 %i.eu, label %.lr.ph.i126, label %_ZL10decReversePhS_.exit, !llvm.loop !130

_ZL10decReversePhS_.exit:                         ; preds = %.lr.ph.i126, %bb.v
  %i.ev = icmp ugt i32 %i.dx, 1
  br i1 %i.ev, label %.lr.ph.i128.preheader, label %_ZL10decReversePhS_.exit131

.lr.ph.i128.preheader:                            ; preds = %_ZL10decReversePhS_.exit
  %i.ew = getelementptr inbounds i8, ptr %i.eo, i64 -1
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %.010.i129 = phi ptr [ %i.ez, %.lr.ph.i128 ], [ %i.co, %.lr.ph.i128.preheader ] ; 3 uses
  %.089.i130 = phi ptr [ %i.fa, %.lr.ph.i128 ], [ %i.ew, %.lr.ph.i128.preheader ] ; 3 uses
  %i.ex = load i8, ptr %.010.i129, align 1
  %i.ey = load i8, ptr %.089.i130, align 1
  store i8 %i.ey, ptr %.010.i129, align 1
  store i8 %i.ex, ptr %.089.i130, align 1
  %i.ez = getelementptr inbounds nuw i8, ptr %.010.i129, i64 1 ; 2 uses
  %i.fa = getelementptr inbounds i8, ptr %.089.i130, i64 -1 ; 2 uses
  %i.fb = icmp ult ptr %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph.i128, label %_ZL10decReversePhS_.exit131, !llvm.loop !130

_ZL10decReversePhS_.exit131:                      ; preds = %.lr.ph.i128, %_ZL10decReversePhS_.exit
  %i.fc = icmp samesign ugt i32 %i.dd, 1
  br i1 %i.fc, label %.lr.ph.i133, label %_ZL10decReversePhS_.exit136

.lr.ph.i133:                                      ; preds = %_ZL10decReversePhS_.exit131, %.lr.ph.i133
  %.010.i134 = phi ptr [ %i.ff, %.lr.ph.i133 ], [ %i.co, %_ZL10decReversePhS_.exit131 ] ; 3 uses
  %.089.i135 = phi ptr [ %i.fg, %.lr.ph.i133 ], [ %i.dg, %_ZL10decReversePhS_.exit131 ] ; 3 uses
  %i.fd = load i8, ptr %.010.i134, align 1
  %i.fe = load i8, ptr %.089.i135, align 1
  store i8 %i.fe, ptr %.010.i134, align 1
  store i8 %i.fd, ptr %.089.i135, align 1
  %i.ff = getelementptr inbounds nuw i8, ptr %.010.i134, i64 1 ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %.089.i135, i64 -1 ; 2 uses
  %i.fh = icmp ult ptr %i.ff, %i.fg
  br i1 %i.fh, label %.lr.ph.i133, label %_ZL10decReversePhS_.exit136, !llvm.loop !130

_ZL10decReversePhS_.exit136:                      ; preds = %.lr.ph.i133, %_ZL10decReversePhS_.exit131, %bb.s
  %i.fi = getelementptr i8, ptr %i.co, i64 %i.de
  %.01011.i = getelementptr i8, ptr %i.fi, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.co
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %_ZL10decReversePhS_.exit136, %bb.w
  %.01014.i = phi ptr [ %.010.i139, %bb.w ], [ %.01011.i, %_ZL10decReversePhS_.exit136 ] ; 2 uses
  %.013.i = phi i32 [ %i.fm, %bb.w ], [ %i.dd, %_ZL10decReversePhS_.exit136 ] ; 3 uses
  %i.fj = load i8, ptr %.01014.i, align 1
  %i.fk = icmp ne i8 %i.fj, 0
  %i.fl = icmp eq i32 %.013.i, 1
  %or.cond.i138 = select i1 %i.fk, i1 true, i1 %i.fl
  br i1 %or.cond.i138, label %_ZL12decGetDigitsPhi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i137
  %i.fm = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i139 = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i140 = icmp ult ptr %.010.i139, %i.co
  br i1 %.not.i140, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i137, !llvm.loop !7

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i137, %bb.w, %_ZL10decReversePhS_.exit136
  %.0.lcssa.i = phi i32 [ %i.dd, %_ZL10decReversePhS_.exit136 ], [ %i.fm, %bb.w ], [ %.013.i, %.lr.ph.i137 ]
  store i32 %.0.lcssa.i, ptr %0, align 4
  br label %.thread

bb.x:                                             ; preds = %bb.a, %bb.b
  %i.fn = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.b) ; 0 uses
  %.pr.pre = load i32, ptr %i.b, align 4          ; 6 uses
  %.not124 = icmp eq i32 %.pr.pre, 0
  br i1 %.not124, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fo = and i32 %.pr.pre, 221
  %.not.i142 = icmp eq i32 %i.fo, 0
  br i1 %.not.i142, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fp = and i32 %.pr.pre, 1073741824
  %.not6.i = icmp eq i32 %i.fp, 0
  br i1 %.not6.i, label %.thread152, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fq = and i32 %.pr.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread152:                                       ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.c, %bb.d, %bb.z
  %i.fr = phi i32 [ %.pr.pre, %bb.z ], [ 128, %bb.c ], [ 128, %bb.d ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ft, align 4
  store i32 1, ptr %0, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.fu, align 1
  store i8 32, ptr %i.fs, align 4
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.y, %bb.aa, %.thread152
  %.0.i = phi i32 [ %i.fq, %bb.aa ], [ %i.fr, %.thread152 ], [ %.pr.pre, %bb.y ]
  %i.fv = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) #15 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %_ZL12decGetDigitsPhi.exit, %bb.l, %bb.k, %bb.j, %_ZL9decStatusP9decNumberjP10decContext.exit, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, %1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %0, align 1
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 50
  br i1 %i.d, label %bb.e, label %.thread71

bb.e:                                             ; preds = %bb.d
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  %i.j = sub nsw i32 %2, %i.i                     ; 6 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %.thread71, label %bb.f

.thread71:                                        ; preds = %bb.e, %bb.d
  %i.l = phi i32 [ %2, %bb.d ], [ %i.h, %bb.e ]   ; 2 uses
  %3 = sext i32 %1 to i64                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %3
  %i.n = icmp slt i32 %i.l, %1
  br i1 %i.n, label %iter.check, label %._crit_edge80

iter.check:                                       ; preds = %.thread71
  %i.o = zext nneg i32 %i.l to i64                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %i.o ; 5 uses
  %i.q = add i64 %i.a, %i.o
  %i.r = add i64 %i.q, 1
  %i.s = add i64 %i.a, %3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.s)
  %i.t = add i64 %i.a, %i.o
  %i.u = sub i64 %umax, %i.t                      ; 7 uses
  %min.iters.check = icmp ult i64 %i.u, 4
  br i1 %min.iters.check, label %.lr.ph79.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check88 = icmp ult i64 %i.u, 32
  br i1 %min.iters.check88, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.u, 28
  %n.vec = and i64 %i.u, -32                      ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %i.x = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep89, align 1
  %wide.load90 = load <16 x i8>, ptr %i.x, align 1
  %i.y = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load90, ptr %i.y, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !131

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.preheader, label %vec.epilog.ph, !prof !30

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec93 = and i64 %i.u, -4                     ; 4 uses
  %i.aa = getelementptr i8, ptr %0, i64 %n.vec93  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.p, i64 %n.vec93
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index94 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next98, %vec.epilog.vector.body ] ; 3 uses
  %next.gep95 = getelementptr i8, ptr %0, i64 %index94
  %next.gep96 = getelementptr i8, ptr %i.p, i64 %index94
  %wide.load97 = load <4 x i8>, ptr %next.gep96, align 1
  store <4 x i8> %wide.load97, ptr %next.gep95, align 1
  %index.next98 = add nuw i64 %index94, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next98, %n.vec93
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !132

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n99 = icmp eq i64 %i.u, %n.vec93
  br i1 %cmp.n99, label %._crit_edge80, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06178.ph = phi ptr [ %0, %iter.check ], [ %i.v, %vec.epilog.iter.check ], [ %i.aa, %vec.epilog.middle.block ]
  %.06277.ph = phi ptr [ %i.p, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %.06178 = phi ptr [ %i.ae, %.lr.ph79 ], [ %.06178.ph, %.lr.ph79.preheader ] ; 2 uses
  %.06277 = phi ptr [ %i.af, %.lr.ph79 ], [ %.06277.ph, %.lr.ph79.preheader ] ; 2 uses
  %i.ad = load i8, ptr %.06277, align 1
  store i8 %i.ad, ptr %.06178, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.06178, i64 1 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.06277, i64 1 ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.m
  br i1 %i.ag, label %.lr.ph79, label %._crit_edge80, !llvm.loop !133

._crit_edge80:                                    ; preds = %.lr.ph79, %middle.block, %vec.epilog.middle.block, %.thread71
  %.061.lcssa = phi ptr [ %0, %.thread71 ], [ %i.aa, %vec.epilog.middle.block ], [ %i.v, %middle.block ], [ %i.ae, %.lr.ph79 ]
  %i.ah = ptrtoint ptr %.061.lcssa to i64
  %i.ai = ptrtoint ptr %0 to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = trunc i64 %i.aj to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.al = sext i32 %i.i to i64
  %i.am = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = lshr i32 %i.ar, %i.j
  %i.at = sext i32 %i.j to i64                    ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4            ; 2 uses
  %i.aw = mul i32 %i.as, %i.av
  %i.ax = lshr i32 %i.aw, 17                      ; 2 uses
  %i.ay = sub nsw i32 1, %i.j                     ; 3 uses
  %i.az = trunc i32 %i.ax to i8
  store i8 %i.az, ptr %0, align 1
  %i.ba = add i32 %2, %i.ay
  %i.bb = sub i32 %1, %i.ba                       ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.bd = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.at
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sext i32 %i.ay to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.bi = phi i32 [ %i.bb, %.lr.ph ], [ %i.by, %bb.h ]
  %.05974 = phi i32 [ %i.ax, %.lr.ph ], [ %i.bo, %bb.h ]
  %.173 = phi ptr [ %0, %.lr.ph ], [ %i.bw, %bb.h ] ; 3 uses
  %.16372 = phi ptr [ %i.ap, %.lr.ph ], [ %i.bj, %bb.h ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.16372, i64 1 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, %i.j
  %i.bn = mul i32 %i.bm, %i.av
  %i.bo = lshr i32 %i.bn, 17                      ; 3 uses
  %i.bp = mul i32 %i.bo, %i.be
  %i.bq = sub i32 %i.bl, %i.bp
  %i.br = mul i32 %i.bq, %i.bh
  %i.bs = add i32 %i.br, %.05974
  %i.bt = trunc i32 %i.bs to i8
  store i8 %i.bt, ptr %.173, align 1
  %i.bu = sub nsw i32 %i.bi, %i.j                 ; 2 uses
  %i.bv = icmp slt i32 %i.bu, 1
  br i1 %i.bv, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 3 uses
  %i.bx = trunc i32 %i.bo to i8
  store i8 %i.bx, ptr %i.bw, align 1
  %i.by = sub nsw i32 %i.bu, %i.ay                ; 2 uses
  %i.bz = icmp slt i32 %i.by, 1
  br i1 %i.bz, label %._crit_edge, label %bb.g, !llvm.loop !57

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.1.lcssa = phi ptr [ %0, %bb.f ], [ %.173, %bb.g ], [ %i.bw, %bb.h ]
  %i.ca = ptrtoint ptr %.1.lcssa to i64
  %i.cb = ptrtoint ptr %0 to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = add i32 %i.cd, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge, %._crit_edge80, %bb.c
  %.0 = phi i32 [ %i.ce, %._crit_edge ], [ 1, %bb.c ], [ %i.ak, %._crit_edge80 ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef ptr @uprv_decNumberSameQuantum_78(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 10)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 4               ; 2 uses
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = or i32 %i.f, %i.c
  %i.h = and i32 %i.g, 112
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i32 %i.c, 48
  %.not11 = icmp eq i32 %i.i, 0
  %i.j = and i32 %i.f, 48
  %.not12 = icmp eq i32 %i.j, 0
  %or.cond = or i1 %.not11, %.not12
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = and i8 %i.b, 64
  %.not13 = icmp eq i8 %i.k, 0
  br i1 %.not13, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = lshr i8 %i.e, 6
  %.lobit = and i8 %i.l, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i32, ptr %i.m, align 4
end_hunk_1
