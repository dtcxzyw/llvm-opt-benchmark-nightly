Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/set?download=true
inline.NumInlined: 29
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@sf_print:bb.a
  %i.j = lshr i32 %.02734.i, 5
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.078, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = and i32 %.02734.i, 31
  %i.p = shl nuw i32 1, %i.o
  %i.q = and i32 %i.p, %i.n
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %.not30.i = icmp eq i32 %.036.i, 0
  br i1 %.not30.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = add nsw i32 %.02235.i, 1
  %i.s = sext i32 %.02235.i to i64
  %i.t = getelementptr inbounds i8, ptr @s1, i64 %i.s
  store i8 44, ptr %i.t, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123.i = phi i32 [ %.02235.i, %bb.b ], [ %i.r, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40.i = phi i32 [ %indvars.iv.next41.i, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.026.i = phi i32 [ %i.y, %bb.e ], [ %.02734.i, %bb.d ] ; 3 uses
  %i.u = urem i32 %.026.i, 10
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, 48
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.w, ptr %i.x, align 1, !tbaa !23
  %i.y = udiv i32 %.026.i, 10
  %.not31.i = icmp samesign ult i32 %.026.i, 10
  %indvars.iv.next41.i = add i32 %indvars.iv40.i, 1
  br i1 %.not31.i, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %i.z = sext i32 %indvars.iv40.i to i64          ; 6 uses
  %i.aa = sext i32 %.123.i to i64                 ; 5 uses
  %i.ab = tail call i64 @llvm.smax.i64(i64 %i.z, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40.i, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp slt i32 %indvars.iv40.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ac = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 2147483616              ; 5 uses
  %i.ad = add nsw i64 %n.vec, %i.aa               ; 3 uses
  %i.ae = sub nsw i64 %i.z, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep29 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.af ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ah = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !23
  %wide.load13 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !23
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse14 = shufflevector <16 x i8> %wide.load13, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep30 = getelementptr i8, ptr %invariant.gep29, i64 %index ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %gep30, i64 16
  store <16 x i8> %reverse, ptr %gep30, align 1, !tbaa !23
  store <16 x i8> %reverse14, ptr %i.ai, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.ad, -1
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec16 = and i64 %i.ab, 2147483640            ; 4 uses
  %i.ak = add nsw i64 %n.vec16, %i.aa             ; 3 uses
  %i.al = sub nsw i64 %i.z, %n.vec16
  %invariant.gep31 = getelementptr i8, ptr %i.a, i64 %i.z
  %invariant.gep33 = getelementptr i8, ptr @s1, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index17 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %i.am = xor i64 %index17, -1
  %gep32 = getelementptr i8, ptr %invariant.gep31, i64 %i.am
  %i.an = getelementptr inbounds i8, ptr %gep32, i64 -7
  %wide.load18 = load <8 x i8>, ptr %i.an, align 1, !tbaa !23
  %reverse19 = shufflevector <8 x i8> %wide.load18, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep34 = getelementptr i8, ptr %invariant.gep33, i64 %index17
  store <8 x i8> %reverse19, ptr %gep34, align 1, !tbaa !23
  %index.next20 = add nuw i64 %index17, 8         ; 2 uses
  %i.ao = icmp eq i64 %index.next20, %n.vec16
  br i1 %i.ao, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !72

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape21 = add nsw i64 %i.ak, -1
  %cmp.n22 = icmp eq i64 %i.ab, %n.vec16
  br i1 %cmp.n22, label %.loopexit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  %indvars.iv42.i.ph = phi i64 [ %i.z, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %indvars.iv44.i = phi i64 [ %indvars.iv.next45.i, %.preheader.i ], [ %indvars.iv44.i.ph, %.preheader.i.preheader ] ; 3 uses
  %indvars.iv42.i = phi i64 [ %indvars.iv.next43.i, %.preheader.i ], [ %indvars.iv42.i.ph, %.preheader.i.preheader ] ; 2 uses
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !23
  %indvars.iv.next45.i = add nsw i64 %indvars.iv44.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !23
  %i.as = icmp sgt i64 %indvars.iv42.i, 1
  br i1 %i.as, label %.preheader.i, label %.loopexit, !llvm.loop !73

.loopexit:                                        ; preds = %.preheader.i, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.i.lcssa = phi i64 [ %ind.escape21, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44.i, %.preheader.i ] ; 3 uses
  %indvars.iv.next45.i.lcssa = phi i64 [ %i.ak, %vec.epilog.middle.block ], [ %i.ad, %middle.block ], [ %indvars.iv.next45.i, %.preheader.i ] ; 2 uses
  %i.at = trunc nsw i64 %indvars.iv.next45.i.lcssa to i32
  %i.au = icmp sgt i64 %indvars.iv44.i.lcssa, 104
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.av = trunc nuw nsw i64 %indvars.iv44.i.lcssa to i32
  %i.aw = and i64 %indvars.iv.next45.i.lcssa, 4294967295
  %i.ax = getelementptr inbounds nuw i8, ptr @s1, i64 %i.aw
  store i8 46, ptr %i.ax, align 1, !tbaa !23
  %i.ay = and i64 %indvars.iv44.i.lcssa, 4294967295
  %i.az = getelementptr inbounds nuw i8, ptr @s1, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i8 46, ptr %i.ba, align 1, !tbaa !23
  %i.bb = add nuw nsw i32 %i.av, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  store i8 46, ptr %i.bc, align 1, !tbaa !23
  br label %ps1.exit

bb.g:                                             ; preds = %.loopexit, %.lr.ph.i
  %.3.i = phi i32 [ %i.at, %.loopexit ], [ %.02235.i, %.lr.ph.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %.loopexit ], [ %.036.i, %.lr.ph.i ]
  %i.bd = add nuw nsw i32 %.02734.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bd, %i.i
  br i1 %exitcond.not.i, label %ps1.exit, label %.lr.ph.i

ps1.exit:                                         ; preds = %bb.g, %.lr.ph, %bb.f
  %.4.i = phi i32 [ %i.bb, %bb.f ], [ 1, %.lr.ph ], [ %.3.i, %bb.g ]
  %i.be = sext i32 %.4.i to i64
  %i.bf = getelementptr inbounds i8, ptr @s1, i64 %i.be ; 2 uses
  store i8 93, ptr %i.bf, align 1, !tbaa !23
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  store i8 0, ptr %i.bg, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.09, ptr noundef nonnull @s1) ; 0 uses
  %i.bi = load i32, ptr %0, align 8, !tbaa !18
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.078, i64 %i.bj
  %i.bl = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.bm = load i32, ptr %i.b, align 4, !tbaa !17
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %ps1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_bm_print(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %pbv1.exit
  %.010 = phi i32 [ 0, %.lr.ph ], [ %i.af, %pbv1.exit ] ; 2 uses
  %.089 = phi ptr [ %i.e, %.lr.ph ], [ %i.ae, %pbv1.exit ] ; 7 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !15   ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %pbv1.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.g to i64  ; 7 uses
  %min.iters.check = icmp ult i32 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %.lr.ph.preheader.i.a

.lr.ph.preheader.i.a:                             ; preds = %.lr.ph.preheader.i
  %scevgep = getelementptr i8, ptr @s1, i64 %wide.trip.count.i
  %scevgep12 = getelementptr i8, ptr %.089, i64 4
  %scevgep13 = getelementptr i8, ptr %.089, i64 8
  %1 = add nsw i64 %wide.trip.count.i, -1
  %2 = lshr i64 %1, 3
  %xtraiter.a = and i64 %2, 2305843009213693948
  %scevgep14 = getelementptr i8, ptr %scevgep13, i64 %xtraiter.a
  %bound0 = icmp ugt ptr %scevgep14, @s1
  %bound1 = icmp ult ptr %scevgep12, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i.a
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.preheader.i.new
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1.a, %.lr.ph.i.a ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.preheader.i.new ], [ %vec.ind.next, %.lr.ph.i.a ] ; 2 uses
  %i.i = lshr i64 %niter, 5
  %i.j = and i64 %i.i, 134217727
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7, !alias.scope !79
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %3 = and <4 x i32> %vec.ind, splat (i32 31)
  %4 = shl nuw <4 x i32> splat (i32 1), %3
  %5 = and <4 x i32> %4, %broadcast.splat
  %6 = icmp eq <4 x i32> %5, zeroinitializer
  %7 = select <4 x i1> %6, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  %i.n = getelementptr inbounds nuw i8, ptr @s1, i64 %niter
  store <4 x i8> %7, ptr %i.n, align 4, !tbaa !23, !alias.scope !80, !noalias !79
  %indvars.iv.next.i.1.a = add nuw i64 %niter, 4  ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %niter.ncmp.1 = icmp eq i64 %indvars.iv.next.i.1.a, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block, label %.lr.ph.i.a, !llvm.loop !77

middle.block:                                     ; preds = %.lr.ph.i.a
  %cmp.n = icmp eq i64 %unroll_iter, %wide.trip.count.i
  br i1 %cmp.n, label %pbv1.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i.a, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.a ], [ 0, %.lr.ph.preheader.i ], [ %unroll_iter, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %pbv1.exit.loopexit.unr-lcssa, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %8 = trunc nuw nsw i64 %indvars.iv.i.ph to i32
  %9 = lshr i64 %indvars.iv.i.ph, 5
  %10 = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %9
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = and i32 %8, 28
  %14 = shl nuw nsw i32 1, %13
  %15 = and i32 %14, %12
  %.not.i.prol = icmp eq i32 %15, 0
  %16 = select i1 %.not.i.prol, i8 48, i8 49
  %17 = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i.ph
  store i8 %16, ptr %17, align 4, !tbaa !23
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %pbv1.exit.loopexit.unr-lcssa

pbv1.exit.loopexit.unr-lcssa:                     ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %18 = add nsw i64 %wide.trip.count.i, -1
  %lcmp.mod.not.a = icmp eq i64 %indvars.iv.i.ph, %18
  br i1 %lcmp.mod.not.a, label %pbv1.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %pbv1.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil.init = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.epil.preheader ], [ %indvars.iv.i.unr, %pbv1.exit.loopexit.unr-lcssa ] ; 5 uses
  %19 = trunc nuw nsw i64 %indvars.iv.i.epil.init to i32
  %20 = lshr i64 %indvars.iv.i.epil.init, 5
  %21 = and i64 %20, 134217727
  %22 = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %21
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 4
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = and i32 %19, 31
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %24
  %.not.i = icmp eq i32 %27, 0
  %28 = select i1 %.not.i, i8 48, i8 49
  %29 = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.i.epil.init
  store i8 %28, ptr %29, align 1, !tbaa !23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i.epil.init, 1 ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.p = lshr i64 %indvars.iv.next.i, 5
  %i.q = and i64 %i.p, 134217727
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.089, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !7
  %i.u = and i32 %i.o, 31
  %i.v = shl nuw i32 1, %i.u
  %i.w = and i32 %i.v, %i.t
  %.not.i.epil = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not.i.epil, i8 48, i8 49
  %i.y = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !23
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.epil.init, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %pbv1.exit, label %.lr.ph.i.epil.preheader, !llvm.loop !78

pbv1.exit:                                        ; preds = %pbv1.exit.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader, %middle.block, %bb.b
  %i.z = sext i32 %i.g to i64
  %i.aa = getelementptr inbounds i8, ptr @s1, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !23
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %.010, ptr noundef nonnull @s1) ; 0 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !18
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %.089, i64 %i.ad
  %i.af = add nuw nsw i32 %.010, 1                ; 2 uses
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !17
  %i.ah = icmp slt i32 %i.af, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %pbv1.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sf_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %i.b, i32 noundef %i.d) #25 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  %i.h = load i32, ptr %i.a, align 4, !tbaa !17
  %i.i = load i32, ptr %1, align 8, !tbaa !18
  %i.j = mul nsw i32 %i.i, %i.h                   ; 2 uses
  %i.k = sext i32 %i.j to i64
  %.idx = shl nsw i64 %i.k, 2
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %.idx
  %i.m = icmp sgt i32 %i.j, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %set_write.exit.peel.next
  %.014 = phi ptr [ %i.ac, %set_write.exit.peel.next ], [ %i.g, %bb.a ] ; 4 uses
  %i.n = load i32, ptr %.014, align 4, !tbaa !7   ; 2 uses
  %i.o = and i32 %i.n, 1023                       ; 3 uses
  %i.p = zext nneg i32 %i.o to i64
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %set_write.exit.peel.begin, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.q = zext nneg i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.s) #25 ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.u = and i64 %indvars.iv.next.i, 7
  %.not15 = icmp eq i64 %i.u, 0
  br i1 %.not15, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fwrite.i = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.q
  br i1 %exitcond.not.i, label %set_write.exit.peel.begin.loopexit, label %bb.b, !llvm.loop !81

