loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@dlaed9_:bb.a
  %i.g = sext i32 %narrow163 to i64               ; 4 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %5, i64 %i.g ; 8 uses
  %i.i = getelementptr inbounds i8, ptr %8, i64 -8 ; 7 uses
  %i.j = getelementptr inbounds i8, ptr %9, i64 -8 ; 16 uses
  %i.k = load i32, ptr %11, align 4, !tbaa !8     ; 4 uses
  %narrow = xor i32 %i.k, -1
  %i.l = sext i32 %narrow to i64                  ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %10, i64 %i.l ; 4 uses
  store i32 0, ptr %12, align 4, !tbaa !8
  %i.n = load i32, ptr %0, align 4, !tbaa !8      ; 4 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load i32, ptr %1, align 4, !tbaa !8      ; 4 uses
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.n, i32 1) ; 4 uses
  %i.r = icmp samesign ugt i32 %i.p, %spec.select
  br i1 %i.r, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %2, align 4, !tbaa !8      ; 3 uses
  %spec.select177 = tail call i32 @llvm.smax.i32(i32 %i.s, i32 1)
  %i.t = icmp samesign ult i32 %spec.select177, %i.p
  %i.u = icmp sgt i32 %i.s, %spec.select
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %3, align 4, !tbaa !8      ; 3 uses
  %i.w = icmp slt i32 %i.v, %i.n
  br i1 %i.w, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %6, align 4, !tbaa !8
  %i.y = icmp slt i32 %i.x, %spec.select
  br i1 %i.y, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %11, align 4, !tbaa !8
  %i.aa = icmp slt i32 %i.z, %spec.select
  br i1 %i.aa, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ -2, %bb.b ], [ -4, %bb.e ], [ -7, %bb.f ], [ -3, %bb.d ], [ -2, %bb.c ], [ -12, %bb.g ]
  %.neg288 = phi i32 [ 1, %bb.a ], [ 2, %bb.b ], [ 4, %bb.e ], [ 7, %bb.f ], [ 3, %bb.d ], [ 2, %bb.c ], [ 12, %bb.g ]
  store i32 %.sink, ptr %12, align 4, !tbaa !8
  store i32 %.neg288, ptr %i.c, align 4, !tbaa !8
  %i.ab = call i32 @xerbla_(ptr noundef nonnull @.str, ptr noundef nonnull %i.c, i32 noundef 6) #6 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.ac = icmp eq i32 %i.n, 0
  br i1 %i.ac, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not161186 = icmp eq i32 %i.v, 0
  br i1 %.not161186, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %i.ad = add nuw i32 %i.v, 1
  %wide.trip.count = zext i32 %i.ad to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv ; 4 uses
  %i.af = tail call double @dlamc3_(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ae) #6
  %i.ag = load double, ptr %i.ae, align 8, !tbaa !9
  %i.ah = fsub double %i.af, %i.ag
  store double %i.ah, ptr %i.ae, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !11

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %2, align 4, !tbaa !8
  %.pre273 = load i32, ptr %1, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %i.ai = phi i32 [ %.pre273, %._crit_edge.loopexit ], [ %i.p, %bb.i ] ; 3 uses
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.s, %bb.i ] ; 2 uses
  store i32 %i.aj, ptr %i.c, align 4, !tbaa !8
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !8
  %.not162188 = icmp sgt i32 %i.ai, %i.aj
  br i1 %.not162188, label %._crit_edge192, label %.lr.ph191

