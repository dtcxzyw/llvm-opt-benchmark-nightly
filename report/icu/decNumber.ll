inline.NumInlined: 181
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZL11decDivideOpP9decNumberPKS_S2_P10decContexthPj:bb.a
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.be, align 1, !tbaa !12
  %i.bf = load i32, ptr %5, align 4, !tbaa !16
  %i.bg = or i32 %i.bf, 8
  store i32 %i.bg, ptr %5, align 4, !tbaa !16
  br label %.thread623.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i8 0, ptr %i.bh, align 4, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.bi, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.bj, align 1, !tbaa !12
  %i.bk = and i8 %4, 80
  %.not549 = icmp eq i8 %i.bk, 0
  %i.bl = load i32, ptr %5, align 4, !tbaa !16    ; 2 uses
  br i1 %.not549, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = or i32 %i.bl, 128
  store i32 %i.bm, ptr %5, align 4, !tbaa !16
  br label %.thread623.thread

bb.t:                                             ; preds = %bb.r
  %i.bn = or i32 %i.bl, 2
  store i32 %i.bn, ptr %5, align 4, !tbaa !16
  %i.bo = or disjoint i8 %i.l, 64
  store i8 %i.bo, ptr %i.bh, align 4, !tbaa !8
  br label %.thread623.thread

bb.u:                                             ; preds = %bb.n, %bb.m
  %.ptr524 = getelementptr i8, ptr %1, i64 9      ; 3 uses
  %i.bp = load i8, ptr %.ptr524, align 1, !tbaa !12
  %i.bq = icmp eq i8 %i.bp, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !11    ; 4 uses
  br i1 %i.bq, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.br = icmp eq i32 %.pre, 1
  %i.bs = and i8 %i.f, 112
  %i.bt = icmp eq i8 %i.bs, 0
  %or.cond644 = and i1 %i.bt, %i.br
  br i1 %or.cond644, label %bb.w, label %bb.ac

bb.w:                                             ; preds = %bb.v
  %.not547 = icmp sgt i8 %4, -1
  br i1 %.not547, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !10
  %i.by = sub nsw i32 %i.bv, %i.bx
  %i.bz = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.l, ptr %i.ca, align 4, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !10
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread623.thread

bb.y:                                             ; preds = %bb.w
  %i.cc = and i8 %4, 32
  %.not548 = icmp eq i8 %i.cc, 0
  br i1 %.not548, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.ce, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cf, align 1, !tbaa !12
  store i8 %i.l, ptr %i.cd, align 4, !tbaa !8
  br label %.thread623.thread

bb.aa:                                            ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !10 ; 2 uses
  %i.ci = tail call ptr @uprv_decNumberCopy_78(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !10
  %i.cl = icmp slt i32 %i.ch, %i.ck
  br i1 %i.cl, label %bb.ab, label %.thread623.thread

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.ch, ptr %i.cj, align 4, !tbaa !10
  br label %.thread623.thread

bb.ac:                                            ; preds = %bb.v, %bb.u
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !10 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 5 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !10 ; 2 uses
  %i.cq = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %.neg650 = add i32 %.pre, %i.cn
  %i.cr = add i32 %i.cp, %i.cq
  %i.cs = sub i32 %.neg650, %i.cr                 ; 4 uses
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
  store i32 0, ptr %i.cy, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.cz, align 1, !tbaa !12
  store i8 %i.l, ptr %i.cx, align 4, !tbaa !8
  br label %.thread623.thread

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
  store i32 0, ptr %i.c, align 4, !tbaa !16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %i.dd, align 4, !tbaa !8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.cn, ptr %i.de, align 4, !tbaa !10
  call fastcc void @_ZL11decSetCoeffP9decNumberP10decContextPKhiPiPj(ptr noundef %0, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly %.ptr524, i32 noundef %.pre, ptr noundef nonnull %i.c, ptr noundef nonnull %5)
  call fastcc void @_ZL11decFinalizeP9decNumberP10decContextPiPj(ptr noundef %0, ptr noundef nonnull %3, ptr noundef %i.c, ptr noundef %5)
  br label %.thread623.thread

bb.ai:                                            ; preds = %bb.af, %bb.ag, %bb.ac
  %i.df = add nsw i32 %i.d, 1                     ; 2 uses
  %i.dg = icmp slt i32 %i.d, 49
  br i1 %i.dg, label %bb.aj, label %.thread

.thread:                                          ; preds = %bb.ai
  %i.dh = zext nneg i32 %i.df to i64
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.di = sext i32 %i.df to i64
  %i.dj = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.dl = zext i8 %i.dk to i64                    ; 2 uses
  %i.dm = icmp sgt i32 %i.d, 46
  br i1 %i.dm, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %.thread, %bb.aj
  %i.dn = phi i64 [ %i.dh, %.thread ], [ %i.dl, %bb.aj ] ; 2 uses
  %i.do = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.dn) #16 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.al, label %._crit_edge732

._crit_edge732:                                   ; preds = %bb.ak
  %.pre733 = load i32, ptr %2, align 4, !tbaa !11
  %.pre734 = load i32, ptr %1, align 4, !tbaa !11
  br label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.dq = load i32, ptr %5, align 4, !tbaa !16
  %i.dr = or i32 %i.dq, 16
  store i32 %i.dr, ptr %5, align 4, !tbaa !16
  br label %.thread623.thread

bb.am:                                            ; preds = %._crit_edge732, %bb.aj
  %i.ds = phi i32 [ %.pre, %bb.aj ], [ %.pre734, %._crit_edge732 ] ; 3 uses
  %i.dt = phi i32 [ %i.cq, %bb.aj ], [ %.pre733, %._crit_edge732 ]
  %i.du = phi i64 [ %i.dl, %bb.aj ], [ %i.dn, %._crit_edge732 ]
  %.0403 = phi ptr [ null, %bb.aj ], [ %i.do, %._crit_edge732 ] ; 2 uses
  %.0402 = phi ptr [ %i.a, %bb.aj ], [ %i.do, %._crit_edge732 ]
  %i.dv = add nsw i32 %i.dt, %i.d                 ; 2 uses
  %i.dw = add nsw i32 %i.dv, -1
  %.not520 = icmp slt i32 %i.ds, %i.dv
  %spec.select = select i1 %.not520, i32 %i.dw, i32 %i.ds ; 3 uses
  %i.dx = icmp slt i32 %spec.select, 50
  br i1 %i.dx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.dy = sext i32 %spec.select to i64
  %i.dz = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !12
  %i.eb = zext i8 %i.ea to i32
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.ec = phi i32 [ %i.eb, %bb.an ], [ %spec.select, %bb.am ] ; 4 uses
  %i.ed = add nuw nsw i32 %i.ec, 2                ; 2 uses
  %.not521 = icmp sgt i8 %4, -1                   ; 6 uses
  %i.ee = add nuw nsw i32 %i.ec, 3                ; 8 uses
  %spec.select563 = select i1 %.not521, i32 %i.ee, i32 %i.ed ; 7 uses
  %i.ef = icmp samesign ugt i32 %spec.select563, 72
  br i1 %i.ef, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.eg = add nuw nsw i32 %spec.select563, 1
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.eh) #16 ; 3 uses
  %i.ej = icmp eq ptr %i.ei, null
  br i1 %i.ej, label %bb.aq, label %._crit_edge735

