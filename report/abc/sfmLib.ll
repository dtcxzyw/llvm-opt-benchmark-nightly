inline.NumInlined: 238
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 25
begin_hunk_0_@Sfm_LibPrepare:bb.a
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.5
  %i.ce = trunc nuw nsw i64 %indvars.iv.next304.5 to i32
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !25
  %indvars.iv.next304.6 = or disjoint i64 %indvars.iv303, 7 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next304.6
  %i.cg = trunc nuw nsw i64 %indvars.iv.next304.6 to i32
  store i32 %i.cg, ptr %i.cf, align 4, !tbaa !25
  %indvars.iv.next304.7 = add nuw nsw i64 %indvars.iv303, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8
  %niter.ncmp.7 = icmp eq i64 %niter, 0
  br i1 %niter.ncmp.7, label %._crit_edge259.loopexit.unr-lcssa, label %.lr.ph258, !llvm.loop !134

._crit_edge259.loopexit.unr-lcssa:                ; preds = %.lr.ph258
  %lcmp.mod.not = icmp eq i32 %i.bp, 0
  br i1 %lcmp.mod.not, label %._crit_edge259, label %.lr.ph258.epil.preheader

.lr.ph258.epil.preheader:                         ; preds = %._crit_edge259.loopexit.unr-lcssa, %.lr.ph258.preheader
  %indvars.iv303.epil.init = phi i64 [ 0, %.lr.ph258.preheader ], [ %indvars.iv.next304.7, %._crit_edge259.loopexit.unr-lcssa ]
  %lcmp.mod467 = icmp ne i32 %i.bp, 0
  call void @llvm.assume(i1 %lcmp.mod467)
  br label %.lr.ph258.epil

.lr.ph258.epil:                                   ; preds = %.lr.ph258.epil, %.lr.ph258.epil.preheader
  %indvars.iv303.epil = phi i64 [ %indvars.iv303.epil.init, %.lr.ph258.epil.preheader ], [ %indvars.iv.next304.epil, %.lr.ph258.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph258.epil.preheader ], [ %epil.iter.next, %.lr.ph258.epil ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv303.epil
  %i.ci = trunc nuw nsw i64 %indvars.iv303.epil to i32
  store i32 %i.ci, ptr %i.ch, align 4, !tbaa !25
  %indvars.iv.next304.epil = add nuw nsw i64 %indvars.iv303.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge259, label %.lr.ph258.epil, !llvm.loop !135

._crit_edge259:                                   ; preds = %._crit_edge259.loopexit.unr-lcssa, %.lr.ph258.epil, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.1135264, i64 32
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !128 ; 4 uses
  store i64 %i.ck, ptr %i.g, align 16, !tbaa !23
  %i.cl = load i32, ptr %i.p, align 8, !tbaa !61
  %i.cm = icmp sgt i32 %i.cl, 6
  br i1 %i.cm, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge259
  store i64 %i.ck, ptr %i.bi, align 8, !tbaa !23
  store i64 %i.ck, ptr %i.bj, align 16, !tbaa !23
  store i64 %i.ck, ptr %i.bk, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge259
  %i.cn = zext nneg i32 %i.bo to i64              ; 2 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.cn
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !25 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph262, label %._crit_edge263

.lr.ph262:                                        ; preds = %bb.k
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cn
  %wide.trip.count311 = zext nneg i32 %i.cp to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph262, %Abc_TtSwapAdjacent.exit
  %indvars.iv308 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next309, %Abc_TtSwapAdjacent.exit ] ; 2 uses
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.bo, ptr noundef nonnull %.1135264, ptr noundef null, i32 noundef -1)
  %i.cs = load i32, ptr %i.bl, align 4, !tbaa !62 ; 6 uses
  %i.ct = load ptr, ptr %i.cr, align 8, !tbaa !131
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv308
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !25 ; 7 uses
  %i.cw = icmp slt i32 %i.cv, 5
  br i1 %i.cw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cx = icmp sgt i32 %i.cs, 0
  br i1 %i.cx, label %.lr.ph64.i, label %Abc_TtSwapAdjacent.exit

