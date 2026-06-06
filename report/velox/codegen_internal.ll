inline.NumInlined: 658
inline.NumDeleted: 265
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::DataType>, std::allocator<std::shared_ptr<arrow::DataType>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::DataType>, std::allocator<std::shared_ptr<arrow::DataType>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::DataType>, std::allocator<std::shared_ptr<arrow::DataType>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::DataType>, std::allocator<std::shared_ptr<arrow::DataType>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::shared_ptr.0" = type { %"class.std::__shared_ptr.1" }
%"class.std::__shared_ptr.1" = type { ptr, %"class.std::__shared_count" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.3" = type { i8 }
%"class.std::shared_ptr.6" = type { %"class.std::__shared_ptr.7" }
%"class.std::__shared_ptr.7" = type { ptr, %"class.std::__shared_count" }
%"class.std::vector.10" = type { %"struct.std::_Vector_base.11" }
%"struct.std::_Vector_base.11" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Field>, std::allocator<std::shared_ptr<arrow::Field>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Field>, std::allocator<std::shared_ptr<arrow::Field>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::shared_ptr<arrow::Field>, std::allocator<std::shared_ptr<arrow::Field>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::shared_ptr<arrow::Field>, std::allocator<std::shared_ptr<arrow::Field>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.15" = type { %"struct.std::_Vector_base.16" }
%"struct.std::_Vector_base.16" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl" = type { %"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<signed char, std::allocator<signed char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.arrow::Result" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage" }
%"class.arrow::Status" = type { ptr }
%"class.arrow::internal::AlignedStorage" = type { %"union.std::aligned_storage<24, 8>::type" }
%"union.std::aligned_storage<24, 8>::type" = type { [24 x i8] }
%"struct.arrow::TypeHolder" = type { ptr, %"class.std::shared_ptr" }
%"class.arrow::Result.31" = type <{ %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.34", [4 x i8] }>
%"class.arrow::internal::AlignedStorage.34" = type { %"union.std::aligned_storage<4, 4>::type" }
%"union.std::aligned_storage<4, 4>::type" = type { [4 x i8] }
%"class.arrow::Result.36" = type { %"class.arrow::Status", %"class.arrow::internal::AlignedStorage.39" }
%"class.arrow::internal::AlignedStorage.39" = type { %"union.std::aligned_storage<16, 8>::type" }
%"union.std::aligned_storage<16, 8>::type" = type { [16 x i8] }
%"class.arrow::util::detail::StringStreamWrapper" = type { %"class.std::unique_ptr", ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.45" }
%"struct.std::_Head_base.45" = type { ptr }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EEC2ESt16initializer_listIS3_ERKS4_ = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev = comdat any

$_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt6vectorISt10shared_ptrIN5arrow8DataTypeEESaIS3_EED2Ev = comdat any

$_ZN5arrow6StatusC2ERKS0_ = comdat any

$_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6ResultIiEC2ERKNS_6StatusE = comdat any

$_ZN5arrow6Status8FromArgsIJRA22_KcRNS_4Type4typeEEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_ = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZN5arrow6Status8FromArgsIJRA44_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow4util13StringBuilderIJRA19_KcRiRA40_S2_RKiRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN5arrow15BasicDecimal25613kMaxPrecisionE = comdat any

@_ZZN5arrow7compute8internal22ExampleParametricTypesEvE24example_parametric_types = internal global %"class.std::vector" zeroinitializer, align 8
@_ZGVZN5arrow7compute8internal22ExampleParametricTypesEvE24example_parametric_types = internal global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@__dso_handle = external hidden global i8
@.str.2 = private unnamed_addr constant [44 x i8] c"Decimals with negative scales not supported\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"Result precision (\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c") exceeds max precision of Decimal256 (\00", align 1
@_ZN5arrow15BasicDecimal25613kMaxPrecisionE = linkonce_odr constant i32 76, comdat, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c")\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Not an integer type: \00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Constructed with a non-error status: \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.12 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@switch.table._ZN5arrow7compute8internal13CommonNumericEPKNS_10TypeHolderEm = private unnamed_addr constant [44 x i16] [i16 1, i16 8, i16 8, i16 16, i16 16, i16 32, i16 32, i16 64, i16 64, i16 16, i16 32, i16 64, i16 0, i16 0, i16 0, i16 32, i16 64, i16 64, i16 32, i16 64, i16 32, i16 64, i16 128, i16 256, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 64, i16 0, i16 0, i16 0, i16 128, i16 0, i16 0, i16 0, i16 0, i16 0, i16 32, i16 64], align 4
@switch.table._ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm = private unnamed_addr constant [8 x i8] c"\03\03\05\05\0A\0A\14\13", align 4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZN5arrow7compute8internal22ExampleParametricTypesEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca [14 x %"class.std::shared_ptr"], align 8 ; 49 uses
  %1 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %3 = alloca %"class.std::shared_ptr.0", align 8 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.3", align 1  ; 4 uses
  %6 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %7 = alloca %"class.std::shared_ptr.6", align 8 ; 4 uses
  %8 = alloca %"class.std::vector.10", align 8    ; 4 uses
  %9 = alloca %"class.std::vector.15", align 8    ; 6 uses
  %10 = alloca %"class.std::vector.10", align 8   ; 4 uses
  %11 = alloca %"class.std::vector.15", align 8   ; 6 uses
  %12 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %13 = alloca %"class.std::shared_ptr", align 16 ; 4 uses
  %14 = alloca %"class.std::allocator", align 1   ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow7compute8internal22ExampleParametricTypesEvE24example_parametric_types acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.as, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow7compute8internal22ExampleParametricTypesEvE24example_parametric_types) #22
  %.not37 = icmp eq i32 %i.c, 0
  br i1 %.not37, label %bb.as, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #22
  invoke void @_ZN5arrow10decimal128Eii(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %0, i32 noundef 12, i32 noundef 2)
          to label %bb.d unwind label %bb.at

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  invoke void @_ZN5arrow8durationENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.d, i32 noundef 0)
          to label %bb.e unwind label %bb.at

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  invoke void @_ZN5arrow9timestampENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.e, i32 noundef 0)
          to label %bb.f unwind label %bb.at

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  invoke void @_ZN5arrow6time32ENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.f, i32 noundef 0)
          to label %bb.g unwind label %bb.at

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  invoke void @_ZN5arrow6time64ENS_8TimeUnit4typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.g, i32 noundef 2)
          to label %bb.h unwind label %bb.at

