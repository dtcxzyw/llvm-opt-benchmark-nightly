Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/quadrotor_tv_linear_constraints?download=true
inline.NumInlined: 1821
inline.NumDeleted: 925
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 31
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
%"struct.Eigen::internal::evaluator.250" = type { %"struct.Eigen::internal::binary_evaluator.251" }
%"struct.Eigen::internal::binary_evaluator.251" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>, const Eigen::Matrix<double, -1, 1>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>, const Eigen::Matrix<double, -1, 1>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.254", %"struct.Eigen::internal::evaluator.264" }
%"struct.Eigen::internal::evaluator.254" = type { %"struct.Eigen::internal::evaluator.255" }
%"struct.Eigen::internal::evaluator.255" = type { %"struct.Eigen::internal::binary_evaluator.256" }
%"struct.Eigen::internal::binary_evaluator.256" = type { %"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>>::Data" }
%"struct.Eigen::internal::binary_evaluator<Eigen::CwiseBinaryOp<Eigen::internal::scalar_sum_op<double>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Matrix<double, 12, 1>>, const Eigen::Product<Eigen::Matrix<double, -1, -1>, Eigen::Block<Eigen::Matrix<double, -1, -1>, -1, 1, true>>>>::Data" = type { [8 x i8], %"struct.Eigen::internal::evaluator.259", %"struct.Eigen::internal::evaluator.261" }
%"struct.Eigen::internal::evaluator.259" = type { %"struct.Eigen::internal::evaluator.260" }
%"struct.Eigen::internal::evaluator.260" = type { %"struct.Eigen::internal::product_evaluator" }
%"struct.Eigen::internal::product_evaluator" = type { %"struct.Eigen::internal::evaluator.174", %"class.Eigen::Matrix.23" }
%"struct.Eigen::internal::evaluator.174" = type { %"struct.Eigen::internal::evaluator.175" }
%"struct.Eigen::internal::evaluator.175" = type { %"class.Eigen::internal::plainobjectbase_evaluator_data.178" }
%"class.Eigen::internal::plainobjectbase_evaluator_data.178" = type { ptr }
%"class.Eigen::Matrix.23" = type { %"class.Eigen::PlainObjectBase.24" }
%"class.Eigen::PlainObjectBase.24" = type { %"class.Eigen::DenseStorage.31" }
%"class.Eigen::DenseStorage.31" = type { ptr, i64 }
%"struct.Eigen::internal::evaluator.261" = type { %"struct.Eigen::internal::evaluator.262" }
%"struct.Eigen::internal::evaluator.262" = type { %"struct.Eigen::internal::product_evaluator.263" }
%"struct.Eigen::internal::product_evaluator.263" = type { %"struct.Eigen::internal::evaluator.174", %"class.Eigen::Matrix.23" }
%"struct.Eigen::internal::evaluator.264" = type { %"struct.Eigen::internal::evaluator.174" }
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
%"class.Eigen::CwiseBinaryOp.125" = type <{ [8 x i8], %"class.Eigen::CwiseBinaryOp.131", ptr, [8 x i8] }>
%"class.Eigen::CwiseBinaryOp.131" = type <{ %"class.Eigen::Product", %"class.Eigen::Product.141", [8 x i8] }>
%"class.Eigen::Product" = type { ptr, ptr }
%"class.Eigen::Product.141" = type { ptr, %"class.Eigen::Block" }
%"class.Eigen::Block" = type { %"class.Eigen::BlockImpl" }
%"class.Eigen::BlockImpl" = type { %"class.Eigen::internal::BlockImpl_dense" }
%"class.Eigen::internal::BlockImpl_dense" = type { %"class.Eigen::MapBase.base.95", ptr, %"class.Eigen::internal::variable_if_dynamic", %"class.Eigen::internal::variable_if_dynamic", i64 }
%"class.Eigen::MapBase.base.95" = type { %"class.Eigen::MapBase.base.94" }
%"class.Eigen::MapBase.base.94" = type <{ ptr, %"class.Eigen::internal::variable_if_dynamic", i8 }>
%"class.Eigen::internal::variable_if_dynamic" = type { i64 }
%"class.Eigen::internal::const_blas_data_mapper" = type { %"class.Eigen::internal::blas_data_mapper" }
%"class.Eigen::internal::blas_data_mapper" = type { ptr, i64 }
%"class.Eigen::internal::const_blas_data_mapper.327" = type { %"class.Eigen::internal::blas_data_mapper.328" }
%"class.Eigen::internal::blas_data_mapper.328" = type { ptr, i64 }

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
@.str.4 = private unnamed_addr constant [10 x i8] c" > limit=\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"  states: \00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"inputs: \00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.Eigen::internal::evaluator.250", align 8 ; 7 uses
  %1 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %2 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca ptr, align 8                      ; 10 uses
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
  %17 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %18 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %19 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %20 = alloca %"class.Eigen::Matrix.61", align 16 ; 28 uses
  %i.b = ptrtoaddr ptr %20 to i64                 ; 2 uses
  %21 = alloca %"class.Eigen::Matrix.61", align 16 ; 19 uses
  %22 = alloca %"class.Eigen::Matrix.23", align 8 ; 7 uses
  %23 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %24 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %25 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %26 = alloca %"class.Eigen::Matrix", align 8    ; 6 uses
  %27 = alloca %"class.Eigen::CwiseBinaryOp.125", align 8 ; 12 uses
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