.lr.ph64.i:                                       ; preds = %bb.m
  %i.cy = shl nuw nsw i32 1, %i.cv
  %i.cz = sext i32 %i.cv to i64
  %i.da = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.cz ; 3 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !23 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !23 ; 2 uses
  %i.de = zext nneg i32 %i.cy to i64              ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !23 ; 2 uses
  %wide.trip.count73.i = zext nneg i32 %i.cs to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.cs, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph64.i
  %n.vec = and i64 %wide.trip.count73.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.db, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert377 = insertelement <2 x i64> poison, i64 %i.dd, i64 0
  %broadcast.splat378 = shufflevector <2 x i64> %broadcast.splatinsert377, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert379 = insertelement <2 x i64> poison, i64 %i.de, i64 0
  %broadcast.splat380 = shufflevector <2 x i64> %broadcast.splatinsert379, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert381 = insertelement <2 x i64> poison, i64 %i.dg, i64 0
  %broadcast.splat382 = shufflevector <2 x i64> %broadcast.splatinsert381, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dh, align 16, !tbaa !23 ; 3 uses
  %wide.load383 = load <2 x i64>, ptr %i.di, align 16, !tbaa !23 ; 3 uses
  %i.dj = and <2 x i64> %wide.load, %broadcast.splat
  %i.dk = and <2 x i64> %wide.load383, %broadcast.splat
  %i.dl = and <2 x i64> %wide.load, %broadcast.splat378
  %i.dm = and <2 x i64> %wide.load383, %broadcast.splat378
  %i.dn = shl <2 x i64> %i.dl, %broadcast.splat380
  %i.do = shl <2 x i64> %i.dm, %broadcast.splat380
  %i.dp = or <2 x i64> %i.dn, %i.dj
  %i.dq = or <2 x i64> %i.do, %i.dk
  %i.dr = and <2 x i64> %wide.load, %broadcast.splat382
  %i.ds = and <2 x i64> %wide.load383, %broadcast.splat382
  %i.dt = lshr <2 x i64> %i.dr, %broadcast.splat380
  %i.du = lshr <2 x i64> %i.ds, %broadcast.splat380
  %i.dv = or <2 x i64> %i.dp, %i.dt
  %i.dw = or <2 x i64> %i.dq, %i.du
  store <2 x i64> %i.dv, ptr %i.dh, align 16, !tbaa !23
  store <2 x i64> %i.dw, ptr %i.di, align 16, !tbaa !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count73.i
  br i1 %cmp.n, label %Abc_TtSwapAdjacent.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph64.i, %middle.block
  %indvars.iv70.i.ph = phi i64 [ 0, %.lr.ph64.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv70.i = phi i64 [ %indvars.iv.next71.i, %scalar.ph ], [ %indvars.iv70.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70.i ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !23 ; 3 uses
  %i.ea = and i64 %i.dz, %i.db
  %i.eb = and i64 %i.dz, %i.dd
  %i.ec = shl i64 %i.eb, %i.de
  %i.ed = or i64 %i.ec, %i.ea
  %i.ee = and i64 %i.dz, %i.dg
  %i.ef = lshr i64 %i.ee, %i.de
  %i.eg = or i64 %i.ed, %i.ef
  store i64 %i.eg, ptr %i.dy, align 8, !tbaa !23
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %wide.trip.count73.i
  br i1 %exitcond74.not.i, label %Abc_TtSwapAdjacent.exit, label %scalar.ph, !llvm.loop !137

bb.n:                                             ; preds = %bb.l
  %i.eh = icmp eq i32 %i.cv, 5
  %i.ei = sext i32 %i.cs to i64
  %.idx65.i = shl nsw i64 %i.ei, 3                ; 2 uses
  %i.ej = getelementptr inbounds i8, ptr %i.g, i64 %.idx65.i ; 2 uses
  br i1 %i.eh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ek = icmp sgt i32 %i.cs, 0
  br i1 %i.ek, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.lr.ph.i:                                         ; preds = %bb.o, %.lr.ph.i
  %.05462.i = phi ptr [ %i.eo, %.lr.ph.i ], [ %i.g, %bb.o ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.05462.i, i64 4 ; 2 uses
  %i.em = load <2 x i32>, ptr %i.el, align 4, !tbaa !25
  %i.en = shufflevector <2 x i32> %i.em, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.en, ptr %i.el, align 4, !tbaa !25
  %i.eo = getelementptr inbounds nuw i8, ptr %.05462.i, i64 16 ; 2 uses
  %i.ep = icmp ult ptr %i.eo, %i.ej
  br i1 %i.ep, label %.lr.ph.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !138

bb.p:                                             ; preds = %bb.n
  %i.eq = icmp samesign ult i32 %i.cv, 7
  %i.er = add nsw i32 %i.cv, -6
  %i.es = shl nuw i32 1, %i.er
  %i.et = select i1 %i.eq, i32 1, i32 %i.es       ; 7 uses
  %i.eu = icmp sgt i32 %i.cs, 0
  br i1 %i.eu, label %.preheader.lr.ph.i, label %Abc_TtSwapAdjacent.exit

.preheader.lr.ph.i:                               ; preds = %bb.p
  %i.ev = icmp sgt i32 %i.et, 0
  %i.ew = shl i32 %i.et, 2                        ; 2 uses
  %i.ex = sext i32 %i.ew to i64                   ; 3 uses
  br i1 %i.ev, label %.preheader.us.preheader.i, label %Abc_TtSwapAdjacent.exit

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ey = shl nuw nsw i32 %i.et, 1
  %i.ez = zext nneg i32 %i.et to i64              ; 6 uses
  %i.fa = zext nneg i32 %i.ey to i64              ; 2 uses
  %i.fb = shl nuw nsw i64 %i.ez, 3                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.fb
  %i.fc = add i64 %.idx65.i, %i.h
  %i.fd = shl nsw i64 %i.ex, 3                    ; 4 uses
  %i.fe = add i64 %i.fd, %i.h
  %umax = call i64 @llvm.umax.i64(i64 %i.fc, i64 %i.fe)
  %i.ff = sub i64 %umax, %i.h                     ; 2 uses
  %i.fg = icmp ne i64 %i.ff, %i.fd
  %umin = zext i1 %i.fg to i64                    ; 2 uses
  %i.fh = or disjoint i64 %i.fd, %umin
  %i.fi = sub i64 %i.ff, %i.fh
  %umax384 = call i64 @llvm.umax.i64(i64 %i.fd, i64 1)
  %7 = udiv i64 %i.fi, %umax384
  %8 = add i64 %7, %umin
  %i.fj = shl i64 %8, 3
  %9 = mul i64 %i.fj, %i.ex                       ; 2 uses
  %i.fk = shl nuw nsw i64 %i.ez, 4
  %10 = getelementptr i8, ptr %i.g, i64 %9
  %scevgep385 = getelementptr i8, ptr %10, i64 %i.fk
  %11 = shl nuw nsw i64 %i.fa, 3                  ; 2 uses
  %scevgep386 = getelementptr i8, ptr %i.g, i64 %11
  %i.fl = getelementptr i8, ptr %i.g, i64 %9
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.fb
  %scevgep387 = getelementptr i8, ptr %i.fm, i64 %11
  %min.iters.check390 = icmp ult i32 %i.et, 6
  %bound0 = icmp ult ptr %scevgep, %scevgep387
  %bound1 = icmp ult ptr %scevgep386, %scevgep385
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i32 %i.ew, 0
  %12 = or i1 %found.conflict, %stride.check
  %n.vec392 = and i64 %i.ez, 2147483644
  %xtraiter468 = and i64 %i.ez, 1
  %i.fn = icmp eq i32 %i.et, 1
  %unroll_iter472 = and i64 %i.ez, 2147483646
  %lcmp.mod470.not = icmp eq i64 %xtraiter468, 0
  %lcmp.mod471 = trunc i32 %i.et to i1
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.061.us.i = phi ptr [ %i.fz, %._crit_edge.us.i ], [ %i.g, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ez ; 4 uses
  %invariant.gep80.i = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.fa ; 4 uses
  %brmerge = select i1 %min.iters.check390, i1 true, i1 %12
  br i1 %brmerge, label %scalar.ph389.preheader.a, label %vector.body393

scalar.ph389.preheader.a:                         ; preds = %.preheader.us.i
  br i1 %i.fn, label %scalar.ph389.epil.preheader, label %scalar.ph389

vector.body393:                                   ; preds = %.preheader.us.i, %vector.body393
  %index394 = phi i64 [ %index.next399, %vector.body393 ], [ 0, %.preheader.us.i ] ; 3 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index394 ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %wide.load395 = load <2 x i64>, ptr %i.fo, align 8, !tbaa !23, !alias.scope !139, !noalias !142
  %wide.load396 = load <2 x i64>, ptr %i.fp, align 8, !tbaa !23, !alias.scope !139, !noalias !142
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %index394 ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16 ; 2 uses
  %wide.load397 = load <2 x i64>, ptr %i.fq, align 8, !tbaa !23, !alias.scope !142
  %wide.load398 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !23, !alias.scope !142
  store <2 x i64> %wide.load397, ptr %i.fo, align 8, !tbaa !23, !alias.scope !139, !noalias !142
  store <2 x i64> %wide.load398, ptr %i.fp, align 8, !tbaa !23, !alias.scope !139, !noalias !142
  store <2 x i64> %wide.load395, ptr %i.fq, align 8, !tbaa !23, !alias.scope !142
  store <2 x i64> %wide.load396, ptr %i.fr, align 8, !tbaa !23, !alias.scope !142
  %index.next399 = add nuw i64 %index394, 4       ; 2 uses
  %i.fs = icmp eq i64 %index.next399, %n.vec392
  br i1 %i.fs, label %._crit_edge.us.i, label %vector.body393, !llvm.loop !144

scalar.ph389:                                     ; preds = %scalar.ph389.preheader.a, %scalar.ph389
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph389 ], [ 0, %scalar.ph389.preheader.a ] ; 4 uses
  %niter473 = phi i64 [ %niter473.next.1, %scalar.ph389 ], [ 0, %scalar.ph389.preheader.a ]
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i ; 2 uses
  %i.ft = load i64, ptr %gep.i, align 8, !tbaa !23
  %gep81.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i ; 2 uses
  %i.fu = load i64, ptr %gep81.i, align 8, !tbaa !23
  store i64 %i.fu, ptr %gep.i, align 8, !tbaa !23
  store i64 %i.ft, ptr %gep81.i, align 8, !tbaa !23
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fv = load i64, ptr %gep.i.1, align 8, !tbaa !23
  %gep81.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.next.i ; 2 uses
  %i.fw = load i64, ptr %gep81.i.1, align 8, !tbaa !23
  store i64 %i.fw, ptr %gep.i.1, align 8, !tbaa !23
  store i64 %i.fv, ptr %gep81.i.1, align 8, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter473.next.1 = add i64 %niter473, 2         ; 2 uses
  %niter473.ncmp.1 = icmp eq i64 %niter473.next.1, %unroll_iter472
  br i1 %niter473.ncmp.1, label %._crit_edge.us.i.loopexit.unr-lcssa, label %scalar.ph389, !llvm.loop !145

._crit_edge.us.i.loopexit.unr-lcssa:              ; preds = %scalar.ph389
  br i1 %lcmp.mod470.not, label %._crit_edge.us.i, label %scalar.ph389.epil.preheader

scalar.ph389.epil.preheader:                      ; preds = %._crit_edge.us.i.loopexit.unr-lcssa, %scalar.ph389.preheader.a
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph389.preheader.a ], [ %indvars.iv.next.i.1, %._crit_edge.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod471)
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fx = load i64, ptr %gep.i.epil, align 8, !tbaa !23
  %gep81.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fy = load i64, ptr %gep81.i.epil, align 8, !tbaa !23
  store i64 %i.fy, ptr %gep.i.epil, align 8, !tbaa !23
  store i64 %i.fx, ptr %gep81.i.epil, align 8, !tbaa !23
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %vector.body393, %scalar.ph389.epil.preheader, %._crit_edge.us.i.loopexit.unr-lcssa
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i, i64 %i.ex ; 2 uses
  %i.ga = icmp ult ptr %i.fz, %i.ej
  br i1 %i.ga, label %.preheader.us.i, label %Abc_TtSwapAdjacent.exit, !llvm.loop !146

Abc_TtSwapAdjacent.exit:                          ; preds = %._crit_edge.us.i, %.lr.ph.i, %scalar.ph, %middle.block, %bb.m, %bb.o, %bb.p, %.preheader.lr.ph.i
  %i.gb = sext i32 %i.cv to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.gb ; 2 uses
  %i.gd = load <2 x i32>, ptr %i.gc, align 4, !tbaa !25
  %i.ge = shufflevector <2 x i32> %i.gd, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ge, ptr %i.gc, align 4, !tbaa !25
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1 ; 2 uses
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count311
  br i1 %exitcond312.not, label %._crit_edge263, label %bb.l, !llvm.loop !147

._crit_edge263:                                   ; preds = %Abc_TtSwapAdjacent.exit, %bb.k
  %i.gf = getelementptr inbounds nuw i8, ptr %.1135264, i64 80 ; 2 uses
  %i.gg = icmp ult ptr %i.gf, %i.w
  br i1 %i.gg, label %bb.i, label %._crit_edge267, !llvm.loop !148

._crit_edge267:                                   ; preds = %._crit_edge263, %._crit_edge
  %.not144 = icmp eq i32 %1, 0
  br i1 %.not144, label %.loopexit244, label %bb.q

bb.q:                                             ; preds = %._crit_edge267
  %i.gh = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 320 ; 2 uses
  %i.gj = icmp ult ptr %i.gi, %i.w
  br i1 %i.gj, label %.lr.ph285, label %.loopexit244

.lr.ph285:                                        ; preds = %bb.q
  %i.gk = add nsw i32 %0, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph285, %.loopexit243
  %.2136282 = phi ptr [ %i.gi, %.lr.ph285 ], [ %i.sp, %.loopexit243 ] ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.2136282, i64 16 ; 6 uses
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = and i32 %i.gn, 201326592
  %.not148 = icmp eq i32 %i.go, 0
  br i1 %.not148, label %.loopexit243, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gp = load ptr, ptr %i.t, align 8, !tbaa !68
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 320 ; 2 uses
  %i.gr = icmp ult ptr %i.gq, %i.w
  br i1 %i.gr, label %.lr.ph281, label %.loopexit243

.lr.ph281:                                        ; preds = %bb.s
  %i.gs = getelementptr inbounds nuw i8, ptr %.2136282, i64 8 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph281, %.loopexit
  %.0133278 = phi ptr [ %i.gq, %.lr.ph281 ], [ %i.sn, %.loopexit ] ; 5 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0133278, i64 16 ; 4 uses
  %i.gu = load i32, ptr %i.gt, align 8            ; 2 uses
  %i.gv = and i32 %i.gu, 201326592
  %.not149 = icmp eq i32 %i.gv, 0
  br i1 %.not149, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gw = load i32, ptr %i.gm, align 8
  %i.gx = lshr i32 %i.gw, 28
  %i.gy = lshr i32 %i.gu, 28                      ; 3 uses
  %i.gz = add nuw nsw i32 %i.gx, %i.gy
  %.not150 = icmp sgt i32 %i.gz, %i.gk
  %.not291 = icmp eq i32 %i.gy, 0
  %or.cond = or i1 %.not150, %.not291
  br i1 %or.cond, label %.loopexit, label %.lr.ph277

.lr.ph277:                                        ; preds = %bb.u
  %i.ha = getelementptr inbounds nuw i8, ptr %.0133278, i64 8 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph277, %._crit_edge275
  %indvars.iv323 = phi i64 [ 0, %.lr.ph277 ], [ %indvars.iv.next324, %._crit_edge275 ] ; 9 uses
  %i.hb = phi i32 [ %i.gy, %.lr.ph277 ], [ %i.sk, %._crit_edge275 ]
  %i.hc = load i32, ptr %i.gm, align 8
  %i.hd = lshr i32 %i.hc, 28                      ; 6 uses
  %i.he = add nuw nsw i32 %i.hd, %i.hb
  %.fr292 = freeze i32 %i.he                      ; 4 uses
  %i.hf = add i32 %.fr292, -1                     ; 4 uses
  %i.hg = icmp samesign ugt i32 %.fr292, 1
  br i1 %i.hg, label %.lr.ph270.preheader, label %._crit_edge271

.lr.ph270.preheader:                              ; preds = %bb.v
  %wide.trip.count316 = zext i32 %i.hf to i64     ; 3 uses
  %min.iters.check451 = icmp ult i32 %.fr292, 9
  br i1 %min.iters.check451, label %.lr.ph270.preheader463, label %vector.ph452

vector.ph452:                                     ; preds = %.lr.ph270.preheader
  %n.vec453 = and i64 %wide.trip.count316, 4294967288 ; 3 uses
  br label %vector.body454

vector.body454:                                   ; preds = %vector.body454, %vector.ph452
  %index455 = phi i64 [ 0, %vector.ph452 ], [ %index.next456, %vector.body454 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph452 ], [ %vec.ind.next, %vector.body454 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index455 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store <4 x i32> %vec.ind, ptr %i.hh, align 16, !tbaa !25
  store <4 x i32> %step.add, ptr %i.hi, align 16, !tbaa !25
  %index.next456 = add nuw i64 %index455, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.hj = icmp eq i64 %index.next456, %n.vec453
  br i1 %i.hj, label %middle.block457, label %vector.body454, !llvm.loop !149

middle.block457:                                  ; preds = %vector.body454
  %cmp.n458 = icmp eq i64 %n.vec453, %wide.trip.count316
  br i1 %cmp.n458, label %._crit_edge271, label %.lr.ph270.preheader463

.lr.ph270.preheader463:                           ; preds = %.lr.ph270.preheader, %middle.block457
  %indvars.iv313.ph = phi i64 [ 0, %.lr.ph270.preheader ], [ %n.vec453, %middle.block457 ]
  br label %.lr.ph270

.lr.ph270:                                        ; preds = %.lr.ph270.preheader463, %.lr.ph270
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %.lr.ph270 ], [ %indvars.iv313.ph, %.lr.ph270.preheader463 ] ; 3 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv313
  %i.hl = trunc nuw nsw i64 %indvars.iv313 to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !25
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1 ; 2 uses
  %exitcond317.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count316
  br i1 %exitcond317.not, label %._crit_edge271, label %.lr.ph270, !llvm.loop !150

._crit_edge271:                                   ; preds = %.lr.ph270, %middle.block457, %bb.v
  %i.hm = load i32, ptr %i.p, align 8, !tbaa !61
  %i.hn = icmp sgt i32 %i.hm, 6
  br i1 %i.hn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge271
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.ho = load i32, ptr %i.gm, align 8
  %i.hp = lshr i32 %i.ho, 28
  %i.hq = load ptr, ptr %i.gs, align 8, !tbaa !69 ; 2 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 4
  %.val16.i = load i32, ptr %i.hr, align 4, !tbaa !14
  %i.hs = getelementptr i8, ptr %i.hq, i64 8
  %.val17.i = load ptr, ptr %i.hs, align 8, !tbaa !18
  call fastcc void @Exp_Truth8(i32 noundef %i.hp, i32 %.val16.i, ptr %.val17.i, ptr noundef null, ptr noundef nonnull %i.b)
  %i.ht = load i32, ptr %i.gt, align 8
  %i.hu = lshr i32 %i.ht, 28                      ; 5 uses
  %.not.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i, label %Sfm_LibTruth8Two.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.w
  %i.hv = load i32, ptr %i.gm, align 8
  %i.hw = lshr i32 %i.hv, 28                      ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.hu to i64 ; 2 uses
  %xtraiter480 = and i64 %wide.trip.count.i, 1
  %i.hx = icmp eq i32 %i.hu, 1
  br i1 %i.hx, label %.lr.ph.i157.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter484 = and i64 %wide.trip.count.i, 14
  br label %.lr.ph.i157

.lr.ph.i157:                                      ; preds = %.lr.ph.i157, %.lr.ph.preheader.i.new
  %indvars.iv.i158 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i159.1, %.lr.ph.i157 ] ; 4 uses
  %.019.i = phi i32 [ %i.hw, %.lr.ph.preheader.i.new ], [ %.1.i.1, %.lr.ph.i157 ] ; 2 uses
  %niter485 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter485.next.1, %.lr.ph.i157 ]
  %i.hy = icmp ne i64 %indvars.iv.i158, %indvars.iv323 ; 2 uses
  %i.hz = zext nneg i32 %.019.i to i64
  %i.ia = getelementptr inbounds nuw [32 x i8], ptr @s_Truth8, i64 %i.hz
  %.sink.i = select i1 %i.hy, ptr %i.ia, ptr %i.b
  %i.ib = zext i1 %i.hy to i32
  %.1.i = add nuw nsw i32 %.019.i, %i.ib          ; 2 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i158
  store ptr %.sink.i, ptr %i.ic, align 16, !tbaa !66
  %indvars.iv.next.i159 = or disjoint i64 %indvars.iv.i158, 1 ; 2 uses
  %i.id = icmp ne i64 %indvars.iv.next.i159, %indvars.iv323 ; 2 uses
  %i.ie = zext nneg i32 %.1.i to i64
  %i.if = getelementptr inbounds nuw [32 x i8], ptr @s_Truth8, i64 %i.ie
  %.sink.i.1 = select i1 %i.id, ptr %i.if, ptr %i.b
  %i.ig = zext i1 %i.id to i32
  %.1.i.1 = add nuw nsw i32 %.1.i, %i.ig          ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.next.i159
  store ptr %.sink.i.1, ptr %i.ih, align 8, !tbaa !66
  %indvars.iv.next.i159.1 = add nuw nsw i64 %indvars.iv.i158, 2 ; 2 uses
  %niter485.next.1 = add i64 %niter485, 2         ; 2 uses
  %niter485.ncmp.1 = icmp eq i64 %niter485.next.1, %unroll_iter484
  br i1 %niter485.ncmp.1, label %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa, label %.lr.ph.i157, !llvm.loop !74

