inline.NumInlined: 286
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 49
begin_hunk_0_@Dau_InsertFunction:bb.a

vector.ph:                                        ; preds = %.lr.ph.i37.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.br, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert58 = insertelement <2 x i64> poison, i64 %i.bt, i64 0
  %broadcast.splat59 = shufflevector <2 x i64> %broadcast.splatinsert58, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert60 = insertelement <2 x i64> poison, i64 %i.bu, i64 0
  %broadcast.splat61 = shufflevector <2 x i64> %broadcast.splatinsert60, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert62 = insertelement <2 x i64> poison, i64 %i.bw, i64 0
  %broadcast.splat63 = shufflevector <2 x i64> %broadcast.splatinsert62, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bx, align 8, !tbaa !15 ; 3 uses
  %wide.load64 = load <2 x i64>, ptr %i.by, align 8, !tbaa !15 ; 3 uses
  %i.bz = and <2 x i64> %wide.load, %broadcast.splat
  %i.ca = and <2 x i64> %wide.load64, %broadcast.splat
  %i.cb = and <2 x i64> %wide.load, %broadcast.splat59
  %i.cc = and <2 x i64> %wide.load64, %broadcast.splat59
  %i.cd = shl <2 x i64> %i.cb, %broadcast.splat61
  %i.ce = shl <2 x i64> %i.cc, %broadcast.splat61
  %i.cf = or <2 x i64> %i.cd, %i.bz
  %i.cg = or <2 x i64> %i.ce, %i.ca
  %i.ch = and <2 x i64> %wide.load, %broadcast.splat63
  %i.ci = and <2 x i64> %wide.load64, %broadcast.splat63
  %i.cj = lshr <2 x i64> %i.ch, %broadcast.splat61
  %i.ck = lshr <2 x i64> %i.ci, %broadcast.splat61
  %i.cl = or <2 x i64> %i.cf, %i.cj
  %i.cm = or <2 x i64> %i.cg, %i.ck
  store <2 x i64> %i.cl, ptr %i.bx, align 8, !tbaa !15
  store <2 x i64> %i.cm, ptr %i.by, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %Abc_TtSwapVars.exit.i, label %vector.body, !llvm.loop !118

scalar.ph:                                        ; preds = %.lr.ph.i37.i
  %i.co = load i64, ptr %1, align 8, !tbaa !15    ; 3 uses
  %i.cp = and i64 %i.co, %i.br
  %i.cq = and i64 %i.co, %i.bt
  %i.cr = shl i64 %i.cq, %i.bu
  %i.cs = or i64 %i.cr, %i.cp
  %i.ct = and i64 %i.co, %i.bw
  %i.cu = lshr i64 %i.ct, %i.bu
  %i.cv = or i64 %i.cs, %i.cu
  store i64 %i.cv, ptr %1, align 8, !tbaa !15
  br i1 %exitcond160.not.i.i, label %Abc_TtSwapVars.exit.i, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.cw = load i64, ptr %i.h, align 8, !tbaa !15  ; 3 uses
  %i.cx = and i64 %i.cw, %i.br
  %i.cy = and i64 %i.cw, %i.bt
  %i.cz = shl i64 %i.cy, %i.bu
  %i.da = or i64 %i.cz, %i.cx
  %i.db = and i64 %i.cw, %i.bw
  %i.dc = lshr i64 %i.db, %i.bu
  %i.dd = or i64 %i.da, %i.dc
  store i64 %i.dd, ptr %i.h, align 8, !tbaa !15
  br i1 %exitcond160.not.i.i.1, label %Abc_TtSwapVars.exit.i, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.de = load i64, ptr %i.i, align 8, !tbaa !15  ; 3 uses
  %i.df = and i64 %i.de, %i.br
  %i.dg = and i64 %i.de, %i.bt
  %i.dh = shl i64 %i.dg, %i.bu
  %i.di = or i64 %i.dh, %i.df
  %i.dj = and i64 %i.de, %i.bw
  %i.dk = lshr i64 %i.dj, %i.bu
  %i.dl = or i64 %i.di, %i.dk
  store i64 %i.dl, ptr %i.i, align 8, !tbaa !15
  br label %Abc_TtSwapVars.exit.i

bb.j:                                             ; preds = %bb.h
  %i.dm = icmp slt i32 %.019.i, 6
  br i1 %i.dm, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dn = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.do = trunc nsw i64 %i.dn to i32              ; 2 uses
  %i.dp = shl nuw i32 1, %i.do                    ; 3 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.i34.i

.preheader.lr.ph.i34.i:                           ; preds = %bb.k
  %i.dq = shl nuw nsw i32 1, %.019.i
  %i.dr = icmp eq i64 %i.dn, 31
  %i.ds = zext nneg i32 %i.dq to i64              ; 3 uses
  %i.dt = shl i32 2, %i.do
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  br i1 %i.dr, label %Abc_TtSwapVars.exit.i, label %.preheader.lr.ph.split.us.i.i

.preheader.lr.ph.split.us.i.i:                    ; preds = %.preheader.lr.ph.i34.i
  %i.dv = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.bk
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !15 ; 5 uses
  %i.dx = xor i64 %i.dw, -1                       ; 2 uses
  %i.dy = sext i32 %i.dp to i64                   ; 2 uses
  %smax152.i.i = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %wide.trip.count153.i.i = zext nneg i32 %smax152.i.i to i64 ; 3 uses
  %i.dz = shl nuw nsw i64 %wide.trip.count153.i.i, 3 ; 2 uses
  %i.ea = shl nsw i64 %i.du, 3
  %i.eb = shl nsw i64 %i.dy, 3                    ; 2 uses
  %min.iters.check68 = icmp slt i32 %i.dp, 2
  %i.ec = getelementptr i8, ptr %1, i64 %i.eb
  %i.ed = getelementptr i8, ptr %i.ec, i64 %i.dz
  %i.ee = getelementptr i8, ptr %1, i64 %i.eb
  %i.ef = getelementptr i8, ptr %1, i64 %i.dz
  %n.vec70 = and i64 %wide.trip.count153.i.i, 2147483646
  %broadcast.splatinsert71 = insertelement <2 x i64> poison, i64 %i.dw, i64 0
  %broadcast.splat72 = shufflevector <2 x i64> %broadcast.splatinsert71, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert73 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat74 = shufflevector <2 x i64> %broadcast.splatinsert73, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert75 = insertelement <2 x i64> poison, i64 %i.dx, i64 0
  %broadcast.splat76 = shufflevector <2 x i64> %broadcast.splatinsert75, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i35.i

.preheader.us.i35.i:                              ; preds = %._crit_edge.us.i36.i, %.preheader.lr.ph.split.us.i.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i36.i ], [ 0, %.preheader.lr.ph.split.us.i.i ] ; 2 uses
  %.0128.us.i.i = phi ptr [ %i.fd, %._crit_edge.us.i36.i ], [ %1, %.preheader.lr.ph.split.us.i.i ] ; 5 uses
  %invariant.gep169.i.i = getelementptr [8 x i8], ptr %.0128.us.i.i, i64 %i.dy ; 2 uses
  br i1 %min.iters.check68, label %scalar.ph67.preheader, label %vector.memcheck

scalar.ph67.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i35.i
  br label %scalar.ph67

vector.memcheck:                                  ; preds = %.preheader.us.i35.i
  %i.eg = mul i64 %i.ea, %indvar                  ; 3 uses
  %scevgep66 = getelementptr i8, ptr %i.ed, i64 %i.eg
  %scevgep65 = getelementptr i8, ptr %i.ee, i64 %i.eg
  %scevgep = getelementptr i8, ptr %i.ef, i64 %i.eg
  %bound0 = icmp ult ptr %.0128.us.i.i, %scevgep66
  %bound1 = icmp ult ptr %scevgep65, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph67.preheader, label %vector.body77

vector.body77:                                    ; preds = %vector.memcheck, %vector.body77
  %index78 = phi i64 [ %index.next81, %vector.body77 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %index78 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %i.eh, align 8, !tbaa !15, !alias.scope !119, !noalias !122 ; 2 uses
  %i.ei = and <2 x i64> %wide.load79, %broadcast.splat72
  %i.ej = lshr <2 x i64> %i.ei, %broadcast.splat74
  %i.ek = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %index78 ; 2 uses
  %wide.load80 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !15, !alias.scope !122 ; 2 uses
  %i.el = shl <2 x i64> %wide.load80, %broadcast.splat74
  %i.em = and <2 x i64> %i.el, %broadcast.splat72
  %i.en = and <2 x i64> %wide.load79, %broadcast.splat76
  %i.eo = or <2 x i64> %i.em, %i.en
  store <2 x i64> %i.eo, ptr %i.eh, align 8, !tbaa !15, !alias.scope !119, !noalias !122
  %i.ep = and <2 x i64> %wide.load80, %broadcast.splat72
  %i.eq = or <2 x i64> %i.ep, %i.ej
  store <2 x i64> %i.eq, ptr %i.ek, align 8, !tbaa !15, !alias.scope !122
  %index.next81 = add nuw i64 %index78, 2         ; 2 uses
  %i.er = icmp eq i64 %index.next81, %n.vec70
  br i1 %i.er, label %._crit_edge.us.i36.i, label %vector.body77, !llvm.loop !124

scalar.ph67:                                      ; preds = %scalar.ph67.preheader, %scalar.ph67
  %indvars.iv149.i.i = phi i64 [ %indvars.iv.next150.i.i, %scalar.ph67 ], [ 0, %scalar.ph67.preheader ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !15 ; 2 uses
  %i.eu = and i64 %i.et, %i.dw
  %i.ev = lshr i64 %i.eu, %i.ds
  %gep170.i.i = getelementptr [8 x i8], ptr %invariant.gep169.i.i, i64 %indvars.iv149.i.i ; 2 uses
  %i.ew = load i64, ptr %gep170.i.i, align 8, !tbaa !15 ; 2 uses
  %i.ex = shl i64 %i.ew, %i.ds
  %i.ey = and i64 %i.ex, %i.dw
  %i.ez = and i64 %i.et, %i.dx
  %i.fa = or i64 %i.ey, %i.ez
  store i64 %i.fa, ptr %i.es, align 8, !tbaa !15
  %i.fb = and i64 %i.ew, %i.dw
  %i.fc = or i64 %i.fb, %i.ev
  store i64 %i.fc, ptr %gep170.i.i, align 8, !tbaa !15
  %indvars.iv.next150.i.i = add nuw nsw i64 %indvars.iv149.i.i, 1 ; 2 uses
  %exitcond154.not.i.i = icmp eq i64 %indvars.iv.next150.i.i, %wide.trip.count153.i.i
  br i1 %exitcond154.not.i.i, label %._crit_edge.us.i36.i, label %scalar.ph67, !llvm.loop !125

._crit_edge.us.i36.i:                             ; preds = %vector.body77, %scalar.ph67
  %i.fd = getelementptr inbounds [8 x i8], ptr %.0128.us.i.i, i64 %i.du ; 2 uses
  %i.fe = icmp ult ptr %i.fd, %i.g
  %indvar.next = add i64 %indvar, 1
  br i1 %i.fe, label %.preheader.us.i35.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !126

bb.l:                                             ; preds = %bb.j
  %i.ff = add nsw i32 %.019.i, -6                 ; 3 uses
  %i.fg = shl nuw i32 1, %i.ff                    ; 4 uses
  %i.fh = add nsw i64 %indvars.iv.i, -6           ; 2 uses
  %i.fi = trunc nsw i64 %i.fh to i32              ; 2 uses
  %i.fj = shl nuw i32 1, %i.fi                    ; 2 uses
  br i1 %.not.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.lr.ph.i.i

.preheader120.lr.ph.i.i:                          ; preds = %bb.l
  %i.fk = icmp eq i64 %i.fh, 31
  %i.fl = shl i32 2, %i.fi
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %.not131.i.i = icmp eq i32 %i.ff, 31
  %or.cond.i.i = select i1 %i.fk, i1 true, i1 %.not131.i.i
  br i1 %or.cond.i.i, label %Abc_TtSwapVars.exit.i, label %.preheader120.us.us.preheader.i.i

.preheader120.us.us.preheader.i.i:                ; preds = %.preheader120.lr.ph.i.i
  %i.fn = shl i32 2, %i.ff                        ; 3 uses
  %smax.i27.i = tail call i32 @llvm.smax.i32(i32 %i.fg, i32 1) ; 2 uses
  %i.fo = sext i32 %i.fn to i64                   ; 6 uses
  %i.fp = sext i32 %i.fg to i64                   ; 2 uses
  %i.fq = sext i32 %i.fj to i64                   ; 4 uses
  %wide.trip.count.i28.i = zext nneg i32 %smax.i27.i to i64 ; 4 uses
  %i.fr = shl nsw i64 %i.fp, 3                    ; 2 uses
  %i.fs = shl nsw i64 %i.fm, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.fo, i64 %i.fq)
  %i.ft = icmp slt i32 %i.fn, %i.fj
  %umin = zext i1 %i.ft to i64                    ; 3 uses
  %i.fu = or disjoint i64 %umin, %i.fo
  %i.fv = sub i64 %smax, %i.fu                    ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fo, i64 1) ; 2 uses
  %10 = shl nuw nsw i64 %wide.trip.count.i28.i, 3 ; 2 uses
  %i.fw = shl nsw i64 %i.fq, 3                    ; 2 uses
  %11 = udiv i64 %i.fv, %umax
  %12 = add i64 %11, %umin
  %i.fx = shl i64 %12, 3
  %13 = mul i64 %i.fx, %i.fo
  %i.fy = getelementptr i8, ptr %1, i64 %i.fr
  %i.fz = getelementptr i8, ptr %1, i64 %i.fw
  %i.ga = getelementptr i8, ptr %1, i64 %13
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fw
  %i.gc = getelementptr i8, ptr %i.gb, i64 %10
  %min.iters.check97 = icmp slt i32 %i.fg, 12
  %i.gd = getelementptr i8, ptr %1, i64 %i.fr
  %invariant.gep = getelementptr i8, ptr %i.gd, i64 %10
  %stride.check = icmp slt i32 %i.fn, 0
  %n.vec99 = and i64 %wide.trip.count.i28.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i28.i, 1
  %i.ge = icmp slt i32 %i.fg, 2
  %unroll_iter = and i64 %wide.trip.count.i28.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod118 = trunc i32 %smax.i27.i to i1
  br label %.preheader120.us.us.i.i

