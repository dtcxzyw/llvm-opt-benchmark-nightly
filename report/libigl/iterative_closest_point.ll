Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/iterative_closest_point?download=true
inline.NumInlined: 1501
inline.NumDeleted: 931
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEclINS1_IiLin1ELi1ELi0ELin1ELi1EEENS_8internal5all_tEEENS6_9enable_ifIXaasr8internal27valid_indexed_view_overloadIT_T0_EE5valuesr8internal6traitsINS3_20ConstIndexedViewTypeIS9_SA_E4typeEEE19ReturnAsIndexedViewESD_E4typeERKS9_RKSA_:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #17, !noalias !90 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !27, !noalias !90
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20, !noalias !90
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = shl nuw i64 %i.b, 2                      ; 4 uses
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #19, !noalias !90 ; 5 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #17, !noalias !90 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !27, !noalias !90
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20, !noalias !90
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %i.m = load ptr, ptr %2, align 8, !tbaa !34, !noalias !90
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.m, i64 %i.i, i1 false), !noalias !90
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28
  store ptr %1, ptr %0, align 8, !tbaa !41
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.i) #19 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc5 unwind label %bb.h

.noexc5:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8, !tbaa !34
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.t, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.p, ptr nonnull align 4 %i.j, i64 %i.i, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread
  %.sroa.06.01217 = phi ptr [ null, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.j, %bb.f ]
  %i.u = phi i64 [ %i.e, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i.thread ], [ %i.o, %bb.f ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.u, ptr %i.v, align 8, !tbaa !29
  tail call void @free(ptr noundef %.sroa.06.01217) #17
  ret void

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.j) #17
  resume { ptr, i32 } %i.w
}

declare void @_ZN3igl15rigid_alignmentIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_S3_NS2_IdLi3ELi3ELi0ELi3ELi3EEENS2_IdLi1ELi3ELi1ELi1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EERNSJ_IT3_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #17
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #19 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !27
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !25
  store i64 %3, ptr %i.c, align 8, !tbaa !28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS3_NS2_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS2_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.129", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  call void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi3ELi3ELi0ELi3ELi3EEELi0EEELi3ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(41) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102, !nonnull !43, !align !44 ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !103
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %.not.i = icmp eq i64 %i.i, %i.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %.not8.i = icmp eq i64 %i.k, 3
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i64 %i.g, 3074457345618258602
  br i1 %i.l, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = call ptr @__cxa_allocate_exception(i64 8) #17 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !27
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.c
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.b
  %i.n = mul nsw i64 %i.g, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %i.g, i64 noundef 3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %.pr = load i64, ptr %i.j, align 8, !tbaa !28   ; 2 uses
  %i.o = icmp sgt i64 %.pr, 0
  br i1 %i.o, label %..preheader.lr.ph.i_crit_edge, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS5_NS4_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS4_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

