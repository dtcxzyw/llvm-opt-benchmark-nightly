Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/per_vertex_normals?download=true
inline.NumInlined: 3143
inline.NumDeleted: 1837
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 65
loop-unroll.NumUnrolled: 80
begin_hunk_0_@_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES5_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS_29PerVertexNormalsWeightingTypeERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE:bb.a
  %i.fn = fmul double %i.ex, %i.fm
  %i.fo = load double, ptr %i.fl, align 8, !tbaa !18
  %i.fp = fadd double %i.fn, %i.fo
  store double %i.fp, ptr %i.fl, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.cu
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !417

._crit_edge:                                      ; preds = %.preheader, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE11setConstantERKd.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %4, ptr %6, align 8, !tbaa !32, !alias.scope !425
  %i.fq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.fq, align 8, !tbaa !32, !alias.scope !425
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(65) %6, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  %i.fr = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.fr) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void

bb.o:                                             ; preds = %bb.m, %._crit_edge
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.pn33.pn.pn = phi { ptr, i32 } [ %i.cs, %bb.l ], [ %i.fs, %bb.o ]
  %i.ft = load ptr, ptr %7, align 8, !tbaa !16
  call void @free(ptr noundef %i.ft) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  br label %common.resume
}

declare void @_ZN3igl10doubleareaIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare void @_ZN3igl15internal_anglesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl16per_face_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEEEEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EERNS1_15PlainObjectBaseIT1_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IdLin1ELi3ELi0ELin1ELi3EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS6_IT0_EENS_29PerVertexNormalsWeightingTypeERKNS6_IT1_EERNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef 3, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_29PerVertexNormalsWeightingTypeERNS1_15PlainObjectBaseIT1_EE.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %3, align 8, !tbaa !16
  call void @free(ptr noundef %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  resume { ptr, i32 } %i.a

_ZN3igl18per_vertex_normalsIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EENS_29PerVertexNormalsWeightingTypeERNS1_15PlainObjectBaseIT1_EE.exit: ; preds = %bb.b
  %i.c = load ptr, ptr %3, align 8, !tbaa !16
  call void @free(ptr noundef %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = mul nsw i64 %i.h, 3
  %.not.i = icmp eq i64 %i.f, %i.i
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.j = load ptr, ptr %0, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.j) #14
  %i.k = icmp sgt i64 %i.f, 0
  br i1 %i.k, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.n = shl nuw i64 %i.f, 3
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #16 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #14 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !39
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #15
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.o, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !16
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi3ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !15
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.310", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !443, !nonnull !52, !align !75 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !15
  store ptr %i.c, ptr %i.a, align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !444, !nonnull !52, !align !75 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i64 noundef %i.k, i64 noundef 1)
          to label %bb.b unwind label %.body.i.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !27 ; 8 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !26 ; 6 uses
  %.pre.i.i.i.i.i.i.i19 = ptrtoaddr ptr %.pre.i.i.i.i.i.i.i to i64
  %i.m = sdiv i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.n = shl nsw i64 %i.m, 1                      ; 7 uses
  %i.o = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.n, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !16   ; 5 uses
  %i.r = load i64, ptr %i.j, align 8, !tbaa !15   ; 6 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.r, 4 ; 5 uses
  %i.s = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 6
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = ptrtoaddr ptr %i.q to i64
  %i.u = sub i64 %.pre.i.i.i.i.i.i.i19, %i.t      ; 3 uses
  %4 = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.u
  %diff.check = icmp ugt i64 %4, -16
  %i.v = shl i64 %i.r, 3
  %i.w = sub i64 %i.v, %i.u
  %diff.check20 = icmp ugt i64 %i.w, -16
  %conflict.rdx = or i1 %diff.check, %diff.check20
  %5 = add i64 %i.u, -1
  %diff.check21 = icmp ult i64 %5, 15
  %conflict.rdx22 = or i1 %conflict.rdx, %diff.check21
  br i1 %conflict.rdx22, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 1  ; 2 uses
  %n.vec = sub i64 %i.s, %i.x                     ; 2 uses
  %i.y = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %i.n, %index                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.z
  %i.ab = getelementptr [8 x i8], ptr %i.q, i64 %i.z ; 3 uses
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !18 ; 2 uses
  %i.ac = fmul <2 x double> %wide.load, %wide.load
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.r
  %wide.load23 = load <2 x double>, ptr %i.ad, align 8, !tbaa !18 ; 2 uses
  %i.ae = fmul <2 x double> %wide.load23, %wide.load23
  %i.af = getelementptr i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %wide.load24 = load <2 x double>, ptr %i.af, align 8, !tbaa !18 ; 2 uses
  %i.ag = fmul <2 x double> %wide.load24, %wide.load24
  %i.ah = fadd <2 x double> %i.ae, %i.ag
  %i.ai = fadd <2 x double> %i.ac, %i.ah
  %i.aj = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ai)
  store <2 x double> %i.aj, ptr %i.aa, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %middle.block ] ; 6 uses
  %i.al = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.am = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.an = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 3 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !18 ; 2 uses
  %i.ap = fmul double %i.ao, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.an, i64 %i.r
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !18 ; 2 uses
  %i.as = fmul double %i.ar, %i.ar
  %i.at = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !18 ; 2 uses
  %i.av = fmul double %i.au, %i.au
  %i.aw = fadd double %i.as, %i.av
  %i.ax = fadd double %i.ap, %i.aw
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = call noundef double @llvm.sqrt.f64(double %i.ax)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, ptr %i.am, align 8, !tbaa !18
  %i.ay = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.ay, %scalar.ph.prol ]
  %i.az = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.az, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bb = getelementptr [8 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !18 ; 2 uses
  %i.bd = fmul double %i.bc, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.bb, i64 %i.r
  %i.bf = load double, ptr %i.be, align 8, !tbaa !18 ; 2 uses
  %i.bg = fmul double %i.bf, %i.bf
  %i.bh = getelementptr i8, ptr %i.bb, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !18 ; 2 uses
  %i.bj = fmul double %i.bi, %i.bi
  %i.bk = fadd double %i.bg, %i.bj
  %i.bl = fadd double %i.bd, %i.bk
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef double @llvm.sqrt.f64(double %i.bl)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ba, align 8, !tbaa !18
  %i.bm = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.bm
  %i.bo = getelementptr [8 x i8], ptr %i.q, i64 %i.bm ; 3 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !18 ; 2 uses
  %i.bq = fmul double %i.bp, %i.bp
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %i.r
  %i.bs = load double, ptr %i.br, align 8, !tbaa !18 ; 2 uses
  %i.bt = fmul double %i.bs, %i.bs
  %i.bu = getelementptr i8, ptr %i.bo, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !18 ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = fadd double %i.bt, %i.bw
  %i.by = fadd double %i.bq, %i.bx
  %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = call noundef double @llvm.sqrt.f64(double %i.by)
  store double %.scalar.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, ptr %i.bn, align 8, !tbaa !18
  %i.bz = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bz, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph, !llvm.loop !427

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !16
  %i.cc = load i64, ptr %i.j, align 8, !tbaa !15  ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ce = load <2 x double>, ptr %i.cd, align 1, !tbaa !79 ; 2 uses
  %i.cf = fmul <2 x double> %i.ce, %i.ce
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.cd, i64 %i.cc
  %i.ch = load <2 x double>, ptr %i.cg, align 1, !tbaa !79 ; 2 uses
  %i.ci = fmul <2 x double> %i.ch, %i.ch
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.cc, 4
  %i.cj = getelementptr inbounds i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ck = load <2 x double>, ptr %i.cj, align 1, !tbaa !79 ; 2 uses
  %i.cl = fmul <2 x double> %i.ck, %i.ck
  %i.cm = fadd <2 x double> %i.ci, %i.cl
  %i.cn = fadd <2 x double> %i.cf, %i.cm
  %i.co = call noundef <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.cn)
  store <2 x double> %i.co, ptr %i.ca, align 16, !tbaa !79
  %i.cp = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.n
  br i1 %i.cq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !428

