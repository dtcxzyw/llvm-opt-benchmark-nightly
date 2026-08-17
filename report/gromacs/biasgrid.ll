inline.NumInlined: 729
inline.NumDeleted: 389
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN3gmx25linearGridindexToMultiDimERKNS_8BiasGridEiPi:bb.a
  %indvars.iv28.i.ph = phi i64 [ %indvars.iv.i, %iter.check53 ], [ %i.y, %vec.epilog.iter.check55 ], [ %i.ak, %vec.epilog.middle.block64 ]
  %.01721.i.ph = phi i32 [ 1, %iter.check53 ], [ %i.aj, %vec.epilog.iter.check55 ], [ %i.aq, %vec.epilog.middle.block64 ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %middle.block47, %vec.epilog.middle.block64, %.lr.ph26.i
  %.017.lcssa.i = phi i32 [ 1, %.lr.ph26.i ], [ %i.aq, %vec.epilog.middle.block64 ], [ %i.aj, %middle.block47 ], [ %i.aw, %.lr.ph.i ] ; 3 uses
  %i.ar = sdiv i32 %.01923.i, %.017.lcssa.i       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv31.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !29
  %i.at = mul nsw i32 %i.ar, %.017.lcssa.i        ; 0 uses
  %.recomposed = srem i32 %.01923.i, %.017.lcssa.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %i.t
  br i1 %exitcond35.not.i, label %_ZN3gmx26linearArrayIndexToMultiDimEiiPKiPi.exit, label %.lr.ph26.i, !llvm.loop !35

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv28.i = phi i64 [ %indvars.iv.next29.i, %.lr.ph.i ], [ %indvars.iv28.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.01721.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %.01721.i.ph, %.lr.ph.i.preheader ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv28.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = mul nsw i32 %i.av, %.01721.i            ; 2 uses
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next29.i, %i.t
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !44

_ZN3gmx26linearArrayIndexToMultiDimEiiPKiPi.exit: ; preds = %._crit_edge.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %i.e, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !38
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph26.preheader.i, label %.lr.ph, !llvm.loop !45
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZN3gmx26multiDimArrayIndexToLinearEPKiiS1_(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 4 uses
  %xtraiter = and i64 %i.b, 7                     ; 3 uses
  %i.c = icmp ult i32 %1, 8
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.b, 2147483640
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.01013.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ]
  %.01112.epil.init = phi i32 [ 1, %.lr.ph.preheader ], [ %i.bn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod17 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod17)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ]
  %.01013.epil = phi i32 [ %.01013.epil.init, %.lr.ph.epil.preheader ], [ %i.g, %.lr.ph.epil ]
  %.01112.epil = phi i32 [ %.01112.epil.init, %.lr.ph.epil.preheader ], [ %i.j, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %indvars.iv.next.epil = add nsw i64 %indvars.iv.epil, -1 ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.epil
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = mul nsw i32 %i.e, %.01112.epil
  %i.g = add nsw i32 %i.f, %.01013.epil           ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.epil
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29
  %i.j = mul nsw i32 %i.i, %.01112.epil
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !46

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.010.lcssa = phi i32 [ 0, %bb.a ], [ %i.bk, %._crit_edge.loopexit.unr-lcssa ], [ %i.g, %.lr.ph.epil ]
  ret i32 %.010.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 8 uses
  %.01013 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.bk, %.lr.ph ]
  %.01112 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %i.bn, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %i.m = mul nsw i32 %i.l, %.01112
  %i.n = add nsw i32 %i.m, %.01013
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = mul nsw i32 %i.p, %.01112                ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.1
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = mul nsw i32 %i.s, %i.q
  %i.u = add nsw i32 %i.t, %i.n
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %i.q                   ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, -3 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.2
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = mul nsw i32 %i.z, %i.x
  %i.ab = add nsw i32 %i.aa, %i.u
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = mul nsw i32 %i.ad, %i.x                 ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, -4 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.3
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = mul nsw i32 %i.ag, %i.ae
  %i.ai = add nsw i32 %i.ah, %i.ab
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.3
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = mul nsw i32 %i.ak, %i.ae                ; 2 uses
  %indvars.iv.next.4 = add nsw i64 %indvars.iv, -5 ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  %i.ao = mul nsw i32 %i.an, %i.al
  %i.ap = add nsw i32 %i.ao, %i.ai
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !29
  %i.as = mul nsw i32 %i.ar, %i.al                ; 2 uses
  %indvars.iv.next.5 = add nsw i64 %indvars.iv, -6 ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.5
  %i.au = load i32, ptr %i.at, align 4, !tbaa !29
  %i.av = mul nsw i32 %i.au, %i.as
  %i.aw = add nsw i32 %i.av, %i.ap
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.5
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = mul nsw i32 %i.ay, %i.as                ; 2 uses
  %indvars.iv.next.6 = add nsw i64 %indvars.iv, -7 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.6
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !29
  %i.bc = mul nsw i32 %i.bb, %i.az
  %i.bd = add nsw i32 %i.bc, %i.aw
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.6
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29
  %i.bg = mul nsw i32 %i.bf, %i.az                ; 2 uses
  %indvars.iv.next.7 = add nsw i64 %indvars.iv, -8 ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.7
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !29
  %i.bj = mul nsw i32 %i.bi, %i.bg
  %i.bk = add nsw i32 %i.bj, %i.bd                ; 3 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.7
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bn = mul nsw i32 %i.bm, %i.bg                ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7.not = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7.not, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !48
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.i = sdiv exact i64 %i.h, 48                  ; 10 uses
  %.not.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i, label %_ZN3gmx12_GLOBAL__N_125multiDimGridIndexToLinearENS_8ArrayRefIKNS_8GridAxisEEEPKi.exit, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i64 %i.i, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.j = and i64 %i.i, 28
  %n.vec = and i64 %i.i, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.c, <8 x i64> %vec.ind
  %wide.gep4 = getelementptr inbounds nuw [48 x i8], ptr %i.c, <8 x i64> %step.add
  %wide.gep5 = getelementptr inbounds nuw [48 x i8], ptr %i.c, <8 x i64> %step.add.2
  %wide.gep6 = getelementptr inbounds nuw [48 x i8], ptr %i.c, <8 x i64> %step.add.3
  %wide.gep7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4, i64 32
  %wide.gep9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep5, i64 32
  %wide.gep10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep6, i64 32
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep7, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather11 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep8, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather12 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep9, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather13 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep10, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.k, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather11, ptr %i.l, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather12, ptr %i.m, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather13, ptr %i.n, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.j, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec14 = and i64 %i.i, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next21, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep17 = getelementptr inbounds nuw [48 x i8], ptr %i.c, <4 x i64> %vec.ind16
  %wide.gep18 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep17, i64 32
  %wide.masked.gather19 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep18, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index15
  store <4 x i32> %wide.masked.gather19, ptr %i.p, align 16, !tbaa !29
  %index.next20 = add nuw i64 %index15, 4         ; 2 uses
  %vec.ind.next21 = add nuw <4 x i64> %vec.ind16, splat (i64 4)
  %i.q = icmp eq i64 %index.next20, %n.vec14
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !50

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.i, %n.vec14
  br i1 %cmp.n22, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ]
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %i.r = trunc i64 %i.i to i32
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %_ZN3gmx12_GLOBAL__N_125multiDimGridIndexToLinearENS_8ArrayRefIKNS_8GridAxisEEEPKi.exit