._crit_edge735:                                   ; preds = %bb.ap
  %.pre736 = load i32, ptr %1, align 4, !tbaa !11
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ek = load i32, ptr %5, align 4, !tbaa !16
  %i.el = or i32 %i.ek, 16
  store i32 %i.el, ptr %5, align 4, !tbaa !16
  br label %.thread623

bb.ar:                                            ; preds = %._crit_edge735, %bb.ao
  %i.em = phi i32 [ %i.ds, %bb.ao ], [ %.pre736, %._crit_edge735 ] ; 6 uses
  %.0420 = phi ptr [ null, %bb.ao ], [ %i.ei, %._crit_edge735 ] ; 2 uses
  %.0417 = phi ptr [ %i.b, %bb.ao ], [ %i.ei, %._crit_edge735 ] ; 44 uses
  %.0417727 = ptrtoaddr ptr %.0417 to i64         ; 4 uses
  %i.en = zext nneg i32 %spec.select563 to i64    ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.en
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -1 ; 3 uses
  %i.eq = icmp slt i32 %i.em, 50                  ; 2 uses
  br i1 %i.eq, label %bb.as, label %.lr.ph.preheader

bb.as:                                            ; preds = %bb.ar
  %i.er = sext i32 %i.em to i64
  %i.es = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !12
  %i.eu = zext i8 %i.et to i32
  %.not522671 = icmp eq i32 %i.em, 0
  br i1 %.not522671, label %.preheader662, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ar, %bb.as
  %i.ev = phi i32 [ %i.eu, %bb.as ], [ %i.em, %bb.ar ]
  %i.ew = zext nneg i32 %i.ev to i64              ; 3 uses
  %i.ex = sub nsw i64 %i.en, %i.ew
  %scevgep = getelementptr i8, ptr %.0417, i64 %i.ex
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep, ptr nonnull align 1 %.ptr524, i64 %i.ew, i1 false), !tbaa !12
  %i.ey = xor i64 %i.ew, -1
  %i.ez = getelementptr i8, ptr %.0417, i64 %i.ey
  %scevgep725 = getelementptr i8, ptr %i.ez, i64 %i.en
  br label %.preheader662

.preheader662:                                    ; preds = %.lr.ph.preheader, %bb.as
  %.0441.lcssa = phi ptr [ %i.ep, %bb.as ], [ %scevgep725, %.lr.ph.preheader ] ; 3 uses
  %.not527674 = icmp ult ptr %.0441.lcssa, %.0417
  br i1 %.not527674, label %._crit_edge, label %.lr.ph676.preheader

.lr.ph676.preheader:                              ; preds = %.preheader662
  %.0441.lcssa726 = ptrtoaddr ptr %.0441.lcssa to i64 ; 3 uses
  %i.fa = add i64 %.0441.lcssa726, -1
  %i.fb = add i64 %.0417727, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.fa, i64 %i.fb) ; 2 uses
  %i.fc = add i64 %umin, 1
  %i.fd = sub i64 %i.fc, %.0441.lcssa726
  %scevgep728 = getelementptr i8, ptr %.0441.lcssa, i64 %i.fd
  %i.fe = sub i64 %.0441.lcssa726, %umin
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep728, i8 0, i64 %i.fe, i1 false), !tbaa !12
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph676.preheader, %.preheader662
  %i.ff = load i32, ptr %2, align 4, !tbaa !11    ; 3 uses
  %i.fg = icmp slt i32 %i.ff, 50
  br i1 %i.fg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %._crit_edge
  %i.fh = sext i32 %i.ff to i64
  %i.fi = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !12
  %i.fk = zext i8 %i.fj to i32
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge, %bb.at
  %i.fl = phi i32 [ %i.fk, %bb.at ], [ %i.ff, %._crit_edge ] ; 5 uses
  %narrow536 = add nuw i32 %i.fl, 9
  %.add = zext i32 %narrow536 to i64              ; 2 uses
  %.add532 = add nsw i64 %.add, -1                ; 2 uses
  %.ptr535 = getelementptr inbounds nuw i8, ptr %2, i64 %.add532
  %i.fm = load i8, ptr %.ptr535, align 1, !tbaa !12 ; 3 uses
  %i.fn = zext i8 %i.fm to i32                    ; 3 uses
  %i.fo = icmp samesign ugt i32 %i.fl, 1          ; 2 uses
  %i.fp = zext i1 %i.fo to i32
  %spec.select564 = add nuw nsw i32 %i.fn, %i.fp
  %i.fq = mul nuw nsw i32 %i.fn, 10               ; 2 uses
  br i1 %i.fo, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %.ptr534 = getelementptr inbounds nuw i8, ptr %2, i64 %.add
  %i.fr = getelementptr inbounds i8, ptr %.ptr534, i64 -2
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !12
  %i.ft = zext i8 %i.fs to i32
  %.not528 = icmp ne i32 %i.fl, 2
  %i.fu = zext i1 %.not528 to i32
  %i.fv = or disjoint i32 %i.fq, %i.fu
  %spec.select565 = add nuw nsw i32 %i.fv, %i.ft
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.0471 = phi i32 [ %i.fq, %bb.au ], [ %spec.select565, %bb.av ]
  %i.fw = load i8, ptr %i.ep, align 1, !tbaa !12  ; 3 uses
  %i.fx = zext i8 %i.fw to i32
  %.not529677 = icmp ult i8 %i.fw, 10
  br i1 %.not529677, label %.preheader661, label %.lr.ph681