.preheader120.us.us.i.i:                          ; preds = %._crit_edge124.us.us.i.i, %.preheader120.us.us.preheader.i.i
  %indvar86 = phi i64 [ %indvar.next87, %._crit_edge124.us.us.i.i ], [ 0, %.preheader120.us.us.preheader.i.i ] ; 2 uses
  %.1125.us.us.i.i = phi ptr [ %i.gy, %._crit_edge124.us.us.i.i ], [ %1, %.preheader120.us.us.preheader.i.i ] ; 3 uses
  %i.gf = mul i64 %i.fs, %indvar86                ; 4 uses
  %scevgep88 = getelementptr i8, ptr %i.fy, i64 %i.gf
  %scevgep90 = getelementptr i8, ptr %i.fz, i64 %i.gf
  %scevgep91 = getelementptr i8, ptr %i.gc, i64 %i.gf
  %invariant.gep167.i.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.fp
  %invariant.gep167.i.i = getelementptr [8 x i8], ptr %.1125.us.us.i.i, i64 %i.fq
  %scevgep91.a = getelementptr i8, ptr %invariant.gep, i64 %i.gf
  %bound193.a = icmp ult ptr %scevgep88, %scevgep91
  br label %.preheader119.us.us.i.i

scalar.ph96:                                      ; preds = %scalar.ph96.preheader, %scalar.ph96
  %indvars.iv.i31.i = phi i64 [ %indvars.iv.next.i32.i.1, %scalar.ph96 ], [ 0, %scalar.ph96.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph96 ], [ 0, %scalar.ph96.preheader ]
  %i.gg = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !15
  %i.gi = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !15
  store i64 %i.gj, ptr %i.gg, align 8, !tbaa !15
  store i64 %i.gh, ptr %i.gi, align 8, !tbaa !15
  %indvars.iv.next.i32.i = or disjoint i64 %indvars.iv.i31.i, 1 ; 2 uses
  %i.gk = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !15
  %i.gm = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.next.i32.i ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !15
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !15
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !15
  %indvars.iv.next.i32.i.1 = add nuw nsw i64 %indvars.iv.i31.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.i.loopexit.unr-lcssa, label %scalar.ph96, !llvm.loop !127

.preheader119.us.us.i.i:                          ; preds = %._crit_edge.us.us.i.i, %.preheader120.us.us.i.i
  %indvars.iv146.i.i = phi i64 [ 0, %.preheader120.us.us.i.i ], [ %indvars.iv.next147.i.i, %._crit_edge.us.us.i.i ] ; 3 uses
  %gep.i30.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i.a, i64 %indvars.iv146.i.i ; 4 uses
  %gep168.i.i = getelementptr [8 x i8], ptr %invariant.gep167.i.i, i64 %indvars.iv146.i.i ; 4 uses
  br i1 %min.iters.check97, label %scalar.ph96.preheader, label %scalar.ph96.preheader.a

scalar.ph96.preheader:                            ; preds = %scalar.ph96.preheader.a, %.preheader119.us.us.i.i
  br i1 %i.ge, label %scalar.ph96.epil.preheader, label %scalar.ph96

scalar.ph96.preheader.a:                          ; preds = %.preheader119.us.us.i.i
  %14 = udiv i64 %i.fv, %umax
  %15 = add i64 %14, %umin
  %16 = shl i64 %15, 3
  %17 = mul i64 %16, %i.fo
  %gep120 = getelementptr i8, ptr %scevgep91.a, i64 %17
  %bound193 = icmp ult ptr %scevgep90, %gep120
  %found.conflict94 = and i1 %bound193.a, %bound193
  %18 = or i1 %found.conflict94, %stride.check
  br i1 %18, label %scalar.ph96.preheader, label %vector.body100

vector.body100:                                   ; preds = %scalar.ph96.preheader.a, %vector.body100
  %index101 = phi i64 [ %index.next106, %vector.body100 ], [ 0, %scalar.ph96.preheader.a ] ; 3 uses
  %i.go = getelementptr [8 x i8], ptr %gep.i30.i, i64 %index101 ; 3 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 16     ; 2 uses
  %wide.load102 = load <2 x i64>, ptr %i.go, align 8, !tbaa !15, !alias.scope !128, !noalias !131
  %wide.load103 = load <2 x i64>, ptr %i.gp, align 8, !tbaa !15, !alias.scope !128, !noalias !131
  %i.gq = getelementptr [8 x i8], ptr %gep168.i.i, i64 %index101 ; 3 uses
  %i.gr = getelementptr i8, ptr %i.gq, i64 16     ; 2 uses
  %wide.load104 = load <2 x i64>, ptr %i.gq, align 8, !tbaa !15, !alias.scope !131
  %wide.load105 = load <2 x i64>, ptr %i.gr, align 8, !tbaa !15, !alias.scope !131
  store <2 x i64> %wide.load104, ptr %i.go, align 8, !tbaa !15, !alias.scope !128, !noalias !131
  store <2 x i64> %wide.load105, ptr %i.gp, align 8, !tbaa !15, !alias.scope !128, !noalias !131
  store <2 x i64> %wide.load102, ptr %i.gq, align 8, !tbaa !15, !alias.scope !131
  store <2 x i64> %wide.load103, ptr %i.gr, align 8, !tbaa !15, !alias.scope !131
  %index.next106 = add nuw i64 %index101, 4       ; 2 uses
  %i.gs = icmp eq i64 %index.next106, %n.vec99
  br i1 %i.gs, label %._crit_edge.us.us.i.i, label %vector.body100, !llvm.loop !133

._crit_edge.us.us.i.i.loopexit.unr-lcssa:         ; preds = %scalar.ph96
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %scalar.ph96.epil.preheader

scalar.ph96.epil.preheader:                       ; preds = %._crit_edge.us.us.i.i.loopexit.unr-lcssa, %scalar.ph96.preheader
  %indvars.iv.i31.i.epil.init = phi i64 [ 0, %scalar.ph96.preheader ], [ %indvars.iv.next.i32.i.1, %._crit_edge.us.us.i.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod118)
  %i.gt = getelementptr [8 x i8], ptr %gep.i30.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !15
  %i.gv = getelementptr [8 x i8], ptr %gep168.i.i, i64 %indvars.iv.i31.i.epil.init ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !15
  store i64 %i.gw, ptr %i.gt, align 8, !tbaa !15
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !15
  br label %._crit_edge.us.us.i.i

._crit_edge.us.us.i.i:                            ; preds = %vector.body100, %scalar.ph96.epil.preheader, %._crit_edge.us.us.i.i.loopexit.unr-lcssa
  %indvars.iv.next147.i.i = add nsw i64 %indvars.iv146.i.i, %i.fo ; 2 uses
  %i.gx = icmp slt i64 %indvars.iv.next147.i.i, %i.fq
  br i1 %i.gx, label %.preheader119.us.us.i.i, label %._crit_edge124.us.us.i.i, !llvm.loop !134

._crit_edge124.us.us.i.i:                         ; preds = %._crit_edge.us.us.i.i
  %i.gy = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i.i, i64 %i.fm ; 2 uses
  %i.gz = icmp ult ptr %i.gy, %i.g
  %indvar.next87 = add i64 %indvar86, 1
  br i1 %i.gz, label %.preheader120.us.us.i.i, label %Abc_TtSwapVars.exit.i, !llvm.loop !135

Abc_TtSwapVars.exit.i:                            ; preds = %._crit_edge124.us.us.i.i, %._crit_edge.us.i36.i, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %.preheader120.lr.ph.i.i, %bb.l, %.preheader.lr.ph.i34.i, %bb.k, %bb.i, %Abc_TtHasVar.exit.thread4.i
  %i.ha = add nsw i32 %.019.i, 1
  br label %Abc_TtHasVar.exit.thread.i

