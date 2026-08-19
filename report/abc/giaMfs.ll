inline.NumInlined: 356
inline.NumDeleted: 83
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 11
begin_hunk_0_@Abc_TtMinBase:bb.a

vector.ph:                                        ; preds = %.lr.ph.i38
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert80 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat81 = shufflevector <2 x i64> %broadcast.splatinsert80, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.by, align 8, !tbaa !54 ; 3 uses
  %wide.load82 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !54 ; 3 uses
  %i.ca = and <2 x i64> %wide.load, %broadcast.splat
  %i.cb = and <2 x i64> %wide.load82, %broadcast.splat
  %i.cc = and <2 x i64> %wide.load, %broadcast.splat77
  %i.cd = and <2 x i64> %wide.load82, %broadcast.splat77
  %i.ce = shl <2 x i64> %i.cc, %broadcast.splat79
  %i.cf = shl <2 x i64> %i.cd, %broadcast.splat79
  %i.cg = or <2 x i64> %i.ce, %i.ca
  %i.ch = or <2 x i64> %i.cf, %i.cb
  %i.ci = and <2 x i64> %wide.load, %broadcast.splat81
  %i.cj = and <2 x i64> %wide.load82, %broadcast.splat81
  %i.ck = lshr <2 x i64> %i.ci, %broadcast.splat79
  %i.cl = lshr <2 x i64> %i.cj, %broadcast.splat79
  %i.cm = or <2 x i64> %i.cg, %i.ck
  %i.cn = or <2 x i64> %i.ch, %i.cl
  store <2 x i64> %i.cm, ptr %i.by, align 8, !tbaa !54
  store <2 x i64> %i.cn, ptr %i.bz, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %Abc_TtSwapVars.exit, label %vector.body, !llvm.loop !76

scalar.ph:                                        ; preds = %.lr.ph.i38
  %i.cp = load i64, ptr %0, align 8, !tbaa !54    ; 3 uses
  %i.cq = and i64 %i.cp, %i.bs
  %i.cr = and i64 %i.cp, %i.bu
  %i.cs = shl i64 %i.cr, %i.bv
  %i.ct = or i64 %i.cs, %i.cq
  %i.cu = and i64 %i.cp, %i.bx
  %i.cv = lshr i64 %i.cu, %i.bv
  %i.cw = or i64 %i.ct, %i.cv
  store i64 %i.cw, ptr %0, align 8, !tbaa !54
  br i1 %exitcond160.not.i, label %Abc_TtSwapVars.exit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.cx = load i64, ptr %i.g, align 8, !tbaa !54  ; 3 uses
  %i.cy = and i64 %i.cx, %i.bs
  %i.cz = and i64 %i.cx, %i.bu
  %i.da = shl i64 %i.cz, %i.bv
  %i.db = or i64 %i.da, %i.cy
  %i.dc = and i64 %i.cx, %i.bx
  %i.dd = lshr i64 %i.dc, %i.bv
  %i.de = or i64 %i.db, %i.dd
  store i64 %i.de, ptr %i.g, align 8, !tbaa !54
  br i1 %exitcond160.not.i.1, label %Abc_TtSwapVars.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.df = load i64, ptr %i.h, align 8, !tbaa !54  ; 3 uses
  %i.dg = and i64 %i.df, %i.bs
  %i.dh = and i64 %i.df, %i.bu
  %i.di = shl i64 %i.dh, %i.bv
  %i.dj = or i64 %i.di, %i.dg
  %i.dk = and i64 %i.df, %i.bx
  %i.dl = lshr i64 %i.dk, %i.bv
  %i.dm = or i64 %i.dj, %i.dl
  store i64 %i.dm, ptr %i.h, align 8, !tbaa !54
  br label %Abc_TtSwapVars.exit

bb.p:                                             ; preds = %bb.n
  %i.dn = icmp slt i32 %.052, 6
  br i1 %i.dn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.do = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.dp = trunc nsw i64 %i.do to i32              ; 2 uses
  %i.dq = shl nuw i32 1, %i.dp                    ; 3 uses
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.i35

