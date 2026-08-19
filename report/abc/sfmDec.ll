inline.NumInlined: 751
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Abc_TtExpand:bb.a
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !72 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.be, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert45 = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat46 = shufflevector <2 x i64> %broadcast.splatinsert45, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert47 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat48 = shufflevector <2 x i64> %broadcast.splatinsert47, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert49 = insertelement <2 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat50 = shufflevector <2 x i64> %broadcast.splatinsert49, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bk, align 8, !tbaa !72 ; 3 uses
  %wide.load51 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !72 ; 3 uses
  %i.bm = and <2 x i64> %wide.load, %broadcast.splat
  %i.bn = and <2 x i64> %wide.load51, %broadcast.splat
  %i.bo = and <2 x i64> %wide.load, %broadcast.splat46
  %i.bp = and <2 x i64> %wide.load51, %broadcast.splat46
  %i.bq = shl <2 x i64> %i.bo, %broadcast.splat48
  %i.br = shl <2 x i64> %i.bp, %broadcast.splat48
  %i.bs = or <2 x i64> %i.bq, %i.bm
  %i.bt = or <2 x i64> %i.br, %i.bn
  %i.bu = and <2 x i64> %wide.load, %broadcast.splat50
  %i.bv = and <2 x i64> %wide.load51, %broadcast.splat50
  %i.bw = lshr <2 x i64> %i.bu, %broadcast.splat48
  %i.bx = lshr <2 x i64> %i.bv, %broadcast.splat48
  %i.by = or <2 x i64> %i.bs, %i.bw
  %i.bz = or <2 x i64> %i.bt, %i.bx
  store <2 x i64> %i.by, ptr %i.bk, align 8, !tbaa !72
  store <2 x i64> %i.bz, ptr %i.bl, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %Abc_TtSwapVars.exit, label %vector.body, !llvm.loop !153

scalar.ph:                                        ; preds = %.lr.ph.i
  %i.cb = load i64, ptr %0, align 8, !tbaa !72    ; 3 uses
  %i.cc = and i64 %i.cb, %i.be
  %i.cd = and i64 %i.cb, %i.bg
  %i.ce = shl i64 %i.cd, %i.bh
  %i.cf = or i64 %i.ce, %i.cc
  %i.cg = and i64 %i.cb, %i.bj
  %i.ch = lshr i64 %i.cg, %i.bh
  %i.ci = or i64 %i.cf, %i.ch
  store i64 %i.ci, ptr %0, align 8, !tbaa !72
  br i1 %exitcond160.not.i, label %Abc_TtSwapVars.exit, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph
  %i.cj = load i64, ptr %i.l, align 8, !tbaa !72  ; 3 uses
  %i.ck = and i64 %i.cj, %i.be
  %i.cl = and i64 %i.cj, %i.bg
  %i.cm = shl i64 %i.cl, %i.bh
  %i.cn = or i64 %i.cm, %i.ck
  %i.co = and i64 %i.cj, %i.bj
  %i.cp = lshr i64 %i.co, %i.bh
  %i.cq = or i64 %i.cn, %i.cp
  store i64 %i.cq, ptr %i.l, align 8, !tbaa !72
  br i1 %exitcond160.not.i.1, label %Abc_TtSwapVars.exit, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.1
  %i.cr = load i64, ptr %i.m, align 8, !tbaa !72  ; 3 uses
  %i.cs = and i64 %i.cr, %i.be
  %i.ct = and i64 %i.cr, %i.bg
  %i.cu = shl i64 %i.ct, %i.bh
  %i.cv = or i64 %i.cu, %i.cs
  %i.cw = and i64 %i.cr, %i.bj
  %i.cx = lshr i64 %i.cw, %i.bh
  %i.cy = or i64 %i.cv, %i.cx
  store i64 %i.cy, ptr %i.m, align 8, !tbaa !72
  br label %Abc_TtSwapVars.exit

