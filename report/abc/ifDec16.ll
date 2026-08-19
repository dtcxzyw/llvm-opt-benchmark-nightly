inline.NumInlined: 202
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 82
begin_hunk_0_@If_CutPerformCheck16:bb.a

vector.ph106:                                     ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph106
  %index115 = phi i64 [ 0, %vector.ph106 ], [ %index.next118, %vector.body114 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index115 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load116 = load <2 x i64>, ptr %i.ds, align 16, !tbaa !18 ; 3 uses
  %wide.load117 = load <2 x i64>, ptr %i.dt, align 16, !tbaa !18 ; 3 uses
  %i.du = and <2 x i64> %wide.load116, %broadcast.splat
  %i.dv = and <2 x i64> %wide.load117, %broadcast.splat
  %i.dw = and <2 x i64> %wide.load116, %broadcast.splat109
  %i.dx = and <2 x i64> %wide.load117, %broadcast.splat109
  %i.dy = shl <2 x i64> %i.dw, %broadcast.splat111
  %i.dz = shl <2 x i64> %i.dx, %broadcast.splat111
  %i.ea = or <2 x i64> %i.dy, %i.du
  %i.eb = or <2 x i64> %i.dz, %i.dv
  %i.ec = and <2 x i64> %wide.load116, %broadcast.splat113
  %i.ed = and <2 x i64> %wide.load117, %broadcast.splat113
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat111
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat111
  %i.eg = or <2 x i64> %i.ea, %i.ee
  %i.eh = or <2 x i64> %i.eb, %i.ef
  store <2 x i64> %i.eg, ptr %i.ds, align 16, !tbaa !18
  store <2 x i64> %i.eh, ptr %i.dt, align 16, !tbaa !18
  %index.next118 = add nuw i64 %index115, 4       ; 2 uses
  %i.ei = icmp eq i64 %index.next118, %n.vec107
  br i1 %i.ei, label %Abc_TtSwapVars.exit.i, label %vector.body114, !llvm.loop !61

scalar.ph104:                                     ; preds = %.lr.ph.i37.i
  %i.ej = load i64, ptr %i.a, align 16, !tbaa !18 ; 3 uses
  %i.ek = and i64 %i.ej, %i.dm
  %i.el = and i64 %i.ej, %i.do
  %i.em = shl i64 %i.el, %i.dp
  %i.en = or i64 %i.em, %i.ek
  %i.eo = and i64 %i.ej, %i.dr
  %i.ep = lshr i64 %i.eo, %i.dp
  %i.eq = or i64 %i.en, %i.ep
  store i64 %i.eq, ptr %i.a, align 16, !tbaa !18
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph104.1

scalar.ph104.1:                                   ; preds = %scalar.ph104
  %i.er = load i64, ptr %i.az, align 8, !tbaa !18 ; 3 uses
  %i.es = and i64 %i.er, %i.dm
  %i.et = and i64 %i.er, %i.do
  %i.eu = shl i64 %i.et, %i.dp
  %i.ev = or i64 %i.eu, %i.es
  %i.ew = and i64 %i.er, %i.dr
  %i.ex = lshr i64 %i.ew, %i.dp
  %i.ey = or i64 %i.ev, %i.ex
  store i64 %i.ey, ptr %i.az, align 8, !tbaa !18
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph104.2

scalar.ph104.2:                                   ; preds = %scalar.ph104.1
  %i.ez = load i64, ptr %i.ba, align 16, !tbaa !18 ; 3 uses
  %i.fa = and i64 %i.ez, %i.dm
  %i.fb = and i64 %i.ez, %i.do
  %i.fc = shl i64 %i.fb, %i.dp
  %i.fd = or i64 %i.fc, %i.fa
  %i.fe = and i64 %i.ez, %i.dr
  %i.ff = lshr i64 %i.fe, %i.dp
  %i.fg = or i64 %i.fd, %i.ff
  store i64 %i.fg, ptr %i.ba, align 16, !tbaa !18
  br label %Abc_TtSwapVars.exit.i

bb.l:                                             ; preds = %bb.j
  %i.fh = icmp slt i32 %.019.i, 6
  br i1 %i.fh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fi = add nsw i64 %indvars.iv.i57, -6         ; 2 uses
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
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !18 ; 5 uses
  %i.fs = xor i64 %i.fr, -1                       ; 2 uses
  %i.ft = sext i32 %i.fk to i64                   ; 2 uses
  %smax152.i.i = call i32 @llvm.smax.i32(i32 %i.fk, i32 1)
  %wide.trip.count153.i.i = zext nneg i32 %smax152.i.i to i64 ; 3 uses
  %i.fu = shl nuw nsw i64 %wide.trip.count153.i.i, 3 ; 2 uses
  %i.fv = shl nsw i64 %i.fp, 3
  %i.fw = shl nsw i64 %i.ft, 3                    ; 2 uses
  %min.iters.check128 = icmp slt i32 %i.fk, 2
  %i.fx = getelementptr i8, ptr %i.a, i64 %i.fw
  %i.fy = getelementptr i8, ptr %i.fx, i64 %i.fu
  %i.fz = getelementptr i8, ptr %i.a, i64 %i.fw
  %i.ga = getelementptr i8, ptr %i.a, i64 %i.fu
  %n.vec130 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert131 = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat132 = shufflevector <2 x i64> %broadcast.splatinsert131, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert133 = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat134 = shufflevector <2 x i64> %broadcast.splatinsert133, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert135 = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat136 = shufflevector <2 x i64> %broadcast.splatinsert135, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.split.us.i.i
  %indvar123 = phi i64 [ %indvar.next124, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.gy, %._crit_edge.us.i36.i ], [ %i.a, %.preheader.lr.ph.split.us.i.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.ft ; 2 uses
  br i1 %min.iters.check128, label %scalar.ph127.preheader, label %vector.memcheck122

scalar.ph127.preheader:                           ; preds = %vector.memcheck122, %.preheader.us.i35.i
  br label %scalar.ph127

vector.memcheck122:                               ; preds = %.preheader.us.i35.i
  %i.gb = mul i64 %i.fv, %indvar123               ; 3 uses
  %scevgep126 = getelementptr i8, ptr %i.fy, i64 %i.gb
  %scevgep125 = getelementptr i8, ptr %i.fz, i64 %i.gb
  %scevgep = getelementptr i8, ptr %i.ga, i64 %i.gb
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep126
  %bound1 = icmp ult ptr %scevgep125, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph127.preheader, label %vector.body137

vector.body137:                                   ; preds = %vector.memcheck122, %vector.body137
  %index138 = phi i64 [ %index.next141, %vector.body137 ], [ 0, %vector.memcheck122 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index138 ; 2 uses
  %wide.load139 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !18, !alias.scope !62, !noalias !65 ; 2 uses
  %i.gd = and <2 x i64> %wide.load139, %broadcast.splat132
  %i.ge = lshr <2 x i64> %i.gd, %broadcast.splat134
  %i.gf = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index138 ; 2 uses
  %wide.load140 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !18, !alias.scope !65 ; 2 uses
  %i.gg = shl <2 x i64> %wide.load140, %broadcast.splat134
  %i.gh = and <2 x i64> %i.gg, %broadcast.splat132
  %i.gi = and <2 x i64> %wide.load139, %broadcast.splat136
  %i.gj = or <2 x i64> %i.gh, %i.gi
  store <2 x i64> %i.gj, ptr %i.gc, align 8, !tbaa !18, !alias.scope !62, !noalias !65
  %i.gk = and <2 x i64> %wide.load140, %broadcast.splat132
  %i.gl = or <2 x i64> %i.gk, %i.ge
  store <2 x i64> %i.gl, ptr %i.gf, align 8, !tbaa !18, !alias.scope !65
  %index.next141 = add nuw i64 %index138, 2       ; 2 uses
  %i.gm = icmp eq i64 %index.next141, %n.vec130
  br i1 %i.gm, label %._crit_edge.us.i36.i, label %vector.body137, !llvm.loop !67

scalar.ph127:                                     ; preds = %scalar.ph127.preheader, %scalar.ph127
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph127 ], [ 0, %scalar.ph127.preheader ] ; 3 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !18 ; 2 uses
  %i.gp = and i64 %i.go, %i.fr
  %i.gq = lshr i64 %i.gp, %i.fn
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gr = load i64, ptr %gep170.i.i, align 8, !tbaa !18 ; 2 uses
  %i.gs = shl i64 %i.gr, %i.fn
  %i.gt = and i64 %i.gs, %i.fr
  %i.gu = and i64 %i.go, %i.fs
  %i.gv = or i64 %i.gt, %i.gu
  store i64 %i.gv, ptr %i.gn, align 8, !tbaa !18
  %i.gw = and i64 %i.gr, %i.fr
  %i.gx = or i64 %i.gw, %i.gq
  store i64 %i.gx, ptr %gep170.i.i, align 8, !tbaa !18
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph127, !llvm.loop !68

._crit_edge.us.i36.i:                             ; preds = %vector.body137, %scalar.ph127
  %i.gy = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.fp ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %i.ay
  %indvar.next124 = add i64 %indvar123, 1
  br i1 %i.gz, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !69

bb.n:                                             ; preds = %bb.l
  %i.ha = add nsw i32 %.019.i, -6                 ; 3 uses
  %i.hb = shl nuw i32 1, %i.ha                    ; 4 uses
  %i.hc = add nsw i64 %indvars.iv.i57, -6         ; 2 uses
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
  %7 = shl nuw nsw i64 %wide.trip.count.i28.i, 3  ; 2 uses
  %i.hr = shl nsw i64 %i.hl, 3                    ; 2 uses
  %8 = udiv i64 %i.hq, %umax
  %9 = add i64 %8, %umin
  %i.hs = shl i64 %9, 3
  %10 = mul i64 %i.hs, %i.hj
  %i.ht = getelementptr i8, ptr %i.a, i64 %i.hm
  %i.hu = getelementptr i8, ptr %i.a, i64 %i.hr
  %i.hv = getelementptr i8, ptr %i.a, i64 %10
  %i.hw = getelementptr i8, ptr %i.hv, i64 %i.hr
  %i.hx = getelementptr i8, ptr %i.hw, i64 %7
  %min.iters.check157 = icmp slt i32 %i.hb, 12
  %i.hy = getelementptr i8, ptr %i.a, i64 %i.hm
  %invariant.gep = getelementptr i8, ptr %i.hy, i64 %7
  %stride.check = icmp slt i32 %i.hi, 0
  %n.vec159 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter182 = and i64 %wide.trip.count.i28.i, 1
  %i.hz = icmp slt i32 %i.hb, 2
  %unroll_iter186 = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod184.not = icmp eq i64 %xtraiter182, 0
  %lcmp.mod185 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar146 = phi i64 [ %indvar.next147, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.it, %._crit_edge124.us.us.i.i ], [ %i.a, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.ia = mul i64 %i.hn, %indvar146               ; 4 uses
  %scevgep148 = getelementptr i8, ptr %i.ht, i64 %i.ia
  %scevgep150 = getelementptr i8, ptr %i.hu, i64 %i.ia
  %scevgep151 = getelementptr i8, ptr %i.hx, i64 %i.ia
  %invariant.gep167.i.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hk
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hl
  %scevgep151.a = getelementptr i8, ptr %invariant.gep, i64 %i.ia
  %bound1153.a = icmp ult ptr %scevgep148, %scevgep151
  br label %.preheader119.us.us.i.i

scalar.ph156:                                     ; preds = %scalar.ph156.preheader, %scalar.ph156
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph156 ], [ 0, %scalar.ph156.preheader ] ; 4 uses
  %niter187 = phi i64 [ %niter187.next.1, %scalar.ph156 ], [ 0, %scalar.ph156.preheader ]
  %i.ib = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !18
  %i.id = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !18
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !18
  store i64 %i.ic, ptr %i.id, align 8, !tbaa !18
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !18
  %i.ih = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !18
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !18
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !18
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter187.next.1 = add i64 %niter187, 2         ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph156, !llvm.loop !70

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ 0, %.preheader120.us.us.i.i ], [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i.a, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  br i1 %min.iters.check157, label %scalar.ph156.preheader, label %scalar.ph156.preheader.a

scalar.ph156.preheader:                           ; preds = %scalar.ph156.preheader.a, %.preheader119.us.us.i.i
  br i1 %i.hz, label %scalar.ph156.epil.preheader, label %scalar.ph156

scalar.ph156.preheader.a:                         ; preds = %.preheader119.us.us.i.i
  %11 = udiv i64 %i.hq, %umax
  %12 = add i64 %11, %umin
  %13 = shl i64 %12, 3
  %14 = mul i64 %13, %i.hj
  %gep191 = getelementptr i8, ptr %scevgep151.a, i64 %14
  %bound1153 = icmp ult ptr %scevgep150, %gep191
  %found.conflict154 = and i1 %bound1153.a, %bound1153
  %15 = or i1 %found.conflict154, %stride.check
  br i1 %15, label %scalar.ph156.preheader, label %vector.body160

vector.body160:                                   ; preds = %scalar.ph156.preheader.a, %vector.body160
  %index161 = phi i64 [ %index.next166, %vector.body160 ], [ 0, %scalar.ph156.preheader.a ] ; 3 uses
  %i.ij = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index161 ; 3 uses
  %i.ik = getelementptr i8, ptr %i.ij, i64 16     ; 2 uses
  %wide.load162 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !18, !alias.scope !71, !noalias !74
  %wide.load163 = load <2 x i64>, ptr %i.ik, align 8, !tbaa !18, !alias.scope !71, !noalias !74
  %i.il = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index161 ; 3 uses
  %i.im = getelementptr i8, ptr %i.il, i64 16     ; 2 uses
  %wide.load164 = load <2 x i64>, ptr %i.il, align 8, !tbaa !18, !alias.scope !74
  %wide.load165 = load <2 x i64>, ptr %i.im, align 8, !tbaa !18, !alias.scope !74
  store <2 x i64> %wide.load164, ptr %i.ij, align 8, !tbaa !18, !alias.scope !71, !noalias !74
  store <2 x i64> %wide.load165, ptr %i.ik, align 8, !tbaa !18, !alias.scope !71, !noalias !74
  store <2 x i64> %wide.load162, ptr %i.il, align 8, !tbaa !18, !alias.scope !74
  store <2 x i64> %wide.load163, ptr %i.im, align 8, !tbaa !18, !alias.scope !74
  %index.next166 = add nuw i64 %index161, 4       ; 2 uses
  %i.in = icmp eq i64 %index.next166, %n.vec159
  br i1 %i.in, label %._crit_edge.us.us.i.i, label %vector.body160, !llvm.loop !76

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph156
  br i1 %lcmp.mod184.not, label %._crit_edge.us.us.i.i, label %scalar.ph156.epil.preheader

scalar.ph156.epil.preheader:                      ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %scalar.ph156.preheader
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %scalar.ph156.preheader ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod185)
  %i.io = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !18
  %i.iq = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !18
  store i64 %i.ir, ptr %i.io, align 8, !tbaa !18
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !18
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body160, %scalar.ph156.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.hj ; 2 uses
  %i.is = icmp slt i64 %indvars.iv.next147.i.i, %i.hl
  br i1 %i.is, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !77

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.it = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hh ; 2 uses
  %i.iu = icmp ult ptr %i.it, %i.ay
  %indvar.next147 = add i64 %indvar146, 1
  br i1 %i.iu, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !78

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body114, %scalar.ph104, %scalar.ph104.1, %scalar.ph104.2, %.preheader120.lr.ph.i.i, %bb.n, %.preheader.lr.ph.i34.i, %bb.m, %bb.k, %Abc_TtHasVar.exit.thread4.i
  %i.iv = add nsw i32 %.019.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.e, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.g, %bb.d
  %.1.i = phi i32 [ %i.iv, %Abc_TtSwapVars.exit.i ], [ %.019.i, %bb.e ], [ %.019.i, %.preheader.lr.ph.i.i ], [ %.019.i, %bb.g ], [ %.019.i, %bb.d ], [ %.019.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i58 = add nuw nsw i64 %indvars.iv.i57, 1 ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %indvars.iv.next.i58, %wide.trip.count.i
  br i1 %exitcond.not.i59, label %Abc_TtMinBase.exit, label %.lr.ph.split.i, !llvm.loop !57

Abc_TtMinBase.exit.loopexit:                      ; preds = %Abc_TtHasVar.exit.thread.us.i
  store i64 %i.cg, ptr %i.a, align 16
  br label %Abc_TtMinBase.exit

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtMinBase.exit.loopexit, %bb.c, %Abc_TtStretch6.exit
  %.050 = phi i32 [ %3, %Abc_TtStretch6.exit ], [ 0, %bb.c ], [ %.1.us.i, %Abc_TtMinBase.exit.loopexit ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 5 uses
  %i.iw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25 ; 3 uses
  %i.ix = trunc i64 %i.iw to i32                  ; 3 uses
  %i.iy = add i32 %i.ix, -4
  %or.cond = icmp ult i32 %i.iy, -2
  br i1 %or.cond, label %bb.o, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %Abc_TtMinBase.exit
  %wide.trip.count = and i64 %i.iw, 4294967295
  br label %.lr.ph

bb.o:                                             ; preds = %Abc_TtMinBase.exit
  %i.iz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull %4) ; 0 uses
  br label %bb.z

bb.p:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.p ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !80  ; 2 uses
  %i.jc = add i8 %i.jb, -55
  %or.cond55 = icmp ult i8 %i.jc, -4
  br i1 %or.cond55, label %bb.q, label %bb.p

bb.q:                                             ; preds = %.lr.ph
  %i.jd = sext i8 %i.jb to i32
  %i.je = add nsw i32 %i.jd, -48
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.je) ; 0 uses
  br label %bb.z

._crit_edge:                                      ; preds = %bb.p
  %i.jg = load i8, ptr %4, align 1, !tbaa !80
  %i.jh = sext i8 %i.jg to i32                    ; 2 uses
  %i.ji = add nsw i32 %i.jh, -48                  ; 3 uses
  %i.jj = icmp eq i32 %i.ix, 3
  br i1 %i.jj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !80
  %i.jm = sext i8 %i.jl to i32
  %i.jn = add nsw i32 %i.jm, -48
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.jo = phi i32 [ %i.jn, %bb.r ], [ 0, %._crit_edge ] ; 3 uses
  %i.jp = add i64 %i.iw, 4294967295
  %i.jq = and i64 %i.jp, 4294967295
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 %i.jq
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !80
  %i.jt = sext i8 %i.js to i32
  %i.ju = add nsw i32 %i.jt, -48                  ; 4 uses
  %i.jv = add nsw i32 %i.jh, -49
  %i.jw = call i32 @llvm.usub.sat.i32(i32 %i.jo, i32 1)
  %i.jx = add nsw i32 %i.jv, %i.jw
  %i.jy = add nsw i32 %i.jx, %i.ju
  %i.jz = icmp sgt i32 %.050, %i.jy
  br i1 %i.jz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ka = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24, i32 noundef %.050, ptr noundef nonnull %4) ; 0 uses
  br label %bb.z

