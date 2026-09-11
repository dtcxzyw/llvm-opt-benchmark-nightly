Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7computeIS2_EERS3_RKNS_9EigenBaseIT_EE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i64 %i.d, 0
  %i.l = icmp eq i64 %i.f, 0
  %or.cond.i.i.i.i.i.i.i.i.i.i = or i1 %i.k, %i.l
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sdiv i64 9223372036854775807, %i.f
  %i.n = icmp sgt i64 %i.d, %i.m
  br i1 %i.n, label %.noexc.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.p = mul nsw i64 %i.f, %i.d
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.p, i64 noundef %i.d, i64 noundef %i.f)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !tbaa !305
  %.pre20.i.i.i.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !306
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i, %bb.a
  %i.q = phi i64 [ %.pre20.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.f, %bb.a ]
  %i.r = phi i64 [ %.pre.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i ], [ %i.d, %bb.a ]
  %i.s = load ptr, ptr %0, align 8, !tbaa !307    ; 8 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = mul nsw i64 %i.r, %i.q                   ; 7 uses
  %i.v = sdiv i64 %i.u, 2
  %i.w = shl nsw i64 %i.v, 1                      ; 6 uses
  %i.x = icmp sgt i64 %i.u, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.y = icmp slt i64 %i.w, %i.u
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.z = sub i64 %i.u, %i.w                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 8
  %i.aa = sub i64 %i.b, %i.t
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.ab = add i64 %i.w, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ac = add i64 %i.w, %index                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ac ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <2 x double>, ptr %i.ae, align 8, !tbaa !189
  %wide.load7 = load <2 x double>, ptr %i.af, align 8, !tbaa !189
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <2 x double> %wide.load, ptr %i.ad, align 8, !tbaa !189
  store <2 x double> %wide.load7, ptr %i.ag, align 8, !tbaa !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !574

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8

.lr.ph.i.i.i.i.i.i.i.i.i.preheader8:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ab, %middle.block ] ; 4 uses
  %i.ai = sub i64 %i.u, %.05.i.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i.prol
  %i.al = load double, ptr %i.ak, align 8, !tbaa !189
  store double %i.al, ptr %i.aj, align 8, !tbaa !189
  %i.am = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !575

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8
  %.05.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader8 ], [ %i.am, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.an = sub i64 %.05.i.i.i.i.i.i.i.i.i.ph, %i.u
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.s, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !189
  store double %i.ar, ptr %i.ap, align 8, !tbaa !189
  %i.as = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.at = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.as
  %i.au = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.as
  %i.av = load double, ptr %i.au, align 8, !tbaa !189
  store double %i.av, ptr %i.at, align 8, !tbaa !189
  %i.aw = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.aw
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !189
  store double %i.az, ptr %i.ax, align 8, !tbaa !189
  %i.ba = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ba
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ba
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !189
  store double %i.bd, ptr %i.bb, align 8, !tbaa !189
  %i.be = add nsw i64 %.05.i.i.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.be, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !576

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i ], [ 0, %bb.d ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.011.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.011.i.i.i.i.i.i.i.i
  %i.bh = load <2 x double>, ptr %i.bg, align 16, !tbaa !182
  store <2 x double> %i.bh, ptr %i.bf, align 16, !tbaa !182
  %i.bi = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bj = icmp slt i64 %i.bi, %i.w
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !577

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEaSERKS1_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i
  tail call void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(123) %0)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv(ptr noundef nonnull align 8 dereferenceable(123) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !640 ; 36 uses
  %i.c = icmp eq i64 %i.b, 0                      ; 2 uses
  br i1 %i.c, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !307    ; 11 uses
  %i.e = sdiv i64 %i.b, 4
  %i.f = shl nsw i64 %i.e, 2                      ; 3 uses
  %i.g = sdiv i64 %i.b, 2
  %i.h = shl nsw i64 %i.g, 1                      ; 6 uses
  %.off.i.i.i.i.i.i.i.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load <2 x double>, ptr %i.d, align 1, !tbaa !182
  %i.j = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.i) ; 3 uses
  %i.k = icmp sgt i64 %i.b, 3
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.d, i64 16
  %i.m = load <2 x double>, ptr %i.l, align 1, !tbaa !182
  %i.n = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.m) ; 2 uses
  %i.o = icmp samesign ugt i64 %i.b, 7
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.n, %bb.d ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.j, %bb.d ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.p = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.q = icmp sgt i64 %i.h, %i.f
  br i1 %i.q, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.u, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.j, %bb.d ]
  %.07577.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.z, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.n, %bb.d ]
  %i.r = getelementptr [8 x i8], ptr %i.d, i64 %.05480.i.i.i.i.i.i.i.i.i.i.i
  %i.s = load <2 x double>, ptr %i.r, align 1, !tbaa !182
  %i.t = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.s)
  %i.u = fadd <2 x double> %.07278.i.i.i.i.i.i.i.i.i.i.i, %i.t ; 2 uses
  %i.v = getelementptr [8 x i8], ptr %i.d, i64 %.054.in79.i.i.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load <2 x double>, ptr %i.w, align 1, !tbaa !182
  %i.y = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.x)
  %i.z = fadd <2 x double> %.07577.i.i.i.i.i.i.i.i.i.i.i, %i.y ; 2 uses
  %.054.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.aa = icmp slt i64 %.054.i.i.i.i.i.i.i.i.i.i.i, %i.f
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !580

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.ac = load <2 x double>, ptr %i.ab, align 1, !tbaa !182
  %i.ad = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ac)
  %i.ae = fadd <2 x double> %i.p, %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.274.i.i.i.i.i.i.i.i.i.i.i = phi <2 x double> [ %i.j, %bb.c ], [ %i.ae, %bb.e ], [ %i.p, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i.i.i.i.i.i, %shift
  %1 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.af = icmp slt i64 %i.h, %i.b
  br i1 %i.af, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.f
  %i.ag = sub i64 %i.b, %i.h
  %xtraiter = and i64 %i.ag, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol:              ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.al, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.h, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %1, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ah = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !189
  %i.aj = tail call noundef double @llvm.fabs.f64(double %i.ai)
  %i.ak = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i.prol, %i.aj ; 3 uses
  %i.al = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !581

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:     ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa477.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.h, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.al, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.i.i.i.i.unr = phi double [ %1, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.am = sub i64 %i.h, %i.b
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.bg, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.ao = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !189
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap)
  %i.ar = fadd double %.182.i.i.i.i.i.i.i.i.i.i.i, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.at = getelementptr i8, ptr %i.as, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !189
  %i.av = tail call noundef double @llvm.fabs.f64(double %i.au)
  %i.aw = fadd double %i.ar, %i.av
  %i.ax = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  %i.az = load double, ptr %i.ay, align 8, !tbaa !189
  %i.ba = tail call noundef double @llvm.fabs.f64(double %i.az)
  %i.bb = fadd double %i.aw, %i.ba
  %i.bc = getelementptr [8 x i8], ptr %i.d, i64 %.05283.i.i.i.i.i.i.i.i.i.i.i
  %i.bd = getelementptr i8, ptr %i.bc, i64 24
  %i.be = load double, ptr %i.bd, align 8, !tbaa !189
  %i.bf = tail call noundef double @llvm.fabs.f64(double %i.be)
  %i.bg = fadd double %i.bb, %i.bf                ; 2 uses
  %i.bh = add nsw i64 %.05283.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !582

bb.g:                                             ; preds = %bb.b
  %i.bi = load double, ptr %i.d, align 8, !tbaa !189
  %i.bj = tail call noundef double @llvm.fabs.f64(double %i.bi)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.a
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %1, %bb.f ], [ %i.bj, %bb.g ], [ %.lcssa477.unr, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bg, %.lr.ph85.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !306 ; 11 uses
  %i.bm = icmp sgt i64 %i.bl, 1
  br i1 %i.bm, label %.lr.ph.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

.lr.ph.i.i.i.i:                                   ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %i.bn = sdiv i64 %i.b, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 3 uses
  %i.bp = sdiv i64 %i.b, 2
  %i.bq = shl nsw i64 %i.bp, 1                    ; 6 uses
  %i.br = icmp sgt i64 %i.b, 3
  %i.bs = icmp samesign ugt i64 %i.b, 7
  %i.bt = icmp sgt i64 %i.bq, %i.bo
  %i.bu = icmp slt i64 %i.bq, %i.b
  br i1 %i.c, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader, label %.lr.ph.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i
  %i.bv = add nsw i64 %i.bl, -1                   ; 2 uses
  %i.bw = add nsw i64 %i.bl, -2
  %xtraiter487 = and i64 %i.bv, 3                 ; 3 uses
  %i.bx = icmp ult i64 %i.bw, 3
  br i1 %i.bx, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %unroll_iter491 = and i64 %i.bv, -4
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new
  %.05864.us.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new ], [ %i.bz, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i ] ; 2 uses
  %niter492 = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader.new ], [ %niter492.next.3, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i ]
  %i.by = fcmp olt double %.05864.us.i.i.i.i, 0.000000e+00
  %i.bz = select i1 %i.by, double 0.000000e+00, double %.05864.us.i.i.i.i ; 3 uses
  %niter492.next.3 = add i64 %niter492, 4         ; 2 uses
  %niter492.ncmp.3 = icmp eq i64 %niter492.next.3, %unroll_iter491
  br i1 %niter492.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, !llvm.loop !583

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.off.i.i.i.i.i.i.i18.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i19.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i18.i.i.i.i, 3
  %i.ca = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i19.i.i.i.i, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.preheader