common.resume:                                    ; preds = %bb.e, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.cr, %.body.i.i.i.i.i.i ], [ %i.hs, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !26
  call void @free(ptr noundef %i.cs) #14
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.cu = load ptr, ptr %i.g, align 8, !tbaa !26
  store ptr %i.cu, ptr %i.ct, align 8, !tbaa !81
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.cw = load ptr, ptr %i.h, align 8, !tbaa !444, !nonnull !52, !align !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !15 ; 4 uses
  store i64 %i.cy, ptr %i.cv, align 8, !tbaa !83
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !15
  %.not.i = icmp eq i64 %i.da, %i.cy
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.cy, i64 noundef 3)
          to label %thread-pre-split unwind label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.cz, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  %i.db = phi i64 [ %.pr, %thread-pre-split ], [ %i.cy, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit ] ; 22 uses
  %i.dc = load ptr, ptr %0, align 8, !tbaa !16    ; 9 uses
  %i.dd = ptrtoaddr ptr %i.dc to i64              ; 4 uses
  %i.de = icmp sgt i64 %i.db, 0
  br i1 %i.de, label %.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.split.i:                                         ; preds = %bb.d
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !446 ; 9 uses
  %i.dg = ptrtoaddr ptr %i.df to i64              ; 3 uses
  %i.dh = load i64, ptr %i.f, align 8, !tbaa !78  ; 3 uses
  %i.di = load ptr, ptr %i.ct, align 8, !tbaa !85 ; 19 uses
  %i.dj = ptrtoaddr ptr %i.di to i64              ; 3 uses
  %min.iters.check30 = icmp eq i64 %i.db, 1
  br i1 %min.iters.check30, label %scalar.ph29.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %.split.i
  %i.dk = sub i64 %i.dj, %i.dd
  %diff.check32 = icmp ugt i64 %i.dk, -16
  %i.dl = sub i64 %i.dg, %i.dd
  %diff.check33 = icmp ugt i64 %i.dl, -16
  %conflict.rdx34 = or i1 %diff.check32, %diff.check33
  br i1 %conflict.rdx34, label %scalar.ph29.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %i.db, 9223372036854775806   ; 3 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next41, %vector.body37 ] ; 4 uses
  %i.dm = getelementptr [8 x i8], ptr %i.dc, i64 %index38
  %i.dn = getelementptr [8 x i8], ptr %i.df, i64 %index38
  %i.do = getelementptr [8 x i8], ptr %i.di, i64 %index38
  %wide.load39 = load <2 x double>, ptr %i.do, align 8, !tbaa !18
  %wide.load40 = load <2 x double>, ptr %i.dn, align 8, !tbaa !18
  %i.dp = fdiv <2 x double> %wide.load40, %wide.load39
  store <2 x double> %i.dp, ptr %i.dm, align 8, !tbaa !18
  %index.next41 = add nuw i64 %index38, 2         ; 2 uses
  %i.dq = icmp eq i64 %index.next41, %n.vec36
  br i1 %i.dq, label %middle.block42, label %vector.body37, !llvm.loop !429

