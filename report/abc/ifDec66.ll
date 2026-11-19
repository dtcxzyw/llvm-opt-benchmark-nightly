Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec66?download=true
inline.NumInlined: 49
inline.NumDeleted: 29
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@If_CutPerformCheckXX:bb.a
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i, i64 %indvars.iv.i.i
  %i.db = load i64, ptr %i.da, align 8, !tbaa !45
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.dc = load i64, ptr %gep.i.i, align 8, !tbaa !45
  %.not.us.i.i = icmp eq i64 %i.db, %i.dc
  br i1 %.not.us.i.i, label %bb.h, label %Abc_TtHasVar.exit.thread4.i

._crit_edge.us.i.i:                               ; preds = %bb.h
  %i.dd = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i, i64 %i.cy ; 2 uses
  %i.de = icmp ult ptr %i.dd, %i.ay
  br i1 %i.de, label %.preheader.us.i.i, label %Abc_TtHasVar.exit.thread.i, !llvm.loop !88

Abc_TtHasVar.exit.thread4.i:                      ; preds = %bb.f, %bb.i
  %i.df = sext i32 %.019.i to i64                 ; 3 uses
  %i.dg = icmp sgt i64 %indvars.iv.i30, %i.df
  br i1 %i.dg, label %bb.j, label %Abc_TtSwapVars.exit.i

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread4.i
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.lr.ph.i37.i

.lr.ph.i37.i:                                     ; preds = %bb.k
  %.neg.i.i = shl nsw i32 -1, %.019.i
  %i.dh = trunc nuw nsw i64 %indvars.iv.i30 to i32
  %i.di = shl nuw nsw i32 1, %i.dh
  %i.dj = add nsw i32 %.neg.i.i, %i.di
  %i.dk = getelementptr inbounds [144 x i8], ptr @s_PPMasks, i64 %i.df
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %indvars.iv.i30 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !45 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !45 ; 4 uses
  %i.dp = zext i32 %i.dj to i64                   ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !45 ; 4 uses
  br i1 %min.iters.check67, label %scalar.ph66, label %vector.ph68

vector.ph68:                                      ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dm, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert70 = insertelement <2 x i64> poison, i64 %i.do, i64 0
  %broadcast.splat71 = shufflevector <2 x i64> %broadcast.splatinsert70, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert72 = insertelement <2 x i64> poison, i64 %i.dp, i64 0
  %broadcast.splat73 = shufflevector <2 x i64> %broadcast.splatinsert72, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert74 = insertelement <2 x i64> poison, i64 %i.dr, i64 0
  %broadcast.splat75 = shufflevector <2 x i64> %broadcast.splatinsert74, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body76

vector.body76:                                    ; preds = %vector.body76, %vector.ph68
  %index77 = phi i64 [ 0, %vector.ph68 ], [ %index.next80, %vector.body76 ] ; 2 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index77 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.ds, align 16, !tbaa !45 ; 3 uses
  %wide.load79 = load <2 x i64>, ptr %i.dt, align 16, !tbaa !45 ; 3 uses
  %i.du = and <2 x i64> %wide.load78, %broadcast.splat
  %i.dv = and <2 x i64> %wide.load79, %broadcast.splat
  %i.dw = and <2 x i64> %wide.load78, %broadcast.splat71
  %i.dx = and <2 x i64> %wide.load79, %broadcast.splat71
  %i.dy = shl <2 x i64> %i.dw, %broadcast.splat73
  %i.dz = shl <2 x i64> %i.dx, %broadcast.splat73
  %i.ea = or <2 x i64> %i.dy, %i.du
  %i.eb = or <2 x i64> %i.dz, %i.dv
  %i.ec = and <2 x i64> %wide.load78, %broadcast.splat75
  %i.ed = and <2 x i64> %wide.load79, %broadcast.splat75
  %i.ee = lshr <2 x i64> %i.ec, %broadcast.splat73
  %i.ef = lshr <2 x i64> %i.ed, %broadcast.splat73
  %i.eg = or <2 x i64> %i.ea, %i.ee
  %i.eh = or <2 x i64> %i.eb, %i.ef
  store <2 x i64> %i.eg, ptr %i.ds, align 16, !tbaa !45
  store <2 x i64> %i.eh, ptr %i.dt, align 16, !tbaa !45
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.ei = icmp eq i64 %index.next80, %n.vec69
  br i1 %i.ei, label %Abc_TtSwapVars.exit.i, label %vector.body76, !llvm.loop !89