.lr.ph191:                                        ; preds = %._crit_edge, %bb.j
  %storemerge189 = phi i32 [ %i.as, %bb.j ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.ak = mul nsw i32 %storemerge189, %i.f
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr [8 x i8], ptr %i.h, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %i.ao = sext i32 %storemerge189 to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ao
  call void @dlaed4_(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef %8, ptr noundef %9, ptr noundef %i.an, ptr noundef %7, ptr noundef nonnull %i.ap, ptr noundef nonnull %12) #6
  %i.aq = load i32, ptr %12, align 4, !tbaa !8
  %.not176 = icmp eq i32 %i.aq, 0
  br i1 %.not176, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %.lr.ph191
  %i.ar = load i32, ptr %i.d, align 4, !tbaa !8   ; 2 uses
  %i.as = add nsw i32 %i.ar, 1                    ; 2 uses
  store i32 %i.as, ptr %i.d, align 4, !tbaa !8
  %i.at = load i32, ptr %i.c, align 4, !tbaa !8
  %.not162.not = icmp slt i32 %i.ar, %i.at
  br i1 %.not162.not, label %.lr.ph191, label %._crit_edge192, !llvm.loop !13

._crit_edge192:                                   ; preds = %bb.j, %._crit_edge
  %i.au = load i32, ptr %0, align 4, !tbaa !8     ; 2 uses
  %.off = add i32 %i.au, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %.preheader.preheader, label %bb.k

.preheader.preheader:                             ; preds = %._crit_edge192
  %i.av = add nuw nsw i32 %i.au, 1
  %i.aw = sext i32 %i.f to i64                    ; 2 uses
  %i.ax = sext i32 %i.k to i64                    ; 2 uses
  %invariant.gep302 = getelementptr [8 x i8], ptr %i.h, i64 %i.aw ; 2 uses
  %invariant.gep304 = getelementptr [8 x i8], ptr %i.m, i64 %i.ax ; 2 uses
  %gep303 = getelementptr i8, ptr %invariant.gep302, i64 8
  %i.ay = load double, ptr %gep303, align 8, !tbaa !9
  %gep305 = getelementptr i8, ptr %invariant.gep304, i64 8
  store double %i.ay, ptr %gep305, align 8, !tbaa !9
  %cond = icmp eq i32 %i.av, 2
  br i1 %cond, label %.loopexit, label %._crit_edge225

._crit_edge225:                                   ; preds = %.preheader.preheader
  %gep303.1 = getelementptr i8, ptr %invariant.gep302, i64 16
  %i.az = load double, ptr %gep303.1, align 8, !tbaa !9
  %gep305.1 = getelementptr i8, ptr %invariant.gep304, i64 16
  store double %i.az, ptr %gep305.1, align 8, !tbaa !9
  %invariant.gep302.1.idx = shl nsw i64 %i.aw, 4
  %invariant.gep302.1 = getelementptr i8, ptr %i.h, i64 %invariant.gep302.1.idx ; 2 uses
  %invariant.gep304.1.idx = shl nsw i64 %i.ax, 4
  %invariant.gep304.1 = getelementptr i8, ptr %i.m, i64 %invariant.gep304.1.idx ; 2 uses
  %gep303.1492 = getelementptr i8, ptr %invariant.gep302.1, i64 8
  %i.ba = load double, ptr %gep303.1492, align 8, !tbaa !9
  %gep305.1493 = getelementptr i8, ptr %invariant.gep304.1, i64 8
  store double %i.ba, ptr %gep305.1493, align 8, !tbaa !9
  %gep303.1.1 = getelementptr i8, ptr %invariant.gep302.1, i64 16
  %i.bb = load double, ptr %gep303.1.1, align 8, !tbaa !9
  %gep305.1.1 = getelementptr i8, ptr %invariant.gep304.1, i64 16
  store double %i.bb, ptr %gep305.1.1, align 8, !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %._crit_edge192
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %9, ptr noundef nonnull @c__1, ptr noundef %10, ptr noundef nonnull @c__1) #6
  %i.bc = load i32, ptr %6, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !8
  call void @dcopy_(ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull %i.c, ptr noundef %9, ptr noundef nonnull @c__1) #6
  %i.be = load i32, ptr %0, align 4, !tbaa !8     ; 6 uses
  %.not165200 = icmp slt i32 %i.be, 1
  br i1 %.not165200, label %.loopexit, label %.preheader184.preheader

