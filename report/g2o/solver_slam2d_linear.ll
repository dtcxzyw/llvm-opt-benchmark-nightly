Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_slam2d_linear?download=true
inline.NumInlined: 3205
inline.NumDeleted: 1582
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE24blockToScalarPermutationINS2_IiLin1ELi1ELi0ELin1ELi1EEES6_EEvRKNS_17SparseBlockMatrixIS3_EERKNS1_10MatrixBaseIT_EERKNSB_IT0_EE:bb.a
  br i1 %.not.i, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !33   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !174  ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %bb.f

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !174  ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.thread52, label %bb.f

bb.b:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit
  %i.m = sext i32 %i.f to i64                     ; 2 uses
  %.not.i.i = icmp eq i32 %i.f, 0
  br i1 %.not.i.i, label %.thread52, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %2, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.n) #30
  %i.o = icmp sgt i32 %i.f, 0
  br i1 %i.o, label %bb.d, label %.sink.split.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = shl nuw nsw i64 %i.m, 2
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.p) #36 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %.sink.split.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

.sink.split.i.i:                                  ; preds = %bb.d, %bb.c
  %.sink.i.i = phi ptr [ %i.q, %bb.d ], [ null, %bb.c ]
  store ptr %.sink.i.i, ptr %2, align 8, !tbaa !151
  br label %.thread52

.thread52:                                        ; preds = %.sink.split.i.i, %bb.b, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread
  %i.t = phi i64 [ %i.m, %.sink.split.i.i ], [ 0, %bb.b ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread ]
  %i.u = phi ptr [ %i.g, %.sink.split.i.i ], [ %i.g, %bb.b ], [ %i.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread ]
  store i64 %i.t, ptr %i.u, align 8, !tbaa !174
  br label %bb.k

bb.f:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread
  %i.v = phi i64 [ %i.k, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread ], [ %i.h, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit ] ; 2 uses
  %i.w = phi ptr [ %i.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread ], [ %i.g, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit ]
  %i.x = phi i32 [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit.thread ], [ %i.f, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE4colsEv.exit ] ; 3 uses
  %.pre = sext i32 %i.x to i64
  %i.y = icmp slt i64 %i.v, %.pre
  br i1 %i.y, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.z = shl nsw i32 %i.x, 1
  %i.aa = sext i32 %i.z to i64                    ; 3 uses
  %.not.i.i26 = icmp eq i64 %i.v, %i.aa
  br i1 %.not.i.i26, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit29, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %2, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.ab) #30
  %i.ac = icmp sgt i32 %i.x, 0
  br i1 %i.ac, label %bb.i, label %.sink.split.i.i27

bb.i:                                             ; preds = %bb.h
  %i.ad = shl nuw nsw i64 %i.aa, 2
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #36 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %.sink.split.i.i27

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

.sink.split.i.i27:                                ; preds = %bb.i, %bb.h
  %.sink.i.i28 = phi ptr [ %i.ae, %bb.i ], [ null, %bb.h ]
  store ptr %.sink.i.i28, ptr %2, align 8, !tbaa !151
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit29

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit29: ; preds = %bb.g, %.sink.split.i.i27
  store i64 %i.aa, ptr %i.w, align 8, !tbaa !174
  br label %bb.k

bb.k:                                             ; preds = %.thread52, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit29, %bb.f
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !98  ; 2 uses
  %i.ai = load ptr, ptr %i.a, align 8, !tbaa !97  ; 4 uses
  %.not = icmp eq ptr %i.ah, %i.ai
  br i1 %.not, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %bb.k
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = ashr exact i64 %i.al, 2
  %i.an = load ptr, ptr %1, align 8, !tbaa !151
  br label %bb.l

._crit_edge39:                                    ; preds = %._crit_edge, %bb.k
  ret void

bb.l:                                             ; preds = %.lr.ph38, %._crit_edge
  %.02436 = phi i64 [ 0, %.lr.ph38 ], [ %i.bl, %._crit_edge ] ; 2 uses
  %.02535 = phi i64 [ 0, %.lr.ph38 ], [ %.1.lcssa, %._crit_edge ] ; 5 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %.02436
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !33 ; 2 uses
  %.not.i30 = icmp eq i32 %i.ap, 0
  br i1 %.not.i30, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.ai, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !33 ; 2 uses
  %i.au = load i32, ptr %i.ar, align 4, !tbaa !33
  %i.av = sub nsw i32 %i.au, %i.at
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit

bb.n:                                             ; preds = %bb.l
  %i.aw = load i32, ptr %i.ai, align 4, !tbaa !33
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit: ; preds = %bb.m, %bb.n
  %i.ax = phi i32 [ %i.at, %bb.m ], [ 0, %bb.n ]  ; 3 uses
  %i.ay = phi i32 [ %i.av, %bb.m ], [ %i.aw, %bb.n ] ; 4 uses
  %i.az = icmp sgt i32 %i.ay, 0
  br i1 %i.az, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit
  %i.ba = load ptr, ptr %2, align 8, !tbaa !151   ; 2 uses
  %i.bb = trunc i64 %.02535 to i32
  %i.bc = add i32 %i.ay, %i.bb
  %i.bd = zext nneg i32 %i.ay to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bd, 2147483640              ; 4 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %i.bf = add i32 %i.ax, %i.be
  %i.bg = add i64 %.02535, %n.vec                 ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ax, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add nsw <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.bh = getelementptr [4 x i8], ptr %i.ba, i64 %.02535
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nsw <4 x i32> %vec.ind, splat (i32 4)
  %i.bi = getelementptr [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %vec.ind, ptr %i.bi, align 4, !tbaa !33
  store <4 x i32> %step.add, ptr %i.bj, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <4 x i32> %vec.ind, splat (i32 8)
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !348

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.bd
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.02333.ph = phi i32 [ %i.ax, %.lr.ph ], [ %i.bf, %middle.block ]
  %.132.ph = phi i64 [ %.02535, %.lr.ph ], [ %i.bg, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit
  %.1.lcssa = phi i64 [ %.02535, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE11colsOfBlockEi.exit ], [ %i.bg, %middle.block ], [ %i.bn, %scalar.ph ]
  %i.bl = add nuw i64 %.02436, 1                  ; 2 uses
  %exitcond40.not = icmp eq i64 %i.bl, %i.am
  br i1 %exitcond40.not, label %._crit_edge39, label %bb.l, !llvm.loop !349

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.02333 = phi i32 [ %i.bm, %scalar.ph ], [ %.02333.ph, %scalar.ph.preheader ] ; 2 uses
  %.132 = phi i64 [ %i.bn, %scalar.ph ], [ %.132.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bm = add nsw i32 %.02333, 1
  %i.bn = add i64 %.132, 1                        ; 3 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %.132
  store i32 %.02333, ptr %i.bo, align 4, !tbaa !33
  %lftr.wideiv = trunc i64 %i.bn to i32
  %exitcond.not = icmp eq i32 %i.bc, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !350
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3g2o17LinearSolverEigenIN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEE21CholeskyDecomposition29analyzePatternWithPermutationERNS1_12SparseMatrixIdLi0EiEERKNS1_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %2, align 8, !tbaa !151    ; 8 uses
  %4 = ptrtoaddr ptr %i.b to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !174  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !174
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.f, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.b, label %thread-pre-split.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i:                 ; preds = %bb.a
  tail call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %i.d, i64 noundef 1)
  %.pr.i.i.i.i.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !174
  br label %bb.b

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i, %bb.a
  %i.g = phi i64 [ %.pr.i.i.i.i.i.i.i.i, %thread-pre-split.i.i.i.i.i.i.i.i ], [ %i.d, %bb.a ] ; 7 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !151  ; 8 uses
  %5 = ptrtoaddr ptr %i.h to i64
  %i.i = sdiv i64 %i.g, 4
  %i.j = shl nsw i64 %i.i, 2                      ; 6 uses
  %i.k = icmp sgt i64 %i.g, 3
  br i1 %i.k, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.b
  %i.l = icmp slt i64 %i.j, %i.g
  br i1 %i.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.m = sub i64 %i.g, %i.j                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.m, 8
  %i.n = sub i64 %4, %5
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.m, -8                       ; 3 uses
  %i.o = add i64 %i.j, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.p = add i64 %i.j, %index                     ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <4 x i32>, ptr %i.r, align 4, !tbaa !33
  %wide.load28 = load <4 x i32>, ptr %i.s, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %wide.load, ptr %i.q, align 4, !tbaa !33
  store <4 x i32> %wide.load28, ptr %i.t, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !351

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.o, %middle.block ] ; 4 uses
  %i.v = sub i64 %i.g, %.05.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29 ]
  %i.w = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33
  store i32 %i.y, ptr %i.w, align 4, !tbaa !33
  %i.z = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !352

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader29 ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.aa = sub i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.g
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.h, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.b, i64 %.05.i.i.i.i.i.i.i.i.i.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !33
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !33
  %i.af = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.af
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !33
  %i.aj = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.aj
  %i.al = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aj
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33
  store i32 %i.am, ptr %i.ak, align 4, !tbaa !33
  %i.an = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !33
  store i32 %i.aq, ptr %i.ao, align 4, !tbaa !33
  %i.ar = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !353

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.011.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.011.i.i.i.i.i.i.i.i.i
  %i.au = load <2 x i64>, ptr %i.at, align 16, !tbaa !94
  store <2 x i64> %i.au, ptr %i.as, align 16, !tbaa !94
  %i.av = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.aw = icmp slt i64 %i.av, %i.j
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, !llvm.loop !354

