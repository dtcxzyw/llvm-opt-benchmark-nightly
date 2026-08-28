Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/box_faces?download=true
inline.NumInlined: 1007
inline.NumDeleted: 638
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Eigen::internal::evaluator.195" = type { %"struct.Eigen::internal::binary_evaluator.196" }
%"struct.Eigen::internal::binary_evaluator.196" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<int>, const Eigen::ArrayWrapper<Eigen::Matrix<int, -1, -1>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, const Eigen::Array<int, -1, -1>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<int>, const Eigen::ArrayWrapper<Eigen::Matrix<int, -1, -1>>, const Eigen::CwiseNullaryOp<Eigen::internal::scalar_constant_op<int>, const Eigen::Array<int, -1, -1>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.199", %"struct.Eigen::internal::evaluator.209" }
%"struct.Eigen::internal::evaluator.199" = type { %"struct.Eigen::internal::evaluator.200" }
%"struct.Eigen::internal::evaluator.200" = type { %"struct.Eigen::internal::unary_evaluator.201" }
%"struct.Eigen::internal::unary_evaluator.201" = type { %"struct.Eigen::internal::evaluator_wrapper_base" }
%"struct.Eigen::internal::evaluator_wrapper_base" = type { %"struct.Eigen::internal::evaluator.204" }
%"struct.Eigen::internal::evaluator.204" = type { %"struct.Eigen::internal::evaluator.205" }
%"struct.Eigen::internal::evaluator.205" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.208" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.208" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.209" = type { %"struct.Eigen::internal::evaluator.base.213", [3 x i8] }
%"struct.Eigen::internal::evaluator.base.213" = type <{ %"struct.Eigen::internal::scalar_constant_op", i8 }>
%"struct.Eigen::internal::scalar_constant_op" = type { i32 }
%"struct.Eigen::internal::evaluator.215" = type { %"struct.Eigen::internal::block_evaluator.216" }
%"struct.Eigen::internal::block_evaluator.216" = type { %"struct.Eigen::internal::mapbase_evaluator.217" }
%"struct.Eigen::internal::mapbase_evaluator.217" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::generic_dense_assignment_kernel.220" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op.193" = type { i8 }
%"struct.Eigen::internal::evaluator.180" = type { %"struct.Eigen::internal::evaluator.181" }
%"struct.Eigen::internal::evaluator.181" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.184" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.184" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.185" = type { %"struct.Eigen::internal::block_evaluator.186" }
%"struct.Eigen::internal::block_evaluator.186" = type { %"struct.Eigen::internal::mapbase_evaluator.187" }
%"struct.Eigen::internal::mapbase_evaluator.187" = type { ptr, [8 x i8], %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::internal::generic_dense_assignment_kernel.190" = type { ptr, ptr, ptr, ptr }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix.27" = type { %"class.Eigen::PlainObjectBase.3" }
%"class.Eigen::PlainObjectBase.3" = type { %"class.Eigen::DenseStorage.10" }
%"class.Eigen::DenseStorage.10" = type { ptr, i64, i64 }
%"class.Eigen::Matrix.28" = type { %"class.Eigen::PlainObjectBase.11" }
%"class.Eigen::PlainObjectBase.11" = type { %"class.Eigen::DenseStorage.18" }
%"class.Eigen::DenseStorage.18" = type { ptr, i64, i64 }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase" = type { %"class.Eigen::MapBase.29" }
%"class.Eigen::MapBase.29" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Block.49" = type { %"class.Eigen::BlockImpl.50" }
%"class.Eigen::BlockImpl.50" = type { %"class.Eigen::internal::BlockImpl_dense.51" }
%"class.Eigen::internal::BlockImpl_dense.51" = type { %"class.Eigen::MapBase.52", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.52" = type { %"class.Eigen::MapBase.53" }
%"class.Eigen::MapBase.53" = type { ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic" }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [3 x double] }
%"class.Eigen::Matrix.119" = type { %"class.Eigen::PlainObjectBase.120" }
%"class.Eigen::PlainObjectBase.120" = type { %"class.Eigen::DenseStorage.127" }
%"class.Eigen::DenseStorage.127" = type { %"struct.Eigen::internal::plain_array.128" }
%"struct.Eigen::internal::plain_array.128" = type { [3 x double] }

$_ZN3igl9box_facesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_4AABBIT_Li3EEERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EERNSB_IT2_EE = comdat any

$_ZN3igl9box_facesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10AlignedBoxINT_6ScalarELi3EEES7_RNS1_15PlainObjectBaseIS6_EERNSB_IT0_EE = comdat any

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_ = comdat any

$_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSR_ = comdat any

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl9box_facesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS2_IiLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS_4AABBIT_Li3EEERNS1_15PlainObjectBaseIT0_EERNSB_IT1_EERNSB_IT2_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit:
  %4 = alloca %"struct.Eigen::internal::evaluator.195", align 8 ; 6 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.215", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.220", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::assign_op.193", align 1 ; 3 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.180", align 8 ; 5 uses
  %9 = alloca %"struct.Eigen::internal::evaluator.185", align 8 ; 5 uses
  %10 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.190", align 8 ; 7 uses
  %11 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %12 = alloca %"class.Eigen::Matrix.27", align 8 ; 9 uses
  %13 = alloca %"class.Eigen::Matrix.28", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Block", align 8     ; 11 uses
  %15 = alloca %"class.Eigen::Block.49", align 8  ; 11 uses
  %i.a = tail call noundef i32 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(76) %0) ; 3 uses
  %i.b = shl nsw i32 %i.a, 3
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = mul nsw i64 %i.c, 3
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.d, i64 noundef %i.c, i64 noundef 3)
  %i.e = mul nsw i32 %i.a, 6
  %i.f = sext i32 %i.e to i64                     ; 4 uses
  %i.g = shl nsw i64 %i.f, 2                      ; 2 uses
  tail call void @_ZN5Eigen12DenseStorageIiLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.g, i64 noundef %i.f, i64 noundef 4)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %.not.i.i = icmp eq i64 %i.i, %i.f
  br i1 %.not.i.i, label %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit
  %i.j = load ptr, ptr %3, align 8, !tbaa !14
  tail call void @free(ptr noundef %i.j) #16
  %i.k = icmp sgt i32 %i.a, 0
  br i1 %i.k, label %bb.b, label %.sink.split.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.g) #17 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %.sink.split.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