middle.block42:                                   ; preds = %vector.body37
  %cmp.n43 = icmp eq i64 %i.db, %n.vec36
  br i1 %cmp.n43, label %._crit_edge.i, label %scalar.ph29.preheader
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %i.go = phi i64 [ %.pre, %thread-pre-split ], [ %i.gb, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 11 uses
  %i.gp = phi i64 [ %.pr, %thread-pre-split ], [ %i.gd, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIdEES7_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEC2ERKSO_.exit ] ; 4 uses
  %i.gq = load ptr, ptr %0, align 8, !tbaa !61    ; 4 uses
  %i.gr = icmp sgt i64 %i.gp, 0
  %i.gs = icmp sgt i64 %i.go, 0
  %or.cond = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.g
  %i.gt = load ptr, ptr %i.a, align 8, !tbaa !559 ; 3 uses
  %i.gu = load i64, ptr %i.f, align 8, !tbaa !78  ; 3 uses
  %i.gv = load ptr, ptr %i.fw, align 8, !tbaa !85 ; 8 uses
  %i.gw = shl i64 %i.go, 3                        ; 2 uses
  %i.gx = add nuw i64 %i.gp, 2305843009213693951
  %i.gy = mul i64 %i.gu, %i.gx
  %i.gz = add i64 %i.gy, %i.go
  %i.ha = shl i64 %i.gz, 3
  %scevgep = getelementptr i8, ptr %i.gt, i64 %i.ha
  %scevgep50 = getelementptr i8, ptr %i.gv, i64 %i.gw
  %i.hb = mul i64 %i.gp, %i.go
  %i.hc = shl i64 %i.hb, 3
  %scevgep51 = getelementptr i8, ptr %i.gq, i64 %i.hc ; 2 uses
  %min.iters.check53 = icmp ult i64 %i.go, 2
  %bound0 = icmp ult ptr %i.gq, %scevgep50
  %bound1 = icmp ult ptr %i.gv, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.gw, 0
  %i.hd = or i1 %found.conflict, %stride.check
  %bound055 = icmp ult ptr %i.gq, %scevgep
  %bound156 = icmp ult ptr %i.gt, %scevgep51
  %found.conflict57 = and i1 %bound055, %bound156
  %.mask = and i64 %i.gu, 1152921504606846976
  %stride.check58 = icmp ne i64 %.mask, 0
  %i.he = or i1 %found.conflict57, %stride.check58
  %conflict.rdx = or i1 %i.hd, %i.he
  %n.vec60 = and i64 %i.go, 9223372036854775806   ; 3 uses
  %cmp.n67 = icmp eq i64 %i.go, %n.vec60
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0812.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.hu, %._crit_edge.i ] ; 3 uses
  %i.hf = mul nuw nsw i64 %.0812.i, %i.go
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.gq, i64 %i.hf ; 6 uses
  %i.hg = mul nsw i64 %.0812.i, %i.gu
  %invariant.gep10.i = getelementptr [8 x i8], ptr %i.gt, i64 %i.hg ; 6 uses
  %brmerge = select i1 %min.iters.check53, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph52.preheader, label %vector.body61