Sfm_LibTruth8Two.exit.loopexit.unr-lcssa:         ; preds = %.lr.ph.i157
  %lcmp.mod482.not = icmp eq i64 %xtraiter480, 0
  br i1 %lcmp.mod482.not, label %Sfm_LibTruth8Two.exit, label %.lr.ph.i157.epil.preheader

.lr.ph.i157.epil.preheader:                       ; preds = %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i158.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i159.1, %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa ] ; 2 uses
  %.019.i.epil.init = phi i32 [ %i.hw, %.lr.ph.preheader.i ], [ %.1.i.1, %Sfm_LibTruth8Two.exit.loopexit.unr-lcssa ]
end_hunk_0
begin_hunk_1_@Sfm_LibPrepare:bb.a
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !23
  %i.od = xor i64 %i.oc, -1
  br label %Exp_Truth6Lit.exit36.i

bb.bm:                                            ; preds = %bb.bk
  %i.oe = ashr exact i32 %i.nw, 1
  %i.of = sext i32 %i.oe to i64
  %i.og = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.of
  %i.oh = load i64, ptr %i.og, align 8, !tbaa !23
  br label %Exp_Truth6Lit.exit36.i

Exp_Truth6Lit.exit36.thread.i:                    ; preds = %bb.bj
  %i.oi = lshr i32 %i.nw, 1
  %i.oj = sub nsw i32 %i.oi, %i.le
  %i.ok = sext i32 %i.oj to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.ok
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !23
  %i.on = sext i1 %.not17.i34.i to i64
  %spec.select.i35.i = xor i64 %i.om, %i.on
  br label %bb.bn