bb.u:                                             ; preds = %bb.s
  %i.kb = call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.ji, i32 range(i32 -176, -2147483648) %i.ju)
  %i.kc = call range(i32 -176, -2147483648) i32 @llvm.smax.i32(i32 range(i32 -176, -2147483648) %i.jo, i32 range(i32 -176, -2147483648) %i.kb)
  %.not54 = icmp sgt i32 %.050, %i.kc
  br i1 %.not54, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.kd = icmp eq i32 %i.ix, 2
  br i1 %i.kd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @If_CluCheck(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %5, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.050, i32 noundef 0, i32 noundef 0, i32 noundef %i.ji, i32 noundef %i.ju, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1)
  %.sroa.0.0.copyload = load i8, ptr %5, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @If_CluCheck3(ptr dead_on_unwind nonnull writable sret(%struct.If_Grp_t_) align 1 %6, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.050, i32 noundef %i.ji, i32 noundef %i.jo, i32 noundef %i.ju, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null)
  %.sroa.0.0.copyload24 = load i8, ptr %6, align 1, !tbaa !80
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload, %bb.w ], [ %.sroa.0.0.copyload24, %bb.x ]
  %i.ke = icmp sgt i8 %.sroa.0.0, 0
  %i.kf = zext i1 %i.ke to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.y, %bb.t, %bb.q, %bb.o
  %.049 = phi i32 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.t ], [ %i.kf, %bb.y ], [ 1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret i32 %.049
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i32 @If_CluSupportSize(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 7
  %i.c = add nsw i32 %1, -6
  %i.d = shl nuw i32 1, %i.c
  %.fr = freeze i32 %i.d
  %i.e = select i1 %i.b, i32 1, i32 %.fr          ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  %wide.trip.count52.i = zext nneg i32 %i.e to i64
  br i1 %i.f, label %.lr.ph.split.us.split.us.preheader, label %._crit_edge

.lr.ph.split.us.split.us.preheader:               ; preds = %.lr.ph
  %wide.trip.count96 = zext nneg i32 %1 to i64
  br label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us.split.us.preheader, %If_CluHasVar.exit.thread.us.us
  %indvars.iv93 = phi i64 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %indvars.iv.next94, %If_CluHasVar.exit.thread.us.us ] ; 5 uses
  %.021.us.us = phi i32 [ 0, %.lr.ph.split.us.split.us.preheader ], [ %i.ah, %If_CluHasVar.exit.thread.us.us ] ; 4 uses
  %i.g = icmp samesign ult i64 %indvars.iv93, 6
  br i1 %i.g, label %.lr.ph.i.us.us, label %.preheader.lr.ph.i.us.us

.preheader.lr.ph.i.us.us:                         ; preds = %.lr.ph.split.us.split.us
  %i.h = add nsw i64 %indvars.iv93, -6            ; 2 uses
  %i.i = icmp eq i64 %i.h, 31
  %i.j = trunc nsw i64 %i.h to i32                ; 2 uses
  %i.k = shl i32 2, %i.j                          ; 2 uses
  %i.l = sext i32 %i.k to i64
  br i1 %i.i, label %If_CluHasVar.exit.us.us, label %.preheader.us.preheader.i.us.us

.preheader.us.preheader.i.us.us:                  ; preds = %.preheader.lr.ph.i.us.us
  %i.m = shl nuw i32 1, %i.j                      ; 2 uses
  %i.n = sext i32 %i.m to i64
  %smax.i.us.us = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %wide.trip.count.i.us.us = zext nneg i32 %smax.i.us.us to i64
  br label %.preheader.us.i.us.us

.preheader.us.i.us.us:                            ; preds = %._crit_edge.us.i.us.us, %.preheader.us.preheader.i.us.us
  %.041.us.i.us.us = phi i32 [ %i.s, %._crit_edge.us.i.us.us ], [ 0, %.preheader.us.preheader.i.us.us ]
  %.03140.us.i.us.us = phi ptr [ %i.r, %._crit_edge.us.i.us.us ], [ %0, %.preheader.us.preheader.i.us.us ] ; 3 uses
  %invariant.gep.i.us.us = getelementptr [8 x i8], ptr %.03140.us.i.us.us, i64 %i.n
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.preheader.us.i.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.preheader.us.i.us.us ], [ %indvars.iv.next.i.us.us, %bb.c ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %.03140.us.i.us.us, i64 %indvars.iv.i.us.us
  %i.p = load i64, ptr %i.o, align 8, !tbaa !18
  %gep.i.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us, i64 %indvars.iv.i.us.us
  %i.q = load i64, ptr %gep.i.us.us, align 8, !tbaa !18
  %.not.us.i.us.us = icmp eq i64 %i.p, %i.q
  br i1 %.not.us.i.us.us, label %bb.c, label %If_CluHasVar.exit.thread13.us.us

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i.us.us
  br i1 %exitcond.not.i.us.us, label %._crit_edge.us.i.us.us, label %bb.b, !llvm.loop !20

._crit_edge.us.i.us.us:                           ; preds = %bb.c
end_hunk_0
begin_hunk_1_@If_CluSwapVars:bb.a
  %.reass273 = and <2 x i64> %wide.load260, %invariant.op272
  %i.ac = or <2 x i64> %.reass271, %i.y
  %i.ad = or <2 x i64> %.reass273, %i.z
  %i.ae = or <2 x i64> %i.ac, %i.aa
  %i.af = or <2 x i64> %i.ad, %i.ab
  store <2 x i64> %i.ae, ptr %i.u, align 8, !tbaa !18
  store <2 x i64> %i.af, ptr %i.v, align 8, !tbaa !18
  %index.next261 = add nuw i64 %index258, 4       ; 2 uses
  %i.ag = icmp eq i64 %index.next261, %n.vec246
  br i1 %i.ag, label %.loopexit, label %vector.body257, !llvm.loop !215

scalar.ph243:                                     ; preds = %.lr.ph
  %i.ah = load i64, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.ai = and i64 %i.o, %i.ah
  %i.aj = shl i64 %i.ai, %i.p
  %i.ak = and i64 %i.ah, %i.q                     ; 2 uses
  %i.al = and i64 %i.ak, %i.r
  %i.am = lshr i64 %i.al, %i.p
  %i.an = and i64 %i.ak, %i.s
  %i.ao = or i64 %i.an, %i.aj
  %i.ap = or i64 %i.ao, %i.am
  store i64 %i.ap, ptr %0, align 8, !tbaa !18
  %exitcond199.not = icmp eq i32 %i.d, 1
  br i1 %exitcond199.not, label %.loopexit, label %scalar.ph243.1

scalar.ph243.1:                                   ; preds = %scalar.ph243
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = and i64 %i.o, %i.ar
  %i.at = shl i64 %i.as, %i.p
  %i.au = and i64 %i.ar, %i.q                     ; 2 uses
  %i.av = and i64 %i.au, %i.r
  %i.aw = lshr i64 %i.av, %i.p
  %i.ax = and i64 %i.au, %i.s
  %i.ay = or i64 %i.ax, %i.at
  %i.az = or i64 %i.ay, %i.aw
  store i64 %i.az, ptr %i.aq, align 8, !tbaa !18
  %exitcond199.not.1 = icmp eq i32 %i.d, 2
  br i1 %exitcond199.not.1, label %.loopexit, label %scalar.ph243.2

scalar.ph243.2:                                   ; preds = %scalar.ph243.1
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !18 ; 2 uses
  %i.bc = and i64 %i.o, %i.bb
  %i.bd = shl i64 %i.bc, %i.p
  %i.be = and i64 %i.bb, %i.q                     ; 2 uses
  %i.bf = and i64 %i.be, %i.r
  %i.bg = lshr i64 %i.bf, %i.p
  %i.bh = and i64 %i.be, %i.s
  %i.bi = or i64 %i.bh, %i.bd
  %i.bj = or i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.ba, align 8, !tbaa !18
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.bk = icmp slt i32 %spec.select158, 6
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bl = add nsw i32 %spec.select, -5            ; 2 uses
  %i.bm = shl nuw i32 1, %i.bl                    ; 2 uses
  %i.bn = sdiv i32 %i.bm, 2                       ; 2 uses
  %i.bo = icmp sgt i32 %i.d, 0
  br i1 %i.bo, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.bp = shl nuw nsw i32 1, %spec.select158
  %i.bq = icmp sgt i32 %i.bm, 1
  %i.br = zext nneg i32 %i.bp to i64              ; 4 uses
  br i1 %i.bq, label %.preheader.lr.ph.split, label %.loopexit

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.bs = shl nuw nsw i32 %i.bn, 1
  %i.bt = sext i32 %spec.select158 to i64
  %i.bu = getelementptr inbounds [48 x i8], ptr @If_CluSwapVars.PPMasks, i64 %i.bt
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !18 ; 4 uses
  %i.bx = xor i64 %i.bw, -1                       ; 2 uses
  %i.by = lshr i64 %i.bw, %i.br                   ; 3 uses
  %i.bz = xor i64 %i.by, -1                       ; 2 uses
  %i.ca = zext nneg i32 %i.bs to i64
  %i.cb = zext nneg i32 %i.bn to i64              ; 4 uses
  %invariant.gep210 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.cb
  %min.iters.check222 = icmp ult i32 %i.bl, 2
  %n.vec224 = and i64 %i.cb, 1073741822           ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat226 = shufflevector <2 x i64> %broadcast.splatinsert225, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert227 = insertelement <2 x i64> poison, i64 %i.bx, i64 0
  %broadcast.splat228 = shufflevector <2 x i64> %broadcast.splatinsert227, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat230 = shufflevector <2 x i64> %broadcast.splatinsert229, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert231 = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat232 = shufflevector <2 x i64> %broadcast.splatinsert231, <2 x i64> poison, <2 x i32> zeroinitializer
  %cmp.n241 = icmp eq i64 %n.vec224, %i.cb
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge169
  %indvars.iv192 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next193, %._crit_edge169 ] ; 3 uses
  %invariant.gep208 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv192 ; 2 uses
  %gep211 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep210, i64 %indvars.iv192 ; 2 uses
  br i1 %min.iters.check222, label %scalar.ph221.preheader, label %vector.body233