vector.body61:                                    ; preds = %.preheader.i, %vector.body61
  %index62 = phi i64 [ %index.next65, %vector.body61 ], [ 0, %.preheader.i ] ; 4 uses
  %i.hh = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %index62
  %i.hi = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %index62
  %i.hj = getelementptr [8 x i8], ptr %i.gv, i64 %index62
  %wide.load63 = load <2 x double>, ptr %i.hj, align 8, !tbaa !18, !alias.scope !560
  %wide.load64 = load <2 x double>, ptr %i.hi, align 8, !tbaa !18, !alias.scope !561
  %i.hk = fdiv <2 x double> %wide.load64, %wide.load63
  store <2 x double> %i.hk, ptr %i.hh, align 8, !tbaa !18, !alias.scope !562, !noalias !563
  %index.next65 = add nuw i64 %index62, 2         ; 2 uses
  %i.hl = icmp eq i64 %index.next65, %n.vec60
  br i1 %i.hl, label %middle.block66, label %vector.body61, !llvm.loop !546

middle.block66:                                   ; preds = %vector.body61
  br i1 %cmp.n67, label %._crit_edge.i, label %scalar.ph52.preheader

scalar.ph52.preheader:                            ; preds = %.preheader.i, %middle.block66
  %.09.i.ph = phi i64 [ %n.vec60, %middle.block66 ], [ 0, %.preheader.i ] ; 4 uses
  %i.hm = sub nsw i64 %i.go, %.09.i.ph
  %xtraiter82 = and i64 %i.hm, 3                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol

scalar.ph52.prol:                                 ; preds = %scalar.ph52.preheader, %scalar.ph52.prol
  %.09.i.prol = phi i64 [ %i.hr, %scalar.ph52.prol ], [ %.09.i.ph, %scalar.ph52.preheader ] ; 4 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %scalar.ph52.prol ], [ 0, %scalar.ph52.preheader ]
  %gep.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i.prol
  %gep11.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i.prol
  %i.hn = getelementptr [8 x i8], ptr %i.gv, i64 %.09.i.prol
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !18
  %i.hp = load double, ptr %gep11.i.prol, align 8, !tbaa !18
  %i.hq = fdiv double %i.hp, %i.ho
  store double %i.hq, ptr %gep.i.prol, align 8, !tbaa !18
  %i.hr = add nuw nsw i64 %.09.i.prol, 1          ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %scalar.ph52.prol.loopexit, label %scalar.ph52.prol, !llvm.loop !547

scalar.ph52.prol.loopexit:                        ; preds = %scalar.ph52.prol, %scalar.ph52.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph52.preheader ], [ %i.hr, %scalar.ph52.prol ]
  %i.hs = sub nsw i64 %.09.i.ph, %i.go
  %i.ht = icmp ugt i64 %i.hs, -4
  br i1 %i.ht, label %._crit_edge.i, label %scalar.ph52

._crit_edge.i:                                    ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52, %middle.block66
  %i.hu = add nuw nsw i64 %.0812.i, 1             ; 2 uses
  %exitcond14.not.i = icmp eq i64 %i.hu, %i.gp
  br i1 %exitcond14.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit, label %.preheader.i, !llvm.loop !548

scalar.ph52:                                      ; preds = %scalar.ph52.prol.loopexit, %scalar.ph52
  %.09.i = phi i64 [ %i.io, %scalar.ph52 ], [ %.09.i.unr, %scalar.ph52.prol.loopexit ] ; 7 uses
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %.09.i
  %gep11.i = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %.09.i
  %i.hv = getelementptr [8 x i8], ptr %i.gv, i64 %.09.i
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !18
  %i.hx = load double, ptr %gep11.i, align 8, !tbaa !18
  %i.hy = fdiv double %i.hx, %i.hw
  store double %i.hy, ptr %gep.i, align 8, !tbaa !18
  %i.hz = add nuw nsw i64 %.09.i, 1               ; 3 uses
  %gep.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.hz
  %gep11.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.hz
  %i.ia = getelementptr [8 x i8], ptr %i.gv, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !18
  %i.ic = load double, ptr %gep11.i.1, align 8, !tbaa !18
  %i.id = fdiv double %i.ic, %i.ib
  store double %i.id, ptr %gep.i.1, align 8, !tbaa !18
  %i.ie = add nuw nsw i64 %.09.i, 2               ; 3 uses
  %gep.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ie
  %gep11.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.ie
  %i.if = getelementptr [8 x i8], ptr %i.gv, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !18
  %i.ih = load double, ptr %gep11.i.2, align 8, !tbaa !18
  %i.ii = fdiv double %i.ih, %i.ig
  store double %i.ii, ptr %gep.i.2, align 8, !tbaa !18
  %i.ij = add nuw nsw i64 %.09.i, 3               ; 3 uses
  %gep.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %i.ij
  %gep11.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i, i64 %i.ij
  %i.ik = getelementptr [8 x i8], ptr %i.gv, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !18
  %i.im = load double, ptr %gep11.i.3, align 8, !tbaa !18
  %i.in = fdiv double %i.im, %i.il
  store double %i.in, ptr %gep.i.3, align 8, !tbaa !18
  %i.io = add nuw nsw i64 %.09.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.io, %i.go
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %scalar.ph52, !llvm.loop !549

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIdEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIdEESA_EENS0_10member_sumIddEELi1EEEEELi1ELin1EEEEEEENS0_9assign_opIddEELi0EEELi0ELi0EE3runERSV_.exit: ; preds = %._crit_edge.i, %bb.g
  %i.ip = load ptr, ptr %i.g, align 8, !tbaa !26
  call void @free(ptr noundef %i.ip) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  ret void