.preheader184.preheader:                          ; preds = %bb.k
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = sext i32 %i.f to i64                    ; 8 uses
  %i.bh = add nuw i32 %i.be, 1
  %wide.trip.count245 = zext i32 %i.bh to i64     ; 3 uses
  %wide.trip.count242 = zext nneg i32 %i.be to i64 ; 5 uses
  %i.bi = shl nuw nsw i64 %wide.trip.count242, 3  ; 3 uses
  %scevgep308 = getelementptr i8, ptr %9, i64 %i.bi ; 3 uses
  %i.bj = shl nsw i64 %i.bg, 3
  %i.bk = or i64 %i.bg, %i.g
  %i.bl = shl nsw i64 %i.bk, 3                    ; 2 uses
  %i.bm = add nsw i64 %i.bj, 8
  %i.bn = shl nsw i64 %i.bg, 3
  %i.bo = shl nuw nsw i64 %wide.trip.count245, 3
  %i.bp = getelementptr i8, ptr %8, i64 %i.bo
  %scevgep311 = getelementptr i8, ptr %i.bp, i64 -8
  %scevgep313 = getelementptr i8, ptr %8, i64 %i.bi
  %i.bq = shl nsw i64 %i.bg, 3
  %i.br = or i64 %i.bg, %i.g
  %i.bs = shl nsw i64 %i.br, 3
  %i.bt = add nsw i64 %i.bs, 8                    ; 2 uses
  %i.bu = shl nsw i64 %i.bg, 3
  %i.bv = add nsw i64 %i.bq, 8
  %i.bw = shl nuw nsw i64 %wide.trip.count245, 3
  %i.bx = getelementptr i8, ptr %8, i64 %i.bw
  %scevgep347 = getelementptr i8, ptr %i.bx, i64 -8
  %i.by = getelementptr i8, ptr %5, i64 %i.bt
  %i.bz = getelementptr i8, ptr %5, i64 %i.bt
  %i.ca = getelementptr i8, ptr %5, i64 %i.bl
  %i.cb = getelementptr i8, ptr %i.ca, i64 16
  %i.cc = getelementptr i8, ptr %5, i64 %i.bl
  %i.cd = getelementptr i8, ptr %i.cc, i64 %i.bi
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  %bound0352 = icmp ult ptr %9, %scevgep347
  %bound1315 = icmp ult ptr %8, %scevgep308
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader184.preheader, %._crit_edge199
  %indvar = phi i64 [ 0, %.preheader184.preheader ], [ %indvar.next, %._crit_edge199 ] ; 16 uses
  %indvars.iv237 = phi i64 [ 1, %.preheader184.preheader ], [ %indvars.iv.next238, %._crit_edge199 ] ; 15 uses
  %i.cf = shl nuw nsw i64 %indvar, 3
  %scevgep344 = getelementptr i8, ptr %9, i64 %i.cf ; 3 uses
  %i.cg = mul i64 %i.bu, %indvar
  %scevgep345 = getelementptr i8, ptr %i.by, i64 %i.cg
  %i.ch = mul i64 %i.bv, %indvar
  %scevgep348 = getelementptr i8, ptr %i.bz, i64 %i.ch
  %i.ci = xor i64 %indvar, -1
  %i.cj = add i64 %i.ci, %wide.trip.count242      ; 7 uses
  %i.ck = shl nuw nsw i64 %indvar, 3
  %i.cl = add nuw i64 %i.ck, 8                    ; 2 uses
  %scevgep = getelementptr i8, ptr %9, i64 %i.cl  ; 3 uses
  %i.cm = mul i64 %i.bm, %indvar
  %scevgep309 = getelementptr i8, ptr %i.cb, i64 %i.cm
  %i.cn = mul i64 %i.bn, %indvar
  %scevgep310 = getelementptr i8, ptr %i.ce, i64 %i.cn
  %scevgep312 = getelementptr i8, ptr %8, i64 %i.cl
  %.not171.not193 = icmp samesign ugt i64 %indvars.iv237, 1
  br i1 %.not171.not193, label %iter.check385, label %.preheader183

iter.check385:                                    ; preds = %.preheader184
  %i.co = mul nsw i64 %indvars.iv237, %i.bg
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv237 ; 8 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.h, i64 %i.co ; 7 uses
  %min.iters.check360 = icmp ult i64 %indvar, 4
  br i1 %min.iters.check360, label %vec.epilog.scalar.ph386.preheader, label %vector.memcheck343

vector.memcheck343:                               ; preds = %iter.check385
  %bound0349 = icmp ult ptr %9, %scevgep348
  %bound1350 = icmp ult ptr %scevgep345, %scevgep344
  %found.conflict351 = and i1 %bound0349, %bound1350
  %bound1353 = icmp ult ptr %8, %scevgep344
  %found.conflict354 = and i1 %bound0352, %bound1353
  %conflict.rdx355 = or i1 %found.conflict351, %found.conflict354
  %bound0356 = icmp ult ptr %9, %i.cp
  %bound1357 = icmp ult ptr %8, %scevgep344
  %found.conflict358 = and i1 %bound0356, %bound1357
  %conflict.rdx359 = or i1 %conflict.rdx355, %found.conflict358
  br i1 %conflict.rdx359, label %vec.epilog.scalar.ph386.preheader, label %vector.main.loop.iter.check361