Exp_Truth6Lit.exit36.i:                           ; preds = %bb.bm, %bb.bl, %bb.bi, %._crit_edge.i
  %.0.i33.i = phi i64 [ %i.oh, %bb.bm ], [ -1, %bb.bi ], [ 0, %._crit_edge.i ], [ %i.od, %bb.bl ] ; 2 uses
  %.not.i199 = icmp eq ptr %i.md, null
  br i1 %.not.i199, label %Exp_Truth6.exit, label %bb.bn

bb.bn:                                            ; preds = %Exp_Truth6Lit.exit36.i, %Exp_Truth6Lit.exit36.thread.i
  %.0.i3339.i = phi i64 [ %spec.select.i35.i, %Exp_Truth6Lit.exit36.thread.i ], [ %.0.i33.i, %Exp_Truth6Lit.exit36.i ]
  call void @free(ptr noundef nonnull %i.md) #24
  br label %Exp_Truth6.exit

Exp_Truth6.exit:                                  ; preds = %Exp_Truth6Lit.exit36.i, %bb.bn
  %.0.i3340.i = phi i64 [ %.0.i33.i, %Exp_Truth6Lit.exit36.i ], [ %.0.i3339.i, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 %.0.i3340.i, ptr %i.g, align 16, !tbaa !23
  br label %Abc_TtCopy.exit

Abc_TtCopy.exit:                                  ; preds = %Sfm_LibTruth8Two.exit, %Exp_Truth6.exit
  %i.oo = sext i32 %i.hf to i64                   ; 2 uses
  %i.op = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.oo
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !25 ; 2 uses
  %i.or = icmp sgt i32 %i.oq, 0
  br i1 %i.or, label %.lr.ph273, label %._crit_edge275

.lr.ph273:                                        ; preds = %Abc_TtCopy.exit
  %i.os = icmp ugt i32 %.fr292, 6
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.oo
  br i1 %i.os, label %.lr.ph273.split.us, label %.lr.ph273.split.preheader

.lr.ph273.split.preheader:                        ; preds = %.lr.ph273
  %wide.trip.count321 = zext nneg i32 %i.oq to i64
  %i.ou = trunc nuw nsw i64 %indvars.iv323 to i32
  br label %.lr.ph273.split

.lr.ph273.split.us:                               ; preds = %.lr.ph273
  %i.ov = trunc nuw nsw i64 %indvars.iv323 to i32
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.hf, ptr noundef nonnull %.2136282, ptr noundef nonnull %.0133278, i32 noundef %i.ov)
  br label %._crit_edge275