bb.h:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.f
  %i.iq = landingpad { ptr, i32 }
          cleanup
  %i.ir = load ptr, ptr %i.g, align 8, !tbaa !26
  call void @free(ptr noundef %i.ir) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS3_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEENS0_9assign_opIffEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(65) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.862", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !581, !nonnull !52, !align !75 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  store ptr %i.c, ptr %i.a, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i64 %i.e, ptr %i.f, align 8, !tbaa !99
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i8 0, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !582, !nonnull !52, !align !75 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !48   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i

thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(33) %i.g, i64 noundef %i.k, i64 noundef 1)
          to label %bb.b unwind label %.body.i.i.i.i.i.i

bb.b:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !51 ; 8 uses
  %.pre.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !50 ; 6 uses
  %.pre.i.i.i.i.i.i.i19 = ptrtoaddr ptr %.pre.i.i.i.i.i.i.i to i64
  %i.m = sdiv i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 4
  %i.n = shl nsw i64 %i.m, 2                      ; 7 uses
  %i.o = icmp sgt i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 3
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.b
  %i.p = icmp slt i64 %i.n, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !35   ; 5 uses
  %i.r = load i64, ptr %i.j, align 8, !tbaa !48   ; 6 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.r, 3 ; 5 uses
  %i.s = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %i.n ; 2 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.t = ptrtoaddr ptr %i.q to i64
  %i.u = sub i64 %.pre.i.i.i.i.i.i.i19, %i.t      ; 3 uses
  %4 = sub i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.u
  %diff.check = icmp ugt i64 %4, -16
  %i.v = shl i64 %i.r, 2
  %i.w = sub i64 %i.v, %i.u
  %diff.check20 = icmp ugt i64 %i.w, -16
  %conflict.rdx = or i1 %diff.check, %diff.check20
  %5 = add i64 %i.u, -1
  %diff.check21 = icmp ult i64 %5, 15
  %conflict.rdx22 = or i1 %conflict.rdx, %diff.check21
  br i1 %conflict.rdx22, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.x = and i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, 3  ; 2 uses
  %n.vec = sub i64 %i.s, %i.x                     ; 2 uses
  %i.y = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %i.n, %index                     ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.z
  %i.ab = getelementptr [4 x i8], ptr %i.q, i64 %i.z ; 3 uses
  %wide.load = load <4 x float>, ptr %i.ab, align 4, !tbaa !45 ; 2 uses
  %i.ac = fmul <4 x float> %wide.load, %wide.load
  %i.ad = getelementptr [4 x i8], ptr %i.ab, i64 %i.r
  %wide.load23 = load <4 x float>, ptr %i.ad, align 4, !tbaa !45 ; 2 uses
  %i.ae = fmul <4 x float> %wide.load23, %wide.load23
  %i.af = getelementptr i8, ptr %i.ab, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %wide.load24 = load <4 x float>, ptr %i.af, align 4, !tbaa !45 ; 2 uses
  %i.ag = fmul <4 x float> %wide.load24, %wide.load24
  %i.ah = fadd <4 x float> %i.ae, %i.ag
  %i.ai = fadd <4 x float> %i.ac, %i.ah
  %i.aj = call <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.ai)
  store <4 x float> %i.aj, ptr %i.aa, align 4, !tbaa !45
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, 0
  br i1 %cmp.n, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.n, %vector.memcheck ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %middle.block ] ; 6 uses
  %i.al = sub i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.am = getelementptr inbounds [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.an = getelementptr [4 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 3 uses
  %i.ao = load float, ptr %i.an, align 4, !tbaa !45 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = getelementptr [4 x i8], ptr %i.an, i64 %i.r
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !45 ; 2 uses
  %i.as = fmul float %i.ar, %i.ar
  %i.at = getelementptr i8, ptr %i.an, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !45 ; 2 uses
  %i.av = fmul float %i.au, %i.au
  %i.aw = fadd float %i.as, %i.av
  %i.ax = fadd float %i.ap, %i.aw
  %i.ay = call noundef float @llvm.sqrt.f32(float %i.ax)
  store float %i.ay, ptr %i.am, align 4, !tbaa !45
  %i.az = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.az, %scalar.ph.prol ]
  %i.ba = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i.i, %.neg
  br i1 %i.ba, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %scalar.ph ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bc = getelementptr [4 x i8], ptr %i.q, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !45 ; 2 uses
  %i.be = fmul float %i.bd, %i.bd
  %i.bf = getelementptr [4 x i8], ptr %i.bc, i64 %i.r
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !45 ; 2 uses
  %i.bh = fmul float %i.bg, %i.bg
  %i.bi = getelementptr i8, ptr %i.bc, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !45 ; 2 uses
  %i.bk = fmul float %i.bj, %i.bj
  %i.bl = fadd float %i.bh, %i.bk
  %i.bm = fadd float %i.be, %i.bl
  %i.bn = call noundef float @llvm.sqrt.f32(float %i.bm)
  store float %i.bn, ptr %i.bb, align 4, !tbaa !45
  %i.bo = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %i.bo
  %i.bq = getelementptr [4 x i8], ptr %i.q, i64 %i.bo ; 3 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !45 ; 2 uses
  %i.bs = fmul float %i.br, %i.br
  %i.bt = getelementptr [4 x i8], ptr %i.bq, i64 %i.r
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !45 ; 2 uses
  %i.bv = fmul float %i.bu, %i.bu
  %i.bw = getelementptr i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !45 ; 2 uses
  %i.by = fmul float %i.bx, %i.bx
  %i.bz = fadd float %i.bv, %i.by
  %i.ca = fadd float %i.bs, %i.bz
  %i.cb = call noundef float @llvm.sqrt.f32(float %i.ca)
  store float %i.cb, ptr %i.bp, align 4, !tbaa !45
  %i.cc = add nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.cc, %.pr.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit, label %scalar.ph, !llvm.loop !565

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.da, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.b ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i.i.i.i.i.i, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !35
  %i.cf = load i64, ptr %i.j, align 8, !tbaa !48  ; 2 uses
  %i.cg = getelementptr [4 x i8], ptr %i.ce, i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.ch = load <4 x float>, ptr %i.cg, align 1, !tbaa !79 ; 2 uses
  %i.ci = fmul <4 x float> %i.ch, %i.ch
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ck = load <4 x float>, ptr %i.cj, align 1, !tbaa !79 ; 2 uses
  %i.cl = fmul <4 x float> %i.ck, %i.ck
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.cf, 3
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !79 ; 2 uses
  %i.co = fmul <4 x float> %i.cn, %i.cn
  %i.cp = fadd <4 x float> %i.cl, %i.co
  %i.cq = fadd <4 x float> %i.ci, %i.cp           ; 4 uses
  %i.cr = fmul <4 x float> %i.cq, splat (float 5.000000e-01)
  %i.cs = call <4 x i1> @llvm.is.fpclass.v4f32(<4 x float> %i.cq, /* (nan pinf pnorm) */ i32 771)
  %i.ct = call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.cq) ; 3 uses
  %i.cu = fmul <4 x float> %i.ct, %i.ct
  %i.cv = fmul <4 x float> %i.cu, %i.cr
  %i.cw = fsub <4 x float> splat (float 1.500000e+00), %i.cv
  %i.cx = fmul <4 x float> %i.ct, %i.cw
  %i.cy = fmul <4 x float> %i.cq, %i.cx
  %i.cz = select <4 x i1> %i.cs, <4 x float> %i.cy, <4 x float> zeroinitializer
  store <4 x float> %i.cz, ptr %i.cd, align 16, !tbaa !79
  %i.da = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.db = icmp slt i64 %i.da, %i.n
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !566