Abc_TtHasVar.exit.thread.i:                       ; preds = %._crit_edge.us.i.i, %bb.c, %Abc_TtSwapVars.exit.i, %.preheader.lr.ph.i.i, %bb.e, %bb.b
  %.1.i = phi i32 [ %i.ha, %Abc_TtSwapVars.exit.i ], [ %.019.i, %bb.c ], [ %.019.i, %.preheader.lr.ph.i.i ], [ %.019.i, %bb.e ], [ %.019.i, %bb.b ], [ %.019.i, %._crit_edge.us.i.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtMinBase.exit, label %.lr.ph.split.i, !llvm.loop !116

Abc_TtMinBase.exit:                               ; preds = %Abc_TtHasVar.exit.thread.i, %Abc_TtHasVar.exit.thread.us.i, %bb.a
  %.0.lcssa.i = phi i32 [ 0, %bb.a ], [ %.1.us.i, %Abc_TtHasVar.exit.thread.us.i ], [ %.1.i, %Abc_TtHasVar.exit.thread.i ] ; 2 uses
  %i.hb = call i32 @Abc_TtCanonicizeWrap(ptr noundef nonnull @Abc_TtCanonicizeAda, ptr noundef %0, ptr noundef %1, i32 noundef %.0.lcssa.i, ptr noundef nonnull %i.a, i32 noundef 99) #27 ; 0 uses
  %i.hc = getelementptr i8, ptr %6, i64 4         ; 2 uses
  %.val23 = load i32, ptr %i.hc, align 4, !tbaa !87
  %i.hd = call fastcc i32 @Vec_MemHashInsert(ptr noundef %6, ptr noundef %1) ; 0 uses
  %.val22 = load i32, ptr %i.hc, align 4, !tbaa !87
  %i.he = icmp eq i32 %.val23, %.val22
  br i1 %i.he, label %bb.x, label %bb.m

bb.m:                                             ; preds = %Abc_TtMinBase.exit
  %i.hf = shl i32 %2, 16
  %i.hg = or i32 %.0.lcssa.i, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 4 ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !21 ; 7 uses
  %i.hj = load i32, ptr %7, align 8, !tbaa !24
  %i.hk = icmp eq i32 %i.hi, %i.hj
  br i1 %i.hk, label %bb.n, label %Vec_IntPush.exit

bb.n:                                             ; preds = %bb.m
  %i.hl = icmp slt i32 %i.hi, 16
  br i1 %i.hl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.hm = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !25 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.hn, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ho = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hn, i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

bb.q:                                             ; preds = %bb.o
  %i.hp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.q, %bb.p
  %i.hq = phi ptr [ %i.ho, %bb.p ], [ %i.hp, %bb.q ]
  store ptr %i.hq, ptr %i.hm, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.hr = icmp samesign ult i32 %i.hi, 1073741823
  %i.hs = shl nuw nsw i32 %i.hi, 1
  %spec.select.i = select i1 %i.hr, i32 %i.hs, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.hi, %spec.select.i
  br i1 %.not.i9.i, label %bb.s, label %Vec_IntPush.exit

bb.s:                                             ; preds = %bb.r
  %i.ht = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !25 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.hu, null
  %i.hv = zext nneg i32 %spec.select.i to i64
  %i.hw = shl nuw nsw i64 %i.hv, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hx = call ptr @realloc(ptr noundef nonnull %i.hu, i64 noundef %i.hw) #30
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.hy = call noalias ptr @malloc(i64 noundef %i.hw) #29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hz = phi ptr [ %i.hx, %bb.t ], [ %i.hy, %bb.u ]
  store ptr %i.hz, ptr %i.ht, align 8, !tbaa !25
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.v, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.v ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %7, align 8, !tbaa !24
  %.pre = load i32, ptr %i.hh, align 4, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.m, %bb.r, %Vec_IntGrow.exit11.sink.split.i
  %i.ia = phi i32 [ %i.hi, %bb.m ], [ %i.hi, %bb.r ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !25
  %i.id = add nsw i32 %i.ia, 1
  store i32 %i.id, ptr %i.hh, align 4, !tbaa !21
  %i.ie = sext i32 %i.ia to i64
  %i.if = getelementptr inbounds [4 x i8], ptr %i.ic, i64 %i.ie
  store i32 %i.hg, ptr %i.if, align 4, !tbaa !16
  %.val = load i32, ptr %i.hh, align 4, !tbaa !21
  %i.ig = srem i32 %.val, 1000000
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.w, label %bb.x

bb.w:                                             ; preds = %Vec_IntPush.exit
  call void @Dau_TablesSave(i32 noundef %3, i32 noundef %4, ptr noundef nonnull %6, ptr noundef nonnull %7, i32 noundef %8, i64 noundef %9)
  br label %bb.x

bb.x:                                             ; preds = %Vec_IntPush.exit, %bb.w, %Abc_TtMinBase.exit
  %.0 = phi i32 [ 0, %Abc_TtMinBase.exit ], [ 1, %bb.w ], [ 1, %Vec_IntPush.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.0
}

declare i32 @Abc_TtCanonicizeWrap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Abc_TtCanonicizeAda(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind uwtable
define void @Dau_FunctionEnum(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = alloca [32 x i32], align 16              ; 7 uses
  %i.e = alloca [4 x i64], align 16               ; 11 uses
  %i.f = alloca i64, align 8                      ; 38 uses
  %i.g = alloca i64, align 8                      ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #27
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %7, align 8, !tbaa !8
  %i.k = mul nsw i64 %i.j, 1000000
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = sdiv i64 %i.m, 1000
  %i.o = add nsw i64 %i.n, %i.k
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]  ; 32 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  %i.p = icmp slt i32 %0, 7
  %i.q = add nsw i32 %0, -6
  %i.r = shl nuw i32 1, %i.q
  %i.s = select i1 %i.p, i32 1, i32 %i.r          ; 6 uses
  %i.t = call ptr @Abc_TtHieManStart(i32 noundef %0, i32 noundef 5) #27 ; 29 uses
  %i.u = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28 ; 42 uses
  store i32 %i.s, ptr %i.u, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  store i32 16, ptr %i.v, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 3 uses
  store i32 65535, ptr %i.w, align 4, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  store i32 -1, ptr %i.x, align 4, !tbaa !83
  %i.y = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29 ; 35 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 3 uses
  store i32 0, ptr %i.z, align 4, !tbaa !21
  store i32 65536, ptr %i.y, align 8, !tbaa !24
  %i.aa = call noalias dereferenceable_or_null(262144) ptr @malloc(i64 noundef 262144) #29 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.d, i8 0, i64 128, i1 false)
  store i32 1, ptr %i.d, align 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 2, ptr %i.ac, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.i.i.backedge, %Abc_Clock.exit
  %.012.i.i = phi i32 [ 65535, %Abc_Clock.exit ], [ %i.ad, %.critedge.i.i.backedge ] ; 3 uses
  %i.ad = add i32 %.012.i.i, 1                    ; 7 uses
  %i.ae = and i32 %.012.i.i, 1
  %.not.not.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not.not.i.i, label %.preheader.i.i, label %.critedge.i.i.backedge

.critedge.i.i.backedge:                           ; preds = %.lr.ph.i.i, %.critedge.i.i
end_hunk_0
begin_hunk_1_@Dau_CollectNpnFunctions:bb.a
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph200, !llvm.loop !153

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph200
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph200.epil.preheader

scalar.ph200.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph200.preheader
  %indvars.iv.i70.epil.init = phi i64 [ 0, %scalar.ph200.preheader ], [ %indvars.iv.next.i71.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod269)
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i70.epil.init ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !15
  %gep.i.epil = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i70.epil.init ; 2 uses
  %i.du = load i64, ptr %gep.i.epil, align 8, !tbaa !15
  store i64 %i.du, ptr %i.ds, align 8, !tbaa !15
  store i64 %i.dt, ptr %gep.i.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body204, %scalar.ph200.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.dv = getelementptr inbounds [8 x i8], ptr %.051.us.i, i64 %i.cw ; 2 uses
  %i.dw = icmp ult ptr %i.dv, %i.aq
  %indvar.next = add i64 %indvar, 1
  br i1 %i.dw, label %.preheader.us.i, label %Abc_TtFlip.exit, !llvm.loop !154

Abc_TtFlip.exit:                                  ; preds = %._crit_edge.us.i, %vector.body190, %scalar.ph184, %scalar.ph184.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  %i.dx = load i64, ptr %i.m, align 8, !tbaa !15
  %i.dy = and i64 %i.dx, 1
  %.not66 = icmp eq i64 %i.dy, 0
  %brmerge = or i1 %.not66, %i.q
  br i1 %brmerge, label %Abc_TtNot.exit86.sink.split, label %.lr.ph.i76.preheader

.lr.ph.i76.preheader:                             ; preds = %Abc_TtFlip.exit
  br i1 %min.iters.check173, label %.lr.ph.i76, label %vector.body176

vector.body176:                                   ; preds = %.lr.ph.i76.preheader, %vector.body176
  %index177 = phi i64 [ %index.next180, %vector.body176 ], [ 0, %.lr.ph.i76.preheader ] ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index177 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load178 = load <2 x i64>, ptr %i.dz, align 8, !tbaa !15
  %wide.load179 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !15
  %i.eb = xor <2 x i64> %wide.load178, splat (i64 -1)
  %i.ec = xor <2 x i64> %wide.load179, splat (i64 -1)
  store <2 x i64> %i.eb, ptr %i.dz, align 8, !tbaa !15
  store <2 x i64> %i.ec, ptr %i.ea, align 8, !tbaa !15
  %index.next180 = add nuw i64 %index177, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next180, %n.vec175
  br i1 %i.ed, label %.lr.ph.preheader.i80, label %vector.body176, !llvm.loop !155

.lr.ph.i76:                                       ; preds = %.lr.ph.i76.preheader
  %i.ee = load i64, ptr %i.m, align 8, !tbaa !15
  %i.ef = xor i64 %i.ee, -1
  store i64 %i.ef, ptr %i.m, align 8, !tbaa !15
  br i1 %exitcond.not.i79, label %.lr.ph.preheader.i80, label %.lr.ph.i76.1

.lr.ph.i76.1:                                     ; preds = %.lr.ph.i76
  %i.eg = load i64, ptr %i.at, align 8, !tbaa !15
  %i.eh = xor i64 %i.eg, -1
  store i64 %i.eh, ptr %i.at, align 8, !tbaa !15
  br i1 %exitcond.not.i79.1, label %.lr.ph.preheader.i80, label %.lr.ph.i76.2

.lr.ph.i76.2:                                     ; preds = %.lr.ph.i76.1
  %i.ei = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ej = xor i64 %i.ei, -1
  store i64 %i.ej, ptr %i.au, align 8, !tbaa !15
  br label %.lr.ph.preheader.i80

.lr.ph.preheader.i80:                             ; preds = %vector.body176, %.lr.ph.i76, %.lr.ph.i76.1, %.lr.ph.i76.2
  %i.ek = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.f, ptr noundef nonnull %i.m) ; 0 uses
  br i1 %min.iters.check161, label %.lr.ph.i82, label %vector.body164

vector.body164:                                   ; preds = %.lr.ph.preheader.i80, %vector.body164
  %index165 = phi i64 [ %index.next168, %vector.body164 ], [ 0, %.lr.ph.preheader.i80 ] ; 2 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index165 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %wide.load166 = load <2 x i64>, ptr %i.el, align 8, !tbaa !15
  %wide.load167 = load <2 x i64>, ptr %i.em, align 8, !tbaa !15
  %i.en = xor <2 x i64> %wide.load166, splat (i64 -1)
  %i.eo = xor <2 x i64> %wide.load167, splat (i64 -1)
  store <2 x i64> %i.en, ptr %i.el, align 8, !tbaa !15
  store <2 x i64> %i.eo, ptr %i.em, align 8, !tbaa !15
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.ep = icmp eq i64 %index.next168, %n.vec163
  br i1 %i.ep, label %Abc_TtNot.exit86, label %vector.body164, !llvm.loop !156

.lr.ph.i82:                                       ; preds = %.lr.ph.preheader.i80, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i82 ], [ 0, %.lr.ph.preheader.i80 ] ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i83 ; 2 uses
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !15
  %i.es = xor i64 %i.er, -1
  store i64 %i.es, ptr %i.eq, align 8, !tbaa !15
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %exitcond.not.i85 = icmp eq i64 %indvars.iv.next.i84, %wide.trip.count59.i
  br i1 %exitcond.not.i85, label %Abc_TtNot.exit86, label %.lr.ph.i82, !llvm.loop !157

Abc_TtNot.exit86.sink.split:                      ; preds = %Abc_TtFlip.exit
  %i.et = call fastcc i32 @Vec_MemHashInsert(ptr noundef %i.f, ptr noundef nonnull %i.m) ; 0 uses
  br label %Abc_TtNot.exit86

Abc_TtNot.exit86:                                 ; preds = %vector.body164, %.lr.ph.i82, %Abc_TtNot.exit86.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !158

._crit_edge:                                      ; preds = %Abc_TtNot.exit86, %Abc_TtCopy.exit
  %i.eu = getelementptr i8, ptr %i.f, i64 4       ; 2 uses
  %.val67 = load i32, ptr %i.eu, align 4, !tbaa !87 ; 3 uses
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.ev = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, i32 noundef %.val67) ; 0 uses
  %i.ew = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.ex = call i32 @fflush(ptr noundef %i.ew)     ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ey = icmp sgt i32 %.val67, 0
  br i1 %i.ey, label %.lr.ph119, label %._crit_edge120

.lr.ph119:                                        ; preds = %bb.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.fa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %wide.trip.count24.i89 = zext i32 %i.j to i64   ; 2 uses
  %i.fc = icmp sgt i32 %i.al, 0
  %i.fd = getelementptr inbounds i8, ptr %i.m, i64 %i.l ; 2 uses
  br i1 %i.fc, label %.lr.ph119.split.us.preheader, label %._crit_edge120

.lr.ph119.split.us.preheader:                     ; preds = %.lr.ph119
  %i.fe = shl nuw nsw i64 %wide.trip.count24.i89, 3
  %wide.trip.count132 = zext nneg i32 %i.al to i64
  %i.ff = add i64 %i.l, %i.n
  %min.iters.check215 = icmp ult i32 %i.j, 4
  %n.vec217 = and i64 %wide.trip.count24.i89, 2147483644
  %exitcond74.not.i.us = icmp eq i32 %i.j, 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %exitcond74.not.i.us.1 = icmp eq i32 %i.j, 2
  %i.fh = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br label %.lr.ph119.split.us

.lr.ph119.split.us:                               ; preds = %.lr.ph119.split.us.preheader, %._crit_edge116.us
  %.058117.us = phi i32 [ %i.jl, %._crit_edge116.us ], [ 0, %.lr.ph119.split.us.preheader ] ; 3 uses
  br i1 %i.q, label %Abc_TtCopy.exit94.us.preheader, label %.lr.ph18.i90.us.preheader

.lr.ph18.i90.us.preheader:                        ; preds = %.lr.ph119.split.us
  %i.fi = load ptr, ptr %i.ez, align 8, !tbaa !74
  %i.fj = load i32, ptr %i.fa, align 8, !tbaa !78
  %i.fk = lshr i32 %.058117.us, %i.fj
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fl
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !79
  %i.fo = load i32, ptr %i.fb, align 4, !tbaa !81
  %i.fp = and i32 %i.fo, %.058117.us
  %i.fq = load i32, ptr %i.f, align 8, !tbaa !80
  %i.fr = mul i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.fn, i64 %i.fs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.m, ptr noundef nonnull align 8 dereferenceable(1) %i.ft, i64 %i.fe, i1 false), !tbaa !15
  br label %Abc_TtCopy.exit94.us.preheader

Abc_TtCopy.exit94.us.preheader:                   ; preds = %.lr.ph18.i90.us.preheader, %.lr.ph119.split.us
  br label %Abc_TtCopy.exit94.us

Abc_TtCopy.exit94.us:                             ; preds = %Abc_TtCopy.exit94.us.preheader, %Abc_TtSwapAdjacent.exit.us
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %Abc_TtSwapAdjacent.exit.us ], [ 0, %Abc_TtCopy.exit94.us.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv129
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !16 ; 6 uses
  %i.fw = icmp slt i32 %i.fv, 5
  br i1 %i.fw, label %bb.m, label %bb.j

bb.j:                                             ; preds = %Abc_TtCopy.exit94.us
  %i.fx = icmp eq i32 %i.fv, 5
  br i1 %i.fx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fy = icmp samesign ult i32 %i.fv, 7
  %i.fz = add nsw i32 %i.fv, -6
  %i.ga = shl nuw i32 1, %i.fz
  %i.gb = select i1 %i.fy, i32 1, i32 %i.ga       ; 7 uses
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.preheader.lr.ph.i95.us

.preheader.lr.ph.i95.us:                          ; preds = %bb.k
  %i.gc = icmp sgt i32 %i.gb, 0
  %i.gd = shl i32 %i.gb, 2                        ; 2 uses
  %i.ge = sext i32 %i.gd to i64                   ; 3 uses
  br i1 %i.gc, label %.preheader.us.preheader.i96.us, label %Abc_TtSwapAdjacent.exit.us

.preheader.us.preheader.i96.us:                   ; preds = %.preheader.lr.ph.i95.us
  %i.gf = shl nuw nsw i32 %i.gb, 1
  %i.gg = zext nneg i32 %i.gb to i64              ; 6 uses
  %i.gh = zext nneg i32 %i.gf to i64              ; 2 uses
  %i.gi = shl nuw nsw i64 %i.gg, 3                ; 2 uses
  %scevgep235 = getelementptr i8, ptr %i.m, i64 %i.gi
  %i.gj = shl nsw i64 %i.ge, 3                    ; 4 uses
  %i.gk = add i64 %i.gj, %i.n
  %umax = call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.gk)
  %i.gl = sub i64 %umax, %i.n                     ; 2 uses
  %i.gm = icmp ne i64 %i.gl, %i.gj
  %umin = zext i1 %i.gm to i64                    ; 2 uses
  %i.gn = or disjoint i64 %i.gj, %umin
  %i.go = sub i64 %i.gl, %i.gn
  %umax236 = call i64 @llvm.umax.i64(i64 %i.gj, i64 1)
  %i.gp = shl nuw nsw i64 %i.gg, 4
  %i.gq = shl nuw nsw i64 %i.gh, 3                ; 2 uses
  %scevgep237 = getelementptr i8, ptr %i.m, i64 %i.gq
  %min.iters.check245 = icmp ult i32 %i.gb, 12
  %i.gr = getelementptr i8, ptr %i.m, i64 %i.gp
  %i.gs = getelementptr i8, ptr %i.m, i64 %i.gi
  %scevgep239 = getelementptr i8, ptr %i.gs, i64 %i.gq
  %stride.check = icmp slt i32 %i.gd, 0
  %n.vec247 = and i64 %i.gg, 2147483644
  %xtraiter270 = and i64 %i.gg, 1
  %i.gt = icmp eq i32 %i.gb, 1
  %unroll_iter273 = and i64 %i.gg, 2147483646
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  %lcmp.mod272 = trunc i32 %i.gb to i1
  br label %.preheader.us.i97.us