scalar.ph66:                                      ; preds = %.lr.ph.i37.i
  %i.ej = load i64, ptr %i.a, align 16, !tbaa !45 ; 3 uses
  %i.ek = and i64 %i.ej, %i.dm
  %i.el = and i64 %i.ej, %i.do
  %i.em = shl i64 %i.el, %i.dp
  %i.en = or i64 %i.em, %i.ek
  %i.eo = and i64 %i.ej, %i.dr
  %i.ep = lshr i64 %i.eo, %i.dp
  %i.eq = or i64 %i.en, %i.ep
  store i64 %i.eq, ptr %i.a, align 16, !tbaa !45
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph66.1

scalar.ph66.1:                                    ; preds = %scalar.ph66
  %i.er = load i64, ptr %i.az, align 8, !tbaa !45 ; 3 uses
  %i.es = and i64 %i.er, %i.dm
  %i.et = and i64 %i.er, %i.do
  %i.eu = shl i64 %i.et, %i.dp
  %i.ev = or i64 %i.eu, %i.es
  %i.ew = and i64 %i.er, %i.dr
  %i.ex = lshr i64 %i.ew, %i.dp
  %i.ey = or i64 %i.ev, %i.ex
  store i64 %i.ey, ptr %i.az, align 8, !tbaa !45
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph66.2

scalar.ph66.2:                                    ; preds = %scalar.ph66.1
  %i.ez = load i64, ptr %i.ba, align 16, !tbaa !45 ; 3 uses
  %i.fa = and i64 %i.ez, %i.dm
  %i.fb = and i64 %i.ez, %i.do
  %i.fc = shl i64 %i.fb, %i.dp
  %i.fd = or i64 %i.fc, %i.fa
  %i.fe = and i64 %i.ez, %i.dr
  %i.ff = lshr i64 %i.fe, %i.dp
  %i.fg = or i64 %i.fd, %i.ff
  store i64 %i.fg, ptr %i.ba, align 16, !tbaa !45
  br label %Abc_TtSwapVars.exit.i

bb.l:                                             ; preds = %bb.j
  %i.fh = icmp slt i32 %.019.i, 6
  br i1 %i.fh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fi = add nsw i64 %indvars.iv.i30, -6         ; 3 uses
  %i.fj = trunc nuw nsw i64 %i.fi to i32          ; 2 uses
  %i.fk = shl nuw nsw i32 1, %i.fj                ; 2 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.m
  %i.fl = shl nuw nsw i32 1, %.019.i
  %i.fm = icmp eq i64 %i.fi, 31
  %i.fn = zext nneg i32 %i.fl to i64              ; 3 uses
  %i.fo = shl i32 2, %i.fj
  %i.fp = sext i32 %i.fo to i64
  br i1 %i.fm, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i34.i
  %i.fq = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.df
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !45 ; 5 uses
  %i.fs = xor i64 %i.fr, -1                       ; 2 uses
  %i.ft = zext nneg i32 %i.fk to i64
  %wide.trip.count153.i.i = zext nneg i32 %i.fk to i64 ; 2 uses
  %min.iters.check85 = icmp eq i64 %i.fi, 0
  %n.vec87 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert88 = insertelement <2 x i64> poison, i64 %i.fr, i64 0
  %broadcast.splat89 = shufflevector <2 x i64> %broadcast.splatinsert88, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert90 = insertelement <2 x i64> poison, i64 %i.fn, i64 0
  %broadcast.splat91 = shufflevector <2 x i64> %broadcast.splatinsert90, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert92 = insertelement <2 x i64> poison, i64 %i.fs, i64 0
  %broadcast.splat93 = shufflevector <2 x i64> %broadcast.splatinsert92, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.split.us.i.i
  %.0128.us.i.i = phi ptr [ %i.a, %.preheader.lr.ph.split.us.i.i ], [ %i.gq, %._crit_edge.us.i36.i ] ; 4 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.ft ; 2 uses
  br i1 %min.iters.check85, label %scalar.ph84, label %vector.body94