.lr.ph.split.split.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i.i.i.i
  %i.cb = sub i64 %i.b, %i.bq
  %xtraiter480 = and i64 %i.cb, 3                 ; 2 uses
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  %i.cc = sub i64 %i.bq, %i.b
  %i.cd = icmp ugt i64 %i.cc, -4
  br label %.lr.ph.split.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i
  %i.ce = add nsw i64 %i.bl, -1                   ; 3 uses
  %xtraiter483 = and i64 %i.ce, 1
  %i.cf = icmp eq i64 %i.bl, 2
  br i1 %i.cf, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ce, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new
  %.01765.us66.i.i.i.i = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.ct, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 3 uses
  %.05864.us67.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.cs, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ]
  %i.cg = mul nsw i64 %.01765.us66.i.i.i.i, %i.b
  %i.ch = getelementptr [8 x i8], ptr %i.ca, i64 %i.cg
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !189
  %i.cj = tail call noundef double @llvm.fabs.f64(double %i.ci) ; 2 uses
  %i.ck = fcmp olt double %.05864.us67.i.i.i.i, %i.cj
  %i.cl = select i1 %i.ck, double %i.cj, double %.05864.us67.i.i.i.i ; 2 uses
  %i.cm = add nuw nsw i64 %.01765.us66.i.i.i.i, 1
  %i.cn = mul nsw i64 %i.cm, %i.b
  %i.co = getelementptr [8 x i8], ptr %i.ca, i64 %i.cn
  %i.cp = load double, ptr %i.co, align 8, !tbaa !189
  %i.cq = tail call noundef double @llvm.fabs.f64(double %i.cp) ; 2 uses
  %i.cr = fcmp olt double %i.cl, %i.cq
  %i.cs = select i1 %i.cr, double %i.cq, double %i.cl ; 3 uses
  %i.ct = add nuw nsw i64 %.01765.us66.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, !llvm.loop !583

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.split.split.i.i.i.i.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i
  %.01765.i.i.i.i = phi i64 [ %i.er, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ 1, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %.05864.i.i.i.i = phi double [ %i.eq, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %i.cu = mul nsw i64 %.01765.i.i.i.i, %i.b
  %i.cv = getelementptr [8 x i8], ptr %i.ca, i64 %i.cu ; 10 uses
  %i.cw = load <2 x double>, ptr %i.cv, align 1, !tbaa !182
  %i.cx = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cw) ; 3 uses
  br i1 %i.br, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.split.i.i.i.i
  %i.cy = getelementptr i8, ptr %i.cv, i64 16
  %i.cz = load <2 x double>, ptr %i.cy, align 1, !tbaa !182
  %i.da = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cz) ; 2 uses
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i