bb.h:                                             ; preds = %bb.f
  %i.cz = icmp samesign ult i32 %.020, 6
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.da = add nsw i32 %.015.in19, -7              ; 3 uses
  %i.db = shl nuw i32 1, %i.da                    ; 3 uses
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.i
  %i.dc = shl nuw nsw i32 1, %.020
  %.not134.i = icmp eq i32 %i.da, 31
  %i.dd = zext nneg i32 %i.dc to i64              ; 3 uses
  %i.de = shl i32 2, %i.da
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  br i1 %.not134.i, label %Abc_TtSwapVars.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.at
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !72 ; 5 uses
  %i.di = xor i64 %i.dh, -1                       ; 2 uses
  %i.dj = sext i32 %i.db to i64                   ; 2 uses
  %smax152.i = tail call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  %wide.trip.count153.i = zext nneg i32 %smax152.i to i64 ; 3 uses
  %i.dk = shl nuw nsw i64 %wide.trip.count153.i, 3 ; 2 uses
  %i.dl = shl nsw i64 %i.df, 3
  %i.dm = shl nsw i64 %i.dj, 3                    ; 2 uses
  %min.iters.check55 = icmp slt i32 %i.db, 2
  %i.dn = getelementptr i8, ptr %0, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 %i.dk
  %i.dp = getelementptr i8, ptr %0, i64 %i.dm
  %i.dq = getelementptr i8, ptr %0, i64 %i.dk
  %n.vec57 = and i64 %wide.trip.count153.i, 2147483646
  %broadcast.splatinsert58 = insertelement <2 x i64> poison, i64 %i.dh, i64 0
  %broadcast.splat59 = shufflevector <2 x i64> %broadcast.splatinsert58, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert60 = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %broadcast.splat61 = shufflevector <2 x i64> %broadcast.splatinsert60, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert62 = insertelement <2 x i64> poison, i64 %i.di, i64 0
  %broadcast.splat63 = shufflevector <2 x i64> %broadcast.splatinsert62, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.lr.ph.split.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.0128.us.i = phi ptr [ %i.eo, %._crit_edge.us.i ], [ %0, %.preheader.lr.ph.split.us.i ] ; 5 uses
  %invariant.gep169.i = getelementptr [8 x i8], ptr %.0128.us.i, i64 %i.dj ; 2 uses
  br i1 %min.iters.check55, label %scalar.ph54.preheader, label %vector.memcheck

scalar.ph54.preheader:                            ; preds = %vector.memcheck, %.preheader.us.i
  br label %scalar.ph54

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.dr = mul i64 %i.dl, %indvar                  ; 3 uses
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dr
  %scevgep52 = getelementptr i8, ptr %i.dp, i64 %i.dr
  %scevgep = getelementptr i8, ptr %i.dq, i64 %i.dr
  %bound0 = icmp ult ptr %.0128.us.i, %scevgep53
  %bound1 = icmp ult ptr %scevgep52, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph54.preheader, label %vector.body64