.sink.split.i.i:                                  ; preds = %bb.b, %bb.a
  %.sink.i.i = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ]
  store ptr %.sink.i.i, ptr %3, align 8, !tbaa !14
  br label %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, %.sink.split.i.i
  store i64 %i.f, ptr %i.h, align 8, !tbaa !9
  %i.o = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19 ; 4 uses
  store ptr %0, ptr %i.o, align 8
  %.sroa.6115.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i32 0, ptr %.sroa.6115.0..sroa_idx116, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 48
  %i.x = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %15, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %15, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90
  %indvars.iv209 = phi i64 [ 0, %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %indvars.iv.next210, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90 ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %indvars.iv.next, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90 ] ; 4 uses
  %.sroa.29.0186 = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.29.2, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90 ] ; 11 uses
  %.sroa.13.0185 = phi ptr [ %i.p, %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.13.2, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90 ] ; 3 uses
  %.sroa.0121.0184 = phi ptr [ %i.o, %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %.sroa.0118.2, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90 ] ; 11 uses
  %i.as = getelementptr inbounds i8, ptr %.sroa.13.0185, i64 -16 ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.as, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %.sroa.13.0185, i64 -8 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %i.at = load ptr, ptr %3, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv ; 3 uses
  %i.av = insertelement <4 x i32> poison, i32 %.sroa.5.0.copyload, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aw, ptr %i.au, align 4, !tbaa !17
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %.sroa.5.0.copyload, ptr %i.ax, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %.sroa.5.0.copyload, ptr %i.ay, align 4, !tbaa !17
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  invoke void @_ZN3igl9box_facesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10AlignedBoxINT_6ScalarELi3EEES7_RNS1_15PlainObjectBaseIS6_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(48) %i.az, double noundef 3.000000e-02, ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %13)
          to label %bb.e unwind label %bb.l

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %i.ba = load ptr, ptr %1, align 8, !tbaa !21, !noalias !18
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv209 ; 2 uses
  %i.bc = load i64, ptr %i.q, align 8, !tbaa !24, !noalias !18 ; 2 uses
  store ptr %i.bb, ptr %14, align 8, !tbaa !25, !alias.scope !18
  store i64 8, ptr %i.r, align 8, !tbaa !28, !alias.scope !18
  store i64 3, ptr %i.s, align 8, !tbaa !28, !alias.scope !18
  store ptr %1, ptr %i.t, align 8, !tbaa !29, !alias.scope !18
  store i64 %indvars.iv209, ptr %i.u, align 8, !tbaa !28, !alias.scope !18
  store i64 0, ptr %i.v, align 8, !tbaa !28, !alias.scope !18
  store i64 %i.bc, ptr %i.w, align 8, !tbaa !31, !alias.scope !18
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bd = load ptr, ptr %12, align 8, !tbaa !21
  %i.be = load i64, ptr %i.x, align 8, !tbaa !24
  store ptr %i.bd, ptr %8, align 8, !tbaa !34
  store i64 %i.be, ptr %i.y, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  store ptr %i.bb, ptr %9, align 8, !tbaa !37
  store i64 %i.bc, ptr %i.z, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  store ptr %9, ptr %10, align 8, !tbaa !40
  store ptr %8, ptr %i.aa, align 8, !tbaa !42
  store ptr %11, ptr %i.ab, align 8, !tbaa !44
  store ptr %14, ptr %i.ac, align 8, !tbaa !46
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.f unwind label %bb.m

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  %i.bf = load ptr, ptr %2, align 8, !tbaa !51, !noalias !48
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv ; 2 uses
  %i.bh = load i64, ptr %i.ae, align 8, !tbaa !53, !noalias !48 ; 2 uses
  store ptr %i.bg, ptr %15, align 8, !tbaa !54, !alias.scope !48
  store i64 6, ptr %i.af, align 8, !tbaa !28, !alias.scope !48
  store i64 4, ptr %i.ag, align 8, !tbaa !28, !alias.scope !48
  store ptr %2, ptr %i.ah, align 8, !tbaa !56, !alias.scope !48
  store i64 %indvars.iv, ptr %i.ai, align 8, !tbaa !28, !alias.scope !48
  store i64 0, ptr %i.aj, align 8, !tbaa !28, !alias.scope !48
  store i64 %i.bh, ptr %i.ak, align 8, !tbaa !58, !alias.scope !48
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.bi = load ptr, ptr %13, align 8, !tbaa !51
  %i.bj = load i64, ptr %i.ad, align 8, !tbaa !53
  store ptr %i.bi, ptr %i.al, align 8, !tbaa !61
  store i64 %i.bj, ptr %i.am, align 8, !tbaa !63
  %i.bk = trunc nuw nsw i64 %indvars.iv209 to i32
  store i32 %i.bk, ptr %i.an, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  store ptr %i.bg, ptr %5, align 8, !tbaa !66
  store i64 %i.bh, ptr %i.ao, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  store ptr %5, ptr %6, align 8, !tbaa !68
  store ptr %4, ptr %i.ap, align 8, !tbaa !70
  store ptr %7, ptr %i.aq, align 8, !tbaa !72
  store ptr %15, ptr %i.ar, align 8, !tbaa !74
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS_13CwiseBinaryOpINS0_13scalar_sum_opIiiEEKNS_12ArrayWrapperIS6_EEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIiEEKNS_5ArrayIiLin1ELin1ELi0ELin1ELin1EEEEEEEEENS0_9assign_opIiiEELi0EEELi4ELi0EE3runERSR_(ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.g unwind label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 8
  %i.bl = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !76 ; 3 uses
  %.not = icmp eq ptr %i.bl, null
  br i1 %.not, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = add nsw i32 %.sroa.5.0.copyload, 1      ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.as, %.sroa.29.0186
  br i1 %.not.i.i59, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.bl, ptr %i.as, align 8
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74

bb.j:                                             ; preds = %bb.h
  %i.bn = ptrtoint ptr %.sroa.29.0186 to i64
  %i.bo = ptrtoint ptr %.sroa.0121.0184 to i64
  %i.bp = sub i64 %i.bn, %i.bo                    ; 4 uses
  %i.bq = icmp eq i64 %i.bp, 9223372036854775792
  br i1 %i.bq, label %bb.k, label %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i60

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc72 unwind label %.loopexit.split-lp

.noexc72:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i60: ; preds = %bb.j
  %i.br = ashr exact i64 %i.bp, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i61 = call i64 @llvm.umax.i64(i64 %i.br, i64 1)
  %i.bs = add nsw i64 %.sroa.speculated.i.i.i.i61, %i.br ; 2 uses
  %i.bt = icmp ult i64 %i.bs, %i.br
  %i.bu = call i64 @llvm.umin.i64(i64 %i.bs, i64 576460752303423487)
  %i.bv = select i1 %i.bt, i64 576460752303423487, i64 %i.bu ; 3 uses
  %.not.i.i.i.i62 = icmp ne i64 %i.bv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i62)
  %i.bw = shl nuw nsw i64 %i.bv, 4
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bw) #19
          to label %.noexc73 unwind label %.loopexit ; 5 uses