common.resume:                                    ; preds = %bb.ce, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn173.pn.pn.pn.pn.pn.pn, %bb.ce ]
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
  br i1 %i.k, label %bb.e, label %.sink.split.i.i.i.i181

bb.e:                                             ; preds = %bb.d
  %i.l = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i182 unwind label %.body

.noexc.i.i182:                                    ; preds = %bb.e
  unreachable

.sink.split.i.i.i.i181:                           ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.j, ptr %5, align 8, !tbaa !18
  store i64 12, ptr %i.n, align 8, !tbaa !19
  store i64 4, ptr %i.m, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  invoke void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3MapINS2_IdLi12ELi4ELi1ELi12ELi4EEELi0ENS_6StrideILi0ELi0EEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS8_RKSA_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i unwind label %.body

.body:                                            ; preds = %.sink.split.i.i.i.i181, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.p) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ce

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i.i.i.i: ; preds = %.sink.split.i.i.i.i181
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
          to label %.noexc.i.i185 unwind label %bb.g

.noexc.i.i185:                                    ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body186

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
  br i1 %i.ah, label %.invoke945, label %bb.i

.invoke945:                                       ; preds = %bb.h, %bb.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i382
  %i.ai = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ai, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.cont946 unwind label %bb.s

.cont946:                                         ; preds = %.invoke945
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
  br i1 %i.at, label %.invoke945, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.j
  %i.au = shl nuw i64 %i.ap, 3                    ; 2 uses
  %i.av = call noalias ptr @malloc(i64 noundef %i.au) #16 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.invoke945, label %bb.k

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
  br i1 %i.bd, label %_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i363.thread, label %bb.l

_ZN5Eigen8internal28conditional_aligned_new_autoIdLb1EEEPT_m.exit.i363.thread: ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  store ptr null, ptr %10, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ba, ptr %i.be, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.bb, ptr %i.bf, align 8, !tbaa !20
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit191

end_hunk_0
begin_hunk_1_@main:bb.a
  unreachable

bb.ad:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %.body213

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit210
  %calloc = call dereferenceable_or_null(72) ptr @calloc(i64 1, i64 72) ; 10 uses
  %i.ee = icmp eq ptr %calloc, null
  br i1 %i.ee, label %bb.ae, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226

bb.ae:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410
  %i.ef = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ef, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ef, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc412 unwind label %bb.af

.noexc412:                                        ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %bb.ae
  %i.eg = landingpad { ptr, i32 }
          cleanup
  br label %.body218

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i410
  %i.eh = getelementptr i8, ptr %i.ea, i64 144
  store <2 x double> splat (double 1.000000e+00), ptr %i.ea, align 8, !tbaa !29
  %i.ei = getelementptr i8, ptr %i.ea, i64 80
  store <2 x double> splat (double 1.000000e+00), ptr %i.eh, align 8, !tbaa !29
  %i.ej = getelementptr i8, ptr %i.ea, i64 224
  store <2 x double> splat (double 6.000000e+00), ptr %calloc, align 8, !tbaa !29
  %i.ek = getelementptr i8, ptr %i.ea, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ei, align 8, !tbaa !29
  %i.el = getelementptr i8, ptr %i.ea, i64 160
  store <2 x double> splat (double 1.000000e+00), ptr %i.ej, align 8, !tbaa !29
  %i.em = getelementptr i8, ptr %calloc, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.ek, align 8, !tbaa !29
  %i.en = getelementptr i8, ptr %i.ea, i64 96
  store <2 x double> splat (double 1.000000e+00), ptr %i.el, align 8, !tbaa !29
  %i.eo = getelementptr i8, ptr %i.ea, i64 240
  store <2 x double> splat (double 6.000000e+00), ptr %i.em, align 8, !tbaa !29
  %i.ep = getelementptr i8, ptr %i.ea, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.en, align 8, !tbaa !29
  %i.eq = getelementptr i8, ptr %i.ea, i64 176
  store <2 x double> splat (double 1.000000e+00), ptr %i.eo, align 8, !tbaa !29
  %i.er = getelementptr i8, ptr %calloc, i64 32
  store <2 x double> splat (double 1.000000e+00), ptr %i.ep, align 8, !tbaa !29
  %i.es = getelementptr i8, ptr %i.ea, i64 112
  store <2 x double> splat (double 1.000000e+00), ptr %i.eq, align 8, !tbaa !29
  %i.et = getelementptr i8, ptr %i.ea, i64 256
  store <2 x double> splat (double 6.000000e+00), ptr %i.er, align 8, !tbaa !29
  %i.eu = getelementptr i8, ptr %i.ea, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.es, align 8, !tbaa !29
  %i.ev = getelementptr i8, ptr %i.ea, i64 192
  store <2 x double> splat (double 1.000000e+00), ptr %i.et, align 8, !tbaa !29
  %i.ew = getelementptr i8, ptr %calloc, i64 48
  store <2 x double> splat (double 1.000000e+00), ptr %i.eu, align 8, !tbaa !29
  %i.ex = getelementptr i8, ptr %i.ea, i64 128
  store <2 x double> splat (double 1.000000e+00), ptr %i.ev, align 8, !tbaa !29
  %i.ey = getelementptr i8, ptr %i.ea, i64 272
  store <2 x double> splat (double 6.000000e+00), ptr %i.ew, align 8, !tbaa !29
  %i.ez = getelementptr i8, ptr %i.ea, i64 64
  store <2 x double> splat (double 1.000000e+00), ptr %i.ez, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.ex, align 8, !tbaa !29
  %i.fa = getelementptr i8, ptr %i.ea, i64 208
  store <2 x double> splat (double 1.000000e+00), ptr %i.fa, align 8, !tbaa !29
  store <2 x double> splat (double 1.000000e+00), ptr %i.ey, align 8, !tbaa !29
  %i.fb = getelementptr i8, ptr %calloc, i64 64
  store double 6.000000e+00, ptr %i.fb, align 8, !tbaa !29
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.fd = call noalias dereferenceable_or_null(960) ptr @malloc(i64 noundef 960) #16 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %bb.ag, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421