vector.body233:                                   ; preds = %.preheader, %vector.body233
  %index234 = phi i64 [ %index.next239, %vector.body233 ], [ 0, %.preheader ] ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %index234 ; 4 uses
  %wide.load235 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !18 ; 2 uses
  %i.cd = and <2 x i64> %broadcast.splat, %wide.load235
  %i.ce = lshr <2 x i64> %i.cd, %broadcast.splat226
  %i.cf = and <2 x i64> %wide.load235, %broadcast.splat228
  store <2 x i64> %i.cf, ptr %i.cc, align 8, !tbaa !18
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %gep211, i64 %index234 ; 4 uses
  %wide.load236 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !18 ; 2 uses
  %i.ch = and <2 x i64> %wide.load236, %broadcast.splat230
  %i.ci = shl <2 x i64> %i.ch, %broadcast.splat226
  %i.cj = and <2 x i64> %wide.load236, %broadcast.splat232
  store <2 x i64> %i.cj, ptr %i.cg, align 8, !tbaa !18
  %wide.load237 = load <2 x i64>, ptr %i.cc, align 8, !tbaa !18
  %i.ck = or <2 x i64> %wide.load237, %i.ci
  store <2 x i64> %i.ck, ptr %i.cc, align 8, !tbaa !18
  %wide.load238 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !18
  %i.cl = or <2 x i64> %wide.load238, %i.ce
  store <2 x i64> %i.cl, ptr %i.cg, align 8, !tbaa !18
  %index.next239 = add nuw i64 %index234, 2       ; 2 uses
  %i.cm = icmp eq i64 %index.next239, %n.vec224
  br i1 %i.cm, label %middle.block240, label %vector.body233, !llvm.loop !216