bb.h:                                             ; preds = %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  invoke void @_ZN5arrow17fixed_size_binaryEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.h, i32 noundef 0)
          to label %bb.i unwind label %bb.at

bb.i:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.j unwind label %bb.at      ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.j, align 8, !tbaa !12
  store <2 x ptr> %i.m, ptr %1, align 16, !tbaa !12
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.j, %bb.l, %bb.m
  invoke void @_ZN5arrow4listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.i, ptr noundef nonnull %1)
          to label %bb.n unwind label %bb.au

bb.n:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.o unwind label %bb.au      ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  %i.w = load <2 x ptr>, ptr %i.t, align 8, !tbaa !12
  store <2 x ptr> %i.w, ptr %2, align 16, !tbaa !12
  %.not.i.i.i49 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i49, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit51, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i50 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i50, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.z = load i32, ptr %i.x, align 4, !tbaa !3
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.x, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit51

bb.r:                                             ; preds = %bb.p
  %i.ab = atomicrmw volatile add ptr %i.x, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit51

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit51: ; preds = %bb.o, %bb.q, %bb.r
  invoke void @_ZN5arrow10large_listESt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.s, ptr noundef nonnull %2)
          to label %bb.s unwind label %bb.av

bb.s:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.t unwind label %bb.aw

bb.t:                                             ; preds = %bb.s
  %i.ad = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.u unwind label %bb.ax      ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 2 uses
  %i.ag = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !12
  store <2 x ptr> %i.ag, ptr %6, align 16, !tbaa !12
  %.not.i.i.i52 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i52, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit54, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i53 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ah, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit54

bb.x:                                             ; preds = %bb.v
  %i.al = atomicrmw volatile add ptr %i.ah, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit54

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit54: ; preds = %bb.u, %bb.w, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.0") align 8 %3, ptr noundef nonnull %4, ptr noundef nonnull %6, i1 noundef zeroext true, ptr noundef nonnull %7)
          to label %bb.y unwind label %bb.ay

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit54
  invoke void @_ZN5arrow15fixed_size_listESt10shared_ptrINS_5FieldEEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.ac, ptr noundef nonnull %3, i32 noundef 0)
          to label %bb.z unwind label %bb.az

bb.z:                                             ; preds = %bb.y
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  invoke void @_ZN5arrow7struct_ESt16initializer_listISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.am, ptr null, i64 0)
          to label %bb.aa unwind label %bb.az

bb.aa:                                            ; preds = %bb.z
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow12sparse_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.an, ptr noundef nonnull %8, ptr noundef nonnull %9)
          to label %bb.ab unwind label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  invoke void @_ZN5arrow11dense_unionESt6vectorISt10shared_ptrINS_5FieldEESaIS3_EES0_IaSaIaEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.ao, ptr noundef nonnull %10, ptr noundef nonnull %11)
          to label %bb.ac unwind label %bb.bb

bb.ac:                                            ; preds = %bb.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5int32Ev()
          to label %bb.ad unwind label %bb.bb

bb.ad:                                            ; preds = %bb.ac
  %i.ar = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow4nullEv()
          to label %bb.ae unwind label %bb.bb

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5arrow10dictionaryERKSt10shared_ptrINS_8DataTypeEES4_b(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i1 noundef zeroext false)
          to label %bb.af unwind label %bb.bb

bb.af:                                            ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m:bb.a

bb.j:                                             ; preds = %bb.i
  %i.y = add nsw i32 %i.p, -1
  store i32 %i.y, ptr %i.m, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.z = atomicrmw volatile add ptr %i.m, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i = phi i32 [ %i.p, %bb.j ], [ %i.z, %bb.k ]
  %i.aa = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.aa, label %bb.l, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i, !prof !42

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.l) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i
  store ptr %i.e, ptr %i.d, align 8, !tbaa !8
  br label %_ZN5arrow10TypeHolderaSERKS0_.exit