.preheader.us.i97.us:                             ; preds = %._crit_edge.us.i103.us, %.preheader.us.preheader.i96.us
  %.061.us.i.us = phi ptr [ %i.hf, %._crit_edge.us.i103.us ], [ %i.m, %.preheader.us.preheader.i96.us ] ; 3 uses
  %invariant.gep.i98.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.gg ; 4 uses
  %invariant.gep80.i.us = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.gh ; 4 uses
  br i1 %min.iters.check245, label %scalar.ph244.preheader, label %scalar.ph244.preheader.a

scalar.ph244.preheader:                           ; preds = %scalar.ph244.preheader.a, %.preheader.us.i97.us
  br i1 %i.gt, label %scalar.ph244.epil.preheader, label %scalar.ph244

scalar.ph244.preheader.a:                         ; preds = %.preheader.us.i97.us
  %5 = udiv i64 %i.go, %umax236
  %6 = add i64 %5, %umin
  %7 = shl i64 %6, 3
  %8 = mul i64 %7, %i.ge                          ; 2 uses
  %gep = getelementptr i8, ptr %i.gr, i64 %8
  %gep278 = getelementptr i8, ptr %scevgep239, i64 %8
  %bound0240 = icmp ult ptr %scevgep235, %gep278
  %bound1241 = icmp ult ptr %scevgep237, %gep
  %found.conflict242 = and i1 %bound0240, %bound1241
  %9 = or i1 %found.conflict242, %stride.check
  br i1 %9, label %scalar.ph244.preheader, label %vector.body248

vector.body248:                                   ; preds = %scalar.ph244.preheader.a, %vector.body248
  %index249 = phi i64 [ %index.next254, %vector.body248 ], [ 0, %scalar.ph244.preheader.a ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %index249 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16 ; 2 uses
  %wide.load250 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !15, !alias.scope !159, !noalias !162
  %wide.load251 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !15, !alias.scope !159, !noalias !162
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %index249 ; 3 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16 ; 2 uses
  %wide.load252 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !15, !alias.scope !162
  %wide.load253 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !15, !alias.scope !162
  store <2 x i64> %wide.load252, ptr %i.gu, align 8, !tbaa !15, !alias.scope !159, !noalias !162
  store <2 x i64> %wide.load253, ptr %i.gv, align 8, !tbaa !15, !alias.scope !159, !noalias !162
  store <2 x i64> %wide.load250, ptr %i.gw, align 8, !tbaa !15, !alias.scope !162
  store <2 x i64> %wide.load251, ptr %i.gx, align 8, !tbaa !15, !alias.scope !162
  %index.next254 = add nuw i64 %index249, 4       ; 2 uses
  %i.gy = icmp eq i64 %index.next254, %n.vec247
  br i1 %i.gy, label %._crit_edge.us.i103.us, label %vector.body248, !llvm.loop !164

scalar.ph244:                                     ; preds = %scalar.ph244.preheader, %scalar.ph244
  %indvars.iv.i99.us = phi i64 [ %indvars.iv.next.i101.us.1, %scalar.ph244 ], [ 0, %scalar.ph244.preheader ] ; 4 uses
  %niter274 = phi i64 [ %niter274.next.1, %scalar.ph244 ], [ 0, %scalar.ph244.preheader ]
  %gep.i100.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.i99.us ; 2 uses
  %i.gz = load i64, ptr %gep.i100.us, align 8, !tbaa !15
  %gep81.i.us = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i99.us ; 2 uses
  %i.ha = load i64, ptr %gep81.i.us, align 8, !tbaa !15
  store i64 %i.ha, ptr %gep.i100.us, align 8, !tbaa !15
  store i64 %i.gz, ptr %gep81.i.us, align 8, !tbaa !15
  %indvars.iv.next.i101.us = or disjoint i64 %indvars.iv.i99.us, 1 ; 2 uses
  %gep.i100.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.next.i101.us ; 2 uses
  %i.hb = load i64, ptr %gep.i100.us.1, align 8, !tbaa !15
  %gep81.i.us.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.next.i101.us ; 2 uses
  %i.hc = load i64, ptr %gep81.i.us.1, align 8, !tbaa !15
  store i64 %i.hc, ptr %gep.i100.us.1, align 8, !tbaa !15
  store i64 %i.hb, ptr %gep81.i.us.1, align 8, !tbaa !15
  %indvars.iv.next.i101.us.1 = add nuw nsw i64 %indvars.iv.i99.us, 2 ; 2 uses
  %niter274.next.1 = add i64 %niter274, 2         ; 2 uses
  %niter274.ncmp.1 = icmp eq i64 %niter274.next.1, %unroll_iter273
  br i1 %niter274.ncmp.1, label %._crit_edge.us.i103.us.loopexit.unr-lcssa, label %scalar.ph244, !llvm.loop !165

._crit_edge.us.i103.us.loopexit.unr-lcssa:        ; preds = %scalar.ph244
  br i1 %lcmp.mod271.not, label %._crit_edge.us.i103.us, label %scalar.ph244.epil.preheader

scalar.ph244.epil.preheader:                      ; preds = %._crit_edge.us.i103.us.loopexit.unr-lcssa, %scalar.ph244.preheader
  %indvars.iv.i99.us.epil.init = phi i64 [ 0, %scalar.ph244.preheader ], [ %indvars.iv.next.i101.us.1, %._crit_edge.us.i103.us.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod272)
  %gep.i100.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i98.us, i64 %indvars.iv.i99.us.epil.init ; 2 uses
  %i.hd = load i64, ptr %gep.i100.us.epil, align 8, !tbaa !15
  %gep81.i.us.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us, i64 %indvars.iv.i99.us.epil.init ; 2 uses
  %i.he = load i64, ptr %gep81.i.us.epil, align 8, !tbaa !15
  store i64 %i.he, ptr %gep.i100.us.epil, align 8, !tbaa !15
  store i64 %i.hd, ptr %gep81.i.us.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i103.us

._crit_edge.us.i103.us:                           ; preds = %vector.body248, %scalar.ph244.epil.preheader, %._crit_edge.us.i103.us.loopexit.unr-lcssa
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us, i64 %i.ge ; 2 uses
  %i.hg = icmp ult ptr %i.hf, %i.fd
  br i1 %i.hg, label %.preheader.us.i97.us, label %Abc_TtSwapAdjacent.exit.us, !llvm.loop !166

bb.l:                                             ; preds = %bb.j
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.lr.ph.i104.us

.lr.ph.i104.us:                                   ; preds = %bb.l, %.lr.ph.i104.us
  %.05462.i.us = phi ptr [ %i.hk, %.lr.ph.i104.us ], [ %i.m, %bb.l ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 4 ; 2 uses
  %i.hi = load <2 x i32>, ptr %i.hh, align 4, !tbaa !16
  %i.hj = shufflevector <2 x i32> %i.hi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.hj, ptr %i.hh, align 4, !tbaa !16
  %i.hk = getelementptr inbounds nuw i8, ptr %.05462.i.us, i64 16 ; 2 uses
  %i.hl = icmp ult ptr %i.hk, %i.fd
  br i1 %i.hl, label %.lr.ph.i104.us, label %Abc_TtSwapAdjacent.exit.us, !llvm.loop !167

bb.m:                                             ; preds = %Abc_TtCopy.exit94.us
  br i1 %i.q, label %Abc_TtSwapAdjacent.exit.us, label %.lr.ph64.i.us

.lr.ph64.i.us:                                    ; preds = %bb.m
  %i.hm = shl nuw nsw i32 1, %i.fv
  %i.hn = sext i32 %i.fv to i64
  %i.ho = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.hn ; 3 uses
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !15 ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !15 ; 4 uses
  %i.hs = zext nneg i32 %i.hm to i64              ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !15 ; 4 uses
  br i1 %min.iters.check215, label %scalar.ph214, label %vector.ph216

vector.ph216:                                     ; preds = %.lr.ph64.i.us
  %broadcast.splatinsert218 = insertelement <2 x i64> poison, i64 %i.hp, i64 0
  %broadcast.splat219 = shufflevector <2 x i64> %broadcast.splatinsert218, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert220 = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %broadcast.splat221 = shufflevector <2 x i64> %broadcast.splatinsert220, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert222 = insertelement <2 x i64> poison, i64 %i.hs, i64 0
  %broadcast.splat223 = shufflevector <2 x i64> %broadcast.splatinsert222, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert224 = insertelement <2 x i64> poison, i64 %i.hu, i64 0
  %broadcast.splat225 = shufflevector <2 x i64> %broadcast.splatinsert224, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body226

vector.body226:                                   ; preds = %vector.body226, %vector.ph216
  %index227 = phi i64 [ 0, %vector.ph216 ], [ %index.next230, %vector.body226 ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index227 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %wide.load228 = load <2 x i64>, ptr %i.hv, align 8, !tbaa !15 ; 3 uses
  %wide.load229 = load <2 x i64>, ptr %i.hw, align 8, !tbaa !15 ; 3 uses
  %i.hx = and <2 x i64> %wide.load228, %broadcast.splat219
  %i.hy = and <2 x i64> %wide.load229, %broadcast.splat219
  %i.hz = and <2 x i64> %wide.load228, %broadcast.splat221
  %i.ia = and <2 x i64> %wide.load229, %broadcast.splat221
  %i.ib = shl <2 x i64> %i.hz, %broadcast.splat223
  %i.ic = shl <2 x i64> %i.ia, %broadcast.splat223
  %i.id = or <2 x i64> %i.ib, %i.hx
  %i.ie = or <2 x i64> %i.ic, %i.hy
  %i.if = and <2 x i64> %wide.load228, %broadcast.splat225
  %i.ig = and <2 x i64> %wide.load229, %broadcast.splat225
  %i.ih = lshr <2 x i64> %i.if, %broadcast.splat223
  %i.ii = lshr <2 x i64> %i.ig, %broadcast.splat223
  %i.ij = or <2 x i64> %i.id, %i.ih
  %i.ik = or <2 x i64> %i.ie, %i.ii
  store <2 x i64> %i.ij, ptr %i.hv, align 8, !tbaa !15
  store <2 x i64> %i.ik, ptr %i.hw, align 8, !tbaa !15
  %index.next230 = add nuw i64 %index227, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next230, %n.vec217
  br i1 %i.il, label %Abc_TtSwapAdjacent.exit.us, label %vector.body226, !llvm.loop !168

scalar.ph214:                                     ; preds = %.lr.ph64.i.us
  %i.im = load i64, ptr %i.m, align 8, !tbaa !15  ; 3 uses
  %i.in = and i64 %i.im, %i.hp
  %i.io = and i64 %i.im, %i.hr
  %i.ip = shl i64 %i.io, %i.hs
  %i.iq = or i64 %i.ip, %i.in
  %i.ir = and i64 %i.im, %i.hu
  %i.is = lshr i64 %i.ir, %i.hs
  %i.it = or i64 %i.iq, %i.is
  store i64 %i.it, ptr %i.m, align 8, !tbaa !15
  br i1 %exitcond74.not.i.us, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph214.1

scalar.ph214.1:                                   ; preds = %scalar.ph214
  %i.iu = load i64, ptr %i.fg, align 8, !tbaa !15 ; 3 uses
  %i.iv = and i64 %i.iu, %i.hp
  %i.iw = and i64 %i.iu, %i.hr
  %i.ix = shl i64 %i.iw, %i.hs
  %i.iy = or i64 %i.ix, %i.iv
  %i.iz = and i64 %i.iu, %i.hu
  %i.ja = lshr i64 %i.iz, %i.hs
  %i.jb = or i64 %i.iy, %i.ja
  store i64 %i.jb, ptr %i.fg, align 8, !tbaa !15
  br i1 %exitcond74.not.i.us.1, label %Abc_TtSwapAdjacent.exit.us, label %scalar.ph214.2

scalar.ph214.2:                                   ; preds = %scalar.ph214.1
  %i.jc = load i64, ptr %i.fh, align 8, !tbaa !15 ; 3 uses
  %i.jd = and i64 %i.jc, %i.hp
  %i.je = and i64 %i.jc, %i.hr
  %i.jf = shl i64 %i.je, %i.hs
  %i.jg = or i64 %i.jf, %i.jd
  %i.jh = and i64 %i.jc, %i.hu
  %i.ji = lshr i64 %i.jh, %i.hs
  %i.jj = or i64 %i.jg, %i.ji
  store i64 %i.jj, ptr %i.fh, align 8, !tbaa !15
  br label %Abc_TtSwapAdjacent.exit.us

Abc_TtSwapAdjacent.exit.us:                       ; preds = %._crit_edge.us.i103.us, %.lr.ph.i104.us, %vector.body226, %scalar.ph214, %scalar.ph214.1, %scalar.ph214.2, %bb.m, %bb.l, %.preheader.lr.ph.i95.us, %bb.k
  %i.jk = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.f, ptr noundef %i.m) ; 0 uses
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge116.us, label %Abc_TtCopy.exit94.us, !llvm.loop !169

._crit_edge116.us:                                ; preds = %Abc_TtSwapAdjacent.exit.us
  %i.jl = add nuw nsw i32 %.058117.us, 1          ; 2 uses
  %exitcond134.not = icmp eq i32 %i.jl, %.val67
  br i1 %exitcond134.not, label %._crit_edge120, label %.lr.ph119.split.us, !llvm.loop !170

._crit_edge120:                                   ; preds = %._crit_edge116.us, %.lr.ph119, %bb.i
  %.not63 = icmp eq ptr %i.am, null
  br i1 %.not63, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge120
  call void @free(ptr noundef nonnull %i.am) #27
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge120, %bb.n
  %.not64 = icmp eq ptr %i.an, null
  br i1 %.not64, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.an) #27
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.not65 = icmp eq ptr %i.m, null
  br i1 %.not65, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @free(ptr noundef nonnull %i.m) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  br i1 %.not, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val = load i32, ptr %i.eu, align 4, !tbaa !87
  %i.jm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, i32 noundef %.val) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.jn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #27
  %i.jo = icmp slt i32 %i.jn, 0
  br i1 %i.jo, label %Abc_Clock.exit106, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jp = load i64, ptr %3, align 8, !tbaa !8
  %i.jq = mul nsw i64 %i.jp, 1000000
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !11
  %i.jt = sdiv i64 %i.js, 1000
  %i.ju = add nsw i64 %i.jt, %i.jq
  br label %Abc_Clock.exit106

