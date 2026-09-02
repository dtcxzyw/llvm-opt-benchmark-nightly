Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/progressive_hulls_cost_and_placement?download=true
inline.NumInlined: 2464
inline.NumDeleted: 1355
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.Eigen::internal::redux_evaluator.466" = type { %"struct.Eigen::internal::evaluator.467" }
%"struct.Eigen::internal::evaluator.467" = type { %"struct.Eigen::internal::binary_evaluator.468" }
%"struct.Eigen::internal::binary_evaluator.468" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, -1, 1>>, const Eigen::Matrix<double, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_difference_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, -1, 1>>, const Eigen::Matrix<double, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.471", %"struct.Eigen::internal::evaluator.414" }
%"struct.Eigen::internal::evaluator.471" = type { %"struct.Eigen::internal::evaluator.472" }
%"struct.Eigen::internal::evaluator.472" = type { %"struct.Eigen::internal::product_evaluator" }
%"struct.Eigen::internal::product_evaluator" = type { %"struct.Eigen::internal::evaluator.238", %"class.Eigen::Matrix.22" }
%"struct.Eigen::internal::evaluator.238" = type { %"struct.Eigen::internal::evaluator.239" }
%"struct.Eigen::internal::evaluator.239" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.228" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.228" = type { ptr }
%"class.Eigen::Matrix.22" = type { %"class.Eigen::PlainObjectBase.23" }
%"class.Eigen::PlainObjectBase.23" = type { %"class.Eigen::DenseStorage.30" }
%"class.Eigen::DenseStorage.30" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.414" = type { %"struct.Eigen::internal::evaluator.238" }
%"struct.Eigen::internal::evaluator.302" = type { %"struct.Eigen::internal::unary_evaluator" }
%"struct.Eigen::internal::unary_evaluator" = type { %"struct.Eigen::internal::evaluator.305" }
%"struct.Eigen::internal::evaluator.305" = type { %"struct.Eigen::internal::evaluator.base.309", [7 x i8] }
%"struct.Eigen::internal::evaluator.base.309" = type <{ ptr, i8 }>
%"struct.Eigen::internal::evaluator.311" = type { %"struct.Eigen::internal::evaluator.312" }
%"struct.Eigen::internal::evaluator.312" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.228" }
%"class.Eigen::internal::generic_dense_assignment_kernel.315" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.Eigen::Matrix.13" = type { %"class.Eigen::PlainObjectBase.14" }
%"class.Eigen::PlainObjectBase.14" = type { %"class.Eigen::DenseStorage.21" }
%"class.Eigen::DenseStorage.21" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.60" = type { %"class.Eigen::PlainObjectBase.61" }
%"class.Eigen::PlainObjectBase.61" = type { %"class.Eigen::DenseStorage.68" }
%"class.Eigen::DenseStorage.68" = type { %"struct.Eigen::internal::plain_array.69" }
%"struct.Eigen::internal::plain_array.69" = type { [9 x double] }
%"class.Eigen::Matrix.70" = type { %"class.Eigen::PlainObjectBase.71" }
%"class.Eigen::PlainObjectBase.71" = type { %"class.Eigen::DenseStorage.78" }
%"class.Eigen::DenseStorage.78" = type { %"struct.Eigen::internal::plain_array.79" }
%"struct.Eigen::internal::plain_array.79" = type { [3 x double] }
%"class.Eigen::Matrix.88" = type { %"class.Eigen::PlainObjectBase.89" }
%"class.Eigen::PlainObjectBase.89" = type { %"class.Eigen::DenseStorage.96" }
%"class.Eigen::DenseStorage.96" = type { ptr, i64 }
%"class.Eigen::Transpose.171" = type { ptr }
%"class.Eigen::CwiseBinaryOp.198" = type <{ %"class.Eigen::Product", ptr, [8 x i8] }>
%"class.Eigen::Product" = type { ptr, ptr }
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }
%"class.Eigen::internal::const_blas_data_mapper.520" = type { %"class.Eigen::internal::blas_data_mapper.521" }
%"class.Eigen::internal::blas_data_mapper.521" = type { ptr, i64 }

$_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEENS3_INS_9TransposeIKNS_16PartialReduxExprINS4_IdLin1ELin1ELi0ELin1ELin1EEENS0_10member_sumIddEELi0EEEEEEENS0_9assign_opIddEELi0EEELi1ELi0EE3runERSI_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLi1ELin1ELi1ELi1ELin1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_9TransposeIS2_EEEERKNS_9DenseBaseIT_EE = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLin1ELi1ELi0ELin1ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_ = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld = comdat any