.noexc73:                                         ; preds = %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i60
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bp ; 2 uses
  store ptr %i.bl, ptr %i.by, align 8
  %.sroa.6102.0..sroa_idx103 = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bm, ptr %.sroa.6102.0..sroa_idx103, align 8
  %.not10.i.i.i.i.i.i63 = icmp eq ptr %.sroa.0121.0184, %.sroa.29.0186
  br i1 %.not10.i.i.i.i.i.i63, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71, label %.lr.ph.i.i.i.i.i.i64

.lr.ph.i.i.i.i.i.i64:                             ; preds = %.noexc73, %.lr.ph.i.i.i.i.i.i64
  %.012.i.i.i.i.i.i65 = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i.i64 ], [ %i.bx, %.noexc73 ] ; 2 uses
  %.0911.i.i.i.i.i.i66 = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i.i64 ], [ %.sroa.0121.0184, %.noexc73 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i65, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i66, i64 16, i1 false), !alias.scope !84
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i66, i64 16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i65, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i67 = icmp eq ptr %i.bz, %.sroa.29.0186
  br i1 %.not.i.i.i.i.i.i67, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71, label %.lr.ph.i.i.i.i.i.i64, !llvm.loop !88

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71: ; preds = %.lr.ph.i.i.i.i.i.i64, %.noexc73
  %.0.lcssa.i.i.i.i.i.i69 = phi ptr [ %i.bx, %.noexc73 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i64 ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i69, i64 16
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0184, i64 noundef %i.bp) #20
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.bx, i64 %i.bv
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74