vector.body64:                                    ; preds = %vector.memcheck, %vector.body64
  %index65 = phi i64 [ %index.next68, %vector.body64 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %index65 ; 2 uses
  %wide.load66 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !72, !alias.scope !154, !noalias !157 ; 2 uses
  %i.dt = and <2 x i64> %wide.load66, %broadcast.splat59
  %i.du = lshr <2 x i64> %i.dt, %broadcast.splat61
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %index65 ; 2 uses
  %wide.load67 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !72, !alias.scope !157 ; 2 uses
  %i.dw = shl <2 x i64> %wide.load67, %broadcast.splat61
  %i.dx = and <2 x i64> %i.dw, %broadcast.splat59
  %i.dy = and <2 x i64> %wide.load66, %broadcast.splat63
  %i.dz = or <2 x i64> %i.dx, %i.dy
  store <2 x i64> %i.dz, ptr %i.ds, align 8, !tbaa !72, !alias.scope !154, !noalias !157
  %i.ea = and <2 x i64> %wide.load67, %broadcast.splat59
  %i.eb = or <2 x i64> %i.ea, %i.du
  store <2 x i64> %i.eb, ptr %i.dv, align 8, !tbaa !72, !alias.scope !157
  %index.next68 = add nuw i64 %index65, 2         ; 2 uses
  %i.ec = icmp eq i64 %index.next68, %n.vec57
  br i1 %i.ec, label %._crit_edge.us.i, label %vector.body64, !llvm.loop !159

scalar.ph54:                                      ; preds = %scalar.ph54.preheader, %scalar.ph54
  %indvars.iv149.i = phi i64 [ %indvars.iv.next150.i, %scalar.ph54 ], [ 0, %scalar.ph54.preheader ] ; 3 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %.0128.us.i, i64 %indvars.iv149.i ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !72 ; 2 uses
  %i.ef = and i64 %i.ee, %i.dh
  %i.eg = lshr i64 %i.ef, %i.dd
  %gep170.i = getelementptr [8 x i8], ptr %invariant.gep169.i, i64 %indvars.iv149.i ; 2 uses
  %i.eh = load i64, ptr %gep170.i, align 8, !tbaa !72 ; 2 uses
  %i.ei = shl i64 %i.eh, %i.dd
  %i.ej = and i64 %i.ei, %i.dh
  %i.ek = and i64 %i.ee, %i.di
  %i.el = or i64 %i.ej, %i.ek
  store i64 %i.el, ptr %i.ed, align 8, !tbaa !72
  %i.em = and i64 %i.eh, %i.dh
  %i.en = or i64 %i.em, %i.eg
  store i64 %i.en, ptr %gep170.i, align 8, !tbaa !72
  %indvars.iv.next150.i = add nuw nsw i64 %indvars.iv149.i, 1 ; 2 uses
  %exitcond154.not.i = icmp eq i64 %indvars.iv.next150.i, %wide.trip.count153.i
  br i1 %exitcond154.not.i, label %._crit_edge.us.i, label %scalar.ph54, !llvm.loop !160

._crit_edge.us.i:                                 ; preds = %vector.body64, %scalar.ph54
  %i.eo = getelementptr inbounds [8 x i8], ptr %.0128.us.i, i64 %i.df ; 2 uses
  %i.ep = icmp ult ptr %i.eo, %i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ep, label %.preheader.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !161

bb.j:                                             ; preds = %bb.h
  %i.eq = add nsw i32 %.020, -6                   ; 3 uses
  %i.er = shl nuw i32 1, %i.eq                    ; 4 uses
  %i.es = add nsw i32 %.015.in19, -7              ; 3 uses
  %i.et = shl nuw i32 1, %i.es                    ; 2 uses
  br i1 %.not.i, label %Abc_TtSwapVars.exit, label %.preheader120.lr.ph.i

.preheader120.lr.ph.i:                            ; preds = %bb.j
  %.not130.i = icmp eq i32 %i.es, 31
  %i.eu = shl i32 2, %i.es
  %i.ev = sext i32 %i.eu to i64                   ; 2 uses
  %.not131.i = icmp eq i32 %i.eq, 31
  %or.cond.i = select i1 %.not130.i, i1 true, i1 %.not131.i
  br i1 %or.cond.i, label %Abc_TtSwapVars.exit, label %.preheader120.us.us.preheader.i

.preheader120.us.us.preheader.i:                  ; preds = %.preheader120.lr.ph.i
  %i.ew = shl i32 2, %i.eq                        ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.er, i32 1) ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 5 uses
  %i.ey = sext i32 %i.er to i64                   ; 2 uses
  %i.ez = sext i32 %i.et to i64                   ; 4 uses
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 4 uses
  %i.fa = shl nsw i64 %i.ey, 3                    ; 2 uses
  %i.fb = shl nsw i64 %i.ev, 3
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ex, i64 %i.ez)
  %i.fc = icmp slt i32 %i.ew, %i.et
  %umin = zext i1 %i.fc to i64                    ; 2 uses
  %i.fd = or disjoint i64 %umin, %i.ex
  %i.fe = sub i64 %smax, %i.fd
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %6 = udiv i64 %i.fe, %umax
  %7 = add i64 %6, %umin
  %i.ff = shl i64 %7, 3
  %8 = mul i64 %i.ff, %i.ex                       ; 2 uses
  %9 = shl nuw nsw i64 %wide.trip.count.i, 3      ; 2 uses
  %i.fg = shl nsw i64 %i.ez, 3                    ; 2 uses
  %10 = getelementptr i8, ptr %0, i64 %i.fa
  %i.fh = getelementptr i8, ptr %0, i64 %i.fg
  %i.fi = getelementptr i8, ptr %0, i64 %8
  %i.fj = getelementptr i8, ptr %i.fi, i64 %i.fa
  %i.fk = getelementptr i8, ptr %i.fj, i64 %9
  %i.fl = getelementptr i8, ptr %0, i64 %8
  %11 = getelementptr i8, ptr %i.fl, i64 %i.fg
  %i.fm = getelementptr i8, ptr %11, i64 %9
  %min.iters.check84 = icmp slt i32 %i.er, 6
  %stride.check = icmp slt i32 %i.ew, 0
  %n.vec86 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.fn = icmp slt i32 %i.er, 2
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod103 = trunc i32 %smax.i to i1
  br label %.preheader120.us.us.i