vector.main.loop.iter.check361:                   ; preds = %vector.memcheck343
  %min.iters.check362 = icmp ult i64 %indvar, 16
  br i1 %min.iters.check362, label %vec.epilog.ph389, label %vector.ph363

vector.ph363:                                     ; preds = %vector.main.loop.iter.check361
  %i.cq = and i64 %indvar, 12
  %n.vec364 = and i64 %indvar, -16                ; 4 uses
  %i.cr = or disjoint i64 %n.vec364, 1
  %i.cs = load double, ptr %i.cp, align 8, !tbaa !9, !alias.scope !14
  %broadcast.splatinsert375 = insertelement <4 x double> poison, double %i.cs, i64 0
  %broadcast.splat376 = shufflevector <4 x double> %broadcast.splatinsert375, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body365

vector.body365:                                   ; preds = %vector.body365, %vector.ph363
  %index366 = phi i64 [ 0, %vector.ph363 ], [ %index.next381, %vector.body365 ] ; 4 uses
  %i.ct = getelementptr [8 x i8], ptr %invariant.gep, i64 %index366 ; 4 uses
  %i.cu = getelementptr i8, ptr %i.ct, i64 8
  %i.cv = getelementptr i8, ptr %i.ct, i64 40
  %i.cw = getelementptr i8, ptr %i.ct, i64 72
  %i.cx = getelementptr i8, ptr %i.ct, i64 104
  %wide.load367.a = load <4 x double>, ptr %i.cu, align 8, !tbaa !9, !alias.scope !17
  %wide.load368.a = load <4 x double>, ptr %i.cv, align 8, !tbaa !9, !alias.scope !17
  %wide.load369.a = load <4 x double>, ptr %i.cw, align 8, !tbaa !9, !alias.scope !17
  %wide.load370.a = load <4 x double>, ptr %i.cx, align 8, !tbaa !9, !alias.scope !17
  %i.cy = getelementptr [8 x i8], ptr %8, i64 %index366 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 96
  %wide.load371.a = load <4 x double>, ptr %i.cy, align 8, !tbaa !9, !alias.scope !19
  %wide.load372.a = load <4 x double>, ptr %i.cz, align 8, !tbaa !9, !alias.scope !19
  %wide.load373.a = load <4 x double>, ptr %i.da, align 8, !tbaa !9, !alias.scope !19
  %wide.load374 = load <4 x double>, ptr %i.db, align 8, !tbaa !9, !alias.scope !19
  %i.dc = fsub <4 x double> %wide.load371.a, %broadcast.splat376
  %i.dd = fsub <4 x double> %wide.load372.a, %broadcast.splat376
  %i.de = fsub <4 x double> %wide.load373.a, %broadcast.splat376
  %i.df = fsub <4 x double> %wide.load374, %broadcast.splat376
  %i.dg = fdiv <4 x double> %wide.load367.a, %i.dc
  %i.dh = fdiv <4 x double> %wide.load368.a, %i.dd
  %i.di = fdiv <4 x double> %wide.load369.a, %i.de
  %i.dj = fdiv <4 x double> %wide.load370.a, %i.df
  %i.dk = getelementptr [8 x i8], ptr %9, i64 %index366 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 64 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 96 ; 2 uses
  %wide.load377.a = load <4 x double>, ptr %i.dk, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %wide.load378.a = load <4 x double>, ptr %i.dl, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %wide.load379.a = load <4 x double>, ptr %i.dm, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %wide.load380 = load <4 x double>, ptr %i.dn, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %i.do = fmul <4 x double> %wide.load377.a, %i.dg
  %i.dp = fmul <4 x double> %wide.load378.a, %i.dh
  %i.dq = fmul <4 x double> %wide.load379.a, %i.di
  %i.dr = fmul <4 x double> %wide.load380, %i.dj
  store <4 x double> %i.do, ptr %i.dk, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  store <4 x double> %i.dp, ptr %i.dl, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  store <4 x double> %i.dq, ptr %i.dm, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  store <4 x double> %i.dr, ptr %i.dn, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %index.next381 = add nuw i64 %index366, 16      ; 2 uses
  %i.ds = icmp eq i64 %index.next381, %n.vec364
  br i1 %i.ds, label %middle.block382, label %vector.body365, !llvm.loop !24

middle.block382:                                  ; preds = %vector.body365
  %cmp.n383 = icmp eq i64 %indvar, %n.vec364
  br i1 %cmp.n383, label %.preheader183, label %vec.epilog.iter.check387

