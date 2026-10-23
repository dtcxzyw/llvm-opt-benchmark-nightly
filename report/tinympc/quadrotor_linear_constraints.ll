Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_linear_constraints?download=true
inline.NumInlined: 1802
inline.NumDeleted: 936
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 28
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.Eigen::internal::evaluator.251" = type { %"struct.Eigen::internal::binary_evaluator.252" }
%"struct.Eigen::internal::binary_evaluator.252" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>, const Eigen::Matrix<double, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>, const Eigen::Matrix<double, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.255", %"struct.Eigen::internal::evaluator.265" }
%"struct.Eigen::internal::evaluator.255" = type { %"struct.Eigen::internal::evaluator.256" }
%"struct.Eigen::internal::evaluator.256" = type { %"struct.Eigen::internal::binary_evaluator.257" }
%"struct.Eigen::internal::binary_evaluator.257" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.260", %"struct.Eigen::internal::evaluator.262" }
%"struct.Eigen::internal::evaluator.260" = type { %"struct.Eigen::internal::evaluator.261" }
%"struct.Eigen::internal::evaluator.261" = type { %"struct.Eigen::internal::product_evaluator" }
%"struct.Eigen::internal::product_evaluator" = type { %"struct.Eigen::internal::evaluator.175", %"class.Eigen::Matrix.23" }
%"struct.Eigen::internal::evaluator.175" = type { %"struct.Eigen::internal::evaluator.176" }
%"struct.Eigen::internal::evaluator.176" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.179" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.179" = type { ptr }
%"class.Eigen::Matrix.23" = type { %"class.Eigen::PlainObjectBase.24" }
%"class.Eigen::PlainObjectBase.24" = type { %"class.Eigen::DenseStorage.31" }
%"class.Eigen::DenseStorage.31" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.262" = type { %"struct.Eigen::internal::evaluator.263" }
%"struct.Eigen::internal::evaluator.263" = type { %"struct.Eigen::internal::product_evaluator.264" }
%"struct.Eigen::internal::product_evaluator.264" = type { %"struct.Eigen::internal::evaluator.175", %"class.Eigen::Matrix.23" }
%"struct.Eigen::internal::evaluator.265" = type { %"struct.Eigen::internal::evaluator.175" }
%"struct.Eigen::internal::assign_op" = type { i8 }
%"class.Eigen::Matrix" = type { %"class.Eigen::PlainObjectBase" }
%"class.Eigen::PlainObjectBase" = type { %"class.Eigen::DenseStorage" }
%"class.Eigen::DenseStorage" = type { ptr, i64, i64 }
%"class.Eigen::Map" = type { %"class.Eigen::MapBase.base.10", [6 x i8] }
%"class.Eigen::MapBase.base.10" = type { %"class.Eigen::MapBase.base" }
%"class.Eigen::MapBase.base" = type <{ ptr, [2 x i8] }>
%"class.Eigen::Map.11" = type { %"class.Eigen::MapBase.base.21", [6 x i8] }
%"class.Eigen::MapBase.base.21" = type { %"class.Eigen::MapBase.base.20" }
%"class.Eigen::MapBase.base.20" = type <{ ptr, [2 x i8] }>
%"class.Eigen::DiagonalWrapper" = type { ptr }
%"class.Eigen::Matrix.61" = type { %"class.Eigen::PlainObjectBase.62" }
%"class.Eigen::PlainObjectBase.62" = type { %"class.Eigen::DenseStorage.69" }
%"class.Eigen::DenseStorage.69" = type { %"struct.Eigen::internal::plain_array" }
%"struct.Eigen::internal::plain_array" = type { [12 x double] }
%"class.Eigen::CwiseBinaryOp.126" = type <{ [8 x i8], %"class.Eigen::CwiseBinaryOp.132", ptr, [8 x i8] }>
%"class.Eigen::CwiseBinaryOp.132" = type <{ %"class.Eigen::Product", %"class.Eigen::Product.142", [8 x i8] }>
%"class.Eigen::Product" = type { ptr, ptr }
%"class.Eigen::Product.142" = type { ptr, %"class.Eigen::Block" }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase.base.96", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.96" = type { %"class.Eigen::MapBase.base.95" }
%"class.Eigen::MapBase.base.95" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }
%"class.Eigen::internal::const_blas_data_mapper.328" = type { %"class.Eigen::internal::blas_data_mapper.329" }
%"class.Eigen::internal::blas_data_mapper.329" = type { ptr, i64 }

$_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll = comdat any

$_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_ = comdat any

$_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi4ELi1ELi12ELi4EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS8_RKSA_ = comdat any

$_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE = comdat any

$_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_15DiagonalWrapperIKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEENS0_9assign_opIddEENS0_14Diagonal2DenseEvE3runERS3_RKS7_RKS9_ = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi12ELi1ELi0ELi12ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_ = comdat any

$_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IdLi12ELi1ELi0ELi12ELi1EEENS_10DenseShapeES5_Li7EE13scaleAndAddToINS2_IdLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS4_RKd = comdat any

$_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld = comdat any

$_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_ = comdat any