.preheader.lr.ph.i35:                             ; preds = %bb.q
  %i.dr = shl nuw nsw i32 1, %.052
  %i.ds = icmp eq i64 %i.do, 31
  %i.dt = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.du = shl i32 2, %i.dp
  %i.dv = sext i32 %i.du to i64                   ; 2 uses
  br i1 %i.ds, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i35
  %i.dw = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ao
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !54 ; 5 uses
  %i.dy = xor i64 %i.dx, -1                       ; 2 uses
  %i.dz = sext i32 %i.dq to i64                   ; 2 uses
  %smax152.i = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 1)
  %wide.trip.count153.i = zext nneg i32 %smax152.i to i64 ; 3 uses
  %i.ea = shl nuw nsw i64 %wide.trip.count153.i, 3 ; 2 uses
  %i.eb = shl nsw i64 %i.dv, 3
  %i.ec = shl nsw i64 %i.dz, 3                    ; 2 uses
  %min.iters.check86 = icmp slt i32 %i.dq, 2
  %i.ed = getelementptr i8, ptr %0, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 %i.ea
  %i.ef = getelementptr i8, ptr %0, i64 %i.ec
  %i.eg = getelementptr i8, ptr %0, i64 %i.ea
  %n.vec88 = and i64 %wide.trip.count153.i, 2147483646
  %broadcast.splatinsert89 = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat90 = shufflevector <2 x i64> %broadcast.splatinsert89, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert91 = insertelement <2 x i64> poison, i64 %i.dt, i64 0
  %broadcast.splat92 = shufflevector <2 x i64> %broadcast.splatinsert91, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert93 = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %broadcast.splat94 = shufflevector <2 x i64> %broadcast.splatinsert93, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i36

.preheader.us.i36:                                ; preds = %._crit_edge.us.i37, %.preheader.lr.ph.split.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i37 ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.0128.us.i = phi ptr [ %i.fe, %._crit_edge.us.i37 ], [ %0, %.preheader.lr.ph.split.us.i ] ; 5 uses
  %invariant.gep169.i = getelementptr [8 x i8], ptr %.0128.us.i, i64 %i.dz ; 2 uses
  br i1 %min.iters.check86, label %scalar.ph85.preheader, label %vector.memcheck

scalar.ph85.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i36
  br label %scalar.ph85

vector.memcheck:                                  ; preds = %.preheader.us.i36
  %i.eh = mul i64 %i.eb, %indvar                  ; 3 uses
  %scevgep84 = getelementptr i8, ptr %i.ee, i64 %i.eh
  %scevgep83 = getelementptr i8, ptr %i.ef, i64 %i.eh
  %scevgep = getelementptr i8, ptr %i.eg, i64 %i.eh
  %bound0 = icmp ult ptr %.0128.us.i, %scevgep84
  %bound1 = icmp ult ptr %scevgep83, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph85.preheader, label %vector.body95

vector.body95:                                    ; preds = %vector.memcheck, %vector.body95
  %index96 = phi i64 [ %index.next99, %vector.body95 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %index96 ; 2 uses
  %wide.load97 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !54, !alias.scope !77, !noalias !80 ; 2 uses
  %i.ej = and <2 x i64> %wide.load97, %broadcast.splat90
  %i.ek = lshr <2 x i64> %i.ej, %broadcast.splat92
  %i.el = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %index96 ; 2 uses
  %wide.load98 = load <2 x i64>, ptr %i.el, align 8, !tbaa !54, !alias.scope !80 ; 2 uses
  %i.em = shl <2 x i64> %wide.load98, %broadcast.splat92
  %i.en = and <2 x i64> %i.em, %broadcast.splat90
  %i.eo = and <2 x i64> %wide.load97, %broadcast.splat94
  %i.ep = or <2 x i64> %i.en, %i.eo
  store <2 x i64> %i.ep, ptr %i.ei, align 8, !tbaa !54, !alias.scope !77, !noalias !80
  %i.eq = and <2 x i64> %wide.load98, %broadcast.splat90
  %i.er = or <2 x i64> %i.eq, %i.ek
  store <2 x i64> %i.er, ptr %i.el, align 8, !tbaa !54, !alias.scope !80
  %index.next99 = add nuw i64 %index96, 2         ; 2 uses
  %i.es = icmp eq i64 %index.next99, %n.vec88
  br i1 %i.es, label %._crit_edge.us.i37, label %vector.body95, !llvm.loop !82

scalar.ph85:                                      ; preds = %scalar.ph85.preheader, %scalar.ph85
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %scalar.ph85 ], [ 0, %scalar.ph85.preheader ] ; 3 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %indvars.iv149.i ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !54 ; 2 uses
  %i.ev = and i64 %i.eu, %i.dx
  %i.ew = lshr i64 %i.ev, %i.dt
  %gep170.i = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %indvars.iv149.i ; 2 uses
  %i.ex = load i64, ptr %gep170.i, align 8, !tbaa !54 ; 2 uses
  %i.ey = shl i64 %i.ex, %i.dt
  %i.ez = and i64 %i.ey, %i.dx
  %i.fa = and i64 %i.eu, %i.dy
  %i.fb = or i64 %i.ez, %i.fa
  store i64 %i.fb, ptr %i.et, align 8, !tbaa !54
  %i.fc = and i64 %i.ex, %i.dx
  %i.fd = or i64 %i.fc, %i.ew
  store i64 %i.fd, ptr %gep170.i, align 8, !tbaa !54
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %._crit_edge.us.i37, label %scalar.ph85, !llvm.loop !83