.preheader120.us.us.i:                            ; preds = %._crit_edge124.us.us.i, %.preheader120.us.us.preheader.i
  %indvar73 = phi i64 [ %indvar.next74, %._crit_edge124.us.us.i ], [ 0, %.preheader120.us.us.preheader.i ] ; 2 uses
  %.1125.us.us.i = phi ptr [ %i.gh, %._crit_edge124.us.us.i ], [ %0, %.preheader120.us.us.preheader.i ] ; 3 uses
  %i.fo = mul i64 %i.fb, %indvar73                ; 4 uses
  %scevgep75 = getelementptr i8, ptr %10, i64 %i.fo
  %scevgep77 = getelementptr i8, ptr %i.fh, i64 %i.fo
  %invariant.gep.i = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.ey
  %invariant.gep167.i.a = getelementptr [8 x i8], ptr %.1125.us.us.i, i64 %i.ez
  %scevgep76 = getelementptr i8, ptr %i.fk, i64 %i.fo
  %scevgep78.a = getelementptr i8, ptr %i.fm, i64 %i.fo
  %bound079 = icmp ult ptr %scevgep75, %scevgep78.a
  %bound180.a = icmp ult ptr %scevgep77, %scevgep76
  %found.conflict81 = and i1 %bound079, %bound180.a
  %12 = or i1 %found.conflict81, %stride.check
  br label %.preheader119.us.us.i

scalar.ph83:                                      ; preds = %scalar.ph83.preheader.a, %scalar.ph83
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph83 ], [ 0, %scalar.ph83.preheader.a ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph83 ], [ 0, %scalar.ph83.preheader.a ]
  %i.fp = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i ; 2 uses
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !72
  %i.fr = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !72
  store i64 %i.fs, ptr %i.fp, align 8, !tbaa !72
  store i64 %i.fq, ptr %i.fr, align 8, !tbaa !72
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ft = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !72
  %i.fv = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !72
  store i64 %i.fw, ptr %i.ft, align 8, !tbaa !72
  store i64 %i.fu, ptr %i.fv, align 8, !tbaa !72
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph83, !llvm.loop !162

.preheader119.us.us.i:                            ; preds = %._crit_edge.us.us.i, %.preheader120.us.us.i
  %indvars.iv146.i = phi i64 [ 0, %.preheader120.us.us.i ], [ %indvars.iv.next147.i, %._crit_edge.us.us.i ] ; 3 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv146.i ; 4 uses
  %gep168.i = getelementptr [8 x i8], ptr %invariant.gep167.i.a, i64 %indvars.iv146.i ; 4 uses
  %brmerge = select i1 %min.iters.check84, i1 true, i1 %12
  br i1 %brmerge, label %scalar.ph83.preheader.a, label %vector.body87

scalar.ph83.preheader.a:                          ; preds = %.preheader119.us.us.i
  br i1 %i.fn, label %scalar.ph83.epil.preheader, label %scalar.ph83