@rho_value = dso_local local_unnamed_addr global double 5.000000e+00, align 8
@Adyn_data = dso_local global [144 x double] [double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 3.924000e-03, double -0.000000e+00, double 2.000000e-02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.310000e-05, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double -3.924000e-03, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 2.000000e-02, double 0.000000e+00, double -1.310000e-05, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 2.000000e-02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e-02, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -0.000000e+00, double 1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e-02, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e-02, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 3.924000e-01, double -0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.962000e-03, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -3.924000e-01, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double -1.962000e-03, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00, double -0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double -0.000000e+00, double 0.000000e+00, double 1.000000e+00], align 16
@Bdyn_data = dso_local global [48 x double] [double -1.810000e-05, double 1.990000e-05, double 1.820000e-05, double -2.000000e-05, double 1.800000e-05, double 1.980000e-05, double -1.800000e-05, double -1.980000e-05, double 8.409000e-04, double 8.409000e-04, double 8.409000e-04, double 8.409000e-04, double -2.753550e-02, double -3.032340e-02, double 2.756630e-02, double 3.029260e-02, double -2.767070e-02, double 3.042780e-02, double 2.775700e-02, double -3.051410e-02, double 1.974800e-03, double -7.224000e-04, double -2.784400e-03, double 1.532000e-03, double -3.619300e-03, double 3.980000e-03, double 3.630600e-03, double -3.991200e-03, double 3.601600e-03, double 3.966300e-03, double -3.605700e-03, double -3.962300e-03, double f0x3FB586A3F38FAF35, double f0x3FB586A3F38FAF35, double f0x3FB586A3F38FAF35, double f0x3FB586A3F38FAF35, double f0xC016074326C63D67, double f0xC018423BA84CBAC4, double f0x40160D921DA455B5, double f0x40183BECB16EA275, double f0xC01622F5B375E3B2, double f0x4018579F3E1E48C0, double 5.551390e+00, double f0xC01869491F2DC2B1, double f0x3FD946EDFB1ABDF1, double f0xBFC27E15AF94ADA2, double f0xBFE1D1EBF07E82BD, double f0x3FD39BF4BDAC9E59], align 16
@Q_data = dso_local local_unnamed_addr global [12 x double] [double 1.000000e+02, double 1.000000e+02, double 1.000000e+02, double 4.000000e+00, double 4.000000e+00, double 4.000000e+02, double 4.000000e+00, double 4.000000e+00, double 4.000000e+00, double f0x400053977F0D2659, double f0x400053977F0D2659, double 4.000000e+00], align 16
@R_data = dso_local local_unnamed_addr global [4 x double] [double 4.000000e+00, double 4.000000e+00, double 4.000000e+00, double 4.000000e+00], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [17 x i8] c"tracking error: \00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c", altitude violation: z=\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"  states: \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"inputs: \00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.Eigen::internal::evaluator.251", align 8 ; 7 uses
  %1 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %3 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %4 = alloca %"class.Eigen::Map", align 8        ; 4 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 12 uses
  %6 = alloca %"class.Eigen::Map.11", align 8     ; 5 uses
  %7 = alloca %"class.Eigen::Matrix.23", align 8  ; 9 uses
  %8 = alloca %"class.Eigen::Matrix.23", align 8  ; 9 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %10 = alloca %"class.Eigen::Matrix", align 8    ; 9 uses
  %11 = alloca %"class.Eigen::Matrix", align 8    ; 7 uses
  %12 = alloca %"class.Eigen::Matrix", align 8    ; 4 uses
  %13 = alloca %"class.Eigen::DiagonalWrapper", align 8 ; 5 uses
  %14 = alloca %"class.Eigen::Matrix", align 8    ; 4 uses
  %15 = alloca %"class.Eigen::DiagonalWrapper", align 8 ; 5 uses
  %16 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %17 = alloca %"class.Eigen::Matrix.23", align 8 ; 5 uses
  %18 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %19 = alloca %"class.Eigen::Matrix.23", align 8 ; 5 uses
  %20 = alloca %"class.Eigen::Matrix.61", align 16 ; 28 uses
  %i.b = ptrtoaddr ptr %20 to i64                 ; 2 uses
  %21 = alloca %"class.Eigen::Matrix.61", align 16 ; 16 uses
  %22 = alloca %"class.Eigen::Matrix.23", align 8 ; 7 uses
  %23 = alloca %"class.Eigen::CwiseBinaryOp.126", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store ptr @Adyn_data, ptr %4, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.c = tail call noalias dereferenceable_or_null(1152) ptr @malloc(i64 noundef 1152) #16 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.sink.split.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i unwind label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !18
  store i64 12, ptr %i.g, align 8, !tbaa !19
  store i64 12, ptr %i.f, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  invoke void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.d unwind label %bb.c

common.resume:                                    ; preds = %bb.bj, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bj ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %.sink.split.i.i.i.i, %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.i) #15
  br label %common.resume

bb.d:                                             ; preds = %.sink.split.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr @Bdyn_data, ptr %6, align 8, !tbaa !23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.j = call noalias dereferenceable_or_null(384) ptr @malloc(i64 noundef 384) #16 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %.sink.split.i.i.i.i144

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i145 unwind label %.body

.noexc.i.i145:                                    ; preds = %bb.e
  unreachable