set_write.exit.peel.begin.loopexit:               ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.014, i64 %indvars.iv.next.i
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !7
  br label %set_write.exit.peel.begin

set_write.exit.peel.begin:                        ; preds = %set_write.exit.peel.begin.loopexit, %.lr.ph
  %i.v = phi i32 [ %i.n, %.lr.ph ], [ %.pre, %set_write.exit.peel.begin.loopexit ]
  %i.w = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.i, %set_write.exit.peel.begin.loopexit ] ; 2 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.v) #25 ; 0 uses
  %i.y = and i64 %i.w, 7
  %i.z = icmp ne i64 %i.y, 7
  %.not12.i.peel = icmp eq i64 %i.w, %i.p
  %or.cond.i.peel = or i1 %.not12.i.peel, %i.z
  br i1 %or.cond.i.peel, label %set_write.exit.peel.next, label %bb.e

bb.e:                                             ; preds = %set_write.exit.peel.begin
  %fwrite.i.peel = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %set_write.exit.peel.next

set_write.exit.peel.next:                         ; preds = %bb.e, %set_write.exit.peel.begin
  %fputc.i = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %i.aa = load i32, ptr %1, align 8, !tbaa !18
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.014, i64 %i.ab ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.l
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %set_write.exit.peel.next, %bb.a
  %i.ae = tail call i32 @fflush(ptr noundef %0)   ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_read(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !20 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !20
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.e, ptr %i.k, align 4, !tbaa !15
  %i.l = icmp slt i32 %i.e, 33
  %i.m = add nsw i32 %i.e, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = select i1 %i.l, i32 2, i32 %i.o          ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.d, ptr %i.q, align 8, !tbaa !22
  %i.r = sext i32 %i.d to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !19
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !17
  %i.aa = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.ab = mul nsw i32 %i.aa, %i.z                 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %.idx = shl nsw i64 %i.ac, 2
  %i.ad = getelementptr inbounds i8, ptr %i.v, i64 %.idx
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph20, label %._crit_edge21

.lr.ph20:                                         ; preds = %sf_new.exit, %._crit_edge
  %.019 = phi ptr [ %i.ar, %._crit_edge ], [ %i.v, %sf_new.exit ] ; 5 uses
  %i.af = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %.019) #25 ; 0 uses
  store i32 1, ptr %i.b, align 4, !tbaa !7
  %i.ag = load i32, ptr %.019, align 4, !tbaa !7
  %i.ah = and i32 %i.ag, 1023
  %.not17 = icmp eq i32 %i.ah, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20, %.lr.ph
  %storemerge18 = phi i32 [ %i.am, %.lr.ph ], [ 1, %.lr.ph20 ]
  %i.ai = zext nneg i32 %storemerge18 to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.019, i64 %i.ai
  %i.ak = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.aj) #25 ; 0 uses
  %i.al = load i32, ptr %i.b, align 4, !tbaa !7
  %i.am = add nsw i32 %i.al, 1                    ; 3 uses
  store i32 %i.am, ptr %i.b, align 4, !tbaa !7
  %i.an = load i32, ptr %.019, align 4, !tbaa !7
  %i.ao = and i32 %i.an, 1023
  %.not = icmp ugt i32 %i.am, %i.ao
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph20
  %i.ap = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.019, i64 %i.aq ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ad
  br i1 %i.as, label %.lr.ph20, label %._crit_edge21