_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ax = load i64, ptr %i.c, align 8, !tbaa !174 ; 9 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit
  %i.ay = icmp sgt i64 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

bb.d:                                             ; preds = %bb.c
  %i.az = icmp samesign ugt i64 %i.ax, 4611686018427387903
  br i1 %i.az, label %.invoke.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ba = shl nuw i64 %i.ax, 2
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.ba) #36 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.invoke.i.i, label %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i

.invoke.i.i:                                      ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.d
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bd, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

common.resume:                                    ; preds = %bb.p, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %.pn11, %bb.p ], [ %i.cw, %bb.h ]
  resume { ptr, i32 } %common.resume.op

_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i, %bb.c
  %.sink.i.i.i.i.i = phi ptr [ %i.bb, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i.i ], [ null, %bb.c ] ; 8 uses
  %i.be = trunc i64 %i.ax to i32
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i
  %i.bg = load ptr, ptr %2, align 8, !tbaa !151   ; 5 uses
  %wide.trip.count.i = and i64 %i.ax, 2147483647
  %i.bh = add nsw i64 %wide.trip.count.i, -1
  %xtraiter30 = and i64 %i.ax, 3                  ; 3 uses
  %i.bi = icmp ult i64 %i.bh, 3
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.ax, 2147483644
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.e ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !33
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.bl
  %i.bn = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.bn, ptr %i.bm, align 4, !tbaa !33
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !33
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.bq
  %i.bs = trunc nuw nsw i64 %indvars.iv.next.i to i32
  store i32 %i.bs, ptr %i.br, align 4, !tbaa !33
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.1
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !33
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.bv
  %i.bx = trunc nuw nsw i64 %indvars.iv.next.i.1 to i32
  store i32 %i.bx, ptr %i.bw, align 4, !tbaa !33
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.next.i.2
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !33
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.ca
  %i.cc = trunc nuw nsw i64 %indvars.iv.next.i.2 to i32
  store i32 %i.cc, ptr %i.cb, align 4, !tbaa !33
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !3

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.e
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter30, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.f ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.epil
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i.i.i, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv.i.epil to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !33
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter30
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.f, !llvm.loop !355

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.f, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit
  %.sroa.017.0 = phi ptr [ %.sink.i.i.i.i.i, %_ZN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEC2IlEERKT_.exit.i ], [ null, %_ZN5Eigen17PermutationMatrixILin1ELin1EiEaSERKS1_.exit ], [ %.sink.i.i.i.i.i, %bb.f ], [ %.sink.i.i.i.i.i, %.loopexit.loopexit.unr-lcssa ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !181
  store ptr %.sroa.017.0, ptr %i.ci, align 8, !tbaa !181
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 144
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE:bb.a
  %bin.rdx = add <4 x i32> %i.bk, %i.bj
  %i.bm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1352

.lr.ph85.i.i.i.i.preheader1352:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.preheader ], [ %i.bm, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %.sroa.0.0.vec.extract.i.i.i.i.i.i, %bb.i ], [ %i.bm, %middle.block ], [ %i.cb, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bn = icmp slt i64 %i.ae, %i.b
  br i1 %i.bn, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bo = add i64 %.0.i.i.i.i.i.i.i.i, %i.ac
  %i.bp = sub i64 %i.b, %i.bo                     ; 3 uses
  %min.iters.check1170 = icmp ult i64 %i.bp, 8
  br i1 %min.iters.check1170, label %.lr.ph89.i.i.i.i.preheader1347, label %vector.ph1171

vector.ph1171:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1172 = and i64 %i.bp, -8                  ; 3 uses
  %i.bq = add i64 %i.ae, %n.vec1172
  %i.br = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bs = getelementptr [4 x i8], ptr %i.j, i64 %i.ae
  br label %vector.body1173

vector.body1173:                                  ; preds = %vector.body1173, %vector.ph1171
  %index1174 = phi i64 [ 0, %vector.ph1171 ], [ %index.next1179, %vector.body1173 ] ; 2 uses
  %vec.phi1175 = phi <4 x i32> [ %i.br, %vector.ph1171 ], [ %i.bv, %vector.body1173 ]
  %vec.phi1176 = phi <4 x i32> [ zeroinitializer, %vector.ph1171 ], [ %i.bw, %vector.body1173 ]
  %i.bt = getelementptr [4 x i8], ptr %i.bs, i64 %index1174 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load1177 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !33
  %wide.load1178 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !33
  %i.bv = add <4 x i32> %wide.load1177, %vec.phi1175 ; 2 uses
  %i.bw = add <4 x i32> %wide.load1178, %vec.phi1176 ; 2 uses
  %index.next1179 = add nuw i64 %index1174, 8     ; 2 uses
  %i.bx = icmp eq i64 %index.next1179, %n.vec1172
  br i1 %i.bx, label %middle.block1180, label %vector.body1173, !llvm.loop !384

middle.block1180:                                 ; preds = %vector.body1173
  %bin.rdx1181 = add <4 x i32> %i.bw, %i.bv
  %i.by = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1181) ; 2 uses
  %cmp.n1182 = icmp eq i64 %i.bp, %n.vec1172
  br i1 %cmp.n1182, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1347

.lr.ph89.i.i.i.i.preheader1347:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1180
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bq, %middle.block1180 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.by, %middle.block1180 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1352, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cc, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1352 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cb, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1352 ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !33
  %i.cb = add nsw i32 %i.ca, %.07582.i.i.i.i      ; 2 uses
  %i.cc = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cc, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !385

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1347, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cg, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1347 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cf, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1347 ]
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !33
  %i.cf = add nsw i32 %i.ce, %.187.i.i.i.i        ; 2 uses
  %i.cg = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.ch = icmp slt i64 %i.cg, %i.b
  br i1 %i.ch, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !386

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ci = load i32, ptr %i.j, align 4, !tbaa !33  ; 3 uses
  %i.cj = icmp sgt i64 %i.b, 1
  br i1 %i.cj, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.ck = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1186 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1186, label %.lr.ph94.i.i.i.i.preheader1343, label %vector.ph1187

vector.ph1187:                                    ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec1188 = and i64 %i.ck, -8                  ; 3 uses
  %i.cl = or disjoint i64 %n.vec1188, 1
  %i.cm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ci, i64 0
  br label %vector.body1189

vector.body1189:                                  ; preds = %vector.body1189, %vector.ph1187
  %index1190 = phi i64 [ 0, %vector.ph1187 ], [ %index.next1195, %vector.body1189 ] ; 2 uses
  %vec.phi1191 = phi <4 x i32> [ %i.cm, %vector.ph1187 ], [ %i.cq, %vector.body1189 ]
  %vec.phi1192 = phi <4 x i32> [ zeroinitializer, %vector.ph1187 ], [ %i.cr, %vector.body1189 ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1190 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %wide.load1193 = load <4 x i32>, ptr %i.co, align 4, !tbaa !33
  %wide.load1194 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !33
  %i.cq = add <4 x i32> %wide.load1193, %vec.phi1191 ; 2 uses
  %i.cr = add <4 x i32> %wide.load1194, %vec.phi1192 ; 2 uses
  %index.next1195 = add nuw i64 %index1190, 8     ; 2 uses
  %i.cs = icmp eq i64 %index.next1195, %n.vec1188
  br i1 %i.cs, label %middle.block1196, label %vector.body1189, !llvm.loop !387

middle.block1196:                                 ; preds = %vector.body1189
  %bin.rdx1197 = add <4 x i32> %i.cr, %i.cq
  %i.ct = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1197) ; 2 uses
  %cmp.n1198 = icmp eq i64 %i.ck, %n.vec1188
  br i1 %cmp.n1198, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1343