._crit_edge.us.i37:                               ; preds = %vector.body95, %scalar.ph85
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0128.us.i, i64 %i.dv ; 2 uses
  %i.ff = icmp ult ptr %i.fe, %i.f
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ff, label %.preheader.us.i36, label %Abc_TtSwapVars.exit, !llvm.loop !84

bb.r:                                             ; preds = %bb.p
  %i.fg = add nsw i32 %.052, -6                   ; 3 uses
  %i.fh = shl nuw i32 1, %i.fg                    ; 4 uses
  %i.fi = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.fj = trunc nsw i64 %i.fi to i32              ; 2 uses
  %i.fk = shl nuw i32 1, %i.fj                    ; 2 uses
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader120.lr.ph.i

.preheader120.lr.ph.i:                            ; preds = %bb.r
  %i.fl = icmp eq i64 %i.fi, 31
  %i.fm = shl i32 2, %i.fj
  %i.fn = sext i32 %i.fm to i64                   ; 2 uses
  %.not131.i = icmp eq i32 %i.fg, 31
  %or.cond.i = select i1 %i.fl, i1 true, i1 %.not131.i
  br i1 %or.cond.i, label %Abc_TtSwapVars.exit, label %.preheader120.us.us.preheader.i

.preheader120.us.us.preheader.i:                  ; preds = %.preheader120.lr.ph.i
  %i.fo = shl i32 2, %i.fg                        ; 3 uses
  %smax.i28 = tail call i32 @llvm.smax.i32(i32 %i.fh, i32 1) ; 2 uses
  %i.fp = sext i32 %i.fo to i64                   ; 5 uses
  %i.fq = sext i32 %i.fh to i64                   ; 2 uses
  %i.fr = sext i32 %i.fk to i64                   ; 4 uses
  %wide.trip.count.i29 = zext nneg i32 %smax.i28 to i64 ; 4 uses
  %i.fs = shl nsw i64 %i.fq, 3                    ; 2 uses
  %i.ft = shl nsw i64 %i.fn, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.fp, i64 %i.fr)
  %i.fu = icmp slt i32 %i.fo, %i.fk
  %umin = zext i1 %i.fu to i64                    ; 2 uses
  %i.fv = or disjoint i64 %umin, %i.fp
  %i.fw = sub i64 %smax, %i.fv
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %4 = udiv i64 %i.fw, %umax
  %5 = add i64 %4, %umin
  %i.fx = shl i64 %5, 3
  %6 = mul i64 %i.fx, %i.fp                       ; 2 uses
  %7 = shl nuw nsw i64 %wide.trip.count.i29, 3    ; 2 uses
  %i.fy = shl nsw i64 %i.fr, 3                    ; 2 uses
  %8 = getelementptr i8, ptr %0, i64 %i.fs
  %i.fz = getelementptr i8, ptr %0, i64 %i.fy
  %i.ga = getelementptr i8, ptr %0, i64 %6
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fs
  %i.gc = getelementptr i8, ptr %i.gb, i64 %7
  %i.gd = getelementptr i8, ptr %0, i64 %6
  %9 = getelementptr i8, ptr %i.gd, i64 %i.fy
  %i.ge = getelementptr i8, ptr %9, i64 %7
  %min.iters.check115 = icmp slt i32 %i.fh, 6
  %stride.check = icmp slt i32 %i.fo, 0
  %n.vec117 = and i64 %wide.trip.count.i29, 2147483644
  %xtraiter = and i64 %wide.trip.count.i29, 1
  %i.gf = icmp slt i32 %i.fh, 2
  %unroll_iter = and i64 %wide.trip.count.i29, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod135 = trunc i32 %smax.i28 to i1
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge124.us.us.i, %.preheader120.us.us.preheader.i
  %indvar104 = phi i64 [ %indvar.next105, %._crit_edge124.us.us.i ], [ 0, %.preheader120.us.us.preheader.i ] ; 2 uses
  %.1125.us.us.i = phi ptr [ %i.gz, %._crit_edge124.us.us.i ], [ %0, %.preheader120.us.us.preheader.i ] ; 3 uses
  %i.gg = mul i64 %i.ft, %indvar104               ; 4 uses
  %scevgep106 = getelementptr i8, ptr %8, i64 %i.gg
  %scevgep108 = getelementptr i8, ptr %i.fz, i64 %i.gg
  %invariant.gep.i30 = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.fq
  %invariant.gep167.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.fr
  %scevgep107 = getelementptr i8, ptr %i.gc, i64 %i.gg
  %scevgep109.a = getelementptr i8, ptr %i.ge, i64 %i.gg
  %bound0110 = icmp ult ptr %scevgep106, %scevgep109.a
  %bound1111.a = icmp ult ptr %scevgep108, %scevgep107
  %found.conflict112 = and i1 %bound0110, %bound1111.a
  %10 = or i1 %found.conflict112, %stride.check
  br label %.preheader119.us.us.i