bb.ag:                                            ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  %i.ff = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ff, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ff, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc419 unwind label %bb.ah

.noexc419:                                        ; preds = %bb.ag
  unreachable

bb.ah:                                            ; preds = %bb.ag
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit226
  store ptr %i.fd, ptr %16, align 8, !tbaa !18
  %i.fh = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 10, ptr %i.fh, align 8, !tbaa !19
  %i.fi = getelementptr inbounds nuw i8, ptr %16, i64 16
  store i64 12, ptr %i.fi, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(960) %i.fd, ptr noundef nonnull align 8 dereferenceable(960) %i.da, i64 960, i1 false)
  %i.fj = call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #16 ; 3 uses
  %i.fk = icmp eq ptr %i.fj, null
  br i1 %i.fk, label %bb.ai, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428

bb.ai:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421
  %i.fl = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fl, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc426 unwind label %bb.ao

.noexc426:                                        ; preds = %bb.ai
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i421
  store ptr %i.fj, ptr %17, align 8, !tbaa !18
  %i.fm = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 1, ptr %i.fm, align 8, !tbaa !19
  %i.fn = getelementptr inbounds nuw i8, ptr %17, i64 16
  store i64 10, ptr %i.fn, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.fj, ptr noundef nonnull align 8 dereferenceable(80) %calloc938, i64 80, i1 false)
  %i.fo = call noalias dereferenceable_or_null(288) ptr @malloc(i64 noundef 288) #16 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %bb.aj, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435

bb.aj:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428
  %i.fq = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fq, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc433 unwind label %bb.ap

.noexc433:                                        ; preds = %bb.aj
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i428
  store ptr %i.fo, ptr %18, align 8, !tbaa !18
  %i.fr = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 9, ptr %i.fr, align 8, !tbaa !19
  %i.fs = getelementptr inbounds nuw i8, ptr %18, i64 16
  store i64 4, ptr %i.fs, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.fo, ptr noundef nonnull align 8 dereferenceable(288) %i.ea, i64 288, i1 false)
  %i.ft = call noalias dereferenceable_or_null(72) ptr @malloc(i64 noundef 72) #16 ; 3 uses
  %i.fu = icmp eq ptr %i.ft, null
  br i1 %i.fu, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435
  %i.fv = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fv, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc440 unwind label %bb.aq

.noexc440:                                        ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i435
  store ptr %i.ft, ptr %19, align 8, !tbaa !18
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 1, ptr %i.fw, align 8, !tbaa !19
  %i.fx = getelementptr inbounds nuw i8, ptr %19, i64 16
  store i64 9, ptr %i.fx, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ft, ptr noundef nonnull align 8 dereferenceable(72) %calloc, i64 72, i1 false)
  %i.fy = invoke i32 @tiny_set_tv_linear_constraints(ptr noundef %i.fc, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %16, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %17, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %18, ptr nofreeobj noundef nonnull align 8 dereferenceable(24) %19)
          to label %bb.am unwind label %bb.ar     ; 0 uses