.lr.ph94.i.i.i.i.preheader1343:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1196
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cl, %middle.block1196 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ci, %.lr.ph94.i.i.i.i.preheader ], [ %i.ct, %middle.block1196 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1343, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cx, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1343 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1343 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !33
  %i.cw = add nsw i32 %i.cv, %.291.i.i.i.i        ; 2 uses
  %i.cx = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cx, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !388

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1180, %middle.block1196, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cw, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ci, %bb.j ], [ %i.ct, %middle.block1196 ], [ %i.by, %middle.block1180 ], [ %i.cf, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.cy = add nsw i32 %i.c, 1                     ; 11 uses
  %i.cz = sext i32 %i.cy to i64                   ; 7 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !174
  %.not.i.i.i = icmp eq i64 %i.db, %i.cz
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dc = load ptr, ptr %1, align 8, !tbaa !151
  tail call void @free(ptr noundef %i.dc) #30
  %i.dd = icmp sgt i32 %i.c, -1
  br i1 %i.dd, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.de = shl nuw nsw i64 %i.cz, 2
  %i.df = tail call noalias ptr @malloc(i64 noundef %i.de) #36 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.m, label %.sink.split.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.dh = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dh, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.dh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

.sink.split.i.i.i:                                ; preds = %bb.l, %bb.k
  %.sink.i.i.i = phi ptr [ %i.df, %bb.l ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !151
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.cz, ptr %i.da, align 8, !tbaa !174
  %i.di = sdiv i32 %.0.i, 5
  %i.dj = shl nsw i32 %i.c, 1
  %i.dk = add i32 %.0.i, %i.dj
  %i.dl = add i32 %i.dk, %i.di                    ; 2 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dn, i64 noundef %i.dm, double noundef 0.000000e+00)
  %i.do = shl i32 %i.c, 3
  %i.dp = add i32 %i.do, 8
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.n, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit

bb.n:                                             ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.dr = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dr, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.dr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit: ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.ds = shl nsw i64 %i.cz, 5                    ; 4 uses
  %i.dt = icmp ult i64 %i.ds, 131073
  br i1 %i.dt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit
  %i.du = or disjoint i64 %i.ds, 15
  %i.dv = alloca i8, i64 %i.du, align 16
  br label %bb.r

bb.p:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit
  %i.dw = tail call noalias ptr @malloc(i64 noundef %i.ds) #36 ; 2 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dy = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dy, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.dy, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

bb.r:                                             ; preds = %bb.o, %bb.p
  %i.dz = phi ptr [ %i.dv, %bb.o ], [ %i.dw, %bb.p ] ; 31 uses
  %2 = ptrtoaddr ptr %i.dz to i64                 ; 8 uses
  %i.ea = icmp ugt i64 %i.ds, 131072              ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.cz ; 17 uses
  %i.ec = shl i32 %i.cy, 1
  %i.ed = sext i32 %i.ec to i64                   ; 4 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ed ; 16 uses
  %i.ef = mul i32 %i.cy, 3
  %i.eg = sext i32 %i.ef to i64                   ; 4 uses
  %i.eh = getelementptr [4 x i8], ptr %i.dz, i64 %i.eg ; 16 uses
  %i.ei = shl i32 %i.cy, 2
  %i.ej = sext i32 %i.ei to i64                   ; 3 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ej ; 11 uses
  %i.el = mul i32 %i.cy, 5
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.em ; 9 uses
  %i.eo = mul i32 %i.cy, 6
  %i.ep = sext i32 %i.eo to i64                   ; 3 uses
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ep ; 22 uses
  %i.er = mul i32 %i.cy, 7
  %i.es = sext i32 %i.er to i64                   ; 3 uses
  %i.et = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.es ; 4 uses
  %i.eu = load ptr, ptr %1, align 8, !tbaa !151
  %.fr = freeze ptr %i.eu                         ; 13 uses
  %.fr1217 = ptrtoaddr ptr %.fr to i64            ; 8 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !136 ; 29 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !139 ; 26 uses
  %i.ez = icmp sgt i32 %i.c, 0                    ; 4 uses
  br i1 %i.ez, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = and i64 %i.b, 2147483647     ; 5 uses
  %min.iters.check1203 = icmp samesign ult i64 %wide.trip.count, 12
  br i1 %min.iters.check1203, label %.lr.ph.preheader1342, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.fa = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %i.fb = getelementptr i8, ptr %i.dz, i64 %i.fa
  %i.fc = getelementptr i8, ptr %i.ew, i64 %i.fa
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %bound0 = icmp ult ptr %i.dz, %i.fd
  %bound1 = icmp ult ptr %i.ew, %i.fb
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader1342, label %vector.ph1204

vector.ph1204:                                    ; preds = %vector.memcheck
  %n.vec1205 = and i64 %i.b, 2147483640           ; 3 uses
  br label %vector.body1206

vector.body1206:                                  ; preds = %vector.body1206, %vector.ph1204
  %index1207 = phi i64 [ 0, %vector.ph1204 ], [ %index.next1212, %vector.body1206 ] ; 3 uses
  %i.fe = getelementptr [4 x i8], ptr %i.ew, i64 %index1207 ; 4 uses
  %i.ff = getelementptr i8, ptr %i.fe, i64 4
  %i.fg = getelementptr i8, ptr %i.fe, i64 20
  %wide.load1208 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !33, !alias.scope !424
  %wide.load1209 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !33, !alias.scope !424
  %i.fh = getelementptr i8, ptr %i.fe, i64 16
  %wide.load1210 = load <4 x i32>, ptr %i.fe, align 4, !tbaa !33, !alias.scope !424
  %wide.load1211 = load <4 x i32>, ptr %i.fh, align 4, !tbaa !33, !alias.scope !424
  %i.fi = sub nsw <4 x i32> %wide.load1208, %wide.load1210
  %i.fj = sub nsw <4 x i32> %wide.load1209, %wide.load1211
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index1207 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  store <4 x i32> %i.fi, ptr %i.fk, align 4, !tbaa !33, !alias.scope !425, !noalias !424
  store <4 x i32> %i.fj, ptr %i.fl, align 4, !tbaa !33, !alias.scope !425, !noalias !424
  %index.next1212 = add nuw i64 %index1207, 8     ; 2 uses
  %i.fm = icmp eq i64 %index.next1212, %n.vec1205
  br i1 %i.fm, label %middle.block1213, label %vector.body1206, !llvm.loop !392

middle.block1213:                                 ; preds = %vector.body1206
  %cmp.n1214 = icmp eq i64 %wide.trip.count, %n.vec1205
  br i1 %cmp.n1214, label %._crit_edge.thread, label %.lr.ph.preheader1342

.lr.ph.preheader1342:                             ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block1213
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec1205, %middle.block1213 ] ; 3 uses
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader1342, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader1342 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader1342 ]
  %i.fn = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv.prol ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 4
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !33
  %i.fq = load i32, ptr %i.fn, align 4, !tbaa !33
  %i.fr = sub nsw i32 %i.fp, %i.fq
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.prol
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !33
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !393

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader1342
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader1342 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.ft = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.fu = icmp ugt i64 %i.ft, -4
  br i1 %i.fu, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.fv = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 4
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !33
  %i.fy = load i32, ptr %i.fv, align 4, !tbaa !33
  %i.fz = sub nsw i32 %i.fx, %i.fy
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gb = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv.next ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 4
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !33
  %i.ge = load i32, ptr %i.gb, align 4, !tbaa !33
  %i.gf = sub nsw i32 %i.gd, %i.ge
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !33
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv.next.1 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gh, i64 4
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !33
  %i.gk = load i32, ptr %i.gh, align 4, !tbaa !33
  %i.gl = sub nsw i32 %i.gj, %i.gk
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.1
  store i32 %i.gl, ptr %i.gm, align 4, !tbaa !33
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.gn = getelementptr [4 x i8], ptr %i.ew, i64 %indvars.iv.next.2 ; 2 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !33
  %i.gq = load i32, ptr %i.gn, align 4, !tbaa !33
  %i.gr = sub nsw i32 %i.gp, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv.next.2
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !33
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.thread, label %.lr.ph, !llvm.loop !394