common.resume:                                    ; preds = %bb.e, %.body.i.i.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.dc, %.body.i.i.i.i.i.i ], [ %i.ia, %bb.e ]
  resume { ptr, i32 } %common.resume.op

.body.i.i.i.i.i.i:                                ; preds = %thread-pre-split.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = landingpad { ptr, i32 }
          cleanup
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !50
  call void @free(ptr noundef %i.dd) #14
  br label %common.resume

_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !50
  store ptr %i.df, ptr %i.de, align 8, !tbaa !93
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dh = load ptr, ptr %i.h, align 8, !tbaa !582, !nonnull !52, !align !75
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !48 ; 4 uses
  store i64 %i.dj, ptr %i.dg, align 8, !tbaa !83
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !48
  %.not.i = icmp eq i64 %i.dl, %i.dj
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.dj, i64 noundef 3)
          to label %thread-pre-split unwind label %bb.e

thread-pre-split:                                 ; preds = %bb.c
  %.pr = load i64, ptr %i.dk, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %thread-pre-split, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit
  %i.dm = phi i64 [ %.pr, %thread-pre-split ], [ %i.dj, %_ZN5Eigen8internal9evaluatorINS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKNS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNS9_INS0_14scalar_abs2_opIfEES7_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEC2ERKSO_.exit ] ; 22 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !35    ; 9 uses
  %i.do = ptrtoaddr ptr %i.dn to i64              ; 4 uses
  %i.dp = icmp sgt i64 %i.dm, 0
  br i1 %i.dp, label %.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi3ELi0ELin1ELi3EEEEENS3_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIffEEKS5_KNS_9ReplicateINS_12CwiseUnaryOpINS0_14scalar_sqrt_opIfEEKNS_16PartialReduxExprIKNSC_INS0_14scalar_abs2_opIfEESA_EENS0_10member_sumIffEELi1EEEEELi1ELi3EEEEEEENS0_9assign_opIffEELi0EEELi0ELi0EE3runERSV_.exit