._crit_edge.i.i.i.i.i.i.i26.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i = phi <2 x double> [ %i.da, %bb.h ], [ %i.dk, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i = phi <2 x double> [ %i.cx, %bb.h ], [ %i.df, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %i.db = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i ; 2 uses
  br i1 %i.bt, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i29.i.i.i.i:                   ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i
  %.05480.i.i.i.i.i.i.i30.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i34.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 4, %bb.h ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i30.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i32.i.i.i.i = phi <2 x double> [ %i.df, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.cx, %bb.h ]
  %.07577.i.i.i.i.i.i.i33.i.i.i.i = phi <2 x double> [ %i.dk, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.da, %bb.h ]
  %i.dc = getelementptr [8 x i8], ptr %i.cv, i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i
  %i.dd = load <2 x double>, ptr %i.dc, align 1, !tbaa !182
  %i.de = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dd)
  %i.df = fadd <2 x double> %.07278.i.i.i.i.i.i.i32.i.i.i.i, %i.de ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.cv, i64 %.054.in79.i.i.i.i.i.i.i31.i.i.i.i
  %i.dh = getelementptr i8, ptr %i.dg, i64 48
  %i.di = load <2 x double>, ptr %i.dh, align 1, !tbaa !182
  %i.dj = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.di)
  %i.dk = fadd <2 x double> %.07577.i.i.i.i.i.i.i33.i.i.i.i, %i.dj ; 2 uses
  %.054.i.i.i.i.i.i.i34.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i, 4 ; 2 uses
  %i.dl = icmp slt i64 %.054.i.i.i.i.i.i.i34.i.i.i.i, %i.bo
  br i1 %i.dl, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, !llvm.loop !580

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i
  %i.dm = getelementptr [8 x i8], ptr %i.cv, i64 %i.bo
  %i.dn = load <2 x double>, ptr %i.dm, align 1, !tbaa !182
  %i.do = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dn)
  %i.dp = fadd <2 x double> %i.db, %i.do
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, %.lr.ph.split.split.i.i.i.i
  %.274.i.i.i.i.i.i.i20.i.i.i.i = phi <2 x double> [ %i.cx, %.lr.ph.split.split.i.i.i.i ], [ %i.dp, %bb.i ], [ %i.db, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i ] ; 2 uses
  %shift456 = shufflevector <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop457 = fadd <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i, %shift456
  %2 = extractelement <2 x double> %foldExtExtBinop457, i64 0 ; 3 uses
  br i1 %i.bu, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader:       ; preds = %bb.j
  br i1 %lcmp.mod481.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol:            ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol = phi i64 [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.bq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i.prol = phi double [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %2, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %prol.iter482 = phi i64 [ %prol.iter482.next, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %i.dq = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = tail call noundef double @llvm.fabs.f64(double %i.dr)
  %i.dt = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i.prol, %i.ds ; 3 uses
  %i.du = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter482.next = add i64 %prol.iter482, 1   ; 2 uses
  %prol.iter482.cmp.not = icmp eq i64 %prol.iter482.next, %xtraiter480
  br i1 %prol.iter482.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, !llvm.loop !584

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader
  %.lcssa475.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr = phi i64 [ %i.bq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i24.i.i.i.i.unr = phi double [ %2, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  br i1 %i.cd, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i
  %.05283.i.i.i.i.i.i.i23.i.i.i.i = phi i64 [ %i.eo, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i = phi double [ %i.en, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.182.i.i.i.i.i.i.i24.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ]
  %i.dv = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !189
  %i.dx = tail call noundef double @llvm.fabs.f64(double %i.dw)
  %i.dy = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i, %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !189
  %i.ec = tail call noundef double @llvm.fabs.f64(double %i.eb)
  %i.ed = fadd double %i.dy, %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ef = getelementptr i8, ptr %i.ee, i64 16
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !189
  %i.eh = tail call noundef double @llvm.fabs.f64(double %i.eg)
  %i.ei = fadd double %i.ed, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.cv, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %i.el = load double, ptr %i.ek, align 8, !tbaa !189
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.el)
  %i.en = fadd double %i.ei, %i.em                ; 2 uses
  %i.eo = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3 = icmp eq i64 %i.eo, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, !llvm.loop !582

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, %bb.j
  %.0.i.i.i.i.i21.i.i.i.i = phi double [ %2, %bb.j ], [ %.lcssa475.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ], [ %i.en, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ] ; 2 uses
  %i.ep = fcmp olt double %.05864.i.i.i.i, %.0.i.i.i.i.i21.i.i.i.i
  %i.eq = select i1 %i.ep, double %.0.i.i.i.i.i21.i.i.i.i, double %.05864.i.i.i.i ; 2 uses
  %i.er = add nuw nsw i64 %.01765.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.er, %i.bl
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.split.split.i.i.i.i, !llvm.loop !583

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %.05864.us.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader ], [ %i.bz, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod490 = icmp ne i64 %xtraiter487, 0
  tail call void @llvm.assume(i1 %lcmp.mod490)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader
  %.05864.us.i.i.i.i.epil = phi double [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %.05864.us.i.i.i.i.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ]
  %i.es = fcmp olt double %.05864.us.i.i.i.i.epil, 0.000000e+00
  %i.et = select i1 %i.es, double 0.000000e+00, double %.05864.us.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter487
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, !llvm.loop !585

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %.01765.us66.i.i.i.i.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ]
  %.05864.us67.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.cs, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i64 %i.ce to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.eu = mul nsw i64 %.01765.us66.i.i.i.i.epil.init, %i.b
  %i.ev = getelementptr [8 x i8], ptr %i.ca, i64 %i.eu
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !189
  %i.ex = tail call noundef double @llvm.fabs.f64(double %i.ew) ; 2 uses
  %i.ey = fcmp olt double %.05864.us67.i.i.i.i.epil.init, %i.ex
  %i.ez = select i1 %i.ey, double %i.ex, double %.05864.us67.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %.058.lcssa.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i ], [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %i.ez, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader ], [ %i.bz, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.cs, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ], [ %i.eq, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.058.lcssa.i.i.i.i, ptr %i.fa, align 8, !tbaa !641
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.bl, i64 %i.b) ; 12 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !315
  %.not.i.i = icmp eq i64 %i.b, %i.fd
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit
  %i.fe = load ptr, ptr %i.fb, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.fe) #6
  %i.ff = icmp sgt i64 %i.b, 0
  br i1 %i.ff, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.fg = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.fg, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.fh = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fh, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fh, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.l
  %i.fi = shl nuw i64 %i.b, 2
  %i.fj = tail call noalias ptr @malloc(i64 noundef %i.fi) #38 ; 2 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.n, label %.sink.split.i.i

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.fl = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fl, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.fj, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.fb, align 8, !tbaa !314
  %.pre = load i64, ptr %i.bk, align 8, !tbaa !306
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, %.sink.split.i.i
  %i.fm = phi i64 [ %i.bl, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  store i64 %i.b, ptr %i.fc, align 8, !tbaa !315
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !316
  %.not.i.i66 = icmp eq i64 %i.fm, %i.fp
  br i1 %.not.i.i66, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.fq = load ptr, ptr %i.fn, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.fq) #6
  %i.fr = icmp sgt i64 %i.fm, 0
  br i1 %i.fr, label %bb.p, label %.sink.split.i.i67

bb.p:                                             ; preds = %bb.o
  %i.fs = icmp samesign ugt i64 %i.fm, 4611686018427387903
  br i1 %i.fs, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69

bb.q:                                             ; preds = %bb.p
  %i.ft = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ft, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.ft, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69: ; preds = %bb.p
  %i.fu = shl nuw i64 %i.fm, 2
  %i.fv = tail call noalias ptr @malloc(i64 noundef %i.fu) #38 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.r, label %.sink.split.i.i67

bb.r:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69
  %i.fx = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fx, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i67:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69, %bb.o
  %.sink.i.i68 = phi ptr [ %i.fv, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69 ], [ null, %bb.o ]
  store ptr %.sink.i.i68, ptr %i.fn, align 8, !tbaa !312
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i67
  store i64 %i.fm, ptr %i.fo, align 8, !tbaa !316
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.fy, align 8, !tbaa !327
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store double 0.000000e+00, ptr %i.fz, align 8, !tbaa !328
  %i.ga = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.ga, label %.lr.ph235, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.gb, i64 noundef %i.b)
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.gc, i64 noundef %i.bl)
  br label %._crit_edge244