.lr.ph273.split:                                  ; preds = %.lr.ph273.split.preheader, %Abc_TtSwapAdjacent.exit196
  %indvars.iv318 = phi i64 [ 0, %.lr.ph273.split.preheader ], [ %indvars.iv.next319, %Abc_TtSwapAdjacent.exit196 ] ; 2 uses
  call void @Sfm_LibPrepareAdd(ptr noundef nonnull %i.p, ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, i32 noundef %i.hf, ptr noundef nonnull %.2136282, ptr noundef nonnull %.0133278, i32 noundef %i.ou)
  %i.ow = load i32, ptr %i.gl, align 4, !tbaa !62 ; 6 uses
  %i.ox = load ptr, ptr %i.ot, align 8, !tbaa !131
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv318
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !25 ; 7 uses
  %i.pa = icmp slt i32 %i.oz, 5
  br i1 %i.pa, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.lr.ph273.split
  %i.pb = icmp sgt i32 %i.ow, 0
  br i1 %i.pb, label %.lr.ph64.i191, label %Abc_TtSwapAdjacent.exit196

.lr.ph64.i191:                                    ; preds = %bb.bo
  %i.pc = shl nuw nsw i32 1, %i.oz
  %i.pd = sext i32 %i.oz to i64
  %i.pe = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %i.pd ; 3 uses
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !23 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !23 ; 2 uses
  %i.pi = zext nneg i32 %i.pc to i64              ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !23 ; 2 uses
  %wide.trip.count73.i192 = zext nneg i32 %i.ow to i64 ; 3 uses
  %min.iters.check404 = icmp ult i32 %i.ow, 4
  br i1 %min.iters.check404, label %scalar.ph403.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %.lr.ph64.i191
  %n.vec406 = and i64 %wide.trip.count73.i192, 2147483644 ; 3 uses
  %broadcast.splatinsert407 = insertelement <2 x i64> poison, i64 %i.pf, i64 0
  %broadcast.splat408 = shufflevector <2 x i64> %broadcast.splatinsert407, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert409 = insertelement <2 x i64> poison, i64 %i.ph, i64 0
  %broadcast.splat410 = shufflevector <2 x i64> %broadcast.splatinsert409, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert411 = insertelement <2 x i64> poison, i64 %i.pi, i64 0
  %broadcast.splat412 = shufflevector <2 x i64> %broadcast.splatinsert411, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert413 = insertelement <2 x i64> poison, i64 %i.pk, i64 0
  %broadcast.splat414 = shufflevector <2 x i64> %broadcast.splatinsert413, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body415