scalar.ph114:                                     ; preds = %scalar.ph114.preheader.a, %scalar.ph114
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33.1, %scalar.ph114 ], [ 0, %scalar.ph114.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph114 ], [ 0, %scalar.ph114.preheader.a ]
  %i.gh = getelementptr [8 x i8], ptr %gep.i31, i64 %indvars.iv.i32 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !54
  %i.gj = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i32 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !54
  store i64 %i.gk, ptr %i.gh, align 8, !tbaa !54
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !54
  %indvars.iv.next.i33 = or disjoint i64 %indvars.iv.i32, 1 ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %gep.i31, i64 %indvars.iv.next.i33 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !54
  %i.gn = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.next.i33 ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !54
  store i64 %i.go, ptr %i.gl, align 8, !tbaa !54
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !54
  %indvars.iv.next.i33.1 = add nuw nsw i64 %indvars.iv.i32, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph114, !llvm.loop !85

.preheader119.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.us.us.i
  %indvars.iv146.i = phi i64 [ 0, %.preheader120.us.us.i ], [ %indvars.iv.next147.i, %._crit_edge.us.us.i ] ; 3 uses
  %gep.i31 = getelementptr [8 x i8], ptr %invariant.gep.i30, i64 %indvars.iv146.i ; 4 uses
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i.a, i64 %indvars.iv146.i ; 4 uses
  %brmerge = select i1 %min.iters.check115, i1 true, i1 %10
  br i1 %brmerge, label %scalar.ph114.preheader.a, label %vector.body118

scalar.ph114.preheader.a:                         ; preds = %.preheader119.us.us.i
  br i1 %i.gf, label %scalar.ph114.epil.preheader, label %scalar.ph114

vector.body118:                                   ; preds = %.preheader119.us.us.i, %vector.body118
  %index119 = phi i64 [ %index.next124, %vector.body118 ], [ 0, %.preheader119.us.us.i ] ; 3 uses
  %i.gp = getelementptr [8 x i8], ptr %gep.i31, i64 %index119 ; 3 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 16     ; 2 uses
  %wide.load120 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !54, !alias.scope !86, !noalias !89
  %wide.load121 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !54, !alias.scope !86, !noalias !89
  %i.gr = getelementptr [8 x i8], ptr %gep168.i, i64 %index119 ; 3 uses
  %i.gs = getelementptr i8, ptr %i.gr, i64 16     ; 2 uses
  %wide.load122 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !54, !alias.scope !89
  %wide.load123 = load <2 x i64>, ptr %i.gs, align 8, !tbaa !54, !alias.scope !89
  store <2 x i64> %wide.load122, ptr %i.gp, align 8, !tbaa !54, !alias.scope !86, !noalias !89
  store <2 x i64> %wide.load123, ptr %i.gq, align 8, !tbaa !54, !alias.scope !86, !noalias !89
  store <2 x i64> %wide.load120, ptr %i.gr, align 8, !tbaa !54, !alias.scope !89
  store <2 x i64> %wide.load121, ptr %i.gs, align 8, !tbaa !54, !alias.scope !89
  %index.next124 = add nuw i64 %index119, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.gt, label %._crit_edge.us.us.i, label %vector.body118, !llvm.loop !91

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph114
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph114.epil.preheader