._crit_edge21:                                    ; preds = %._crit_edge, %sf_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0.i
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @set_write(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !7
  %i.b = and i32 %i.a, 1023                       ; 3 uses
  %i.c = zext nneg i32 %i.b to i64
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.peel.begin, label %.split

.split:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.split, %bb.d
  %indvars.iv = phi i64 [ 0, %.split ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7
  %i.g = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.f) #25 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.h = and i64 %indvars.iv.next, 7
  %.not16 = icmp eq i64 %i.h, 0
  br i1 %.not16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %.peel.begin, label %bb.b, !llvm.loop !82

.peel.begin:                                      ; preds = %bb.a, %bb.d
  %i.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, i32 noundef %i.k) #25 ; 0 uses
  %indvars.iv.next.peel = add nuw nsw i64 %i.i, 1
  %i.m = and i64 %indvars.iv.next.peel, 7
  %i.n = icmp ne i64 %i.m, 0
  %.not12.peel = icmp eq i64 %i.i, %i.c
  %or.cond.peel = or i1 %.not12.peel, %i.n
  br i1 %or.cond.peel, label %.peel.next15, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %fwrite.peel = tail call i64 @fwrite(ptr nonnull @.str.7, i64 2, i64 1, ptr %0) ; 0 uses
  br label %.peel.next15

.peel.next15:                                     ; preds = %.peel.begin, %bb.e
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @sf_bm_read(ptr noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #25 ; 0 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !7    ; 2 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !7    ; 3 uses
  %i.f = load ptr, ptr @set_family_garbage, align 8, !tbaa !20 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  store ptr %i.j, ptr @set_family_garbage, align 8, !tbaa !20
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.h, %bb.b ], [ %i.f, %bb.c ] ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.e, ptr %i.k, align 4, !tbaa !15
  %i.l = icmp slt i32 %i.e, 33
  %i.m = add nsw i32 %i.e, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = select i1 %i.l, i32 2, i32 %i.o          ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.d, ptr %i.q, align 8, !tbaa !22
  %i.r = sext i32 %i.d to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #24
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 3 uses
  store i32 0, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !19
  %i.z = load i32, ptr %i.a, align 4, !tbaa !7
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph18, label %._crit_edge19

.lr.ph18:                                         ; preds = %sf_new.exit, %bb.h
  %.01517 = phi i32 [ %i.bk, %bb.h ], [ 0, %sf_new.exit ]
  %i.ab = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.ac = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.ad = load i32, ptr %i.x, align 4, !tbaa !17  ; 2 uses
  %i.ae = add nsw i32 %i.ad, 1
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !17
  %i.af = mul nsw i32 %i.ad, %i.ac
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ag ; 3 uses
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !15  ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 33
  %i.ak = add nsw i32 %i.ai, -1
  %i.al = lshr i32 %i.ak, 5
  %i.am = add nuw nsw i32 %i.al, 1
  %i.an = select i1 %i.aj, i32 1, i32 %i.am       ; 3 uses
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !7
  %i.ao = shl nuw nsw i32 %i.an, 2
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = add nsw i32 %i.an, -1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl nuw nsw i64 %i.ar, 2                ; 2 uses
  %i.at = sub nsw i64 %i.ap, %i.as
  %scevgep.i = getelementptr i8, ptr %i.ah, i64 %i.at
  %i.au = add nuw nsw i64 %i.as, 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, i8 0, i64 %i.au, i1 false), !tbaa !7
  %i.av = load i32, ptr %i.b, align 4, !tbaa !7
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph18, %bb.f
  %.016 = phi i32 [ %i.bg, %bb.f ], [ 0, %.lr.ph18 ] ; 3 uses
  %i.ax = call i32 @getc(ptr noundef %0)
  switch i32 %i.ax, label %bb.e [
    i32 48, label %bb.f
    i32 49, label %bb.d
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.ay = and i32 %.016, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i32 %.016, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !7
  %i.bf = or i32 %i.be, %i.az
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !7
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.9) #25
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.d, %bb.e
  %i.bg = add nuw nsw i32 %.016, 1                ; 2 uses
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !7
  %i.bi = icmp slt i32 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %.lr.ph18
  %i.bj = call i32 @getc(ptr noundef %0)
  %.not = icmp eq i32 %i.bj, 10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void (ptr, ...) @fatal(ptr noundef nonnull @.str.10) #25
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %i.bk = add nuw nsw i32 %.01517, 1              ; 2 uses
  %i.bl = load i32, ptr %i.a, align 4, !tbaa !7
  %i.bm = icmp slt i32 %i.bk, %i.bl
  br i1 %i.bm, label %.lr.ph18, label %._crit_edge19