._crit_edge.thread:                               ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block1213
  %sext1079 = and i64 %i.b, 2147483647            ; 2 uses
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %sext1079
  store i32 0, ptr %i.gt, align 4, !tbaa !33
  br label %.lr.ph780.preheader

bb.s:                                             ; preds = %._crit_edge922
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br i1 %i.ea, label %bb.ck, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit538

._crit_edge:                                      ; preds = %bb.r
  %sext = shl i64 %i.b, 32
  %i.gv = ashr exact i64 %sext, 32                ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.gv
  store i32 0, ptr %i.gw, align 4, !tbaa !33
  %.not777 = icmp slt i32 %i.c, 0
  br i1 %.not777, label %._crit_edge790, label %.lr.ph780.preheader

.lr.ph780.preheader:                              ; preds = %._crit_edge.thread, %._crit_edge
  %i.gx = phi i64 [ %sext1079, %._crit_edge.thread ], [ %i.gv, %._crit_edge ] ; 4 uses
  %wide.trip.count935 = zext nneg i32 %i.cy to i64 ; 3 uses
  %min.iters.check1288 = icmp ult i32 %i.cy, 148
  br i1 %min.iters.check1288, label %.lr.ph780.preheader1341, label %vector.memcheck1216

vector.memcheck1216:                              ; preds = %.lr.ph780.preheader
  %i.gy = shl nsw i64 %i.eg, 2                    ; 7 uses
  %i.gz = add i64 %i.gy, %2
  %i.ha = sub i64 %i.gz, %.fr1217
  %diff.check = icmp ugt i64 %i.ha, -32
  %i.hb = shl nsw i64 %i.ed, 2                    ; 7 uses
  %i.hc = sub nsw i64 %i.gy, %i.hb
  %diff.check1218 = icmp ugt i64 %i.hc, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1218
  %i.hd = shl nsw i64 %i.es, 2                    ; 7 uses
  %i.he = sub nsw i64 %i.gy, %i.hd
  %diff.check1219 = icmp ugt i64 %i.he, -32
  %conflict.rdx1220 = or i1 %conflict.rdx, %diff.check1219
  %i.hf = shl nsw i64 %i.cz, 2                    ; 7 uses
  %i.hg = sub nsw i64 %i.gy, %i.hf
  %diff.check1221 = icmp ugt i64 %i.hg, -32
  %conflict.rdx1222 = or i1 %conflict.rdx1220, %diff.check1221
  %i.hh = shl nsw i64 %i.ep, 2                    ; 7 uses
  %i.hi = sub nsw i64 %i.gy, %i.hh
  %diff.check1223 = icmp ugt i64 %i.hi, -32
  %conflict.rdx1224 = or i1 %conflict.rdx1222, %diff.check1223
  %i.hj = shl nsw i64 %i.ej, 2                    ; 7 uses
  %i.hk = sub nsw i64 %i.gy, %i.hj
  %diff.check1225 = icmp ugt i64 %i.hk, -32
  %conflict.rdx1226 = or i1 %conflict.rdx1224, %diff.check1225
  %i.hl = shl nsw i64 %i.em, 2                    ; 8 uses
  %i.hm = sub nsw i64 %i.gy, %i.hl
  %diff.check1227 = icmp ugt i64 %i.hm, -32
  %conflict.rdx1228 = or i1 %conflict.rdx1226, %diff.check1227
  %i.hn = shl nsw i64 %i.eg, 2
  %diff.check1229 = icmp ugt i64 %i.hn, -32
  %conflict.rdx1230 = or i1 %conflict.rdx1228, %diff.check1229
  %i.ho = add i64 %i.hb, %2
  %i.hp = sub i64 %.fr1217, %i.ho
  %diff.check1231 = icmp ugt i64 %i.hp, -32
  %conflict.rdx1232 = or i1 %conflict.rdx1230, %diff.check1231
  %i.hq = add i64 %i.hd, %2
  %i.hr = sub i64 %.fr1217, %i.hq
  %diff.check1233 = icmp ugt i64 %i.hr, -32
  %conflict.rdx1234 = or i1 %conflict.rdx1232, %diff.check1233
  %i.hs = add i64 %i.hf, %2
  %i.ht = sub i64 %.fr1217, %i.hs
  %diff.check1235 = icmp ugt i64 %i.ht, -32
  %conflict.rdx1236 = or i1 %conflict.rdx1234, %diff.check1235
  %i.hu = add i64 %i.hh, %2
  %i.hv = sub i64 %.fr1217, %i.hu
  %diff.check1237 = icmp ugt i64 %i.hv, -32
  %conflict.rdx1238 = or i1 %conflict.rdx1236, %diff.check1237
  %i.hw = add i64 %i.hj, %2
  %i.hx = sub i64 %.fr1217, %i.hw
  %diff.check1239 = icmp ugt i64 %i.hx, -32
  %conflict.rdx1240 = or i1 %conflict.rdx1238, %diff.check1239
  %i.hy = add i64 %i.hl, %2
  %i.hz = sub i64 %.fr1217, %i.hy
  %diff.check1241 = icmp ugt i64 %i.hz, -32
  %conflict.rdx1242 = or i1 %conflict.rdx1240, %diff.check1241
  %i.ia = sub i64 %.fr1217, %2
  %diff.check1243 = icmp ugt i64 %i.ia, -32
  %conflict.rdx1244 = or i1 %conflict.rdx1242, %diff.check1243
  %i.ib = sub nsw i64 %i.hb, %i.hd
  %diff.check1245 = icmp ugt i64 %i.ib, -32
  %conflict.rdx1246 = or i1 %conflict.rdx1244, %diff.check1245
  %i.ic = sub nsw i64 %i.hb, %i.hf
  %diff.check1247 = icmp ugt i64 %i.ic, -32
  %conflict.rdx1248 = or i1 %conflict.rdx1246, %diff.check1247
  %i.id = sub nsw i64 %i.hb, %i.hh
  %diff.check1249 = icmp ugt i64 %i.id, -32
  %conflict.rdx1250 = or i1 %conflict.rdx1248, %diff.check1249
  %i.ie = sub nsw i64 %i.hb, %i.hj
  %diff.check1251 = icmp ugt i64 %i.ie, -32
  %conflict.rdx1252 = or i1 %conflict.rdx1250, %diff.check1251
  %i.if = sub nsw i64 %i.hb, %i.hl
  %diff.check1253 = icmp ugt i64 %i.if, -32
  %conflict.rdx1254 = or i1 %conflict.rdx1252, %diff.check1253
  %i.ig = shl nsw i64 %i.ed, 2
  %diff.check1255 = icmp ugt i64 %i.ig, -32
  %conflict.rdx1256 = or i1 %conflict.rdx1254, %diff.check1255
  %i.ih = sub nsw i64 %i.hd, %i.hf
  %diff.check1257 = icmp ugt i64 %i.ih, -32
  %conflict.rdx1258 = or i1 %conflict.rdx1256, %diff.check1257
  %i.ii = sub nsw i64 %i.hd, %i.hh
  %diff.check1259 = icmp ugt i64 %i.ii, -32
  %conflict.rdx1260 = or i1 %conflict.rdx1258, %diff.check1259
  %i.ij = sub nsw i64 %i.hd, %i.hj
  %diff.check1261 = icmp ugt i64 %i.ij, -32
  %conflict.rdx1262 = or i1 %conflict.rdx1260, %diff.check1261
  %i.ik = sub nsw i64 %i.hd, %i.hl
  %diff.check1263 = icmp ugt i64 %i.ik, -32
  %conflict.rdx1264 = or i1 %conflict.rdx1262, %diff.check1263
  %i.il = shl nsw i64 %i.es, 2
  %diff.check1265 = icmp ugt i64 %i.il, -32
  %conflict.rdx1266 = or i1 %conflict.rdx1264, %diff.check1265
  %i.im = sub nsw i64 %i.hf, %i.hh
  %diff.check1267 = icmp ugt i64 %i.im, -32
  %conflict.rdx1268 = or i1 %conflict.rdx1266, %diff.check1267
  %i.in = sub nsw i64 %i.hf, %i.hj
  %diff.check1269 = icmp ugt i64 %i.in, -32
  %conflict.rdx1270 = or i1 %conflict.rdx1268, %diff.check1269
  %i.io = sub nsw i64 %i.hf, %i.hl
  %diff.check1271 = icmp ugt i64 %i.io, -32
  %conflict.rdx1272 = or i1 %conflict.rdx1270, %diff.check1271
  %i.ip = shl nsw i64 %i.cz, 2
  %diff.check1273 = icmp ugt i64 %i.ip, -32
  %conflict.rdx1274 = or i1 %conflict.rdx1272, %diff.check1273
  %i.iq = sub nsw i64 %i.hh, %i.hj
  %diff.check1275 = icmp ugt i64 %i.iq, -32
  %conflict.rdx1276 = or i1 %conflict.rdx1274, %diff.check1275
  %i.ir = sub nsw i64 %i.hh, %i.hl
  %diff.check1277 = icmp ugt i64 %i.ir, -32
  %conflict.rdx1278 = or i1 %conflict.rdx1276, %diff.check1277
  %i.is = shl nsw i64 %i.ep, 2
  %diff.check1279 = icmp ugt i64 %i.is, -32
  %conflict.rdx1280 = or i1 %conflict.rdx1278, %diff.check1279
  %i.it = sub nsw i64 %i.hj, %i.hl
  %diff.check1281 = icmp ugt i64 %i.it, -32
  %conflict.rdx1282 = or i1 %conflict.rdx1280, %diff.check1281
  %i.iu = shl nsw i64 %i.ej, 2
  %diff.check1283 = icmp ugt i64 %i.iu, -32
  %conflict.rdx1284 = or i1 %conflict.rdx1282, %diff.check1283
  %diff.check1285 = icmp ult i64 %i.hl, 32
  %conflict.rdx1286 = or i1 %conflict.rdx1284, %diff.check1285
  br i1 %conflict.rdx1286, label %.lr.ph780.preheader1341, label %vector.ph1289