.preheader661:                                    ; preds = %.lr.ph681, %bb.aw
  %.0450.lcssa = phi i32 [ %i.cs, %bb.aw ], [ %i.fy, %.lr.ph681 ] ; 2 uses
  %.not530684 = icmp ult i8 %i.fm, 10
  br i1 %.not530684, label %._crit_edge688, label %.lr.ph687

.lr.ph681:                                        ; preds = %bb.aw, %.lr.ph681
  %.0437679 = phi ptr [ %i.fz, %.lr.ph681 ], [ getelementptr inbounds nuw (i8, ptr @_ZL9DECPOWERS, i64 4), %bb.aw ]
  %.0450678 = phi i32 [ %i.fy, %.lr.ph681 ], [ %i.cs, %bb.aw ]
  %i.fy = add nsw i32 %.0450678, -1               ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0437679, i64 4 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !16
  %.not529 = icmp ugt i32 %i.ga, %i.fx
  br i1 %.not529, label %.preheader661, label %.lr.ph681, !llvm.loop !68

.lr.ph687:                                        ; preds = %.preheader661, %.lr.ph687
  %.1438686 = phi ptr [ %i.gc, %.lr.ph687 ], [ getelementptr inbounds nuw (i8, ptr @_ZL9DECPOWERS, i64 4), %.preheader661 ]
  %.1451685 = phi i32 [ %i.gb, %.lr.ph687 ], [ %.0450.lcssa, %.preheader661 ]
  %i.gb = add nsw i32 %.1451685, 1                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.1438686, i64 4 ; 2 uses
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !16
  %.not530 = icmp ugt i32 %i.gd, %i.fn
  br i1 %.not530, label %._crit_edge688, label %.lr.ph687, !llvm.loop !69

._crit_edge688:                                   ; preds = %.lr.ph687, %.preheader661
  %.1451.lcssa = phi i32 [ %.0450.lcssa, %.preheader661 ], [ %i.gb, %.lr.ph687 ] ; 7 uses
  br i1 %.not521, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %._crit_edge688
  br i1 %i.eq, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ge = sext i32 %i.em to i64
  %i.gf = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !12
  %i.gh = zext i8 %i.gg to i32
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.gi = phi i32 [ %i.gh, %bb.ay ], [ %i.em, %bb.ax ] ; 3 uses
  %i.gj = icmp slt i32 %.1451.lcssa, 0
  %i.gk = sub nsw i32 0, %.1451.lcssa             ; 2 uses
  %.0432 = select i1 %i.gj, i32 %i.gk, i32 1      ; 13 uses
  %i.gl = icmp eq i32 %.0432, 0
  br i1 %i.gl, label %_ZL15decShiftToLeastPhii.exit.thread766, label %bb.ba

_ZL15decShiftToLeastPhii.exit.thread766:          ; preds = %bb.az
  %i.gm = sub nsw i32 %i.ee, %i.gi
  br label %.loopexit659

bb.ba:                                            ; preds = %bb.az
  %i.gn = icmp eq i32 %.0432, %i.ee
  br i1 %i.gn, label %_ZL15decShiftToLeastPhii.exit.thread, label %bb.bb

_ZL15decShiftToLeastPhii.exit.thread:             ; preds = %bb.ba
  store i8 0, ptr %.0417, align 1, !tbaa !12
  %i.go = add nsw i32 %.0432, %.1451.lcssa
  %i.gp = add nuw i32 %.0432, %i.gi
  %i.gq = sub i32 %i.ee, %i.gp
  br label %.lr.ph692.preheader

bb.bb:                                            ; preds = %bb.ba
  %i.gr = icmp slt i32 %.0432, 50
  br i1 %i.gr, label %bb.bc, label %.thread71.i

bb.bc:                                            ; preds = %bb.bb
  %i.gs = sext i32 %.0432 to i64
  %i.gt = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !12
  %i.gv = zext i8 %i.gu to i32                    ; 2 uses
  %i.gw = add nsw i32 %i.gv, -1                   ; 2 uses
  %i.gx = sub nsw i32 %.0432, %i.gw               ; 7 uses
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %.thread71.i, label %bb.bd

.thread71.i:                                      ; preds = %bb.bc, %bb.bb
  %i.gz = phi i32 [ %i.gk, %bb.bb ], [ %i.gv, %bb.bc ] ; 2 uses
  %6 = zext nneg i32 %i.ee to i64
  %7 = getelementptr inbounds nuw i8, ptr %.0417, i64 %6
  %i.ha = icmp slt i32 %i.gz, %i.ee
  br i1 %i.ha, label %iter.check, label %_ZL15decShiftToLeastPhii.exit