._crit_edge19:                                    ; preds = %bb.h, %sf_new.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @ps1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #19 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 6 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !7
  %i.c = shl i32 %i.b, 5
  %i.d = and i32 %i.c, 32736                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i8 91, ptr @s1, align 16, !tbaa !23
  %.not37 = icmp eq i32 %i.d, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.g
  %.036 = phi i32 [ %.1, %bb.g ], [ 1, %bb.a ]    ; 2 uses
  %.02235 = phi i32 [ %.3, %bb.g ], [ 1, %bb.a ]  ; 4 uses
  %.02734 = phi i32 [ %i.ay, %bb.g ], [ 0, %bb.a ] ; 4 uses
  %i.e = lshr i32 %.02734, 5
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !7
  %i.j = and i32 %.02734, 31
  %i.k = shl nuw i32 1, %i.j
  %i.l = and i32 %i.i, %i.k
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not30 = icmp eq i32 %.036, 0
  br i1 %.not30, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i32 %.02235, 1
  %i.n = sext i32 %.02235 to i64
  %i.o = getelementptr inbounds i8, ptr @s1, i64 %i.n
  store i8 44, ptr %i.o, align 1, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.123 = phi i32 [ %.02235, %bb.b ], [ %i.m, %bb.c ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %bb.e ], [ 1, %bb.d ] ; 4 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.026 = phi i32 [ %i.t, %bb.e ], [ %.02734, %bb.d ] ; 3 uses
  %i.p = urem i32 %.026, 10
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  store i8 %i.r, ptr %i.s, align 1, !tbaa !23
  %i.t = udiv i32 %.026, 10
  %.not31 = icmp samesign ult i32 %.026, 10
  %indvars.iv.next41 = add i32 %indvars.iv40, 1
  br i1 %.not31, label %iter.check, label %bb.e

iter.check:                                       ; preds = %bb.e
  %i.u = sext i32 %indvars.iv40 to i64            ; 6 uses
  %i.v = sext i32 %.123 to i64                    ; 5 uses
  %i.w = tail call i64 @llvm.smax.i64(i64 %i.u, i64 1) ; 5 uses
  %min.iters.check = icmp slt i32 %indvars.iv40, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check51 = icmp slt i32 %indvars.iv40, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.w, 24
  %n.vec = and i64 %i.w, 2147483616               ; 5 uses
  %i.y = add nsw i64 %n.vec, %i.v                 ; 3 uses
  %i.z = sub nsw i64 %i.u, %n.vec
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.u
  %invariant.gep69 = getelementptr i8, ptr @s1, i64 %i.v
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = xor i64 %index, -1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aa ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %gep, i64 -15
  %i.ac = getelementptr inbounds i8, ptr %gep, i64 -31
  %wide.load = load <16 x i8>, ptr %i.ab, align 1, !tbaa !23
  %wide.load52 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !23
  %reverse = shufflevector <16 x i8> %wide.load, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse53 = shufflevector <16 x i8> %wide.load52, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep70 = getelementptr i8, ptr %invariant.gep69, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep70, i64 16
  store <16 x i8> %reverse, ptr %gep70, align 1, !tbaa !23
  store <16 x i8> %reverse53, ptr %i.ad, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %ind.escape = add nsw i64 %i.y, -1
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit64, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.w, 2147483640             ; 4 uses
  %i.af = add nsw i64 %n.vec55, %i.v              ; 3 uses
  %i.ag = sub nsw i64 %i.u, %n.vec55
  %invariant.gep71 = getelementptr i8, ptr %i.a, i64 %i.u
  %invariant.gep73 = getelementptr i8, ptr @s1, i64 %i.v
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.ah = xor i64 %index56, -1
  %gep72 = getelementptr i8, ptr %invariant.gep71, i64 %i.ah
  %i.ai = getelementptr inbounds i8, ptr %gep72, i64 -7
  %wide.load57 = load <8 x i8>, ptr %i.ai, align 1, !tbaa !23
  %reverse58 = shufflevector <8 x i8> %wide.load57, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %gep74 = getelementptr i8, ptr %invariant.gep73, i64 %index56
  store <8 x i8> %reverse58, ptr %gep74, align 1, !tbaa !23
  %index.next59 = add nuw i64 %index56, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next59, %n.vec55
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !84

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape60 = add nsw i64 %i.af, -1
  %cmp.n61 = icmp eq i64 %i.w, %n.vec55
  br i1 %cmp.n61, label %.loopexit64, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv44.ph = phi i64 [ %i.v, %iter.check ], [ %i.y, %vec.epilog.iter.check ], [ %i.af, %vec.epilog.middle.block ]
  %indvars.iv42.ph = phi i64 [ %i.u, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.preheader ], [ %indvars.iv44.ph, %.preheader.preheader ] ; 3 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.preheader ], [ %indvars.iv42.ph, %.preheader.preheader ] ; 2 uses
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, -1 ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next43
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !23
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %i.am = getelementptr inbounds i8, ptr @s1, i64 %indvars.iv44
  store i8 %i.al, ptr %i.am, align 1, !tbaa !23
  %i.an = icmp sgt i64 %indvars.iv42, 1
  br i1 %i.an, label %.preheader, label %.loopexit64, !llvm.loop !85

.loopexit64:                                      ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %indvars.iv44.lcssa = phi i64 [ %ind.escape60, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %indvars.iv44, %.preheader ] ; 3 uses
  %indvars.iv.next45.lcssa = phi i64 [ %i.af, %vec.epilog.middle.block ], [ %i.y, %middle.block ], [ %indvars.iv.next45, %.preheader ] ; 2 uses
  %i.ao = trunc nsw i64 %indvars.iv.next45.lcssa to i32
  %i.ap = icmp sgt i64 %indvars.iv44.lcssa, 104
  br i1 %i.ap, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit64
  %i.aq = trunc nsw i64 %indvars.iv44.lcssa to i32
  %i.ar = and i64 %indvars.iv.next45.lcssa, 4294967295
  %i.as = getelementptr inbounds nuw i8, ptr @s1, i64 %i.ar
  store i8 46, ptr %i.as, align 1, !tbaa !23
  %i.at = and i64 %indvars.iv44.lcssa, 4294967295
  %i.au = getelementptr inbounds nuw i8, ptr @s1, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 2
  store i8 46, ptr %i.av, align 1, !tbaa !23
  %i.aw = add nuw nsw i32 %i.aq, 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 3
  store i8 46, ptr %i.ax, align 1, !tbaa !23
  br label %.loopexit