.sink.split.i.i.i.i144:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !18
  store i64 12, ptr %i.n, align 8, !tbaa !19
  store i64 4, ptr %i.m, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi4ELi1ELi12ELi4EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS8_RKSA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i unwind label %.body

.body:                                            ; preds = %.sink.split.i.i.i.i144, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.bj

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i144
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.q = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  %i.s = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i148 unwind label %bb.g

.noexc.i.i148:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body149

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i
  store ptr %i.q, ptr %7, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 12, ptr %i.u, align 8, !tbaa !26
  %i.v = load <2 x double>, ptr @Q_data, align 16, !tbaa !27
  store <2 x double> %i.v, ptr %i.q, align 16, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.x, ptr %i.w, align 16, !tbaa !27
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.z = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 32), align 16, !tbaa !27
  store <2 x double> %i.z, ptr %i.y, align 16, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.ab = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 48), align 16, !tbaa !27
  store <2 x double> %i.ab, ptr %i.aa, align 16, !tbaa !27
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.ad = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 64), align 16, !tbaa !27
  store <2 x double> %i.ad, ptr %i.ac, align 16, !tbaa !27
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.af = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @Q_data, i64 80), align 16, !tbaa !27
  store <2 x double> %i.af, ptr %i.ae, align 16, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  %i.ag = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.invoke753, label %bb.i

.invoke753:                                       ; preds = %bb.h, %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont754 unwind label %bb.z

.cont754:                                         ; preds = %.invoke753
  unreachable

bb.i:                                             ; preds = %bb.h
  store ptr %i.ag, ptr %8, align 8, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 4, ptr %i.aj, align 8, !tbaa !26
  %i.ak = load <2 x double>, ptr @R_data, align 16, !tbaa !27
  store <2 x double> %i.ak, ptr %i.ag, align 16, !tbaa !27
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.am = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @R_data, i64 16), align 16, !tbaa !27
  store <2 x double> %i.am, ptr %i.al, align 16, !tbaa !27
  %i.an = load i64, ptr %i.g, align 8, !tbaa !19  ; 3 uses
  %i.ao = load i64, ptr %i.f, align 8, !tbaa !20  ; 3 uses
  %i.ap = mul nsw i64 %i.ao, %i.an                ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, label %bb.j

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread: ; preds = %bb.i
  store ptr null, ptr %9, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.as, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

bb.j:                                             ; preds = %bb.i
  %i.at = icmp ugt i64 %i.ap, 2305843009213693951
  br i1 %i.at, label %.invoke753, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.j
  %i.au = shl nuw i64 %i.ap, 3                    ; 2 uses
  %i.av = call noalias ptr @malloc(i64 noundef %i.au) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.invoke753, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.av, ptr %9, align 8, !tbaa !18
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.an, ptr %i.ax, align 8, !tbaa !19
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i64 %i.ao, ptr %i.ay, align 8, !tbaa !20
  %i.az = load ptr, ptr %3, align 8, !tbaa !18
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.az, i64 %i.au, i1 false)
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit: ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i.thread, %bb.k
  %i.ba = load i64, ptr %i.n, align 8, !tbaa !19  ; 3 uses
  %i.bb = load i64, ptr %i.m, align 8, !tbaa !20  ; 3 uses
  %i.bc = mul nsw i64 %i.bb, %i.ba                ; 3 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i330.thread, label %bb.l

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i330.thread: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  store ptr null, ptr %10, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.bg = icmp ugt i64 %i.bc, 2305843009213693951
  br i1 %i.bg, label %.invoke749, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i329

end_hunk_0
begin_hunk_1_@main:bb.a
  br i1 %i.bo, label %bb.n, label %.sink.split.i340

bb.n:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154
  %i.bp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bp, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.bp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc344 unwind label %bb.o

.noexc344:                                        ; preds = %bb.n
  unreachable

.sink.split.i340:                                 ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit154
  %i.bq = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %calloc747, ptr %11, align 8, !tbaa !18
  store i64 12, ptr %i.br, align 8, !tbaa !19
  store i64 1, ptr %i.bq, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  store ptr %7, ptr %13, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.p unwind label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body156

bb.p:                                             ; preds = %.sink.split.i340
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  store ptr %8, ptr %15, align 8
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_15DiagonalWrapperIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158 unwind label %bb.ac

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158: ; preds = %bb.p
  %i.bt = load double, ptr @rho_value, align 8, !tbaa !29
  %i.bu = invoke i32 @tiny_setup(ptr noundef nonnull %i.a, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %9, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %10, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %11, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %12, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %14, double noundef %i.bt, i32 noundef 12, i32 noundef 4, i32 noundef 10, i32 noundef 1)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349 unwind label %bb.ad ; 0 uses

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158
  %i.bv = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.bv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.bw = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.bw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.bx = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.bx) #15
  %i.by = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.by) #15
  %i.bz = load ptr, ptr %9, align 8, !tbaa !18
  call void @free(ptr noundef %i.bz) #15
  %calloc746 = call dereferenceable_or_null(96) ptr @calloc(i64 1, i64 96) ; 5 uses
  %i.ca = icmp eq ptr %calloc746, null
  br i1 %i.ca, label %.invoke753, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i349
  %i.cb = getelementptr i8, ptr %calloc746, i64 16
  store double 1.000000e+00, ptr %i.cb, align 8, !tbaa !29
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32) ; 6 uses
  %i.cc = icmp eq ptr %calloc, null
  br i1 %i.cc, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360