vector.body415:                                   ; preds = %vector.body415, %vector.ph405
  %index416 = phi i64 [ 0, %vector.ph405 ], [ %index.next419, %vector.body415 ] ; 2 uses
  %i.pl = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index416 ; 3 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 16 ; 2 uses
  %wide.load417 = load <2 x i64>, ptr %i.pl, align 16, !tbaa !23 ; 3 uses
  %wide.load418 = load <2 x i64>, ptr %i.pm, align 16, !tbaa !23 ; 3 uses
  %i.pn = and <2 x i64> %wide.load417, %broadcast.splat408
  %i.po = and <2 x i64> %wide.load418, %broadcast.splat408
  %i.pp = and <2 x i64> %wide.load417, %broadcast.splat410
  %i.pq = and <2 x i64> %wide.load418, %broadcast.splat410
  %i.pr = shl <2 x i64> %i.pp, %broadcast.splat412
  %i.ps = shl <2 x i64> %i.pq, %broadcast.splat412
  %i.pt = or <2 x i64> %i.pr, %i.pn
  %i.pu = or <2 x i64> %i.ps, %i.po
  %i.pv = and <2 x i64> %wide.load417, %broadcast.splat414
  %i.pw = and <2 x i64> %wide.load418, %broadcast.splat414
  %i.px = lshr <2 x i64> %i.pv, %broadcast.splat412
  %i.py = lshr <2 x i64> %i.pw, %broadcast.splat412
  %i.pz = or <2 x i64> %i.pt, %i.px
  %i.qa = or <2 x i64> %i.pu, %i.py
  store <2 x i64> %i.pz, ptr %i.pl, align 16, !tbaa !23
  store <2 x i64> %i.qa, ptr %i.pm, align 16, !tbaa !23
  %index.next419 = add nuw i64 %index416, 4       ; 2 uses
  %i.qb = icmp eq i64 %index.next419, %n.vec406
  br i1 %i.qb, label %middle.block420, label %vector.body415, !llvm.loop !151

middle.block420:                                  ; preds = %vector.body415
  %cmp.n421 = icmp eq i64 %n.vec406, %wide.trip.count73.i192
  br i1 %cmp.n421, label %Abc_TtSwapAdjacent.exit196, label %scalar.ph403.preheader

scalar.ph403.preheader:                           ; preds = %.lr.ph64.i191, %middle.block420
  %indvars.iv70.i193.ph = phi i64 [ 0, %.lr.ph64.i191 ], [ %n.vec406, %middle.block420 ]
  br label %scalar.ph403

scalar.ph403:                                     ; preds = %scalar.ph403.preheader, %scalar.ph403
  %indvars.iv70.i193 = phi i64 [ %indvars.iv.next71.i194, %scalar.ph403 ], [ %indvars.iv70.i193.ph, %scalar.ph403.preheader ] ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv70.i193 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !23 ; 3 uses
  %i.qe = and i64 %i.qd, %i.pf
  %i.qf = and i64 %i.qd, %i.ph
  %i.qg = shl i64 %i.qf, %i.pi
  %i.qh = or i64 %i.qg, %i.qe
  %i.qi = and i64 %i.qd, %i.pk
  %i.qj = lshr i64 %i.qi, %i.pi
  %i.qk = or i64 %i.qh, %i.qj
  store i64 %i.qk, ptr %i.qc, align 8, !tbaa !23
  %indvars.iv.next71.i194 = add nuw nsw i64 %indvars.iv70.i193, 1 ; 2 uses
  %exitcond74.not.i195 = icmp eq i64 %indvars.iv.next71.i194, %wide.trip.count73.i192
  br i1 %exitcond74.not.i195, label %Abc_TtSwapAdjacent.exit196, label %scalar.ph403, !llvm.loop !152

bb.bp:                                            ; preds = %.lr.ph273.split
  %i.ql = icmp eq i32 %i.oz, 5
  %i.qm = sext i32 %i.ow to i64
  %.idx65.i176 = shl nsw i64 %i.qm, 3             ; 2 uses
  %i.qn = getelementptr inbounds i8, ptr %i.g, i64 %.idx65.i176 ; 2 uses
  br i1 %i.ql, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.qo = icmp sgt i32 %i.ow, 0
  br i1 %i.qo, label %.lr.ph.i189, label %Abc_TtSwapAdjacent.exit196

.lr.ph.i189:                                      ; preds = %bb.bq, %.lr.ph.i189
  %.05462.i190 = phi ptr [ %i.qs, %.lr.ph.i189 ], [ %i.g, %bb.bq ] ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %.05462.i190, i64 4 ; 2 uses
  %i.qq = load <2 x i32>, ptr %i.qp, align 4, !tbaa !25
  %i.qr = shufflevector <2 x i32> %i.qq, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.qr, ptr %i.qp, align 4, !tbaa !25
  %i.qs = getelementptr inbounds nuw i8, ptr %.05462.i190, i64 16 ; 2 uses
  %i.qt = icmp ult ptr %i.qs, %i.qn
  br i1 %i.qt, label %.lr.ph.i189, label %Abc_TtSwapAdjacent.exit196, !llvm.loop !138

bb.br:                                            ; preds = %bb.bp
  %i.qu = icmp samesign ult i32 %i.oz, 7
  %i.qv = add nsw i32 %i.oz, -6
  %i.qw = shl nuw i32 1, %i.qv
  %i.qx = select i1 %i.qu, i32 1, i32 %i.qw       ; 7 uses
  %i.qy = icmp sgt i32 %i.ow, 0
  br i1 %i.qy, label %.preheader.lr.ph.i177, label %Abc_TtSwapAdjacent.exit196

.preheader.lr.ph.i177:                            ; preds = %bb.br
  %i.qz = icmp sgt i32 %i.qx, 0
  %i.ra = shl i32 %i.qx, 2                        ; 2 uses
  %i.rb = sext i32 %i.ra to i64                   ; 3 uses
  br i1 %i.qz, label %.preheader.us.preheader.i178, label %Abc_TtSwapAdjacent.exit196

.preheader.us.preheader.i178:                     ; preds = %.preheader.lr.ph.i177
  %i.rc = shl nuw nsw i32 %i.qx, 1
  %i.rd = zext nneg i32 %i.qx to i64              ; 6 uses
  %i.re = zext nneg i32 %i.rc to i64              ; 2 uses
  %i.rf = shl nuw nsw i64 %i.rd, 3                ; 2 uses
  %scevgep424 = getelementptr i8, ptr %i.g, i64 %i.rf
  %i.rg = add i64 %.idx65.i176, %i.h
  %i.rh = shl nsw i64 %i.rb, 3                    ; 4 uses
  %i.ri = add i64 %i.rh, %i.h
  %umax425 = call i64 @llvm.umax.i64(i64 %i.rg, i64 %i.ri)
  %i.rj = sub i64 %umax425, %i.h                  ; 2 uses
  %i.rk = icmp ne i64 %i.rj, %i.rh
  %umin426 = zext i1 %i.rk to i64                 ; 2 uses
  %i.rl = or disjoint i64 %i.rh, %umin426
  %i.rm = sub i64 %i.rj, %i.rl
  %umax427 = call i64 @llvm.umax.i64(i64 %i.rh, i64 1)
  %13 = udiv i64 %i.rm, %umax427
  %14 = add i64 %13, %umin426
  %i.rn = shl i64 %14, 3
  %15 = mul i64 %i.rn, %i.rb                      ; 2 uses
  %i.ro = shl nuw nsw i64 %i.rd, 4
  %16 = getelementptr i8, ptr %i.g, i64 %15
  %scevgep428 = getelementptr i8, ptr %16, i64 %i.ro
  %17 = shl nuw nsw i64 %i.re, 3                  ; 2 uses
  %scevgep429 = getelementptr i8, ptr %i.g, i64 %17
  %i.rp = getelementptr i8, ptr %i.g, i64 %15
  %i.rq = getelementptr i8, ptr %i.rp, i64 %i.rf
  %scevgep430 = getelementptr i8, ptr %i.rq, i64 %17
  %min.iters.check437 = icmp ult i32 %i.qx, 6
  %bound0431 = icmp ult ptr %scevgep424, %scevgep430
  %bound1432 = icmp ult ptr %scevgep429, %scevgep428
  %found.conflict433 = and i1 %bound0431, %bound1432
  %stride.check434 = icmp slt i32 %i.ra, 0
  %18 = or i1 %found.conflict433, %stride.check434
  %n.vec439 = and i64 %i.rd, 2147483644
  %xtraiter486 = and i64 %i.rd, 1
  %i.rr = icmp eq i32 %i.qx, 1
  %unroll_iter490 = and i64 %i.rd, 2147483646
  %lcmp.mod488.not = icmp eq i64 %xtraiter486, 0
  %lcmp.mod489 = trunc i32 %i.qx to i1
  br label %.preheader.us.i179