vector.body94:                                    ; preds = %.preheader.us.i35.i, %vector.body94
  %index95 = phi i64 [ %index.next98, %vector.body94 ], [ 0, %.preheader.us.i35.i ] ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index95 ; 2 uses
  %wide.load96 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !45 ; 2 uses
  %i.fv = and <2 x i64> %wide.load96, %broadcast.splat89
  %i.fw = lshr <2 x i64> %i.fv, %broadcast.splat91
  %i.fx = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index95 ; 2 uses
  %wide.load97 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !45 ; 2 uses
  %i.fy = shl <2 x i64> %wide.load97, %broadcast.splat91
  %i.fz = and <2 x i64> %i.fy, %broadcast.splat89
  %i.ga = and <2 x i64> %wide.load96, %broadcast.splat93
  %i.gb = or <2 x i64> %i.fz, %i.ga
  store <2 x i64> %i.gb, ptr %i.fu, align 8, !tbaa !45
  %i.gc = and <2 x i64> %wide.load97, %broadcast.splat89
  %i.gd = or <2 x i64> %i.gc, %i.fw
  store <2 x i64> %i.gd, ptr %i.fx, align 8, !tbaa !45
  %index.next98 = add nuw i64 %index95, 2         ; 2 uses
  %i.ge = icmp eq i64 %index.next98, %n.vec87
  br i1 %i.ge, label %._crit_edge.us.i36.i, label %vector.body94, !llvm.loop !90