_ZN5arrow10TypeHolderaSERKS0_.exit:               ; preds = %bb.b, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.08, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.ab, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !100
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal13CommonNumericERKSt6vectorINS_10TypeHolderESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.arrow::TypeHolder") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !55     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 24
  tail call void @_ZN5arrow7compute8internal13CommonNumericEPKNS_10TypeHolderEm(ptr dead_on_unwind writable sret(%"struct.arrow::TypeHolder") align 8 %0, ptr noundef %i.a, i64 noundef %i.g)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute8internal13CommonNumericEPKNS_10TypeHolderEm(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.arrow::TypeHolder") align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %4 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %5 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %7 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %8 = alloca %"class.std::shared_ptr", align 8   ; 5 uses
  %.not138 = icmp eq i64 %2, 0
  br i1 %.not138, label %.thread176, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.0130 = phi i64 [ %i.f, %.thread ], [ 0, %bb.a ] ; 2 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.0130
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !74   ; 3 uses
  %.off.i = add i32 %i.d, -10
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.off.i53 = add i32 %i.d, -2
  %switch.i54 = icmp ult i32 %.off.i53, 8
  br i1 %switch.i54, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.critedge.thread

bb.d:                                             ; preds = %.lr.ph
  %i.e = icmp eq i32 %i.d, 10
  br i1 %i.e, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.critedge.thread

.thread:                                          ; preds = %bb.b, %bb.d
  %i.f = add nuw i64 %.0130, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %2
  br i1 %exitcond.not, label %.critedge49, label %.lr.ph, !llvm.loop !101

.critedge:                                        ; preds = %.critedge49
  %i.g = add nuw i64 %.039131, 1                  ; 2 uses
  %exitcond142.not = icmp eq i64 %i.g, %2
  br i1 %exitcond142.not, label %.critedge51, label %.critedge49, !llvm.loop !102

.critedge49:                                      ; preds = %.thread, %.critedge
  %.039131 = phi i64 [ %i.g, %.critedge ], [ 0, %.thread ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.039131
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %.not = icmp eq i32 %i.k, 12
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.critedge49
  %i.l = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !8    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %.thread124, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i32, ptr %i.p, align 4, !tbaa !3
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.p, align 4, !tbaa !3
  br label %.thread124

bb.i:                                             ; preds = %bb.g
  %i.t = atomicrmw volatile add ptr %i.p, i32 1 acq_rel, align 4 ; 0 uses
  br label %.thread124

.thread124:                                       ; preds = %bb.f, %bb.h, %bb.i
  store ptr %i.m, ptr %0, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.u, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %i.v, align 8, !tbaa !8
  br label %.critedge.thread

bb.j:                                             ; preds = %.critedge51
  %i.w = add nuw i64 %.041132, 1                  ; 2 uses
  %exitcond143.not = icmp eq i64 %i.w, %2
  br i1 %exitcond143.not, label %.lr.ph136, label %.critedge51, !llvm.loop !103

.critedge51:                                      ; preds = %.critedge, %bb.j
  %.041132 = phi i64 [ %i.w, %bb.j ], [ 0, %.critedge ] ; 2 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.041132
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !74
  %.not46 = icmp eq i32 %i.aa, 11
  br i1 %.not46, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.critedge51
  %i.ab = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float32Ev() ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !60 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !8  ; 3 uses
  %.not.i.i.i56 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i56, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i57 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !3
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.af, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n
  store ptr %i.ac, ptr %0, align 8, !tbaa !89
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ak, align 8, !tbaa !60
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.al, align 8, !tbaa !8
  br label %.critedge.thread

._crit_edge:                                      ; preds = %_ZN5arrowL9bit_widthENS_4Type4typeE.exit
  %i.am = icmp eq i32 %spec.select, 0
  br i1 %i.am, label %bb.p, label %bb.ag

.lr.ph136:                                        ; preds = %bb.j, %_ZN5arrowL9bit_widthENS_4Type4typeE.exit
  %.040135 = phi i64 [ %i.au, %_ZN5arrowL9bit_widthENS_4Type4typeE.exit ], [ 0, %bb.j ] ; 2 uses
  %.0119134 = phi i32 [ %spec.select128, %_ZN5arrowL9bit_widthENS_4Type4typeE.exit ], [ 0, %bb.j ] ; 2 uses
  %.0121133 = phi i32 [ %spec.select, %_ZN5arrowL9bit_widthENS_4Type4typeE.exit ], [ 0, %bb.j ] ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %.040135
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !89
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !74 ; 2 uses
  %i.ar = add i32 %i.aq, -3
  %switch.and.i = and i32 %i.ar, -7
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0 ; 3 uses
  %switch.tableidx = add i32 %i.aq, -1            ; 2 uses
  %i.as = icmp ult i32 %switch.tableidx, 44
  br i1 %i.as, label %switch.lookup, label %_ZN5arrowL9bit_widthENS_4Type4typeE.exit

switch.lookup:                                    ; preds = %.lr.ph136
  %i.at = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN5arrow7compute8internal13CommonNumericEPKNS_10TypeHolderEm, i64 %i.at
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %_ZN5arrowL9bit_widthENS_4Type4typeE.exit

_ZN5arrowL9bit_widthENS_4Type4typeE.exit:         ; preds = %.lr.ph136, %switch.lookup
  %.0.i = phi i32 [ %switch.ext, %switch.lookup ], [ 0, %.lr.ph136 ]
  %.sroa.speculated104 = select i1 %switch.selectcmp.i, i32 %.0121133, i32 %.0119134
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 %.sroa.speculated104) ; 2 uses
  %spec.select = select i1 %switch.selectcmp.i, i32 %.sroa.speculated, i32 %.0121133 ; 4 uses
  %spec.select128 = select i1 %switch.selectcmp.i, i32 %.0119134, i32 %.sroa.speculated ; 5 uses
  %i.au = add nuw i64 %.040135, 1                 ; 2 uses
  %exitcond144.not = icmp eq i64 %i.au, %2
  br i1 %exitcond144.not, label %._crit_edge, label %.lr.ph136, !llvm.loop !104

bb.p:                                             ; preds = %._crit_edge
  %i.av = icmp sgt i32 %spec.select128, 63
  br i1 %i.av, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint64Ev() ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !60 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 3 uses
  %.not.i.i.i64 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i64, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 3 uses
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i65 = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i65, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = add nsw i32 %i.bc, 1
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.t:                                             ; preds = %bb.r
  %i.be = atomicrmw volatile add ptr %i.ba, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71: ; preds = %bb.t, %bb.s, %bb.q
  store ptr %i.ax, ptr %0, align 8, !tbaa !89
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.az, ptr %i.bg, align 8, !tbaa !8
  br label %.critedge.thread

bb.u:                                             ; preds = %bb.p
  switch i32 %spec.select128, label %.thread176 [
    i32 32, label %bb.v
    i32 16, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint32Ev() ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 3 uses
  store ptr %i.bi, ptr %3, align 8, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !8  ; 4 uses
  store ptr %i.bl, ptr %i.bj, align 8, !tbaa !8
  %.not.i.i.i72 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i72, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i73 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i73, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = load i32, ptr %i.bm, align 4, !tbaa !3
  %i.bp = add nsw i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bm, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74

bb.y:                                             ; preds = %bb.w
  %i.bq = atomicrmw volatile add ptr %i.bm, i32 1 acq_rel, align 4 ; 0 uses
  %.pre152 = load ptr, ptr %3, align 8, !tbaa !60
  %.pre153 = load ptr, ptr %i.bj, align 8, !tbaa !8
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74: ; preds = %bb.v, %bb.x, %bb.y
  %i.br = phi ptr [ null, %bb.v ], [ %i.bl, %bb.x ], [ %.pre153, %bb.y ]
  %i.bs = phi ptr [ %i.bi, %bb.v ], [ %i.bi, %bb.x ], [ %.pre152, %bb.y ] ; 2 uses
  store ptr %i.bs, ptr %0, align 8, !tbaa !89
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bj, align 8, !tbaa !8
  store ptr %i.br, ptr %i.bu, align 8, !tbaa !8
  store ptr null, ptr %3, align 8, !tbaa !60
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  br label %.critedge.thread

bb.z:                                             ; preds = %bb.u
  %i.bv = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow6uint16Ev() ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !60 ; 3 uses
  store ptr %i.bw, ptr %4, align 8, !tbaa !60
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !8  ; 4 uses
  store ptr %i.bz, ptr %i.bx, align 8, !tbaa !8
  %.not.i.i.i75 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i75, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit77, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 3 uses
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i76 = icmp eq i8 %i.cb, 0
  br i1 %.not.i.i.i.i76, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cc = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit77

bb.ac:                                            ; preds = %bb.aa
  %i.ce = atomicrmw volatile add ptr %i.ca, i32 1 acq_rel, align 4 ; 0 uses
  %.pre150 = load ptr, ptr %4, align 8, !tbaa !60
  %.pre151 = load ptr, ptr %i.bx, align 8, !tbaa !8
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit77

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit77: ; preds = %bb.z, %bb.ab, %bb.ac
  %i.cf = phi ptr [ null, %bb.z ], [ %i.bz, %bb.ab ], [ %.pre151, %bb.ac ]
  %i.cg = phi ptr [ %i.bw, %bb.z ], [ %i.bw, %bb.ab ], [ %.pre150, %bb.ac ] ; 2 uses
  store ptr %i.cg, ptr %0, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.bx, align 8, !tbaa !8
  store ptr %i.cf, ptr %i.ci, align 8, !tbaa !8
  store ptr null, ptr %4, align 8, !tbaa !60
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  br label %.critedge.thread

.thread176:                                       ; preds = %bb.a, %bb.u
  %i.cj = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow5uint8Ev() ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !60 ; 3 uses
  store ptr %i.ck, ptr %5, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8  ; 4 uses
  store ptr %i.cn, ptr %i.cl, align 8, !tbaa !8
  %.not.i.i.i78 = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i78, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit80, label %bb.ad

bb.ad:                                            ; preds = %.thread176
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8 ; 3 uses
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i79 = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i79, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cq = load i32, ptr %i.co, align 4, !tbaa !3
  %i.cr = add nsw i32 %i.cq, 1
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit80

bb.af:                                            ; preds = %bb.ad
  %i.cs = atomicrmw volatile add ptr %i.co, i32 1 acq_rel, align 4 ; 0 uses
  %.pre154 = load ptr, ptr %5, align 8, !tbaa !60
  %.pre155 = load ptr, ptr %i.cl, align 8, !tbaa !8
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit80

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit80: ; preds = %.thread176, %bb.ae, %bb.af
  %i.ct = phi ptr [ null, %.thread176 ], [ %i.cn, %bb.ae ], [ %.pre155, %bb.af ]
  %i.cu = phi ptr [ %i.ck, %.thread176 ], [ %i.ck, %bb.ae ], [ %.pre154, %bb.af ] ; 2 uses
  store ptr %i.cu, ptr %0, align 8, !tbaa !89
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !tbaa !60
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.cl, align 8, !tbaa !8
  store ptr %i.ct, ptr %i.cw, align 8, !tbaa !8
  store ptr null, ptr %5, align 8, !tbaa !60
  call void @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  br label %.critedge.thread

bb.ag:                                            ; preds = %._crit_edge
  %.not47 = icmp sgt i32 %spec.select, %spec.select128
  br i1 %.not47, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cx = zext nneg i32 %spec.select128 to i64    ; 2 uses
  %i.cy = lshr i64 %i.cx, 1
  %i.cz = or i64 %i.cy, %i.cx                     ; 2 uses
  %i.da = lshr i64 %i.cz, 2
  %i.db = or i64 %i.da, %i.cz                     ; 2 uses
  %i.dc = lshr i64 %i.db, 4
  %i.dd = or i64 %i.dc, %i.db                     ; 2 uses
  %i.de = lshr i64 %i.dd, 8
  %i.df = or i64 %i.de, %i.dd
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %i.dh = add nuw nsw i32 %i.dg, 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.1122 = phi i32 [ %spec.select, %bb.ag ], [ %i.dh, %bb.ah ] ; 2 uses
  %i.di = icmp sgt i32 %.1122, 63
  br i1 %i.di, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
end_hunk_1
begin_hunk_2_@_ZN5arrow7compute8internal21CastBinaryDecimalArgsENS1_16DecimalPromotionEPSt6vectorINS_10TypeHolderESaIS4_EE:bb.a
bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !60   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.o, align 4, !tbaa !3
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.o, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.o, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.c, %bb.e, %bb.f
  %i.t = load ptr, ptr %2, align 8, !tbaa !55     ; 3 uses
  store ptr %i.l, ptr %i.t, align 8, !tbaa !89
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.l, ptr %i.u, align 8, !tbaa !53
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !8    ; 8 uses
  store ptr %i.n, ptr %i.v, align 8, !tbaa !8
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.x, align 8, !tbaa !36
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !38
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #22, !inline_history !95
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !39
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.aa, %bb.j ], [ %i.ak, %bb.k ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.al, label %bb.l, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l
  %i.am = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !8  ; 3 uses
  %.not.i.i.i72 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i72, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74, label %bb.m

bb.m:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i73 = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i.i73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = add nsw i32 %i.as, 1
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74

bb.o:                                             ; preds = %bb.m
  %i.au = atomicrmw volatile add ptr %i.aq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74: ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.n, %bb.o
  %i.av = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store ptr %i.an, ptr %i.aw, align 8, !tbaa !89
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  store ptr %i.an, ptr %i.ax, align 8, !tbaa !53
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 40 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 8 uses
  store ptr %i.ap, ptr %i.ay, align 8, !tbaa !8
  %.not.i.i.i.i.i75 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i75, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89, label %bb.p

bb.p:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 4 uses
  %i.bb = load atomic i64, ptr %i.ba acquire, align 8 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 4294967297
  %i.bd = trunc i64 %i.bb to i32                  ; 2 uses
  br i1 %i.bc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 0, ptr %i.ba, align 8, !tbaa !36
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 0, ptr %i.be, align 4, !tbaa !38
  %i.bf = load ptr, ptr %i.az, align 8, !tbaa !39
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22, !inline_history !95
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89

bb.r:                                             ; preds = %bb.p
  %i.bl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i.i76 = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i76, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = add nsw i32 %i.bd, -1
  store i32 %i.bm, ptr %i.ba, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i77

bb.t:                                             ; preds = %bb.r
  %i.bn = atomicrmw volatile add ptr %i.ba, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i77

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i77: ; preds = %bb.t, %bb.s
  %.0.i.i.i.i.i.i.i78 = phi i32 [ %i.bd, %bb.s ], [ %i.bn, %bb.t ]
  %i.bo = icmp eq i32 %.0.i.i.i.i.i.i.i78, 1
  br i1 %i.bo, label %bb.u, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89, !prof !42

bb.u:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i77
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit89: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit74, %bb.q, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i77, %bb.u
  store ptr null, ptr %0, align 8, !tbaa !50, !alias.scope !118
  br label %bb.da

bb.v:                                             ; preds = %bb.b
  switch i32 %i.h, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit [
    i32 43, label %bb.w
    i32 44, label %bb.w
    i32 23, label %bb.w
    i32 24, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !121
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !124
  br label %bb.ae

_ZN5arrow10is_decimalENS_4Type4typeE.exit:        ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.h, ptr %i.b, align 4, !tbaa !125, !noalias !126
  %switch.tableidx = add i32 %i.h, -2             ; 2 uses
  %i.bt = icmp ult i32 %switch.tableidx, 8
  br i1 %i.bt, label %switch.lookup, label %bb.x

bb.x:                                             ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !126
  call void @_ZN5arrow6Status8FromArgsIJRA22_KcRNS_4Type4typeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(22) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.b), !noalias !126
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #22
  %i.bu = load ptr, ptr %4, align 8, !tbaa !50, !noalias !126
  %.not.i.i90 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i90, label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit, label %bb.y, !prof !129

bb.y:                                             ; preds = %bb.x
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit

switch.lookup:                                    ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit
  %i.bv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm, i64 %i.bv
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge

_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !126
  %.pr = load ptr, ptr %5, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bw = icmp eq ptr %.pr, null
  br i1 %i.bw, label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit._crit_edge, label %bb.z, !prof !130

_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit._crit_edge: ; preds = %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !3
  br label %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge

bb.z:                                             ; preds = %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.ac unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %5, align 8, !tbaa !50
  %.not.i.i91 = icmp eq ptr %i.by, null
  br i1 %.not.i.i91, label %_ZN5arrow6ResultIiED2Ev.exit, label %bb.ab, !prof !129

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
  br label %_ZN5arrow6ResultIiED2Ev.exit

_ZN5arrow6ResultIiED2Ev.exit:                     ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.cz

bb.ac:                                            ; preds = %bb.z
  %.pre233 = load ptr, ptr %5, align 8, !tbaa !50
  %i.bz = icmp eq ptr %.pre233, null
  br i1 %i.bz, label %_ZN5arrow6ResultIiED2Ev.exit95.thread, label %bb.ad, !prof !131

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %5)
  br label %_ZN5arrow6ResultIiED2Ev.exit95.thread

_ZN5arrow6ResultIiED2Ev.exit95.thread:            ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.da

_ZN5arrow6ResultIiED2Ev.exit95._crit_edge:        ; preds = %switch.lookup, %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit._crit_edge
  %.057.ph = phi i32 [ %switch.ext, %switch.lookup ], [ %.pre, %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %.pre234 = load i32, ptr %i.i, align 8, !tbaa !74
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge, %bb.w
  %i.ca = phi i32 [ %i.j, %bb.w ], [ %.pre234, %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge ] ; 3 uses
  %.1 = phi i32 [ %i.bs, %bb.w ], [ 0, %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge ] ; 6 uses
  %.158 = phi i32 [ %i.bq, %bb.w ], [ %.057.ph, %_ZN5arrow6ResultIiED2Ev.exit95._crit_edge ]
  switch i32 %i.ca, label %_ZN5arrow10is_decimalENS_4Type4typeE.exit97 [
    i32 43, label %bb.af
    i32 44, label %bb.af
    i32 23, label %bb.af
    i32 24, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ae, %bb.ae, %bb.ae
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 76
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !121
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !124
  br label %bb.an

_ZN5arrow10is_decimalENS_4Type4typeE.exit97:      ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ca, ptr %i.a, align 4, !tbaa !125, !noalias !132
  %switch.tableidx260 = add i32 %i.ca, -2         ; 2 uses
  %i.cf = icmp ult i32 %switch.tableidx260, 8
  br i1 %i.cf, label %switch.lookup261, label %bb.ag

bb.ag:                                            ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit97
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !132
  call void @_ZN5arrow6Status8FromArgsIJRA22_KcRNS_4Type4typeEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(22) @.str.7, ptr noundef nonnull align 4 dereferenceable(4) %i.a), !noalias !132
  call void @_ZN5arrow6ResultIiEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #22
  %i.cg = load ptr, ptr %3, align 8, !tbaa !50, !noalias !132
  %.not.i.i98 = icmp eq ptr %i.cg, null
  br i1 %.not.i.i98, label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100, label %bb.ah, !prof !129

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100

switch.lookup261:                                 ; preds = %_ZN5arrow10is_decimalENS_4Type4typeE.exit97
  %i.ch = zext nneg i32 %switch.tableidx260 to i64
  %switch.gep262 = getelementptr inbounds nuw i8, ptr @switch.table._ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm, i64 %i.ch
  %switch.load263 = load i8, ptr %switch.gep262, align 1
  %switch.ext264 = zext i8 %switch.load263 to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN5arrow6ResultIiED2Ev.exit106

_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100: ; preds = %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !132
  %.pr232 = load ptr, ptr %6, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ci = icmp eq ptr %.pr232, null
  br i1 %i.ci, label %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100._crit_edge, label %bb.ai, !prof !130

_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100._crit_edge: ; preds = %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100
  %.phi.trans.insert235 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pre236 = load i32, ptr %.phi.trans.insert235, align 8, !tbaa !3
  br label %_ZN5arrow6ResultIiED2Ev.exit106

bb.ai:                                            ; preds = %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.al unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %6, align 8, !tbaa !50
  %.not.i.i101 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i101, label %_ZN5arrow6ResultIiED2Ev.exit103, label %bb.ak, !prof !129

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
  br label %_ZN5arrow6ResultIiED2Ev.exit103

_ZN5arrow6ResultIiED2Ev.exit103:                  ; preds = %bb.aj, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.cz

bb.al:                                            ; preds = %bb.ai
  %.pre238 = load ptr, ptr %6, align 8, !tbaa !50
  %i.cl = icmp eq ptr %.pre238, null
  br i1 %i.cl, label %_ZN5arrow6ResultIiED2Ev.exit106.thread, label %bb.am, !prof !131

bb.am:                                            ; preds = %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(12) %6)
  br label %_ZN5arrow6ResultIiED2Ev.exit106.thread

_ZN5arrow6ResultIiED2Ev.exit106.thread:           ; preds = %bb.al, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.da

_ZN5arrow6ResultIiED2Ev.exit106:                  ; preds = %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100._crit_edge, %switch.lookup261
  %.059.ph = phi i32 [ %switch.ext264, %switch.lookup261 ], [ %.pre236, %_ZN5arrow26MaxDecimalDigitsForIntegerENS_4Type4typeE.exit100._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.an

bb.an:                                            ; preds = %_ZN5arrow6ResultIiED2Ev.exit106, %bb.af
  %.1229 = phi i32 [ %i.ce, %bb.af ], [ 0, %_ZN5arrow6ResultIiED2Ev.exit106 ] ; 6 uses
  %.160 = phi i32 [ %i.cc, %bb.af ], [ %.059.ph, %_ZN5arrow6ResultIiED2Ev.exit106 ] ; 2 uses
  %i.cm = icmp slt i32 %.1, 0
  %i.cn = icmp slt i32 %.1229, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.cn
  br i1 %or.cond, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5arrow6Status8FromArgsIJRA44_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 10, ptr noundef nonnull align 1 dereferenceable(44) @.str.2)
  br label %bb.da

bb.ap:                                            ; preds = %bb.an
  %i.co = load i32, ptr %i.g, align 8, !tbaa !74
  %i.cp = icmp eq i32 %i.co, 24
  br i1 %i.cp, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cq = load i32, ptr %i.i, align 8, !tbaa !74
  %i.cr = icmp eq i32 %i.cq, 24
  br i1 %i.cr, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.054 = phi i32 [ 24, %bb.ar ], [ 23, %bb.aq ]  ; 2 uses
  switch i8 %1, label %bb.av [
    i8 0, label %bb.at
    i8 2, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %.sroa.speculated195 = call i32 @llvm.umax.i32(i32 %.1, i32 %.1229) ; 2 uses
  %i.cs = sub nsw i32 %.sroa.speculated195, %.1
  %i.ct = sub nsw i32 %.sroa.speculated195, %.1229
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.cu = sub nsw i32 %.1, %.1229
  %i.cv = add i32 %i.cu, %.160
  %i.cw = call i32 @llvm.smax.i32(i32 %i.cv, i32 3)
  %reass.sub = sub nsw i32 %.1229, %.1
  %i.cx = add i32 %reass.sub, 1
  %i.cy = add i32 %i.cx, %i.cw
  br label %bb.av

bb.av:                                            ; preds = %bb.as, %bb.au, %bb.at
  %.053 = phi i32 [ 0, %bb.as ], [ %i.cs, %bb.at ], [ %i.cy, %bb.au ] ; 2 uses
  %.052 = phi i32 [ 0, %bb.as ], [ %i.ct, %bb.at ], [ 0, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.cz = add nsw i32 %.053, %.158
  %i.da = add nsw i32 %.053, %.1
  call void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.36") align 8 %7, i32 noundef %.054, i32 noundef %i.cz, i32 noundef %i.da)
  %i.db = load ptr, ptr %7, align 8, !tbaa !50
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ay, label %bb.aw, !prof !129

bb.aw:                                            ; preds = %bb.av
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.cq unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.de = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !60, !noalias !141 ; 3 uses
  store ptr %i.df, ptr %8, align 8, !tbaa !60, !alias.scope !141
  %i.dg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !8, !noalias !141 ; 4 uses
  store ptr null, ptr %i.dh, align 8, !tbaa !8, !noalias !141
  store ptr %i.di, ptr %i.dg, align 8, !tbaa !8, !alias.scope !141
  store ptr null, ptr %i.de, align 8, !tbaa !60, !noalias !141
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.dj = add nsw i32 %.052, %.160
  %i.dk = add nsw i32 %.052, %.1229
  invoke void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.36") align 8 %9, i32 noundef %.054, i32 noundef %i.dj, i32 noundef %i.dk)
          to label %bb.az unwind label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %i.dl = load ptr, ptr %9, align 8, !tbaa !50
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.bd, label %bb.ba, !prof !129

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit149 unwind label %bb.bc

bb.bb:                                            ; preds = %bb.ay
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cp

bb.bc:                                            ; preds = %bb.ba
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.cp

bb.bd:                                            ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !60, !noalias !142 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !8, !noalias !142 ; 10 uses
  %.not.i.i.i109 = icmp eq ptr %i.di, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, i8 0, i64 16, i1 false)
  br i1 %.not.i.i.i109, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 3 uses
  %i.du = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i110 = icmp eq i8 %i.du, 0
  br i1 %.not.i.i.i.i110, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.dv = load i32, ptr %i.dt, align 4, !tbaa !3
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.dt, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111

bb.bg:                                            ; preds = %bb.be
  %i.dx = atomicrmw volatile add ptr %i.dt, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111: ; preds = %bb.bd, %bb.bf, %bb.bg
  %i.dy = load ptr, ptr %2, align 8, !tbaa !55    ; 3 uses
  store ptr %i.df, ptr %i.dy, align 8, !tbaa !89
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.df, ptr %i.dz, align 8, !tbaa !53
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 16 ; 2 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !8  ; 8 uses
  store ptr %i.di, ptr %i.ea, align 8, !tbaa !8
  %.not.i.i.i.i.i112 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i112, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126, label %bb.bh

bb.bh:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 4 uses
  %i.ed = load atomic i64, ptr %i.ec acquire, align 8 ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 4294967297
  %i.ef = trunc i64 %i.ed to i32                  ; 2 uses
  br i1 %i.ee, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.ec, align 8, !tbaa !36
  %i.eg = getelementptr inbounds nuw i8, ptr %i.eb, i64 12
  store i32 0, ptr %i.eg, align 4, !tbaa !38
  %i.eh = load ptr, ptr %i.eb, align 8, !tbaa !39
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #22, !inline_history !95
  %i.ek = load ptr, ptr %i.eb, align 8, !tbaa !39
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = load ptr, ptr %i.el, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #22, !inline_history !95
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126

bb.bj:                                            ; preds = %bb.bh
  %i.en = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i.i113 = icmp eq i8 %i.en, 0
  br i1 %.not.i.i.i.i.i.i113, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eo = add nsw i32 %i.ef, -1
  store i32 %i.eo, ptr %i.ec, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114

bb.bl:                                            ; preds = %bb.bj
  %i.ep = atomicrmw volatile add ptr %i.ec, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114: ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.i.i.i.i115 = phi i32 [ %i.ef, %bb.bk ], [ %i.ep, %bb.bl ]
  %i.eq = icmp eq i32 %.0.i.i.i.i.i.i.i115, 1
  br i1 %i.eq, label %bb.bm, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126, !prof !42

bb.bm:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.eb) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit111, %bb.bi, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i114, %bb.bm
  %.not.i.i.i127 = icmp eq ptr %i.ds, null        ; 2 uses
  br i1 %.not.i.i.i127, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit129, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit126
  %i.er = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 3 uses
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i128 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i.i128, label %bb.bp, label %bb.bo

end_hunk_2
begin_hunk_3_@_ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm:bb.a

bb.e:                                             ; preds = %bb.d, %.lr.ph, %bb.b
  %.1.ph = phi i32 [ %.sroa.speculated141, %bb.d ], [ %.0149171, %bb.b ], [ %.0149171, %.lr.ph ] ; 4 uses
  %.252.ph = phi i1 [ %.050173, %bb.d ], [ %.050173, %bb.b ], [ true, %.lr.ph ] ; 2 uses
  %.2.ph = phi i32 [ %spec.select, %bb.d ], [ %.049174, %bb.b ], [ %.049174, %.lr.ph ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.054172, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.i, %i.b
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !159

bb.f:                                             ; preds = %bb.c
  store ptr null, ptr %0, align 8, !tbaa !50, !alias.scope !160
  br label %bb.bi

._crit_edge:                                      ; preds = %bb.e
  br i1 %.252.ph, label %bb.g, label %.lr.ph180

bb.g:                                             ; preds = %._crit_edge
  %i.j = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZN5arrow7float64Ev() ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !60   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !8    ; 12 uses
  %.not.i.i.i = icmp eq ptr %i.m, null            ; 3 uses
  br i1 %.not.i.i.i, label %.lr.ph.i.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %.lr.ph.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.j, %bb.i, %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_ZN5arrow10TypeHolderaSERKS0_.exit.i
  %.08.i = phi ptr [ %i.aq, %_ZN5arrow10TypeHolderaSERKS0_.exit.i ], [ %1, %.lr.ph.i.preheader ] ; 4 uses
  store ptr %i.k, ptr %.08.i, align 8, !tbaa !89
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store ptr %i.k, ptr %i.t, align 8, !tbaa !60
  %i.u = getelementptr inbounds nuw i8, ptr %.08.i, i64 16 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.m, %i.v
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow10TypeHolderaSERKS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  br i1 %.not.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.x = load i32, ptr %i.s, align 4, !tbaa !3
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.s, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.z = atomicrmw volatile add ptr %i.s, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !8
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.k
  %i.aa = phi ptr [ %i.v, %bb.k ], [ %i.v, %bb.m ], [ %.pr.pre.i.i.i.i.i, %bb.n ] ; 8 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not8.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.ab, align 8, !tbaa !36
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !38
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !inline_history !99
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !39
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22, !inline_history !99
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i9.i.i.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ae, %bb.r ], [ %i.ao, %bb.s ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.t, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, !prof !42

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aa) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.i.i
  store ptr %i.m, ptr %i.u, align 8, !tbaa !8
  br label %_ZN5arrow10TypeHolderaSERKS0_.exit.i

_ZN5arrow10TypeHolderaSERKS0_.exit.i:             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i.i.i, %.lr.ph.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.08.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.aq, %i.b
  br i1 %.not.i, label %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit, label %.lr.ph.i, !llvm.loop !100

_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit: ; preds = %_ZN5arrow10TypeHolderaSERKS0_.exit.i
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.ar, align 8, !tbaa !36
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !38
  %i.aw = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !163
  %i.az = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !163
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.w:                                             ; preds = %bb.u
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i80 = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i.i80, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i = phi i32 [ %i.au, %bb.x ], [ %i.be, %bb.y ]
  %i.bf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bf, label %bb.z, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !42

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v, %_ZN5arrow7compute8internal12ReplaceTypesERKNS_10TypeHolderEPS2_m.exit
  store ptr null, ptr %0, align 8, !tbaa !50, !alias.scope !164
  br label %bb.bi

.lr.ph180:                                        ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph180, %.critedge
  %.sroa.speculated218 = phi i32 [ 0, %.lr.ph180 ], [ %.sroa.speculated217, %.critedge ]
  %i.bg = phi i32 [ 0, %.lr.ph180 ], [ %i.bs, %.critedge ] ; 3 uses
  %.063178 = phi ptr [ %1, %.lr.ph180 ], [ %i.bt, %.critedge ] ; 2 uses
  %i.bh = load ptr, ptr %.063178, align 8, !tbaa !89 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !74 ; 3 uses
  %.off.i82 = add i32 %i.bj, -2
  %switch.i83 = icmp ult i32 %.off.i82, 8
  br i1 %switch.i83, label %switch.lookup, label %bb.ab

switch.lookup:                                    ; preds = %bb.aa
  %i.bk = zext nneg i32 %i.bj to i64
  %5 = getelementptr i8, ptr @switch.table._ZN5arrow7compute8internal15CastDecimalArgsEPNS_10TypeHolderEm, i64 %i.bk
  %switch.gep = getelementptr i8, ptr %5, i64 -2
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.bl = add nuw nsw i32 %.1.ph, %switch.ext
  %.sroa.speculated131 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.bl) ; 2 uses
  br label %.critedge

