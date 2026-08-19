inline.NumInlined: 49
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_CutPerformCheckXX:bb.a

vector.ph72:                                      ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert78 = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat79 = shufflevector <2 x i64> %broadcast.splatinsert78, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph72
  %index81 = phi i64 [ 0, %vector.ph72 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index81 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.ds, align 16, !tbaa !68 ; 3 uses
  %wide.load83 = load <2 x i64>, ptr %i.dt, align 16, !tbaa !68 ; 3 uses
  %i.du = and <2 x i64> %wide.load82, %broadcast.splat
  %i.dv = and <2 x i64> %wide.load83, %broadcast.splat
  %i.dw = and <2 x i64> %wide.load82, %broadcast.splat75
  %i.dx = and <2 x i64> %wide.load83, %broadcast.splat75
  %i.dy = shl <2 x i64> %i.dw, %broadcast.splat77
  %i.dz = shl <2 x i64> %i.dx, %broadcast.splat77
  %i.ea = or <2 x i64> %i.dy, %i.du
  %i.eb = or <2 x i64> %i.dz, %i.dv
  %i.ec = and <2 x i64> %wide.load82, %broadcast.splat79
  %i.ed = and <2 x i64> %wide.load83, %broadcast.splat79
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat77
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat77
  %i.eg = or <2 x i64> %i.ea, %i.ee
  %i.eh = or <2 x i64> %i.eb, %i.ef
  store <2 x i64> %i.eg, ptr %i.ds, align 16, !tbaa !68
  store <2 x i64> %i.eh, ptr %i.dt, align 16, !tbaa !68
  %index.next84 = add nuw i64 %index81, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next84, %n.vec73
  br i1 %i.ei, label %Abc_TtSwapVars.exit.i, label %vector.body80, !llvm.loop !90

scalar.ph70:                                      ; preds = %.lr.ph.i37.i
  %i.ej = load i64, ptr %i.a, align 16, !tbaa !68 ; 3 uses
  %i.ek = and i64 %i.ej, %i.dm
  %i.el = and i64 %i.ej, %i.do
  %i.em = shl i64 %i.el, %i.dp
  %i.en = or i64 %i.em, %i.ek
  %i.eo = and i64 %i.ej, %i.dr
  %i.ep = lshr i64 %i.eo, %i.dp
  %i.eq = or i64 %i.en, %i.ep
  store i64 %i.eq, ptr %i.a, align 16, !tbaa !68
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph70.1

scalar.ph70.1:                                    ; preds = %scalar.ph70
  %i.er = load i64, ptr %i.az, align 8, !tbaa !68 ; 3 uses
  %i.es = and i64 %i.er, %i.dm
  %i.et = and i64 %i.er, %i.do
  %i.eu = shl i64 %i.et, %i.dp
  %i.ev = or i64 %i.eu, %i.es
  %i.ew = and i64 %i.er, %i.dr
  %i.ex = lshr i64 %i.ew, %i.dp
  %i.ey = or i64 %i.ev, %i.ex
  store i64 %i.ey, ptr %i.az, align 8, !tbaa !68
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph70.2

scalar.ph70.2:                                    ; preds = %scalar.ph70.1
  %i.ez = load i64, ptr %i.ba, align 16, !tbaa !68 ; 3 uses
  %i.fa = and i64 %i.ez, %i.dm
  %i.fb = and i64 %i.ez, %i.do
  %i.fc = shl i64 %i.fb, %i.dp
  %i.fd = or i64 %i.fc, %i.fa
  %i.fe = and i64 %i.ez, %i.dr
  %i.ff = lshr i64 %i.fe, %i.dp
  %i.fg = or i64 %i.fd, %i.ff
  store i64 %i.fg, ptr %i.ba, align 16, !tbaa !68
  br label %Abc_TtSwapVars.exit.i

bb.l:                                             ; preds = %bb.j
  %i.fh = icmp slt i32 %.019.i, 6
  br i1 %i.fh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fi = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.fj = trunc nsw i64 %i.fi to i32              ; 2 uses
  %i.fk = shl nuw i32 1, %i.fj                    ; 3 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.m
  %i.fl = shl nuw nsw i32 1, %.019.i
  %i.fm = icmp eq i64 %i.fi, 31
  %i.fn = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fo = shl i32 2, %i.fj
  %i.fp = sext i32 %i.fo to i64                   ; 2 uses
  br i1 %i.fm, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i34.i
  %i.fq = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.df
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !68 ; 5 uses
  %i.fs = xor i64 %i.fr, -1                       ; 2 uses
  %i.ft = sext i32 %i.fk to i64                   ; 2 uses
  %smax152.i.i = call i32 @llvm.smax.i32(i32 %i.fk, i32 1)
  %wide.trip.count153.i.i = zext nneg i32 %smax152.i.i to i64 ; 3 uses
  %i.fu = shl nuw nsw i64 %wide.trip.count153.i.i, 3 ; 2 uses
  %i.fv = shl nsw i64 %i.fp, 3
  %i.fw = shl nsw i64 %i.ft, 3                    ; 2 uses
  %min.iters.check94 = icmp slt i32 %i.fk, 2
  %i.fx = getelementptr i8, ptr %i.a, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu
  %i.fz = getelementptr i8, ptr %i.a, i64 %i.fw
  %i.ga = getelementptr i8, ptr %i.a, i64 %i.fu
  %n.vec96 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert97 = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat98 = shufflevector <2 x i64> %broadcast.splatinsert97, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert99 = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat100 = shufflevector <2 x i64> %broadcast.splatinsert99, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert101 = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat102 = shufflevector <2 x i64> %broadcast.splatinsert101, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.split.us.i.i
  %indvar89 = phi i64 [ %indvar.next90, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.gy, %._crit_edge.us.i36.i ], [ %i.a, %.preheader.lr.ph.split.us.i.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.ft ; 2 uses
  br i1 %min.iters.check94, label %scalar.ph93.preheader, label %vector.memcheck88

scalar.ph93.preheader:                            ; preds = %vector.memcheck88, %.preheader.us.i35.i
  br label %scalar.ph93

vector.memcheck88:                                ; preds = %.preheader.us.i35.i
  %i.gb = mul i64 %i.fv, %indvar89                ; 3 uses
  %scevgep92 = getelementptr i8, ptr %i.fy, i64 %i.gb
  %scevgep91 = getelementptr i8, ptr %i.fz, i64 %i.gb
  %scevgep = getelementptr i8, ptr %i.ga, i64 %i.gb
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep92
  %bound1 = icmp ult ptr %scevgep91, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph93.preheader, label %vector.body103

vector.body103:                                   ; preds = %vector.memcheck88, %vector.body103
  %index104 = phi i64 [ %index.next107, %vector.body103 ], [ 0, %vector.memcheck88 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index104 ; 2 uses
  %wide.load105 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !68, !alias.scope !91, !noalias !94 ; 2 uses
  %i.gd = and <2 x i64> %wide.load105, %broadcast.splat98
  %i.ge = lshr <2 x i64> %i.gd, %broadcast.splat100
  %i.gf = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index104 ; 2 uses
  %wide.load106 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !68, !alias.scope !94 ; 2 uses
  %i.gg = shl <2 x i64> %wide.load106, %broadcast.splat100
  %i.gh = and <2 x i64> %i.gg, %broadcast.splat98
  %i.gi = and <2 x i64> %wide.load105, %broadcast.splat102
  %i.gj = or <2 x i64> %i.gh, %i.gi
  store <2 x i64> %i.gj, ptr %i.gc, align 8, !tbaa !68, !alias.scope !91, !noalias !94
  %i.gk = and <2 x i64> %wide.load106, %broadcast.splat98
  %i.gl = or <2 x i64> %i.gk, %i.ge
  store <2 x i64> %i.gl, ptr %i.gf, align 8, !tbaa !68, !alias.scope !94
  %index.next107 = add nuw i64 %index104, 2       ; 2 uses
  %i.gm = icmp eq i64 %index.next107, %n.vec96
  br i1 %i.gm, label %._crit_edge.us.i36.i, label %vector.body103, !llvm.loop !96

scalar.ph93:                                      ; preds = %scalar.ph93.preheader, %scalar.ph93
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph93 ], [ 0, %scalar.ph93.preheader ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !68 ; 2 uses
  %i.gp = and i64 %i.go, %i.fr
  %i.gq = lshr i64 %i.gp, %i.fn
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gr = load i64, ptr %gep170.i.i, align 8, !tbaa !68 ; 2 uses
  %i.gs = shl i64 %i.gr, %i.fn
  %i.gt = and i64 %i.gs, %i.fr
  %i.gu = and i64 %i.go, %i.fs
  %i.gv = or i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !68
  %i.gw = and i64 %i.gr, %i.fr
  %i.gx = or i64 %i.gw, %i.gq
  store i64 %i.gx, ptr %gep170.i.i, align 8, !tbaa !68
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph93, !llvm.loop !97

._crit_edge.us.i36.i:                             ; preds = %vector.body103, %scalar.ph93
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.fp ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %i.ay
  %indvar.next90 = add i64 %indvar89, 1
  br i1 %i.gz, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !98

bb.n:                                             ; preds = %bb.l
  %i.ha = add nsw i32 %.019.i, -6                 ; 3 uses
  %i.hb = shl nuw i32 1, %i.ha                    ; 4 uses
  %i.hc = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.hd = trunc nsw i64 %i.hc to i32              ; 2 uses
  %i.he = shl nuw i32 1, %i.hd                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.lr.ph.i.i

.preheader120.lr.ph.i.i:                          ; preds = %bb.n
  %i.hf = icmp eq i64 %i.hc, 31
  %i.hg = shl i32 2, %i.hd
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %.not131.i.i = icmp eq i32 %i.ha, 31
  %or.cond.i.i = select i1 %i.hf, i1 true, i1 %.not131.i.i
  br i1 %or.cond.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.us.us.preheader.i.i

.preheader120.us.us.preheader.i.i:                ; preds = %.preheader120.lr.ph.i.i
  %i.hi = shl i32 2, %i.ha                        ; 3 uses
  %smax.i27.i = call i32 @llvm.smax.i32(i32 %i.hb, i32 1) ; 2 uses
  %i.hj = sext i32 %i.hi to i64                   ; 6 uses
  %i.hk = sext i32 %i.hb to i64                   ; 2 uses
  %i.hl = sext i32 %i.he to i64                   ; 4 uses
  %wide.trip.count.i28.i = zext nneg i32 %smax.i27.i to i64 ; 4 uses
  %i.hm = shl nsw i64 %i.hk, 3                    ; 2 uses
  %i.hn = shl nsw i64 %i.hh, 3
  %smax = call i64 @llvm.smax.i64(i64 %i.hj, i64 %i.hl)
  %i.ho = icmp slt i32 %i.hi, %i.he
  %umin = zext i1 %i.ho to i64                    ; 3 uses
  %i.hp = or disjoint i64 %umin, %i.hj
  %i.hq = sub i64 %smax, %i.hp                    ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.hj, i64 1) ; 2 uses
  %5 = shl nuw nsw i64 %wide.trip.count.i28.i, 3  ; 2 uses
  %i.hr = shl nsw i64 %i.hl, 3                    ; 2 uses
  %6 = udiv i64 %i.hq, %umax
  %7 = add i64 %6, %umin
  %i.hs = shl i64 %7, 3
  %8 = mul i64 %i.hs, %i.hj
  %i.ht = getelementptr i8, ptr %i.a, i64 %i.hm
  %i.hu = getelementptr i8, ptr %i.a, i64 %i.hr
  %i.hv = getelementptr i8, ptr %i.a, i64 %8
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hr
  %i.hx = getelementptr i8, ptr %i.hw, i64 %5
  %min.iters.check123 = icmp slt i32 %i.hb, 12
  %i.hy = getelementptr i8, ptr %i.a, i64 %i.hm
  %invariant.gep = getelementptr i8, ptr %i.hy, i64 %5
  %stride.check = icmp slt i32 %i.hi, 0
  %n.vec125 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter146 = and i64 %wide.trip.count.i28.i, 1
  %i.hz = icmp slt i32 %i.hb, 2
  %unroll_iter150 = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod148.not = icmp eq i64 %xtraiter146, 0
  %lcmp.mod149 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar112 = phi i64 [ %indvar.next113, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.it, %._crit_edge124.us.us.i.i ], [ %i.a, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.ia = mul i64 %i.hn, %indvar112               ; 4 uses
  %scevgep114 = getelementptr i8, ptr %i.ht, i64 %i.ia
  %scevgep116 = getelementptr i8, ptr %i.hu, i64 %i.ia
  %scevgep117 = getelementptr i8, ptr %i.hx, i64 %i.ia
  %invariant.gep167.i.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hk
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hl
  %scevgep117.a = getelementptr i8, ptr %invariant.gep, i64 %i.ia
  %bound1119.a = icmp ult ptr %scevgep114, %scevgep117
  br label %.preheader119.us.us.i.i

scalar.ph122:                                     ; preds = %scalar.ph122.preheader, %scalar.ph122
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph122 ], [ 0, %scalar.ph122.preheader ] ; 4 uses
  %niter151 = phi i64 [ %niter151.next.1, %scalar.ph122 ], [ 0, %scalar.ph122.preheader ]
  %i.ib = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !68
  %i.id = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !68
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !68
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !68
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !68
  %i.ih = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !68
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !68
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !68
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter151.next.1 = add i64 %niter151, 2         ; 2 uses
  %niter151.ncmp.1 = icmp eq i64 %niter151.next.1, %unroll_iter150
  br i1 %niter151.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph122, !llvm.loop !99

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ 0, %.preheader120.us.us.i.i ], [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i.a, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  br i1 %min.iters.check123, label %scalar.ph122.preheader, label %scalar.ph122.preheader.a

scalar.ph122.preheader:                           ; preds = %scalar.ph122.preheader.a, %.preheader119.us.us.i.i
  br i1 %i.hz, label %scalar.ph122.epil.preheader, label %scalar.ph122

scalar.ph122.preheader.a:                         ; preds = %.preheader119.us.us.i.i
  %9 = udiv i64 %i.hq, %umax
  %10 = add i64 %9, %umin
  %11 = shl i64 %10, 3
  %12 = mul i64 %11, %i.hj
  %gep153 = getelementptr i8, ptr %scevgep117.a, i64 %12
  %bound1119 = icmp ult ptr %scevgep116, %gep153
  %found.conflict120 = and i1 %bound1119.a, %bound1119
  %13 = or i1 %found.conflict120, %stride.check
  br i1 %13, label %scalar.ph122.preheader, label %vector.body126

vector.body126:                                   ; preds = %scalar.ph122.preheader.a, %vector.body126
  %index127 = phi i64 [ %index.next132, %vector.body126 ], [ 0, %scalar.ph122.preheader.a ] ; 3 uses
  %i.ij = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index127 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %wide.load128 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !68, !alias.scope !100, !noalias !103
  %wide.load129 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !68, !alias.scope !100, !noalias !103
  %i.il = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index127 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16     ; 2 uses
  %wide.load130 = load <2 x i64>, ptr %i.il, align 8, !tbaa !68, !alias.scope !103
  %wide.load131 = load <2 x i64>, ptr %i.im, align 8, !tbaa !68, !alias.scope !103
  store <2 x i64> %wide.load130, ptr %i.ij, align 8, !tbaa !68, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load131, ptr %i.ik, align 8, !tbaa !68, !alias.scope !100, !noalias !103
  store <2 x i64> %wide.load128, ptr %i.il, align 8, !tbaa !68, !alias.scope !103
  store <2 x i64> %wide.load129, ptr %i.im, align 8, !tbaa !68, !alias.scope !103
  %index.next132 = add nuw i64 %index127, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.in, label %._crit_edge.us.us.i.i, label %vector.body126, !llvm.loop !105

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph122
  br i1 %lcmp.mod148.not, label %._crit_edge.us.us.i.i, label %scalar.ph122.epil.preheader

scalar.ph122.epil.preheader:                      ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %scalar.ph122.preheader
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %scalar.ph122.preheader ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod149)
  %i.io = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !68
  %i.iq = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !68
  store i64 %i.ir, ptr %i.io, align 8, !tbaa !68
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !68
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body126, %scalar.ph122.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.hj ; 2 uses
  %i.is = icmp slt i64 %indvars.iv.next147.i.i, %i.hl
  br i1 %i.is, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !106

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.it = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hh ; 2 uses
  %i.iu = icmp ult ptr %i.it, %i.ay
  %indvar.next113 = add i64 %indvar112, 1
  br i1 %i.iu, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !107

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body80, %scalar.ph70, %scalar.ph70.1, %scalar.ph70.2, %.preheader120.lr.ph.i.i, %bb.n, %.preheader.lr.ph.i34.i, %bb.m, %bb.k, %Abc_TtHasVar.exit.thread4.i
  %i.iv = add nsw i32 %.019.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.e, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.g, %bb.d
  %.1.i = phi i32 [ %i.iv, %Abc_TtSwapVars.exit.i ], [ %.019.i, %bb.e ], [ %.019.i, %.preheader.lr.ph.i.i ], [ %.019.i, %bb.g ], [ %.019.i, %bb.d ], [ %.019.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i
  br i1 %exitcond.not.i32, label %Abc_TtMinBase.exit, label %.lr.ph.split.i, !llvm.loop !86

Abc_TtMinBase.exit.loopexit:                      ; preds = %Abc_TtHasVar.exit.thread.us.i
  store i64 %i.cg, ptr %i.a, align 16
  br label %Abc_TtMinBase.exit

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtMinBase.exit.loopexit, %bb.c, %Abc_TtStretch6.exit
  %.024 = phi i32 [ %3, %Abc_TtStretch6.exit ], [ 0, %bb.c ], [ %.1.us.i, %Abc_TtMinBase.exit.loopexit ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 3 uses
  %i.iw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %i.ix = and i64 %i.iw, 4294967295
  %.not26 = icmp eq i64 %i.ix, 2
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Abc_TtMinBase.exit
  %i.iy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %Abc_TtMinBase.exit
  %i.iz = load i8, ptr %4, align 1, !tbaa !26     ; 2 uses
  %i.ja = sext i8 %i.iz to i32
  %i.jb = add nsw i32 %i.ja, -48                  ; 4 uses
  %i.jc = add i8 %i.iz, -55
  %or.cond = icmp ult i8 %i.jc, -4
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.jb) ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.je = shl nuw nsw i32 %i.jb, 1
  %.not27 = icmp slt i32 %.024, %i.je
  br i1 %.not27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.024, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %.not28 = icmp sgt i32 %.024, %i.jb
  br i1 %.not28, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jg = call i32 @If_CluCheckXX(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.jb, i32 noundef %2, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.s, %bb.u, %bb.t, %bb.o
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ %i.jg, %bb.u ], [ 1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind allocsize(1) }
attributes #18 = { nounwind }
attributes #19 = { nounwind allocsize(0,1) }
attributes #20 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !5, i64 0}
!11 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !12, i64 8}
!12 = !{!"p1 int", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!11, !12, i64 8}
!15 = !{!11, !5, i64 4}
!16 = !{!5, !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"any p2 pointer", !13, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"p1 _ZTS9If_Hte_t_", !13, i64 0}
!21 = !{!22, !5, i64 12}
!22 = !{!"If_Hte_t_", !20, i64 0, !5, i64 8, !5, i64 12, !6, i64 16}
!23 = distinct !{!23, !9}
!24 = distinct !{!24, !9}
!25 = distinct !{!25, !9}
!26 = !{!6, !6, i64 0}
!27 = distinct !{!27, !9}
!28 = distinct !{!28, !9}
!29 = !{!30, !32, i64 8}
!30 = !{!"If_Man_t_", !31, i64 0, !32, i64 8, !33, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !6, i64 64, !5, i64 84, !35, i64 88, !35, i64 92, !35, i64 96, !35, i64 100, !5, i64 104, !35, i64 108, !5, i64 112, !5, i64 116, !6, i64 120, !36, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !37, i64 176, !6, i64 184, !5, i64 568, !5, i64 572, !5, i64 576, !37, i64 584, !37, i64 592, !38, i64 600, !38, i64 608, !38, i64 616, !34, i64 624, !37, i64 632, !5, i64 640, !5, i64 644, !5, i64 648, !6, i64 652, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !39, i64 736, !39, i64 744, !40, i64 752, !40, i64 760, !40, i64 768, !5, i64 776, !5, i64 780, !6, i64 784, !6, i64 912, !5, i64 1040, !5, i64 1044, !5, i64 1048, !5, i64 1052, !41, i64 1056, !6, i64 1064, !6, i64 1192, !6, i64 1320, !6, i64 1448, !6, i64 1576, !6, i64 1704, !6, i64 1832, !42, i64 1960, !37, i64 1968, !43, i64 1976, !44, i64 1984, !6, i64 1992, !5, i64 2024, !5, i64 2028, !5, i64 2032, !6, i64 2040, !6, i64 2088, !6, i64 2096, !37, i64 2104, !6, i64 2112, !34, i64 2176, !13, i64 2184, !37, i64 2192, !6, i64 2200, !43, i64 2264, !37, i64 2272, !37, i64 2280, !37, i64 2288, !33, i64 2296, !45, i64 2304, !5, i64 2312, !6, i64 2316, !6, i64 2444, !35, i64 2572, !5, i64 2576, !46, i64 2584, !37, i64 2592, !6, i64 2600, !6, i64 2608, !6, i64 2616, !39, i64 2632}
!31 = !{!"p1 omnipotent char", !13, i64 0}
!32 = !{!"p1 _ZTS9If_Par_t_", !13, i64 0}
!33 = !{!"p1 _ZTS9If_Obj_t_", !13, i64 0}
!34 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!35 = !{!"float", !6, i64 0}
!36 = !{!"p1 long", !13, i64 0}
!37 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!38 = !{!"p1 _ZTS10Vec_Wrd_t_", !13, i64 0}
!39 = !{!"p1 _ZTS12Mem_Fixed_t_", !13, i64 0}
!40 = !{!"p1 _ZTS9If_Set_t_", !13, i64 0}
!41 = !{!"p1 _ZTS12If_DsdMan_t_", !13, i64 0}
!42 = !{!"p1 _ZTS14Hash_IntMan_t_", !13, i64 0}
!43 = !{!"p1 _ZTS10Vec_Str_t_", !13, i64 0}
!44 = !{!"p1 _ZTS10Vec_Mem_t_", !13, i64 0}
!45 = !{!"p1 _ZTS9If_Cut_t_", !13, i64 0}
!46 = !{!"p1 _ZTS10Tim_Man_t_", !13, i64 0}
!47 = !{!48, !5, i64 0}
!48 = !{!"If_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !35, i64 24, !35, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !31, i64 208, !5, i64 216, !35, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !35, i64 280, !35, i64 284, !35, i64 288, !49, i64 296, !50, i64 304, !51, i64 312, !51, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368}
!49 = !{!"p1 _ZTS12If_LibLut_t_", !13, i64 0}
!50 = !{!"p1 _ZTS13If_LibCell_t_", !13, i64 0}
!51 = !{!"p1 float", !13, i64 0}
!52 = !{!30, !39, i64 2632}
!53 = !{!30, !34, i64 40}
!54 = !{!55, !5, i64 4}
!55 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !18, i64 8}
!56 = !{!48, !5, i64 4}
!57 = distinct !{!57, !9}
end_hunk_0