bb.l:                                             ; preds = %bb.d
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

bb.m:                                             ; preds = %bb.e
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

bb.n:                                             ; preds = %bb.f
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

.loopexit:                                        ; preds = %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i60
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74: ; preds = %bb.i, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71, %bb.g
  %.sroa.0121.1 = phi ptr [ %.sroa.0121.0184, %bb.g ], [ %i.bx, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71 ], [ %.sroa.0121.0184, %bb.i ] ; 8 uses
  %.sroa.13.1 = phi ptr [ %i.as, %bb.g ], [ %i.cb, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71 ], [ %.sroa.13.0185, %bb.i ] ; 10 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.0186, %bb.g ], [ %i.cc, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i71 ], [ %.sroa.29.0186, %bb.i ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !90 ; 3 uses
  %.not48 = icmp eq ptr %i.ch, null
  br i1 %.not48, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74
  %i.ci = add nsw i32 %.sroa.5.0.copyload, 1      ; 2 uses
  %.not.i.i75 = icmp eq ptr %.sroa.13.1, %.sroa.29.1
  br i1 %.not.i.i75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.ch, ptr %.sroa.13.1, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 8
  store i32 %i.ci, ptr %.sroa.6.0..sroa_idx, align 8
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a

bb.q:                                             ; preds = %bb.o
  %i.cj = ptrtoint ptr %.sroa.13.1 to i64
  %i.ck = ptrtoint ptr %.sroa.0121.1 to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 4 uses
  %i.cm = icmp eq i64 %i.cl, 9223372036854775792
  br i1 %i.cm, label %bb.r, label %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i76

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #18
          to label %.noexc88 unwind label %.loopexit.split-lp159

.noexc88:                                         ; preds = %bb.r
  unreachable

_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i76: ; preds = %bb.q
  %i.cn = ashr exact i64 %i.cl, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i77 = call i64 @llvm.umax.i64(i64 %i.cn, i64 1)
  %i.co = add nsw i64 %.sroa.speculated.i.i.i.i77, %i.cn ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.cn
  %i.cq = call i64 @llvm.umin.i64(i64 %i.co, i64 576460752303423487)
  %i.cr = select i1 %i.cp, i64 576460752303423487, i64 %i.cq ; 3 uses
  %.not.i.i.i.i78 = icmp ne i64 %i.cr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i78)
  %i.cs = shl nuw nsw i64 %i.cr, 4
  %i.ct = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cs) #19
          to label %.noexc89 unwind label %.loopexit158 ; 5 uses