vector.body87:                                    ; preds = %.preheader119.us.us.i, %vector.body87
  %index88 = phi i64 [ %index.next93, %vector.body87 ], [ 0, %.preheader119.us.us.i ] ; 3 uses
  %i.fx = getelementptr [8 x i8], ptr %gep.i, i64 %index88 ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16     ; 2 uses
  %wide.load89 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !72, !alias.scope !163, !noalias !166
  %wide.load90 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !72, !alias.scope !163, !noalias !166
  %i.fz = getelementptr [8 x i8], ptr %gep168.i, i64 %index88 ; 3 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 16     ; 2 uses
  %wide.load91 = load <2 x i64>, ptr %i.fz, align 8, !tbaa !72, !alias.scope !166
  %wide.load92 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !72, !alias.scope !166
  store <2 x i64> %wide.load91, ptr %i.fx, align 8, !tbaa !72, !alias.scope !163, !noalias !166
  store <2 x i64> %wide.load92, ptr %i.fy, align 8, !tbaa !72, !alias.scope !163, !noalias !166
  store <2 x i64> %wide.load89, ptr %i.fz, align 8, !tbaa !72, !alias.scope !166
  store <2 x i64> %wide.load90, ptr %i.ga, align 8, !tbaa !72, !alias.scope !166
  %index.next93 = add nuw i64 %index88, 4         ; 2 uses
  %i.gb = icmp eq i64 %index.next93, %n.vec86
  br i1 %i.gb, label %._crit_edge.us.us.i, label %vector.body87, !llvm.loop !168

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph83
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph83.epil.preheader

scalar.ph83.epil.preheader:                       ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph83.preheader.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph83.preheader.a ], [ %indvars.iv.next.i.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod103)
  %i.gc = getelementptr [8 x i8], ptr %gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !72
  %i.ge = getelementptr [8 x i8], ptr %gep168.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !72
  store i64 %i.gf, ptr %i.gc, align 8, !tbaa !72
  store i64 %i.gd, ptr %i.ge, align 8, !tbaa !72
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body87, %scalar.ph83.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next147.i = add nsw i64 %indvars.iv146.i, %i.ex ; 2 uses
  %i.gg = icmp slt i64 %indvars.iv.next147.i, %i.ez
  br i1 %i.gg, label %.preheader119.us.us.i, label %._crit_edge124.us.us.i, !llvm.loop !169

._crit_edge124.us.us.i:                           ; preds = %._crit_edge.us.us.i
  %i.gh = getelementptr inbounds [8 x i8], ptr %.1125.us.us.i, i64 %i.ev ; 2 uses
  %i.gi = icmp ult ptr %i.gh, %i.i
  %indvar.next74 = add i64 %indvar73, 1
  br i1 %i.gi, label %.preheader120.us.us.i, label %Abc_TtSwapVars.exit, !llvm.loop !170

Abc_TtSwapVars.exit:                              ; preds = %._crit_edge124.us.us.i, %._crit_edge.us.i, %vector.body, %scalar.ph, %scalar.ph.1, %scalar.ph.2, %.preheader120.lr.ph.i, %bb.j, %.preheader.lr.ph.i, %bb.i, %bb.g, %bb.e
  %i.gj = add nsw i32 %.020, -1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.split, %Abc_TtSwapVars.exit
  %.1 = phi i32 [ %.020, %.lr.ph.split ], [ %i.gj, %Abc_TtSwapVars.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.gk = icmp sgt i64 %indvars.iv, 0
  %i.gl = icmp sgt i32 %.1, -1
  %i.gm = select i1 %i.gk, i1 %i.gl, i1 false
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %i.gm, label %.lr.ph.split, label %._crit_edge, !llvm.loop !152

._crit_edge:                                      ; preds = %bb.k, %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Sfm_DecPeformDec_rec(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #2 {
bb.a:
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 5 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  %12 = alloca %struct.timespec, align 8          ; 5 uses
  %13 = alloca %struct.timespec, align 8          ; 5 uses
  %14 = alloca %struct.timespec, align 8          ; 9 uses
  %15 = alloca %struct.timespec, align 8          ; 5 uses
  %16 = alloca %struct.timespec, align 8          ; 9 uses
  %.sroa.0 = alloca i32, align 8                  ; 6 uses
  %.sroa.6 = alloca i32, align 4                  ; 6 uses
  %i.a = alloca [2 x [4 x i64]], align 16         ; 5 uses
  %i.b = alloca [2 x [8 x i64]], align 16         ; 12 uses
  %i.c = alloca [2 x [16 x i32]], align 16        ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load i32, ptr %i.e, align 4, !tbaa !171
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 816 ; 2 uses
  %i.h = sext i32 %4 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.l = load i32, ptr %i.k, align 4, !tbaa !17
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.n = load i32, ptr %i.m, align 8, !tbaa !91
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.n) ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.q = load i32, ptr %i.p, align 8, !tbaa !100
  %i.r = getelementptr i8, ptr %0, i64 228
  %.val402 = load i32, ptr %i.r, align 4, !tbaa !81
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.t = load i32, ptr %i.s, align 4, !tbaa !172
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.v = load i32, ptr %i.u, align 8, !tbaa !173
  %i.w = sitofp i32 %i.v to float
  %i.x = fdiv float %i.w, 1.000000e+03
  %i.y = fpext float %i.x to double
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.q, i32 noundef %.val402, i32 noundef %i.t, double noundef %i.y) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !12
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 476
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !12
  %i.ae = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ab, i32 noundef %i.ad) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not378 = icmp eq i32 %4, 0
  br i1 %.not378, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16) ; 0 uses
  %i.ag = icmp sgt i32 %4, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %4 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !12 ; 2 uses
  %i.aj = and i32 %i.ai, 1
  %.not399 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not399, ptr @.str.9, ptr @.str.8
  %i.al = ashr i32 %i.ai, 1
  %i.am = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %i.ak, i32 noundef %i.al) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !174

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %putchar379 = tail call i32 @putchar(i32 10)    ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %._crit_edge, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %3, i64 %i.h ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 9 uses
  %i.at = getelementptr i8, ptr %i.aq, i64 4      ; 5 uses
  %i.au = sext i32 %i.f to i64                    ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1172 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1180 ; 8 uses
  %i.bb = load i32, ptr %i.an, align 8, !tbaa !12 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.preheader.i, label %.loopexit517