bb.am:                                            ; preds = %bb.al
  %i.fz = load ptr, ptr %19, align 8, !tbaa !18
  call void @free(ptr noundef %i.fz) #15
  %i.ga = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.ga) #15
  %i.gb = load ptr, ptr %17, align 8, !tbaa !18
  call void @free(ptr noundef %i.gb) #15
  %i.gc = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.gc) #15
  %i.gd = load ptr, ptr %i.a, align 8, !tbaa !70  ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !72 ; 6 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i32 100, ptr %i.gg, align 8, !tbaa !74
  store <2 x double> splat (double 1.000000e-03), ptr %i.gf, align 8, !tbaa !29
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  store i32 0, ptr %i.gh, align 8, !tbaa !75
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  store i32 0, ptr %i.gi, align 4, !tbaa !76
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 48
  store i32 1, ptr %i.gj, align 8, !tbaa !77
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 52
  store i32 1, ptr %i.gk, align 4, !tbaa !78
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !79 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  %i.gn = getelementptr inbounds nuw i8, ptr %20, i64 8
  store <2 x double> splat (double -2.000000e+00), ptr %20, align 16, !tbaa !29
  %i.go = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 8 uses
  store double 1.000000e+00, ptr %i.go, align 16, !tbaa !29
  %i.gp = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.gq = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %20, i64 64 ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %20, i64 80 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gp, i8 0, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  store <2 x double> splat (double 2.000000e+00), ptr %21, align 16, !tbaa !29
  %i.gu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store double 4.000000e+00, ptr %i.gu, align 16, !tbaa !29
  %28 = getelementptr inbounds nuw i8, ptr %21, i64 24
  %29 = getelementptr inbounds nuw i8, ptr %21, i64 32
  %30 = getelementptr inbounds nuw i8, ptr %21, i64 48
  %31 = getelementptr inbounds nuw i8, ptr %21, i64 64
  %i.gv = getelementptr inbounds nuw i8, ptr %21, i64 80
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 1224
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 1232
  %i.gy = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.gz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ha = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.hb = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %24, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %25, i64 16
  %i.hf = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 40 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gm, i64 1160
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gm, i64 48
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 1184
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gm, i64 1208
  %i.hm = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %.sroa.5512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 16
  %.sroa.6513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  %.sroa.7514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 32
  %.sroa.8515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 40
  %.sroa.10517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 56
  %.sroa.11518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 64
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 80
  %i.hn = getelementptr inbounds nuw i8, ptr %27, i64 96 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %28, i8 0, i64 72, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %bb.am, %bb.cc
  %i.ht = phi double [ 4.000000e+00, %bb.am ], [ %i.xk, %bb.cc ] ; 2 uses
  %indvar = phi i64 [ 0, %bb.am ], [ %indvar.next, %bb.cc ] ; 4 uses
  %i.hu = shl nuw nsw i64 %indvar, 3
  %scevgep = getelementptr i8, ptr %i.ca, i64 %i.hu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %calloc938, ptr noundef nonnull align 8 dereferenceable(80) %scevgep, i64 80, i1 false), !tbaa !29
  br label %bb.ay

bb.an:                                            ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  call void @free(ptr noundef %calloc) #15
  call void @free(ptr noundef %i.ea) #15
  call void @free(ptr noundef %calloc938) #15
  call void @free(ptr noundef %i.da) #15
  call void @free(ptr noundef %i.ca) #15
  %i.hv = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.hv) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.hw = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.hw) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.hx = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.hx) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.hy = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.hy) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 0

bb.ao:                                            ; preds = %bb.ai
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.ap:                                            ; preds = %bb.aj
  %i.ia = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.aq:                                            ; preds = %bb.ak
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.ar:                                            ; preds = %bb.al
  %i.ic = landingpad { ptr, i32 }
          cleanup
  %i.id = load ptr, ptr %19, align 8, !tbaa !18
  call void @free(ptr noundef %i.id) #15
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.pn116 = phi { ptr, i32 } [ %i.ic, %bb.ar ], [ %i.ib, %bb.aq ]
  %i.ie = load ptr, ptr %18, align 8, !tbaa !18
  call void @free(ptr noundef %i.ie) #15
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ap
  %.pn116.pn = phi { ptr, i32 } [ %.pn116, %bb.as ], [ %i.ia, %bb.ap ]
  %i.if = load ptr, ptr %17, align 8, !tbaa !18
  call void @free(ptr noundef %i.if) #15
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.ao
  %.pn116.pn.pn = phi { ptr, i32 } [ %.pn116.pn, %bb.at ], [ %i.hz, %bb.ao ]
  %i.ig = load ptr, ptr %16, align 8, !tbaa !18
  call void @free(ptr noundef %i.ig) #15
  br label %bb.cd

bb.av:                                            ; preds = %.loopexit
  %i.ih = load ptr, ptr %i.a, align 8, !tbaa !70
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %i.ii = call noalias dereferenceable_or_null(96) ptr @malloc(i64 noundef 96) #16 ; 8 uses
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %bb.aw, label %bb.ba

bb.aw:                                            ; preds = %bb.av
  %i.ik = call ptr @__cxa_allocate_exception(i64 8) #15 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ik, align 8, !tbaa !15
  invoke void @__cxa_throw(ptr nonnull %i.ik, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #17
          to label %.noexc.i.i336 unwind label %bb.ax

.noexc.i.i336:                                    ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.il = landingpad { ptr, i32 }
          cleanup
  %i.im = load ptr, ptr %22, align 8, !tbaa !25
  call void @free(ptr noundef %i.im) #15
  br label %.body337

bb.ay:                                            ; preds = %.preheader, %.loopexit
  %indvars.iv895 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next896, %.loopexit ] ; 5 uses
  %i.in = shl nuw nsw i64 %indvars.iv895, 3
  %i.io = shl nuw nsw i64 %indvars.iv895, 3
  %i.ip = add nuw nsw i64 %indvars.iv895, %indvar
  %i.iq = trunc nuw nsw i64 %i.ip to i32
  %i.ir = uitofp nneg i32 %i.iq to double
  %i.is = fdiv double %i.ir, 4.900000e+01         ; 10 uses
  %i.it = fsub double 1.000000e+00, %i.is         ; 9 uses
  %i.iu = load ptr, ptr %i.gw, align 8, !tbaa !18, !noalias !80 ; 3 uses
  %i.iv = ptrtoaddr ptr %i.iu to i64              ; 2 uses
  %i.iw = load i64, ptr %i.gx, align 8, !tbaa !19, !noalias !80 ; 11 uses
  %i.ix = mul nsw i64 %i.iw, %indvars.iv895
  %.not.i.i.i.i.i339 = icmp eq ptr %i.iu, null
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.ix ; 10 uses
  %i.iz = select i1 %.not.i.i.i.i.i339, ptr null, ptr %i.iy
  %.sroa.3.16.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.it, i64 0
  %.sroa.1122.48.vec.insert.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.is, i64 0
  %i.ja = ptrtoint ptr %i.iz to i64               ; 2 uses
  %i.jb = and i64 %i.ja, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jb, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %bb.ay
  %i.jc = lshr exact i64 %i.ja, 3
  %i.jd = and i64 %i.jc, 1
  %i.je = call i64 @llvm.smin.i64(i64 %i.jd, i64 %i.iw)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.az, %bb.ay
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.je, %bb.az ], [ %i.iw, %bb.ay ] ; 11 uses
  %i.jf = sub nsw i64 %i.iw, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jg = sdiv i64 %i.jf, 2
  %i.jh = shl nsw i64 %i.jg, 1                    ; 2 uses
  %i.ji = add nsw i64 %i.jh, %.0.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.jj = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.jj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %min.iters.check960 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check960, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader979, label %vector.memcheck957