bb.g:                                             ; preds = %.lr.ph, %.loopexit64
  %.3 = phi i32 [ %i.ao, %.loopexit64 ], [ %.02235, %.lr.ph ] ; 2 uses
  %.1 = phi i32 [ 0, %.loopexit64 ], [ %.036, %.lr.ph ]
  %i.ay = add nuw nsw i32 %.02734, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ay, %i.d
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.g, %bb.a, %bb.f
  %.4 = phi i32 [ %i.aw, %bb.f ], [ 1, %bb.a ], [ %.3, %bb.g ]
  %i.az = sext i32 %.4 to i64
  %i.ba = getelementptr inbounds i8, ptr @s1, i64 %i.az ; 2 uses
  store i8 93, ptr %i.ba, align 1, !tbaa !23
  %i.bb = getelementptr i8, ptr %i.ba, i64 1
  store i8 0, ptr %i.bb, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr @s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pbv1(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #19 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 7 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %.lr.ph.preheader.a

.lr.ph.preheader.a:                               ; preds = %.lr.ph.preheader
  %2 = getelementptr i8, ptr @s1, i64 %wide.trip.count
  %3 = getelementptr i8, ptr %0, i64 4
  %4 = add nsw i64 %wide.trip.count, -1
  %5 = lshr i64 %4, 3
  %xtraiter.a = and i64 %5, 2305843009213693948
  %6 = getelementptr i8, ptr %0, i64 %xtraiter.a
  %7 = getelementptr i8, ptr %6, i64 8
  %bound0 = icmp ugt ptr %7, @s1
  %bound1 = icmp ult ptr %3, %2
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader12, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader.a
  %unroll_iter = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph.a, %.lr.ph.preheader.new
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1.a, %.lr.ph.a ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.preheader.new ], [ %vec.ind.next, %.lr.ph.a ] ; 2 uses
  %i.b = lshr i64 %niter, 5
  %i.c = and i64 %i.b, 134217727
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !7, !alias.scope !91
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %8 = and <4 x i32> %vec.ind, splat (i32 31)
  %9 = shl nuw <4 x i32> splat (i32 1), %8
  %10 = and <4 x i32> %broadcast.splat, %9
  %11 = icmp eq <4 x i32> %10, zeroinitializer
  %12 = select <4 x i1> %11, <4 x i8> splat (i8 48), <4 x i8> splat (i8 49)
  %i.g = getelementptr inbounds nuw i8, ptr @s1, i64 %niter
  store <4 x i8> %12, ptr %i.g, align 4, !tbaa !23, !alias.scope !92, !noalias !91
  %indvars.iv.next.1.a = add nuw i64 %niter, 4    ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %niter.ncmp.1 = icmp eq i64 %indvars.iv.next.1.a, %unroll_iter
  br i1 %niter.ncmp.1, label %middle.block, label %.lr.ph.a, !llvm.loop !89

middle.block:                                     ; preds = %.lr.ph.a
  %cmp.n = icmp eq i64 %unroll_iter, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader.a, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader.a ], [ 0, %.lr.ph.preheader ], [ %unroll_iter, %middle.block ] ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader12
  %13 = trunc nuw nsw i64 %indvars.iv.ph to i32
  %14 = lshr i64 %indvars.iv.ph, 5
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %14
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 4
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = and i32 %13, 28
  %19 = shl nuw nsw i32 1, %18
  %20 = and i32 %17, %19
  %.not.prol = icmp eq i32 %20, 0
  %21 = select i1 %.not.prol, i8 48, i8 49
  %22 = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.ph
  store i8 %21, ptr %22, align 4, !tbaa !23
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %._crit_edge.loopexit.unr-lcssa

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph.prol, %.lr.ph.preheader12
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader12 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %23 = add nsw i64 %wide.trip.count, -1
  %lcmp.mod.not.a = icmp eq i64 %indvars.iv.ph, %23
  br i1 %lcmp.mod.not.a, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %indvars.iv.epil.init = phi i64 [ %indvars.iv.next.1, %.lr.ph.epil.preheader ], [ %indvars.iv.unr, %._crit_edge.loopexit.unr-lcssa ] ; 5 uses
  %24 = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %25 = lshr i64 %indvars.iv.epil.init, 5
  %26 = and i64 %25, 134217727
  %27 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %26
  %28 = getelementptr inbounds nuw i8, ptr %27, i64 4
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = and i32 %24, 31
  %31 = shl nuw i32 1, %30
  %32 = and i32 %29, %31
  %.not = icmp eq i32 %32, 0
  %33 = select i1 %.not, i8 48, i8 49
  %34 = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.epil.init
  store i8 %33, ptr %34, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.epil.init, 1 ; 3 uses
  %i.h = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.i = lshr i64 %indvars.iv.next, 5
  %i.j = and i64 %i.i, 134217727
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = and i32 %i.h, 31
  %i.o = shl nuw i32 1, %i.n
  %i.p = and i32 %i.m, %i.o
  %.not.epil = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not.epil, i8 48, i8 49
  %i.r = getelementptr inbounds nuw i8, ptr @s1, i64 %indvars.iv.next
  store i8 %i.q, ptr %i.r, align 1, !tbaa !23
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.epil.init, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.epil.preheader, !llvm.loop !90

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader, %middle.block, %bb.a
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds i8, ptr @s1, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !23
  ret ptr @s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @set_adjcnt(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7      ; 2 uses
  %i.b = and i32 %i.a, 1023                       ; 2 uses
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph18.preheader

.lr.ph18.preheader:                               ; preds = %bb.a
  %i.c = shl nuw nsw i32 %i.b, 5
  %i.d = and i32 %i.a, 1023
  %i.e = zext nneg i32 %i.d to i64
  br label %.lr.ph18

.loopexit:                                        ; preds = %bb.c, %.lr.ph18
  %i.f = icmp sgt i64 %indvars.iv23, 1
  br i1 %i.f, label %.lr.ph18, label %._crit_edge

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.loopexit
  %indvars.iv23 = phi i64 [ %i.e, %.lr.ph18.preheader ], [ %indvars.iv.next24, %.loopexit ] ; 3 uses
  %indvars.iv.in = phi i32 [ %i.c, %.lr.ph18.preheader ], [ %indvars.iv, %.loopexit ]
  %indvars.iv = add nsw i32 %indvars.iv.in, -32   ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv23
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 2 uses
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph18
  %i.i = zext i32 %indvars.iv to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv20 = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.next21, %bb.c ] ; 2 uses
  %.016 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.n, %bb.c ] ; 2 uses
  %i.j = and i32 %.016, 1
  %.not13 = icmp eq i32 %i.j, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv20 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = add nsw i32 %i.l, %2
  store i32 %i.m, ptr %i.k, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %i.n = lshr i32 %.016, 1                        ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #24 ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.i, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %._crit_edge
  %i.s = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph41, %._crit_edge38
  %.02739 = phi ptr [ %i.k, %.lr.ph41 ], [ %i.ah, %._crit_edge38 ] ; 3 uses
  %i.t = load i32, ptr %.02739, align 4, !tbaa !7 ; 2 uses
  %i.u = and i32 %i.t, 1023                       ; 2 uses
  %.not43 = icmp eq i32 %i.u, 0
  br i1 %.not43, label %._crit_edge38, label %.lr.ph37.preheader