@.str = private unnamed_addr constant [9 x i8] c"inf-cost\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl8copyleft36progressive_hulls_cost_and_placementEiRKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS2_IiLin1ELin1ELi0ELin1ELin1EEES8_RKNS2_IiLin1ELi1ELi0ELin1ELi1EEES8_S8_RdRNS2_IdLi1ELin1ELi1ELi1ELin1EEE(i32 noundef %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.Eigen::internal::redux_evaluator.466", align 8 ; 5 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.302", align 8 ; 4 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.311", align 8 ; 4 uses
  %12 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.315", align 8 ; 7 uses
  %13 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %14 = alloca %"class.std::vector", align 8      ; 12 uses
  %15 = alloca %"class.std::vector", align 8      ; 10 uses
  %16 = alloca %"class.std::vector", align 8      ; 11 uses
  %17 = alloca %"class.Eigen::Matrix.13", align 8 ; 12 uses
  %18 = alloca %"class.Eigen::Matrix.22", align 8 ; 14 uses
  %19 = alloca %"class.Eigen::Matrix.60", align 16 ; 17 uses
  %20 = alloca %"class.Eigen::Matrix.70", align 16 ; 8 uses
  %21 = alloca %"class.Eigen::Matrix.22", align 8 ; 11 uses
  %22 = alloca %"class.Eigen::Matrix.88", align 8 ; 11 uses
  %23 = alloca %"class.Eigen::Matrix.13", align 8 ; 10 uses
  %24 = alloca %"class.Eigen::Matrix.22", align 8 ; 9 uses
  %25 = alloca %"class.Eigen::Matrix.13", align 8 ; 9 uses
  %26 = alloca %"class.Eigen::Matrix.22", align 8 ; 8 uses
  %27 = alloca %"class.Eigen::Matrix.13", align 8 ; 7 uses
  %28 = alloca %"class.Eigen::Transpose.171", align 8 ; 5 uses
  %29 = alloca %"class.Eigen::Matrix.22", align 8 ; 11 uses
  %30 = alloca %"class.Eigen::CwiseBinaryOp.198", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EESt6vectorIiSaIiEEibRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %14, i32 noundef %0, i1 noundef zeroext true, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #18
  invoke void @_ZN3igl11circulationIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES4_EESt6vectorIiSaIiEEibRKNS1_10MatrixBaseIT_EERKNS8_IT0_EERKNS8_IT1_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %15, i32 noundef %0, i1 noundef zeroext false, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = load ptr, ptr %15, align 8, !tbaa !9
  %i.d = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.f = load ptr, ptr %14, align 8, !tbaa !9     ; 2 uses
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  invoke void @_ZNSt6vectorIiSaIiEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPiS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr %i.j, ptr %i.c, ptr %i.e)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl6uniqueIiEEvRKSt6vectorIT_SaIS2_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i unwind label %bb.l

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #18
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !12   ; 2 uses
  %i.m = load ptr, ptr %16, align 8, !tbaa !14    ; 3 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 19 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 4 uses
  %.not.i213 = icmp eq ptr %i.l, %i.m             ; 2 uses
  br i1 %.not.i213, label %.thread565, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  %i.t = icmp sgt i64 %i.q, 0
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %i.q, 768614336404564650
  br i1 %i.u, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.v = mul i64 %i.q, 24
  %i.w = call noalias ptr @malloc(i64 noundef %i.v) #19 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.e
  %i.y = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.y, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.y, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.cont unwind label %bb.f

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %.invoke
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.w, ptr %17, align 8, !tbaa !17
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  store i64 3, ptr %i.s, align 8, !tbaa !22
  %i.aa = shl nuw i64 %i.p, 1                     ; 2 uses
  %i.ab = call noalias ptr @malloc(i64 noundef %i.aa) #19 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  %i.ad = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ad, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread565:                                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  store i64 3, ptr %i.s, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  store i64 0, ptr %18, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.af, align 8, !tbaa !23
  br label %._crit_edge

bb.h:                                             ; preds = %bb.d
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  store i64 3, ptr %i.s, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  br label %.lr.ph

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %i.ag = call noalias ptr @malloc(i64 noundef %i.aa) #19 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke.i143, label %.lr.ph

.invoke.i143:                                     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #18 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
          to label %.cont.i144 unwind label %bb.i

.cont.i144:                                       ; preds = %.invoke.i143
  unreachable

bb.i:                                             ; preds = %.invoke.i143
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body145