.lr.ph.preheader.i.i:                             ; preds = %._crit_edge.i
  %i.t = and i64 %i.i, 2147483647
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.t, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %.01013.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.x, %.lr.ph.i.i ]
  %.01112.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i ], [ %i.aa, %.lr.ph.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.i
  %i.v = load i32, ptr %i.u, align 4, !tbaa !29
  %i.w = mul nsw i32 %i.v, %.01112.i.i
  %i.x = add nsw i32 %i.w, %.01013.i.i            ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !29
  %i.aa = mul nsw i32 %i.z, %.01112.i.i
  %i.ab = icmp samesign ugt i64 %indvars.iv.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i, label %_ZN3gmx12_GLOBAL__N_125multiDimGridIndexToLinearENS_8ArrayRefIKNS_8GridAxisEEEPKi.exit, !llvm.loop !48

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.07.i = phi i64 [ %i.ag, %.lr.ph.i ], [ %.07.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.c, i64 %.07.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !29
  %i.ag = add nuw i64 %.07.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ag, %i.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !51

_ZN3gmx12_GLOBAL__N_125multiDimGridIndexToLinearENS_8ArrayRefIKNS_8GridAxisEEEPKi.exit: ; preds = %.lr.ph.i.i, %bb.a, %._crit_edge.i
  %.010.lcssa.i.i = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.a ], [ %i.x, %.lr.ph.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i32 %.010.lcssa.i.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN3gmx21advancePointInSubgridERKNS_8BiasGridEPKiS4_Pi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = load i32, ptr %3, align 4, !tbaa !29     ; 2 uses
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = sdiv exact i64 %i.j, 48                  ; 2 uses
  %i.l = trunc i64 %i.k to i32
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPi.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.n = zext nneg i32 %i.b to i64
  %i.o = load ptr, ptr %0, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw [72 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %wide.trip.count.i = and i64 %i.k, 2147483647
  br label %bb.d

bb.c:                                             ; preds = %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPi.exit, label %bb.d, !llvm.loop !52

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 6 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !29
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !29
  %i.v = sub nsw i32 %i.s, %i.u                   ; 5 uses
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !53   ; 4 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i.i = icmp slt i32 %i.v, %i.y
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = sub nsw i32 %i.v, %i.y
  br label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i

bb.g:                                             ; preds = %bb.e
  %i.ab = icmp slt i32 %i.v, 0
  %i.ac = select i1 %i.ab, i32 %i.y, i32 0
  %spec.select.i.i = add nsw i32 %i.ac, %i.v
  br label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i

_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i: ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi i32 [ %i.v, %bb.d ], [ %i.aa, %bb.f ], [ %spec.select.i.i, %bb.g ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %.0.i.i, ptr %i.ad, align 4, !tbaa !29
  %i.ae = icmp sgt i32 %.0.i.i, -1
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !29
  %i.ah = icmp slt i32 %.0.i.i, %i.ag
  br i1 %i.ah, label %bb.c, label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPiENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 381) #28
  unreachable

bb.j:                                             ; preds = %bb.a
  %.val16 = load ptr, ptr %i.d, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.ai, align 8
  %i.aj = call fastcc noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi(ptr %.val16, ptr %.val17, ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %3)
  br i1 %i.aj, label %_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread, label %_ZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPi.exit

_ZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPi.exit: ; preds = %bb.c, %bb.b, %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.i18._crit_edge, %_ZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPi.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !37 ; 2 uses
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 48                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = icmp sgt i32 %i.as, 0
  br i1 %i.at, label %.lr.ph.preheader.i, label %_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.au = and i64 %i.ar, 2147483647               ; 2 uses
  %indvars.iv.next.i2026 = add nsw i64 %i.au, -1  ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i2026 ; 3 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !29 ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i2026
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !29
  %i.az = add nsw i32 %i.ay, -1
  %i.ba = icmp slt i32 %i.aw, %i.az
  br i1 %i.ba, label %.lr.ph.i18._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.i
  %i.bb = icmp samesign ugt i64 %i.au, 1
  br i1 %i.bb, label %.lr.ph.i18, label %_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread

.lr.ph:                                           ; preds = %.lr.ph.i18
  %i.bc = icmp samesign ugt i64 %indvars.iv.next.i202844, 1
  br i1 %i.bc, label %.lr.ph.i18, label %_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread

.lr.ph.i18:                                       ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv.next.i202844 = phi i64 [ %indvars.iv.next.i20, %.lr.ph ], [ %indvars.iv.next.i2026, %.lr.ph.preheader ] ; 2 uses
  %i.bd = phi ptr [ %i.be, %.lr.ph ], [ %i.av, %.lr.ph.preheader ]
  store i32 0, ptr %i.bd, align 4, !tbaa !29
  %indvars.iv.next.i20 = add nsw i64 %indvars.iv.next.i202844, -1 ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i20 ; 3 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !29 ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.i20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !29
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = icmp slt i32 %i.bf, %i.bi
  br i1 %i.bj, label %.lr.ph.i18._crit_edge, label %.lr.ph

.lr.ph.i18._crit_edge:                            ; preds = %.lr.ph.i18, %.lr.ph.preheader.i
  %.lcssa24 = phi ptr [ %i.av, %.lr.ph.preheader.i ], [ %i.be, %.lr.ph.i18 ]
  %.lcssa = phi i32 [ %i.aw, %.lr.ph.preheader.i ], [ %i.bf, %.lr.ph.i18 ]
  %i.bk = add nsw i32 %.lcssa, 1
  store i32 %i.bk, ptr %.lcssa24, align 4, !tbaa !29
  %i.bl = call fastcc noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi(ptr %i.an, ptr %i.am, ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %3)
  br i1 %i.bl, label %_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread, label %bb.k, !llvm.loop !54

_ZN3gmx12_GLOBAL__N_119stepInMultiDimArrayEiPKiPi.exit.thread: ; preds = %bb.k, %.lr.ph.i18._crit_edge, %.lr.ph.preheader, %.lr.ph, %bb.j
  %.0 = phi i1 [ true, %bb.j ], [ false, %.lr.ph ], [ true, %.lr.ph.i18._crit_edge ], [ false, %bb.k ], [ false, %.lr.ph.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc noundef zeroext i1 @_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi(ptr %.24.val, ptr %.32.val, ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = ptrtoint ptr %.32.val to i64
  %i.d = ptrtoint ptr %.24.val to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 48                  ; 11 uses
  %i.g = trunc i64 %i.f to i32                    ; 2 uses
  %.not529 = icmp slt i32 %i.g, 1
  br i1 %.not529, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.f, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge54
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.critedge54 ] ; 6 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.i = load i32, ptr %i.h, align 4, !tbaa !29
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !29
  %i.l = add nsw i32 %i.k, %i.i                   ; 5 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !29
  %i.n = icmp slt i32 %i.l, 0
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %.24.val, i64 %indvars.iv ; 4 uses
  br i1 %i.n, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i32, ptr %i.p, align 8, !tbaa !38
  %.not = icmp slt i32 %i.l, %i.q
  br i1 %.not, label %.critedge54, label %.thread

bb.c:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !18
  %i.t = fcmp ogt double %i.s, 0.000000e+00
  br i1 %i.t, label %bb.d, label %.loopexit

.thread:                                          ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %.24.val, i64 %indvars.iv ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load double, ptr %i.v, align 8, !tbaa !18
  %i.x = fcmp ogt double %i.w, 0.000000e+00
  br i1 %i.x, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.z = load i32, ptr %i.y, align 4, !tbaa !53
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !38
  %i.ac = add i32 %i.z, %i.l                      ; 2 uses
  %i.ad = sub i32 %i.ac, %i.ab
  %i.ae = icmp ugt i32 %i.ad, -2147483648
  br i1 %i.ae, label %.critedge54.sink.split, label %.loopexit

bb.e:                                             ; preds = %.thread
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 36
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !53
  %.neg1 = add nuw i32 %i.l, 1
  %i.ah = sub i32 %.neg1, %i.ag                   ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.aj = add nsw i32 %i.ah, -1
  br label %.critedge54.sink.split

.critedge54.sink.split:                           ; preds = %bb.d, %bb.f
  %.sink = phi i32 [ %i.aj, %bb.f ], [ %i.ac, %bb.d ]
  store i32 %.sink, ptr %i.m, align 4, !tbaa !29
  br label %.critedge54

.critedge54:                                      ; preds = %.critedge54.sink.split, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !55

.critedge:                                        ; preds = %.critedge54, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.not.i.i = icmp eq ptr %.32.val, %.24.val
  br i1 %.not.i.i, label %_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit, label %iter.check

iter.check:                                       ; preds = %.critedge
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check19 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ak = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %.24.val, <8 x i64> %vec.ind
  %wide.gep20 = getelementptr inbounds nuw [48 x i8], ptr %.24.val, <8 x i64> %step.add
  %wide.gep21 = getelementptr inbounds nuw [48 x i8], ptr %.24.val, <8 x i64> %step.add.2
  %wide.gep22 = getelementptr inbounds nuw [48 x i8], ptr %.24.val, <8 x i64> %step.add.3
  %wide.gep23 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep24 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep20, i64 32
  %wide.gep25 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep21, i64 32
  %wide.gep26 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep22, i64 32
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep23, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather27 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep24, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather28 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep25, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather29 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep26, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.al, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather27, ptr %i.am, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather28, ptr %i.an, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather29, ptr %i.ao, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !56

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ak, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec30 = and i64 %i.f, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index31 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next36, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind32 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next37, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep33 = getelementptr inbounds nuw [48 x i8], ptr %.24.val, <4 x i64> %vec.ind32
  %wide.gep34 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep33, i64 32
  %wide.masked.gather35 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep34, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index31
  store <4 x i32> %wide.masked.gather35, ptr %i.aq, align 16, !tbaa !29
  %index.next36 = add nuw i64 %index31, 4         ; 2 uses
  %vec.ind.next37 = add nuw <4 x i64> %vec.ind32, splat (i64 4)
  %i.ar = icmp eq i64 %index.next36, %n.vec30
  br i1 %i.ar, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !57

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n38 = icmp eq i64 %i.f, %n.vec30
  br i1 %cmp.n38, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec30, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.as = icmp sgt i32 %i.g, 0
  br i1 %i.as, label %.lr.ph.preheader.i.i.i, label %_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge.i.i
  %i.at = and i64 %i.f, 2147483647
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.at, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.01013.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.ax, %.lr.ph.i.i.i ]
  %.01112.i.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.i ], [ %i.ba, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.av = load i32, ptr %i.au, align 4, !tbaa !29
  %i.aw = mul nsw i32 %i.av, %.01112.i.i.i
  %i.ax = add nsw i32 %i.aw, %.01013.i.i.i        ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !29
  %i.ba = mul nsw i32 %i.az, %.01112.i.i.i
  %i.bb = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i, label %_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.bg, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [48 x i8], ptr %.24.val, i64 %.07.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !38
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i.i
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !29
  %i.bg = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bg, %i.f
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !58

_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit: ; preds = %.lr.ph.i.i.i, %.critedge, %._crit_edge.i.i
  %.010.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ 0, %.critedge ], [ %i.ax, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i32 %.010.lcssa.i.i.i, ptr %2, align 4, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.d, %.thread, %_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit
  %.not524 = phi i1 [ true, %_ZN3gmx25multiDimGridIndexToLinearERKNS_8BiasGridEPKi.exit ], [ false, %.thread ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i1 %.not524
}

; Function Attrs: noreturn
declare void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK3gmx8BiasGrid6coversEPKd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 48
  br label %.lr.ph.i

bb.b:                                             ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i
  %i.j = add nuw i64 %.01319.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.j, %i.i
  br i1 %exitcond.not.i, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit, label %.lr.ph.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.01319.i = phi i64 [ %i.j, %bb.b ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.k = getelementptr inbounds [48 x i8], ptr %i.b, i64 %.01319.i ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load double, ptr %i.l, align 8, !tbaa !60 ; 2 uses
  %i.n = fcmp ogt double %i.m, 0.000000e+00
  br i1 %i.n, label %bb.c, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = load double, ptr %i.k, align 8, !tbaa !61
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01319.i
  %i.q = load double, ptr %i.p, align 8, !tbaa !13
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.s = load double, ptr %i.r, align 8, !tbaa !18 ; 4 uses
  %i.t = fsub double %i.q, %i.o                   ; 6 uses
  %i.u = fcmp ogt double %i.s, 0.000000e+00
  br i1 %i.u, label %bb.d, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.v = fmul nnan double %i.s, 5.000000e-01      ; 2 uses
  %i.w = fcmp ogt double %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = fsub double %i.t, %i.s
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.y = fneg double %i.v
  %i.z = fcmp olt double %i.t, %i.y
  br i1 %i.z, label %bb.g, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = fadd double %i.t, %i.s
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.0.i.i.i = phi double [ %i.t, %bb.c ], [ %i.x, %bb.e ], [ %i.aa, %bb.g ], [ %i.t, %bb.f ]
  %i.ab = fdiv double %.0.i.i.i, %i.m
  %i.ac = tail call double @llvm.rint.f64(double %i.ab)
  %i.ad = fptosi double %i.ac to i32              ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 36
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !53 ; 4 uses
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i
  %.not.i.i.i = icmp sgt i32 %i.af, %i.ad
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = sub nsw i32 %i.ad, %i.af
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ai = icmp slt i32 %i.ad, 0
  %i.aj = select i1 %i.ai, i32 %i.af, i32 0
  %spec.select.i.i.i = add nsw i32 %i.aj, %i.ad
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i: ; preds = %bb.j, %bb.i, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i
  %.0.i.i = phi i32 [ %spec.select.i.i.i, %bb.j ], [ %i.ad, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i ], [ %i.ah, %bb.i ] ; 2 uses
  %i.ak = icmp sgt i32 %.0.i.i, -1
  br i1 %i.ak, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i: ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, %.lr.ph.i
  %.0.i18.i = phi i32 [ %.0.i.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i ], [ 0, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !38
  %i.an = icmp slt i32 %.0.i18.i, %i.am
  br i1 %i.an, label %bb.b, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit: ; preds = %bb.b, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i, %bb.a
  %.lcssa.i = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i ], [ false, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.rint.f64(double) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 8589934592) i64 @_ZNK3gmx8BiasGrid15lambdaAxisIndexEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %storemerge8 = phi i64 [ %i.m, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %storemerge8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !22, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = add nuw i64 %storemerge8, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !62

bb.c:                                             ; preds = %.lr.ph
  %i.n = and i64 %storemerge8, 4294967295
  %i.o = or disjoint i64 %i.n, 4294967296
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.2.1 = phi i64 [ %i.o, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i64 %.sroa.2.1
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK3gmx8BiasGrid18numFepLambdaStatesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !37   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %.not = icmp eq ptr %i.c, %i.d
  br i1 %.not, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 48
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.i = add nuw i64 %.0610, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %i.h
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !63

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.0610 = phi i64 [ %i.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.0610 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i8, ptr %i.k, align 8, !tbaa !22, !range !23, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %i.p = phi i32 [ %i.o, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i32 %i.p
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483648, 2147483647) i32 @_ZNK3gmx8GridAxis12nearestIndexEd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(41) %0, double noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !60 ; 2 uses
  %i.c = fcmp ogt double %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = load double, ptr %0, align 8, !tbaa !61
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !18 ; 5 uses
  %i.g = fsub double %1, %i.d                     ; 6 uses
  %i.h = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.h, label %bb.c, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = fmul nnan double %i.f, 5.000000e-01      ; 2 uses
  %i.j = fcmp ogt double %i.g, %i.i
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = fsub double %i.g, %i.f
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i

bb.e:                                             ; preds = %bb.c
  %i.l = fneg double %i.i
  %i.m = fcmp olt double %i.g, %i.l
  br i1 %i.m, label %bb.f, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i

bb.f:                                             ; preds = %bb.e
  %i.n = fadd double %i.g, %i.f
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i

_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i: ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.0.i.i = phi double [ %i.g, %bb.b ], [ %i.k, %bb.d ], [ %i.n, %bb.f ], [ %i.g, %bb.e ]
  %i.o = fdiv double %.0.i.i, %i.b
  %i.p = tail call double @llvm.rint.f64(double %i.o)
  %i.q = fptosi double %i.p to i32                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.s = load i32, ptr %i.r, align 4, !tbaa !53   ; 4 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit, label %bb.g

bb.g:                                             ; preds = %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i
  %.not.i.i = icmp sgt i32 %i.s, %i.q
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = sub nsw i32 %i.q, %i.s
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit

bb.i:                                             ; preds = %bb.g
  %i.v = icmp slt i32 %i.q, 0
  %i.w = select i1 %i.v, i32 %i.s, i32 0
  %spec.select.i.i = add nsw i32 %i.w, %i.q
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit: ; preds = %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i, %bb.h, %bb.i
  %.0.i = phi i32 [ %spec.select.i.i, %bb.i ], [ %i.q, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i ], [ %i.u, %bb.h ] ; 2 uses
  %i.x = icmp slt i32 %.0.i, 0
  br i1 %i.x, label %bb.j, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread: ; preds = %bb.a, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit
  %.0.i13 = phi i32 [ %.0.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit ], [ 0, %bb.a ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !38
  %.not = icmp slt i32 %.0.i13, %i.z
  br i1 %.not, label %bb.o, label %.thread

bb.j:                                             ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit
  %i.aa = fcmp ogt double %i.f, 0.000000e+00
  br i1 %i.aa, label %bb.l, label %bb.o

.thread:                                          ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load double, ptr %.phi.trans.insert, align 8, !tbaa !18
  %i.ab = fcmp ogt double %.pre, 0.000000e+00
  br i1 %i.ab, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !53 ; 2 uses
  %i.ae = icmp slt i32 %.0.i13, %i.ad
  br i1 %i.ae, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx8GridAxis12nearestIndexEdENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 588) #28
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !38
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  %i.ai = sub nsw i32 %.0.i13, %i.ah
  %i.aj = sub nuw nsw i32 %i.ad, %.0.i13
  %i.ak = icmp slt i32 %i.aj, %i.ai
  %spec.select = select i1 %i.ak, i32 0, i32 %i.ah
  br label %bb.o

bb.n:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load i32, ptr %i.al, align 8, !tbaa !38
  %i.an = add nsw i32 %i.am, -1
  br label %bb.o

bb.o:                                             ; preds = %bb.j, %bb.n, %bb.m, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread
  %.0 = phi i32 [ %spec.select, %bb.m ], [ %.0.i13, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread ], [ %i.an, %bb.n ], [ 0, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZNK3gmx8BiasGrid12nearestIndexEPKd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.j = sdiv exact i64 %i.i, 48                  ; 11 uses
  %.not.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph.i

._crit_edge.thread.i:                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  br label %_ZN3gmxL21getNearestIndexInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

iter.check:                                       ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check3, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 28
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.d, <8 x i64> %vec.ind
  %wide.gep4 = getelementptr inbounds nuw [48 x i8], ptr %i.d, <8 x i64> %step.add
  %wide.gep5 = getelementptr inbounds nuw [48 x i8], ptr %i.d, <8 x i64> %step.add.2
  %wide.gep6 = getelementptr inbounds nuw [48 x i8], ptr %i.d, <8 x i64> %step.add.3
  %wide.gep7 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep8 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep4, i64 32
  %wide.gep9 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep5, i64 32
  %wide.gep10 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep6, i64 32
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep7, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather11 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep8, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather12 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep9, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather13 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep10, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.l, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather11, ptr %i.m, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather12, ptr %i.n, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather13, ptr %i.o, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec14 = and i64 %i.j, -4                     ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind16 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next21, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep17 = getelementptr inbounds nuw [48 x i8], ptr %i.d, <4 x i64> %vec.ind16
  %wide.gep18 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep17, i64 32
  %wide.masked.gather19 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep18, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index15
  store <4 x i32> %wide.masked.gather19, ptr %i.q, align 16, !tbaa !29
  %index.next20 = add nuw i64 %index15, 4         ; 2 uses
  %vec.ind.next21 = add nuw <4 x i64> %vec.ind16, splat (i64 4)
  %i.r = icmp eq i64 %index.next20, %n.vec14
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !65

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.j, %n.vec14
  br i1 %cmp.n22, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %i.s = trunc i64 %i.j to i32
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i, label %_ZN3gmxL21getNearestIndexInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

.lr.ph.preheader.i.i.i:                           ; preds = %._crit_edge.i.i
  %i.u = and i64 %i.j, 2147483647
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.u, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.01013.i.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i.i ], [ %i.y, %.lr.ph.i.i.i ]
  %.01112.i.i.i = phi i32 [ 1, %.lr.ph.preheader.i.i.i ], [ %i.ab, %.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !29
  %i.x = mul nsw i32 %i.w, %.01112.i.i.i
  %i.y = add nsw i32 %i.x, %.01013.i.i.i          ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29
  %i.ab = mul nsw i32 %i.aa, %.01112.i.i.i
  %i.ac = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.ac, label %.lr.ph.i.i.i, label %_ZN3gmxL21getNearestIndexInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.ah, %.lr.ph.i.i ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %.07.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !38
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !29
  %i.ah = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ah, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !66

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i64 [ %i.an, %.lr.ph.i ], [ 0, %bb.a ] ; 4 uses
  %i.ai = getelementptr inbounds [48 x i8], ptr %i.d, i64 %.08.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.08.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !13
  %i.al = tail call noundef i32 @_ZNK3gmx8GridAxis12nearestIndexEd(ptr noundef nonnull align 8 dereferenceable(41) %i.ai, double noundef %i.ak)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.08.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !29
  %i.an = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.j
  br i1 %exitcond.not.i, label %iter.check, label %.lr.ph.i, !llvm.loop !67

_ZN3gmxL21getNearestIndexInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit: ; preds = %.lr.ph.i.i.i, %._crit_edge.thread.i, %._crit_edge.i.i
  %.010.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ 0, %._crit_edge.thread.i ], [ %i.y, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  ret i32 %.010.lcssa.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN3gmx8BiasGrid10initPointsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 8 uses
  %i.b = alloca [4 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37   ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !15   ; 10 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 48                  ; 12 uses
  %.not49 = icmp eq ptr %i.e, %i.f
  br i1 %.not49, label %._crit_edge48, label %iter.check

iter.check:                                       ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.j, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check90 = icmp ult i64 %i.j, 32
  br i1 %min.iters.check90, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.k = and i64 %i.j, 28
  %n.vec = and i64 %i.j, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.f, <8 x i64> %vec.ind
  %wide.gep91 = getelementptr inbounds nuw [48 x i8], ptr %i.f, <8 x i64> %step.add
  %wide.gep92 = getelementptr inbounds nuw [48 x i8], ptr %i.f, <8 x i64> %step.add.2
  %wide.gep93 = getelementptr inbounds nuw [48 x i8], ptr %i.f, <8 x i64> %step.add.3
  %wide.gep94 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep95 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep91, i64 32
  %wide.gep96 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep92, i64 32
  %wide.gep97 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep93, i64 32
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep94, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather98 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep95, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather99 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep96, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather100 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep97, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.l, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather98, ptr %i.m, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather99, ptr %i.n, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather100, ptr %i.o, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec101 = and i64 %i.j, -4                    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index102 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind103 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next108, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep104 = getelementptr inbounds nuw [48 x i8], ptr %i.f, <4 x i64> %vec.ind103
  %wide.gep105 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep104, i64 32
  %wide.masked.gather106 = tail call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep105, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index102
  store <4 x i32> %wide.masked.gather106, ptr %i.q, align 16, !tbaa !29
  %index.next107 = add nuw i64 %index102, 4       ; 2 uses
  %vec.ind.next108 = add nuw <4 x i64> %vec.ind103, splat (i64 4)
  %i.r = icmp eq i64 %index.next107, %n.vec101
  br i1 %i.r, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n109 = icmp eq i64 %i.j, %n.vec101
  br i1 %cmp.n109, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.02635.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec101, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.thread:                               ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.s = load ptr, ptr %0, align 8, !tbaa !70     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !70   ; 3 uses
  %.not4681 = icmp eq ptr %i.s, %i.u
  br i1 %.not4681, label %._crit_edge48, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %._crit_edge.thread
  %i.v = trunc i64 %i.j to i32
  %i.w = icmp slt i32 %i.v, 1
  %i.x = and i64 %i.j, 2147483647                 ; 2 uses
  %indvars.iv.next.i4082 = add nsw i64 %i.x, -1   ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i4082 ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i4082
  br i1 %i.w, label %.preheader.us.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split.us
  %i.aa = icmp samesign ugt i64 %i.x, 1
  br label %.preheader.us

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.split.us, %._crit_edge39.us.us
  %.sroa.027.047.us.us = phi ptr [ %i.be, %._crit_edge39.us.us ], [ %i.s, %.preheader.lr.ph.split.us ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.027.047.us.us, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.j, %.preheader.us.us
  %.037.us.us = phi i64 [ 0, %.preheader.us.us ], [ %i.bd, %bb.j ] ; 6 uses
  %i.ac = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.037.us.us ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !22, !range !23, !noundef !24
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.037.us.us
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29 ; 2 uses
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.al = load double, ptr %i.ak, align 8, !tbaa !60
  %i.am = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.al, double %i.ag)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.037.us.us
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %i.ap = sitofp i32 %i.ao to double
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = phi i32 [ %i.ao, %bb.d ], [ %i.ai, %bb.c ]
  %i.ar = phi double [ %i.ap, %bb.d ], [ %i.am, %bb.c ] ; 6 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.sroa.027.047.us.us, i64 %.037.us.us ; 2 uses
  store double %i.ar, ptr %i.as, align 8, !tbaa !13
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.au = load double, ptr %i.at, align 8, !tbaa !18 ; 4 uses
  %i.av = fcmp ogt double %i.au, 0.000000e+00
  br i1 %i.av, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.aw = fmul nnan double %i.au, 5.000000e-01    ; 2 uses
  %i.ax = fcmp ogt double %i.ar, %i.aw
  br i1 %i.ax, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ay = fneg double %i.aw
  %i.az = fcmp olt double %i.ar, %i.ay
  br i1 %i.az, label %bb.h, label %_ZN3gmx12makePeriodicIdEET_S1_S1_.exit.us.us

bb.h:                                             ; preds = %bb.g
  %i.ba = fadd double %i.au, %i.ar
  br label %_ZN3gmx12makePeriodicIdEET_S1_S1_.exit.us.us
end_hunk_0
begin_hunk_1_@_ZN3gmx8BiasGridC2ENS_8ArrayRefIKNS_9DimParamsEEENS1_IKNS_12AwhDimParamsEEE:bb.a
  %.sroa.speculated.i.1 = call i32 @llvm.smin.i32(i32 %i.gr, i32 11) ; 2 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next.i
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !29
  %.neg.i.1 = sdiv i32 %.sroa.speculated.i.1, -2
  %i.gu = add i32 %i.gt, %.neg.i.1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %scalar.ph.1
  %.sroa.speculated.sink.i.1 = phi i32 [ %.sroa.speculated.i.1, %bb.aj ], [ %i.gr, %scalar.ph.1 ]
  %.sink.i.1 = phi i32 [ %i.gu, %bb.aj ], [ 0, %scalar.ph.1 ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i
  store i32 %.sroa.speculated.sink.i.1, ptr %i.gv, align 4, !tbaa !29
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  store i32 %.sink.i.1, ptr %i.gw, align 4, !tbaa !29
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !126

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i:        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge, %._crit_edge.i
  %.0 = phi i32 [ -1, %._crit_edge.i ], [ %.3.ph, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.gx = icmp sgt i32 %.0, -1
  br i1 %i.gx, label %bb.al, label %bb.at

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %i.gy = load ptr, ptr %i.dd, align 8, !tbaa !37 ; 3 uses
  %i.gz = load ptr, ptr %i.n, align 8, !tbaa !15  ; 4 uses
  %i.ha = ptrtoint ptr %i.gy to i64
  %i.hb = ptrtoint ptr %i.gz to i64
  %i.hc = sub i64 %i.ha, %i.hb
  %i.hd = sdiv exact i64 %i.hc, 48                ; 3 uses
  %i.he = trunc i64 %i.hd to i32
  %i.hf = icmp sgt i32 %i.he, 0
  br i1 %i.hf, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %bb.al
  %i.hg = zext nneg i32 %.0 to i64
  %i.hh = load ptr, ptr %0, align 8, !tbaa !9
  %i.hi = getelementptr inbounds nuw [72 x i8], ptr %i.hh, i64 %i.hg
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 32
  %wide.trip.count.i.i = and i64 %i.hd, 2147483647
  br label %bb.an

bb.am:                                            ; preds = %bb.ar
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.lr.ph.preheader.i.i.lr.ph, label %bb.an, !llvm.loop !52

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.am ] ; 6 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hj, i64 %indvars.iv.i.i
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !29
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !29
  %i.ho = sub nsw i32 %i.hl, %i.hn                ; 5 uses
  %i.hp = getelementptr inbounds nuw [48 x i8], ptr %i.gz, i64 %indvars.iv.i.i
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !53 ; 4 uses
  %i.hs = icmp eq i32 %i.hr, 0
  br i1 %i.hs, label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not.i.i.i73 = icmp slt i32 %i.ho, %i.hr
  br i1 %.not.i.i.i73, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ht = sub nsw i32 %i.ho, %i.hr
  br label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.hu = icmp slt i32 %i.ho, 0
  %i.hv = select i1 %i.hu, i32 %i.hr, i32 0
  %spec.select.i.i.i = add nsw i32 %i.hv, %i.ho
  br label %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i

_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i: ; preds = %bb.aq, %bb.ap, %bb.an
  %.0.i.i.i = phi i32 [ %i.ho, %bb.an ], [ %i.ht, %bb.ap ], [ %spec.select.i.i.i, %bb.aq ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  store i32 %.0.i.i.i, ptr %i.hw, align 4, !tbaa !29
  %i.hx = icmp sgt i32 %.0.i.i.i, -1
  br i1 %i.hx, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i.i
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !29
  %i.ia = icmp slt i32 %.0.i.i.i, %i.hz
  br i1 %i.ia, label %bb.am, label %bb.as

bb.as:                                            ; preds = %bb.ar, %_ZN3gmx12_GLOBAL__N_117indexWithinPeriodEii.exit.i.i
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_118gridToSubgridIndexERKNS_8BiasGridEPKiS5_iPiENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 381) #28
          to label %.noexc74 unwind label %.loopexit.split-lp

.noexc74:                                         ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i
  %.val16.i = load ptr, ptr %i.n, align 8         ; 10 uses
  %.val17.i = load ptr, ptr %i.dd, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.ib = ptrtoint ptr %.val17.i to i64
  %i.ic = ptrtoint ptr %.val16.i to i64
  %i.id = sub i64 %i.ib, %i.ic
  %i.ie = sdiv exact i64 %i.id, 48                ; 12 uses
  %i.if = trunc i64 %i.ie to i32                  ; 2 uses
  %.not529.i84 = icmp slt i32 %i.if, 1
  br i1 %.not529.i84, label %.critedge.i98, label %.lr.ph.preheader.i85

.lr.ph.preheader.i85:                             ; preds = %bb.at
  %wide.trip.count.i86 = and i64 %i.ie, 2147483647
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.critedge54.i95, %.lr.ph.preheader.i85
  %indvars.iv.i88 = phi i64 [ 0, %.lr.ph.preheader.i85 ], [ %indvars.iv.next.i96, %.critedge54.i95 ] ; 5 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i88
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !29
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i88
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !29
  %i.ik = add nsw i32 %i.ij, %i.ih                ; 5 uses
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i88 ; 2 uses
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !29
  %i.im = icmp slt i32 %i.ik, 0
  %i.in = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, i64 %indvars.iv.i88 ; 6 uses
  br i1 %i.im, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i87
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !38
  %.not.i89 = icmp slt i32 %i.ik, %i.ip
  br i1 %.not.i89, label %.critedge54.i95, label %.thread.i90

bb.av:                                            ; preds = %.lr.ph.i87
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !18
  %i.is = fcmp ogt double %i.ir, 0.000000e+00
  br i1 %i.is, label %bb.aw, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread

.thread.i90:                                      ; preds = %bb.au
  %i.it = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  %i.iu = load double, ptr %i.it, align 8, !tbaa !18
  %i.iv = fcmp ogt double %i.iu, 0.000000e+00
  br i1 %i.iv, label %bb.ax, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread

bb.aw:                                            ; preds = %bb.av
  %i.iw = getelementptr inbounds nuw i8, ptr %i.in, i64 36
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !53
  %i.iy = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !38
  %i.ja = add i32 %i.ix, %i.ik                    ; 2 uses
  %i.jb = sub i32 %i.ja, %i.iz
  %i.jc = icmp ugt i32 %i.jb, -2147483648
  br i1 %i.jc, label %.critedge54.sink.split.i93, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread

bb.ax:                                            ; preds = %.thread.i90
  %i.jd = getelementptr inbounds nuw i8, ptr %i.in, i64 36
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !53
  %.neg1.i92 = add nuw i32 %i.ik, 1
  %i.jf = sub i32 %.neg1.i92, %i.je               ; 2 uses
  %i.jg = icmp sgt i32 %i.jf, 0
  br i1 %i.jg, label %bb.ay, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread

bb.ay:                                            ; preds = %bb.ax
  %i.jh = add nsw i32 %i.jf, -1
  br label %.critedge54.sink.split.i93

.critedge54.sink.split.i93:                       ; preds = %bb.ay, %bb.aw
  %.sink.i94 = phi i32 [ %i.jh, %bb.ay ], [ %i.ja, %bb.aw ]
  store i32 %.sink.i94, ptr %i.il, align 4, !tbaa !29
  br label %.critedge54.i95

.critedge54.i95:                                  ; preds = %.critedge54.sink.split.i93, %bb.au
  %indvars.iv.next.i96 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %exitcond.not.i97 = icmp eq i64 %indvars.iv.next.i96, %wide.trip.count.i86
  br i1 %exitcond.not.i97, label %.critedge.i98, label %.lr.ph.i87, !llvm.loop !55

.critedge.i98:                                    ; preds = %.critedge54.i95, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %.not.i.i.i99 = icmp eq ptr %.val17.i, %.val16.i
  br i1 %.not.i.i.i99, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112, label %iter.check303

iter.check303:                                    ; preds = %.critedge.i98
  %min.iters.check275 = icmp ult i64 %i.ie, 4
  br i1 %min.iters.check275, label %.lr.ph.i.i.i100.preheader, label %vector.main.loop.iter.check276

vector.main.loop.iter.check276:                   ; preds = %iter.check303
  %min.iters.check277 = icmp ult i64 %i.ie, 32
  br i1 %min.iters.check277, label %vec.epilog.ph307, label %vector.ph278

vector.ph278:                                     ; preds = %vector.main.loop.iter.check276
  %i.ji = and i64 %i.ie, 28
  %n.vec279 = and i64 %i.ie, -32                  ; 4 uses
  br label %vector.body280

vector.body280:                                   ; preds = %vector.body280, %vector.ph278
  %index281 = phi i64 [ 0, %vector.ph278 ], [ %index.next298, %vector.body280 ] ; 2 uses
  %vec.ind282 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph278 ], [ %vec.ind.next299, %vector.body280 ] ; 5 uses
  %step.add283 = add nuw <8 x i64> %vec.ind282, splat (i64 8)
  %step.add.2284 = add nuw <8 x i64> %vec.ind282, splat (i64 16)
  %step.add.3285 = add nuw <8 x i64> %vec.ind282, splat (i64 24)
  %wide.gep286 = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, <8 x i64> %vec.ind282
  %wide.gep287 = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, <8 x i64> %step.add283
  %wide.gep288 = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, <8 x i64> %step.add.2284
  %wide.gep289 = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, <8 x i64> %step.add.3285
  %wide.gep290 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep286, i64 32
  %wide.gep291 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep287, i64 32
  %wide.gep292 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep288, i64 32
  %wide.gep293 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep289, i64 32
  %wide.masked.gather294 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep290, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather295 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep291, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather296 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep292, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather297 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep293, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index281 ; 4 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 32
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jj, i64 96
  store <8 x i32> %wide.masked.gather294, ptr %i.jj, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather295, ptr %i.jk, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather296, ptr %i.jl, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather297, ptr %i.jm, align 16, !tbaa !29
  %index.next298 = add nuw i64 %index281, 32      ; 2 uses
  %vec.ind.next299 = add nuw <8 x i64> %vec.ind282, splat (i64 32)
  %i.jn = icmp eq i64 %index.next298, %n.vec279
  br i1 %i.jn, label %middle.block300, label %vector.body280, !llvm.loop !127

middle.block300:                                  ; preds = %vector.body280
  %cmp.n301 = icmp eq i64 %i.ie, %n.vec279
  br i1 %cmp.n301, label %._crit_edge.i.i.i103, label %vec.epilog.iter.check305

vec.epilog.iter.check305:                         ; preds = %middle.block300
  %min.epilog.iters.check306 = icmp eq i64 %i.ji, 0
  br i1 %min.epilog.iters.check306, label %.lr.ph.i.i.i100.preheader, label %vec.epilog.ph307, !prof !40

vec.epilog.ph307:                                 ; preds = %vector.main.loop.iter.check276, %vec.epilog.iter.check305
  %vec.epilog.resume.val302 = phi i64 [ %n.vec279, %vec.epilog.iter.check305 ], [ 0, %vector.main.loop.iter.check276 ] ; 2 uses
  %n.vec308 = and i64 %i.ie, -4                   ; 3 uses
  %broadcast.splatinsert309 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val302, i64 0
  %broadcast.splat310 = shufflevector <4 x i64> %broadcast.splatinsert309, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction311 = or disjoint <4 x i64> %broadcast.splat310, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body312

vec.epilog.vector.body312:                        ; preds = %vec.epilog.vector.body312, %vec.epilog.ph307
  %index313 = phi i64 [ %vec.epilog.resume.val302, %vec.epilog.ph307 ], [ %index.next318, %vec.epilog.vector.body312 ] ; 2 uses
  %vec.ind314 = phi <4 x i64> [ %induction311, %vec.epilog.ph307 ], [ %vec.ind.next319, %vec.epilog.vector.body312 ] ; 2 uses
  %wide.gep315 = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, <4 x i64> %vec.ind314
  %wide.gep316 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep315, i64 32
  %wide.masked.gather317 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep316, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index313
  store <4 x i32> %wide.masked.gather317, ptr %i.jo, align 16, !tbaa !29
  %index.next318 = add nuw i64 %index313, 4       ; 2 uses
  %vec.ind.next319 = add nuw <4 x i64> %vec.ind314, splat (i64 4)
  %i.jp = icmp eq i64 %index.next318, %n.vec308
  br i1 %i.jp, label %vec.epilog.middle.block320, label %vec.epilog.vector.body312, !llvm.loop !128

vec.epilog.middle.block320:                       ; preds = %vec.epilog.vector.body312
  %cmp.n321 = icmp eq i64 %i.ie, %n.vec308
  br i1 %cmp.n321, label %._crit_edge.i.i.i103, label %.lr.ph.i.i.i100.preheader

.lr.ph.i.i.i100.preheader:                        ; preds = %iter.check303, %vec.epilog.iter.check305, %vec.epilog.middle.block320
  %.07.i.i.i101.ph = phi i64 [ 0, %iter.check303 ], [ %n.vec279, %vec.epilog.iter.check305 ], [ %n.vec308, %vec.epilog.middle.block320 ]
  br label %.lr.ph.i.i.i100

._crit_edge.i.i.i103:                             ; preds = %.lr.ph.i.i.i100, %vec.epilog.middle.block320, %middle.block300
  %i.jq = icmp sgt i32 %i.if, 0
  br i1 %i.jq, label %.lr.ph.preheader.i.i.i.i106, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112

.lr.ph.preheader.i.i.i.i106:                      ; preds = %._crit_edge.i.i.i103
  %i.jr = and i64 %i.ie, 2147483647
  br label %.lr.ph.i.i.i.i107

.lr.ph.i.i.i.i107:                                ; preds = %.lr.ph.i.i.i.i107, %.lr.ph.preheader.i.i.i.i106
  %indvars.iv.i.i.i.i108 = phi i64 [ %i.jr, %.lr.ph.preheader.i.i.i.i106 ], [ %indvars.iv.next.i.i.i.i111, %.lr.ph.i.i.i.i107 ] ; 2 uses
  %.01013.i.i.i.i109 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i106 ], [ %i.jv, %.lr.ph.i.i.i.i107 ]
  %.01112.i.i.i.i110 = phi i32 [ 1, %.lr.ph.preheader.i.i.i.i106 ], [ %i.jy, %.lr.ph.i.i.i.i107 ] ; 2 uses
  %indvars.iv.next.i.i.i.i111 = add nsw i64 %indvars.iv.i.i.i.i108, -1 ; 3 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i.i111
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !29
  %i.ju = mul nsw i32 %i.jt, %.01112.i.i.i.i110
  %i.jv = add nsw i32 %i.ju, %.01013.i.i.i.i109   ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i.i111
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !29
  %i.jy = mul nsw i32 %i.jx, %.01112.i.i.i.i110
  %i.jz = icmp samesign ugt i64 %indvars.iv.i.i.i.i108, 1
  br i1 %i.jz, label %.lr.ph.i.i.i.i107, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112, !llvm.loop !48

.lr.ph.i.i.i100:                                  ; preds = %.lr.ph.i.i.i100.preheader, %.lr.ph.i.i.i100
  %.07.i.i.i101 = phi i64 [ %i.ke, %.lr.ph.i.i.i100 ], [ %.07.i.i.i101.ph, %.lr.ph.i.i.i100.preheader ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [48 x i8], ptr %.val16.i, i64 %.07.i.i.i101
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !38
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i.i.i101
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !29
  %i.ke = add nuw i64 %.07.i.i.i101, 1            ; 2 uses
  %exitcond.not.i.i.i102 = icmp eq i64 %i.ke, %i.ie
  br i1 %exitcond.not.i.i.i102, label %._crit_edge.i.i.i103, label %.lr.ph.i.i.i100, !llvm.loop !129

_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread: ; preds = %.thread.i90, %bb.aw, %bb.ax, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %.lr.ph.preheader.i.i.lr.ph

_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112: ; preds = %.lr.ph.i.i.i.i107, %.critedge.i98, %._crit_edge.i.i.i103
  %.010.lcssa.i.i.i.i105 = phi i32 [ 0, %._crit_edge.i.i.i103 ], [ 0, %.critedge.i98 ], [ %i.jv, %.lr.ph.i.i.i.i107 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %bb.be

.lr.ph.preheader.i.i.lr.ph:                       ; preds = %bb.am, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread
  %.pre-phi187.ph = phi i64 [ %i.ie, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread ], [ %i.hd, %bb.am ] ; 9 uses
  %.ph = phi ptr [ %.val16.i, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread ], [ %i.gz, %bb.am ] ; 10 uses
  %.ph227 = phi ptr [ %.val17.i, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112.thread ], [ %i.gy, %bb.am ] ; 3 uses
  %i.kf = and i64 %.pre-phi187.ph, 2147483647     ; 4 uses
  %indvars.iv.next.i2026.i = add nsw i64 %i.kf, -1 ; 3 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i2026.i ; 3 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i2026.i
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !29
  %i.kj = add nsw i32 %i.ki, -1
  %i.kk = icmp samesign ugt i64 %i.kf, 1
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit, %.lr.ph.preheader.i.i.lr.ph
  %i.kl = load i32, ptr %i.kg, align 4, !tbaa !29 ; 2 uses
  %i.km = icmp slt i32 %i.kl, %i.kj
  br i1 %i.km, label %.lr.ph.i18._crit_edge.i.thread, label %.lr.ph.i72.preheader

.lr.ph.i72.preheader:                             ; preds = %.lr.ph.preheader.i.i
  br i1 %i.kk, label %.lr.ph.i18.i, label %.loopexit

.lr.ph.i18._crit_edge.i.thread:                   ; preds = %.lr.ph.preheader.i.i
  %i.kn = add nsw i32 %i.kl, 1
  store i32 %i.kn, ptr %i.kg, align 4, !tbaa !29
  br label %.lr.ph.preheader.i

.lr.ph.i72:                                       ; preds = %.lr.ph.i18.i
  %i.ko = icmp samesign ugt i64 %indvars.iv.next.i2028.i251, 1
  br i1 %i.ko, label %.lr.ph.i18.i, label %.loopexit

.lr.ph.i18.i:                                     ; preds = %.lr.ph.i72.preheader, %.lr.ph.i72
  %indvars.iv.next.i2028.i251 = phi i64 [ %indvars.iv.next.i20.i, %.lr.ph.i72 ], [ %indvars.iv.next.i2026.i, %.lr.ph.i72.preheader ] ; 2 uses
  %i.kp = phi ptr [ %i.kq, %.lr.ph.i72 ], [ %i.kg, %.lr.ph.i72.preheader ]
  store i32 0, ptr %i.kp, align 4, !tbaa !29
  %indvars.iv.next.i20.i = add nsw i64 %indvars.iv.next.i2028.i251, -1 ; 3 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next.i20.i ; 3 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !29 ; 2 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next.i20.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !29
  %i.ku = add nsw i32 %i.kt, -1
  %i.kv = icmp slt i32 %i.kr, %i.ku
  br i1 %i.kv, label %.lr.ph.i18._crit_edge.i, label %.lr.ph.i72

.lr.ph.i18._crit_edge.i:                          ; preds = %.lr.ph.i18.i
  %i.kw = add nsw i32 %i.kr, 1
  store i32 %i.kw, ptr %i.kq, align 4, !tbaa !29
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.i18._crit_edge.i, %.lr.ph.i18._crit_edge.i.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  br label %.lr.ph.i76

.lr.ph.i76:                                       ; preds = %.critedge54.i, %.lr.ph.preheader.i
  %indvars.iv.i77 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i80, %.critedge54.i ] ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i77
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !29
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i77
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !29
  %i.lb = add nsw i32 %i.la, %i.ky                ; 5 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i77 ; 2 uses
  store i32 %i.lb, ptr %i.lc, align 4, !tbaa !29
  %i.ld = icmp slt i32 %i.lb, 0
  %i.le = getelementptr inbounds nuw [48 x i8], ptr %.ph, i64 %indvars.iv.i77 ; 6 uses
  br i1 %i.ld, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %.lr.ph.i76
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !38
  %.not.i78 = icmp slt i32 %i.lb, %i.lg
  br i1 %.not.i78, label %.critedge54.i, label %.thread.i

bb.ba:                                            ; preds = %.lr.ph.i76
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.li = load double, ptr %i.lh, align 8, !tbaa !18
  %i.lj = fcmp ogt double %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.bb, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit

.thread.i:                                        ; preds = %bb.az
  %i.lk = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !18
  %i.lm = fcmp ogt double %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.bc, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ln = getelementptr inbounds nuw i8, ptr %i.le, i64 36
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !53
  %i.lp = getelementptr inbounds nuw i8, ptr %i.le, i64 32
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !38
  %i.lr = add i32 %i.lo, %i.lb                    ; 2 uses
  %i.ls = sub i32 %i.lr, %i.lq
  %i.lt = icmp ugt i32 %i.ls, -2147483648
  br i1 %i.lt, label %.critedge54.sink.split.i, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit

bb.bc:                                            ; preds = %.thread.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.le, i64 36
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !53
  %.neg1.i = add nuw i32 %i.lb, 1
  %i.lw = sub i32 %.neg1.i, %i.lv                 ; 2 uses
  %i.lx = icmp sgt i32 %i.lw, 0
  br i1 %i.lx, label %bb.bd, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit

bb.bd:                                            ; preds = %bb.bc
  %i.ly = add nsw i32 %i.lw, -1
  br label %.critedge54.sink.split.i

.critedge54.sink.split.i:                         ; preds = %bb.bd, %bb.bb
  %.sink.i79 = phi i32 [ %i.ly, %bb.bd ], [ %i.lr, %bb.bb ]
  store i32 %.sink.i79, ptr %i.lc, align 4, !tbaa !29
  br label %.critedge54.i

.critedge54.i:                                    ; preds = %.critedge54.sink.split.i, %bb.az
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i77, 1 ; 2 uses
  %exitcond.not.i81 = icmp eq i64 %indvars.iv.next.i80, %i.kf
  br i1 %exitcond.not.i81, label %.critedge.i, label %.lr.ph.i76, !llvm.loop !55

.critedge.i:                                      ; preds = %.critedge54.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %.not.i.i.i82 = icmp eq ptr %.ph227, %.ph
  br i1 %.not.i.i.i82, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit.thread, label %iter.check

iter.check:                                       ; preds = %.critedge.i
  %min.iters.check = icmp ult i64 %.pre-phi187.ph, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check255 = icmp ult i64 %.pre-phi187.ph, 32
  br i1 %min.iters.check255, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.lz = and i64 %.pre-phi187.ph, 28
  %n.vec = and i64 %.pre-phi187.ph, -2147483680   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %.ph, <8 x i64> %vec.ind
  %wide.gep256 = getelementptr inbounds nuw [48 x i8], ptr %.ph, <8 x i64> %step.add
  %wide.gep257 = getelementptr inbounds nuw [48 x i8], ptr %.ph, <8 x i64> %step.add.2
  %wide.gep258 = getelementptr inbounds nuw [48 x i8], ptr %.ph, <8 x i64> %step.add.3
  %wide.gep259 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep260 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep256, i64 32
  %wide.gep261 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep257, i64 32
  %wide.gep262 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep258, i64 32
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep259, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather263 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep260, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather264 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep261, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %wide.masked.gather265 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep262, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.ma, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather263, ptr %i.mb, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather264, ptr %i.mc, align 16, !tbaa !29
  store <8 x i32> %wide.masked.gather265, ptr %i.md, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.me = icmp eq i64 %index.next, %n.vec
  br i1 %i.me, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.pre-phi187.ph, %n.vec
  br i1 %cmp.n, label %.lr.ph.i.i.i.i83.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.lz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec266 = and i64 %.pre-phi187.ph, -2147483652 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index267 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next272, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind268 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next273, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep269 = getelementptr inbounds nuw [48 x i8], ptr %.ph, <4 x i64> %vec.ind268
  %wide.gep270 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep269, i64 32
  %wide.masked.gather271 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep270, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index267
  store <4 x i32> %wide.masked.gather271, ptr %i.mf, align 16, !tbaa !29
  %index.next272 = add nuw i64 %index267, 4       ; 2 uses
  %vec.ind.next273 = add nuw <4 x i64> %vec.ind268, splat (i64 4)
  %i.mg = icmp eq i64 %index.next272, %n.vec266
  br i1 %i.mg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !131

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n274 = icmp eq i64 %.pre-phi187.ph, %n.vec266
  br i1 %cmp.n274, label %.lr.ph.i.i.i.i83.preheader, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec266, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i.i83.preheader:                       ; preds = %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  br label %.lr.ph.i.i.i.i83

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.i.i.i.i83.preheader, %.lr.ph.i.i.i.i83
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i83 ], [ %i.kf, %.lr.ph.i.i.i.i83.preheader ] ; 2 uses
  %.01013.i.i.i.i = phi i32 [ %i.mk, %.lr.ph.i.i.i.i83 ], [ 0, %.lr.ph.i.i.i.i83.preheader ]
  %.01112.i.i.i.i = phi i32 [ %i.mn, %.lr.ph.i.i.i.i83 ], [ 1, %.lr.ph.i.i.i.i83.preheader ] ; 2 uses
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1 ; 3 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i.i.i.i
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !29
  %i.mj = mul nsw i32 %i.mi, %.01112.i.i.i.i
  %i.mk = add nsw i32 %i.mj, %.01013.i.i.i.i      ; 2 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next.i.i.i.i
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !29
  %i.mn = mul nsw i32 %i.mm, %.01112.i.i.i.i
  %i.mo = icmp samesign ugt i64 %indvars.iv.i.i.i.i, 1
  br i1 %i.mo, label %.lr.ph.i.i.i.i83, label %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit.thread, !llvm.loop !48

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.07.i.i.i = phi i64 [ %i.mt, %.lr.ph.i.i.i ], [ %.07.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.mp = getelementptr inbounds nuw [48 x i8], ptr %.ph, i64 %.07.i.i.i
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 32
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !38
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.07.i.i.i
  store i32 %i.mr, ptr %i.ms, align 4, !tbaa !29
  %i.mt = add nuw i64 %.07.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.mt, %.pre-phi187.ph
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i.i.i83.preheader, label %.lr.ph.i.i.i, !llvm.loop !132

_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit.thread: ; preds = %.lr.ph.i.i.i.i83, %.critedge.i
  %.010.lcssa.i.i.i.i = phi i32 [ 0, %.critedge.i ], [ %i.mk, %.lr.ph.i.i.i.i83 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %bb.be

_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit: ; preds = %bb.ba, %.thread.i, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %.lr.ph.preheader.i.i

bb.be:                                            ; preds = %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit.thread
  %.3.ph = phi i32 [ %.010.lcssa.i.i.i.i105, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit112 ], [ %.010.lcssa.i.i.i.i, %_ZN3gmx12_GLOBAL__N_118subgridToGridIndexERKNS_8BiasGridEPKiS5_Pi.exit.thread ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  %i.mu = load ptr, ptr %i.fz, align 8, !tbaa !133 ; 4 uses
  %i.mv = load ptr, ptr %i.ga, align 8, !tbaa !112
  %.not.i.i67 = icmp eq ptr %i.mu, %i.mv
  br i1 %.not.i.i67, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  store i32 %.3.ph, ptr %i.mu, align 4, !tbaa !29
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  store ptr %i.mw, ptr %i.fz, align 8, !tbaa !133
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge

bb.bg:                                            ; preds = %bb.be
  %i.mx = load ptr, ptr %i.dl, align 8, !tbaa !109 ; 4 uses
  %i.my = ptrtoint ptr %i.mu to i64
  %i.mz = ptrtoint ptr %i.mx to i64
  %i.na = sub i64 %i.my, %i.mz                    ; 6 uses
  %i.nb = icmp eq i64 %i.na, 9223372036854775804
  br i1 %i.nb, label %bb.bh, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.bh:                                            ; preds = %bb.bg
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #28
          to label %.noexc70 unwind label %.loopexit.split-lp

.noexc70:                                         ; preds = %bb.bh
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bg
  %i.nc = ashr exact i64 %i.na, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.nc, i64 1)
  %i.nd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.nc ; 2 uses
  %i.ne = icmp ult i64 %i.nd, %i.nc
  %i.nf = call i64 @llvm.umin.i64(i64 %i.nd, i64 2305843009213693951)
  %i.ng = select i1 %i.ne, i64 2305843009213693951, i64 %i.nf ; 3 uses
  %.not.i.i.i.i68 = icmp ne i64 %i.ng, 0
  call void @llvm.assume(i1 %.not.i.i.i.i68)
  %i.nh = shl nuw nsw i64 %i.ng, 2
  %i.ni = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nh) #31
          to label %.noexc71 unwind label %.loopexit146 ; 4 uses

.noexc71:                                         ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.nj = getelementptr inbounds i8, ptr %i.ni, i64 %i.na ; 2 uses
  store i32 %.3.ph, ptr %i.nj, align 4, !tbaa !29
  %i.nk = icmp sgt i64 %i.na, 0
  br i1 %i.nk, label %bb.bi, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.bi:                                            ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ni, ptr align 4 %i.mx, i64 %i.na, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.bi, %.noexc71
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.bj

bb.bj:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.na) #30
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.bj, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ni, ptr %i.dl, align 8, !tbaa !109
  store ptr %i.nl, ptr %i.fz, align 8, !tbaa !133
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %i.ng
  store ptr %i.nm, ptr %i.ga, align 8, !tbaa !112
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge

_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i.backedge: ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, %bb.bf
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit.i

.loopexit:                                        ; preds = %bb.al, %.lr.ph.i72.preheader, %.lr.ph.i72
  %i.nn = phi ptr [ %.ph227, %.lr.ph.i72.preheader ], [ %.ph227, %.lr.ph.i72 ], [ %i.gy, %bb.al ]
  %i.no = phi ptr [ %.ph, %.lr.ph.i72.preheader ], [ %.ph, %.lr.ph.i72 ], [ %i.gz, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #27
  %i.np = add nuw i64 %.028174, 1                 ; 2 uses
  %i.nq = load ptr, ptr %i.ci, align 8, !tbaa !108
  %i.nr = load ptr, ptr %0, align 8, !tbaa !9     ; 2 uses
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt
  %i.nv = sdiv exact i64 %i.nu, 72
  %i.nw = icmp ult i64 %i.np, %i.nv
  br i1 %i.nw, label %bb.ag, label %._crit_edge176, !llvm.loop !134

.loopexit146:                                     ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

.loopexit.split-lp:                               ; preds = %bb.bh, %bb.as
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bk:                                            ; preds = %.loopexit146, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.af, %bb.q
  %.pn49.pn = phi { ptr, i32 } [ %.pn49, %bb.q ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.de, %bb.af ], [ %lpad.loopexit, %.loopexit146 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #27
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.d
  %.pn49.pn.pn = phi { ptr, i32 } [ %.pn49.pn, %bb.bk ], [ %i.ab, %bb.d ]
  %i.nx = load ptr, ptr %i.n, align 8, !tbaa !15  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !99
  %i.oa = ptrtoint ptr %i.nz to i64
  %i.ob = ptrtoint ptr %i.nx to i64
  %i.oc = sub i64 %i.oa, %i.ob
  call void @_ZdlPvm(ptr noundef nonnull %i.nx, i64 noundef %i.oc) #30
  br label %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit

_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit:    ; preds = %bb.bl, %bb.bm
  call void @_ZNSt6vectorIN3gmx9GridPointESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #27
  resume { ptr, i32 } %.pn49.pn.pn

bb.bn:                                            ; preds = %bb.w
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #14

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InvalidInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !91
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !135
  store ptr %i.a, ptr %3, align 8, !tbaa !136
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !138
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.d = load ptr, ptr %3, align 8, !tbaa !136    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #27, !inline_history !141
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.i = load ptr, ptr %3, align 8, !tbaa !136    ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !91
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #27, !inline_history !141
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
end_hunk_1
begin_hunk_2_@_ZN3gmx17mapGridToDataGridEPSt6vectorIiSaIiEERKNS_13MultiDimArrayIS0_IdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8BiasGridESK_:bb.a
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.ah
  ret void

bb.ai:                                            ; preds = %bb.bl
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.preheader, %.loopexit
  %.062273 = phi i64 [ %i.lh, %.loopexit ], [ 0, %.lr.ph.preheader.i.preheader ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [72 x i8], ptr %i.cq, i64 %.062273 ; 2 uses
  br label %.lr.ph.i

bb.aj:                                            ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i
  %i.fo = add nuw i64 %.01319.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fo, %i.db
  br i1 %exitcond.not.i, label %bb.ba, label %.lr.ph.i, !llvm.loop !59

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.preheader.i
  %.01319.i = phi i64 [ %i.fo, %bb.aj ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.fp = getelementptr inbounds [48 x i8], ptr %.pre, i64 %.01319.i ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !60 ; 2 uses
  %i.fs = fcmp ogt double %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.ak, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i

bb.ak:                                            ; preds = %.lr.ph.i
  %i.ft = load double, ptr %i.fp, align 8, !tbaa !61
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.01319.i
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !18 ; 4 uses
  %i.fy = fsub double %i.fv, %i.ft                ; 6 uses
  %i.fz = fcmp ogt double %i.fx, 0.000000e+00
  br i1 %i.fz, label %bb.al, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.ga = fmul nnan double %i.fx, 5.000000e-01    ; 2 uses
  %i.gb = fcmp ogt double %i.fy, %i.ga
  br i1 %i.gb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gc = fsub double %i.fy, %i.fx
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.an:                                            ; preds = %bb.al
  %i.gd = fneg double %i.ga
  %i.ge = fcmp olt double %i.fy, %i.gd
  br i1 %i.ge, label %bb.ao, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.gf = fadd double %i.fy, %i.fx
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i

_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i: ; preds = %bb.ao, %bb.an, %bb.am, %bb.ak
  %.0.i.i.i = phi double [ %i.fy, %bb.ak ], [ %i.gc, %bb.am ], [ %i.gf, %bb.ao ], [ %i.fy, %bb.an ]
  %i.gg = fdiv double %.0.i.i.i, %i.fr
  %i.gh = call double @llvm.rint.f64(double %i.gg)
  %i.gi = fptosi double %i.gh to i32              ; 5 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fp, i64 36
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !53 ; 4 uses
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, label %bb.ap

bb.ap:                                            ; preds = %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i
  %.not.i.i.i128 = icmp sgt i32 %i.gk, %i.gi
  br i1 %.not.i.i.i128, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.gm = sub nsw i32 %i.gi, %i.gk
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.gn = icmp slt i32 %i.gi, 0
  %i.go = select i1 %i.gn, i32 %i.gk, i32 0
  %spec.select.i.i.i = add nsw i32 %i.go, %i.gi
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i: ; preds = %bb.ar, %bb.aq, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i
  %.0.i.i = phi i32 [ %spec.select.i.i.i, %bb.ar ], [ %i.gi, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i ], [ %i.gm, %bb.aq ] ; 2 uses
  %i.gp = icmp sgt i32 %.0.i.i, -1
  br i1 %i.gp, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i: ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, %.lr.ph.i
  %.0.i18.i = phi i32 [ %.0.i.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i ], [ 0, %.lr.ph.i ]
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fp, i64 32
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !38
  %i.gs = icmp slt i32 %.0.i18.i, %i.gr
  br i1 %i.gs, label %bb.aj, label %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit

_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit: ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.gt = load ptr, ptr %3, align 8, !tbaa !103
  %i.gu = load ptr, ptr %5, align 8, !tbaa !103
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull @.str.18, ptr noundef %i.gt, ptr noundef %i.gu)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit
  %i.gv = call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %13, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.at unwind label %.thread241

bb.at:                                            ; preds = %bb.as
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %bb.au unwind label %.thread246

bb.au:                                            ; preds = %bb.at
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %12, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %14, align 8, !tbaa !91
  %i.gw = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx17mapGridToDataGridEPSt6vectorIiSaIiEERKNS_13MultiDimArrayIS0_IdSaIdEENS_7extentsIJLln1ELln1EEEENS_12layout_rightEEEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8BiasGridESK_, ptr %i.gw, align 8, !tbaa !102
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr @.str.2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !102
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 24
  store i32 922, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.gv, ptr noundef nonnull align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr %i.gv, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #28
          to label %bb.bt unwind label %bb.ax

bb.aw:                                            ; preds = %_ZN3gmxL13valueIsInGridEPKdNS_8ArrayRefIKNS_8GridAxisEEE.exit
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

.thread241:                                       ; preds = %bb.as
  %i.gy = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split334

.thread246:                                       ; preds = %bb.at
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #27
  br label %.sink.split334

bb.ax:                                            ; preds = %bb.au, %bb.av
  %.0 = phi i1 [ false, %bb.av ], [ true, %bb.au ]
  %i.ha = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %14) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %12) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %13) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br i1 %.0, label %bb.ay, label %bb.az

.sink.split334:                                   ; preds = %.thread241, %.thread246
  %.pn.pn245.ph = phi { ptr, i32 } [ %i.gz, %.thread246 ], [ %i.gy, %.thread241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %bb.ay

bb.ay:                                            ; preds = %.sink.split334, %bb.ax
  %.pn.pn245 = phi { ptr, i32 } [ %i.ha, %bb.ax ], [ %.pn.pn245.ph, %.sink.split334 ]
  call void @__cxa_free_exception(ptr %i.gv) #27
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.pn.pn244 = phi { ptr, i32 } [ %.pn.pn245, %bb.ay ], [ %i.ha, %bb.ax ] ; 2 uses
  %i.hb = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.az
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !107
  %i.hf = add i64 %i.he, 1
  call void @_ZdlPvm(ptr noundef %i.hb, i64 noundef %i.hf) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131, %bb.aw
  %.pn.pn.pn = phi { ptr, i32 } [ %i.gx, %bb.aw ], [ %.pn.pn244, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131 ], [ %.pn.pn244, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.bo

bb.ba:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  br label %.lr.ph.i135

iter.check:                                       ; preds = %.noexc137
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check341, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.ind = phi <8 x i64> [ %vec.ind.next, %vector.body ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.main.loop.iter.check ] ; 5 uses
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %.pre, <8 x i64> %vec.ind
  %wide.gep342 = getelementptr inbounds nuw [48 x i8], ptr %.pre, <8 x i64> %step.add
  %wide.gep343 = getelementptr inbounds nuw [48 x i8], ptr %.pre, <8 x i64> %step.add.2
  %wide.gep344 = getelementptr inbounds nuw [48 x i8], ptr %.pre, <8 x i64> %step.add.3
  %wide.gep345 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.gep346 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep342, i64 32
  %wide.gep347 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep343, i64 32
  %wide.gep348 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep344, i64 32
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep345, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38, !alias.scope !202
  %wide.masked.gather349 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep346, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38, !alias.scope !202
  %wide.masked.gather350 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep347, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38, !alias.scope !202
  %wide.masked.gather351 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 8 %wide.gep348, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !38, !alias.scope !202
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 96
  store <8 x i32> %wide.masked.gather, ptr %i.hg, align 16, !tbaa !29, !alias.scope !205, !noalias !202
  store <8 x i32> %wide.masked.gather349, ptr %i.hh, align 16, !tbaa !29, !alias.scope !205, !noalias !202
  store <8 x i32> %wide.masked.gather350, ptr %i.hi, align 16, !tbaa !29, !alias.scope !205, !noalias !202
  store <8 x i32> %wide.masked.gather351, ptr %i.hj, align 16, !tbaa !29, !alias.scope !205, !noalias !202
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index353 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next358, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind354 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next359, %vec.epilog.vector.body ] ; 2 uses
  %wide.gep355 = getelementptr inbounds nuw [48 x i8], ptr %.pre, <4 x i64> %vec.ind354
  %wide.gep356 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep355, i64 32
  %wide.masked.gather357 = call <4 x i32> @llvm.masked.gather.v4i32.v4p0(<4 x ptr> align 8 %wide.gep356, <4 x i1> splat (i1 true), <4 x i32> poison), !tbaa !38, !alias.scope !202
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index353
  store <4 x i32> %wide.masked.gather357, ptr %i.hl, align 16, !tbaa !29, !alias.scope !205, !noalias !202
  %index.next358 = add nuw i64 %index353, 4       ; 2 uses
  %vec.ind.next359 = add nuw <4 x i64> %vec.ind354, splat (i64 4)
  %i.hm = icmp eq i64 %index.next358, %n.vec352
  br i1 %i.hm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !208

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n360, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.07.i.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec352, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 4 uses
  %i.hn = sub nsw i64 %i.db, %.07.i.i.ph
  %xtraiter = and i64 %i.hn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.07.i.i.prol = phi i64 [ %i.hs, %.lr.ph.i.i.prol ], [ %.07.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ho = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %.07.i.i.prol
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !38
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i.i.prol
  store i32 %i.hq, ptr %i.hr, align 4, !tbaa !29
  %i.hs = add nuw i64 %.07.i.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !209

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.07.i.i.unr = phi i64 [ %.07.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.hs, %.lr.ph.i.i.prol ]
  %i.ht = sub nsw i64 %.07.i.i.ph, %i.db
  %i.hu = icmp ugt i64 %i.ht, -8
  br i1 %i.hu, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  br i1 %i.dd, label %.lr.ph.i.i.i, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ %i.de, %._crit_edge.i.i ] ; 2 uses
  %.01013.i.i.i = phi i32 [ %i.hy, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ]
  %.01112.i.i.i = phi i32 [ %i.ib, %.lr.ph.i.i.i ], [ 1, %._crit_edge.i.i ] ; 2 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 3 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next.i.i.i
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !29
  %i.hx = mul nsw i32 %i.hw, %.01112.i.i.i
  %i.hy = add nsw i32 %i.hx, %.01013.i.i.i        ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next.i.i.i
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !29
  %i.ib = mul nsw i32 %i.ia, %.01112.i.i.i
  %i.ic = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.ic, label %.lr.ph.i.i.i, label %.loopexit, !llvm.loop !48

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.07.i.i = phi i64 [ %i.jq, %.lr.ph.i.i ], [ %.07.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 10 uses
  %i.id = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %.07.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.07.i.i
  store i32 %i.if, ptr %i.ig, align 4, !tbaa !29
  %i.ih = add nuw i64 %.07.i.i, 1                 ; 2 uses
  %i.ii = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !38
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ih
  store i32 %i.ik, ptr %i.il, align 4, !tbaa !29
  %i.im = add nuw i64 %.07.i.i, 2                 ; 2 uses
  %i.in = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  %i.ip = load i32, ptr %i.io, align 8, !tbaa !38
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.im
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !29
  %i.ir = add nuw i64 %.07.i.i, 3                 ; 2 uses
  %i.is = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !38
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ir
  store i32 %i.iu, ptr %i.iv, align 4, !tbaa !29
  %i.iw = add nuw i64 %.07.i.i, 4                 ; 2 uses
  %i.ix = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !38
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.iw
  store i32 %i.iz, ptr %i.ja, align 4, !tbaa !29
  %i.jb = add nuw i64 %.07.i.i, 5                 ; 2 uses
  %i.jc = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.jb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 32
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !38
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jb
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !29
  %i.jg = add nuw i64 %.07.i.i, 6                 ; 2 uses
  %i.jh = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !38
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jg
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !29
  %i.jl = add nuw i64 %.07.i.i, 7                 ; 2 uses
  %i.jm = getelementptr inbounds nuw [48 x i8], ptr %.pre, i64 %i.jl
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !38
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jl
  store i32 %i.jo, ptr %i.jp, align 4, !tbaa !29
  %i.jq = add nuw i64 %.07.i.i, 8                 ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %i.jq, %i.db
  br i1 %exitcond.not.i.i.7, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !210

.lr.ph.i135:                                      ; preds = %bb.ba, %.noexc137
  %.08.i = phi i64 [ %i.le, %.noexc137 ], [ 0, %bb.ba ] ; 4 uses
  %i.jr = getelementptr inbounds [48 x i8], ptr %.pre, i64 %.08.i ; 7 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 24
  %i.jt = load double, ptr %i.js, align 8, !tbaa !60 ; 2 uses
  %i.ju = fcmp ogt double %i.jt, 0.000000e+00
  br i1 %i.ju, label %bb.bb, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144

bb.bb:                                            ; preds = %.lr.ph.i135
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.08.i
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !13
  %i.jx = load double, ptr %i.jr, align 8, !tbaa !61
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jz = load double, ptr %i.jy, align 8, !tbaa !18 ; 4 uses
  %i.ka = fsub double %i.jw, %i.jx                ; 6 uses
  %i.kb = fcmp ogt double %i.jz, 0.000000e+00     ; 2 uses
  br i1 %i.kb, label %bb.bc, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147

bb.bc:                                            ; preds = %bb.bb
  %i.kc = fmul nnan double %i.jz, 5.000000e-01    ; 2 uses
  %i.kd = fcmp ogt double %i.ka, %i.kc
  br i1 %i.kd, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ke = fsub double %i.ka, %i.jz
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147

bb.be:                                            ; preds = %bb.bc
  %i.kf = fneg double %i.kc
  %i.kg = fcmp olt double %i.ka, %i.kf
  br i1 %i.kg, label %bb.bf, label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147

bb.bf:                                            ; preds = %bb.be
  %i.kh = fadd double %i.ka, %i.jz
  br label %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147

_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147: ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb
  %.0.i.i.i148 = phi double [ %i.ka, %bb.bb ], [ %i.ke, %bb.bd ], [ %i.kh, %bb.bf ], [ %i.ka, %bb.be ]
  %i.ki = fdiv double %.0.i.i.i148, %i.jt
  %i.kj = call double @llvm.rint.f64(double %i.ki)
  %i.kk = fptosi double %i.kj to i32              ; 5 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !53 ; 4 uses
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150, label %bb.bg

bb.bg:                                            ; preds = %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147
  %.not.i.i.i149 = icmp sgt i32 %i.km, %i.kk
  br i1 %.not.i.i.i149, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ko = sub nsw i32 %i.kk, %i.km
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150

bb.bi:                                            ; preds = %bb.bg
  %i.kp = icmp slt i32 %i.kk, 0
  %i.kq = select i1 %i.kp, i32 %i.km, i32 0
  %spec.select.i.i.i152 = add nsw i32 %i.kq, %i.kk
  br label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150: ; preds = %bb.bi, %bb.bh, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147
  %.0.i.i151 = phi i32 [ %spec.select.i.i.i152, %bb.bi ], [ %i.kk, %_ZN3gmx12_GLOBAL__N_120getDeviationPeriodicEddd.exit.i.i147 ], [ %i.ko, %bb.bh ] ; 2 uses
  %i.kr = icmp slt i32 %.0.i.i151, 0
  br i1 %i.kr, label %bb.bj, label %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144

_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144: ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150, %.lr.ph.i135
  %.0.i13.i = phi i32 [ %.0.i.i151, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150 ], [ 0, %.lr.ph.i135 ] ; 5 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jr, i64 32
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !38 ; 3 uses
  %.not.i145 = icmp slt i32 %.0.i13.i, %i.kt
  br i1 %.not.i145, label %.noexc137, label %.thread.i

bb.bj:                                            ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.i150
  br i1 %i.kb, label %bb.bl, label %.noexc137

.thread.i:                                        ; preds = %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %.pre.i146 = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !18
  %i.ku = fcmp ogt double %.pre.i146, 0.000000e+00
  br i1 %i.ku, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %.thread.i
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jr, i64 36
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !53 ; 2 uses
  %i.kx = icmp slt i32 %.0.i13.i, %i.kw
  br i1 %i.kx, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  invoke void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK3gmx8GridAxis12nearestIndexEdENK3$_0clEv", ptr noundef nonnull @.str.2, i32 noundef 588) #28
          to label %.noexc153 unwind label %bb.ai

.noexc153:                                        ; preds = %bb.bl
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %i.ky = add nsw i32 %i.kt, -1                   ; 2 uses
  %i.kz = sub nsw i32 %.0.i13.i, %i.ky
  %i.la = sub nuw nsw i32 %i.kw, %.0.i13.i
  %i.lb = icmp slt i32 %i.la, %i.kz
  %spec.select.i = select i1 %i.lb, i32 0, i32 %i.ky
  br label %.noexc137

bb.bn:                                            ; preds = %.thread.i
  %i.lc = add nsw i32 %i.kt, -1
  br label %.noexc137

.noexc137:                                        ; preds = %bb.bn, %bb.bm, %bb.bj, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144
  %.0.i = phi i32 [ %spec.select.i, %bb.bm ], [ %.0.i13.i, %_ZN3gmxL22pointDistanceAlongAxisERKNS_8GridAxisEdd.exit.thread.i144 ], [ %i.lc, %bb.bn ], [ 0, %bb.bj ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.08.i
  store i32 %.0.i, ptr %i.ld, align 4, !tbaa !29
  %i.le = add nuw i64 %.08.i, 1                   ; 2 uses
  %exitcond.not.i136 = icmp eq i64 %i.le, %i.db
  br i1 %exitcond.not.i136, label %iter.check, label %.lr.ph.i135, !llvm.loop !67

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  %.010.lcssa.i.i.i = phi i32 [ 0, %._crit_edge.i.i ], [ %i.hy, %.lr.ph.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  %i.lf = load ptr, ptr %0, align 8, !tbaa !109
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.lf, i64 %.062273
  store i32 %.010.lcssa.i.i.i, ptr %i.lg, align 4, !tbaa !29
  %i.lh = add nuw i64 %.062273, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.lh, %i.cu
  br i1 %exitcond.not, label %._crit_edge275.thread, label %.lr.ph.preheader.i, !llvm.loop !211

bb.bo:                                            ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, %bb.aa, %bb.ae, %bb.v
  %.pn93.pn = phi { ptr, i32 } [ %i.dk, %bb.v ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133 ], [ %i.ee, %bb.aa ], [ %i.eq, %bb.ae ], [ %i.fm, %bb.ai ]
  %i.li = load ptr, ptr %10, align 8, !tbaa !15   ; 3 uses
  %.not.i.i.i138 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i138, label %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit139, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.lj = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !99
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #30
  br label %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit139

_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit139: ; preds = %bb.bo, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.bq

bb.bq:                                            ; preds = %bb.i, %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn100.pn = phi { ptr, i32 } [ %.pn93.pn, %_ZNSt6vectorIN3gmx8GridAxisESaIS1_EED2Ev.exit139 ], [ %.pn96.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bk, %bb.i ] ; 2 uses
  %.not.i.i140 = icmp eq ptr %.sroa.0190.0, null
  br i1 %.not.i.i140, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lo = ptrtoint ptr %.sroa.15195.0 to i64
  %i.lp = ptrtoint ptr %.sroa.0190.0 to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 2 uses
  %i.lr = ashr exact i64 %i.lq, 3
  %i.ls = sub nsw i64 0, %i.lr
  %i.lt = getelementptr inbounds [8 x i8], ptr %.sroa.15195.0, i64 %i.ls
  call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lq) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141

_ZNSt13_Bvector_baseISaIbEED2Ev.exit141:          ; preds = %bb.br, %bb.bq
  %.not.i.i.i142 = icmp eq ptr %.sroa.0198.0228, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIiSaIiEED2Ev.exit143, label %bb.bs

bb.bs:                                            ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141.thread, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141
  %.pn100.pn.pn256 = phi { ptr, i32 } [ %i.ah, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141.thread ], [ %.pn100.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141 ]
  %.sroa.12.0221255 = phi ptr [ %i.u, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141.thread ], [ %.sroa.12.0225, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141 ]
  %.sroa.0198.0229254 = phi ptr [ %i.t, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141.thread ], [ %.sroa.0198.0228, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141 ] ; 2 uses
  %i.lu = ptrtoint ptr %.sroa.12.0221255 to i64
  %i.lv = ptrtoint ptr %.sroa.0198.0229254 to i64
  %i.lw = sub i64 %i.lu, %i.lv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0198.0229254, i64 noundef %i.lw) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit143

_ZNSt6vectorIiSaIiEED2Ev.exit143:                 ; preds = %bb.bs, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141
  %.pn100.pn.pn.pn = phi { ptr, i32 } [ %.pn100.pn.pn256, %bb.bs ], [ %.pn100.pn, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit141 ]
  resume { ptr, i32 } %.pn100.pn.pn.pn

bb.bt:                                            ; preds = %bb.av, %bb.n
  unreachable
}

declare noundef zeroext i1 @_Z14gmx_within_tolddd(double noundef, double noundef, double noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx8GridAxisESaIS1_EE17_M_realloc_insertIJRKdS6_iRibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 1 dereferenceable(1) %6) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !37   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
end_hunk_2