bb.q:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356
  %i.cd = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cd, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc358 unwind label %bb.r

.noexc358:                                        ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %.body163

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i356
  store <2 x double> splat (double 1.000000e+00), ptr %calloc, align 8, !tbaa !29
  %i.cf = getelementptr i8, ptr %calloc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.cf, align 8, !tbaa !29
  %i.cg = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.ch = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.s, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i

bb.s:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360
  %i.cj = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cj, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc365 unwind label %bb.ah

.noexc365:                                        ; preds = %bb.s
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i360
  store ptr %i.ch, ptr %16, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 1, ptr %i.ck, align 8, !tbaa !19
  %i.cl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 12, ptr %i.cl, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.ch, ptr noundef nonnull align 8 dereferenceable(96) %calloc746, i64 96, i1 false)
  %i.cm = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16 ; 3 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.t, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367

bb.t:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  %i.co = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.co, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.co, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc181 unwind label %bb.ai

.noexc181:                                        ; preds = %bb.t
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i
  store ptr %i.cm, ptr %17, align 8, !tbaa !25
  %i.cp = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.cp, align 8, !tbaa !26
  store i64 4613937818241073152, ptr %i.cm, align 8
  %i.cq = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #16 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184

bb.u:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367
  %i.cs = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cs, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc372 unwind label %bb.aj

.noexc372:                                        ; preds = %bb.u
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i367
  store ptr %i.cq, ptr %18, align 8, !tbaa !18
  %i.ct = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 1, ptr %i.ct, align 8, !tbaa !19
  %i.cu = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 4, ptr %i.cu, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %calloc, i64 32, i1 false)
  %i.cv = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #16 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184
  %i.cx = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cx, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc189 unwind label %bb.ak

.noexc189:                                        ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i184
  store ptr %i.cv, ptr %19, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.cy, align 8, !tbaa !26
  store i64 4618441417868443648, ptr %i.cv, align 8
  %i.cz = invoke i32 @tiny_set_linear_constraints(ptr noundef %i.cg, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %16, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %17, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %18, ptr nofreeobj noundef nonnull align 8 dereferenceable(16) %19)
          to label %bb.x unwind label %bb.al      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.da) #15
  %i.db = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.db) #15
  %i.dc = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.dc) #15
  %i.dd = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.dd) #15
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !72 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store i32 100, ptr %i.dh, align 8, !tbaa !74
  store <2 x double> splat (double 1.000000e-03), ptr %i.dg, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  store i32 0, ptr %i.di, align 8, !tbaa !75
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 28
  store i32 0, ptr %i.dj, align 4, !tbaa !76
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  store i32 1, ptr %i.dk, align 8, !tbaa !77
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 44
  store i32 1, ptr %i.dl, align 4, !tbaa !78
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.do = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x double> splat (double -2.000000e+00), ptr %20, align 16, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store double 1.000000e+00, ptr %i.dp, align 16, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dq, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store <2 x double> splat (double 2.000000e+00), ptr %21, align 16, !tbaa !29
  %i.dv = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store double 4.000000e+00, ptr %i.dv, align 16, !tbaa !29
  %24 = getelementptr inbounds nuw i8, ptr %21, i64 24
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 1224
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 1232
  %i.dz = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 40 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 1160
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 1184
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dn, i64 1208
  %i.ef = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %.sroa.5416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 16
  %.sroa.6417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 24 ; 2 uses
  %.sroa.7418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 32
  %.sroa.8419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 40
  %.sroa.10421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 56
  %.sroa.11422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %23, i64 80
  %i.eg = getelementptr inbounds nuw i8, ptr %23, i64 96 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %24, i8 0, i64 72, i1 false)
  %i.em = load <2 x double>, ptr %i.dv, align 16  ; 2 uses
  %i.en = fmul <2 x double> %i.em, splat (double 2.000000e-02)
  %i.eo = extractelement <2 x double> %i.em, i64 0
  br label %.preheader

.preheader:                                       ; preds = %bb.x, %bb.bi
  %indvars.iv718 = phi i64 [ 0, %bb.x ], [ %indvars.iv.next719, %bb.bi ] ; 2 uses
  br label %bb.as

bb.y:                                             ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @free(ptr noundef %calloc) #15
  call void @free(ptr noundef %calloc746) #15
  %i.ep = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.ep) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.eq = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.eq) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.er = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.er) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.es = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.es) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0

bb.z:                                             ; preds = %.invoke753
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %.body152

bb.aa:                                            ; preds = %.invoke749
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ab:                                            ; preds = %.sink.split.i340
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ac:                                            ; preds = %bb.p
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_15DiagonalWrapperIKNS0_IdLin1ELi1ELi0ELin1ELi1EEEEEEERKNS_9EigenBaseIT_EE.exit158
  %i.ex = landingpad { ptr, i32 }
          cleanup
  %i.ey = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.ey) #15
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.ex, %bb.ad ], [ %i.ew, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.ez = load ptr, ptr %12, align 8, !tbaa !18
  call void @free(ptr noundef %i.ez) #15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ae ], [ %i.ev, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %.body156

.body156:                                         ; preds = %bb.o, %bb.af
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.af ], [ %i.bs, %bb.o ]
  %i.fa = load ptr, ptr %11, align 8, !tbaa !18
  call void @free(ptr noundef %i.fa) #15
  %i.fb = load ptr, ptr %10, align 8, !tbaa !18
  call void @free(ptr noundef %i.fb) #15
  br label %bb.ag