iter.check:                                       ; preds = %.thread71.i
  %i.hb = zext i32 %i.gz to i64                   ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.hb ; 5 uses
  %8 = zext nneg i32 %i.ec to i64
  %9 = add i64 %.0417727, %8
  %i.hd = add i64 %9, 3
  %i.he = add i64 %.0417727, %i.hb
  %i.hf = add i64 %i.he, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.hd, i64 %i.hf)
  %i.hg = add i64 %.0417727, %i.hb
  %i.hh = sub i64 %umax, %i.hg                    ; 7 uses
  %min.iters.check = icmp ult i64 %i.hh, 4
  br i1 %min.iters.check, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check790 = icmp ult i64 %i.hh, 32
  br i1 %min.iters.check790, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.hi = and i64 %i.hh, 28
  %n.vec = and i64 %i.hh, -32                     ; 5 uses
  %i.hj = getelementptr i8, ptr %.0417, i64 %n.vec
  %i.hk = getelementptr i8, ptr %i.hc, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0417, i64 %index ; 2 uses
  %next.gep791 = getelementptr i8, ptr %i.hc, i64 %index ; 2 uses
  %i.hl = getelementptr i8, ptr %next.gep791, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep791, align 1, !tbaa !12
  %wide.load792 = load <16 x i8>, ptr %i.hl, align 1, !tbaa !12
  %i.hm = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> %wide.load792, ptr %i.hm, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.hn = icmp eq i64 %index.next, %n.vec
  br i1 %i.hn, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hh, %n.vec
  br i1 %cmp.n, label %_ZL15decShiftToLeastPhii.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.hi, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.i.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec794 = and i64 %i.hh, -4                   ; 4 uses
  %i.ho = getelementptr i8, ptr %.0417, i64 %n.vec794
  %i.hp = getelementptr i8, ptr %i.hc, i64 %n.vec794
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index795 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next799, %vec.epilog.vector.body ] ; 3 uses
  %next.gep796 = getelementptr i8, ptr %.0417, i64 %index795
  %next.gep797 = getelementptr i8, ptr %i.hc, i64 %index795
  %wide.load798 = load <4 x i8>, ptr %next.gep797, align 1, !tbaa !12
  store <4 x i8> %wide.load798, ptr %next.gep796, align 1, !tbaa !12
  %index.next799 = add nuw i64 %index795, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next799, %n.vec794
  br i1 %i.hq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !71

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n800 = icmp eq i64 %i.hh, %n.vec794
  br i1 %cmp.n800, label %_ZL15decShiftToLeastPhii.exit, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06178.i.ph = phi ptr [ %.0417, %iter.check ], [ %i.hj, %vec.epilog.iter.check ], [ %i.ho, %vec.epilog.middle.block ]
  %.06277.i.ph = phi ptr [ %i.hc, %iter.check ], [ %i.hk, %vec.epilog.iter.check ], [ %i.hp, %vec.epilog.middle.block ]
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i
  %.06178.i = phi ptr [ %i.hs, %.lr.ph79.i ], [ %.06178.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.06277.i = phi ptr [ %i.ht, %.lr.ph79.i ], [ %.06277.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %i.hr = load i8, ptr %.06277.i, align 1, !tbaa !12
  store i8 %i.hr, ptr %.06178.i, align 1, !tbaa !12
  %i.hs = getelementptr inbounds nuw i8, ptr %.06178.i, i64 1
  %i.ht = getelementptr inbounds nuw i8, ptr %.06277.i, i64 1 ; 2 uses
  %i.hu = icmp ult ptr %i.ht, %7
  br i1 %i.hu, label %.lr.ph79.i, label %_ZL15decShiftToLeastPhii.exit, !llvm.loop !72

bb.bd:                                            ; preds = %bb.bc
  %i.hv = sext i32 %i.gw to i64
  %i.hw = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !12
  %i.hy = zext i8 %i.hx to i64
  %i.hz = getelementptr inbounds nuw i8, ptr %.0417, i64 %i.hy ; 2 uses
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !12
  %i.ib = zext i8 %i.ia to i32
  %i.ic = lshr i32 %i.ib, %i.gx
  %i.id = sext i32 %i.gx to i64                   ; 2 uses
  %i.ie = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.id
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !16 ; 2 uses
  %i.ig = mul i32 %i.ic, %i.if
  %i.ih = lshr i32 %i.ig, 17                      ; 2 uses
  %.neg = add i32 %i.gx, -1
  %i.ii = sub nsw i32 1, %i.gx                    ; 2 uses
  %i.ij = trunc i32 %i.ih to i8
  store i8 %i.ij, ptr %.0417, align 1, !tbaa !12
  %.neg652 = sub i32 %i.ee, %.0432
  %i.ik = add i32 %.neg652, %.neg                 ; 2 uses
  %i.il = icmp slt i32 %i.ik, 1
  br i1 %i.il, label %_ZL15decShiftToLeastPhii.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bd
  %i.im = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.id
  %i.in = load i32, ptr %i.im, align 4, !tbaa !16
  %i.io = sext i32 %i.ii to i64
  %i.ip = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !16
  br label %bb.be

bb.be:                                            ; preds = %bb.bf, %.lr.ph.i
  %i.ir = phi i32 [ %i.ik, %.lr.ph.i ], [ %i.jh, %bb.bf ]
  %.05974.i = phi i32 [ %i.ih, %.lr.ph.i ], [ %i.ix, %bb.bf ]
  %.173.i = phi ptr [ %.0417, %.lr.ph.i ], [ %i.jf, %bb.bf ] ; 2 uses
  %.16372.i = phi ptr [ %i.hz, %.lr.ph.i ], [ %i.is, %bb.bf ]
  %i.is = getelementptr inbounds nuw i8, ptr %.16372.i, i64 1 ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !12
  %i.iu = zext i8 %i.it to i32                    ; 2 uses
  %i.iv = lshr i32 %i.iu, %i.gx
  %i.iw = mul i32 %i.iv, %i.if
  %i.ix = lshr i32 %i.iw, 17                      ; 3 uses
  %i.iy = mul i32 %i.ix, %i.in
  %i.iz = sub i32 %i.iu, %i.iy
  %i.ja = mul i32 %i.iz, %i.iq
  %i.jb = add i32 %i.ja, %.05974.i
  %i.jc = trunc i32 %i.jb to i8
  store i8 %i.jc, ptr %.173.i, align 1, !tbaa !12
  %i.jd = sub nsw i32 %i.ir, %i.gx                ; 2 uses
  %i.je = icmp slt i32 %i.jd, 1
  br i1 %i.je, label %_ZL15decShiftToLeastPhii.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jf = getelementptr inbounds nuw i8, ptr %.173.i, i64 1 ; 2 uses
  %i.jg = trunc i32 %i.ix to i8
  store i8 %i.jg, ptr %i.jf, align 1, !tbaa !12
  %i.jh = sub nsw i32 %i.jd, %i.ii                ; 2 uses
  %i.ji = icmp slt i32 %i.jh, 1
  br i1 %i.ji, label %_ZL15decShiftToLeastPhii.exit, label %bb.be, !llvm.loop !73

_ZL15decShiftToLeastPhii.exit:                    ; preds = %bb.be, %bb.bf, %.lr.ph79.i, %middle.block, %vec.epilog.middle.block, %bb.bd, %.thread71.i
  %i.jj = add nsw i32 %.0432, %.1451.lcssa        ; 2 uses
  %i.jk = add i32 %.0432, %i.gi
  %i.jl = sub i32 %spec.select563, %i.jk          ; 2 uses
  %i.jm = icmp sgt i32 %.0432, 0
  br i1 %i.jm, label %.lr.ph692.preheader, label %.loopexit659

.lr.ph692.preheader:                              ; preds = %_ZL15decShiftToLeastPhii.exit.thread, %_ZL15decShiftToLeastPhii.exit
  %i.jn = phi i32 [ %i.gq, %_ZL15decShiftToLeastPhii.exit.thread ], [ %i.jl, %_ZL15decShiftToLeastPhii.exit ]
  %i.jo = phi i32 [ %i.go, %_ZL15decShiftToLeastPhii.exit.thread ], [ %i.jj, %_ZL15decShiftToLeastPhii.exit ]
  %i.jp = sub nsw i32 0, %.0432
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr i8, ptr %.0417, i64 %i.jq
  %scevgep729 = getelementptr i8, ptr %i.jr, i64 %i.en
  %i.js = zext nneg i32 %.0432 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep729, i8 0, i64 %i.js, i1 false), !tbaa !12
  br label %.loopexit659

bb.bg:                                            ; preds = %._crit_edge688
  %i.jt = load i32, ptr %i.cm, align 4, !tbaa !10
  %i.ju = load i32, ptr %i.co, align 4, !tbaa !10
  %i.jv = sub nsw i32 %i.jt, %i.ju                ; 2 uses
  %i.jw = icmp ult i8 %i.fw, %i.fm
  br i1 %i.jw, label %bb.bh, label %.loopexit659

bb.bh:                                            ; preds = %bb.bg
  %i.jx = add nuw nsw i32 %i.ec, 1
  %i.jy = add nsw i32 %.1451.lcssa, -1
  br label %.loopexit659

.loopexit659:                                     ; preds = %_ZL15decShiftToLeastPhii.exit.thread766, %.lr.ph692.preheader, %_ZL15decShiftToLeastPhii.exit, %bb.bg, %bb.bh
  %.0469 = phi i32 [ %i.jx, %bb.bh ], [ %i.ed, %bb.bg ], [ %spec.select563, %_ZL15decShiftToLeastPhii.exit ], [ %spec.select563, %.lr.ph692.preheader ], [ %i.ee, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %.0468 = phi i32 [ 0, %bb.bh ], [ 0, %bb.bg ], [ %i.jl, %_ZL15decShiftToLeastPhii.exit ], [ %i.jn, %.lr.ph692.preheader ], [ %i.gm, %_ZL15decShiftToLeastPhii.exit.thread766 ] ; 2 uses
  %.2452 = phi i32 [ %i.jy, %bb.bh ], [ %.1451.lcssa, %bb.bg ], [ %i.jj, %_ZL15decShiftToLeastPhii.exit ], [ %i.jo, %.lr.ph692.preheader ], [ %.1451.lcssa, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %.0449 = phi i32 [ %i.jv, %bb.bh ], [ %i.jv, %bb.bg ], [ 0, %_ZL15decShiftToLeastPhii.exit ], [ 0, %.lr.ph692.preheader ], [ 0, %_ZL15decShiftToLeastPhii.exit.thread766 ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.0402, i64 %i.du
  %i.ka = getelementptr inbounds i8, ptr %i.jz, i64 -1
  %i.kb = and i32 %i.cu, 80
  %.not539 = icmp eq i32 %i.kb, 0                 ; 2 uses
  %i.kc = zext nneg i32 %.0469 to i64
  %i.kd = zext nneg i32 %i.fl to i64
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bx, %.loopexit659
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bx ], [ %i.kc, %.loopexit659 ] ; 4 uses
  %.1473 = phi i32 [ %.6478, %bb.bx ], [ %spec.select563, %.loopexit659 ]
  %.3453 = phi i32 [ %i.me, %bb.bx ], [ %.2452, %.loopexit659 ] ; 6 uses
  %.0434 = phi ptr [ %.2436.lcssa, %bb.bx ], [ %i.ep, %.loopexit659 ]
  %.0411 = phi i32 [ %.3414, %bb.bx ], [ 0, %.loopexit659 ] ; 3 uses
  %.0406 = phi i32 [ %.1407, %bb.bx ], [ 0, %.loopexit659 ] ; 3 uses
  %.0404 = phi ptr [ %.1405, %bb.bx ], [ %i.ka, %.loopexit659 ] ; 3 uses
  %i.ke = sub nsw i64 %indvars.iv, %i.kd          ; 2 uses
  %i.kf = getelementptr inbounds i8, ptr %.0417, i64 %i.ke ; 2 uses
  %i.kg = trunc nsw i64 %indvars.iv to i32
  %i.kh = trunc nsw i64 %i.ke to i32
  br label %bb.bj

bb.bj:                                            ; preds = %bb.br, %bb.bi
  %.2474 = phi i32 [ %.1473, %bb.bi ], [ %.3475.lcssa, %bb.br ] ; 2 uses
  %.0458 = phi i8 [ 0, %bb.bi ], [ %i.lm, %bb.br ] ; 4 uses
  %.1435 = phi ptr [ %.0434, %bb.bi ], [ %.2436.lcssa, %bb.br ] ; 4 uses
  %i.ki = load i8, ptr %.1435, align 1, !tbaa !12 ; 2 uses
  %i.kj = icmp eq i8 %i.ki, 0
  %i.kk = icmp ugt ptr %.1435, %.0417
  %i.kl = and i1 %i.kk, %i.kj
  br i1 %i.kl, label %.lr.ph697, label %._crit_edge698

.lr.ph697:                                        ; preds = %bb.bj, %.lr.ph697
  %.2436695 = phi ptr [ %i.kn, %.lr.ph697 ], [ %.1435, %bb.bj ]
  %.3475694 = phi i32 [ %i.km, %.lr.ph697 ], [ %.2474, %bb.bj ]
  %i.km = add nsw i32 %.3475694, -1               ; 2 uses
  %i.kn = getelementptr inbounds i8, ptr %.2436695, i64 -1 ; 4 uses
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !12  ; 2 uses
  %i.kp = icmp eq i8 %i.ko, 0
  %i.kq = icmp ugt ptr %i.kn, %.0417
  %i.kr = and i1 %i.kq, %i.kp
  br i1 %i.kr, label %.lr.ph697, label %._crit_edge698, !llvm.loop !74

._crit_edge698:                                   ; preds = %.lr.ph697, %bb.bj
  %.lcssa693 = phi i8 [ %i.ki, %bb.bj ], [ %i.ko, %.lr.ph697 ]
  %.3475.lcssa = phi i32 [ %.2474, %bb.bj ], [ %i.km, %.lr.ph697 ] ; 6 uses
  %.2436.lcssa = phi ptr [ %.1435, %bb.bj ], [ %i.kn, %.lr.ph697 ] ; 4 uses
  %i.ks = zext i8 %.lcssa693 to i32
  %i.kt = sext i32 %.3475.lcssa to i64
  %i.ku = icmp sgt i64 %indvars.iv, %i.kt
  br i1 %i.ku, label %.thread589, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge698
  %i.kv = icmp eq i32 %.3475.lcssa, %i.kg
  br i1 %i.kv, label %.preheader657, label %bb.br

.preheader657:                                    ; preds = %bb.bk, %bb.bn
  %.0430 = phi ptr [ %i.lb, %bb.bn ], [ %.2436.lcssa, %bb.bk ] ; 3 uses
  %.0429.idx = phi i64 [ %.0429.add, %bb.bn ], [ %.add532, %bb.bk ] ; 3 uses
  %.not531 = icmp slt i64 %.0429.idx, 9
  br i1 %.not531, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %.preheader657
  %.0429.ptr = getelementptr inbounds nuw i8, ptr %2, i64 %.0429.idx
  %i.kw = load i8, ptr %.0429.ptr, align 1, !tbaa !12
  %i.kx = zext i8 %i.kw to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %.preheader657
  %.0428 = phi i32 [ %i.kx, %bb.bl ], [ 0, %.preheader657 ] ; 3 uses
  %i.ky = load i8, ptr %.0430, align 1, !tbaa !12
  %i.kz = zext i8 %i.ky to i32                    ; 3 uses
  %.not537 = icmp ne i32 %.0428, %i.kz
  %i.la = icmp eq ptr %.0430, %.0417
  %or.cond566 = select i1 %.not537, i1 true, i1 %i.la
  br i1 %or.cond566, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.lb = getelementptr inbounds i8, ptr %.0430, i64 -1
  %.0429.add = add nsw i64 %.0429.idx, -1
  br label %.preheader657, !llvm.loop !75

bb.bo:                                            ; preds = %bb.bm
  %i.lc = icmp samesign ugt i32 %.0428, %i.kz
  br i1 %i.lc, label %.thread589, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ld = icmp eq i32 %.0428, %i.kz
  br i1 %i.ld, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.le = add i8 %.0458, 1
  store i8 0, ptr %.0417, align 1, !tbaa !12
  br label %.thread589

bb.br:                                            ; preds = %bb.bk, %bb.bp
  %.0471.sink = phi i32 [ %.0471, %bb.bp ], [ %spec.select564, %bb.bk ]
  %i.lf = mul nuw nsw i32 %i.ks, 10
  %i.lg = getelementptr inbounds i8, ptr %.2436.lcssa, i64 -1
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !12
  %i.li = zext i8 %i.lh to i32
  %i.lj = add nuw nsw i32 %i.lf, %i.li
  %i.lk = udiv i32 %i.lj, %.0471.sink
end_hunk_0
begin_hunk_1_@uprv_decNumberRotate_78:bb.a

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.q
  %i.do = phi i32 [ %.pre, %.lr.ph.preheader ], [ %i.ck, %bb.q ] ; 7 uses
  store i32 %i.do, ptr %0, align 4, !tbaa !11
  %i.dp = icmp slt i32 %i.do, 50
  br i1 %i.dp, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.dq = sext i32 %i.do to i64
  %i.dr = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !12
  %i.dt = zext i8 %i.ds to i32
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.du = phi i32 [ %i.dt, %bb.r ], [ %i.do, %._crit_edge ]
  %.neg154 = add i32 %i.do, 1
  %i.dv = sub i32 %.neg154, %i.du                 ; 3 uses
  %i.dw = sub nsw i32 %i.do, %.0                  ; 3 uses
  %.not122 = icmp eq i32 %i.do, %.0
  br i1 %.not122, label %_ZL10decReversePhS_.exit136, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not123 = icmp eq i32 %i.dv, 1
  br i1 %.not123, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dx = sub i32 1, %i.dv                        ; 2 uses
  %i.dy = load i8, ptr %i.co, align 1, !tbaa !12
  %i.dz = zext i8 %i.dy to i32
  %i.ea = zext i32 %i.dx to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !16
  %i.ed = urem i32 %i.dz, %i.ec
  %i.ee = tail call fastcc noundef i32 @_ZL15decShiftToLeastPhii(ptr noundef nonnull %i.co, i32 noundef %i.dw, i32 noundef %i.dx) ; 0 uses
  %i.ef = load i8, ptr %i.dg, align 1, !tbaa !12
  %i.eg = zext i32 %i.dv to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !16
  %i.ej = mul i32 %i.ei, %i.ed
  %i.ek = trunc i32 %i.ej to i8
  %i.el = add i8 %i.ef, %i.ek
  store i8 %i.el, ptr %i.dg, align 1, !tbaa !12
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.em = zext i32 %i.dw to i64                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.em ; 2 uses
  %i.eo = icmp sgt i64 %i.df, %i.em
  br i1 %i.eo, label %.lr.ph.i126, label %_ZL10decReversePhS_.exit

.lr.ph.i126:                                      ; preds = %bb.v, %.lr.ph.i126
  %.010.i = phi ptr [ %i.er, %.lr.ph.i126 ], [ %i.en, %bb.v ] ; 3 uses
  %.089.i = phi ptr [ %i.es, %.lr.ph.i126 ], [ %i.dg, %bb.v ] ; 3 uses
  %i.ep = load i8, ptr %.010.i, align 1, !tbaa !12
  %i.eq = load i8, ptr %.089.i, align 1, !tbaa !12
  store i8 %i.eq, ptr %.010.i, align 1, !tbaa !12
  store i8 %i.ep, ptr %.089.i, align 1, !tbaa !12
  %i.er = getelementptr inbounds nuw i8, ptr %.010.i, i64 1 ; 2 uses
  %i.es = getelementptr inbounds i8, ptr %.089.i, i64 -1 ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.es
  br i1 %i.et, label %.lr.ph.i126, label %_ZL10decReversePhS_.exit, !llvm.loop !152

_ZL10decReversePhS_.exit:                         ; preds = %.lr.ph.i126, %bb.v
  %i.eu = icmp ugt i32 %i.dw, 1
  br i1 %i.eu, label %.lr.ph.i128.preheader, label %_ZL10decReversePhS_.exit131

.lr.ph.i128.preheader:                            ; preds = %_ZL10decReversePhS_.exit
  %i.ev = getelementptr inbounds i8, ptr %i.en, i64 -1
  br label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %.lr.ph.i128.preheader, %.lr.ph.i128
  %.010.i129 = phi ptr [ %i.ey, %.lr.ph.i128 ], [ %i.co, %.lr.ph.i128.preheader ] ; 3 uses
  %.089.i130 = phi ptr [ %i.ez, %.lr.ph.i128 ], [ %i.ev, %.lr.ph.i128.preheader ] ; 3 uses
  %i.ew = load i8, ptr %.010.i129, align 1, !tbaa !12
  %i.ex = load i8, ptr %.089.i130, align 1, !tbaa !12
  store i8 %i.ex, ptr %.010.i129, align 1, !tbaa !12
  store i8 %i.ew, ptr %.089.i130, align 1, !tbaa !12
  %i.ey = getelementptr inbounds nuw i8, ptr %.010.i129, i64 1 ; 2 uses
  %i.ez = getelementptr inbounds i8, ptr %.089.i130, i64 -1 ; 2 uses
  %i.fa = icmp ult ptr %i.ey, %i.ez
  br i1 %i.fa, label %.lr.ph.i128, label %_ZL10decReversePhS_.exit131, !llvm.loop !152

_ZL10decReversePhS_.exit131:                      ; preds = %.lr.ph.i128, %_ZL10decReversePhS_.exit
  %i.fb = icmp samesign ugt i32 %i.dd, 1
  br i1 %i.fb, label %.lr.ph.i133, label %_ZL10decReversePhS_.exit136

.lr.ph.i133:                                      ; preds = %_ZL10decReversePhS_.exit131, %.lr.ph.i133
  %.010.i134 = phi ptr [ %i.fe, %.lr.ph.i133 ], [ %i.co, %_ZL10decReversePhS_.exit131 ] ; 3 uses
  %.089.i135 = phi ptr [ %i.ff, %.lr.ph.i133 ], [ %i.dg, %_ZL10decReversePhS_.exit131 ] ; 3 uses
  %i.fc = load i8, ptr %.010.i134, align 1, !tbaa !12
  %i.fd = load i8, ptr %.089.i135, align 1, !tbaa !12
  store i8 %i.fd, ptr %.010.i134, align 1, !tbaa !12
  store i8 %i.fc, ptr %.089.i135, align 1, !tbaa !12
  %i.fe = getelementptr inbounds nuw i8, ptr %.010.i134, i64 1 ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %.089.i135, i64 -1 ; 2 uses
  %i.fg = icmp ult ptr %i.fe, %i.ff
  br i1 %i.fg, label %.lr.ph.i133, label %_ZL10decReversePhS_.exit136, !llvm.loop !152

_ZL10decReversePhS_.exit136:                      ; preds = %.lr.ph.i133, %_ZL10decReversePhS_.exit131, %bb.s
  %i.fh = getelementptr i8, ptr %i.co, i64 %i.de
  %.01011.i = getelementptr i8, ptr %i.fh, i64 -1 ; 2 uses
  %.not12.i = icmp ult ptr %.01011.i, %i.co
  br i1 %.not12.i, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %_ZL10decReversePhS_.exit136, %bb.w
  %.01014.i = phi ptr [ %.010.i139, %bb.w ], [ %.01011.i, %_ZL10decReversePhS_.exit136 ] ; 2 uses
  %.013.i = phi i32 [ %i.fl, %bb.w ], [ %i.dd, %_ZL10decReversePhS_.exit136 ] ; 3 uses
  %i.fi = load i8, ptr %.01014.i, align 1, !tbaa !12
  %i.fj = icmp ne i8 %i.fi, 0
  %i.fk = icmp eq i32 %.013.i, 1
  %or.cond.i138 = select i1 %i.fj, i1 true, i1 %i.fk
  br i1 %or.cond.i138, label %_ZL12decGetDigitsPhi.exit, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i137
  %i.fl = add nsw i32 %.013.i, -1                 ; 2 uses
  %.010.i139 = getelementptr i8, ptr %.01014.i, i64 -1 ; 2 uses
  %.not.i140 = icmp ult ptr %.010.i139, %i.co
  br i1 %.not.i140, label %_ZL12decGetDigitsPhi.exit, label %.lr.ph.i137, !llvm.loop !15

_ZL12decGetDigitsPhi.exit:                        ; preds = %.lr.ph.i137, %bb.w, %_ZL10decReversePhS_.exit136
  %.0.lcssa.i = phi i32 [ %i.dd, %_ZL10decReversePhS_.exit136 ], [ %i.fl, %bb.w ], [ %.013.i, %.lr.ph.i137 ]
  store i32 %.0.lcssa.i, ptr %0, align 4, !tbaa !11
  br label %.thread

bb.x:                                             ; preds = %bb.a, %bb.b
  %i.fm = call fastcc noundef ptr @_ZL7decNaNsP9decNumberPKS_S2_P10decContextPj(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.b) ; 0 uses
  %.pr.pre = load i32, ptr %i.b, align 4, !tbaa !16 ; 6 uses
  %.not124 = icmp eq i32 %.pr.pre, 0
  br i1 %.not124, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = and i32 %.pr.pre, 221
  %.not.i142 = icmp eq i32 %i.fn, 0
  br i1 %.not.i142, label %_ZL9decStatusP9decNumberjP10decContext.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fo = and i32 %.pr.pre, 1073741824
  %.not6.i = icmp eq i32 %i.fo, 0
  br i1 %.not6.i, label %.thread152, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = and i32 %.pr.pre, -1073741825
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

.thread152:                                       ; preds = %_ZL9decGetIntPK9decNumber.exit.thread, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %_ZL9decGetIntPK9decNumber.exit, %bb.c, %bb.d, %bb.z
  %i.fq = phi i32 [ %.pr.pre, %bb.z ], [ 128, %bb.c ], [ 128, %bb.d ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit ], [ 128, %_ZL9decGetIntPK9decNumber.exit.thread ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.fs, align 4, !tbaa !10
  store i32 1, ptr %0, align 4, !tbaa !11
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.ft, align 1, !tbaa !12
  store i8 32, ptr %i.fr, align 4, !tbaa !8
  br label %_ZL9decStatusP9decNumberjP10decContext.exit

_ZL9decStatusP9decNumberjP10decContext.exit:      ; preds = %bb.y, %bb.aa, %.thread152
  %.0.i = phi i32 [ %i.fp, %bb.aa ], [ %i.fq, %.thread152 ], [ %.pr.pre, %bb.y ]
  %i.fu = tail call ptr @uprv_decContextSetStatus_78(ptr noundef %3, i32 noundef %.0.i) ; 0 uses
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
  store i8 0, ptr %0, align 1, !tbaa !12
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = icmp slt i32 %2, 50
  br i1 %i.d, label %bb.e, label %.thread71

bb.e:                                             ; preds = %bb.d
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
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
  %i.v = and i64 %i.u, 28
  %n.vec = and i64 %i.u, -32                      ; 5 uses
  %i.w = getelementptr i8, ptr %0, i64 %n.vec     ; 2 uses
  %i.x = getelementptr i8, ptr %i.p, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %next.gep89 = getelementptr i8, ptr %i.p, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep89, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep89, align 1, !tbaa !12
  %wide.load90 = load <16 x i8>, ptr %i.y, align 1, !tbaa !12
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !12
  store <16 x i8> %wide.load90, ptr %i.z, align 1, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.u, %n.vec
  br i1 %cmp.n, label %._crit_edge80, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.preheader, label %vec.epilog.ph, !prof !45

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %i.u, -4                     ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 %n.vec92  ; 2 uses
  %i.ac = getelementptr i8, ptr %i.p, i64 %n.vec92
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next97, %vec.epilog.vector.body ] ; 3 uses
  %next.gep94 = getelementptr i8, ptr %0, i64 %index93
  %next.gep95 = getelementptr i8, ptr %i.p, i64 %index93
  %wide.load96 = load <4 x i8>, ptr %next.gep95, align 1, !tbaa !12
  store <4 x i8> %wide.load96, ptr %next.gep94, align 1, !tbaa !12
  %index.next97 = add nuw i64 %index93, 4         ; 2 uses
  %i.ad = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n98 = icmp eq i64 %i.u, %n.vec92
  br i1 %cmp.n98, label %._crit_edge80, label %.lr.ph79.preheader

.lr.ph79.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06178.ph = phi ptr [ %0, %iter.check ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ]
  %.06277.ph = phi ptr [ %i.p, %iter.check ], [ %i.x, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ]
  br label %.lr.ph79

.lr.ph79:                                         ; preds = %.lr.ph79.preheader, %.lr.ph79
  %.06178 = phi ptr [ %i.af, %.lr.ph79 ], [ %.06178.ph, %.lr.ph79.preheader ] ; 2 uses
  %.06277 = phi ptr [ %i.ag, %.lr.ph79 ], [ %.06277.ph, %.lr.ph79.preheader ] ; 2 uses
  %i.ae = load i8, ptr %.06277, align 1, !tbaa !12
  store i8 %i.ae, ptr %.06178, align 1, !tbaa !12
  %i.af = getelementptr inbounds nuw i8, ptr %.06178, i64 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06277, i64 1 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.m
  br i1 %i.ah, label %.lr.ph79, label %._crit_edge80, !llvm.loop !155

._crit_edge80:                                    ; preds = %.lr.ph79, %middle.block, %vec.epilog.middle.block, %.thread71
  %.061.lcssa = phi ptr [ %0, %.thread71 ], [ %i.ab, %vec.epilog.middle.block ], [ %i.w, %middle.block ], [ %i.af, %.lr.ph79 ]
  %i.ai = ptrtoint ptr %.061.lcssa to i64
  %i.aj = ptrtoint ptr %0 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = trunc i64 %i.ak to i32
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.am = sext i32 %i.i to i64
  %i.an = getelementptr inbounds i8, ptr @_ZL8d2utable, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !12
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 %i.ap ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !12
  %i.as = zext i8 %i.ar to i32
  %i.at = lshr i32 %i.as, %i.j
  %i.au = sext i32 %i.j to i64                    ; 2 uses
  %i.av = getelementptr inbounds [4 x i8], ptr @_ZL7multies, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16 ; 2 uses
  %i.ax = mul i32 %i.at, %i.aw
  %i.ay = lshr i32 %i.ax, 17                      ; 2 uses
  %i.az = sub nsw i32 1, %i.j                     ; 3 uses
  %i.ba = trunc i32 %i.ay to i8
  store i8 %i.ba, ptr %0, align 1, !tbaa !12
  %i.bb = add i32 %2, %i.az
  %i.bc = sub i32 %1, %i.bb                       ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 1
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.be = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.au
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !16
  %i.bg = sext i32 %i.az to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr @_ZL9DECPOWERS, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %i.bj = phi i32 [ %i.bc, %.lr.ph ], [ %i.bz, %bb.h ]
  %.05974 = phi i32 [ %i.ay, %.lr.ph ], [ %i.bp, %bb.h ]
  %.173 = phi ptr [ %0, %.lr.ph ], [ %i.bx, %bb.h ] ; 3 uses
  %.16372 = phi ptr [ %i.aq, %.lr.ph ], [ %i.bk, %bb.h ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.16372, i64 1 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !12
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, %i.j
  %i.bo = mul i32 %i.bn, %i.aw
  %i.bp = lshr i32 %i.bo, 17                      ; 3 uses
  %i.bq = mul i32 %i.bp, %i.bf
  %i.br = sub i32 %i.bm, %i.bq
  %i.bs = mul i32 %i.br, %i.bi
  %i.bt = add i32 %i.bs, %.05974
  %i.bu = trunc i32 %i.bt to i8
  store i8 %i.bu, ptr %.173, align 1, !tbaa !12
  %i.bv = sub nsw i32 %i.bj, %i.j                 ; 2 uses
  %i.bw = icmp slt i32 %i.bv, 1
  br i1 %i.bw, label %._crit_edge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %.173, i64 1 ; 3 uses
  %i.by = trunc i32 %i.bp to i8
  store i8 %i.by, ptr %i.bx, align 1, !tbaa !12
  %i.bz = sub nsw i32 %i.bv, %i.az                ; 2 uses
  %i.ca = icmp slt i32 %i.bz, 1
  br i1 %i.ca, label %._crit_edge, label %bb.g, !llvm.loop !73

._crit_edge:                                      ; preds = %bb.h, %bb.g, %bb.f
  %.1.lcssa = phi ptr [ %0, %bb.f ], [ %.173, %bb.g ], [ %i.bx, %bb.h ]
  %i.cb = ptrtoint ptr %.1.lcssa to i64
  %i.cc = ptrtoint ptr %0 to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = add i32 %i.ce, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %._crit_edge, %._crit_edge80, %bb.c
  %.0 = phi i32 [ %i.cf, %._crit_edge ], [ 1, %bb.c ], [ %i.al, %._crit_edge80 ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef ptr @uprv_decNumberSameQuantum_78(ptr nofree noundef returned writeonly captures(ret: address, provenance) initializes((0, 10)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 4, !tbaa !8     ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i8, ptr %i.d, align 4, !tbaa !8     ; 2 uses
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
  %i.n = load i32, ptr %i.m, align 4, !tbaa !10
end_hunk_1