.lr.ph235:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gd = add nsw i64 %i.b, -1
  %i.ge = add nsw i64 %.sroa.speculated.i, -1     ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %i.kn = fadd <2 x double> %i.kb, %i.km          ; 3 uses
  %i.ko = add nuw nsw i64 %i.jq, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !989

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kc, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kp = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.kq = load <2 x double>, ptr %i.kp, align 1, !tbaa !182 ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %i.kr, i64 %i.jh
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !182
  %i.ku = fmul <2 x double> %i.kq, %i.kt
  %i.kv = fadd <2 x double> %.0400478.epil.init, %i.ku
  %i.kw = getelementptr [8 x i8], ptr %i.kr, i64 %i.jj
  %i.kx = load <2 x double>, ptr %i.kw, align 1, !tbaa !182
  %i.ky = fmul <2 x double> %i.kq, %i.kx
  %i.kz = fadd <2 x double> %.0398479.epil.init, %i.ky
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kz, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.la = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lc = fadd <2 x double> %i.la, %i.lb          ; 3 uses
  %i.ld = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.ld, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.le = load ptr, ptr %3, align 8, !tbaa !394   ; 3 uses
  %i.lf = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lg = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lh = mul nsw i64 %i.lg, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.li = getelementptr [8 x i8], ptr %i.le, i64 %.0208.lcssa
  %i.lj = load double, ptr %i.li, align 8, !tbaa !189
  %i.lk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.lk, i64 %i.lf
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !189
  %i.ln = getelementptr [8 x i8], ptr %i.lk, i64 %i.lh
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !189
  %i.lp = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lt = fmul <2 x double> %i.lq, %i.ls
  %i.lu = fadd <2 x double> %i.lc, %i.lt          ; 2 uses
  %i.lv = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lc, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %i.lw = icmp eq i64 %1, %.neg
  br i1 %i.lw, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.mz, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lx = phi <2 x double> [ %i.my, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.ly = getelementptr [8 x i8], ptr %i.le, i64 %.1209486
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !189
  %i.ma = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.mb = getelementptr [8 x i8], ptr %i.ma, i64 %i.lf
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !189
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %i.lh
  %i.me = load double, ptr %i.md, align 8, !tbaa !189
  %i.mf = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.me, i64 1
  %i.mj = fmul <2 x double> %i.mg, %i.mi
  %i.mk = fadd <2 x double> %i.lx, %i.mj
  %i.ml = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.le, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !189
  %i.mo = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ml ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.lf
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !189
  %i.mr = getelementptr [8 x i8], ptr %i.mo, i64 %i.lh
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !189
  %i.mt = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ms, i64 1
  %i.mx = fmul <2 x double> %i.mu, %i.mw
  %i.my = fadd <2 x double> %i.mk, %i.mx          ; 2 uses
  %i.mz = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mz, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !990

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lg, %.lr.ph490.new ], [ %i.lg, %.prol.loopexit ]
  %i.na = phi <2 x double> [ %i.lc, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.my, %.lr.ph490.new ] ; 2 uses
  %i.nb = mul nsw i64 %.2494, %5
  %i.nc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nb ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !189
  %i.ne = extractelement <2 x double> %i.na, i64 0
  %i.nf = tail call double @llvm.fmuladd.f64(double %6, double %i.ne, double %i.nd)
  store double %i.nf, ptr %i.nc, align 8, !tbaa !189
  %i.ng = mul nsw i64 %.pre-phi572, %5
  %i.nh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !189
  %i.nj = extractelement <2 x double> %i.na, i64 1
  %i.nk = tail call double @llvm.fmuladd.f64(double %6, double %i.nj, double %i.ni)
  store double %i.nk, ptr %i.nh, align 8, !tbaa !189
  %i.nl = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.nm = icmp slt i64 %i.nl, %i.e
  br i1 %i.nm, label %.preheader405, label %.preheader404, !llvm.loop !991

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.qj, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nn = load ptr, ptr %3, align 8, !tbaa !394   ; 5 uses
  %i.no = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.no ; 5 uses
  br i1 %i.jp, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.np = phi i64 [ %i.on, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.oh, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.om, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.nq = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498
  %i.nr = load <2 x double>, ptr %i.nq, align 1, !tbaa !182
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.ns = load <2 x double>, ptr %gep, align 1, !tbaa !182
  %i.nt = fmul <2 x double> %i.nr, %i.ns
  %i.nu = fadd <2 x double> %.0392497, %i.nt
  %i.nv = add nuw nsw i64 %i.np, 2                ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %i.nn, i64 %i.np
  %i.nx = load <2 x double>, ptr %i.nw, align 1, !tbaa !182
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.np
  %i.ny = load <2 x double>, ptr %gep.1, align 1, !tbaa !182
  %i.nz = fmul <2 x double> %i.nx, %i.ny
  %i.oa = fadd <2 x double> %i.nu, %i.nz
  %i.ob = add nuw nsw i64 %i.np, 4                ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %i.nn, i64 %i.nv
  %i.od = load <2 x double>, ptr %i.oc, align 1, !tbaa !182
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nv
  %i.oe = load <2 x double>, ptr %gep.2, align 1, !tbaa !182
  %i.of = fmul <2 x double> %i.od, %i.oe
  %i.og = fadd <2 x double> %i.oa, %i.of
  %i.oh = add nuw nsw i64 %i.np, 6                ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.nn, i64 %i.ob
  %i.oj = load <2 x double>, ptr %i.oi, align 1, !tbaa !182
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ob
  %i.ok = load <2 x double>, ptr %gep.3, align 1, !tbaa !182
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = fadd <2 x double> %i.og, %i.ol          ; 3 uses
  %i.on = add nuw nsw i64 %i.np, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !992

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.on, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.oh, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.oo = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.ou, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.oo, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.ot, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.op = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498.epil
  %i.oq = load <2 x double>, ptr %i.op, align 1, !tbaa !182
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.or = load <2 x double>, ptr %gep.epil, align 1, !tbaa !182
  %i.os = fmul <2 x double> %i.oq, %i.or
  %i.ot = fadd <2 x double> %.0392497.epil, %i.os ; 2 uses
  %i.ou = add nuw nsw i64 %i.oo, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !993

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ], [ %i.ot, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.0392.lcssa, %shift
  %7 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ov = icmp slt i64 %.0205.lcssa, %1
  br i1 %i.ov, label %.lr.ph506, label %._crit_edge507

.lr.ph506:                                        ; preds = %._crit_edge500
  %i.ow = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep509 = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ow ; 5 uses
  %i.ox = load ptr, ptr %3, align 8, !tbaa !394   ; 5 uses
  %i.oy = sub i64 %1, %.0205.lcssa
  %xtraiter684 = and i64 %i.oy, 3                 ; 2 uses
  %lcmp.mod685.not = icmp eq i64 %xtraiter684, 0
  br i1 %lcmp.mod685.not, label %.prol.loopexit683, label %.prol.preheader682

.prol.preheader682:                               ; preds = %.lr.ph506, %.prol.preheader682
  %.0504.prol = phi double [ %i.pd, %.prol.preheader682 ], [ %7, %.lr.ph506 ]
  %.1503.prol = phi i64 [ %i.pe, %.prol.preheader682 ], [ %.0205.lcssa, %.lr.ph506 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader682 ], [ 0, %.lr.ph506 ]
  %gep510.prol = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503.prol
  %i.oz = getelementptr [8 x i8], ptr %i.ox, i64 %.1503.prol
  %i.pa = load double, ptr %gep510.prol, align 8, !tbaa !189
  %i.pb = load double, ptr %i.oz, align 8, !tbaa !189
  %i.pc = fmul double %i.pa, %i.pb
  %i.pd = fadd double %.0504.prol, %i.pc          ; 3 uses
  %i.pe = add nuw nsw i64 %.1503.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter684
  br i1 %prol.iter.cmp.not, label %.prol.loopexit683, label %.prol.preheader682, !llvm.loop !994

.prol.loopexit683:                                ; preds = %.prol.preheader682, %.lr.ph506
  %.lcssa648.unr = phi double [ poison, %.lr.ph506 ], [ %i.pd, %.prol.preheader682 ]
  %.0504.unr = phi double [ %7, %.lr.ph506 ], [ %i.pd, %.prol.preheader682 ]
  %.1503.unr = phi i64 [ %.0205.lcssa, %.lr.ph506 ], [ %i.pe, %.prol.preheader682 ]
  %i.pf = sub i64 %.0205.lcssa, %1
  %i.pg = icmp ugt i64 %i.pf, -4
  br i1 %i.pg, label %._crit_edge507, label %.lr.ph506.new

.lr.ph506.new:                                    ; preds = %.prol.loopexit683, %.lr.ph506.new
  %.0504 = phi double [ %i.qd, %.lr.ph506.new ], [ %.0504.unr, %.prol.loopexit683 ]
  %.1503 = phi i64 [ %i.qe, %.lr.ph506.new ], [ %.1503.unr, %.prol.loopexit683 ] ; 6 uses
  %gep510 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %.1503
  %i.ph = getelementptr [8 x i8], ptr %i.ox, i64 %.1503
  %i.pi = load double, ptr %gep510, align 8, !tbaa !189
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !189
  %i.pk = fmul double %i.pi, %i.pj
  %i.pl = fadd double %.0504, %i.pk
  %i.pm = add nuw nsw i64 %.1503, 1               ; 2 uses
  %gep510.1 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.pm
  %i.pn = getelementptr [8 x i8], ptr %i.ox, i64 %i.pm
  %i.po = load double, ptr %gep510.1, align 8, !tbaa !189
  %i.pp = load double, ptr %i.pn, align 8, !tbaa !189
  %i.pq = fmul double %i.po, %i.pp
  %i.pr = fadd double %i.pl, %i.pq
  %i.ps = add nuw nsw i64 %.1503, 2               ; 2 uses
  %gep510.2 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.ps
  %i.pt = getelementptr [8 x i8], ptr %i.ox, i64 %i.ps
  %i.pu = load double, ptr %gep510.2, align 8, !tbaa !189
  %i.pv = load double, ptr %i.pt, align 8, !tbaa !189
  %i.pw = fmul double %i.pu, %i.pv
  %i.px = fadd double %i.pr, %i.pw
  %i.py = add nuw nsw i64 %.1503, 3               ; 2 uses
  %gep510.3 = getelementptr [8 x i8], ptr %invariant.gep509, i64 %i.py
  %i.pz = getelementptr [8 x i8], ptr %i.ox, i64 %i.py
  %i.qa = load double, ptr %gep510.3, align 8, !tbaa !189
  %i.qb = load double, ptr %i.pz, align 8, !tbaa !189
  %i.qc = fmul double %i.qa, %i.qb
  %i.qd = fadd double %i.px, %i.qc                ; 2 uses
  %i.qe = add nuw nsw i64 %.1503, 4               ; 2 uses
  %exitcond551.not.3 = icmp eq i64 %i.qe, %1
  br i1 %exitcond551.not.3, label %._crit_edge507, label %.lr.ph506.new, !llvm.loop !995

._crit_edge507:                                   ; preds = %.prol.loopexit683, %.lr.ph506.new, %._crit_edge500
  %.0.lcssa = phi double [ %7, %._crit_edge500 ], [ %.lcssa648.unr, %.prol.loopexit683 ], [ %i.qd, %.lr.ph506.new ]
  %i.qf = mul nsw i64 %.3511, %5
  %i.qg = getelementptr inbounds [8 x i8], ptr %4, i64 %i.qf ; 2 uses
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !189
  %i.qi = tail call double @llvm.fmuladd.f64(double %6, double %.0.lcssa, double %i.qh)
  store double %i.qi, ptr %i.qg, align 8, !tbaa !189
  %i.qj = add nuw nsw i64 %.3511, 1               ; 2 uses
  %exitcond552.not = icmp eq i64 %i.qj, %0
  br i1 %exitcond552.not, label %._crit_edge512, label %.preheader, !llvm.loop !996

._crit_edge512:                                   ; preds = %._crit_edge507, %.preheader404
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !384

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #6
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !387 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !386 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !388 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !225    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !225
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !225    ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !225
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !225
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !225   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !225
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !225
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !225   ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !225
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !225   ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 64
  %i.ax = and i64 %i.aw, -8
end_hunk_1
begin_hunk_2_@_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE17FitByExistingTreeEPKNS_4TreeEPKfS7_:bb.a
  %i.n = icmp sgt i32 %i.m, 1
  br i1 %i.n, label %.lr.ph, label %.critedge19

.lr.ph:                                           ; preds = %.preheader
  %i.o = add nsw i32 %i.m, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !183
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !167
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !167
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !171
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge19, label %bb.c, !llvm.loop !1253

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !166
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !166
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !182
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8, !tbaa !263
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !264 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !264 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not5.i.i.i.i.i, label %bb.e, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %bb.d
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.ag to i64
  %reass.sub29 = sub i64 %i.aj, %i.ak
  %i.al = and i64 %reass.sub29, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ag, i8 -1, i64 %i.al, i1 false), !tbaa !166
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.preheader.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !265
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !267
  store ptr %i.ap, ptr %i.f, align 8, !tbaa !264
  %i.aq = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.aq)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.omp_outlined, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(688) %0, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb1EEEvPNS_4TreeEbPKfS7_b(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull %i.g, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  br label %bb.g

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8, !tbaa !263
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !264 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !264 ; 2 uses
  %.not5.i.i.i.i.i20 = icmp eq ptr %i.as, %i.au
  br i1 %.not5.i.i.i.i.i20, label %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit22, label %.lr.ph.i.i.i.i.preheader.i21

.lr.ph.i.i.i.i.preheader.i21:                     ; preds = %.critedge
  %i.av = ptrtoaddr ptr %i.au to i64
  %i.aw = ptrtoaddr ptr %i.as to i64
  %reass.sub = sub i64 %i.av, %i.aw
  %i.ax = and i64 %reass.sub, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.as, i8 -1, i64 %i.ax, i1 false), !tbaa !166
  br label %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit22