bb.ag:                                            ; preds = %.body156, %bb.aa
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body156 ], [ %i.eu, %bb.aa ]
  %i.fc = load ptr, ptr %9, align 8, !tbaa !18
  call void @free(ptr noundef %i.fc) #15
  br label %.body152

bb.ah:                                            ; preds = %bb.s
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %.body177

bb.ai:                                            ; preds = %bb.t
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.aj:                                            ; preds = %bb.u
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.ak:                                            ; preds = %bb.v
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.al:                                            ; preds = %bb.w
  %i.fh = landingpad { ptr, i32 }
          cleanup
  %i.fi = load ptr, ptr %19, align 8, !tbaa !25
  call void @free(ptr noundef %i.fi) #15
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.pn88 = phi { ptr, i32 } [ %i.fh, %bb.al ], [ %i.fg, %bb.ak ]
  %i.fj = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.fj) #15
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.pn88.pn = phi { ptr, i32 } [ %.pn88, %bb.am ], [ %i.ff, %bb.aj ]
  %i.fk = load ptr, ptr %17, align 8, !tbaa !25
  call void @free(ptr noundef %i.fk) #15
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %bb.an ], [ %i.fe, %bb.ai ]
  %i.fl = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.fl) #15
  br label %.body177

bb.ap:                                            ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.fn = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.aq, label %bb.au

bb.aq:                                            ; preds = %bb.ap
  %i.fp = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fp, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i296 unwind label %bb.ar

.noexc.i.i296:                                    ; preds = %bb.aq
  unreachable

bb.ar:                                            ; preds = %bb.aq
  %i.fq = landingpad { ptr, i32 }
          cleanup
  %i.fr = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.fr) #15
  br label %.body297

bb.as:                                            ; preds = %.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKNS5_INS6_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLi12ELi1ELi0ELi12ELi1EEEEESF_EESJ_EEEERS3_RKNS_9DenseBaseIT_EE.exit ] ; 5 uses
  %i.fs = shl nuw nsw i64 %indvars.iv, 3
  %i.ft = shl nuw nsw i64 %indvars.iv, 3
  %i.fu = add nuw nsw i64 %indvars.iv, %indvars.iv718
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = uitofp nneg i32 %i.fv to double
  %i.fx = fdiv double %i.fw, 4.900000e+01         ; 10 uses
  %i.fy = fsub double 1.000000e+00, %i.fx         ; 9 uses
  %i.fz = load ptr, ptr %i.dx, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.ga = ptrtoaddr ptr %i.fz to i64              ; 2 uses
  %i.gb = load i64, ptr %i.dy, align 8, !tbaa !19, !noalias !80 ; 11 uses
  %i.gc = mul nsw i64 %i.gb, %indvars.iv
  %.not.i.i.i.i.i299 = icmp eq ptr %i.fz, null
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gc ; 10 uses
  %i.ge = select i1 %.not.i.i.i.i.i299, ptr null, ptr %i.gd
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fy, i64 0
  %.sroa.1122.48.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gf = ptrtoint ptr %i.ge to i64               ; 2 uses
  %i.gg = and i64 %i.gf, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gg, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.at, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.gh = lshr exact i64 %i.gf, 3
  %i.gi = and i64 %i.gh, 1
  %i.gj = call i64 @llvm.smin.i64(i64 %i.gi, i64 %i.gb)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gj, %bb.at ], [ %i.gb, %bb.as ] ; 11 uses
  %i.gk = sub nsw i64 %i.gb, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gl = sdiv i64 %i.gk, 2
  %i.gm = shl nsw i64 %i.gl, 1                    ; 2 uses
  %i.gn = add nsw i64 %i.gm, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.go = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.go, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check763 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check763, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782, label %vector.memcheck760

vector.memcheck760:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gp = sub i64 %i.ga, %i.b
  %i.gq = mul i64 %i.gb, %i.fs
  %i.gr = add i64 %i.gp, %i.gq
  %i.gs = add i64 %i.gr, -1
  %diff.check761 = icmp ult i64 %i.gs, 31
  br i1 %diff.check761, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader782, label %vector.ph764