.lr.ph37.preheader:                               ; preds = %bb.b
  %i.v = shl nuw nsw i32 %i.u, 5
  %i.w = and i32 %i.t, 1023
  %i.x = zext nneg i32 %i.w to i64
  br label %.lr.ph37

.loopexit:                                        ; preds = %bb.d, %.lr.ph37
  %i.y = icmp sgt i64 %indvars.iv48, 1
  br i1 %i.y, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.loopexit
  %indvars.iv48 = phi i64 [ %i.x, %.lr.ph37.preheader ], [ %indvars.iv.next49, %.loopexit ] ; 3 uses
  %indvars.iv.in = phi i32 [ %i.v, %.lr.ph37.preheader ], [ %indvars.iv, %.loopexit ]
  %indvars.iv = add nsw i32 %indvars.iv.in, -32   ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.02739, i64 %indvars.iv48
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7   ; 2 uses
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph34.preheader

.lr.ph34.preheader:                               ; preds = %.lr.ph37
  %i.ab = zext i32 %indvars.iv to i64
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %.lr.ph34.preheader, %bb.d
  %indvars.iv45 = phi i64 [ %i.ab, %.lr.ph34.preheader ], [ %indvars.iv.next46, %bb.d ] ; 2 uses
  %.032 = phi i32 [ %i.aa, %.lr.ph34.preheader ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ac = and i32 %.032, 1
  %.not28 = icmp eq i32 %i.ac, 0
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph34
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv45 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !7
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph34, %bb.c
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %i.ag = lshr i32 %.032, 1                       ; 2 uses
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %.loopexit, label %.lr.ph34

._crit_edge38:                                    ; preds = %.loopexit, %bb.b
  %i.ah = getelementptr inbounds [4 x i8], ptr %.02739, i64 %i.s ; 2 uses
  %i.ai = icmp ult ptr %i.ah, %i.q
  br i1 %i.ai, label %bb.b, label %._crit_edge42

._crit_edge42:                                    ; preds = %._crit_edge38, %._crit_edge
  ret ptr %i.e
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define dso_local noalias noundef ptr @sf_count_restricted(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #24 ; 3 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.h = zext nneg i32 %i.f to i64
  %i.i = shl nuw nsw i64 %i.h, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.e, i8 0, i64 %i.i, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !17
  %i.n = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx = shl nsw i64 %i.p, 2
  %i.q = getelementptr inbounds i8, ptr %i.k, i64 %.idx
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %._crit_edge
  %i.s = sext i32 %i.n to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph44, %._crit_edge41
  %.03142 = phi ptr [ %i.k, %.lr.ph44 ], [ %i.bm, %._crit_edge41 ] ; 4 uses
  %i.t = load i32, ptr %.03142, align 4, !tbaa !7 ; 2 uses
  %i.u = and i32 %i.t, 1023                       ; 3 uses
  %.not14.i = icmp eq i32 %i.u, 0
  br i1 %.not14.i, label %._crit_edge41, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
end_hunk_0
begin_hunk_1_@sf_compress:bb.a
bb.g:                                             ; preds = %bb.f
  %i.ci = add nsw i32 %.02635, 1                  ; 2 uses
  %i.cj = and i32 %.02635, 31
  %i.ck = shl nuw i32 1, %i.cj
  %i.cl = load ptr, ptr %i.bq, align 8, !tbaa !16 ; 2 uses
  %i.cm = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.cn = mul nsw i32 %i.cm, %i.bm                ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %.idx.i = shl nsw i64 %i.co, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %.idx.i
  %i.cq = icmp sgt i32 %i.cn, 0
  br i1 %i.cq, label %.lr.ph.i30, label %sf_copy_col.exit

.lr.ph.i30:                                       ; preds = %bb.g
  %i.cr = ashr i32 %.02635, 5
  %i.cs = sext i32 %i.cr to i64
  %i.ct = sext i32 %i.cm to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i30
  %.023.i = phi ptr [ %i.av, %.lr.ph.i30 ], [ %i.de, %bb.j ] ; 2 uses
  %.02122.i = phi ptr [ %i.cl, %.lr.ph.i30 ], [ %i.df, %bb.j ] ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %.02122.i, i64 %i.cb
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !7
  %i.cx = and i32 %i.cw, %i.cg
  %.not.i31 = icmp eq i32 %i.cx, 0
  br i1 %.not.i31, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cy = getelementptr [4 x i8], ptr %.023.i, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 4      ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !7
  %i.db = or i32 %i.da, %i.ck
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dc = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %.023.i, i64 %i.dd
  %i.df = getelementptr inbounds [4 x i8], ptr %.02122.i, i64 %i.ct ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.cp
  br i1 %i.dg, label %bb.h, label %sf_copy_col.exit

sf_copy_col.exit:                                 ; preds = %bb.j, %bb.g, %bb.f
  %.1 = phi i32 [ %.02635, %bb.f ], [ %i.ci, %bb.g ], [ %i.ci, %bb.j ]
  %i.dh = add nuw nsw i32 %.12834, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.dh, %i.bo
  br i1 %exitcond.not, label %._crit_edge, label %bb.f

._crit_edge:                                      ; preds = %sf_copy_col.exit, %.preheader
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !16 ; 2 uses
  %.not.i32 = icmp eq ptr %i.dj, null
  br i1 %.not.i32, label %sf_free.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.dj) #25
  store ptr null, ptr %i.di, align 8, !tbaa !16
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge, %bb.k
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aj, ptr %i.dk, align 8, !tbaa !21
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !20
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_transpose(ptr noundef %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !15   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !17   ; 3 uses
  %i.e = load ptr, ptr @set_family_garbage, align 8, !tbaa !20 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21   ; 2 uses
  store ptr %i.i, ptr @set_family_garbage, align 8, !tbaa !20
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ null, %bb.b ], [ %i.i, %bb.c ]
  %.0.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.c ] ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 4 ; 2 uses
  store i32 %i.d, ptr %i.k, align 4, !tbaa !15
  %i.l = icmp slt i32 %i.d, 33
  %i.m = add nsw i32 %i.d, -1
  %i.n = lshr i32 %i.m, 5
  %i.o = add nuw nsw i32 %i.n, 2
  %i.p = select i1 %i.l, i32 2, i32 %i.o          ; 2 uses
  store i32 %i.p, ptr %.0.i, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.q, align 8, !tbaa !22
  %i.r = sext i32 %i.b to i64
  %i.s = zext nneg i32 %i.p to i64
  %i.t = shl nsw i64 %i.r, 2
  %i.u = mul nsw i64 %i.t, %i.s
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !19
  %i.z = load i32, ptr %i.a, align 4, !tbaa !15   ; 6 uses
  store i32 %i.z, ptr %i.x, align 4, !tbaa !17
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge.thread