middle.block240:                                  ; preds = %vector.body233
  br i1 %cmp.n241, label %._crit_edge169, label %scalar.ph221.preheader

scalar.ph221.preheader:                           ; preds = %.preheader, %middle.block240
  %indvars.iv187.ph = phi i64 [ 0, %.preheader ], [ %n.vec224, %middle.block240 ]
  br label %scalar.ph221

scalar.ph221:                                     ; preds = %scalar.ph221.preheader, %scalar.ph221
  %indvars.iv187 = phi i64 [ %indvars.iv.next188, %scalar.ph221 ], [ %indvars.iv187.ph, %scalar.ph221.preheader ] ; 3 uses
  %gep209 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep208, i64 %indvars.iv187 ; 4 uses
  %i.cn = load i64, ptr %gep209, align 8, !tbaa !18 ; 2 uses
  %i.co = and i64 %i.bw, %i.cn
  %i.cp = lshr i64 %i.co, %i.br
  %i.cq = and i64 %i.cn, %i.bx
  store i64 %i.cq, ptr %gep209, align 8, !tbaa !18
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %gep211, i64 %indvars.iv187 ; 4 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !18 ; 2 uses
  %i.ct = and i64 %i.cs, %i.by
  %i.cu = shl i64 %i.ct, %i.br
  %i.cv = and i64 %i.cs, %i.bz
  store i64 %i.cv, ptr %i.cr, align 8, !tbaa !18
  %i.cw = load i64, ptr %gep209, align 8, !tbaa !18
  %i.cx = or i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %gep209, align 8, !tbaa !18
  %i.cy = load i64, ptr %i.cr, align 8, !tbaa !18
  %i.cz = or i64 %i.cy, %i.cp
  store i64 %i.cz, ptr %i.cr, align 8, !tbaa !18
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond191.not = icmp eq i64 %indvars.iv.next188, %i.cb
  br i1 %exitcond191.not, label %._crit_edge169, label %scalar.ph221, !llvm.loop !217