vector.ph1289:                                    ; preds = %vector.memcheck1216
  %n.vec1290 = and i64 %wide.trip.count935, 2147483640 ; 3 uses
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1289
  %index1292 = phi i64 [ 0, %vector.ph1289 ], [ %index.next1295, %vector.body1291 ] ; 10 uses
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %index1292 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.iv, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1), ptr %i.iw, align 4, !tbaa !33
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %index1292 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.ix, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1), ptr %i.iy, align 4, !tbaa !33
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index1292 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.iz, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1), ptr %i.ja, align 4, !tbaa !33
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %index1292 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.jb, align 4, !tbaa !33
  store <4 x i32> splat (i32 -1), ptr %i.jc, align 4, !tbaa !33
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index1292 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 16
  store <4 x i32> splat (i32 1), ptr %i.jd, align 4, !tbaa !33
  store <4 x i32> splat (i32 1), ptr %i.je, align 4, !tbaa !33
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1292 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  store <4 x i32> splat (i32 1), ptr %i.jf, align 4, !tbaa !33
  store <4 x i32> splat (i32 1), ptr %i.jg, align 4, !tbaa !33
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %index1292 ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  store <4 x i32> zeroinitializer, ptr %i.jh, align 4, !tbaa !33
  store <4 x i32> zeroinitializer, ptr %i.ji, align 4, !tbaa !33
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %index1292 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load1293 = load <4 x i32>, ptr %i.jj, align 4, !tbaa !33
  %wide.load1294 = load <4 x i32>, ptr %i.jk, align 4, !tbaa !33
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %index1292 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store <4 x i32> %wide.load1293, ptr %i.jl, align 4, !tbaa !33
  store <4 x i32> %wide.load1294, ptr %i.jm, align 4, !tbaa !33
  %index.next1295 = add nuw i64 %index1292, 8     ; 2 uses
  %i.jn = icmp eq i64 %index.next1295, %n.vec1290
  br i1 %i.jn, label %middle.block1296, label %vector.body1291, !llvm.loop !395

middle.block1296:                                 ; preds = %vector.body1291
  %cmp.n1297 = icmp eq i64 %n.vec1290, %wide.trip.count935
  br i1 %cmp.n1297, label %._crit_edge781, label %.lr.ph780.preheader1341

.lr.ph780.preheader1341:                          ; preds = %vector.memcheck1216, %.lr.ph780.preheader, %middle.block1296
  %indvars.iv932.ph = phi i64 [ 0, %vector.memcheck1216 ], [ 0, %.lr.ph780.preheader ], [ %n.vec1290, %middle.block1296 ]
  br label %.lr.ph780

.lr.ph780:                                        ; preds = %.lr.ph780.preheader1341, %.lr.ph780
  %indvars.iv932 = phi i64 [ %indvars.iv.next933, %.lr.ph780 ], [ %indvars.iv932.ph, %.lr.ph780.preheader1341 ] ; 10 uses
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv932
  store i32 -1, ptr %i.jo, align 4, !tbaa !33
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %.fr, i64 %indvars.iv932
  store i32 -1, ptr %i.jp, align 4, !tbaa !33
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv932
  store i32 -1, ptr %i.jq, align 4, !tbaa !33
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv932
  store i32 -1, ptr %i.jr, align 4, !tbaa !33
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv932
  store i32 1, ptr %i.js, align 4, !tbaa !33
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %indvars.iv932
  store i32 1, ptr %i.jt, align 4, !tbaa !33
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv932
  store i32 0, ptr %i.ju, align 4, !tbaa !33
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %indvars.iv932
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !33
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %indvars.iv932
  store i32 %i.jw, ptr %i.jx, align 4, !tbaa !33
  %indvars.iv.next933 = add nuw nsw i64 %indvars.iv932, 1 ; 2 uses
  %exitcond936.not = icmp eq i64 %indvars.iv.next933, %wide.trip.count935
  br i1 %exitcond936.not, label %._crit_edge781, label %.lr.ph780, !llvm.loop !396

._crit_edge781:                                   ; preds = %.lr.ph780, %middle.block1296
  %i.jy = icmp eq i32 %i.c, 0
  br i1 %i.jy, label %._crit_edge790, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge781
  %wide.trip.count.i = and i64 %i.b, 2147483647   ; 3 uses
  %min.iters.check1300 = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check1300, label %.lr.ph.i.preheader, label %vector.ph1301

vector.ph1301:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1302 = and i64 %i.b, 2147483640           ; 3 uses
  br label %vector.body1303

vector.body1303:                                  ; preds = %pred.store.continue1320, %vector.ph1301
  %index1304 = phi i64 [ 0, %vector.ph1301 ], [ %index.next1321, %pred.store.continue1320 ] ; 9 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1304 ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16
  %wide.load1305 = load <4 x i32>, ptr %i.jz, align 4, !tbaa !33
  %wide.load1306 = load <4 x i32>, ptr %i.ka, align 4, !tbaa !33
  %i.kb = icmp ne <4 x i32> %wide.load1305, zeroinitializer ; 4 uses
  %i.kc = icmp ne <4 x i32> %wide.load1306, zeroinitializer ; 4 uses
  %i.kd = extractelement <4 x i1> %i.kb, i64 0
  br i1 %i.kd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1303
  store i32 1, ptr %i.jz, align 4, !tbaa !33
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1303
  %i.ke = extractelement <4 x i1> %i.kb, i64 1
  br i1 %i.ke, label %pred.store.if1307, label %pred.store.continue1308

pred.store.if1307:                                ; preds = %pred.store.continue
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1304
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 4
  store i32 1, ptr %i.kg, align 4, !tbaa !33
  br label %pred.store.continue1308

pred.store.continue1308:                          ; preds = %pred.store.if1307, %pred.store.continue
  %i.kh = extractelement <4 x i1> %i.kb, i64 2
  br i1 %i.kh, label %pred.store.if1309, label %pred.store.continue1310

pred.store.if1309:                                ; preds = %pred.store.continue1308
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1304
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  store i32 1, ptr %i.kj, align 4, !tbaa !33
  br label %pred.store.continue1310

pred.store.continue1310:                          ; preds = %pred.store.if1309, %pred.store.continue1308
  %i.kk = extractelement <4 x i1> %i.kb, i64 3
  br i1 %i.kk, label %pred.store.if1311, label %pred.store.continue1312

pred.store.if1311:                                ; preds = %pred.store.continue1310
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %index1304
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 12
  store i32 1, ptr %i.km, align 4, !tbaa !33
end_hunk_1
begin_hunk_2_@_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS6_ERS1_:bb.a
  %.in.v.i = select i1 %i.o, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !63 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.e, !llvm.loop !472