scalar.ph114.epil.preheader:                      ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph114.preheader.a
  %indvars.iv.i32.epil.init = phi i64 [ 0, %scalar.ph114.preheader.a ], [ %indvars.iv.next.i33.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod135)
  %i.gu = getelementptr [8 x i8], ptr %gep.i31, i64 %indvars.iv.i32.epil.init ; 2 uses
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !54
  %i.gw = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i32.epil.init ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !54
  store i64 %i.gx, ptr %i.gu, align 8, !tbaa !54
  store i64 %i.gv, ptr %i.gw, align 8, !tbaa !54
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body118, %scalar.ph114.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.fp ; 2 uses
  %i.gy = icmp slt i64 %indvars.iv.next147.i, %i.fr
  br i1 %i.gy, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !92

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.gz = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.fn ; 2 uses
  %i.ha = icmp ult ptr %i.gz, %i.f
  %indvar.next105 = add i64 %indvar104, 1
  br i1 %i.ha, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !93

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i37, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %.preheader120.lr.ph.i, %bb.r, %.preheader.lr.ph.i35, %bb.q, %bb.o, %bb.m, %Abc_TtHasVar.exit.thread42
  %i.hb = add nsw i32 %.052, 1
  br label %Abc_TtHasVar.exit.thread

Abc_TtHasVar.exit.thread:                         ; preds = %._crit_edge.us.i, %bb.e, %bb.d, %bb.g, %.preheader.lr.ph.i, %Abc_TtHasVar.exit, %Abc_TtSwapVars.exit
  %.1 = phi i32 [ %i.hb, %Abc_TtSwapVars.exit ], [ %.052, %Abc_TtHasVar.exit ], [ %.052, %.preheader.lr.ph.i ], [ %.052, %bb.g ], [ %.052, %bb.d ], [ %.052, %bb.e ], [ %.052, %._crit_edge.us.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !94

._crit_edge:                                      ; preds = %Abc_TtHasVar.exit.thread, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %Abc_TtHasVar.exit.thread ]
  ret i32 %.0.lcssa
}

declare void @Gia_ObjComputeTruthTableStop(ptr noundef) local_unnamed_addr #3