.lr.ph.preheader:                                 ; preds = %sf_new.exit
  %.pre = load i32, ptr %i.k, align 4, !tbaa !15  ; 2 uses
  %.pre50 = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.ab = icmp slt i32 %.pre, 33
  %i.ac = add nsw i32 %.pre, -1
  %i.ad = lshr i32 %i.ac, 5
  %i.ae = add nuw nsw i32 %i.ad, 1
  %i.af = select i1 %i.ab, i32 1, i32 %i.ae       ; 11 uses
  %i.ag = shl nuw nsw i32 %i.af, 2
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = add nsw i32 %i.af, -1
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2                ; 2 uses
  %i.al = sub nsw i64 %i.ah, %i.ak                ; 9 uses
  %i.am = add nuw nsw i64 %i.ak, 4                ; 9 uses
  %i.an = sext i32 %.pre50 to i64                 ; 9 uses
  %xtraiter = and i32 %i.z, 7                     ; 3 uses
  %i.ao = icmp ult i32 %i.z, 8
  br i1 %i.ao, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.z, 2147483640
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.03740 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.aw, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  store i32 %i.af, ptr %.03740, align 4, !tbaa !7
  %scevgep = getelementptr i8, ptr %.03740, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.ap = getelementptr inbounds [4 x i8], ptr %.03740, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ap, align 4, !tbaa !7
  %scevgep.1 = getelementptr i8, ptr %i.ap, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.1, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.aq, align 4, !tbaa !7
  %scevgep.2 = getelementptr i8, ptr %i.aq, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.2, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.ar, align 4, !tbaa !7
  %scevgep.3 = getelementptr i8, ptr %i.ar, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.3, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ar, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.as, align 4, !tbaa !7
  %scevgep.4 = getelementptr i8, ptr %i.as, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.4, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.at = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.at, align 4, !tbaa !7
  %scevgep.5 = getelementptr i8, ptr %i.at, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.5, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.au, align 4, !tbaa !7
  %scevgep.6 = getelementptr i8, ptr %i.au, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.6, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.an ; 3 uses
  store i32 %i.af, ptr %i.av, align 4, !tbaa !7
  %scevgep.7 = getelementptr i8, ptr %i.av, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.7, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.an ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7.not = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.unr-lcssa, label %.lr.ph

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.03740.epil.init = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.aw, %._crit_edge.unr-lcssa ]
  %lcmp.mod56 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod56)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.03740.epil = phi ptr [ %i.ax, %.lr.ph.epil ], [ %.03740.epil.init, %.lr.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  store i32 %i.af, ptr %.03740.epil, align 4, !tbaa !7
  %scevgep.epil = getelementptr i8, ptr %.03740.epil, i64 %i.al
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.epil, i8 0, i64 %i.am, i1 false), !tbaa !7
  %i.ax = getelementptr inbounds [4 x i8], ptr %.03740.epil, i64 %i.an
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph.epil, %._crit_edge.unr-lcssa
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !16 ; 3 uses
  %i.ba = load i32, ptr %i.c, align 4, !tbaa !17  ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge47.split

._crit_edge.thread:                               ; preds = %sf_new.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !16
  br label %._crit_edge47.split

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.be = load i32, ptr %0, align 8, !tbaa !18
  %i.bf = sext i32 %i.be to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge44
  %.146 = phi i32 [ %i.ca, %._crit_edge44 ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %.13845 = phi ptr [ %i.bz, %._crit_edge44 ], [ %i.az, %.preheader.lr.ph ] ; 2 uses
  %i.bg = and i32 %.146, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = lshr i32 %.146, 5
  %i.bj = zext nneg i32 %i.bi to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.v, i64 %i.bj
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.f
  %.03542 = phi i32 [ 0, %.preheader ], [ %i.by, %bb.f ] ; 4 uses
  %i.bk = lshr i32 %.03542, 5
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %.13845, i64 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bp = and i32 %.03542, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = and i32 %i.bo, %i.bq
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bs = load i32, ptr %.0.i, align 8, !tbaa !18
  %i.bt = mul nsw i32 %i.bs, %.03542
  %i.bu = sext i32 %i.bt to i64
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.bu
  %i.bv = getelementptr inbounds nuw i8, ptr %gep, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !7
  %i.bx = or i32 %i.bw, %i.bh
  store i32 %i.bx, ptr %i.bv, align 4, !tbaa !7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.by = add nuw nsw i32 %.03542, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.by, %i.z
  br i1 %exitcond.not, label %._crit_edge44, label %bb.d

._crit_edge44:                                    ; preds = %bb.f
  %i.bz = getelementptr inbounds [4 x i8], ptr %.13845, i64 %i.bf
  %i.ca = add nuw nsw i32 %.146, 1                ; 2 uses
  %exitcond49.not = icmp eq i32 %i.ca, %i.ba
  br i1 %exitcond49.not, label %._crit_edge47.split, label %.preheader

._crit_edge47.split:                              ; preds = %._crit_edge44, %._crit_edge.thread, %._crit_edge
  %i.cb = phi ptr [ %i.bd, %._crit_edge.thread ], [ %i.az, %._crit_edge ], [ %i.az, %._crit_edge44 ] ; 2 uses
  %i.cc = phi ptr [ %i.bc, %._crit_edge.thread ], [ %i.ay, %._crit_edge ], [ %i.ay, %._crit_edge44 ]
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %sf_free.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge47.split
  tail call void @free(ptr noundef nonnull %i.cb) #25
  store ptr null, ptr %i.cc, align 8, !tbaa !16
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge47.split, %bb.g
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.j, ptr %i.cd, align 8, !tbaa !21
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !20
  ret ptr %.0.i
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @sf_permute(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr @set_family_garbage, align 8, !tbaa !20 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #24
  br label %sf_new.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  store ptr %i.g, ptr @set_family_garbage, align 8, !tbaa !20
  br label %sf_new.exit

sf_new.exit:                                      ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ null, %bb.b ], [ %i.g, %bb.c ]
  %.0.i = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.c ] ; 8 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %2, ptr %i.i, align 4, !tbaa !15
  %i.j = icmp slt i32 %2, 33                      ; 2 uses
  %i.k = add nsw i32 %2, -1
  %i.l = lshr i32 %i.k, 5                         ; 2 uses
  %i.m = add nuw nsw i32 %i.l, 2
  %i.n = select i1 %i.j, i32 2, i32 %i.m          ; 2 uses
  store i32 %i.n, ptr %.0.i, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.b, ptr %i.o, align 8, !tbaa !22
  %i.p = sext i32 %i.b to i64
  %i.q = shl nuw nsw i32 %i.n, 2
  %i.r = zext nneg i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.p
  %i.t = tail call noalias ptr @malloc(i64 noundef %i.s) #24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  store ptr %i.t, ptr %i.u, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 12 ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store i32 0, ptr %i.w, align 8, !tbaa !19
  %i.x = load i32, ptr %i.a, align 4, !tbaa !17   ; 3 uses
  store i32 %i.x, ptr %i.v, align 4, !tbaa !17
  %i.y = load i32, ptr %.0.i, align 8, !tbaa !18  ; 3 uses
  %i.z = mul nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %.idx = shl nuw nsw i64 %i.aa, 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %sf_new.exit
  %i.ad = add nuw nsw i32 %i.l, 1
  %i.ae = select i1 %i.j, i32 1, i32 %i.ad        ; 3 uses
  %i.af = shl nuw nsw i32 %i.ae, 2
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = add nsw i32 %i.ae, -1
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 2 uses
  %i.ak = sub nsw i64 %i.ag, %i.aj
  %i.al = add nuw nsw i64 %i.aj, 4
  %i.am = sext i32 %i.y to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.04445 = phi ptr [ %i.t, %.lr.ph ], [ %i.an, %bb.d ] ; 3 uses
  store i32 %i.ae, ptr %.04445, align 4, !tbaa !7
  %scevgep = getelementptr i8, ptr %.04445, i64 %i.ak
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false), !tbaa !7
  %i.an = getelementptr inbounds [4 x i8], ptr %.04445, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ab
  br i1 %i.ao, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %sf_new.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !16 ; 5 uses
  %i.ar = load i32, ptr %0, align 8, !tbaa !18    ; 2 uses
  %i.as = mul nsw i32 %i.ar, %i.x                 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %.idx52 = shl nsw i64 %i.at, 2
  %i.au = getelementptr inbounds i8, ptr %i.aq, i64 %.idx52 ; 2 uses
  %i.av = icmp sgt i32 %i.as, 0
  br i1 %i.av, label %.preheader.lr.ph, label %._crit_edge51

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.aw = icmp sgt i32 %2, 0
  %i.ax = sext i32 %i.ar to i64                   ; 2 uses
  br i1 %i.aw, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.ay = sext i32 %i.y to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge48.us
  %.04350.us = phi ptr [ %i.bs, %._crit_edge48.us ], [ %i.t, %.preheader.us.preheader ] ; 2 uses
  %.149.us = phi ptr [ %i.bt, %._crit_edge48.us ], [ %i.aq, %.preheader.us.preheader ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.g ] ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.bb = ashr i32 %i.ba, 5
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr [4 x i8], ptr %.149.us, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = and i32 %i.ba, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not.us = icmp eq i32 %i.bi, 0
  br i1 %.not.us, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  %i.bk = and i32 %i.bj, 31
  %i.bl = shl nuw i32 1, %i.bk
  %i.bm = lshr i64 %indvars.iv, 5
  %i.bn = and i64 %i.bm, 134217727
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.04350.us, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %i.br = or i32 %i.bq, %i.bl
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge48.us, label %bb.e