._crit_edge.i:                                    ; preds = %bb.e
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.d
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.a, %bb.d ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !38
  %i.r = icmp eq ptr %.019.lcssa29.i, %i.q
  br i1 %i.r, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread.i
  %i.s = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #34 ; 2 uses
  %.phi.trans.insert80 = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.pre81 = load i32, ptr %.phi.trans.insert80, align 4, !tbaa !33
  %.pre82 = load i32, ptr %2, align 4, !tbaa !33
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge.i
  %i.t = phi i32 [ %.pre82, %bb.f ], [ %i.l, %._crit_edge.i ]
  %i.u = phi i32 [ %.pre81, %bb.f ], [ %i.n, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.s, %bb.f ], [ %.02024.i, %._crit_edge.i ]
  %i.v = icmp slt i32 %i.u, %i.t                  ; 2 uses
  %spec.select.i = select i1 %i.v, ptr null, ptr %.sroa.05.0.i
  %spec.select21.i = select i1 %i.v, ptr %.019.lcssa28.i, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i32, ptr %2, align 4, !tbaa !33     ; 8 uses
  %i.y = load i32, ptr %i.w, align 4, !tbaa !33   ; 2 uses
  %i.z = icmp slt i32 %i.x, %i.y
  br i1 %i.z, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !63 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !33
  %i.ag = icmp slt i32 %i.af, %i.x
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !190
  %i.aj = icmp eq ptr %i.ai, null                 ; 2 uses
  %spec.select = select i1 %i.aj, ptr null, ptr %1
  %spec.select71 = select i1 %i.aj, ptr %i.ad, ptr %1
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i10 = load ptr, ptr %i.ak, align 8, !tbaa !63 ; 2 uses
  %.not23.i11 = icmp eq ptr %.02022.i10, null
  br i1 %.not23.i11, label %._crit_edge.thread.i27, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %bb.l, %.lr.ph.i12
  %.02024.i13 = phi ptr [ %.020.i16, %.lr.ph.i12 ], [ %.02022.i10, %bb.l ] ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 32
  %i.am = load i32, ptr %i.al, align 4, !tbaa !33 ; 2 uses
  %i.an = icmp slt i32 %i.x, %i.am                ; 2 uses
  %.in.v.i14 = select i1 %i.an, i64 16, i64 24
  %.in.i15 = getelementptr inbounds nuw i8, ptr %.02024.i13, i64 %.in.v.i14
  %.020.i16 = load ptr, ptr %.in.i15, align 8, !tbaa !63 ; 2 uses
  %.not.i17 = icmp eq ptr %.020.i16, null
  br i1 %.not.i17, label %._crit_edge.i18, label %.lr.ph.i12, !llvm.loop !472

._crit_edge.i18:                                  ; preds = %.lr.ph.i12
  br i1 %i.an, label %._crit_edge.thread.i27, label %bb.n

._crit_edge.thread.i27:                           ; preds = %._crit_edge.i18, %bb.l
  %.019.lcssa29.i28 = phi ptr [ %.02024.i13, %._crit_edge.i18 ], [ %i.a, %bb.l ] ; 4 uses
  %i.ao = icmp eq ptr %.019.lcssa29.i28, %i.ab
  br i1 %i.ao, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.m

bb.m:                                             ; preds = %._crit_edge.thread.i27
  %i.ap = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i28) #34 ; 2 uses
  %.phi.trans.insert78 = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %.pre79 = load i32, ptr %.phi.trans.insert78, align 4, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i18
  %i.aq = phi i32 [ %.pre79, %bb.m ], [ %i.am, %._crit_edge.i18 ]
  %.019.lcssa28.i19 = phi ptr [ %.019.lcssa29.i28, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %.sroa.05.0.i20 = phi ptr [ %i.ap, %bb.m ], [ %.02024.i13, %._crit_edge.i18 ]
  %i.ar = icmp slt i32 %i.aq, %i.x                ; 2 uses
  %spec.select.i21 = select i1 %i.ar, ptr null, ptr %.sroa.05.0.i20
  %spec.select21.i22 = select i1 %i.ar, ptr %.019.lcssa28.i19, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.o:                                             ; preds = %bb.h
  %i.as = icmp slt i32 %i.y, %i.x
  br i1 %i.as, label %bb.p, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.p:                                             ; preds = %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !63 ; 2 uses
  %i.av = icmp eq ptr %i.au, %1
  br i1 %i.av, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %1) #34 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !33
  %i.az = icmp slt i32 %i.x, %i.ay
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !190
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %spec.select72 = select i1 %i.bc, ptr null, ptr %i.aw
  %spec.select73 = select i1 %i.bc, ptr %1, ptr %i.aw
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

bb.s:                                             ; preds = %bb.q
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.02022.i30 = load ptr, ptr %i.bd, align 8, !tbaa !63 ; 2 uses
  %.not23.i31 = icmp eq ptr %.02022.i30, null
  br i1 %.not23.i31, label %._crit_edge.thread.i47, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %bb.s, %.lr.ph.i32
  %.02024.i33 = phi ptr [ %.020.i36, %.lr.ph.i32 ], [ %.02022.i30, %bb.s ] ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 32
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33 ; 2 uses
  %i.bg = icmp slt i32 %i.x, %i.bf                ; 2 uses
  %.in.v.i34 = select i1 %i.bg, i64 16, i64 24
  %.in.i35 = getelementptr inbounds nuw i8, ptr %.02024.i33, i64 %.in.v.i34
  %.020.i36 = load ptr, ptr %.in.i35, align 8, !tbaa !63 ; 2 uses
  %.not.i37 = icmp eq ptr %.020.i36, null
  br i1 %.not.i37, label %._crit_edge.i38, label %.lr.ph.i32, !llvm.loop !472

._crit_edge.i38:                                  ; preds = %.lr.ph.i32
  br i1 %i.bg, label %._crit_edge.thread.i47, label %bb.u

._crit_edge.thread.i47:                           ; preds = %._crit_edge.i38, %bb.s
  %.019.lcssa29.i48 = phi ptr [ %.02024.i33, %._crit_edge.i38 ], [ %i.a, %bb.s ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = icmp eq ptr %.019.lcssa29.i48, %i.bi
  br i1 %i.bj, label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i47
  %i.bk = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i48) #34 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !33
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i38
  %i.bl = phi i32 [ %.pre, %bb.t ], [ %i.bf, %._crit_edge.i38 ]
  %.019.lcssa28.i39 = phi ptr [ %.019.lcssa29.i48, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %.sroa.05.0.i40 = phi ptr [ %i.bk, %bb.t ], [ %.02024.i33, %._crit_edge.i38 ]
  %i.bm = icmp slt i32 %i.bl, %i.x                ; 2 uses
  %spec.select.i41 = select i1 %i.bm, ptr null, ptr %.sroa.05.0.i40
  %spec.select21.i42 = select i1 %i.bm, ptr %.019.lcssa28.i39, ptr null
  br label %_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit

_ZNSt8_Rb_treeIiSt4pairIKiPN5Eigen6MatrixIdLi1ELi1ELi0ELi1ELi1EEEESt10_Select1stIS6_ESt4lessIiESaIS6_EE24_M_get_insert_unique_posERS1_.exit: ; preds = %bb.u, %._crit_edge.thread.i47, %bb.n, %._crit_edge.thread.i27, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.070.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select72, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i27 ], [ %spec.select.i, %bb.g ], [ %spec.select.i21, %bb.n ], [ %spec.select.i41, %bb.u ], [ null, %._crit_edge.thread.i47 ]
  %.sroa.12.2 = phi ptr [ %i.au, %bb.p ], [ %spec.select71, %bb.k ], [ %i.f, %bb.c ], [ %spec.select73, %bb.r ], [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %i.ab, %bb.i ], [ null, %bb.o ], [ %.019.lcssa29.i28, %._crit_edge.thread.i27 ], [ %spec.select21.i, %bb.g ], [ %spec.select21.i22, %bb.n ], [ %spec.select21.i42, %bb.u ], [ %.019.lcssa29.i48, %._crit_edge.thread.i47 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.070.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE11_solve_implINS_3MapIKNS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS9_ISB_Li0ESE_EEEEvRKNS_10MatrixBaseIT_EERNSH_IT0_EE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::TriangularView", align 8 ; 5 uses
  %4 = alloca %"class.Eigen::TriangularView.384", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !123
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.am

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !174  ; 4 uses
  %i.f = icmp sgt i64 %i.e, 0
  %.sroa.495.8.copyload = load ptr, ptr %1, align 8 ; 20 uses
  %.sroa.495.8.copyload196 = ptrtoaddr ptr %.sroa.495.8.copyload to i64 ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.sroa.696.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.696.8.copyload = load i64, ptr %.sroa.696.8..sroa_idx, align 8 ; 5 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !130    ; 8 uses
  %i.h = icmp eq ptr %i.g, %.sroa.495.8.copyload
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, %.sroa.696.8.copyload
  %i.l = select i1 %i.h, i1 %i.k, i1 false
  br i1 %i.l, label %bb.d, label %.preheader86.i

.preheader86.i:                                   ; preds = %bb.c
  %i.m = icmp sgt i64 %.sroa.696.8.copyload, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i:                                         ; preds = %.preheader86.i
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !151  ; 5 uses
  %xtraiter381 = and i64 %.sroa.696.8.copyload, 3 ; 3 uses
  %i.o = icmp ult i64 %.sroa.696.8.copyload, 4
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.696.8.copyload, 9223372036854775804
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %calloc.i = tail call ptr @calloc(i64 1, i64 %i.e) ; 5 uses
  %i.p = icmp eq ptr %calloc.i, null
  br i1 %i.p, label %.noexc.i.i, label %.preheader.lr.ph.i

.noexc.i.i:                                       ; preds = %bb.d
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !18
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

.preheader.lr.ph.i:                               ; preds = %bb.d
  %i.r = load ptr, ptr %i.c, align 8              ; 2 uses
  br label %.preheader.i

.loopexit.i:                                      ; preds = %bb.g, %bb.f
  %i.s = icmp slt i64 %i.z, %i.e
  br i1 %i.s, label %.preheader.i.backedge, label %.critedge.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.lr.ph.i
  %.190.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.190.i.be, %.preheader.i.backedge ] ; 8 uses
  %i.t = getelementptr inbounds i8, ptr %calloc.i, i64 %.190.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !149, !range !71, !noundef !72
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  %i.w = add nsw i64 %.190.i, 1                   ; 2 uses
  %i.x = icmp slt i64 %i.w, %i.e
  br i1 %i.x, label %.preheader.i.backedge, label %.critedge.i