.noexc89:                                         ; preds = %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i76
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cl ; 2 uses
  store ptr %i.ch, ptr %i.cu, align 8
  %.sroa.6.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 %i.ci, ptr %.sroa.6.0..sroa_idx95, align 8
  %.not10.i.i.i.i.i.i79 = icmp eq ptr %.sroa.0121.1, %.sroa.13.1
  br i1 %.not10.i.i.i.i.i.i79, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87, label %.lr.ph.i.i.i.i.i.i80

.lr.ph.i.i.i.i.i.i80:                             ; preds = %.noexc89, %.lr.ph.i.i.i.i.i.i80
  %.012.i.i.i.i.i.i81 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i80 ], [ %i.ct, %.noexc89 ] ; 2 uses
  %.0911.i.i.i.i.i.i82 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i80 ], [ %.sroa.0121.1, %.noexc89 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i81, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i82, i64 16, i1 false), !alias.scope !91
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i82, i64 16 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i81, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i83 = icmp eq ptr %i.cv, %.sroa.13.1
  br i1 %.not.i.i.i.i.i.i83, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87, label %.lr.ph.i.i.i.i.i.i80, !llvm.loop !88

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87: ; preds = %.lr.ph.i.i.i.i.i.i80, %.noexc89
  %.0.lcssa.i.i.i.i.i.i85 = phi ptr [ %i.ct, %.noexc89 ], [ %i.cw, %.lr.ph.i.i.i.i.i.i80 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.1, i64 noundef %i.cl) #20
  %16 = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cr
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a: ; preds = %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87, %bb.p
  %.0.lcssa.i.i.i.i.i.i85.a = phi ptr [ %i.ct, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87 ], [ %.sroa.0121.1, %bb.p ]
  %.0.lcssa.i.i.i.i.i.i85.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i85, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87 ], [ %.sroa.13.1, %bb.p ]
  %.sroa.29.7 = phi ptr [ %16, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87 ], [ %.sroa.29.1, %bb.p ]
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i85.pn, i64 16
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90

.loopexit158:                                     ; preds = %_ZNKSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE12_M_check_lenEmPKc.exit.i.i.i76
  %lpad.loopexit160 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

.loopexit.split-lp159:                            ; preds = %bb.r
  %lpad.loopexit.split-lp161 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90: ; preds = %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74
  %.sroa.0118.2 = phi ptr [ %.sroa.0121.1, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74 ], [ %.0.lcssa.i.i.i.i.i.i85.a, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a ] ; 4 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74 ], [ %.sroa.13.5, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a ] ; 2 uses
  %.sroa.29.2 = phi ptr [ %.sroa.29.1, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit74 ], [ %.sroa.29.7, %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE17_M_realloc_insertIJS9_EEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_.exit.i.i87.a ] ; 2 uses
  %i.cx = load ptr, ptr %13, align 8, !tbaa !51
  call void @free(ptr noundef %i.cx) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.cy = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.cy) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.cz = icmp eq ptr %.sroa.0118.2, %.sroa.13.2
  br i1 %i.cz, label %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit, label %bb.d, !llvm.loop !95

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EE9push_backEOS9_.exit90
  %i.da = ptrtoint ptr %.sroa.29.2 to i64
  %i.db = ptrtoint ptr %.sroa.0118.2 to i64
  %i.dc = sub i64 %i.da, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.2, i64 noundef %i.dc) #20
  ret void