Abc_Clock.exit106:                                ; preds = %bb.t, %bb.u
  %.0.i105 = phi i64 [ %i.ju, %bb.u ], [ -1, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.jv = add i64 %.0.i105, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.3)
  %i.jw = sitofp i64 %i.jv to double
  %i.jx = fdiv double %i.jw, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.34, double noundef %i.jx)
  %i.jy = load ptr, ptr @stdout, align 8, !tbaa !12
  %i.jz = call i32 @fflush(ptr noundef %i.jy)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %Abc_Clock.exit106, %bb.s
  ret ptr %i.f
}

; Function Attrs: inlinehint nofree nounwind memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @Vec_MemAllocForTTSimple(i32 noundef %0) unnamed_addr #14 {
bb.a:
  %i.a = icmp slt i32 %0, 7
  %i.b = add nsw i32 %0, -6
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #28 ; 7 uses
  store i32 %i.d, ptr %i.e, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i32 12, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 4095, ptr %i.g, align 4, !tbaa !81
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
end_hunk_1
begin_hunk_2_@Dau_PrintNpnFunctions:bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.o, i32 1)
  %wide.trip.count168 = zext nneg i32 %smax to i64
  %wide.trip.count163 = zext nneg i32 %i.n to i64
  %i.ac = add i64 %i.h, %i.j
  %min.iters.check239 = icmp ult i32 %i.e, 4
  %n.vec241 = and i64 %wide.trip.count.i, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.e, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.e, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %min.iters.check210 = icmp ult i32 %i.e, 4
  %n.vec212 = and i64 %wide.trip.count.i, 2147483644
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %exitcond60.not.i.1 = icmp eq i32 %i.e, 2
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader293, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader293 ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader138, label %.lr.ph, !llvm.loop !183

.preheader:                                       ; preds = %.preheader.lr.ph, %Abc_TtFlip.exit
  %indvars.iv165 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next166, %Abc_TtFlip.exit ] ; 2 uses
  %.0148 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.hm, %Abc_TtFlip.exit ] ; 2 uses
  %.079147 = phi i32 [ 0, %.preheader.lr.ph ], [ %.1.lcssa, %Abc_TtFlip.exit ] ; 2 uses
  br i1 %i.y, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %.preheader, %Abc_TtSwapAdjacent.exit
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %Abc_TtSwapAdjacent.exit ], [ 0, %.preheader ] ; 2 uses
  %.1144 = phi i32 [ %i.ao, %Abc_TtSwapAdjacent.exit ], [ %.079147, %.preheader ] ; 2 uses
  br i1 %i.l, label %.lr.ph.i, label %Abc_TtCopy.exit107

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Abc_TtCopy.exit107, label %.lr.ph.i, !llvm.loop !184

.lr.ph.i:                                         ; preds = %.lr.ph145, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph145 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !15 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, %i.am
  br i1 %.not.i, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %Abc_TtCopy.exit107, label %.lr.ph18.i103.preheader

.lr.ph18.i103.preheader:                          ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.ab, i1 false), !tbaa !15
  br label %Abc_TtCopy.exit107

Abc_TtCopy.exit107:                               ; preds = %bb.b, %.lr.ph18.i103.preheader, %bb.c, %.lr.ph145
  %i.ao = add nsw i32 %.1144, 1                   ; 2 uses
  call void @Dau_PrintNpnFunction(ptr noundef %i.f, i32 noundef %.1144, ptr noundef %i.i, i32 noundef %1, i32 noundef %.0148, ptr noundef nonnull %i.a, i32 noundef %2)
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv160
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !16 ; 7 uses
  %i.ar = icmp slt i32 %i.aq, 5
  br i1 %i.ar, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_TtCopy.exit107
  br i1 %i.l, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.d
  %i.as = shl nuw nsw i32 1, %i.aq
  %i.at = sext i32 %i.aq to i64
  %i.au = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.at ; 3 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !15 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15 ; 4 uses
  %i.ay = zext nneg i32 %i.as to i64              ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !15 ; 4 uses
  br i1 %min.iters.check239, label %scalar.ph238, label %vector.ph240

vector.ph240:                                     ; preds = %.lr.ph64.i
  %broadcast.splatinsert242 = insertelement <2 x i64> poison, i64 %i.av, i64 0
  %broadcast.splat243 = shufflevector <2 x i64> %broadcast.splatinsert242, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert244 = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %broadcast.splat245 = shufflevector <2 x i64> %broadcast.splatinsert244, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert246 = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %broadcast.splat247 = shufflevector <2 x i64> %broadcast.splatinsert246, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert248 = insertelement <2 x i64> poison, i64 %i.ba, i64 0
  %broadcast.splat249 = shufflevector <2 x i64> %broadcast.splatinsert248, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph240
  %index251 = phi i64 [ 0, %vector.ph240 ], [ %index.next254, %vector.body250 ] ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index251 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  %wide.load252 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !15 ; 3 uses
  %wide.load253 = load <2 x i64>, ptr %i.bc, align 8, !tbaa !15 ; 3 uses
  %i.bd = and <2 x i64> %wide.load252, %broadcast.splat243
  %i.be = and <2 x i64> %wide.load253, %broadcast.splat243
  %i.bf = and <2 x i64> %wide.load252, %broadcast.splat245
  %i.bg = and <2 x i64> %wide.load253, %broadcast.splat245
  %i.bh = shl <2 x i64> %i.bf, %broadcast.splat247
  %i.bi = shl <2 x i64> %i.bg, %broadcast.splat247
  %i.bj = or <2 x i64> %i.bh, %i.bd
  %i.bk = or <2 x i64> %i.bi, %i.be
  %i.bl = and <2 x i64> %wide.load252, %broadcast.splat249
  %i.bm = and <2 x i64> %wide.load253, %broadcast.splat249
  %i.bn = lshr <2 x i64> %i.bl, %broadcast.splat247
  %i.bo = lshr <2 x i64> %i.bm, %broadcast.splat247
  %i.bp = or <2 x i64> %i.bj, %i.bn
  %i.bq = or <2 x i64> %i.bk, %i.bo
  store <2 x i64> %i.bp, ptr %i.bb, align 8, !tbaa !15
  store <2 x i64> %i.bq, ptr %i.bc, align 8, !tbaa !15
  %index.next254 = add nuw i64 %index251, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next254, %n.vec241
  br i1 %i.br, label %Abc_TtSwapAdjacent.exit, label %vector.body250, !llvm.loop !185

scalar.ph238:                                     ; preds = %.lr.ph64.i
  %i.bs = load i64, ptr %i.i, align 8, !tbaa !15  ; 3 uses
  %i.bt = and i64 %i.bs, %i.av
  %i.bu = and i64 %i.bs, %i.ax
  %i.bv = shl i64 %i.bu, %i.ay
  %i.bw = or i64 %i.bv, %i.bt
  %i.bx = and i64 %i.bs, %i.ba
  %i.by = lshr i64 %i.bx, %i.ay
  %i.bz = or i64 %i.bw, %i.by
  store i64 %i.bz, ptr %i.i, align 8, !tbaa !15
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph238.1

scalar.ph238.1:                                   ; preds = %scalar.ph238
  %i.ca = load i64, ptr %i.ad, align 8, !tbaa !15 ; 3 uses
  %i.cb = and i64 %i.ca, %i.av
  %i.cc = and i64 %i.ca, %i.ax
  %i.cd = shl i64 %i.cc, %i.ay
  %i.ce = or i64 %i.cd, %i.cb
  %i.cf = and i64 %i.ca, %i.ba
  %i.cg = lshr i64 %i.cf, %i.ay
  %i.ch = or i64 %i.ce, %i.cg
  store i64 %i.ch, ptr %i.ad, align 8, !tbaa !15
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph238.2

scalar.ph238.2:                                   ; preds = %scalar.ph238.1
  %i.ci = load i64, ptr %i.ae, align 8, !tbaa !15 ; 3 uses
  %i.cj = and i64 %i.ci, %i.av
  %i.ck = and i64 %i.ci, %i.ax
  %i.cl = shl i64 %i.ck, %i.ay
  %i.cm = or i64 %i.cl, %i.cj
  %i.cn = and i64 %i.ci, %i.ba
  %i.co = lshr i64 %i.cn, %i.ay
  %i.cp = or i64 %i.cm, %i.co
  store i64 %i.cp, ptr %i.ae, align 8, !tbaa !15
  br label %Abc_TtSwapAdjacent.exit

bb.e:                                             ; preds = %Abc_TtCopy.exit107
  %i.cq = icmp eq i32 %i.aq, 5
  br i1 %i.cq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.l, label %.lr.ph.i111, label %Abc_TtSwapAdjacent.exit