vector.memcheck957:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.jk = sub i64 %i.iv, %i.b
  %i.jl = mul i64 %i.iw, %i.in
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = add i64 %i.jm, -1
  %diff.check958 = icmp ult i64 %i.jn, 31
  br i1 %diff.check958, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader979, label %vector.ph961

vector.ph961:                                     ; preds = %vector.memcheck957
  %n.vec962 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert963 = insertelement <2 x double> poison, double %i.it, i64 0
  %broadcast.splat964 = shufflevector <2 x double> %broadcast.splatinsert963, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert965 = insertelement <2 x double> poison, double %i.is, i64 0
  %broadcast.splat966 = shufflevector <2 x double> %broadcast.splatinsert965, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body967

vector.body967:                                   ; preds = %vector.body967, %vector.ph961
  %index968 = phi i64 [ 0, %vector.ph961 ], [ %index.next973, %vector.body967 ] ; 4 uses
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %index968 ; 2 uses
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %index968 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load969 = load <2 x double>, ptr %i.jp, align 16, !tbaa !29
  %wide.load970 = load <2 x double>, ptr %i.jq, align 16, !tbaa !29
  %i.jr = fmul <2 x double> %broadcast.splat964, %wide.load969
  %i.js = fmul <2 x double> %broadcast.splat964, %wide.load970
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %index968 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load971 = load <2 x double>, ptr %i.jt, align 16, !tbaa !29
  %wide.load972 = load <2 x double>, ptr %i.ju, align 16, !tbaa !29
  %i.jv = fmul <2 x double> %broadcast.splat966, %wide.load971
  %i.jw = fmul <2 x double> %broadcast.splat966, %wide.load972
  %i.jx = fadd <2 x double> %i.jr, %i.jv
  %i.jy = fadd <2 x double> %i.js, %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jo, i64 16
  store <2 x double> %i.jx, ptr %i.jo, align 8, !tbaa !29
  store <2 x double> %i.jy, ptr %i.jz, align 8, !tbaa !29
  %index.next973 = add nuw i64 %index968, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next973, %n.vec962
  br i1 %i.ka, label %middle.block974, label %vector.body967, !llvm.loop !58

middle.block974:                                  ; preds = %vector.body967
  %cmp.n975 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i, %n.vec962
  br i1 %cmp.n975, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLi12ELi1ELi0ELi12ELi1EEEEESK_EESO_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader979

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader979:        ; preds = %vector.memcheck957, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block974
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck957 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec962, %middle.block974 ] ; 6 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader979
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %20, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.kd = load double, ptr %i.kc, align 16, !tbaa !29
  %i.ke = fmul double %i.it, %i.kd
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %21, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.kg = load double, ptr %i.kf, align 16, !tbaa !29
  %i.kh = fmul double %i.is, %i.kg
  %i.ki = fadd double %i.ke, %i.kh
  store double %i.ki, ptr %i.kb, align 8, !tbaa !29
  %i.kj = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.ph, 1