_ZNSt6vectorISt4pairIPKN3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EEEiESaIS9_EED2Ev.exit92: ; preds = %.loopexit158, %.loopexit.split-lp159, %.loopexit, %.loopexit.split-lp, %bb.n, %bb.m, %bb.l
  %.sroa.0121.3 = phi ptr [ %.sroa.0121.0184, %.loopexit.split-lp ], [ %.sroa.0121.0184, %bb.n ], [ %.sroa.0121.0184, %bb.l ], [ %.sroa.0121.0184, %bb.m ], [ %.sroa.0121.0184, %.loopexit ], [ %.sroa.0121.1, %.loopexit158 ], [ %.sroa.0121.1, %.loopexit.split-lp159 ] ; 2 uses
  %.sroa.29.3 = phi ptr [ %.sroa.29.0186, %.loopexit.split-lp ], [ %.sroa.29.0186, %bb.n ], [ %.sroa.29.0186, %bb.l ], [ %.sroa.29.0186, %bb.m ], [ %.sroa.29.0186, %.loopexit ], [ %.sroa.13.1, %.loopexit158 ], [ %.sroa.13.1, %.loopexit.split-lp159 ]
  %.pn49 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cf, %bb.n ], [ %i.cd, %bb.l ], [ %i.ce, %bb.m ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit160, %.loopexit158 ], [ %lpad.loopexit.split-lp161, %.loopexit.split-lp159 ]
  %i.dd = load ptr, ptr %13, align 8, !tbaa !51
  call void @free(ptr noundef %i.dd) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  %i.de = load ptr, ptr %12, align 8, !tbaa !21
  call void @free(ptr noundef %i.de) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16
  %i.df = ptrtoint ptr %.sroa.29.3 to i64
  %i.dg = ptrtoint ptr %.sroa.0121.3 to i64
  %i.dh = sub i64 %i.df, %i.dg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.3, i64 noundef %i.dh) #20
  resume { ptr, i32 } %.pn49
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef i32 @_ZNK3igl4AABBIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi3EE4sizeEv(ptr noundef nonnull align 8 dereferenceable(76)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3igl9box_facesIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10AlignedBoxINT_6ScalarELi3EEES7_RNS1_15PlainObjectBaseIS6_EERNSB_IT0_EE(ptr noundef nonnull align 8 dereferenceable(48) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Matrix", align 16    ; 12 uses
  %5 = alloca %"class.Eigen::Matrix", align 16    ; 12 uses
  %6 = alloca %"class.Eigen::Matrix.119", align 8 ; 11 uses
  %7 = alloca %"class.Eigen::Matrix.119", align 8 ; 11 uses
  %8 = alloca %"class.Eigen::Matrix.119", align 8 ; 11 uses
  %9 = alloca %"class.Eigen::Matrix.119", align 8 ; 11 uses
  %10 = alloca %"class.Eigen::Matrix.119", align 8 ; 11 uses
  %11 = alloca %"class.Eigen::Matrix.119", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false), !tbaa.struct !96
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !tbaa.struct !96
  %.sroa.615.24.vec.insert.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %1, i64 0
  %i.b = load <2 x double>, ptr %4, align 16, !tbaa !97 ; 2 uses
  %i.c = shufflevector <2 x double> %.sroa.615.24.vec.insert.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.d = load <2 x double>, ptr %5, align 16, !tbaa !97 ; 3 uses
  %i.e = fsub <2 x double> %i.d, %i.b
  %i.f = fmul <2 x double> %i.c, %i.e
  %i.g = fadd <2 x double> %i.b, %i.f             ; 4 uses
  store <2 x double> %i.g, ptr %4, align 16, !tbaa !97
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = load double, ptr %i.i, align 16, !tbaa !98 ; 3 uses
  %i.k = load double, ptr %i.h, align 16, !tbaa !98 ; 2 uses
  %i.l = fsub double %i.j, %i.k
  %i.m = fmul double %1, %i.l
  %i.n = fadd double %i.k, %i.m                   ; 5 uses
  store double %i.n, ptr %i.h, align 16, !tbaa !98
  %i.o = fsub <2 x double> %i.d, %i.g
  %i.p = fmul <2 x double> %i.c, %i.o
  %i.q = fsub <2 x double> %i.d, %i.p             ; 3 uses
  store <2 x double> %i.q, ptr %5, align 16, !tbaa !97
  %i.r = fsub double %i.j, %i.n
  %i.s = fmul double %1, %i.r
  %i.t = fsub double %i.j, %i.s                   ; 4 uses
  store double %i.t, ptr %i.i, align 16, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100
  %i.y = mul nsw i64 %i.x, %i.v
  %.not.i = icmp eq i64 %i.y, 24
  %i.z = extractelement <2 x double> %i.q, i64 0  ; 3 uses
  %i.aa = extractelement <2 x double> %i.g, i64 1 ; 3 uses
  %i.ab = extractelement <2 x double> %i.q, i64 1 ; 3 uses
  %i.ac = extractelement <2 x double> %i.g, i64 0 ; 3 uses
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %2, align 8, !tbaa !21
  tail call void @free(ptr noundef %i.ad) #16
  %i.ae = tail call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #17 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.c, label %.sink.split.i

bb.c:                                             ; preds = %bb.b
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

.sink.split.i:                                    ; preds = %bb.b
  store ptr %i.ae, ptr %2, align 8, !tbaa !21
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.a, %.sink.split.i
  store i64 8, ptr %i.u, align 8, !tbaa !24
  store i64 3, ptr %i.w, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !53
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !101
  %i.al = mul nsw i64 %i.ak, %i.ai
  %.not.i156 = icmp eq i64 %i.al, 24
  %.pre = load ptr, ptr %3, align 8, !tbaa !51    ; 2 uses
  br i1 %.not.i156, label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit123, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit
  tail call void @free(ptr noundef %.pre) #16
  %i.am = tail call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #17 ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.e, label %.sink.split.i157

bb.e:                                             ; preds = %bb.d
  %i.ao = tail call ptr @__cxa_allocate_exception(i64 8) #16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ao, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.ao, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #18
  unreachable

.sink.split.i157:                                 ; preds = %bb.d
  store ptr %i.am, ptr %3, align 8, !tbaa !51
  %.pre423 = load i64, ptr %i.w, align 8, !tbaa !100, !noalias !102
  %.pre424 = load i64, ptr %i.u, align 8, !tbaa !24
  br label %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit123

_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit123: ; preds = %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, %.sink.split.i157
  %i.ap = phi i64 [ 8, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit ], [ %.pre424, %.sink.split.i157 ] ; 48 uses
  %i.aq = phi i64 [ 3, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit ], [ %.pre423, %.sink.split.i157 ] ; 49 uses
  %i.ar = phi ptr [ %.pre, %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit ], [ %i.am, %.sink.split.i157 ] ; 6 uses
  store i64 6, ptr %i.ah, align 8, !tbaa !53
  store i64 4, ptr %i.aj, align 8, !tbaa !101
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = getelementptr i8, ptr %i.ar, i64 32
  %i.au = getelementptr i8, ptr %i.ar, i64 80
  store <4 x i32> <i32 0, i32 0, i32 1, i32 2>, ptr %i.ar, align 4, !tbaa !17, !noalias !105
  store <4 x i32> <i32 2, i32 5, i32 6, i32 7>, ptr %i.as, align 4, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.aw = getelementptr i8, ptr %i.ar, i64 64
  store <4 x i32> <i32 3, i32 4, i32 1, i32 1>, ptr %i.av, align 4, !tbaa !17
  store <4 x i32> <i32 2, i32 3, i32 0, i32 5>, ptr %i.at, align 4, !tbaa !17
  store <4 x i32> <i32 4, i32 6, i32 3, i32 4>, ptr %i.aw, align 4, !tbaa !17
  store <4 x i32> <i32 5, i32 6, i32 7, i32 7>, ptr %i.au, align 4, !tbaa !17
  %i.ax = load ptr, ptr %2, align 8, !tbaa !21, !noalias !102 ; 13 uses
  %i.ay = icmp sgt i64 %i.aq, 0
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit151.thread

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5Eigen16CommaInitializerINS_5BlockINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEcmERKi.exit123
  %min.iters.check = icmp ugt i64 %i.aq, 3
  %ident.check.not = icmp eq i64 %i.ap, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.aq, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <2 x double>, ptr %i.ba, align 16, !tbaa !98
  %wide.load432 = load <2 x double>, ptr %i.bb, align 16, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x double> %wide.load, ptr %i.az, align 8, !tbaa !98
  store <2 x double> %wide.load432, ptr %i.bc, align 8, !tbaa !98
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS1_IdLi3ELi1ELi0ELi3ELi1EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.aq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538 ]
  %i.be = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.ap
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.be
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.05.i.i.i.i.i.i.i.i.i.i.prol
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !98
  store double %i.bh, ptr %i.bf, align 8, !tbaa !98
  %i.bi = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !109

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader538
end_hunk_0