.split.i:                                         ; preds = %bb.d
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !584 ; 9 uses
  %i.dr = ptrtoaddr ptr %i.dq to i64              ; 3 uses
  %i.ds = load i64, ptr %i.f, align 8, !tbaa !99  ; 3 uses
  %i.dt = load ptr, ptr %i.de, align 8, !tbaa !95 ; 19 uses
  %i.du = ptrtoaddr ptr %i.dt to i64              ; 3 uses
  %min.iters.check30 = icmp ult i64 %i.dm, 4
  br i1 %min.iters.check30, label %scalar.ph29.preheader, label %vector.memcheck31

vector.memcheck31:                                ; preds = %.split.i
  %i.dv = sub i64 %i.du, %i.do
  %diff.check32 = icmp ugt i64 %i.dv, -16
  %i.dw = sub i64 %i.dr, %i.do
  %diff.check33 = icmp ugt i64 %i.dw, -16
  %conflict.rdx34 = or i1 %diff.check32, %diff.check33
  br i1 %conflict.rdx34, label %scalar.ph29.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck31
  %n.vec36 = and i64 %i.dm, 9223372036854775804   ; 3 uses
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph35
  %index38 = phi i64 [ 0, %vector.ph35 ], [ %index.next41, %vector.body37 ] ; 4 uses
  %i.dx = getelementptr [4 x i8], ptr %i.dn, i64 %index38
  %i.dy = getelementptr [4 x i8], ptr %i.dq, i64 %index38
  %i.dz = getelementptr [4 x i8], ptr %i.dt, i64 %index38
  %wide.load39 = load <4 x float>, ptr %i.dz, align 4, !tbaa !45
  %wide.load40 = load <4 x float>, ptr %i.dy, align 4, !tbaa !45
  %i.ea = fdiv <4 x float> %wide.load40, %wide.load39
end_hunk_1