end_hunk_1
begin_hunk_2_@main:bb.a
  %i.su = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %.0.i.i.i480)
          to label %.noexc484 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc484:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i479
  %i.sv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.su)
          to label %_ZNSolsEPFRSoS_E.exit354 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSolsEd.exit355:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351.preheader.preheader
  %i.sw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.rt, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356: ; preds = %_ZNSolsEd.exit355
  %i.sx = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.sy = getelementptr i8, ptr %i.sx, i64 -24
  %i.sz = load i64, ptr %i.sy, align 8
  %i.ta = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.sz
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store i64 3, ptr %i.tb, align 8, !tbaa !91
  %i.tc = load ptr, ptr %i.hh, align 8, !tbaa !18
  %i.td = getelementptr i8, ptr %i.tc, i64 8
  %i.te = load double, ptr %i.td, align 8, !tbaa !29
  %i.tf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.te)
          to label %_ZNSolsEd.exit355.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit355.1:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356
  %i.tg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tf, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.1: ; preds = %_ZNSolsEd.exit355.1
  %i.th = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.ti = getelementptr i8, ptr %i.th, i64 -24
  %i.tj = load i64, ptr %i.ti, align 8
  %i.tk = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store i64 3, ptr %i.tl, align 8, !tbaa !91
  %i.tm = load ptr, ptr %i.hh, align 8, !tbaa !18
  %i.tn = getelementptr i8, ptr %i.tm, i64 16
  %i.to = load double, ptr %i.tn, align 8, !tbaa !29
  %i.tp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.to)
          to label %_ZNSolsEd.exit355.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit355.2:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.1
  %i.tq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tp, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2: ; preds = %_ZNSolsEd.exit355.2
  %i.tr = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.ts = getelementptr i8, ptr %i.tr, i64 -24
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i64 3, ptr %i.tv, align 8, !tbaa !91
  %i.tw = load ptr, ptr %i.hh, align 8, !tbaa !18
  %i.tx = getelementptr i8, ptr %i.tw, i64 24
  %i.ty = load double, ptr %i.tx, align 8, !tbaa !29
  %i.tz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ty)
          to label %_ZNSolsEd.exit355.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSolsEd.exit355.3:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2
  %i.ua = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.tz, ptr noundef nonnull @.str.6, i64 noundef 1)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.3 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.3: ; preds = %_ZNSolsEd.exit355.3
  %i.ub = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %i.uc = getelementptr i8, ptr %i.ub, i64 -24
  %i.ud = load i64, ptr %i.uc, align 8
  %i.ue = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.ud
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 240
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !99 ; 6 uses
  %.not.i.i.i476 = icmp eq ptr %i.ug, null
  br i1 %.not.i.i.i476, label %.invoke943, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i477

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.noexc484, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i479, %.noexc482, %bb.bx, %.noexc474, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc472, %bb.bv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353.2, %_ZNSolsEPFRSoS_E.exit, %bb.bl, %_ZNSolsEd.exit347, %bb.bk, %bb.bj, %bb.bh, %.lr.ph85.i.i.i.i.i, %bb.bg, %_ZNSolsEd.exit355.3, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.2, %_ZNSolsEd.exit355.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356.1, %_ZNSolsEd.exit355.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit356, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit351.preheader.preheader, %_ZNSolsEd.exit355, %_ZNSolsEd.exit352.2, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353.1, %_ZNSolsEd.exit352.1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit353, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit350.preheader.preheader, %_ZNSolsEd.exit352, %.invoke943, %bb.bb
  %lpad.loopexit.split-lp980 = landingpad { ptr, i32 }
          cleanup
  br label %.body337

_ZNSolsEPFRSoS_E.exit354:                         ; preds = %.noexc484
  %i.uh = load ptr, ptr %i.a, align 8, !tbaa !70
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !106
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !110
  %.not = icmp eq i32 %i.uk, 0
  br i1 %.not, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %_ZNSolsEPFRSoS_E.exit354
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #15
  %i.ul = load ptr, ptr %i.hh, align 8, !tbaa !18, !noalias !111
  %i.um = load i64, ptr %i.hj, align 8, !tbaa !19, !noalias !111 ; 2 uses
  store ptr %i.hi, ptr %i.hm, align 8
  store ptr %20, ptr %.sroa.5512.0..sroa_idx, align 8
  store ptr %i.hk, ptr %.sroa.6513.0..sroa_idx, align 8
  store ptr %i.ul, ptr %.sroa.7514.0..sroa_idx, align 8
  store i64 %i.um, ptr %.sroa.8515.0..sroa_idx, align 8
  store ptr %i.hh, ptr %.sroa.10517.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11518.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.um, ptr %.sroa.13.0..sroa_idx, align 8
  store ptr %i.hl, ptr %i.hn, align 8, !tbaa !112, !alias.scope !113
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS3_IdLi12ELi1ELi0ELi12ELi1EEELi0EEELi7ENS_10DenseShapeES7_ddEC2ERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(81) %i.hm)
          to label %.noexc unwind label %bb.ca

.noexc:                                           ; preds = %bb.by
  invoke void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi0EEELi7ENS_10DenseShapeES8_ddEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6513.0..sroa_idx)
          to label %bb.bz unwind label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.noexc
  %i.un = landingpad { ptr, i32 }
          cleanup
  %i.uo = load ptr, ptr %i.hs, align 8, !tbaa !25
  call void @free(ptr noundef %i.uo) #15
  br label %.body358