._crit_edge169:                                   ; preds = %scalar.ph221, %middle.block240
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, %i.ca ; 2 uses
  %i.da = trunc nuw i64 %indvars.iv.next193 to i32
  %i.db = icmp sgt i32 %i.d, %i.da
  br i1 %i.db, label %.preheader, label %.loopexit, !llvm.loop !218

bb.f:                                             ; preds = %bb.d
  %i.dc = add nsw i32 %spec.select158, -5         ; 2 uses
  %i.dd = shl nuw i32 1, %i.dc                    ; 2 uses
  %i.de = sdiv i32 %i.dd, 2                       ; 3 uses
  %i.df = add nsw i32 %spec.select, -5
  %i.dg = shl nuw i32 1, %i.df                    ; 2 uses
  %i.dh = sdiv i32 %i.dg, 2                       ; 3 uses
  %i.di = icmp sgt i32 %i.d, 0
  br i1 %i.di, label %.preheader161.lr.ph, label %.loopexit

.preheader161.lr.ph:                              ; preds = %bb.f
  %i.dj = icmp slt i32 %i.dg, 2
  %i.dk = icmp slt i32 %i.dd, 2
  %brmerge = select i1 %i.dj, i1 true, i1 %i.dk
  br i1 %brmerge, label %.loopexit, label %.preheader161.preheader