.preheader.i.backedge:                            ; preds = %bb.e, %.loopexit.i
  %.190.i.be = phi i64 [ %i.w, %bb.e ], [ %i.z, %.loopexit.i ]
  br label %.preheader.i, !llvm.loop !473

bb.f:                                             ; preds = %.preheader.i
  %i.y = getelementptr inbounds i8, ptr %calloc.i, i64 %.190.i
  %i.z = add nsw i64 %.190.i, 1                   ; 2 uses
  store i8 1, ptr %i.y, align 1, !tbaa !149
  %.034.in.in91.i = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.190.i
  %.034.in92.i = load i32, ptr %.034.in.in91.i, align 4, !tbaa !33
  %.03493.i = sext i32 %.034.in92.i to i64        ; 2 uses
  %.not4294.i = icmp eq i64 %.190.i, %.03493.i
  br i1 %.not4294.i, label %.loopexit.i, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %bb.f
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.190.i ; 2 uses
  %.pre.i = load double, ptr %i.aa, align 8, !tbaa !57
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph96.i
  %i.ab = phi double [ %.pre.i, %.lr.ph96.i ], [ %i.ad, %bb.g ]
  %.03495.i = phi i64 [ %.03493.i, %.lr.ph96.i ], [ %.034.i, %bb.g ] ; 3 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.g, i64 %.03495.i ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !57 ; 2 uses
  store double %i.ab, ptr %i.ac, align 8, !tbaa !57
  store double %i.ad, ptr %i.aa, align 8, !tbaa !57
  %i.ae = getelementptr inbounds i8, ptr %calloc.i, i64 %.03495.i
  store i8 1, ptr %i.ae, align 1, !tbaa !149
  %.034.in.in.i = getelementptr inbounds [4 x i8], ptr %i.r, i64 %.03495.i
  %.034.in.i = load i32, ptr %.034.in.in.i, align 4, !tbaa !33
  %.034.i = sext i32 %.034.in.i to i64            ; 2 uses
  %.not42.i = icmp eq i64 %.190.i, %.034.i
  br i1 %.not42.i, label %.loopexit.i, label %bb.g

.critedge.i:                                      ; preds = %.loopexit.i, %bb.e
  tail call void @free(ptr noundef nonnull %calloc.i) #30
  br label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.new
  %.089.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bg, %bb.h ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.h ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.089.i
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.089.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !33
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ai
  %i.ak = load double, ptr %i.af, align 8, !tbaa !57
  store double %i.ak, ptr %i.aj, align 8, !tbaa !57
  %i.al = or disjoint i64 %.089.i, 1              ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.al
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.al
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load double, ptr %i.am, align 8, !tbaa !57
  store double %i.ar, ptr %i.aq, align 8, !tbaa !57
  %i.as = or disjoint i64 %.089.i, 2              ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.as
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.as
  %i.av = load i32, ptr %i.au, align 4, !tbaa !33
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aw
  %i.ay = load double, ptr %i.at, align 8, !tbaa !57
  store double %i.ay, ptr %i.ax, align 8, !tbaa !57
  %i.az = or disjoint i64 %.089.i, 3              ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.az
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !33
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !57
  store double %i.bf, ptr %i.be, align 8, !tbaa !57
  %i.bg = add nuw nsw i64 %.089.i, 4              ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !474

bb.i:                                             ; preds = %bb.b
  %i.bh = load ptr, ptr %2, align 8, !tbaa !130   ; 14 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !131 ; 8 uses
  %i.bk = ptrtoint ptr %i.bh to i64               ; 4 uses
  %i.bl = and i64 %i.bk, 7
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bm = lshr exact i64 %i.bk, 3
  %i.bn = and i64 %i.bm, 1
  %i.bo = tail call i64 @llvm.smin.i64(i64 %i.bn, i64 %i.bj)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.bo, %bb.j ], [ %i.bj, %bb.i ] ; 11 uses
  %i.bp = sub nsw i64 %i.bj, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.bq = sdiv i64 %i.bp, 2
  %i.br = shl nsw i64 %i.bq, 1                    ; 2 uses
  %i.bs = add nsw i64 %i.br, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.bt = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  %i.bu = sub i64 %.sroa.495.8.copyload196, %i.bk
  %diff.check = icmp ugt i64 %i.bu, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader377, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %wide.load = load <2 x double>, ptr %i.bw, align 8, !tbaa !57
  %wide.load197 = load <2 x double>, ptr %i.bx, align 8, !tbaa !57
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store <2 x double> %wide.load, ptr %i.bv, align 8, !tbaa !57
  store <2 x double> %wide.load197, ptr %i.by, align 8, !tbaa !57
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !475

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader377

.lr.ph.i.i.i.i.i.i.i.i.preheader377:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader377, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader377 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader377 ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !57
  store double %i.cc, ptr %i.ca, align 8, !tbaa !57
  %i.cd = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !476

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader377
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader377 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ce = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i
  %i.cf = icmp ugt i64 %i.ce, -4
  br i1 %i.cf, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.cv, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.05.i.i.i.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i.i.i.i.i.i.i.i
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !57
  store double %i.ci, ptr %i.cg, align 8, !tbaa !57
  %i.cj = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cj
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cj
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !57
  store double %i.cm, ptr %i.ck, align 8, !tbaa !57
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cn
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !57
  store double %i.cq, ptr %i.co, align 8, !tbaa !57
  %i.cr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.cr
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.cr
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !57
  store double %i.cu, ptr %i.cs, align 8, !tbaa !57
  %i.cv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cv, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !477

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %i.cw = icmp sgt i64 %i.bp, 1
  br i1 %i.cw, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i
  %i.cx = icmp slt i64 %i.bs, %i.bj
  br i1 %i.cx, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.cy = add i64 %.0.i.i.i.i.i.i.i.i, %i.br
  %i.cz = sub i64 %i.bj, %i.cy                    ; 3 uses
  %min.iters.check201 = icmp ult i64 %i.cz, 8
  %i.da = sub i64 %.sroa.495.8.copyload196, %i.bk
  %diff.check199 = icmp ugt i64 %i.da, -32
  %or.cond343 = select i1 %min.iters.check201, i1 true, i1 %diff.check199
  br i1 %or.cond343, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader375, label %vector.ph202