end_hunk_1
begin_hunk_2_@main:bb.a

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322: ; preds = %_ZNSolsEd.exit320
  %i.os = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.ot = getelementptr i8, ptr %i.os, i64 -24
  %i.ou = load i64, ptr %i.ot, align 8
  %i.ov = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ou
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 8
  store i64 3, ptr %i.ow, align 8, !tbaa !91
  %i.ox = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.oy = getelementptr i8, ptr %i.ox, i64 8
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !29
  %i.pa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.oz)
          to label %_ZNSolsEd.exit320.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit320.1:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322
  %i.pb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pa, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1: ; preds = %_ZNSolsEd.exit320.1
  %i.pc = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.pd = getelementptr i8, ptr %i.pc, i64 -24
  %i.pe = load i64, ptr %i.pd, align 8
  %i.pf = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  store i64 3, ptr %i.pg, align 8, !tbaa !91
  %i.ph = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.pi = getelementptr i8, ptr %i.ph, i64 16
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !29
  %i.pk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.pj)
          to label %_ZNSolsEd.exit320.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit320.2:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1
  %i.pl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pk, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2: ; preds = %_ZNSolsEd.exit320.2
  %i.pm = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.pn = getelementptr i8, ptr %i.pm, i64 -24
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.po
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store i64 3, ptr %i.pq, align 8, !tbaa !91
  %i.pr = load ptr, ptr %i.ea, align 8, !tbaa !18
  %i.ps = getelementptr i8, ptr %i.pr, i64 24
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !29
  %i.pu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.pt)
          to label %_ZNSolsEd.exit320.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit320.3:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2
  %i.pv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.pu, ptr noundef nonnull @.str.5, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.3: ; preds = %_ZNSolsEd.exit320.3
  %i.pw = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.px = getelementptr i8, ptr %i.pw, i64 -24
  %i.py = load i64, ptr %i.px, align 8
  %i.pz = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.py
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 240
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i380 = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i380, label %.invoke751, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i381

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc388, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i383, %.noexc386, %bb.bd, %.noexc378, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc376, %bb.bb, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316.2, %_ZNSolsEPFRSoS_E.exit, %bb.ay, %bb.ax, %bb.aw, %.lr.ph85.i.i.i.i.i, %bb.av, %_ZNSolsEd.exit320.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.2, %_ZNSolsEd.exit320.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322.1, %_ZNSolsEd.exit320.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit322, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit312.preheader.preheader, %_ZNSolsEd.exit320, %_ZNSolsEd.exit314.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316.1, %_ZNSolsEd.exit314.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit316, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit310.preheader.preheader, %_ZNSolsEd.exit314, %.invoke751
  %lpad.loopexit.split-lp783 = landingpad { ptr, i32 }
          cleanup
  br label %.body297

_ZNSolsEPFRSoS_E.exit318:                         ; preds = %.noexc388
  %i.qc = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !106
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !110
  %.not = icmp eq i32 %i.qf, 0
  br i1 %.not, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.qg = load ptr, ptr %i.ea, align 8, !tbaa !18, !noalias !111
  %i.qh = load i64, ptr %i.ec, align 8, !tbaa !19, !noalias !111 ; 2 uses
  store ptr %i.eb, ptr %i.ef, align 8
  store ptr %20, ptr %.sroa.5416.0..sroa_idx, align 8
  store ptr %i.ed, ptr %.sroa.6417.0..sroa_idx, align 8
  store ptr %i.qg, ptr %.sroa.7418.0..sroa_idx, align 8
  store i64 %i.qh, ptr %.sroa.8419.0..sroa_idx, align 8
  store ptr %i.ea, ptr %.sroa.10421.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11422.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.qh, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.ee, ptr %i.eg, align 8, !tbaa !112, !alias.scope !113
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi12ELi1ELi0ELi12ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.eh, ptr noundef nonnull align 8 dereferenceable(81) %i.ef)
          to label %.noexc324 unwind label %bb.bg

.noexc324:                                        ; preds = %bb.be
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.ei, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6417.0..sroa_idx)
          to label %bb.bf unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc324
  %i.qi = landingpad { ptr, i32 }
          cleanup
  %i.qj = load ptr, ptr %i.el, align 8, !tbaa !25
  call void @free(ptr noundef %i.qj) #15
  br label %.body325