.lr.ph.preheader.i:                               ; preds = %bb.d
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit517, label %.lr.ph.i, !llvm.loop !175

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv.i
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !72
  %.not.i = icmp eq i64 %i.be, 0
  br i1 %.not.i, label %bb.e, label %Abc_TtIsConst0.exit

.loopexit517:                                     ; preds = %bb.e, %bb.d
  %i.bf = load i32, ptr %i.ao, align 8, !tbaa !176
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ao, align 8, !tbaa !176
  %i.bh = load i32, ptr %i.ap, align 8, !tbaa !91
  %i.bi = shl nsw i32 %i.bh, 1
  store i32 %i.bi, ptr %i.aq, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.bj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %16) #27
  %i.bk = icmp slt i32 %i.bj, 0
  br i1 %i.bk, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %.loopexit517
  %i.bl = load i64, ptr %16, align 8, !tbaa !18
  %.neg586 = mul i64 %i.bl, -1000000
  %i.bm = load i64, ptr %i.ar, align 8, !tbaa !21
  %.neg = sdiv i64 %i.bm, -1000
  %.neg587 = add i64 %.neg, %.neg586
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %.loopexit517, %bb.f
  %.0.i.neg588 = phi i64 [ %.neg587, %bb.f ], [ 1, %.loopexit517 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  %i.bn = load ptr, ptr %i.as, align 8, !tbaa !42
  %i.bo = call i32 @sat_solver_solve(ptr noundef %i.bn, ptr noundef nonnull %3, ptr noundef nonnull %i.at, i64 noundef %i.au, i64 noundef 0, i64 noundef 0, i64 noundef 0) #27
  switch i32 %i.bo, label %bb.k [
    i32 0, label %bb.g
    i32 -1, label %bb.h
  ]

bb.g:                                             ; preds = %Abc_Clock.exit.1, %Abc_Clock.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !177
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 8, !tbaa !177
  br label %bb.dc

bb.h:                                             ; preds = %Abc_Clock.exit.1, %Abc_Clock.exit
  %.0355536.lcssa616.wide = phi i32 [ 0, %Abc_Clock.exit ], [ 1, %Abc_Clock.exit.1 ] ; 2 uses
  %.0.i.neg588.lcssa615 = phi i64 [ %.0.i.neg588, %Abc_Clock.exit ], [ %.0.i.neg588.1, %Abc_Clock.exit.1 ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !178
  %i.bu = add nsw i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !178
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  %i.bv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %15) #27
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %Abc_Clock.exit411, label %bb.i
end_hunk_0