.lr.ph.i111:                                      ; preds = %bb.f, %.lr.ph.i111
  %.05462.i = phi ptr [ %i.cu, %.lr.ph.i111 ], [ %i.i, %bb.f ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.cs = load <2 x i32>, ptr %i.cr, align 4, !tbaa !16
  %i.ct = shufflevector <2 x i32> %i.cs, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ct, ptr %i.cr, align 4, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.cv = icmp ult ptr %i.cu, %i.z
  br i1 %i.cv, label %.lr.ph.i111, label %Abc_TtSwapAdjacent.exit, !llvm.loop !167

bb.g:                                             ; preds = %bb.e
  %i.cw = icmp samesign ult i32 %i.aq, 7
  %i.cx = add nsw i32 %i.aq, -6
  %i.cy = shl nuw i32 1, %i.cx
  %i.cz = select i1 %i.cw, i32 1, i32 %i.cy       ; 7 uses
  br i1 %i.l, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.g
  %i.da = icmp sgt i32 %i.cz, 0
  %i.db = shl i32 %i.cz, 2                        ; 2 uses
  %i.dc = sext i32 %i.db to i64                   ; 3 uses
  br i1 %i.da, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.dd = shl nuw nsw i32 %i.cz, 1
  %i.de = zext nneg i32 %i.cz to i64              ; 6 uses
  %i.df = zext nneg i32 %i.dd to i64              ; 2 uses
  %i.dg = shl nuw nsw i64 %i.de, 3                ; 2 uses
  %scevgep259 = getelementptr i8, ptr %i.i, i64 %i.dg
  %i.dh = shl nsw i64 %i.dc, 3                    ; 4 uses
  %i.di = add i64 %i.dh, %i.j
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.di)
  %i.dj = sub i64 %umax, %i.j                     ; 2 uses
  %i.dk = icmp ne i64 %i.dj, %i.dh
  %umin = zext i1 %i.dk to i64                    ; 2 uses
  %i.dl = or disjoint i64 %i.dh, %umin
  %i.dm = sub i64 %i.dj, %i.dl
  %umax260 = tail call i64 @llvm.umax.i64(i64 %i.dh, i64 1)
  %i.dn = shl nuw nsw i64 %i.de, 4
  %i.do = shl nuw nsw i64 %i.df, 3                ; 2 uses
  %scevgep261 = getelementptr i8, ptr %i.i, i64 %i.do
  %min.iters.check269 = icmp ult i32 %i.cz, 12
  %i.dp = getelementptr i8, ptr %i.i, i64 %i.dn
  %i.dq = getelementptr i8, ptr %i.i, i64 %i.dg
  %scevgep263 = getelementptr i8, ptr %i.dq, i64 %i.do
  %stride.check = icmp slt i32 %i.db, 0
  %n.vec271 = and i64 %i.de, 2147483644
  %xtraiter = and i64 %i.de, 1
  %i.dr = icmp eq i32 %i.cz, 1
  %unroll_iter = and i64 %i.de, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod294 = trunc i32 %i.cz to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.ed, %._crit_edge.us.i ], [ %i.i, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.de ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.df ; 4 uses
  br i1 %min.iters.check269, label %scalar.ph268.preheader, label %scalar.ph268.preheader.a

scalar.ph268.preheader:                           ; preds = %scalar.ph268.preheader.a, %.preheader.us.i
  br i1 %i.dr, label %scalar.ph268.epil.preheader, label %scalar.ph268

scalar.ph268.preheader.a:                         ; preds = %.preheader.us.i
  %3 = udiv i64 %i.dm, %umax260
  %4 = add i64 %3, %umin
  %5 = shl i64 %4, 3
  %6 = mul i64 %5, %i.dc                          ; 2 uses
  %gep = getelementptr i8, ptr %i.dp, i64 %6
  %gep307 = getelementptr i8, ptr %scevgep263, i64 %6
  %bound0264 = icmp ult ptr %scevgep259, %gep307
  %bound1265 = icmp ult ptr %scevgep261, %gep
  %found.conflict266 = and i1 %bound0264, %bound1265
  %7 = or i1 %found.conflict266, %stride.check
  br i1 %7, label %scalar.ph268.preheader, label %vector.body272

vector.body272:                                   ; preds = %scalar.ph268.preheader.a, %vector.body272
  %index273 = phi i64 [ %index.next278, %vector.body272 ], [ 0, %scalar.ph268.preheader.a ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index273 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 2 uses
  %wide.load274 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !15, !alias.scope !186, !noalias !189
  %wide.load275 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !15, !alias.scope !186, !noalias !189
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index273 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load276 = load <2 x i64>, ptr %i.du, align 8, !tbaa !15, !alias.scope !189
  %wide.load277 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !15, !alias.scope !189
  store <2 x i64> %wide.load276, ptr %i.ds, align 8, !tbaa !15, !alias.scope !186, !noalias !189
  store <2 x i64> %wide.load277, ptr %i.dt, align 8, !tbaa !15, !alias.scope !186, !noalias !189
  store <2 x i64> %wide.load274, ptr %i.du, align 8, !tbaa !15, !alias.scope !189
  store <2 x i64> %wide.load275, ptr %i.dv, align 8, !tbaa !15, !alias.scope !189
  %index.next278 = add nuw i64 %index273, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next278, %n.vec271
  br i1 %i.dw, label %._crit_edge.us.i, label %vector.body272, !llvm.loop !191

scalar.ph268:                                     ; preds = %scalar.ph268.preheader, %scalar.ph268
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109.1, %scalar.ph268 ], [ 0, %scalar.ph268.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph268 ], [ 0, %scalar.ph268.preheader ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i108 ; 2 uses
  %i.dx = load i64, ptr %gep.i, align 8, !tbaa !15
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i108 ; 2 uses
  %i.dy = load i64, ptr %gep81.i, align 8, !tbaa !15
  store i64 %i.dy, ptr %gep.i, align 8, !tbaa !15
  store i64 %i.dx, ptr %gep81.i, align 8, !tbaa !15
  %indvars.iv.next.i109 = or disjoint i64 %indvars.iv.i108, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i109 ; 2 uses
  %i.dz = load i64, ptr %gep.i.1, align 8, !tbaa !15
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i109 ; 2 uses
  %i.ea = load i64, ptr %gep81.i.1, align 8, !tbaa !15
  store i64 %i.ea, ptr %gep.i.1, align 8, !tbaa !15
  store i64 %i.dz, ptr %gep81.i.1, align 8, !tbaa !15
  %indvars.iv.next.i109.1 = add nuw nsw i64 %indvars.iv.i108, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph268, !llvm.loop !192

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph268
  br i1 %lcmp.mod.not, label %._crit_edge.us.i, label %scalar.ph268.epil.preheader

scalar.ph268.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph268.preheader
  %indvars.iv.i108.epil.init = phi i64 [ 0, %scalar.ph268.preheader ], [ %indvars.iv.next.i109.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod294)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i108.epil.init ; 2 uses
  %i.eb = load i64, ptr %gep.i.epil, align 8, !tbaa !15
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i108.epil.init ; 2 uses
  %i.ec = load i64, ptr %gep81.i.epil, align 8, !tbaa !15
  store i64 %i.ec, ptr %gep.i.epil, align 8, !tbaa !15
  store i64 %i.eb, ptr %gep81.i.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body272, %scalar.ph268.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.dc ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.z
  br i1 %i.ee, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !166

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i111, %vector.body250, %scalar.ph238, %scalar.ph238.1, %scalar.ph238.2, %bb.d, %bb.f, %bb.g, %.preheader.lr.ph.i
  %i.ef = sext i32 %i.aq to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load <2 x i32>, ptr %i.eg, align 4, !tbaa !16
  %i.ei = shufflevector <2 x i32> %i.eh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ei, ptr %i.eg, align 4, !tbaa !16
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %._crit_edge, label %.lr.ph145, !llvm.loop !193

._crit_edge:                                      ; preds = %Abc_TtSwapAdjacent.exit, %.preheader
  %.1.lcssa = phi i32 [ %.079147, %.preheader ], [ %i.ao, %Abc_TtSwapAdjacent.exit ]
  br i1 %.not91, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %putchar92 = tail call i32 @putchar(i32 10)     ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv165
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !16 ; 7 uses
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.el = load i64, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %i.em = shl nuw i32 1, %i.ek
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = shl i64 %i.el, %i.en
  %i.ep = sext i32 %i.ek to i64
  %i.eq = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ep
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !15 ; 2 uses
  %i.es = and i64 %i.eo, %i.er
  %i.et = and i64 %i.er, %i.el
  %i.eu = lshr i64 %i.et, %i.en
  %i.ev = or i64 %i.eu, %i.es
  store i64 %i.ev, ptr %i.i, align 8, !tbaa !15
  br label %Abc_TtFlip.exit

bb.k:                                             ; preds = %bb.i
  %i.ew = icmp slt i32 %i.ek, 6
  br i1 %i.ew, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %i.l, label %.lr.ph.i123, label %Abc_TtFlip.exit

.lr.ph.i123:                                      ; preds = %bb.l
  %i.ex = shl nuw nsw i32 1, %i.ek
  %i.ey = zext nneg i32 %i.ex to i64              ; 7 uses
  %i.ez = sext i32 %i.ek to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr @s_Truths6, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !15 ; 7 uses
  br i1 %min.iters.check210, label %scalar.ph209, label %vector.ph211

vector.ph211:                                     ; preds = %.lr.ph.i123
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert213 = insertelement <2 x i64> poison, i64 %i.fb, i64 0
  %broadcast.splat214 = shufflevector <2 x i64> %broadcast.splatinsert213, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph211
  %index216 = phi i64 [ 0, %vector.ph211 ], [ %index.next218, %vector.body215 ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index216 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fc, align 8, !tbaa !15 ; 2 uses
  %wide.load217 = load <2 x i64>, ptr %i.fd, align 8, !tbaa !15 ; 2 uses
  %i.fe = shl <2 x i64> %wide.load, %broadcast.splat
  %i.ff = shl <2 x i64> %wide.load217, %broadcast.splat
  %i.fg = and <2 x i64> %i.fe, %broadcast.splat214
  %i.fh = and <2 x i64> %i.ff, %broadcast.splat214
  %i.fi = and <2 x i64> %wide.load, %broadcast.splat214
  %i.fj = and <2 x i64> %wide.load217, %broadcast.splat214
  %i.fk = lshr <2 x i64> %i.fi, %broadcast.splat
  %i.fl = lshr <2 x i64> %i.fj, %broadcast.splat
  %i.fm = or <2 x i64> %i.fk, %i.fg
  %i.fn = or <2 x i64> %i.fl, %i.fh
  store <2 x i64> %i.fm, ptr %i.fc, align 8, !tbaa !15
  store <2 x i64> %i.fn, ptr %i.fd, align 8, !tbaa !15
  %index.next218 = add nuw i64 %index216, 4       ; 2 uses
  %i.fo = icmp eq i64 %index.next218, %n.vec212
  br i1 %i.fo, label %Abc_TtFlip.exit, label %vector.body215, !llvm.loop !194

scalar.ph209:                                     ; preds = %.lr.ph.i123
  %i.fp = load i64, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  %i.fq = shl i64 %i.fp, %i.ey
  %i.fr = and i64 %i.fq, %i.fb
  %i.fs = and i64 %i.fp, %i.fb
  %i.ft = lshr i64 %i.fs, %i.ey
  %i.fu = or i64 %i.ft, %i.fr
  store i64 %i.fu, ptr %i.i, align 8, !tbaa !15
  %i.fv = load i64, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %i.fw = shl i64 %i.fv, %i.ey
  %i.fx = and i64 %i.fw, %i.fb
  %i.fy = and i64 %i.fv, %i.fb
  %i.fz = lshr i64 %i.fy, %i.ey
  %i.ga = or i64 %i.fz, %i.fx
  store i64 %i.ga, ptr %i.af, align 8, !tbaa !15
  br i1 %exitcond60.not.i.1, label %Abc_TtFlip.exit, label %scalar.ph209.2

scalar.ph209.2:                                   ; preds = %scalar.ph209
  %i.gb = load i64, ptr %i.ag, align 8, !tbaa !15 ; 2 uses
  %i.gc = shl i64 %i.gb, %i.ey
  %i.gd = and i64 %i.gc, %i.fb
  %i.ge = and i64 %i.gb, %i.fb
  %i.gf = lshr i64 %i.ge, %i.ey
  %i.gg = or i64 %i.gf, %i.gd
  store i64 %i.gg, ptr %i.ag, align 8, !tbaa !15
  br label %Abc_TtFlip.exit

bb.m:                                             ; preds = %bb.k
  %i.gh = add nsw i32 %i.ek, -6                   ; 3 uses
  %i.gi = shl nuw i32 1, %i.gh                    ; 4 uses
  br i1 %i.l, label %.preheader.lr.ph.i112, label %Abc_TtFlip.exit

.preheader.lr.ph.i112:                            ; preds = %bb.m
  %.not.i113 = icmp eq i32 %i.gh, 31
  %i.gj = shl i32 2, %i.gh
  %i.gk = sext i32 %i.gj to i64                   ; 2 uses
  br i1 %.not.i113, label %Abc_TtFlip.exit, label %.preheader.us.preheader.i114

.preheader.us.preheader.i114:                     ; preds = %.preheader.lr.ph.i112
  %i.gl = sext i32 %i.gi to i64                   ; 2 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.gi, i32 1) ; 2 uses
  %wide.trip.count.i115 = zext nneg i32 %smax.i to i64 ; 4 uses
  %i.gm = shl nuw nsw i64 %wide.trip.count.i115, 3 ; 2 uses
  %i.gn = shl nsw i64 %i.gk, 3
  %i.go = shl nsw i64 %i.gl, 3                    ; 2 uses
  %min.iters.check225 = icmp slt i32 %i.gi, 4
  %i.gp = getelementptr i8, ptr %i.i, i64 %i.go
  %i.gq = getelementptr i8, ptr %i.gp, i64 %i.gm
  %i.gr = getelementptr i8, ptr %i.i, i64 %i.go
  %i.gs = getelementptr i8, ptr %i.i, i64 %i.gm
  %n.vec227 = and i64 %wide.trip.count.i115, 2147483644
  %xtraiter295 = and i64 %wide.trip.count.i115, 1
  %i.gt = icmp slt i32 %i.gi, 2
  %unroll_iter298 = and i64 %wide.trip.count.i115, 2147483646
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  %lcmp.mod297 = trunc i32 %smax.i to i1
  br label %.preheader.us.i116

.preheader.us.i116:                               ; preds = %._crit_edge.us.i122, %.preheader.us.preheader.i114
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i122 ], [ 0, %.preheader.us.preheader.i114 ] ; 2 uses
  %.051.us.i = phi ptr [ %i.hj, %._crit_edge.us.i122 ], [ %i.i, %.preheader.us.preheader.i114 ] ; 7 uses
  %invariant.gep.i117 = getelementptr [8 x i8], ptr %.051.us.i, i64 %i.gl ; 4 uses
  br i1 %min.iters.check225, label %scalar.ph224.preheader, label %vector.memcheck

scalar.ph224.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i116
  br i1 %i.gt, label %scalar.ph224.epil.preheader, label %scalar.ph224

vector.memcheck:                                  ; preds = %.preheader.us.i116
  %i.gu = mul i64 %i.gn, %indvar                  ; 3 uses
  %scevgep223 = getelementptr i8, ptr %i.gq, i64 %i.gu
  %scevgep222 = getelementptr i8, ptr %i.gr, i64 %i.gu
  %scevgep = getelementptr i8, ptr %i.gs, i64 %i.gu
  %bound0 = icmp ult ptr %.051.us.i, %scevgep223
  %bound1 = icmp ult ptr %scevgep222, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph224.preheader, label %vector.body228

vector.body228:                                   ; preds = %vector.memcheck, %vector.body228
  %index229 = phi i64 [ %index.next234, %vector.body228 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %index229 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load230 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  %wide.load231 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  %i.gx = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %index229 ; 3 uses
  %i.gy = getelementptr i8, ptr %i.gx, i64 16     ; 2 uses
  %wide.load232 = load <2 x i64>, ptr %i.gx, align 8, !tbaa !15, !alias.scope !198
  %wide.load233 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !15, !alias.scope !198
  store <2 x i64> %wide.load232, ptr %i.gv, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  store <2 x i64> %wide.load233, ptr %i.gw, align 8, !tbaa !15, !alias.scope !195, !noalias !198
  store <2 x i64> %wide.load230, ptr %i.gx, align 8, !tbaa !15, !alias.scope !198
  store <2 x i64> %wide.load231, ptr %i.gy, align 8, !tbaa !15, !alias.scope !198
  %index.next234 = add nuw i64 %index229, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.gz, label %._crit_edge.us.i122, label %vector.body228, !llvm.loop !200

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %indvars.iv.i118 = phi i64 [ %indvars.iv.next.i120.1, %scalar.ph224 ], [ 0, %scalar.ph224.preheader ] ; 4 uses
  %niter299 = phi i64 [ %niter299.next.1, %scalar.ph224 ], [ 0, %scalar.ph224.preheader ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %.051.us.i, i64 %indvars.iv.i118 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !15
  %gep.i119 = getelementptr [8 x i8], ptr %invariant.gep.i117, i64 %indvars.iv.i118 ; 2 uses
  %i.hc = load i64, ptr %gep.i119, align 8, !tbaa !15
  store i64 %i.hc, ptr %i.ha, align 8, !tbaa !15
  store i64 %i.hb, ptr %gep.i119, align 8, !tbaa !15
end_hunk_2
begin_hunk_3_@Dau_CollectNpnFunctionsArray:bb.a
  %index.next285 = add nuw i64 %index282, 4       ; 2 uses
  %i.gk = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.gk, label %Abc_TtNot.exit133, label %vector.body281, !llvm.loop !215

.lr.ph.i129:                                      ; preds = %.lr.ph.preheader.i127, %.lr.ph.i129
  %indvars.iv.i130 = phi i64 [ %indvars.iv.next.i131, %.lr.ph.i129 ], [ 0, %.lr.ph.preheader.i127 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i130 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !15
  %i.gn = xor i64 %i.gm, -1
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !15
  %indvars.iv.next.i131 = add nuw nsw i64 %indvars.iv.i130, 1 ; 2 uses
  %exitcond.not.i132 = icmp eq i64 %indvars.iv.next.i131, %wide.trip.count.i
  br i1 %exitcond.not.i132, label %Abc_TtNot.exit133, label %.lr.ph.i129, !llvm.loop !216

Abc_TtNot.exit133.sink.split:                     ; preds = %Abc_TtFlip.exit
  %i.go = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef nonnull %i.ac) ; 0 uses
  br label %Abc_TtNot.exit133

Abc_TtNot.exit133:                                ; preds = %vector.body281, %.lr.ph.i129, %Abc_TtNot.exit133.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !217

._crit_edge:                                      ; preds = %Abc_TtNot.exit133, %Abc_TtCopy.exit
  %.val109 = load i32, ptr %i.aj, align 4, !tbaa !87 ; 3 uses
  %i.gp = icmp slt i32 %.val110, %.val109
  br i1 %i.gp, label %.lr.ph178, label %.preheader

.preheader.loopexit:                              ; preds = %._crit_edge175
  %.val108.pre = load i32, ptr %i.aj, align 4, !tbaa !87
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %._crit_edge
  %.val108 = phi i32 [ %.val108.pre, %.preheader.loopexit ], [ %.val109, %._crit_edge ] ; 4 uses
  %i.gq = icmp slt i32 %.val110, %.val108
  br i1 %i.gq, label %.lr.ph180, label %._crit_edge181

.lr.ph178:                                        ; preds = %._crit_edge, %._crit_edge175
  %.091176 = phi i32 [ %i.ku, %._crit_edge175 ], [ %.val110, %._crit_edge ] ; 3 uses
  br i1 %i.ak, label %Abc_TtCopy.exit141, label %.lr.ph18.i137.preheader

.lr.ph18.i137.preheader:                          ; preds = %.lr.ph178
  %i.gr = load ptr, ptr %i.an, align 8, !tbaa !74
  %i.gs = load i32, ptr %i.ao, align 8, !tbaa !78
  %i.gt = ashr i32 %.091176, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !79
  %i.gx = load i32, ptr %i.ap, align 4, !tbaa !81
  %i.gy = and i32 %i.gx, %.091176
  %i.gz = load i32, ptr %i.s, align 8, !tbaa !80
  %i.ha = mul i32 %i.gy, %i.gz
  %i.hb = sext i32 %i.ha to i64
  %i.hc = getelementptr [8 x i8], ptr %i.gw, i64 %i.hb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.hc, i64 %i.ar, i1 false), !tbaa !15
  br label %Abc_TtCopy.exit141

Abc_TtCopy.exit141:                               ; preds = %.lr.ph18.i137.preheader, %.lr.ph178
  br i1 %i.aq, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %Abc_TtCopy.exit141, %Abc_TtSwapAdjacent.exit
  %indvars.iv194 = phi i64 [ %indvars.iv.next195, %Abc_TtSwapAdjacent.exit ], [ 0, %Abc_TtCopy.exit141 ] ; 2 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv194
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !16 ; 6 uses
  %i.hf = icmp slt i32 %i.he, 5
  br i1 %i.hf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph174
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.lr.ph64.i

.lr.ph64.i:                                       ; preds = %bb.i
  %i.hg = shl nuw nsw i32 1, %i.he
  %i.hh = sext i32 %i.he to i64
  %i.hi = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.hh ; 3 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !15 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !15 ; 4 uses
  %i.hm = zext nneg i32 %i.hg to i64              ; 7 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !15 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert251 = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %broadcast.splat252 = shufflevector <2 x i64> %broadcast.splatinsert251, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert253 = insertelement <2 x i64> poison, i64 %i.hm, i64 0
  %broadcast.splat254 = shufflevector <2 x i64> %broadcast.splatinsert253, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert255 = insertelement <2 x i64> poison, i64 %i.ho, i64 0
  %broadcast.splat256 = shufflevector <2 x i64> %broadcast.splatinsert255, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %index ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.hp, align 8, !tbaa !15 ; 3 uses
  %wide.load257 = load <2 x i64>, ptr %i.hq, align 8, !tbaa !15 ; 3 uses
  %i.hr = and <2 x i64> %wide.load, %broadcast.splat
  %i.hs = and <2 x i64> %wide.load257, %broadcast.splat
  %i.ht = and <2 x i64> %wide.load, %broadcast.splat252
  %i.hu = and <2 x i64> %wide.load257, %broadcast.splat252
  %i.hv = shl <2 x i64> %i.ht, %broadcast.splat254
  %i.hw = shl <2 x i64> %i.hu, %broadcast.splat254
  %i.hx = or <2 x i64> %i.hv, %i.hr
  %i.hy = or <2 x i64> %i.hw, %i.hs
  %i.hz = and <2 x i64> %wide.load, %broadcast.splat256
  %i.ia = and <2 x i64> %wide.load257, %broadcast.splat256
  %i.ib = lshr <2 x i64> %i.hz, %broadcast.splat254
  %i.ic = lshr <2 x i64> %i.ia, %broadcast.splat254
  %i.id = or <2 x i64> %i.hx, %i.ib
  %i.ie = or <2 x i64> %i.hy, %i.ic
  store <2 x i64> %i.id, ptr %i.hp, align 8, !tbaa !15
  store <2 x i64> %i.ie, ptr %i.hq, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.if = icmp eq i64 %index.next, %n.vec
  br i1 %i.if, label %Abc_TtSwapAdjacent.exit, label %vector.body, !llvm.loop !218

scalar.ph:                                        ; preds = %.lr.ph64.i
  %i.ig = load i64, ptr %i.ac, align 8, !tbaa !15 ; 3 uses
  %i.ih = and i64 %i.ig, %i.hj
  %i.ii = and i64 %i.ig, %i.hl
  %i.ij = shl i64 %i.ii, %i.hm
  %i.ik = or i64 %i.ij, %i.ih
  %i.il = and i64 %i.ig, %i.ho
  %i.im = lshr i64 %i.il, %i.hm
  %i.in = or i64 %i.ik, %i.im
  store i64 %i.in, ptr %i.ac, align 8, !tbaa !15
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.io = load i64, ptr %i.ay, align 8, !tbaa !15 ; 3 uses
  %i.ip = and i64 %i.io, %i.hj
  %i.iq = and i64 %i.io, %i.hl
  %i.ir = shl i64 %i.iq, %i.hm
  %i.is = or i64 %i.ir, %i.ip
  %i.it = and i64 %i.io, %i.ho
  %i.iu = lshr i64 %i.it, %i.hm
  %i.iv = or i64 %i.is, %i.iu
  store i64 %i.iv, ptr %i.ay, align 8, !tbaa !15
  br i1 %exitcond74.not.i.1, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.iw = load i64, ptr %i.az, align 8, !tbaa !15 ; 3 uses
  %i.ix = and i64 %i.iw, %i.hj
  %i.iy = and i64 %i.iw, %i.hl
  %i.iz = shl i64 %i.iy, %i.hm
  %i.ja = or i64 %i.iz, %i.ix
  %i.jb = and i64 %i.iw, %i.ho
  %i.jc = lshr i64 %i.jb, %i.hm
  %i.jd = or i64 %i.ja, %i.jc
  store i64 %i.jd, ptr %i.az, align 8, !tbaa !15
  br label %Abc_TtSwapAdjacent.exit

bb.j:                                             ; preds = %.lr.ph174
  %i.je = icmp eq i32 %i.he, 5
  br i1 %i.je, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %bb.k, %.lr.ph.i151
  %.05462.i = phi ptr [ %i.ji, %.lr.ph.i151 ], [ %i.ac, %bb.k ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.jg = load <2 x i32>, ptr %i.jf, align 4, !tbaa !16
  %i.jh = shufflevector <2 x i32> %i.jg, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.jh, ptr %i.jf, align 4, !tbaa !16
  %i.ji = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.jj = icmp ult ptr %i.ji, %i.am
  br i1 %i.jj, label %.lr.ph.i151, label %Abc_TtSwapAdjacent.exit, !llvm.loop !167

bb.l:                                             ; preds = %bb.j
  %i.jk = icmp samesign ult i32 %i.he, 7
  %i.jl = add nsw i32 %i.he, -6
  %i.jm = shl nuw i32 1, %i.jl
  %i.jn = select i1 %i.jk, i32 1, i32 %i.jm       ; 7 uses
  br i1 %i.ak, label %Abc_TtSwapAdjacent.exit, label %.preheader.lr.ph.i142

.preheader.lr.ph.i142:                            ; preds = %bb.l
  %i.jo = icmp sgt i32 %i.jn, 0
  %i.jp = shl i32 %i.jn, 2                        ; 2 uses
  %i.jq = sext i32 %i.jp to i64                   ; 3 uses
  br i1 %i.jo, label %.preheader.us.preheader.i143, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i143:                     ; preds = %.preheader.lr.ph.i142
  %i.jr = shl nuw nsw i32 %i.jn, 1
  %i.js = zext nneg i32 %i.jn to i64              ; 6 uses
  %i.jt = zext nneg i32 %i.jr to i64              ; 2 uses
  %i.ju = shl nuw nsw i64 %i.js, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ac, i64 %i.ju
  %i.jv = shl nsw i64 %i.jq, 3                    ; 4 uses
  %i.jw = add i64 %i.jv, %i.ad
  %umax = call i64 @llvm.umax.i64(i64 %i.as, i64 %i.jw)
  %i.jx = sub i64 %umax, %i.ad                    ; 2 uses
  %i.jy = icmp ne i64 %i.jx, %i.jv
  %umin = zext i1 %i.jy to i64                    ; 2 uses
  %i.jz = or disjoint i64 %i.jv, %umin
  %i.ka = sub i64 %i.jx, %i.jz
  %umax258 = call i64 @llvm.umax.i64(i64 %i.jv, i64 1)
  %i.kb = shl nuw nsw i64 %i.js, 4
  %i.kc = shl nuw nsw i64 %i.jt, 3                ; 2 uses
  %scevgep259 = getelementptr i8, ptr %i.ac, i64 %i.kc
  %min.iters.check264 = icmp ult i32 %i.jn, 12
  %i.kd = getelementptr i8, ptr %i.ac, i64 %i.kb
  %i.ke = getelementptr i8, ptr %i.ac, i64 %i.ju
  %scevgep261 = getelementptr i8, ptr %i.ke, i64 %i.kc
  %stride.check = icmp slt i32 %i.jp, 0
  %n.vec266 = and i64 %i.js, 2147483644
  %xtraiter374 = and i64 %i.js, 1
  %i.kf = icmp eq i32 %i.jn, 1
  %unroll_iter378 = and i64 %i.js, 2147483646
  %lcmp.mod376.not = icmp eq i64 %xtraiter374, 0
  %lcmp.mod377 = trunc i32 %i.jn to i1
  br label %.preheader.us.i144

.preheader.us.i144:                               ; preds = %._crit_edge.us.i150, %.preheader.us.preheader.i143
  %.061.us.i = phi ptr [ %i.kr, %._crit_edge.us.i150 ], [ %i.ac, %.preheader.us.preheader.i143 ] ; 3 uses
  %invariant.gep.i145 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.js ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.jt ; 4 uses
  br i1 %min.iters.check264, label %scalar.ph263.preheader, label %scalar.ph263.preheader.a

scalar.ph263.preheader:                           ; preds = %scalar.ph263.preheader.a, %.preheader.us.i144
  br i1 %i.kf, label %scalar.ph263.epil.preheader, label %scalar.ph263

scalar.ph263.preheader.a:                         ; preds = %.preheader.us.i144
  %6 = udiv i64 %i.ka, %umax258
  %7 = add i64 %6, %umin
  %8 = shl i64 %7, 3
  %9 = mul i64 %8, %i.jq                          ; 2 uses
  %gep = getelementptr i8, ptr %i.kd, i64 %9
  %gep386 = getelementptr i8, ptr %scevgep261, i64 %9
  %bound0 = icmp ult ptr %scevgep, %gep386
  %bound1 = icmp ult ptr %scevgep259, %gep
  %found.conflict = and i1 %bound0, %bound1
  %10 = or i1 %found.conflict, %stride.check
  br i1 %10, label %scalar.ph263.preheader, label %vector.body267

vector.body267:                                   ; preds = %scalar.ph263.preheader.a, %vector.body267
  %index268 = phi i64 [ %index.next273, %vector.body267 ], [ 0, %scalar.ph263.preheader.a ] ; 3 uses
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %index268 ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %wide.load269 = load <2 x i64>, ptr %i.kg, align 8, !tbaa !15, !alias.scope !219, !noalias !222
  %wide.load270 = load <2 x i64>, ptr %i.kh, align 8, !tbaa !15, !alias.scope !219, !noalias !222
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index268 ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 16 ; 2 uses
  %wide.load271 = load <2 x i64>, ptr %i.ki, align 8, !tbaa !15, !alias.scope !222
  %wide.load272 = load <2 x i64>, ptr %i.kj, align 8, !tbaa !15, !alias.scope !222
  store <2 x i64> %wide.load271, ptr %i.kg, align 8, !tbaa !15, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load272, ptr %i.kh, align 8, !tbaa !15, !alias.scope !219, !noalias !222
  store <2 x i64> %wide.load269, ptr %i.ki, align 8, !tbaa !15, !alias.scope !222
  store <2 x i64> %wide.load270, ptr %i.kj, align 8, !tbaa !15, !alias.scope !222
  %index.next273 = add nuw i64 %index268, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next273, %n.vec266
  br i1 %i.kk, label %._crit_edge.us.i150, label %vector.body267, !llvm.loop !224

scalar.ph263:                                     ; preds = %scalar.ph263.preheader, %scalar.ph263
  %indvars.iv.i146 = phi i64 [ %indvars.iv.next.i148.1, %scalar.ph263 ], [ 0, %scalar.ph263.preheader ] ; 4 uses
  %niter379 = phi i64 [ %niter379.next.1, %scalar.ph263 ], [ 0, %scalar.ph263.preheader ]
  %gep.i147 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.i146 ; 2 uses
  %i.kl = load i64, ptr %gep.i147, align 8, !tbaa !15
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i146 ; 2 uses
  %i.km = load i64, ptr %gep81.i, align 8, !tbaa !15
  store i64 %i.km, ptr %gep.i147, align 8, !tbaa !15
  store i64 %i.kl, ptr %gep81.i, align 8, !tbaa !15
  %indvars.iv.next.i148 = or disjoint i64 %indvars.iv.i146, 1 ; 2 uses
  %gep.i147.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.next.i148 ; 2 uses
  %i.kn = load i64, ptr %gep.i147.1, align 8, !tbaa !15
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i148 ; 2 uses
  %i.ko = load i64, ptr %gep81.i.1, align 8, !tbaa !15
  store i64 %i.ko, ptr %gep.i147.1, align 8, !tbaa !15
  store i64 %i.kn, ptr %gep81.i.1, align 8, !tbaa !15
  %indvars.iv.next.i148.1 = add nuw nsw i64 %indvars.iv.i146, 2 ; 2 uses
  %niter379.next.1 = add i64 %niter379, 2         ; 2 uses
  %niter379.ncmp.1 = icmp eq i64 %niter379.next.1, %unroll_iter378
  br i1 %niter379.ncmp.1, label %._crit_edge.us.i150.loopexit.unr-lcssa, label %scalar.ph263, !llvm.loop !225

._crit_edge.us.i150.loopexit.unr-lcssa:           ; preds = %scalar.ph263
  br i1 %lcmp.mod376.not, label %._crit_edge.us.i150, label %scalar.ph263.epil.preheader

scalar.ph263.epil.preheader:                      ; preds = %._crit_edge.us.i150.loopexit.unr-lcssa, %scalar.ph263.preheader
  %indvars.iv.i146.epil.init = phi i64 [ 0, %scalar.ph263.preheader ], [ %indvars.iv.next.i148.1, %._crit_edge.us.i150.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod377)
  %gep.i147.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i145, i64 %indvars.iv.i146.epil.init ; 2 uses
  %i.kp = load i64, ptr %gep.i147.epil, align 8, !tbaa !15
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i146.epil.init ; 2 uses
  %i.kq = load i64, ptr %gep81.i.epil, align 8, !tbaa !15
  store i64 %i.kq, ptr %gep.i147.epil, align 8, !tbaa !15
  store i64 %i.kp, ptr %gep81.i.epil, align 8, !tbaa !15
  br label %._crit_edge.us.i150

._crit_edge.us.i150:                              ; preds = %vector.body267, %scalar.ph263.epil.preheader, %._crit_edge.us.i150.loopexit.unr-lcssa
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.jq ; 2 uses
  %i.ks = icmp ult ptr %i.kr, %i.am
  br i1 %i.ks, label %.preheader.us.i144, label %Abc_TtSwapAdjacent.exit, !llvm.loop !166

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i150, %.lr.ph.i151, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %bb.i, %bb.k, %bb.l, %.preheader.lr.ph.i142
  %i.kt = call fastcc i32 @Vec_MemHashInsert(ptr noundef nonnull %i.s, ptr noundef %i.ac) ; 0 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %._crit_edge175, label %.lr.ph174, !llvm.loop !226

._crit_edge175:                                   ; preds = %Abc_TtSwapAdjacent.exit, %Abc_TtCopy.exit141
  %i.ku = add i32 %.091176, 1                     ; 2 uses
  %exitcond199.not = icmp eq i32 %i.ku, %.val109
  br i1 %exitcond199.not, label %.preheader.loopexit, label %.lr.ph178, !llvm.loop !227

.lr.ph180:                                        ; preds = %.preheader, %Vec_IntPush.exit
  %i.kv = phi ptr [ %i.lk, %Vec_IntPush.exit ], [ %i.bc, %.preheader ] ; 2 uses
  %i.kw = phi ptr [ %i.lk, %Vec_IntPush.exit ], [ %i.bd, %.preheader ] ; 4 uses
  %i.kx = phi i32 [ %i.ll, %Vec_IntPush.exit ], [ %i.be, %.preheader ] ; 8 uses
  %i.ky = phi i32 [ %i.lm, %Vec_IntPush.exit ], [ %i.bf, %.preheader ] ; 2 uses
  %.1179 = phi i32 [ %i.lp, %Vec_IntPush.exit ], [ %.val110, %.preheader ]
  %i.kz = icmp eq i32 %i.ky, %i.kx
  br i1 %i.kz, label %bb.m, label %Vec_IntPush.exit

bb.m:                                             ; preds = %.lr.ph180
  %i.la = icmp slt i32 %i.kx, 16
  br i1 %i.la, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.not9.i.i = icmp eq ptr %i.kw, null
  br i1 %.not9.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.lb = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.kw, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.p:                                             ; preds = %bb.n
  %i.lc = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.m
  %i.ld = icmp samesign ult i32 %i.kx, 1073741823
  %i.le = shl nuw nsw i32 %i.kx, 1
  %spec.select.i = select i1 %i.ld, i32 %i.le, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.kx, %spec.select.i
  br i1 %.not.i9.i, label %bb.r, label %Vec_IntPush.exit

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i = icmp eq ptr %i.kw, null
  %i.lf = zext nneg i32 %spec.select.i to i64
  %i.lg = shl nuw nsw i64 %i.lf, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.lh = call ptr @realloc(ptr noundef nonnull %i.kw, i64 noundef %i.lg) #30
  br label %Vec_IntGrow.exit11.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.li = call noalias ptr @malloc(i64 noundef %i.lg) #29
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %storemerge167 = phi ptr [ %i.lc, %bb.p ], [ %i.lb, %bb.o ], [ %i.lh, %bb.s ], [ %i.li, %bb.t ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i, %bb.s ], [ %spec.select.i, %bb.t ] ; 2 uses
  store ptr %storemerge167, ptr %i.i, align 8, !tbaa !25
  store i32 %spec.select.sink.i, ptr %i.f, align 8, !tbaa !24
  %.pre = load i32, ptr %i.g, align 4, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.lr.ph180, %bb.q, %Vec_IntGrow.exit11.sink.split.i
  %i.lj = phi i32 [ %i.ky, %.lr.ph180 ], [ %i.kx, %bb.q ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.lk = phi ptr [ %i.kv, %.lr.ph180 ], [ %i.kv, %bb.q ], [ %storemerge167, %Vec_IntGrow.exit11.sink.split.i ] ; 5 uses
  %i.ll = phi i32 [ %i.kx, %.lr.ph180 ], [ %i.kx, %bb.q ], [ %spec.select.sink.i, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.lm = add nsw i32 %i.lj, 1                    ; 3 uses
  store i32 %i.lm, ptr %i.g, align 4, !tbaa !21
  %i.ln = sext i32 %i.lj to i64
  %i.lo = getelementptr inbounds [4 x i8], ptr %i.lk, i64 %i.ln
  store i32 %.0182, ptr %i.lo, align 4, !tbaa !16
  %i.lp = add nsw i32 %.1179, 1                   ; 2 uses
  %exitcond200.not = icmp eq i32 %i.lp, %.val108
  br i1 %exitcond200.not, label %._crit_edge181.loopexit, label %.lr.ph180, !llvm.loop !228

._crit_edge181.loopexit:                          ; preds = %Vec_IntPush.exit
  %.pre210 = load i32, ptr %i.m, align 4, !tbaa !21
  %.pre211 = load i32, ptr %i.k, align 8, !tbaa !24
  br label %._crit_edge181

._crit_edge181:                                   ; preds = %._crit_edge181.loopexit, %.preheader
  %i.lq = phi i32 [ %.pre211, %._crit_edge181.loopexit ], [ %i.ba, %.preheader ] ; 7 uses
  %i.lr = phi i32 [ %.pre210, %._crit_edge181.loopexit ], [ %i.bb, %.preheader ] ; 3 uses
  %i.ls = phi ptr [ %i.lk, %._crit_edge181.loopexit ], [ %i.bc, %.preheader ]
  %i.lt = phi ptr [ %i.lk, %._crit_edge181.loopexit ], [ %i.bd, %.preheader ]
  %i.lu = phi i32 [ %i.ll, %._crit_edge181.loopexit ], [ %i.be, %.preheader ]
  %i.lv = phi i32 [ %i.lm, %._crit_edge181.loopexit ], [ %i.bf, %.preheader ]
  %i.lw = sub nsw i32 %.val108, %.val110
  %i.lx = icmp eq i32 %i.lr, %i.lq
  br i1 %i.lx, label %bb.u, label %._crit_edge181.Vec_IntPush.exit159_crit_edge

._crit_edge181.Vec_IntPush.exit159_crit_edge:     ; preds = %._crit_edge181
  %.pre212 = load ptr, ptr %i.r, align 8, !tbaa !25
  br label %Vec_IntPush.exit159

bb.u:                                             ; preds = %._crit_edge181
  %i.ly = icmp slt i32 %i.lq, 16
  br i1 %i.ly, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.lz = load ptr, ptr %i.r, align 8, !tbaa !25  ; 2 uses
  %.not9.i.i157 = icmp eq ptr %i.lz, null
  br i1 %.not9.i.i157, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ma = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.lz, i64 noundef 64) #30
  br label %Vec_IntGrow.exit11.sink.split.i155

bb.x:                                             ; preds = %bb.v
  %i.mb = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #29
  br label %Vec_IntGrow.exit11.sink.split.i155

bb.y:                                             ; preds = %bb.u
  %i.mc = icmp samesign ult i32 %i.lq, 1073741823
  %i.md = shl nuw nsw i32 %i.lq, 1
  %spec.select.i152 = select i1 %i.mc, i32 %i.md, i32 2147483647 ; 4 uses
  %.not.i9.i153 = icmp samesign ult i32 %i.lq, %spec.select.i152
  %.pre213 = load ptr, ptr %i.r, align 8, !tbaa !25 ; 3 uses
  br i1 %.not.i9.i153, label %bb.z, label %Vec_IntPush.exit159

bb.z:                                             ; preds = %bb.y
  %.not9.i10.i154 = icmp eq ptr %.pre213, null
  %i.me = zext nneg i32 %spec.select.i152 to i64
  %i.mf = shl nuw nsw i64 %i.me, 2                ; 2 uses
  br i1 %.not9.i10.i154, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.mg = call ptr @realloc(ptr noundef nonnull %.pre213, i64 noundef %i.mf) #30
  br label %Vec_IntGrow.exit11.sink.split.i155

bb.ab:                                            ; preds = %bb.z
  %i.mh = call noalias ptr @malloc(i64 noundef %i.mf) #29
  br label %Vec_IntGrow.exit11.sink.split.i155

Vec_IntGrow.exit11.sink.split.i155:               ; preds = %bb.aa, %bb.ab, %bb.w, %bb.x
  %storemerge = phi ptr [ %i.mb, %bb.x ], [ %i.ma, %bb.w ], [ %i.mg, %bb.aa ], [ %i.mh, %bb.ab ] ; 2 uses
  %spec.select.sink.i156 = phi i32 [ 16, %bb.x ], [ 16, %bb.w ], [ %spec.select.i152, %bb.aa ], [ %spec.select.i152, %bb.ab ] ; 2 uses
  store ptr %storemerge, ptr %i.r, align 8, !tbaa !25
  store i32 %spec.select.sink.i156, ptr %i.k, align 8, !tbaa !24
  br label %Vec_IntPush.exit159

Vec_IntPush.exit159:                              ; preds = %._crit_edge181.Vec_IntPush.exit159_crit_edge, %bb.y, %Vec_IntGrow.exit11.sink.split.i155
  %i.mi = phi ptr [ %.pre212, %._crit_edge181.Vec_IntPush.exit159_crit_edge ], [ %.pre213, %bb.y ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i155 ] ; 2 uses
  %i.mj = phi i32 [ %i.lq, %._crit_edge181.Vec_IntPush.exit159_crit_edge ], [ %i.lq, %bb.y ], [ %spec.select.sink.i156, %Vec_IntGrow.exit11.sink.split.i155 ]
  %i.mk = add nsw i32 %i.lr, 1                    ; 2 uses
  store i32 %i.mk, ptr %i.m, align 4, !tbaa !21
  %i.ml = sext i32 %i.lr to i64
  %i.mm = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %i.ml
  store i32 %i.lw, ptr %i.mm, align 4, !tbaa !16
  %i.mn = add nuw nsw i32 %.0182, 1               ; 2 uses
  %exitcond201.not = icmp eq i32 %i.mn, %i.ae
  br i1 %exitcond201.not, label %._crit_edge184, label %bb.d, !llvm.loop !229

._crit_edge184:                                   ; preds = %Vec_IntPush.exit159, %Vec_IntAlloc.exit
  %i.mo = phi ptr [ %i.q, %Vec_IntAlloc.exit ], [ %i.mi, %Vec_IntPush.exit159 ] ; 4 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge184
  call void @free(ptr noundef nonnull %i.ac) #27
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge184, %bb.ac
  %.not98 = icmp eq ptr %i.y, null
  br i1 %.not98, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.y) #27
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.not99 = icmp eq ptr %i.z, null
  br i1 %.not99, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.z) #27
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.not100 = icmp eq i32 %3, 0
  br i1 %.not100, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
end_hunk_3