.preheader.us.i179:                               ; preds = %._crit_edge.us.i188, %.preheader.us.preheader.i178
  %.061.us.i180 = phi ptr [ %i.sd, %._crit_edge.us.i188 ], [ %i.g, %.preheader.us.preheader.i178 ] ; 3 uses
  %invariant.gep.i181 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.rd ; 4 uses
  %invariant.gep80.i182 = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.re ; 4 uses
  %brmerge493 = select i1 %min.iters.check437, i1 true, i1 %18
  br i1 %brmerge493, label %scalar.ph436.preheader.a, label %vector.body440

scalar.ph436.preheader.a:                         ; preds = %.preheader.us.i179
  br i1 %i.rr, label %scalar.ph436.epil.preheader, label %scalar.ph436

vector.body440:                                   ; preds = %.preheader.us.i179, %vector.body440
  %index441 = phi i64 [ %index.next446, %vector.body440 ], [ 0, %.preheader.us.i179 ] ; 3 uses
  %i.rs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %index441 ; 3 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 16 ; 2 uses
  %wide.load442 = load <2 x i64>, ptr %i.rs, align 8, !tbaa !23, !alias.scope !153, !noalias !156
  %wide.load443 = load <2 x i64>, ptr %i.rt, align 8, !tbaa !23, !alias.scope !153, !noalias !156
  %i.ru = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %index441 ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16 ; 2 uses
  %wide.load444 = load <2 x i64>, ptr %i.ru, align 8, !tbaa !23, !alias.scope !156
  %wide.load445 = load <2 x i64>, ptr %i.rv, align 8, !tbaa !23, !alias.scope !156
  store <2 x i64> %wide.load444, ptr %i.rs, align 8, !tbaa !23, !alias.scope !153, !noalias !156
  store <2 x i64> %wide.load445, ptr %i.rt, align 8, !tbaa !23, !alias.scope !153, !noalias !156
  store <2 x i64> %wide.load442, ptr %i.ru, align 8, !tbaa !23, !alias.scope !156
  store <2 x i64> %wide.load443, ptr %i.rv, align 8, !tbaa !23, !alias.scope !156
  %index.next446 = add nuw i64 %index441, 4       ; 2 uses
  %i.rw = icmp eq i64 %index.next446, %n.vec439
  br i1 %i.rw, label %._crit_edge.us.i188, label %vector.body440, !llvm.loop !158

scalar.ph436:                                     ; preds = %scalar.ph436.preheader.a, %scalar.ph436
  %indvars.iv.i183 = phi i64 [ %indvars.iv.next.i186.1, %scalar.ph436 ], [ 0, %scalar.ph436.preheader.a ] ; 4 uses
  %niter491 = phi i64 [ %niter491.next.1, %scalar.ph436 ], [ 0, %scalar.ph436.preheader.a ]
  %gep.i184 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.i183 ; 2 uses
  %i.rx = load i64, ptr %gep.i184, align 8, !tbaa !23
  %gep81.i185 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.i183 ; 2 uses
  %i.ry = load i64, ptr %gep81.i185, align 8, !tbaa !23
  store i64 %i.ry, ptr %gep.i184, align 8, !tbaa !23
  store i64 %i.rx, ptr %gep81.i185, align 8, !tbaa !23
  %indvars.iv.next.i186 = or disjoint i64 %indvars.iv.i183, 1 ; 2 uses
  %gep.i184.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.next.i186 ; 2 uses
  %i.rz = load i64, ptr %gep.i184.1, align 8, !tbaa !23
  %gep81.i185.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.next.i186 ; 2 uses
  %i.sa = load i64, ptr %gep81.i185.1, align 8, !tbaa !23
  store i64 %i.sa, ptr %gep.i184.1, align 8, !tbaa !23
  store i64 %i.rz, ptr %gep81.i185.1, align 8, !tbaa !23
  %indvars.iv.next.i186.1 = add nuw nsw i64 %indvars.iv.i183, 2 ; 2 uses
  %niter491.next.1 = add i64 %niter491, 2         ; 2 uses
  %niter491.ncmp.1 = icmp eq i64 %niter491.next.1, %unroll_iter490
  br i1 %niter491.ncmp.1, label %._crit_edge.us.i188.loopexit.unr-lcssa, label %scalar.ph436, !llvm.loop !159

._crit_edge.us.i188.loopexit.unr-lcssa:           ; preds = %scalar.ph436
  br i1 %lcmp.mod488.not, label %._crit_edge.us.i188, label %scalar.ph436.epil.preheader

scalar.ph436.epil.preheader:                      ; preds = %._crit_edge.us.i188.loopexit.unr-lcssa, %scalar.ph436.preheader.a
  %indvars.iv.i183.epil.init = phi i64 [ 0, %scalar.ph436.preheader.a ], [ %indvars.iv.next.i186.1, %._crit_edge.us.i188.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod489)
  %gep.i184.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i181, i64 %indvars.iv.i183.epil.init ; 2 uses
  %i.sb = load i64, ptr %gep.i184.epil, align 8, !tbaa !23
  %gep81.i185.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i182, i64 %indvars.iv.i183.epil.init ; 2 uses
  %i.sc = load i64, ptr %gep81.i185.epil, align 8, !tbaa !23
  store i64 %i.sc, ptr %gep.i184.epil, align 8, !tbaa !23
  store i64 %i.sb, ptr %gep81.i185.epil, align 8, !tbaa !23
  br label %._crit_edge.us.i188

._crit_edge.us.i188:                              ; preds = %vector.body440, %scalar.ph436.epil.preheader, %._crit_edge.us.i188.loopexit.unr-lcssa
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i180, i64 %i.rb ; 2 uses
  %i.se = icmp ult ptr %i.sd, %i.qn
  br i1 %i.se, label %.preheader.us.i179, label %Abc_TtSwapAdjacent.exit196, !llvm.loop !146