declare i32 @Tim_ManBoxInputNum(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Tim_ManBoxOutputNum(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @Tim_ManBoxIsBlack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @Sfm_NtkConstruct(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define ptr @Gia_ManInsertMfs(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 10 uses
  %i.e = tail call i32 @Gia_ManBoxNum(ptr noundef %0) #20 ; 11 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.split330, label %Vec_WecStart.exit

Vec_WecStart.exit:                                ; preds = %bb.a
  %i.f = tail call i32 @Tim_ManPiNum(ptr noundef %i.d) #20
  %i.g = tail call i32 @Tim_ManPoNum(ptr noundef %i.d) #20
  %i.h = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.e, i32 8) ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.h, align 8, !tbaa !35
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 16) #22
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.j, ptr %i.l, align 8, !tbaa !37
  store i32 %i.e, ptr %i.k, align 4, !tbaa !38
  br label %bb.b

.split330:                                        ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 16
  %.val382 = load i32, ptr %i.m, align 8, !tbaa !30 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 64
  %.val383 = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.o = getelementptr i8, ptr %.val383, i64 4
  %.val383.val = load i32, ptr %i.o, align 4, !tbaa !32
  %i.p = sub nsw i32 %.val383.val, %.val382
  %i.q = getelementptr i8, ptr %0, i64 72
  %.val385 = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.r = getelementptr i8, ptr %.val385, i64 4
  %.val385.val = load i32, ptr %i.r, align 4, !tbaa !32
  %i.s = sub nsw i32 %.val385.val, %.val382
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16)
  br label %bb.b

bb.b:                                             ; preds = %.split330, %Vec_WecStart.exit
  %i.t = phi i32 [ %i.f, %Vec_WecStart.exit ], [ %i.p, %.split330 ] ; 3 uses
  %phi.call = phi ptr [ %i.h, %Vec_WecStart.exit ], [ %calloc, %.split330 ] ; 6 uses
  %i.u = phi i32 [ %i.g, %Vec_WecStart.exit ], [ %i.s, %.split330 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !34
  %.not354 = icmp eq ptr %i.d, null               ; 3 uses
  br i1 %.not354, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @Tim_ManBlackBoxIoNum(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.v = getelementptr i8, ptr %0, i64 64         ; 5 uses
  %.val387 = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.w = getelementptr i8, ptr %.val387, i64 4
  %.val387.val = load i32, ptr %i.w, align 4, !tbaa !32
  %i.x = add nsw i32 %.val387.val, 1
  %i.y = call i32 @Gia_ManLutNum(ptr noundef nonnull %0) #20
  %i.z = add nsw i32 %i.x, %i.y
  %i.aa = getelementptr i8, ptr %0, i64 72        ; 5 uses
  %.val390 = load ptr, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr i8, ptr %.val390, i64 4
  %.val390.val = load i32, ptr %i.ab, align 4, !tbaa !32
  %i.ac = add nsw i32 %i.z, %.val390.val
  %i.ad = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ae = add nsw i32 %i.ac, %i.ad
  %i.af = load i32, ptr %i.b, align 4, !tbaa !34  ; 2 uses
  %i.ag = add nsw i32 %i.ae, %i.af                ; 11 uses
  %i.ah = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 6 uses
  %i.ai = add i32 %i.ag, -1
  %or.cond.i.i459 = icmp ult i32 %i.ai, 15
  %spec.store.select.i.i460 = select i1 %or.cond.i.i459, i32 16, i32 %i.ag ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i460, ptr %i.ah, align 8, !tbaa !48
  %.not.i.i461 = icmp eq i32 %spec.store.select.i.i460, 0
  br i1 %.not.i.i461, label %Vec_IntAlloc.exit.thread.i474, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.i:                              ; preds = %bb.d
  %i.ak = sext i32 %spec.store.select.i.i460 to i64
  %i.al = shl nsw i64 %i.ak, 2                    ; 3 uses
  %i.am = call noalias ptr @malloc(i64 noundef %i.al) #21 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !32
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %Vec_IntAlloc.exit.i465, label %bb.e

bb.e:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ao = sext i32 %i.ag to i64
  %i.ap = shl nsw i64 %i.ao, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.am, i8 -1, i64 %i.ap, i1 false)
  br label %Vec_IntAlloc.exit.i465

Vec_IntAlloc.exit.i465:                           ; preds = %Vec_IntAlloc.exit.i, %bb.e
  %i.aq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %spec.store.select.i.i460, ptr %i.aq, align 8, !tbaa !48
  %i.as = call noalias ptr @malloc(i64 noundef %i.al) #21 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.as, ptr %i.at, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.ar, align 4, !tbaa !32
  %.not.i466 = icmp eq ptr %i.as, null
  br i1 %.not.i466, label %Vec_IntAlloc.exit.i472, label %bb.f

bb.f:                                             ; preds = %Vec_IntAlloc.exit.i465
  %i.au = sext i32 %i.ag to i64
  %i.av = shl nsw i64 %i.au, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.as, i8 -1, i64 %i.av, i1 false)
  br label %Vec_IntAlloc.exit.i472

Vec_IntAlloc.exit.thread.i474:                    ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr null, ptr %i.aw, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.aj, align 4, !tbaa !32
  %i.ax = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 0, ptr %i.ax, align 8, !tbaa !48
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %i.az, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.ay, align 4, !tbaa !32
  %i.ba = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 0, ptr %i.ba, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr null, ptr %i.bc, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.bb, align 4, !tbaa !32
  br label %Vec_IntStartFull.exit475

Vec_IntAlloc.exit.i472:                           ; preds = %Vec_IntAlloc.exit.i465, %bb.f
  %i.bd = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  store i32 %spec.store.select.i.i460, ptr %i.bd, align 8, !tbaa !48
  %i.bf = call noalias ptr @malloc(i64 noundef %i.al) #21 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !49
  store i32 %i.ag, ptr %i.be, align 4, !tbaa !32
  %.not.i473 = icmp eq ptr %i.bf, null
  br i1 %.not.i473, label %Vec_IntStartFull.exit475, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit.i472
  %i.bh = sext i32 %i.ag to i64
  %i.bi = shl nsw i64 %i.bh, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bf, i8 -1, i64 %i.bi, i1 false)
  br label %Vec_IntStartFull.exit475

Vec_IntStartFull.exit475:                         ; preds = %Vec_IntAlloc.exit.thread.i474, %Vec_IntAlloc.exit.i472, %bb.g
  %.val398 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i474 ], [ %i.am, %Vec_IntAlloc.exit.i472 ], [ %i.am, %bb.g ] ; 7 uses
end_hunk_0