.preheader161.preheader:                          ; preds = %.preheader161.lr.ph
  %i.dl = shl nuw nsw i32 %i.dh, 1
  %i.dm = shl nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 5 uses
  %i.do = zext nneg i32 %i.dh to i64              ; 4 uses
  %i.dp = zext nneg i32 %i.dl to i64              ; 2 uses
  %i.dq = zext nneg i32 %i.de to i64              ; 3 uses
  %i.dr = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %i.de to i64   ; 5 uses
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.dq
  %invariant.gep206 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.do
  %i.ds = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.dt = shl nuw nsw i64 %i.dp, 3
  %umax = tail call i64 @llvm.umax.i64(i64 %i.do, i64 %i.dn)
  %i.du = icmp ult i32 %i.dm, %i.dh
  %umin = zext i1 %i.du to i64                    ; 2 uses
  %i.dv = or disjoint i64 %umin, %i.dn
  %i.dw = sub nsw i64 %umax, %i.dv
  %umax214 = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 1)
  %i.dx = shl nuw nsw i64 %wide.trip.count, 4
  %i.dy = shl nuw nsw i64 %i.do, 3                ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 %i.ds
  %i.ea = getelementptr i8, ptr %0, i64 %i.dy
  %min.iters.check = icmp ult i32 %i.dc, 5
  %i.eb = getelementptr i8, ptr %0, i64 %i.dx
  %i.ec = getelementptr i8, ptr %0, i64 %i.dy
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.ds
  %n.vec = and i64 %wide.trip.count, 1073741820   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %i.dq, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ee = add nsw i64 %i.dq, -1
  br label %.preheader161