vector.ph202:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader
  %n.vec203 = and i64 %i.cz, -4                   ; 3 uses
  %i.db = add i64 %i.bs, %n.vec203
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body204 ] ; 2 uses
  %i.dc = add i64 %i.bs, %index205                ; 2 uses
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.dc ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load206 = load <2 x double>, ptr %i.de, align 8, !tbaa !57
  %wide.load207 = load <2 x double>, ptr %i.df, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <2 x double> %wide.load206, ptr %i.dd, align 8, !tbaa !57
  store <2 x double> %wide.load207, ptr %i.dg, align 8, !tbaa !57
  %index.next208 = add nuw i64 %index205, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.dh, label %middle.block209, label %vector.body204, !llvm.loop !478

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %i.cz, %n.vec203
  br i1 %cmp.n210, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader375

.lr.ph.i17.i.i.i.i.i.i.i.preheader375:            ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader, %middle.block209
  %.05.i18.i.i.i.i.i.i.i.ph = phi i64 [ %i.bs, %.lr.ph.i17.i.i.i.i.i.i.i.preheader ], [ %i.db, %middle.block209 ] ; 4 uses
  %i.di = sub i64 %i.bj, %.05.i18.i.i.i.i.i.i.i.ph
  %xtraiter378 = and i64 %i.di, 3                 ; 2 uses
  %lcmp.mod379.not = icmp eq i64 %xtraiter378, 0
  br i1 %lcmp.mod379.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.preheader375, %.lr.ph.i17.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.prol = phi i64 [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader375 ] ; 3 uses
  %prol.iter380 = phi i64 [ %prol.iter380.next, %.lr.ph.i17.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.preheader375 ]
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dk = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i.prol
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !57
  store double %i.dl, ptr %i.dj, align 8, !tbaa !57
  %i.dm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter380.next = add i64 %prol.iter380, 1   ; 2 uses
  %prol.iter380.cmp.not = icmp eq i64 %prol.iter380.next, %xtraiter378
  br i1 %prol.iter380.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.prol, !llvm.loop !479

.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.preheader375
  %.05.i18.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.preheader375 ], [ %i.dm, %.lr.ph.i17.i.i.i.i.i.i.i.prol ]
  %i.dn = sub i64 %.05.i18.i.i.i.i.i.i.i.ph, %i.bj
  %i.do = icmp ugt i64 %i.dn, -4
  br i1 %i.do, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i17.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.05.i18.i.i.i.i.i.i.i
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !57
  store double %i.dr, ptr %i.dp, align 8, !tbaa !57
  %i.ds = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ds
  %i.du = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ds
  %i.dv = load double, ptr %i.du, align 8, !tbaa !57
  store double %i.dv, ptr %i.dt, align 8, !tbaa !57
  %i.dw = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.dw
  %i.dy = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.dw
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !57
  store double %i.dz, ptr %i.dx, align 8, !tbaa !57
  %i.ea = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.ea
  %i.ec = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %i.ea
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !57
  store double %i.ed, ptr %i.eb, align 8, !tbaa !57
  %i.ee = add nsw i64 %.05.i18.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ee, %i.bj
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i, !llvm.loop !480

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS6_IKS8_Li0ESA_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %.021.i.i.i.i.i.i.i
  %i.eg = getelementptr inbounds [8 x i8], ptr %.sroa.495.8.copyload, i64 %.021.i.i.i.i.i.i.i
  %i.eh = load <2 x double>, ptr %i.eg, align 1, !tbaa !94
  store <2 x double> %i.eh, ptr %i.ef, align 16, !tbaa !94
  %i.ei = add nsw i64 %.021.i.i.i.i.i.i.i, 2      ; 2 uses
  %i.ej = icmp slt i64 %i.ei, %i.bs
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !481

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa: ; preds = %bb.h
  %lcmp.mod382.not = icmp eq i64 %xtraiter381, 0
  br i1 %lcmp.mod382.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.089.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bg, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa ]
  %lcmp.mod383 = icmp ne i64 %xtraiter381, 0
  tail call void @llvm.assume(i1 %lcmp.mod383)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.epil.preheader
  %.089.i.epil = phi i64 [ %.089.i.epil.init, %.epil.preheader ], [ %i.eq, %bb.k ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.k ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %.sroa.495.8.copyload, i64 %.089.i.epil
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.089.i.epil
  %i.em = load i32, ptr %i.el, align 4, !tbaa !33
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.en
  %i.ep = load double, ptr %i.ek, align 8, !tbaa !57
  store double %i.ep, ptr %i.eo, align 8, !tbaa !57
  %i.eq = add nuw nsw i64 %.089.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter381
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit, label %bb.k, !llvm.loop !482

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit.loopexit.unr-lcssa, %bb.k, %middle.block209, %.critedge.i, %.preheader86.i, %._crit_edge.i.i.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !135 ; 13 uses
  %i.eu = icmp eq ptr %i.et, null
  br i1 %i.eu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !136 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !121
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !33
  %i.fb = load i32, ptr %i.ew, align 4, !tbaa !33
  %i.fc = sub nsw i32 %i.fa, %i.fb
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.m:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEaSINS1_IKS3_Li0ES5_EEEERS6_RKNS_9DenseBaseIT_EE.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !121 ; 11 uses
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.fg = ptrtoint ptr %i.et to i64               ; 2 uses
  %i.fh = and i64 %i.fg, 3
  %.not.i.i.i.i.i.i.i.i11 = icmp eq i64 %i.fh, 0
  br i1 %.not.i.i.i.i.i.i.i.i11, label %bb.o, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.fi = lshr exact i64 %i.fg, 2
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = and i64 %i.fj, 3
  %i.fl = tail call i64 @llvm.smin.i64(i64 %i.fk, i64 %i.fe)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i12 = phi i64 [ %i.fl, %bb.o ], [ %i.fe, %bb.n ] ; 12 uses
  %i.fm = sub nsw i64 %i.fe, %.0.i.i.i.i.i.i.i.i12 ; 5 uses
  %i.fn = sdiv i64 %i.fm, 8
  %i.fo = shl nsw i64 %i.fn, 3                    ; 2 uses
  %i.fp = sdiv i64 %i.fm, 4
  %i.fq = shl nsw i64 %i.fp, 2                    ; 3 uses
  %i.fr = add nsw i64 %i.fo, %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.fs = add nsw i64 %i.fq, %.0.i.i.i.i.i.i.i.i12 ; 4 uses
  %.off.i.i.i.i = add i64 %i.fm, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ft = getelementptr [4 x i8], ptr %i.et, i64 %.0.i.i.i.i.i.i.i.i12 ; 2 uses
  %i.fu = load <2 x i64>, ptr %i.ft, align 1, !tbaa !94 ; 2 uses
  %i.fv = icmp sgt i64 %i.fm, 7
  br i1 %i.fv, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.fw = getelementptr i8, ptr %i.ft, i64 16
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !94 ; 2 uses
  %i.fy = bitcast <2 x i64> %i.fu to <4 x i32>    ; 2 uses
  %i.fz = icmp samesign ugt i64 %i.fm, 15
  br i1 %i.fz, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.q
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i12, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.q
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.fx, %bb.q ], [ %i.gk, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.fy, %bb.q ], [ %i.gg, %.lr.ph.i.i.i.i ]
  %i.ga = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.gb = bitcast <4 x i32> %i.ga to <2 x i64>
  %i.gc = icmp sgt i64 %i.fq, %i.fo
  br i1 %i.gc, label %bb.r, label %bb.s

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i12, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.gg, %.lr.ph.i.i.i.i ], [ %i.fy, %.lr.ph.preheader.i.i.i.i ]
  %i.gd = phi <4 x i32> [ %i.gk, %.lr.ph.i.i.i.i ], [ %i.fx, %.lr.ph.preheader.i.i.i.i ]
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.et, i64 %.05780.i.i.i.i
  %i.gf = load <4 x i32>, ptr %i.ge, align 1, !tbaa !94
  %i.gg = add <4 x i32> %i.gf, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.gh = getelementptr [4 x i8], ptr %i.et, i64 %.057.in79.i.i.i.i
  %i.gi = getelementptr i8, ptr %i.gh, i64 48
  %i.gj = load <4 x i32>, ptr %i.gi, align 1, !tbaa !94
  %i.gk = add <4 x i32> %i.gj, %i.gd              ; 2 uses
end_hunk_2