..preheader.lr.ph.i_crit_edge:                    ; preds = %bb.d
  %.pre = load i64, ptr %i.h, align 8, !tbaa !25
  br label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %..preheader.lr.ph.i_crit_edge, %bb.a
  %i.p = phi i64 [ %.pre, %..preheader.lr.ph.i_crit_edge ], [ %i.g, %bb.a ] ; 11 uses
  %i.q = phi i64 [ %.pr, %..preheader.lr.ph.i_crit_edge ], [ 3, %bb.a ] ; 4 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.s = icmp sgt i64 %i.p, 0
  br i1 %i.s, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS5_NS4_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS4_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !48   ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !49   ; 3 uses
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !105  ; 3 uses
  %i.x = mul i64 %i.p, %i.q
  %i.y = shl i64 %i.x, 3
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.y ; 2 uses
  %i.z = shl i64 %i.q, 3
  %scevgep15 = getelementptr i8, ptr %i.w, i64 %i.z
  %i.aa = add nuw i64 %i.q, 2305843009213693951
  %i.ab = mul i64 %i.v, %i.aa
  %i.ac = add i64 %i.ab, %i.p
  %i.ad = shl i64 %i.ac, 3
  %scevgep16 = getelementptr i8, ptr %i.u, i64 %i.ad
  %min.iters.check = icmp ult i64 %i.p, 8
  %bound0 = icmp ult ptr %i.r, %scevgep15
  %bound1 = icmp ult ptr %i.w, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.p, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %4 = or i1 %found.conflict, %stride.check
  %bound118.a = icmp ult ptr %i.r, %scevgep16
  %bound118 = icmp ult ptr %i.u, %scevgep
  %found.conflict19 = and i1 %bound118.a, %bound118
  %i.ae = and i64 %i.v, 1152921504606846976
  %i.af = icmp ne i64 %i.ae, 0
  %i.ag = or i1 %found.conflict19, %i.af
  %conflict.rdx = or i1 %4, %i.ag
  %n.vec = and i64 %i.p, 8070450532247928828      ; 3 uses
  %cmp.n = icmp eq i64 %i.p, %n.vec
  %xtraiter = and i64 %i.p, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0812.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ay, %._crit_edge.i ] ; 4 uses
  %i.ah = mul nuw nsw i64 %.0812.i, %i.p
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.r, i64 %i.ah ; 6 uses
  %i.ai = mul nsw i64 %.0812.i, %i.v
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.u, i64 %i.ai ; 6 uses
  %i.aj = getelementptr [8 x i8], ptr %i.w, i64 %.0812.i ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !11, !alias.scope !106
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ak, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.al = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.am = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %index ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 16
  %wide.load = load <2 x double>, ptr %i.am, align 8, !tbaa !11, !alias.scope !107
  %wide.load22 = load <2 x double>, ptr %i.an, align 8, !tbaa !11, !alias.scope !107
  %i.ao = fadd <2 x double> %broadcast.splat, %wide.load
  %i.ap = fadd <2 x double> %broadcast.splat, %wide.load22
  %i.aq = getelementptr i8, ptr %i.al, i64 16
  store <2 x double> %i.ao, ptr %i.al, align 8, !tbaa !11, !alias.scope !108, !noalias !109
  store <2 x double> %i.ap, ptr %i.aq, align 8, !tbaa !11, !alias.scope !108, !noalias !109
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !95

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.prol = phi i64 [ %i.av, %scalar.ph.prol ], [ %.09.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %gep11.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i.prol
  %i.as = load double, ptr %i.aj, align 8, !tbaa !11
  %i.at = load double, ptr %gep11.i.prol, align 8, !tbaa !11
  %i.au = fadd double %i.as, %i.at
  store double %i.au, ptr %gep.i.prol, align 8, !tbaa !11
  %i.av = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !96

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.av, %scalar.ph.prol ]
  %i.aw = sub nsw i64 %.09.i.ph, %i.p
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ay = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.ay, %i.q
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS5_NS4_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS4_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit, label %.preheader.i, !llvm.loop !97

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bo, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.az = load double, ptr %i.aj, align 8, !tbaa !11
  %i.ba = load double, ptr %gep11.i, align 8, !tbaa !11
  %i.bb = fadd double %i.az, %i.ba
  store double %i.bb, ptr %gep.i, align 8, !tbaa !11
  %i.bc = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bc
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.bc
  %i.bd = load double, ptr %i.aj, align 8, !tbaa !11
  %i.be = load double, ptr %gep11.i.1, align 8, !tbaa !11
  %i.bf = fadd double %i.bd, %i.be
  store double %i.bf, ptr %gep.i.1, align 8, !tbaa !11
  %i.bg = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bg
  %gep11.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.bg
  %i.bh = load double, ptr %i.aj, align 8, !tbaa !11
  %i.bi = load double, ptr %gep11.i.2, align 8, !tbaa !11
  %i.bj = fadd double %i.bh, %i.bi
  store double %i.bj, ptr %gep.i.2, align 8, !tbaa !11
  %i.bk = add nuw nsw i64 %.09.i, 3               ; 2 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.bk
  %gep11.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.bk
  %i.bl = load double, ptr %i.aj, align 8, !tbaa !11
  %i.bm = load double, ptr %gep11.i.3, align 8, !tbaa !11
  %i.bn = fadd double %i.bl, %i.bm
  store double %i.bn, ptr %gep.i.3, align 8, !tbaa !11
  %i.bo = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bo, %i.p
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph, !llvm.loop !98

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS_7ProductIS5_NS4_IdLi3ELi3ELi0ELi3ELi3EEELi0EEEKNS_9ReplicateINS4_IdLi1ELi3ELi1ELi1ELi3EEELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSM_.exit: ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !31
  call void @free(ptr noundef %i.bq) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  ret void

bb.e:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.c
  %i.br = landingpad { ptr, i32 }
          cleanup
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !31
  call void @free(ptr noundef %i.bt) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  resume { ptr, i32 } %i.br
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi3ELi3ELi0ELi3ELi3EEELi0EEELi3ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::evaluator.160", align 8 ; 9 uses
  %3 = alloca %"struct.Eigen::internal::evaluator.134", align 8 ; 5 uses
  %4 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.164", align 8 ; 7 uses
  %5 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !110
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !112, !nonnull !43, !align !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.e, i64 noundef 3)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !31
  tail call void @free(ptr noundef %i.g) #17
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !54   ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !110
  store i64 %i.j, ptr %i.a, align 8, !tbaa !49
  %i.k = load ptr, ptr %1, align 8, !tbaa !112, !nonnull !43, !align !44 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !113, !nonnull !43, !align !44 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %i.k, ptr %2, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !114
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25   ; 3 uses
  store ptr %i.p, ptr %i.o, align 8, !tbaa !110
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.r, ptr %i.s, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %i.m, ptr %i.t, align 8, !tbaa !115
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !28
  store i64 %i.w, ptr %i.u, align 8, !tbaa !116
  %.not.i.i.i.i.i = icmp eq i64 %i.j, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.r, i64 noundef 3)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.i, align 8, !tbaa !54
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !31
  br label %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i

_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi3ELi3ELi0ELi3ELi3EEELi1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i: ; preds = %.noexc, %bb.c
  %i.x = phi ptr [ %.pre, %.noexc ], [ %i.h, %bb.c ]
  %i.y = phi i64 [ %.pre.i.i.i.i, %.noexc ], [ %i.j, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  store ptr %i.x, ptr %3, align 8, !tbaa !110
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store ptr %3, ptr %4, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.aa, align 8, !tbaa !118
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %5, ptr %i.ab, align 8, !tbaa !119
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.b, ptr %i.ac, align 8, !tbaa !120
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS4_IdLi3ELi3ELi0ELi3ELi3EEELi1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSE_(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f
end_hunk_0