.lr.ph:                                           ; preds = %bb.h, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142
  %.sink.i563 = phi ptr [ %i.w, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142 ], [ null, %bb.h ]
  %.sroa.0444.0.ph484 = phi ptr [ %i.ab, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142 ], [ null, %bb.h ] ; 2 uses
  %.sink.i.i.i.i141 = phi ptr [ %i.ag, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i142 ], [ null, %bb.h ] ; 2 uses
  store ptr %.sink.i.i.i.i141, ptr %18, align 8, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  store i64 %i.q, ptr %i.ak, align 8, !tbaa !23
  %i.al = load ptr, ptr %2, align 8, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !28 ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !17, !noalias !29 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !21 ; 20 uses
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.ar, 4 ; 3 uses
  %.idx = shl i64 %i.an, 3
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !22, !noalias !32 ; 15 uses
  %i.at = icmp sgt i64 %i.as, 0                   ; 2 uses
  %i.au = icmp eq i64 %i.as, 3                    ; 3 uses
  %spec.select = zext i1 %i.au to i64             ; 2 uses
  %spec.select493 = select i1 %i.au, i64 0, i64 %i.as ; 3 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %spec.select.sroa.sel = select i1 %i.au, ptr %.sroa.gep, ptr %19
  %.idx.i.i.i.i.i = mul nuw nsw i64 %spec.select493, 24
  %i.av = getelementptr inbounds nuw i8, ptr %spec.select.sroa.sel, i64 %.idx.i.i.i.i.i ; 5 uses
  %.not.i156 = icmp eq i64 %i.as, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %19, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %19, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %19, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.bc = ashr exact i64 %i.p, 1
  %.idx559 = shl i64 %i.ar, 4
  %xtraiter = and i64 %i.as, 3                    ; 3 uses
  %i.bd = icmp ult i64 %i.as, 4
  %unroll_iter = and i64 %i.as, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod660 = icmp ne i64 %xtraiter, 0
  %xtraiter661 = and i64 %i.as, 3                 ; 3 uses
  %i.be = icmp ult i64 %i.as, 4
  %unroll_iter665 = and i64 %i.as, 9223372036854775804
  %lcmp.mod663.not = icmp eq i64 %xtraiter661, 0
  %lcmp.mod664 = icmp ne i64 %xtraiter661, 0
  %xtraiter667 = and i64 %i.as, 3                 ; 3 uses
  %i.bf = icmp ult i64 %i.as, 4
  %unroll_iter671 = and i64 %i.as, 9223372036854775804
  %lcmp.mod669.not = icmp eq i64 %xtraiter667, 0
  %lcmp.mod670 = icmp ne i64 %xtraiter667, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.a
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit210

bb.k:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.l:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph, %._crit_edge.i150.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge.i150.thread ] ; 5 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !35
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr [4 x i8], ptr %i.al, i64 %i.bl ; 3 uses
  %i.bn = getelementptr [4 x i8], ptr %i.bm, i64 %i.an
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !35
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bp ; 8 uses
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !35
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.bs ; 10 uses
  %i.bu = load double, ptr %i.bq, align 8, !tbaa !36
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !36 ; 2 uses
  %i.bw = fsub double %i.bu, %i.bv                ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %i.ar
  %i.by = load double, ptr %i.bx, align 8, !tbaa !36
  %i.bz = getelementptr [8 x i8], ptr %i.bt, i64 %i.ar ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !36 ; 2 uses
  %i.cb = fsub double %i.by, %i.ca                ; 2 uses
  %i.cc = getelementptr inbounds i8, ptr %i.bq, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !36
  %i.ce = getelementptr inbounds i8, ptr %i.bt, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !36 ; 2 uses
  %i.cg = fsub double %i.cd, %i.cf                ; 2 uses
  %i.ch = getelementptr i8, ptr %i.bm, i64 %.idx
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !35
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.ao, i64 %i.cj ; 8 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !36
  %i.cm = fsub double %i.cl, %i.bv                ; 2 uses
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.ar
  %i.co = load double, ptr %i.cn, align 8, !tbaa !36
  %i.cp = fsub double %i.co, %i.ca                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.ck, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !36
  %i.cs = fsub double %i.cr, %i.cf                ; 2 uses
  %i.ct = fneg double %i.cp
  %i.cu = fmul double %i.cg, %i.ct
  %i.cv = call double @llvm.fmuladd.f64(double %i.cb, double %i.cs, double %i.cu)
  %i.cw = fneg double %i.cs
  %i.cx = fmul double %i.bw, %i.cw
  %i.cy = call double @llvm.fmuladd.f64(double %i.cg, double %i.cm, double %i.cx)
  %i.cz = fneg double %i.cm
  %i.da = fmul double %i.cb, %i.cz
  %i.db = call double @llvm.fmuladd.f64(double %i.bw, double %i.cp, double %i.da) ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sink.i563, i64 %indvars.iv ; 4 uses
  store double %i.cv, ptr %i.dc, align 8, !tbaa !36
  %i.dd = getelementptr [8 x i8], ptr %i.dc, i64 %i.q ; 2 uses
  store double %i.cy, ptr %i.dd, align 8, !tbaa !36
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %i.bc
  store double %i.db, ptr %i.de, align 8, !tbaa !36
  %i.df = load double, ptr %i.bt, align 8, !tbaa !36
  %i.dg = load double, ptr %i.dc, align 8, !tbaa !36
  %i.dh = fmul double %i.df, %i.dg
  %i.di = load double, ptr %i.bz, align 8, !tbaa !36
end_hunk_0