bb.bf:                                            ; preds = %.noexc324
  %i.qk = load ptr, ptr %i.eg, align 8, !tbaa !117, !nonnull !43, !align !44
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !25 ; 7 uses
  store ptr %i.ql, ptr %i.ej, align 8, !tbaa !46
  %i.qm = load ptr, ptr %i.eh, align 8, !tbaa !119 ; 6 uses
  %i.qn = load <2 x double>, ptr %i.qm, align 16, !tbaa !27
  %i.qo = load ptr, ptr %i.ei, align 8, !tbaa !119 ; 6 uses
  %i.qp = load <2 x double>, ptr %i.qo, align 16, !tbaa !27
  %i.qq = fadd <2 x double> %i.qn, %i.qp
  %i.qr = load <2 x double>, ptr %i.ql, align 16, !tbaa !27
  %i.qs = fadd <2 x double> %i.qq, %i.qr
  store <2 x double> %i.qs, ptr %20, align 16, !tbaa !27
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qu = load <2 x double>, ptr %i.qt, align 16, !tbaa !27
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qo, i64 16
  %i.qw = load <2 x double>, ptr %i.qv, align 16, !tbaa !27
  %i.qx = fadd <2 x double> %i.qu, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.ql, i64 16
  %i.qz = load <2 x double>, ptr %i.qy, align 16, !tbaa !27
  %i.ra = fadd <2 x double> %i.qx, %i.qz
  store <2 x double> %i.ra, ptr %i.dp, align 16, !tbaa !27
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.rc = load <2 x double>, ptr %i.rb, align 16, !tbaa !27
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qo, i64 32
  %i.re = load <2 x double>, ptr %i.rd, align 16, !tbaa !27
  %i.rf = fadd <2 x double> %i.rc, %i.re
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ql, i64 32
  %i.rh = load <2 x double>, ptr %i.rg, align 16, !tbaa !27
  %i.ri = fadd <2 x double> %i.rf, %i.rh
  store <2 x double> %i.ri, ptr %i.dr, align 16, !tbaa !27
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qm, i64 48
  %i.rk = load <2 x double>, ptr %i.rj, align 16, !tbaa !27
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qo, i64 48
  %i.rm = load <2 x double>, ptr %i.rl, align 16, !tbaa !27
  %i.rn = fadd <2 x double> %i.rk, %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ql, i64 48
  %i.rp = load <2 x double>, ptr %i.ro, align 16, !tbaa !27
  %i.rq = fadd <2 x double> %i.rn, %i.rp
  store <2 x double> %i.rq, ptr %i.ds, align 16, !tbaa !27
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qm, i64 64
  %i.rs = load <2 x double>, ptr %i.rr, align 16, !tbaa !27
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qo, i64 64
  %i.ru = load <2 x double>, ptr %i.rt, align 16, !tbaa !27
  %i.rv = fadd <2 x double> %i.rs, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ql, i64 64
  %i.rx = load <2 x double>, ptr %i.rw, align 16, !tbaa !27
  %i.ry = fadd <2 x double> %i.rv, %i.rx
  store <2 x double> %i.ry, ptr %i.dt, align 16, !tbaa !27
  %i.rz = getelementptr inbounds nuw i8, ptr %i.qm, i64 80
  %i.sa = load <2 x double>, ptr %i.rz, align 16, !tbaa !27
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qo, i64 80
  %i.sc = load <2 x double>, ptr %i.sb, align 16, !tbaa !27
  %i.sd = fadd <2 x double> %i.sa, %i.sc
  %i.se = getelementptr inbounds nuw i8, ptr %i.ql, i64 80
  %i.sf = load <2 x double>, ptr %i.se, align 16, !tbaa !27
  %i.sg = fadd <2 x double> %i.sd, %i.sf
  store <2 x double> %i.sg, ptr %i.du, align 16, !tbaa !27
  %i.sh = load ptr, ptr %i.ek, align 8, !tbaa !25
  call void @free(ptr noundef %i.sh) #15
  %i.si = load ptr, ptr %i.el, align 8, !tbaa !25
  call void @free(ptr noundef %i.si) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %bb.bi

bb.bg:                                            ; preds = %bb.be
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %.body325

.body325:                                         ; preds = %bb.bg, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn120 = phi { ptr, i32 } [ %i.qi, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.sj, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  br label %.body297

bb.bh:                                            ; preds = %_ZNSolsEPFRSoS_E.exit318
  %i.sk = load <2 x double>, ptr %20, align 16, !tbaa !27
  %i.sl = fmul <2 x double> %i.sk, splat (double f0x3FEF5C28F5C28F5C)
  %i.sm = fadd <2 x double> %i.sl, splat (double 4.000000e-02)
  store <2 x double> %i.sm, ptr %20, align 16, !tbaa !27
  %i.sn = load <2 x double>, ptr %i.dp, align 16, !tbaa !27
  %i.so = fmul <2 x double> %i.sn, splat (double f0x3FEF5C28F5C28F5C)
  %i.sp = fadd <2 x double> %i.so, %i.en
  store <2 x double> %i.sp, ptr %i.dp, align 16, !tbaa !27
  %i.sq = load <2 x double>, ptr %i.dr, align 16, !tbaa !27
  %i.sr = fmul <2 x double> %i.sq, splat (double f0x3FEF5C28F5C28F5C)
  %i.ss = fadd <2 x double> %i.sr, zeroinitializer
  store <2 x double> %i.ss, ptr %i.dr, align 16, !tbaa !27
  %i.st = load <2 x double>, ptr %i.ds, align 16, !tbaa !27
  %i.su = fmul <2 x double> %i.st, splat (double f0x3FEF5C28F5C28F5C)
  %i.sv = fadd <2 x double> %i.su, zeroinitializer
  store <2 x double> %i.sv, ptr %i.ds, align 16, !tbaa !27
  %i.sw = load <2 x double>, ptr %i.dt, align 16, !tbaa !27
  %i.sx = fmul <2 x double> %i.sw, splat (double f0x3FEF5C28F5C28F5C)
  %i.sy = fadd <2 x double> %i.sx, zeroinitializer
  store <2 x double> %i.sy, ptr %i.dt, align 16, !tbaa !27
  %i.sz = load <2 x double>, ptr %i.du, align 16, !tbaa !27
  %25 = fmul <2 x double> %i.sz, splat (double f0x3FEF5C28F5C28F5C)
  %26 = load <2 x double>, ptr %i.dw, align 16, !tbaa !27
  %i.ta = fmul <2 x double> %26, splat (double 2.000000e-02)
  %i.tb = fadd <2 x double> %25, %i.ta
  store <2 x double> %i.tb, ptr %i.du, align 16, !tbaa !27
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bf
  %indvars.iv.next719 = add nuw nsw i64 %indvars.iv718, 1 ; 2 uses
  %exitcond721.not = icmp eq i64 %indvars.iv.next719, 40
  br i1 %exitcond721.not, label %bb.y, label %.preheader, !llvm.loop !69

.body297:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ar, %bb.az, %.body325
  %.pn125.pn.pn.pn = phi { ptr, i32 } [ %.pn120, %.body325 ], [ %i.fq, %bb.ar ], [ %i.mh, %bb.az ], [ %lpad.loopexit.split-lp783, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %.body177

.body177:                                         ; preds = %bb.ah, %bb.ao, %.body297
  %.pn125.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn, %.body297 ], [ %.pn88.pn.pn, %bb.ao ], [ %i.fd, %bb.ah ]
  call void @free(ptr noundef %calloc) #15
  br label %.body163

.body163:                                         ; preds = %bb.r, %.body177
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ce, %bb.r ], [ %.pn125.pn.pn.pn.pn.pn, %.body177 ]
  call void @free(ptr noundef %calloc746) #15
  br label %.body152