bb.ab:                                            ; preds = %bb.aa
  switch i32 %i.bj, label %.critedge [
    i32 43, label %bb.ac
    i32 44, label %bb.ac
    i32 23, label %bb.ac
    i32 24, label %bb.ac
  ]

bb.ac:                                            ; preds = %bb.ab, %bb.ab, %bb.ab, %bb.ab
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 76
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !121
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !124
  %i.bq = add i32 %i.bn, %.1.ph
  %i.br = sub i32 %i.bq, %i.bp
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 %i.br) ; 2 uses
  br label %.critedge

.critedge:                                        ; preds = %switch.lookup, %bb.ab, %bb.ac
  %.sroa.speculated217 = phi i32 [ %.sroa.speculated131, %switch.lookup ], [ %.sroa.speculated218, %bb.ab ], [ %.sroa.speculated, %bb.ac ] ; 2 uses
  %i.bs = phi i32 [ %.sroa.speculated131, %switch.lookup ], [ %i.bg, %bb.ab ], [ %.sroa.speculated, %bb.ac ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.063178, i64 24 ; 2 uses
  %.not68 = icmp eq ptr %i.bt, %i.b
  br i1 %.not68, label %.critedge75, label %bb.aa, !llvm.loop !167

.critedge75:                                      ; preds = %.critedge
  store i32 %.sroa.speculated217, ptr %i.a, align 4
  %i.bu = icmp sgt i32 %i.bs, 76
  br i1 %i.bu, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %.critedge75
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !168
  call void @_ZN5arrow4util13StringBuilderIJRA19_KcRiRA40_S2_RKiRA2_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(19) @.str.4, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(40) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) @_ZN5arrow15BasicDecimal25613kMaxPrecisionE, ptr noundef nonnull align 1 dereferenceable(2) @.str.6), !noalias !168
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bv = load ptr, ptr %3, align 8, !tbaa !18, !noalias !168 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
  br i1 %i.bx, label %_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ae
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !13, !noalias !168
  %i.bz = add i64 %i.by, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.bz) #23
  br label %_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit

bb.af:                                            ; preds = %bb.ad
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %3, align 8, !tbaa !18, !noalias !168 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i: ; preds = %bb.af
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !13, !noalias !168
  %i.cf = add i64 %i.ce, 1
  call void @_ZdlPvm(ptr noundef %i.cb, i64 noundef %i.cf) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i

common.resume:                                    ; preds = %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i ], [ %i.cl, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i.i: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !168
  br label %common.resume

_ZN5arrow6Status7InvalidIJRA19_KcRiRA40_S2_RKiRA2_S2_EEES0_DpOT_.exit: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !168
  br label %bb.bh

bb.ag:                                            ; preds = %.critedge75
  %i.cg = icmp sgt i32 %i.bs, 38
  %spec.select219 = select i1 %i.cg, i32 24, i32 %.2.ph
  br label %.thread213

.thread213:                                       ; preds = %bb.ag, %.thread
  %.0149.lcssa203208211216 = phi i32 [ 0, %.thread ], [ %.1.ph, %bb.ag ]
  %i.ch = phi i32 [ 0, %.thread ], [ %i.bs, %bb.ag ]
  %i.ci = phi i32 [ 23, %.thread ], [ %spec.select219, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN5arrow11DecimalType4MakeENS_4Type4typeEii(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.36") align 8 %4, i32 noundef %i.ci, i32 noundef %i.ch, i32 noundef %.0149.lcssa203208211216)
  %i.cj = load ptr, ptr %4, align 8, !tbaa !50
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %bb.aj, label %bb.ah, !prof !129

bb.ah:                                            ; preds = %.thread213
  invoke void @_ZN5arrow6StatusC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5arrow6ResultISt10shared_ptrINS_8DataTypeEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %common.resume

bb.aj:                                            ; preds = %.thread213
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !60, !noalias !173 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !8, !noalias !173 ; 11 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, i8 0, i64 16, i1 false)
  br i1 %.not170, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.aj
  %.not.i.i.i99 = icmp eq ptr %i.cp, null
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  br label %bb.aq

._crit_edge185:                                   ; preds = %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, %bb.aj
  store ptr null, ptr %0, align 8, !tbaa !50, !alias.scope !178
  %.not.i.i94 = icmp eq ptr %i.cp, null
  br i1 %.not.i.i94, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge185
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 4 uses
  %i.cs = load atomic i64, ptr %i.cr acquire, align 8 ; 2 uses
  %i.ct = icmp eq i64 %i.cs, 4294967297
  %i.cu = trunc i64 %i.cs to i32                  ; 2 uses
  br i1 %i.ct, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 0, ptr %i.cr, align 8, !tbaa !36
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  store i32 0, ptr %i.cv, align 4, !tbaa !38
  %i.cw = load ptr, ptr %i.cp, align 8, !tbaa !39
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #22, !inline_history !97
  %i.cz = load ptr, ptr %i.cp, align 8, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  call void %i.db(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #22, !inline_history !97
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98

bb.am:                                            ; preds = %bb.ak
  %i.dc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i95 = icmp eq i8 %i.dc, 0
  br i1 %.not.i.i.i95, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dd = add nsw i32 %i.cu, -1
  store i32 %i.dd, ptr %i.cr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96

bb.ao:                                            ; preds = %bb.am
  %i.de = atomicrmw volatile add ptr %i.cr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96: ; preds = %bb.ao, %bb.an
  %.0.i.i.i.i97 = phi i32 [ %i.cu, %bb.an ], [ %i.de, %bb.ao ]
  %i.df = icmp eq i32 %.0.i.i.i.i97, 1
  br i1 %i.df, label %bb.ap, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98, !prof !42

bb.ap:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i96
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cp) #22
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit98

bb.aq:                                            ; preds = %.lr.ph184, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115
  %.0182 = phi ptr [ %1, %.lr.ph184 ], [ %i.ec, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115 ] ; 4 uses
  br i1 %.not.i.i.i99, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit101, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !13
  %.not.i.i.i.i100 = icmp eq i8 %i.dg, 0
  br i1 %.not.i.i.i.i100, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dh = load i32, ptr %i.cq, align 4, !tbaa !3
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.cq, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit101

bb.at:                                            ; preds = %bb.ar
  %i.dj = atomicrmw volatile add ptr %i.cq, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit101

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit101: ; preds = %bb.aq, %bb.as, %bb.at
  store ptr %i.cn, ptr %.0182, align 8, !tbaa !89
  %i.dk = getelementptr inbounds nuw i8, ptr %.0182, i64 8
  store ptr %i.cn, ptr %i.dk, align 8, !tbaa !53
  %i.dl = getelementptr inbounds nuw i8, ptr %.0182, i64 16 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !8  ; 8 uses
  store ptr %i.cp, ptr %i.dl, align 8, !tbaa !8
  %.not.i.i.i.i.i102 = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i.i.i102, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit115, label %bb.au

bb.au:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit101
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 4 uses
  %i.do = load atomic i64, ptr %i.dn acquire, align 8 ; 2 uses
  %i.dp = icmp eq i64 %i.do, 4294967297
  %i.dq = trunc i64 %i.do to i32                  ; 2 uses
end_hunk_3