vec.epilog.iter.check387:                         ; preds = %middle.block382
  %min.epilog.iters.check388 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check388, label %vec.epilog.scalar.ph386.preheader, label %vec.epilog.ph389, !prof !27

vec.epilog.ph389:                                 ; preds = %vector.main.loop.iter.check361, %vec.epilog.iter.check387
  %vec.epilog.resume.val384 = phi i64 [ %n.vec364, %vec.epilog.iter.check387 ], [ 0, %vector.main.loop.iter.check361 ]
  %n.vec390 = and i64 %indvar, -4                 ; 3 uses
  %i.dt = or disjoint i64 %n.vec390, 1
  %i.du = load double, ptr %i.cp, align 8, !tbaa !9, !alias.scope !14
  %broadcast.splatinsert395 = insertelement <4 x double> poison, double %i.du, i64 0
  %broadcast.splat396 = shufflevector <4 x double> %broadcast.splatinsert395, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body391

vec.epilog.vector.body391:                        ; preds = %vec.epilog.vector.body391, %vec.epilog.ph389
  %index392 = phi i64 [ %vec.epilog.resume.val384, %vec.epilog.ph389 ], [ %index.next398, %vec.epilog.vector.body391 ] ; 4 uses
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep, i64 %index392
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %wide.load393.a = load <4 x double>, ptr %i.dw, align 8, !tbaa !9, !alias.scope !17
  %i.dx = getelementptr [8 x i8], ptr %8, i64 %index392
  %wide.load394 = load <4 x double>, ptr %i.dx, align 8, !tbaa !9, !alias.scope !19
  %i.dy = fsub <4 x double> %wide.load394, %broadcast.splat396
  %i.dz = fdiv <4 x double> %wide.load393.a, %i.dy
  %i.ea = getelementptr [8 x i8], ptr %9, i64 %index392 ; 2 uses
  %wide.load397 = load <4 x double>, ptr %i.ea, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %i.eb = fmul <4 x double> %wide.load397, %i.dz
  store <4 x double> %i.eb, ptr %i.ea, align 8, !tbaa !9, !alias.scope !21, !noalias !23
  %index.next398 = add nuw i64 %index392, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next398, %n.vec390
  br i1 %i.ec, label %vec.epilog.middle.block399, label %vec.epilog.vector.body391, !llvm.loop !28

vec.epilog.middle.block399:                       ; preds = %vec.epilog.vector.body391
  %cmp.n400 = icmp eq i64 %indvar, %n.vec390
  br i1 %cmp.n400, label %.preheader183, label %vec.epilog.scalar.ph386.preheader

vec.epilog.scalar.ph386.preheader:                ; preds = %vector.memcheck343, %iter.check385, %vec.epilog.iter.check387, %vec.epilog.middle.block399
  %indvars.iv232.ph = phi i64 [ 1, %iter.check385 ], [ 1, %vector.memcheck343 ], [ %i.cr, %vec.epilog.iter.check387 ], [ %i.dt, %vec.epilog.middle.block399 ] ; 4 uses
  %i.ed = sub i64 %indvars.iv237, %indvars.iv232.ph
  %i.ee = sub i64 %indvar, %indvars.iv232.ph
  %xtraiter = and i64 %i.ed, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph386.prol.loopexit, label %vec.epilog.scalar.ph386.prol