scalar.ph84:                                      ; preds = %.preheader.us.i35.i, %scalar.ph84
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph84 ], [ 0, %.preheader.us.i35.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !45 ; 2 uses
  %i.gh = and i64 %i.gg, %i.fr
  %i.gi = lshr i64 %i.gh, %i.fn
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.gj = load i64, ptr %gep170.i.i, align 8, !tbaa !45 ; 2 uses
  %i.gk = shl i64 %i.gj, %i.fn
  %i.gl = and i64 %i.gk, %i.fr
  %i.gm = and i64 %i.gg, %i.fs
  %i.gn = or i64 %i.gl, %i.gm
  store i64 %i.gn, ptr %i.gf, align 8, !tbaa !45
  %i.go = and i64 %i.gj, %i.fr
  %i.gp = or i64 %i.go, %i.gi
  store i64 %i.gp, ptr %gep170.i.i, align 8, !tbaa !45
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph84, !llvm.loop !91

._crit_edge.us.i36.i:                             ; preds = %vector.body94, %scalar.ph84
  %i.gq = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.fp ; 2 uses
  %i.gr = icmp ult ptr %i.gq, %i.ay
  br i1 %i.gr, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !92

bb.n:                                             ; preds = %bb.l
  %i.gs = add nsw i32 %.019.i, -6                 ; 3 uses
  %i.gt = shl nuw i32 1, %i.gs                    ; 4 uses
  %i.gu = add nsw i64 %indvars.iv.i30, -6         ; 2 uses
  %i.gv = trunc nuw nsw i64 %i.gu to i32          ; 2 uses
  %i.gw = shl nuw nsw i32 1, %i.gv
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.lr.ph.i.i

.preheader120.lr.ph.i.i:                          ; preds = %bb.n
  %i.gx = icmp eq i64 %i.gu, 31
  %i.gy = shl i32 2, %i.gv
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %.not131.i.i = icmp eq i32 %i.gs, 31
  %or.cond.i.i = select i1 %i.gx, i1 true, i1 %.not131.i.i
  br i1 %or.cond.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.us.us.preheader.i.i

.preheader120.us.us.preheader.i.i:                ; preds = %.preheader120.lr.ph.i.i
  %i.ha = shl i32 2, %i.gs
  %smax.i27.i = call i32 @llvm.smax.i32(i32 %i.gt, i32 1) ; 2 uses
  %i.hb = sext i32 %i.ha to i64
  %i.hc = sext i32 %i.gt to i64                   ; 2 uses
  %i.hd = zext nneg i32 %i.gw to i64              ; 3 uses
  %wide.trip.count.i28.i = zext nneg i32 %smax.i27.i to i64 ; 5 uses
  %5 = add nuw nsw i64 %i.hd, %wide.trip.count.i28.i
  %6 = shl nuw nsw i64 %5, 3
  %7 = shl nsw i64 %i.gz, 3
  %8 = add nsw i64 %i.hc, %wide.trip.count.i28.i
  %9 = shl nsw i64 %8, 3
  %10 = getelementptr i8, ptr %i.a, i64 %6
  %11 = getelementptr i8, ptr %i.a, i64 %9
  %min.iters.check109 = icmp slt i32 %i.gt, 4
  %n.vec112 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter133 = and i64 %wide.trip.count.i28.i, 1
  %i.he = icmp slt i32 %i.gt, 2
  %unroll_iter137 = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod135.not = icmp eq i64 %xtraiter133, 0
  %lcmp.mod136 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar106 = phi i64 [ %indvar.next107, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.hy, %._crit_edge124.us.us.i.i ], [ %i.a, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.hf = mul i64 %7, %indvar106                  ; 2 uses
  %scevgep = getelementptr i8, ptr %10, i64 %i.hf
  %scevgep108 = getelementptr i8, ptr %11, i64 %i.hf
  %invariant.gep.i29.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hc ; 2 uses
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.hd ; 2 uses
  %bound0 = icmp ult ptr %invariant.gep.i29.i, %scevgep
  %bound1 = icmp ult ptr %invariant.gep167.i.i, %scevgep108
  %found.conflict = and i1 %bound0, %bound1
  br label %.preheader119.us.us.i.i

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ], [ 0, %.preheader120.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep.i29.i, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check109, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vector.memcheck110, label %vector.body113

vector.memcheck110:                               ; preds = %.preheader119.us.us.i.i
  br i1 %i.he, label %scalar.ph108.epil.preheader, label %scalar.ph108

vector.body113:                                   ; preds = %.preheader119.us.us.i.i, %vector.body113
  %index114 = phi i64 [ %index.next119, %vector.body113 ], [ 0, %.preheader119.us.us.i.i ] ; 3 uses
  %i.hg = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index114 ; 3 uses
  %i.hh = getelementptr i8, ptr %i.hg, i64 16     ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !45, !alias.scope !101, !noalias !102
  %wide.load116 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !45, !alias.scope !101, !noalias !102
  %i.hi = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index114 ; 3 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 16     ; 2 uses
  %wide.load117 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !45, !alias.scope !102
  %wide.load118 = load <2 x i64>, ptr %i.hj, align 8, !tbaa !45, !alias.scope !102
  store <2 x i64> %wide.load117, ptr %i.hg, align 8, !tbaa !45, !alias.scope !101, !noalias !102
  store <2 x i64> %wide.load118, ptr %i.hh, align 8, !tbaa !45, !alias.scope !101, !noalias !102
  store <2 x i64> %wide.load115, ptr %i.hi, align 8, !tbaa !45, !alias.scope !102
  store <2 x i64> %wide.load116, ptr %i.hj, align 8, !tbaa !45, !alias.scope !102
  %index.next119 = add nuw i64 %index114, 4       ; 2 uses
  %i.hk = icmp eq i64 %index.next119, %n.vec112
  br i1 %i.hk, label %._crit_edge.us.us.i.i, label %vector.body113, !llvm.loop !96

scalar.ph108:                                     ; preds = %vector.memcheck110, %scalar.ph108
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph108 ], [ 0, %vector.memcheck110 ] ; 4 uses
  %niter138 = phi i64 [ %niter138.next.1, %scalar.ph108 ], [ 0, %vector.memcheck110 ]
  %i.hl = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !45
  %i.hn = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !45
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !45
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !45
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.hp = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !45
  %i.hr = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !45
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !45
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !45
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph108, !llvm.loop !97

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph108
  br i1 %lcmp.mod135.not, label %._crit_edge.us.us.i.i, label %scalar.ph108.epil.preheader

scalar.ph108.epil.preheader:                      ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %vector.memcheck110
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %vector.memcheck110 ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod136)
  %i.ht = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !45
  %i.hv = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !45
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !45
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !45
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body113, %scalar.ph108.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.hb ; 2 uses
  %i.hx = icmp slt i64 %indvars.iv.next147.i.i, %i.hd
  br i1 %i.hx, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !98

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.hy = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.gz ; 2 uses
  %i.hz = icmp ult ptr %i.hy, %i.ay
  %indvar.next107 = add i64 %indvar106, 1
  br i1 %i.hz, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !99

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body76, %scalar.ph66, %scalar.ph66.1, %scalar.ph66.2, %.preheader120.lr.ph.i.i, %bb.n, %.preheader.lr.ph.i34.i, %bb.m, %bb.k, %Abc_TtHasVar.exit.thread4.i
  %i.ia = add nsw i32 %.019.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.e, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.g, %bb.d
  %.1.i = phi i32 [ %i.ia, %Abc_TtSwapVars.exit.i ], [ %.019.i, %bb.e ], [ %.019.i, %.preheader.lr.ph.i.i ], [ %.019.i, %bb.g ], [ %.019.i, %bb.d ], [ %.019.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i31 = add nuw nsw i64 %indvars.iv.i30, 1 ; 2 uses
  %exitcond.not.i32 = icmp eq i64 %indvars.iv.next.i31, %wide.trip.count.i
  br i1 %exitcond.not.i32, label %Abc_TtMinBase.exit, label %.lr.ph.split.i, !llvm.loop !85

Abc_TtMinBase.exit.loopexit:                      ; preds = %Abc_TtHasVar.exit.thread.us.i
  store i64 %i.cg, ptr %i.a, align 16
  br label %Abc_TtMinBase.exit

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtMinBase.exit.loopexit, %bb.c, %Abc_TtStretch6.exit
  %.024 = phi i32 [ %3, %Abc_TtStretch6.exit ], [ 0, %bb.c ], [ %.1.us.i, %Abc_TtMinBase.exit.loopexit ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 3 uses
  %i.ib = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #20
  %i.ic = and i64 %i.ib, 4294967295
  %.not26 = icmp eq i64 %i.ic, 2
  br i1 %.not26, label %bb.p, label %bb.o

bb.o:                                             ; preds = %Abc_TtMinBase.exit
  %i.id = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.p:                                             ; preds = %Abc_TtMinBase.exit
  %i.ie = load i8, ptr %4, align 1, !tbaa !20     ; 2 uses
  %i.if = sext i8 %i.ie to i32
  %i.ig = add nsw i32 %i.if, -48                  ; 4 uses
  %i.ih = add i8 %i.ie, -55
  %or.cond = icmp ult i8 %i.ih, -4
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ii = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ig) ; 0 uses
  br label %bb.v

bb.r:                                             ; preds = %bb.p
  %i.ij = shl nuw nsw i32 %i.ig, 1
  %.not27 = icmp slt i32 %.024, %i.ij
  br i1 %.not27, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ik = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.024, ptr noundef nonnull %4) ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  %.not28 = icmp sgt i32 %.024, %i.ig
  br i1 %.not28, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.il = call i32 @If_CluCheckXX(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.ig, i32 noundef %2, i32 noundef 1)
  br label %bb.v