_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit22: ; preds = %.critedge, %.lr.ph.i.i.i.i.preheader.i21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !265
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !267
  store ptr %i.bb, ptr %i.d, align 8, !tbaa !264
  %i.bc = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(688) %0, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

.critedge19:                                      ; preds = %bb.b, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8, !tbaa !263
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !264 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !264 ; 2 uses
  %.not5.i.i.i.i.i23 = icmp eq ptr %i.be, %i.bg
  br i1 %.not5.i.i.i.i.i23, label %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit25, label %.lr.ph.i.i.i.i.preheader.i24

.lr.ph.i.i.i.i.preheader.i24:                     ; preds = %.critedge19
  %i.bh = ptrtoaddr ptr %i.bg to i64
  %i.bi = ptrtoaddr ptr %i.be to i64
  %reass.sub30 = sub i64 %i.bh, %i.bi
  %i.bj = and i64 %reass.sub30, -4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.be, i8 -1, i64 %i.bj, i1 false), !tbaa !166
  br label %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit25

_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit25: ; preds = %.critedge19, %.lr.ph.i.i.i.i.preheader.i24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !265
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 56
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !267
  store ptr %i.bn, ptr %i.b, align 8, !tbaa !264
  %i.bo = tail call i32 @OMP_NUM_THREADS()
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.bo)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 3, ptr nonnull @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(688) %0, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit25, %_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE10GetLeafMapEPNS_4TreeE.exit22
  call void @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE15CalculateLinearILb0EEEvPNS_4TreeEbPKfS7_b(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %i.g, i1 noundef zeroext true, ptr noundef %2, ptr noundef %3, i1 noundef zeroext false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE17FitByExistingTreeEPKNS_4TreeERKSt6vectorIiSaIiEEPKfSC_(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !262
  tail call void @_ZN8LightGBM13DataPartition15ResetByLeafPredERKSt6vectorIiSaIiEEi(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %i.d)
  %i.e = tail call noundef ptr @_ZNK8LightGBM17LinearTreeLearnerINS_14GPUTreeLearnerEE17FitByExistingTreeEPKNS_4TreeEPKfS7_(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull %1, ptr noundef %3, ptr noundef %4)
  ret ptr %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init.30() #31 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #19

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind memory(none) }
attributes #16 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { convergent nounwind }
attributes #21 = { cold noreturn }
attributes #22 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind }
attributes #29 = { mustprogress noinline uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #31 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #34 = { noreturn }
attributes #35 = { builtin allocsize(0) }
attributes #36 = { builtin nounwind }
attributes #37 = { noreturn nounwind }
attributes #38 = { nounwind allocsize(0) }

!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !181}
!1 = distinct !{!1, !181}
!2 = distinct !{!2, !181}
!3 = distinct !{null, null}
!4 = distinct !{!4, !181}
!5 = distinct !{!5, !181}
!6 = distinct !{!6, !181}
!7 = distinct !{!7, !181}
!8 = distinct !{!8, !181}
!9 = distinct !{!9, !181}
!10 = distinct !{!10, !181}
!11 = !{i32 7, !"openmp", i32 51}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 2}
!14 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!15 = !{!"Simple C++ TBAA"}
!16 = !{!"omnipotent char", !15, i64 0}
!17 = !{!"int", !16, i64 0}
!18 = !{!"__libc_errno", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{!"_ZTSN8LightGBM11TreeLearnerE"}
!21 = !{!"any pointer", !16, i64 0}
!22 = !{!"p1 _ZTSN8LightGBM7DatasetE", !21, i64 0}
!23 = !{!"p1 float", !21, i64 0}
!24 = !{!"p1 _ZTSN8LightGBM13DataPartitionE", !21, i64 0}
!25 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM13DataPartitionELb0EE", !24, i64 0}
!26 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM13DataPartitionESt14default_deleteIS1_EEE", !25, i64 0}
!27 = !{!"_ZTSSt5tupleIJPN8LightGBM13DataPartitionESt14default_deleteIS1_EEE", !26, i64 0}
!28 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM13DataPartitionESt14default_deleteIS1_EE", !27, i64 0}
!29 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM13DataPartitionESt14default_deleteIS1_ELb1ELb1EE", !28, i64 0}
!30 = !{!"_ZTSSt10unique_ptrIN8LightGBM13DataPartitionESt14default_deleteIS1_EE", !29, i64 0}
!31 = !{!"p1 _ZTSN8LightGBM16FeatureHistogramE", !21, i64 0}
!32 = !{!"p1 _ZTSN8LightGBM9SplitInfoE", !21, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE12_Vector_implE", !33, i64 0}
!35 = !{!"_ZTSSt12_Vector_baseIN8LightGBM9SplitInfoESaIS1_EE", !34, i64 0}
!36 = !{!"_ZTSSt6vectorIN8LightGBM9SplitInfoESaIS1_EE", !35, i64 0}
!37 = !{!"p1 _ZTSN8LightGBM19LeafConstraintsBaseE", !21, i64 0}
!38 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM19LeafConstraintsBaseELb0EE", !37, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EEE", !38, i64 0}
!40 = !{!"_ZTSSt5tupleIJPN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EEE", !39, i64 0}
!41 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EE", !40, i64 0}
!42 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_ELb1ELb1EE", !41, i64 0}
!43 = !{!"_ZTSSt10unique_ptrIN8LightGBM19LeafConstraintsBaseESt14default_deleteIS1_EE", !42, i64 0}
!44 = !{!"p1 _ZTSN8LightGBM10LeafSplitsE", !21, i64 0}
!45 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM10LeafSplitsELb0EE", !44, i64 0}
!46 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM10LeafSplitsESt14default_deleteIS1_EEE", !45, i64 0}
!47 = !{!"_ZTSSt5tupleIJPN8LightGBM10LeafSplitsESt14default_deleteIS1_EEE", !46, i64 0}
!48 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM10LeafSplitsESt14default_deleteIS1_EE", !47, i64 0}
!49 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM10LeafSplitsESt14default_deleteIS1_ELb1ELb1EE", !48, i64 0}
!50 = !{!"_ZTSSt10unique_ptrIN8LightGBM10LeafSplitsESt14default_deleteIS1_EE", !49, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIfN8LightGBM6Common18AlignmentAllocatorIfLm32EEEE", !53, i64 0}
!55 = !{!"p1 _ZTSSt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS2_EE", !21, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorISt10unique_ptrIA_N8LightGBM16FeatureHistogramESt14default_deleteIS3_EESaIS6_EE", !58, i64 0}
!60 = !{!"p1 _ZTSSt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEE", !21, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseISt6vectorIdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS5_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIS_IdN8LightGBM6Common18AlignmentAllocatorIdLm32EEEESaIS4_EE", !63, i64 0}
!65 = !{!"p1 _ZTSN8LightGBM15FeatureMetainfoE", !21, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIN8LightGBM15FeatureMetainfoESaIS1_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIN8LightGBM15FeatureMetainfoESaIS1_EE", !68, i64 0}
!70 = !{!"bool", !16, i64 0}
!71 = !{!"p1 int", !21, i64 0}
!72 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !71, i64 0, !71, i64 8, !71, i64 16}
!73 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !72, i64 0}
!74 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !73, i64 0}
!75 = !{!"_ZTSSt6vectorIiSaIiEE", !74, i64 0}
!76 = !{!"_ZTSN8LightGBM13HistogramPoolE", !59, i64 0, !64, i64 24, !69, i64 48, !17, i64 72, !17, i64 76, !70, i64 80, !75, i64 88, !75, i64 112, !75, i64 136, !17, i64 160}
!77 = !{!"p1 _ZTSN8LightGBM6ConfigE", !21, i64 0}
!78 = !{!"double", !16, i64 0}
!79 = !{!"_ZTSN8LightGBM6RandomE", !17, i64 0}
!80 = !{!"p1 omnipotent char", !21, i64 0}
!81 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !80, i64 0, !80, i64 8, !80, i64 16}
!82 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !81, i64 0}
!83 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !82, i64 0}
!84 = !{!"_ZTSSt6vectorIaSaIaEE", !83, i64 0}
!85 = !{!"p1 _ZTSSt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEE", !21, i64 0}
!86 = !{!"_ZTSNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE17_Vector_impl_dataE", !85, i64 0, !85, i64 8, !85, i64 16}
!87 = !{!"_ZTSNSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE12_Vector_implE", !86, i64 0}
!88 = !{!"_ZTSSt12_Vector_baseISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE", !87, i64 0}
!89 = !{!"_ZTSSt6vectorISt13unordered_setIiSt4hashIiESt8equal_toIiESaIiEESaIS6_EE", !88, i64 0}
!90 = !{!"_ZTSN8LightGBM10ColSamplerE", !22, i64 0, !78, i64 8, !78, i64 16, !70, i64 24, !17, i64 28, !17, i64 32, !79, i64 36, !84, i64 40, !75, i64 64, !75, i64 88, !89, i64 112}
!91 = !{!"p1 _ZTSN24json11_internal_lightgbm4JsonE", !21, i64 0}
!92 = !{!"p1 _ZTSN8LightGBM19TrainingShareStatesE", !21, i64 0}
!93 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM19TrainingShareStatesELb0EE", !92, i64 0}
!94 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EEE", !93, i64 0}
!95 = !{!"_ZTSSt5tupleIJPN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EEE", !94, i64 0}
!96 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE", !95, i64 0}
!97 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_ELb1ELb1EE", !96, i64 0}
!98 = !{!"_ZTSSt10unique_ptrIN8LightGBM19TrainingShareStatesESt14default_deleteIS1_EE", !97, i64 0}
!99 = !{!"p1 _ZTSN8LightGBM29CostEfficientGradientBoostingE", !21, i64 0}
!100 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM29CostEfficientGradientBoostingELb0EE", !99, i64 0}
!101 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_EEE", !100, i64 0}
!102 = !{!"_ZTSSt5tupleIJPN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_EEE", !101, i64 0}
!103 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_EE", !102, i64 0}
!104 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_ELb1ELb1EE", !103, i64 0}
!105 = !{!"_ZTSSt10unique_ptrIN8LightGBM29CostEfficientGradientBoostingESt14default_deleteIS1_EE", !104, i64 0}
!106 = !{!"p1 _ZTSN8LightGBM19GradientDiscretizerE", !21, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN8LightGBM19GradientDiscretizerELb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJPN8LightGBM19GradientDiscretizerESt14default_deleteIS1_EEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJPN8LightGBM19GradientDiscretizerESt14default_deleteIS1_EEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implIN8LightGBM19GradientDiscretizerESt14default_deleteIS1_EE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataIN8LightGBM19GradientDiscretizerESt14default_deleteIS1_ELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrIN8LightGBM19GradientDiscretizerESt14default_deleteIS1_EE", !111, i64 0}
!113 = !{!"_ZTSN8LightGBM17SerialTreeLearnerE", !20, i64 0, !17, i64 8, !17, i64 12, !22, i64 16, !23, i64 24, !23, i64 32, !30, i64 40, !31, i64 48, !31, i64 56, !31, i64 64, !36, i64 72, !36, i64 96, !43, i64 120, !50, i64 128, !50, i64 136, !54, i64 144, !54, i64 168, !76, i64 192, !77, i64 360, !90, i64 368, !91, i64 504, !98, i64 512, !105, i64 520, !112, i64 528}
!114 = !{!113, !77, i64 360}
!115 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !80, i64 0}
!116 = !{!"long", !16, i64 0}
!117 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !115, i64 0, !116, i64 8, !16, i64 16}
!118 = !{!"_ZTSN8LightGBM8TaskTypeE", !16, i64 0}
!119 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0}
!120 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!121 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !120, i64 0}
!122 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !121, i64 0}
!123 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !122, i64 0}
!124 = !{!"p1 double", !21, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !124, i64 0, !124, i64 8, !124, i64 16}
!126 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !125, i64 0}
!127 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !126, i64 0}
!128 = !{!"_ZTSSt6vectorIdSaIdEE", !127, i64 0}
!129 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !21, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !129, i64 0, !129, i64 8, !129, i64 16}
!131 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE12_Vector_implE", !130, i64 0}
!132 = !{!"_ZTSSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE", !131, i64 0}
!133 = !{!"_ZTSSt6vectorIS_IdSaIdEESaIS1_EE", !132, i64 0}
!134 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !21, i64 0}
!135 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !134, i64 0, !134, i64 8, !134, i64 16}
!136 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE12_Vector_implE", !135, i64 0}
!137 = !{!"_ZTSSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE", !136, i64 0}
!138 = !{!"_ZTSSt6vectorIS_IiSaIiEESaIS1_EE", !137, i64 0}
!139 = !{!"_ZTSN8LightGBM6ConfigE", !117, i64 0, !118, i64 32, !117, i64 40, !117, i64 72, !117, i64 104, !117, i64 136, !123, i64 168, !17, i64 192, !78, i64 200, !17, i64 208, !117, i64 216, !17, i64 248, !117, i64 256, !17, i64 288, !70, i64 292, !70, i64 293, !70, i64 294, !78, i64 296, !17, i64 304, !17, i64 308, !78, i64 312, !78, i64 320, !78, i64 328, !78, i64 336, !17, i64 344, !17, i64 348, !70, i64 352, !78, i64 360, !78, i64 368, !17, i64 376, !70, i64 380, !17, i64 384, !17, i64 388, !78, i64 392, !70, i64 400, !78, i64 408, !78, i64 416, !78, i64 424, !78, i64 432, !78, i64 440, !78, i64 448, !17, i64 456, !78, i64 464, !70, i64 472, !70, i64 473, !17, i64 476, !78, i64 480, !78, i64 488, !17, i64 496, !17, i64 500, !78, i64 504, !78, i64 512, !17, i64 520, !17, i64 524, !84, i64 528, !117, i64 552, !78, i64 584, !128, i64 592, !117, i64 616, !78, i64 648, !78, i64 656, !78, i64 664, !128, i64 672, !128, i64 696, !78, i64 720, !117, i64 728, !17, i64 760, !117, i64 768, !117, i64 800, !17, i64 832, !17, i64 836, !70, i64 840, !17, i64 844, !70, i64 848, !70, i64 849, !70, i64 850, !17, i64 852, !75, i64 856, !17, i64 880, !17, i64 884, !17, i64 888, !70, i64 892, !70, i64 893, !70, i64 894, !70, i64 895, !70, i64 896, !70, i64 897, !70, i64 898, !70, i64 899, !117, i64 904, !117, i64 936, !117, i64 968, !117, i64 1000, !117, i64 1032, !117, i64 1064, !70, i64 1096, !70, i64 1097, !117, i64 1104, !17, i64 1136, !17, i64 1140, !70, i64 1144, !70, i64 1145, !70, i64 1146, !70, i64 1147, !70, i64 1148, !17, i64 1152, !78, i64 1160, !117, i64 1168, !117, i64 1200, !117, i64 1232, !17, i64 1264, !17, i64 1268, !70, i64 1272, !78, i64 1280, !78, i64 1288, !70, i64 1296, !70, i64 1297, !78, i64 1304, !78, i64 1312, !78, i64 1320, !78, i64 1328, !17, i64 1336, !70, i64 1340, !128, i64 1344, !78, i64 1368, !123, i64 1376, !17, i64 1400, !70, i64 1404, !75, i64 1408, !17, i64 1432, !128, i64 1440, !17, i64 1464, !17, i64 1468, !17, i64 1472, !117, i64 1480, !117, i64 1512, !17, i64 1544, !17, i64 1548, !117, i64 1552, !70, i64 1584, !17, i64 1588, !116, i64 1592, !70, i64 1600, !70, i64 1601, !133, i64 1608, !138, i64 1632}
!140 = !{!139, !17, i64 208}
!141 = !{!22, !22, i64 0}
!142 = !{!"p1 _ZTSSt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS1_EE", !21, i64 0}
!143 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE17_Vector_impl_dataE", !142, i64 0, !142, i64 8, !142, i64 16}
!144 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE12_Vector_implE", !143, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorISt10unique_ptrIN8LightGBM12FeatureGroupESt14default_deleteIS2_EESaIS5_EE", !145, i64 0}
!147 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!148 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !147, i64 0}
!149 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !148, i64 0}
!150 = !{!"_ZTSSt6vectorIfSaIfEE", !149, i64 0}
!151 = !{!"_ZTSSt12__mutex_base", !16, i64 0}
!152 = !{!"_ZTSSt5mutex", !151, i64 0}
!153 = !{!"_ZTSN8LightGBM8MetadataE", !117, i64 0, !17, i64 32, !17, i64 36, !17, i64 40, !150, i64 48, !150, i64 72, !75, i64 96, !123, i64 120, !75, i64 144, !150, i64 168, !17, i64 192, !116, i64 200, !128, i64 208, !75, i64 232, !152, i64 256, !70, i64 296, !70, i64 297, !70, i64 298, !70, i64 299}
end_hunk_2