vec.epilog.scalar.ph386.prol:                     ; preds = %vec.epilog.scalar.ph386.preheader, %vec.epilog.scalar.ph386.prol
  %indvars.iv232.prol = phi i64 [ %indvars.iv.next233.prol, %vec.epilog.scalar.ph386.prol ], [ %indvars.iv232.ph, %vec.epilog.scalar.ph386.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph386.prol ], [ 0, %vec.epilog.scalar.ph386.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv232.prol
  %i.ef = load double, ptr %gep.prol, align 8, !tbaa !9
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv232.prol
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !9
  %i.ei = load double, ptr %i.cp, align 8, !tbaa !9
  %i.ej = fsub double %i.eh, %i.ei
  %i.ek = fdiv double %i.ef, %i.ej
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv232.prol ; 2 uses
  %i.em = load double, ptr %i.el, align 8, !tbaa !9
  %i.en = fmul double %i.em, %i.ek
  store double %i.en, ptr %i.el, align 8, !tbaa !9
  %indvars.iv.next233.prol = add nuw nsw i64 %indvars.iv232.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph386.prol.loopexit, label %vec.epilog.scalar.ph386.prol, !llvm.loop !29

vec.epilog.scalar.ph386.prol.loopexit:            ; preds = %vec.epilog.scalar.ph386.prol, %vec.epilog.scalar.ph386.preheader
  %indvars.iv232.unr = phi i64 [ %indvars.iv232.ph, %vec.epilog.scalar.ph386.preheader ], [ %indvars.iv.next233.prol, %vec.epilog.scalar.ph386.prol ]
  %i.eo = icmp ult i64 %i.ee, 3
  br i1 %i.eo, label %.preheader183, label %vec.epilog.scalar.ph386

.preheader183:                                    ; preds = %vec.epilog.scalar.ph386.prol.loopexit, %vec.epilog.scalar.ph386, %middle.block382, %vec.epilog.middle.block399, %.preheader184
  %.not172.not196 = icmp samesign ult i64 %indvars.iv237, %i.bf
  br i1 %.not172.not196, label %iter.check, label %._crit_edge199

iter.check:                                       ; preds = %.preheader183
  %i.ep = mul nsw i64 %indvars.iv237, %i.bg
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv237 ; 7 uses
  %invariant.gep292 = getelementptr [8 x i8], ptr %i.h, i64 %i.ep ; 7 uses
  %min.iters.check = icmp ult i64 %i.cj, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep310
  %bound1 = icmp ult ptr %scevgep309, %scevgep308
  %found.conflict = and i1 %bound0, %bound1
  %bound0314 = icmp ult ptr %scevgep, %scevgep311
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx = or i1 %found.conflict, %found.conflict316
  %bound0317 = icmp ult ptr %scevgep, %scevgep313
  %bound1318 = icmp ult ptr %scevgep312, %scevgep308
  %found.conflict319 = and i1 %bound0317, %bound1318
  %conflict.rdx320 = or i1 %conflict.rdx, %found.conflict319
  br i1 %conflict.rdx320, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check321 = icmp ult i64 %i.cj, 16
  br i1 %min.iters.check321, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.er = and i64 %i.cj, 12
  %n.vec = and i64 %i.cj, -16                     ; 4 uses
  %i.es = add i64 %indvars.iv237, %n.vec
  %i.et = load double, ptr %i.eq, align 8, !tbaa !9, !alias.scope !31
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.et, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eu = add nuw i64 %indvars.iv237, %index      ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %invariant.gep292, i64 %i.eu ; 4 uses
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %i.ex = getelementptr i8, ptr %i.ev, i64 40
  %i.ey = getelementptr i8, ptr %i.ev, i64 72
  %i.ez = getelementptr i8, ptr %i.ev, i64 104
  %wide.load = load <4 x double>, ptr %i.ew, align 8, !tbaa !9, !alias.scope !34
  %wide.load322 = load <4 x double>, ptr %i.ex, align 8, !tbaa !9, !alias.scope !34
  %wide.load323 = load <4 x double>, ptr %i.ey, align 8, !tbaa !9, !alias.scope !34
  %wide.load324 = load <4 x double>, ptr %i.ez, align 8, !tbaa !9, !alias.scope !34
  %i.fa = getelementptr [8 x i8], ptr %8, i64 %i.eu ; 4 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 32
  %i.fc = getelementptr i8, ptr %i.fa, i64 64
  %i.fd = getelementptr i8, ptr %i.fa, i64 96
  %wide.load325 = load <4 x double>, ptr %i.fa, align 8, !tbaa !9, !alias.scope !36
  %wide.load326 = load <4 x double>, ptr %i.fb, align 8, !tbaa !9, !alias.scope !36
  %wide.load327 = load <4 x double>, ptr %i.fc, align 8, !tbaa !9, !alias.scope !36
  %wide.load328 = load <4 x double>, ptr %i.fd, align 8, !tbaa !9, !alias.scope !36
  %i.fe = fsub <4 x double> %wide.load325, %broadcast.splat
  %i.ff = fsub <4 x double> %wide.load326, %broadcast.splat
  %i.fg = fsub <4 x double> %wide.load327, %broadcast.splat
  %i.fh = fsub <4 x double> %wide.load328, %broadcast.splat
  %i.fi = fdiv <4 x double> %wide.load, %i.fe
  %i.fj = fdiv <4 x double> %wide.load322, %i.ff
  %i.fk = fdiv <4 x double> %wide.load323, %i.fg
  %i.fl = fdiv <4 x double> %wide.load324, %i.fh
end_hunk_0