._crit_edge48.us:                                 ; preds = %bb.g
  %i.bs = getelementptr inbounds [4 x i8], ptr %.04350.us, i64 %i.ay
  %i.bt = getelementptr inbounds [4 x i8], ptr %.149.us, i64 %i.ax ; 2 uses
  %i.bu = icmp ult ptr %i.bt, %i.au
  br i1 %i.bu, label %.preheader.us, label %._crit_edge51

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.149 = phi ptr [ %i.bv, %.preheader ], [ %i.aq, %.preheader.lr.ph ]
  %i.bv = getelementptr inbounds [4 x i8], ptr %.149, i64 %i.ax ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.au
  br i1 %i.bw, label %.preheader, label %._crit_edge51

._crit_edge51:                                    ; preds = %.preheader, %._crit_edge48.us, %._crit_edge
  %.not.i = icmp eq ptr %i.aq, null
  br i1 %.not.i, label %sf_free.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge51
  tail call void @free(ptr noundef nonnull %i.aq) #25
  store ptr null, ptr %i.ap, align 8, !tbaa !16
  br label %sf_free.exit

sf_free.exit:                                     ; preds = %._crit_edge51, %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.bx, align 8, !tbaa !21
  store ptr %0, ptr @set_family_garbage, align 8, !tbaa !20
  ret ptr %.0.i
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(readwrite, argmem: read, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind memory(write, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 int", !11, i64 0}
!13 = !{!"p1 _ZTS10set_family", !11, i64 0}
!14 = !{!"set_family", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !12, i64 24, !13, i64 32}
!15 = !{!14, !6, i64 4}
!16 = !{!14, !12, i64 24}
!17 = !{!14, !6, i64 12}
!18 = !{!14, !6, i64 0}
!19 = !{!14, !6, i64 16}
!20 = !{!13, !13, i64 0}
!21 = !{!14, !13, i64 32}
!22 = !{!14, !6, i64 8}
!23 = !{!5, !5, i64 0}
!24 = !{!"branch_weights", i32 8, i32 24}
!25 = !{!"llvm.loop.peeled.count", i32 1}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !10}
!28 = distinct !{!28, !8}
!29 = distinct !{!29, !8, !9}
!30 = distinct !{!30, !8}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !8}
!33 = distinct !{!33, !8, !9}
!34 = distinct !{!34, !8}
!35 = distinct !{!35, !8, !9}
!36 = distinct !{!36, !8}
!37 = distinct !{!37, !8, !9}
!38 = distinct !{!38, !8}
!39 = distinct !{!39, !8, !9}
!40 = distinct !{!40, !8}
!41 = distinct !{!41, !8, !9}
!42 = distinct !{!42, !8}
!43 = distinct !{!43, !8, !9}
!44 = distinct !{!44, !9, !8}
!45 = distinct !{!45, !8, !9}
!46 = distinct !{!46, !9, !8}
!47 = distinct !{!47, !8, !9}
!48 = distinct !{!48, !10}
!49 = distinct !{!49, !8}
!50 = distinct !{!50, !8, !9}
!51 = distinct !{!51, !10}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8, !9}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !8}
!56 = distinct !{!56, !8, !9}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !8}
!59 = distinct !{!59, !8, !9}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !8}
!62 = distinct !{!62, !8, !9}
!63 = distinct !{!63, !10}
!64 = distinct !{!64, !8}
!65 = distinct !{!65, !8, !9}
!66 = distinct !{!66, !10}
!67 = distinct !{!67, !8}
!68 = distinct !{!68, !8, !9}
!69 = distinct !{!69, !10}
!70 = distinct !{!70, !8}
!71 = distinct !{!71, !8, !9}
!72 = distinct !{!72, !8, !9}
!73 = distinct !{!73, !9, !8}
!74 = distinct !{!74, i1 false, !"LVerDomain"}
!75 = distinct !{!75, !74}
!76 = distinct !{!76, !74}
!77 = distinct !{!77, !8, !9}
!78 = distinct !{!78, !8}
!79 = !{!75}
!80 = !{!76}
!81 = distinct !{!81, !25}
!82 = distinct !{!82, !25}
!83 = distinct !{!83, !8, !9}
!84 = distinct !{!84, !8, !9}
!85 = distinct !{!85, !9, !8}
!86 = distinct !{!86, i1 false, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !8, !9}
!90 = distinct !{!90, !8}
!91 = !{!87}
!92 = !{!88}
!93 = distinct !{!93, !10}
end_hunk_1