.body152:                                         ; preds = %bb.z, %bb.ag, %.body163
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body163 ], [ %i.et, %bb.z ], [ %.pn.pn.pn.pn, %bb.ag ]
  %i.tc = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.tc) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.body149

.body149:                                         ; preds = %bb.g, %.body152
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body152 ], [ %i.t, %bb.g ]
  %i.td = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.td) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.te = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.te) #15
  br label %bb.bj

bb.bj:                                            ; preds = %.body149, %.body
  %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn125.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body149 ], [ %i.o, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.tf = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.tf) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

declare i32 @tiny_setup(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), double noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @tiny_set_linear_constraints(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(16), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_set_x0(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(16)) local_unnamed_addr #2

declare i32 @tiny_solve(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.f) #15
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #16 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !19
  store i64 %3, ptr %i.c, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi12ELi1ELi12ELi12EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !13     ; 144 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i64 %i.c, 12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 2 uses
  %.not8.i = icmp eq i64 %i.e, 12
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %.preheader.lr.ph.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = mul nsw i64 %i.e, %i.c
  %.not.i.i = icmp eq i64 %i.f, 144
  br i1 %.not.i.i, label %.preheader.lr.ph.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.g) #15
  %i.h = tail call noalias dereferenceable_or_null(1152) ptr @malloc(i64 noundef 1152) #16 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.noexc, label %.sink.split.i.i

.noexc:                                           ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !15
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
  unreachable

.sink.split.i.i:                                  ; preds = %bb.c
  store ptr %i.h, ptr %0, align 8, !tbaa !18
  br label %.preheader.lr.ph.i.thread

.preheader.lr.ph.i.thread:                        ; preds = %bb.b, %.sink.split.i.i
  store i64 12, ptr %i.b, align 8, !tbaa !19
  store i64 12, ptr %i.d, align 8, !tbaa !20
  br label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.i:                         ; preds = %bb.a, %.preheader.lr.ph.i.thread
  %i.k = load ptr, ptr %0, align 8, !tbaa !18     ; 144 uses
  %i.l = load double, ptr %i.a, align 8, !tbaa !29
  store double %i.l, ptr %i.k, align 8, !tbaa !29
  %gep.i.115 = getelementptr i8, ptr %i.k, i64 8
  %i.m = getelementptr i8, ptr %i.a, i64 96
  %i.n = load double, ptr %i.m, align 8, !tbaa !29
  store double %i.n, ptr %gep.i.115, align 8, !tbaa !29
  %gep.i.219 = getelementptr i8, ptr %i.k, i64 16
  %i.o = getelementptr i8, ptr %i.a, i64 192
  %i.p = load double, ptr %i.o, align 8, !tbaa !29
  store double %i.p, ptr %gep.i.219, align 8, !tbaa !29
  %gep.i.323 = getelementptr i8, ptr %i.k, i64 24
  %i.q = getelementptr i8, ptr %i.a, i64 288
  %i.r = load double, ptr %i.q, align 8, !tbaa !29
  store double %i.r, ptr %gep.i.323, align 8, !tbaa !29
  %gep.i.427 = getelementptr i8, ptr %i.k, i64 32
  %i.s = getelementptr i8, ptr %i.a, i64 384
  %i.t = load double, ptr %i.s, align 8, !tbaa !29
  store double %i.t, ptr %gep.i.427, align 8, !tbaa !29
  %gep.i.531 = getelementptr i8, ptr %i.k, i64 40
  %i.u = getelementptr i8, ptr %i.a, i64 480
  %i.v = load double, ptr %i.u, align 8, !tbaa !29
  store double %i.v, ptr %gep.i.531, align 8, !tbaa !29
  %gep.i.635 = getelementptr i8, ptr %i.k, i64 48
  %i.w = getelementptr i8, ptr %i.a, i64 576
  %i.x = load double, ptr %i.w, align 8, !tbaa !29
  store double %i.x, ptr %gep.i.635, align 8, !tbaa !29
  %gep.i.739 = getelementptr i8, ptr %i.k, i64 56
  %i.y = getelementptr i8, ptr %i.a, i64 672
end_hunk_2