Abc_TtSwapAdjacent.exit196:                       ; preds = %._crit_edge.us.i188, %.lr.ph.i189, %scalar.ph403, %middle.block420, %bb.bo, %bb.bq, %bb.br, %.preheader.lr.ph.i177
  %i.sf = sext i32 %i.oz to i64
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.sf ; 2 uses
  %i.sh = load <2 x i32>, ptr %i.sg, align 4, !tbaa !25
  %i.si = shufflevector <2 x i32> %i.sh, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.si, ptr %i.sg, align 4, !tbaa !25
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond322.not = icmp eq i64 %indvars.iv.next319, %wide.trip.count321
  br i1 %exitcond322.not, label %._crit_edge275, label %.lr.ph273.split, !llvm.loop !160

._crit_edge275:                                   ; preds = %Abc_TtSwapAdjacent.exit196, %.lr.ph273.split.us, %Abc_TtCopy.exit
  %indvars.iv.next324 = add nuw nsw i64 %indvars.iv323, 1 ; 2 uses
  %i.sj = load i32, ptr %i.gt, align 8
  %i.sk = lshr i32 %i.sj, 28                      ; 2 uses
  %i.sl = zext nneg i32 %i.sk to i64
  %i.sm = icmp samesign ult i64 %indvars.iv.next324, %i.sl
  br i1 %i.sm, label %bb.v, label %.loopexit, !llvm.loop !161

.loopexit:                                        ; preds = %._crit_edge275, %bb.t, %bb.u
  %i.sn = getelementptr inbounds nuw i8, ptr %.0133278, i64 80 ; 2 uses
  %i.so = icmp ult ptr %i.sn, %i.w
  br i1 %i.so, label %bb.t, label %.loopexit243, !llvm.loop !162

.loopexit243:                                     ; preds = %.loopexit, %bb.s, %bb.r
  %i.sp = getelementptr inbounds nuw i8, ptr %.2136282, i64 80 ; 2 uses
  %i.sq = icmp ult ptr %i.sp, %i.w
  br i1 %i.sq, label %bb.r, label %.loopexit244, !llvm.loop !163

.loopexit244:                                     ; preds = %.loopexit243, %bb.q, %._crit_edge267
  br i1 %.not250, label %._crit_edge290, label %.lr.ph289.preheader

.lr.ph289.preheader:                              ; preds = %.loopexit244
  %i.sr = add nuw i32 %0, 1
  %wide.trip.count329 = zext i32 %i.sr to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.bt
  %indvars.iv326 = phi i64 [ 2, %.lr.ph289.preheader ], [ %indvars.iv.next327, %bb.bt ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv326 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !131 ; 2 uses
  %.not147 = icmp eq ptr %i.st, null
  br i1 %.not147, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph289
  call void @free(ptr noundef nonnull %i.st) #24
  store ptr null, ptr %i.ss, align 8, !tbaa !131
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %.lr.ph289
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1 ; 2 uses
  %exitcond330.not = icmp eq i64 %indvars.iv.next327, %wide.trip.count329
  br i1 %exitcond330.not, label %._crit_edge290, label %.lr.ph289, !llvm.loop !164

._crit_edge290:                                   ; preds = %bb.bt, %.loopexit244
  %.not146 = icmp eq i32 %3, 0
  br i1 %.not146, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %._crit_edge290
  %i.su = load i32, ptr %i.r, align 8, !tbaa !127
  %i.sv = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.sw = load ptr, ptr %i.sv, align 8, !tbaa !53
  %i.sx = getelementptr i8, ptr %i.sw, i64 4
  %.val154 = load i32, ptr %i.sx, align 4, !tbaa !113
  %i.sy = add nsw i32 %.val154, -2                ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ta = load i32, ptr %i.sz, align 8, !tbaa !109
  %i.tb = getelementptr inbounds nuw i8, ptr %i.p, i64 156
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !100 ; 2 uses
  %i.td = sub nsw i32 %i.ta, %i.tc                ; 2 uses
  %i.te = sitofp i32 %i.td to double
  %i.tf = sitofp i32 %i.sy to double
  %i.tg = fdiv double %i.te, %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.p, i64 152
  %i.ti = load i32, ptr %i.th, align 8, !tbaa !96
  %i.tj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %0, i32 noundef %i.su, i32 noundef %i.sy, i32 noundef %i.td, double noundef %i.tg, i32 noundef %i.ti, i32 noundef %i.tc) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.tk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #24
  %i.tl = icmp slt i32 %i.tk, 0
  br i1 %i.tl, label %Abc_Clock.exit198, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.tm = load i64, ptr %5, align 8, !tbaa !124
  %i.tn = mul nsw i64 %i.tm, 1000000
  %i.to = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tp = load i64, ptr %i.to, align 8, !tbaa !126
  %i.tq = sdiv i64 %i.tp, 1000
  %i.tr = add nsw i64 %i.tq, %i.tn
  br label %Abc_Clock.exit198

Abc_Clock.exit198:                                ; preds = %bb.bu, %bb.bv
  %.0.i197 = phi i64 [ %i.tr, %bb.bv ], [ -1, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ts = add i64 %.0.i197, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2)
  %i.tt = sitofp i64 %i.ts to double
  %i.tu = fdiv double %i.tt, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.15, double noundef %i.tu)
  br label %bb.bw

bb.bw:                                            ; preds = %Abc_Clock.exit198, %._crit_edge290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  ret ptr %i.p
}

declare ptr @Mio_CollectRootsNewDefault2(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

declare ptr @Extra_PermSchedule(i32 noundef) local_unnamed_addr #2

declare i32 @Extra_Factorial(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define void @Sfm_LibPrintGate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #14 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %i.a) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp ult i32 %i.d, 268435456
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !110   ; 2 uses
  %i.g = icmp eq i8 %i.f, 16
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @Sfm_LibPrintGate(ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = sext i8 %i.f to i32
  %i.i = add nsw i32 %i.h, 97
  %i.j = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.i) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.c, align 8
  %i.l = lshr i32 %i.k, 28
  %i.m = zext nneg i32 %i.l to i64
  %i.n = icmp samesign ult i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Sfm_LibPrintObj(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !110
  %i.e = sext i8 %i.d to i64
  %i.f = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i8, ptr %i.g, align 4, !tbaa !110   ; 2 uses
  %i.i = sext i8 %i.h to i64
  %.idx = mul nsw i64 %i.i, 80
  %i.j = getelementptr inbounds i8, ptr %i.b, i64 %.idx ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = lshr i32 %i.l, 28
  %i.n = icmp eq i8 %i.h, 0
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.p = load i32, ptr %i.o, align 8
  %i.q = lshr i32 %i.p, 28
  %i.r = add nsw i32 %i.q, -1
  br label %bb.c

end_hunk_1