.preheader161:                                    ; preds = %.preheader161.preheader, %._crit_edge165
  %indvar = phi i64 [ 0, %.preheader161.preheader ], [ %indvar.next, %._crit_edge165 ] ; 2 uses
  %indvars.iv184 = phi i64 [ 0, %.preheader161.preheader ], [ %indvars.iv.next185, %._crit_edge165 ] ; 3 uses
  %i.ef = mul i64 %i.dt, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.dz, i64 %i.ef
  %scevgep216 = getelementptr i8, ptr %i.ea, i64 %i.ef
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv184
  %gep207 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep206, i64 %indvars.iv184
  %scevgep215 = getelementptr i8, ptr %i.eb, i64 %i.ef
  %scevgep217 = getelementptr i8, ptr %i.ed, i64 %i.ef
  br label %.preheader160

.preheader160:                                    ; preds = %.preheader161, %._crit_edge
  %indvars.iv181 = phi i64 [ 0, %.preheader161 ], [ %indvars.iv.next182, %._crit_edge ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %gep, i64 %indvars.iv181 ; 4 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %gep207, i64 %indvars.iv181 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader160
  %6 = udiv i64 %i.dw, %umax214
  %7 = add i64 %6, %umin
  %8 = mul i64 %7, %i.dn
  %9 = shl i64 %8, 3                              ; 2 uses
  %gep269 = getelementptr i8, ptr %scevgep215, i64 %9
  %gep273 = getelementptr i8, ptr %scevgep217, i64 %9
  %bound0 = icmp ult ptr %scevgep, %gep273
  %bound1 = icmp ult ptr %scevgep216, %gep269
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %index ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ei, align 8, !tbaa !18, !alias.scope !219, !noalias !222
  %wide.load218 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !18, !alias.scope !219, !noalias !222
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %index ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %wide.load219 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !18, !alias.scope !222
  %wide.load220 = load <2 x i64>, ptr %i.el, align 8, !tbaa !18, !alias.scope !222
  store <2 x i64> %wide.load219, ptr %i.ei, align 8, !tbaa !18, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load220, ptr %i.ej, align 8, !tbaa !18, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load, ptr %i.ek, align 8, !tbaa !18, !alias.scope !222
  store <2 x i64> %wide.load218, ptr %i.el, align 8, !tbaa !18, !alias.scope !222
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.em = icmp eq i64 %index.next, %n.vec
  br i1 %i.em, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader160, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader160 ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.ph ; 2 uses
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !18
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.ph ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !18
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !18
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !18
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.er = icmp eq i64 %indvars.iv.ph, %i.ee
  br i1 %i.er, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !18
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !18
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !18
  store i64 %i.et, ptr %i.eu, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv.next ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !18
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv.next ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !18
  store i64 %i.ez, ptr %i.ew, align 8, !tbaa !18
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !18
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !225

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, %i.dn ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next182, %i.do
  br i1 %i.fa, label %.preheader160, label %._crit_edge165, !llvm.loop !226

._crit_edge165:                                   ; preds = %._crit_edge
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, %i.dp ; 2 uses
  %i.fb = icmp samesign ult i64 %indvars.iv.next185, %i.dr
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fb, label %.preheader161, label %.loopexit, !llvm.loop !227

.loopexit:                                        ; preds = %._crit_edge165, %._crit_edge169, %vector.body257, %scalar.ph243, %scalar.ph243.1, %scalar.ph243.2, %.preheader161.lr.ph, %bb.f, %bb.e, %.preheader.lr.ph, %bb.c
  %i.fc = icmp ne ptr %2, null
  %i.fd = icmp ne ptr %3, null
  %or.cond5 = and i1 %i.fc, %i.fd
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.loopexit
  %i.fe = sext i32 %spec.select158 to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fe ; 5 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !10
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fh
  store i32 %spec.select, ptr %i.fi, align 4, !tbaa !10
  %i.fj = sext i32 %spec.select to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %3, i64 %i.fj ; 4 uses
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !10
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr %2, i64 %i.fm
  store i32 %spec.select158, ptr %i.fn, align 4, !tbaa !10
  %i.fo = load i32, ptr %i.fk, align 4, !tbaa !10
  %i.fp = load i32, ptr %i.ff, align 4, !tbaa !10
  %i.fq = xor i32 %i.fp, %i.fo                    ; 2 uses
  store i32 %i.fq, ptr %i.ff, align 4, !tbaa !10
  %i.fr = load i32, ptr %i.fk, align 4, !tbaa !10
  %i.fs = xor i32 %i.fr, %i.fq                    ; 2 uses
  store i32 %i.fs, ptr %i.fk, align 4, !tbaa !10
  %i.ft = load i32, ptr %i.ff, align 4, !tbaa !10
  %i.fu = xor i32 %i.ft, %i.fs
  store i32 %i.fu, ptr %i.ff, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %bb.g, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluReverseOrder(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4) local_unnamed_addr #10 {
bb.a:
  %i.a = sub nsw i32 %1, %4                       ; 2 uses
  %i.b = lshr i32 %i.a, 1
  %i.c = icmp sgt i32 %i.a, 1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi i32 [ %i.g, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.d = add nsw i32 %.013, %4
  %i.e = xor i32 %.013, -1
  %i.f = add i32 %1, %i.e
  tail call void @If_CluSwapVars(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.d, i32 noundef %i.f)
  %i.g = add nuw nsw i32 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.g, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !228

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @If_CluMoveVar2(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #10 {
bb.a:
  %i.a = sext i32 %4 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  tail call void @If_CluSwapVars(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.c, i32 noundef %5)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @If_CluMoveVar(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #11 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [1024 x i64], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.c = sext i32 %4 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %2, i64 %i.c ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10   ; 3 uses
  %i.f = icmp slt i32 %i.e, %5
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %i.g = phi i32 [ %i.e, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %.072.lcssa = phi ptr [ %0, %bb.a ], [ %.07078, %.lr.ph ] ; 2 uses
  %.070.lcssa = phi ptr [ %i.b, %bb.a ], [ %.07277, %.lr.ph ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %i.h = icmp sgt i32 %i.g, %5
  br i1 %i.h, label %.lr.ph86, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.i = phi i32 [ %i.z, %.lr.ph ], [ %i.e, %bb.a ] ; 2 uses
  %.079 = phi i32 [ %i.y, %.lr.ph ], [ 0, %bb.a ]
  %.07078 = phi ptr [ %.07277, %.lr.ph ], [ %i.b, %bb.a ] ; 3 uses
  %.07277 = phi ptr [ %.07078, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  call fastcc void @If_CluSwapAdjacent(ptr noundef %.07078, ptr noundef %.07277, i32 noundef %i.i, i32 noundef %1)
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %3, i64 %i.j ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !10
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !10
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.n, align 4, !tbaa !10
  %i.q = getelementptr i8, ptr %i.k, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !10
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !10
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !10
  %i.w = load <2 x i32>, ptr %i.k, align 4, !tbaa !10
  %i.x = shufflevector <2 x i32> %i.w, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.x, ptr %i.k, align 4, !tbaa !10
  %i.y = add nuw nsw i32 %.079, 1                 ; 2 uses
  %i.z = load i32, ptr %i.d, align 4, !tbaa !10   ; 3 uses
  %i.aa = icmp slt i32 %i.z, %5
  br i1 %i.aa, label %.lr.ph, label %.preheader, !llvm.loop !229

.lr.ph86:                                         ; preds = %.preheader, %.lr.ph86
  %i.ab = phi i32 [ %i.au, %.lr.ph86 ], [ %i.g, %.preheader ] ; 2 uses
  %.185 = phi i32 [ %i.at, %.lr.ph86 ], [ %.0.lcssa, %.preheader ]
  %.17184 = phi ptr [ %.17383, %.lr.ph86 ], [ %.070.lcssa, %.preheader ] ; 3 uses
  %.17383 = phi ptr [ %.17184, %.lr.ph86 ], [ %.072.lcssa, %.preheader ] ; 2 uses
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  call fastcc void @If_CluSwapAdjacent(ptr noundef %.17184, ptr noundef %.17383, i32 noundef %i.ac, i32 noundef %1)
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ad ; 3 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !10
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = add nsw i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !10
  %i.ak = sext i32 %i.ab to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %3, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !10
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %2, i64 %i.an ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !10
  %i.aq = add nsw i32 %i.ap, -1
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !10
  %i.ar = load <2 x i32>, ptr %i.ae, align 4, !tbaa !10
  %i.as = shufflevector <2 x i32> %i.ar, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.as, ptr %i.ae, align 4, !tbaa !10
  %i.at = add nuw nsw i32 %.185, 1                ; 2 uses
  %i.au = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.av = icmp sgt i32 %i.au, %5
  br i1 %i.av, label %.lr.ph86, label %._crit_edge, !llvm.loop !230

._crit_edge:                                      ; preds = %.lr.ph86, %.preheader
  %.173.lcssa = phi ptr [ %.072.lcssa, %.preheader ], [ %.17184, %.lr.ph86 ] ; 7 uses
  %.1.lcssa = phi i32 [ %.0.lcssa, %.preheader ], [ %i.at, %.lr.ph86 ]
  %.173.lcssa99 = ptrtoaddr ptr %.173.lcssa to i64
  %i.aw = and i32 %.1.lcssa, 1
  %.not = icmp eq i32 %i.aw, 0
end_hunk_1