bb.bz:                                            ; preds = %.noexc
  %i.up = load ptr, ptr %i.hn, align 8, !tbaa !117, !nonnull !43, !align !44
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !25 ; 7 uses
  store ptr %i.uq, ptr %i.hq, align 8, !tbaa !46
  %i.ur = load ptr, ptr %i.ho, align 8, !tbaa !119 ; 6 uses
  %i.us = load <2 x double>, ptr %i.ur, align 16, !tbaa !27
  %i.ut = load ptr, ptr %i.hp, align 8, !tbaa !119 ; 6 uses
  %i.uu = load <2 x double>, ptr %i.ut, align 16, !tbaa !27
  %i.uv = fadd <2 x double> %i.us, %i.uu
  %i.uw = load <2 x double>, ptr %i.uq, align 16, !tbaa !27
  %i.ux = fadd <2 x double> %i.uv, %i.uw
  store <2 x double> %i.ux, ptr %20, align 16, !tbaa !27
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.uz = load <2 x double>, ptr %i.uy, align 16, !tbaa !27
  %i.va = getelementptr inbounds nuw i8, ptr %i.ut, i64 16
  %i.vb = load <2 x double>, ptr %i.va, align 16, !tbaa !27
  %i.vc = fadd <2 x double> %i.uz, %i.vb
  %i.vd = getelementptr inbounds nuw i8, ptr %i.uq, i64 16
  %i.ve = load <2 x double>, ptr %i.vd, align 16, !tbaa !27
  %i.vf = fadd <2 x double> %i.vc, %i.ve
  store <2 x double> %i.vf, ptr %i.go, align 16, !tbaa !27
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.vh = load <2 x double>, ptr %i.vg, align 16, !tbaa !27
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ut, i64 32
  %i.vj = load <2 x double>, ptr %i.vi, align 16, !tbaa !27
  %i.vk = fadd <2 x double> %i.vh, %i.vj
  %i.vl = getelementptr inbounds nuw i8, ptr %i.uq, i64 32
  %i.vm = load <2 x double>, ptr %i.vl, align 16, !tbaa !27
  %i.vn = fadd <2 x double> %i.vk, %i.vm
  store <2 x double> %i.vn, ptr %i.gq, align 16, !tbaa !27
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  %i.vp = load <2 x double>, ptr %i.vo, align 16, !tbaa !27
  %i.vq = getelementptr inbounds nuw i8, ptr %i.ut, i64 48
  %i.vr = load <2 x double>, ptr %i.vq, align 16, !tbaa !27
  %i.vs = fadd <2 x double> %i.vp, %i.vr
  %i.vt = getelementptr inbounds nuw i8, ptr %i.uq, i64 48
  %i.vu = load <2 x double>, ptr %i.vt, align 16, !tbaa !27
  %i.vv = fadd <2 x double> %i.vs, %i.vu
  store <2 x double> %i.vv, ptr %i.gr, align 16, !tbaa !27
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ur, i64 64
  %i.vx = load <2 x double>, ptr %i.vw, align 16, !tbaa !27
  %i.vy = getelementptr inbounds nuw i8, ptr %i.ut, i64 64
  %i.vz = load <2 x double>, ptr %i.vy, align 16, !tbaa !27
  %i.wa = fadd <2 x double> %i.vx, %i.vz
  %i.wb = getelementptr inbounds nuw i8, ptr %i.uq, i64 64
  %i.wc = load <2 x double>, ptr %i.wb, align 16, !tbaa !27
  %i.wd = fadd <2 x double> %i.wa, %i.wc
  store <2 x double> %i.wd, ptr %i.gs, align 16, !tbaa !27
  %i.we = getelementptr inbounds nuw i8, ptr %i.ur, i64 80
  %i.wf = load <2 x double>, ptr %i.we, align 16, !tbaa !27
  %i.wg = getelementptr inbounds nuw i8, ptr %i.ut, i64 80
  %i.wh = load <2 x double>, ptr %i.wg, align 16, !tbaa !27
  %i.wi = fadd <2 x double> %i.wf, %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.uq, i64 80
  %i.wk = load <2 x double>, ptr %i.wj, align 16, !tbaa !27
  %i.wl = fadd <2 x double> %i.wi, %i.wk
  store <2 x double> %i.wl, ptr %i.gt, align 16, !tbaa !27
  %i.wm = load ptr, ptr %i.hr, align 8, !tbaa !25
  call void @free(ptr noundef %i.wm) #15
  %i.wn = load ptr, ptr %i.hs, align 8, !tbaa !25
  call void @free(ptr noundef %i.wn) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %bb.cc

bb.ca:                                            ; preds = %bb.by
  %i.wo = landingpad { ptr, i32 }
          cleanup
  br label %.body358