bb.v:                                             ; preds = %bb.q, %bb.s, %bb.u, %bb.t, %bb.o
  %.1 = phi i32 [ 0, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ %i.il, %bb.u ], [ 1, %bb.t ]
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

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !11}
!1 = distinct !{!1, !11}
!2 = distinct !{!2, !11}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!8, !8, i64 0}
!14 = !{!"any p2 pointer", !12, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS9If_Hte_t_", !12, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"If_Hte_t_", !16, i64 0, !8, i64 8, !8, i64 12, !7, i64 16}
!19 = !{!18, !8, i64 12}
!20 = !{!7, !7, i64 0}
!21 = !{!"p1 omnipotent char", !12, i64 0}
!22 = !{!"p1 _ZTS9If_Par_t_", !12, i64 0}
!23 = !{!"p1 _ZTS9If_Obj_t_", !12, i64 0}
!24 = !{!"p1 _ZTS10Vec_Ptr_t_", !12, i64 0}
!25 = !{!"float", !7, i64 0}
!26 = !{!"p1 long", !12, i64 0}
!27 = !{!"p1 _ZTS10Vec_Int_t_", !12, i64 0}
!28 = !{!"p1 _ZTS10Vec_Wrd_t_", !12, i64 0}
!29 = !{!"p1 _ZTS12Mem_Fixed_t_", !12, i64 0}
!30 = !{!"p1 _ZTS9If_Set_t_", !12, i64 0}
!31 = !{!"p1 _ZTS12If_DsdMan_t_", !12, i64 0}
!32 = !{!"p1 _ZTS14Hash_IntMan_t_", !12, i64 0}
!33 = !{!"p1 _ZTS10Vec_Str_t_", !12, i64 0}
!34 = !{!"p1 _ZTS10Vec_Mem_t_", !12, i64 0}
!35 = !{!"p1 _ZTS9If_Cut_t_", !12, i64 0}
!36 = !{!"p1 _ZTS10Tim_Man_t_", !12, i64 0}
!37 = !{!"If_Man_t_", !21, i64 0, !22, i64 8, !23, i64 16, !24, i64 24, !24, i64 32, !24, i64 40, !24, i64 48, !24, i64 56, !7, i64 64, !8, i64 84, !25, i64 88, !25, i64 92, !25, i64 96, !25, i64 100, !8, i64 104, !25, i64 108, !8, i64 112, !8, i64 116, !7, i64 120, !26, i64 152, !8, i64 160, !8, i64 164, !8, i64 168, !27, i64 176, !7, i64 184, !8, i64 568, !8, i64 572, !8, i64 576, !27, i64 584, !27, i64 592, !28, i64 600, !28, i64 608, !28, i64 616, !24, i64 624, !27, i64 632, !8, i64 640, !8, i64 644, !8, i64 648, !7, i64 652, !8, i64 716, !8, i64 720, !8, i64 724, !8, i64 728, !29, i64 736, !29, i64 744, !30, i64 752, !30, i64 760, !30, i64 768, !8, i64 776, !8, i64 780, !7, i64 784, !7, i64 912, !8, i64 1040, !8, i64 1044, !8, i64 1048, !8, i64 1052, !31, i64 1056, !7, i64 1064, !7, i64 1192, !7, i64 1320, !7, i64 1448, !7, i64 1576, !7, i64 1704, !7, i64 1832, !32, i64 1960, !27, i64 1968, !33, i64 1976, !34, i64 1984, !7, i64 1992, !8, i64 2024, !8, i64 2028, !8, i64 2032, !7, i64 2040, !7, i64 2088, !7, i64 2096, !27, i64 2104, !7, i64 2112, !24, i64 2176, !12, i64 2184, !27, i64 2192, !7, i64 2200, !33, i64 2264, !27, i64 2272, !27, i64 2280, !27, i64 2288, !23, i64 2296, !35, i64 2304, !8, i64 2312, !7, i64 2316, !7, i64 2444, !25, i64 2572, !8, i64 2576, !36, i64 2584, !27, i64 2592, !7, i64 2600, !7, i64 2608, !7, i64 2616, !29, i64 2632}
!38 = !{!37, !22, i64 8}
!39 = !{!"p1 _ZTS12If_LibLut_t_", !12, i64 0}
!40 = !{!"p1 _ZTS13If_LibCell_t_", !12, i64 0}
!41 = !{!"p1 float", !12, i64 0}
!42 = !{!"If_Par_t_", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !25, i64 24, !25, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !8, i64 160, !8, i64 164, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !21, i64 208, !8, i64 216, !25, i64 220, !8, i64 224, !8, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !8, i64 244, !8, i64 248, !8, i64 252, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !25, i64 280, !25, i64 284, !25, i64 288, !39, i64 296, !40, i64 304, !41, i64 312, !41, i64 320, !12, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368}
!43 = !{!42, !8, i64 0}
!44 = !{!"long", !7, i64 0}
!45 = !{!44, !44, i64 0}
!46 = !{!"llvm.loop.unroll.disable"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !11}
!50 = distinct !{!50, !11}
!51 = distinct !{!51, !11}
!52 = !{!"p1 int", !12, i64 0}
!53 = !{!"Vec_Int_t_", !8, i64 0, !8, i64 4, !52, i64 8}
!54 = !{!53, !8, i64 0}
!55 = !{!53, !52, i64 8}
!56 = !{!53, !8, i64 4}
!57 = distinct !{!57, !11}
!58 = distinct !{!58, !11}
!59 = distinct !{!59, !11}
!60 = distinct !{!60, !11}
!61 = distinct !{!61, !11}
!62 = distinct !{!62, !11}
!63 = !{!37, !29, i64 2632}
!64 = !{!37, !24, i64 40}
!65 = !{!"Vec_Ptr_t_", !8, i64 0, !8, i64 4, !14, i64 8}
!66 = !{!65, !8, i64 4}
!67 = !{!42, !8, i64 4}
!68 = !{!65, !8, i64 0}
!69 = !{!65, !14, i64 8}
!70 = !{!12, !12, i64 0}
!71 = !{!18, !16, i64 0}
!72 = !{!18, !8, i64 8}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !46}
!75 = distinct !{!75, !11, !47, !48}
!76 = distinct !{!76, !46}
!77 = distinct !{!77, !11, !47}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !46}
!80 = !{!"branch_weights", i32 4, i32 28}
!81 = distinct !{!81, !11, !47, !48}
!82 = distinct !{!82, !11, !47}
!83 = distinct !{!83, !46}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11, !47, !48}
!90 = distinct !{!90, !11, !47, !48}
!91 = distinct !{!91, !11, !48, !47}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !11, !47, !48}
!97 = distinct !{!97, !11, !47}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = !{!42, !8, i64 84}
!101 = !{!94}
!102 = !{!95}
end_hunk_0