.body358:                                         ; preds = %bb.ca, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pn152 = phi { ptr, i32 } [ %i.un, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.wo, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #15
  br label %.body337

bb.cb:                                            ; preds = %_ZNSolsEPFRSoS_E.exit354
  %i.wp = load <2 x double>, ptr %20, align 16, !tbaa !27
  %i.wq = fmul <2 x double> %i.wp, splat (double f0x3FEF5C28F5C28F5C)
  %i.wr = fadd <2 x double> %i.wq, splat (double 4.000000e-02)
  store <2 x double> %i.wr, ptr %20, align 16, !tbaa !27
  %i.ws = load <2 x double>, ptr %i.go, align 16, !tbaa !27
  %i.wt = fmul <2 x double> %i.ws, splat (double f0x3FEF5C28F5C28F5C)
  %i.wu = load <2 x double>, ptr %i.gu, align 16  ; 2 uses
  %i.wv = fmul <2 x double> %i.wu, splat (double 2.000000e-02)
  %i.ww = fadd <2 x double> %i.wt, %i.wv
  store <2 x double> %i.ww, ptr %i.go, align 16, !tbaa !27
  %i.wx = load <2 x double>, ptr %i.gq, align 16, !tbaa !27
  %32 = fmul <2 x double> %i.wx, splat (double f0x3FEF5C28F5C28F5C)
  %33 = load <2 x double>, ptr %29, align 16, !tbaa !27
  %i.wy = fmul <2 x double> %33, splat (double 2.000000e-02)
  %i.wz = fadd <2 x double> %32, %i.wy
  store <2 x double> %i.wz, ptr %i.gq, align 16, !tbaa !27
  %i.xa = load <2 x double>, ptr %i.gr, align 16, !tbaa !27
  %34 = fmul <2 x double> %i.xa, splat (double f0x3FEF5C28F5C28F5C)
  %35 = load <2 x double>, ptr %30, align 16, !tbaa !27
  %i.xb = fmul <2 x double> %35, splat (double 2.000000e-02)
  %i.xc = fadd <2 x double> %34, %i.xb
  store <2 x double> %i.xc, ptr %i.gr, align 16, !tbaa !27
  %i.xd = load <2 x double>, ptr %i.gs, align 16, !tbaa !27
  %36 = fmul <2 x double> %i.xd, splat (double f0x3FEF5C28F5C28F5C)
  %37 = load <2 x double>, ptr %31, align 16, !tbaa !27
  %i.xe = fmul <2 x double> %37, splat (double 2.000000e-02)
  %i.xf = fadd <2 x double> %36, %i.xe
  store <2 x double> %i.xf, ptr %i.gs, align 16, !tbaa !27
  %i.xg = load <2 x double>, ptr %i.gt, align 16, !tbaa !27
  %38 = fmul <2 x double> %i.xg, splat (double f0x3FEF5C28F5C28F5C)
  %39 = load <2 x double>, ptr %i.gv, align 16, !tbaa !27
  %i.xh = fmul <2 x double> %39, splat (double 2.000000e-02)
  %i.xi = fadd <2 x double> %38, %i.xh
  store <2 x double> %i.xi, ptr %i.gt, align 16, !tbaa !27
  %i.xj = extractelement <2 x double> %i.wu, i64 0
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.bz
  %i.xk = phi double [ %i.xj, %bb.cb ], [ %i.ht, %bb.bz ]
  %indvar.next = add nuw nsw i64 %indvar, 1       ; 2 uses
  %exitcond908.not = icmp eq i64 %indvar.next, 40
  br i1 %exitcond908.not, label %bb.an, label %.preheader, !llvm.loop !69

.body337:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ax, %bb.bm, %bb.bt, %.body358
  %.pn160.pn.pn = phi { ptr, i32 } [ %.pn152, %.body358 ], [ %i.il, %bb.ax ], [ %.pn144.pn.pn, %bb.bt ], [ %i.qe, %bb.bm ], [ %lpad.loopexit.split-lp980, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.cd

bb.cd:                                            ; preds = %.body337, %bb.au, %bb.ah
  %.pn165 = phi { ptr, i32 } [ %i.fg, %bb.ah ], [ %.pn160.pn.pn, %.body337 ], [ %.pn116.pn.pn, %bb.au ]
  call void @free(ptr noundef %calloc) #15
  br label %.body218

.body218:                                         ; preds = %bb.af, %bb.cd
  %.pn165.pn = phi { ptr, i32 } [ %.pn165, %bb.cd ], [ %i.eg, %bb.af ]
  call void @free(ptr noundef %i.ea) #15
  br label %.body213

.body213:                                         ; preds = %.body218, %bb.ad
  %.pn169 = phi { ptr, i32 } [ %i.ed, %bb.ad ], [ %.pn165.pn, %.body218 ]
  call void @free(ptr noundef %calloc938) #15
  br label %.body205

.body205:                                         ; preds = %bb.ab, %.body213
  %.pn169.pn = phi { ptr, i32 } [ %.pn169, %.body213 ], [ %i.dq, %bb.ab ]
  call void @free(ptr noundef %i.da) #15
  br label %.body200

.body200:                                         ; preds = %.body205, %bb.r
  %.pn173 = phi { ptr, i32 } [ %i.dd, %bb.r ], [ %.pn169.pn, %.body205 ]
  call void @free(ptr noundef %i.ca) #15
  br label %.body189

.body189:                                         ; preds = %bb.s, %bb.z, %.body200
  %.pn173.pn.pn.pn = phi { ptr, i32 } [ %.pn173, %.body200 ], [ %i.de, %bb.s ], [ %.pn.pn.pn.pn, %bb.z ]
  %i.xl = load ptr, ptr %8, align 8, !tbaa !25
  call void @free(ptr noundef %i.xl) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.body186

.body186:                                         ; preds = %bb.g, %.body189
  %.pn173.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn, %.body189 ], [ %i.t, %bb.g ]
  %i.xm = load ptr, ptr %7, align 8, !tbaa !25
  call void @free(ptr noundef %i.xm) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.xn = load ptr, ptr %5, align 8, !tbaa !18
  call void @free(ptr noundef %i.xn) #15
  br label %bb.ce

bb.ce:                                            ; preds = %.body186, %.body
  %.pn173.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn173.pn.pn.pn.pn, %.body186 ], [ %i.o, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.xo = load ptr, ptr %3, align 8, !tbaa !18
  call void @free(ptr noundef %i.xo) #15
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

declare i32 @tiny_set_tv_linear_constraints(ptr noundef, ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24), ptr nofreeobj noundef align 8 dereferenceable(24)) local_unnamed_addr #2

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
end_hunk_2
