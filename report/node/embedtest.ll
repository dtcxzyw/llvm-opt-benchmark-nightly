inline.NumInlined: 635
inline.NumDeleted: 366
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::function.41" = type { %"class.std::_Function_base", ptr }
%"class.std::_Function_base" = type { %"union.std::_Any_data", ptr }
%"union.std::_Any_data" = type { %"union.std::_Nocopy_types" }
%"union.std::_Nocopy_types" = type { { i64, i64 } }
%"class.std::unique_ptr.5" = type { %"struct.std::__uniq_ptr_data.6" }
%"struct.std::__uniq_ptr_data.6" = type { %"class.std::__uniq_ptr_impl.7" }
%"class.std::__uniq_ptr_impl.7" = type { %"class.std::tuple.8" }
%"class.std::tuple.8" = type { %"struct.std::_Tuple_impl.9" }
%"struct.std::_Tuple_impl.9" = type { %"struct.std::_Head_base.12" }
%"struct.std::_Head_base.12" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__cxx11::basic_string<char>, std::allocator<std::__cxx11::basic_string<char>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::optional" = type { %"struct.std::_Optional_base" }
%"struct.std::_Optional_base" = type { %"struct.std::_Optional_payload" }
%"struct.std::_Optional_payload" = type { %"struct.std::_Optional_payload.base.22", [7 x i8] }
%"struct.std::_Optional_payload.base.22" = type { %"struct.std::_Optional_payload_base.base.21" }
%"struct.std::_Optional_payload_base.base.21" = type <{ %"union.std::_Optional_payload_base<node::SnapshotConfig>::_Storage", i8 }>
%"union.std::_Optional_payload_base<node::SnapshotConfig>::_Storage" = type { %"struct.node::SnapshotConfig" }
%"struct.node::SnapshotConfig" = type { i32, [4 x i8], %"class.std::optional.14" }
%"class.std::optional.14" = type { %"struct.std::_Optional_base.15" }
%"struct.std::_Optional_base.15" = type { %"struct.std::_Optional_payload.17" }
%"struct.std::_Optional_payload.17" = type { %"struct.std::_Optional_payload.base", [7 x i8] }
%"struct.std::_Optional_payload.base" = type { %"struct.std::_Optional_payload_base.base" }
%"struct.std::_Optional_payload_base.base" = type <{ %"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage", i8 }>
%"union.std::_Optional_payload_base<std::__cxx11::basic_string<char>>::_Storage" = type { %"class.std::__cxx11::basic_string" }
%struct.uv_fs_s = type { ptr, i32, [6 x ptr], i32, ptr, ptr, i64, ptr, ptr, %struct.uv_stat_t, ptr, i32, i32, i32, i32, ptr, i64, i32, i32, double, double, %struct.uv__work, [4 x %struct.uv_buf_t] }
%struct.uv_stat_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t, %struct.uv_timespec_t }
%struct.uv_timespec_t = type { i64, i64 }
%struct.uv__work = type { ptr, ptr, ptr, %struct.uv__queue }
%struct.uv__queue = type { ptr, ptr }
%struct.uv_buf_t = type { ptr, i64 }
%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl" = type { %"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::unique_ptr.28" = type { %"struct.std::__uniq_ptr_data.29" }
%"struct.std::__uniq_ptr_data.29" = type { %"class.std::__uniq_ptr_impl.30" }
%"class.std::__uniq_ptr_impl.30" = type { %"class.std::tuple.31" }
%"class.std::tuple.31" = type { %"struct.std::_Tuple_impl.32" }
%"struct.std::_Tuple_impl.32" = type { %"struct.std::_Head_base.35" }
%"struct.std::_Head_base.35" = type { ptr }
%"class.v8::Locker" = type { i8, i8, ptr }
%"class.v8::HandleScope" = type { ptr, ptr, ptr }
%"class.std::function" = type { %"class.std::_Function_base", ptr }
%"class.std::function.38" = type { %"class.std::_Function_base", ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.4" }
%"struct.std::_Head_base.4" = type { ptr }
%"class.std::unique_ptr.44" = type { %"struct.std::__uniq_ptr_data.45" }
%"struct.std::__uniq_ptr_data.45" = type { %"class.std::__uniq_ptr_impl.46" }
%"class.std::__uniq_ptr_impl.46" = type { %"class.std::tuple.47" }
%"class.std::tuple.47" = type { %"struct.std::_Tuple_impl.48" }
%"struct.std::_Tuple_impl.48" = type { %"struct.std::_Head_base.51" }
%"struct.std::_Head_base.51" = type { ptr }

$_ZSt16__do_uninit_copyIPPcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SA_S9_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_ = comdat any

$_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_ = comdat any

$_ZNSt17_Function_handlerIFPN4node11EnvironmentEPKNS0_22CommonEnvironmentSetupEEZNS3_18CreateFromSnapshotIJRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EERKSG_EEESt10unique_ptrIS3_St14default_deleteIS3_EEPNS0_20MultiIsolatePlatformEPSG_PKNS0_20EmbedderSnapshotDataEDpOT_EUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_ = comdat any

$_ZNSt17_Function_handlerIFPN4node11EnvironmentEPKNS0_22CommonEnvironmentSetupEEZNS3_18CreateFromSnapshotIJRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EERKSG_EEESt10unique_ptrIS3_St14default_deleteIS3_EEPNS0_20MultiIsolatePlatformEPSG_PKNS0_20EmbedderSnapshotDataEDpOT_EUlS5_E_E10_M_managerERSt9_Any_dataRKSZ_St18_Manager_operation = comdat any

$_ZNSt17_Function_handlerIFPN4node11EnvironmentEPKNS0_22CommonEnvironmentSetupEEZNS3_6CreateIJRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EERKSG_EEESt10unique_ptrIS3_St14default_deleteIS3_EEPNS0_20MultiIsolatePlatformEPSG_DpOT_EUlS5_E_E9_M_invokeERKSt9_Any_dataOS5_ = comdat any

$_ZNSt17_Function_handlerIFPN4node11EnvironmentEPKNS0_22CommonEnvironmentSetupEEZNS3_6CreateIJRSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISE_EERKSG_EEESt10unique_ptrIS3_St14default_deleteIS3_EEPNS0_20MultiIsolatePlatformEPSG_DpOT_EUlS5_E_E10_M_managerERSt9_Any_dataRKSW_St18_Manager_operation = comdat any

@stdout = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"i + 1 < args.size()\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"../../test/embedding/embedtest.cc\00", align 1
@__PRETTY_FUNCTION__._ZL15RunNodeInstancePN4node20MultiIsolatePlatformERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESC_ = private unnamed_addr constant [112 x i8] c"int RunNodeInstance(MultiIsolatePlatform *, const std::vector<std::string> &, const std::vector<std::string> &)\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"fp != nullptr\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"statret == 0\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"read == 1\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"snapshot\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"ret == 0\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"filtered_args.size() >= 2\00", align 1
@.str.17 = private unnamed_addr constant [228 x i8] c"const assert = require('assert');assert(require('v8').startupSnapshot.isBuildingSnapshot());globalThis.embedVars = { n\C3\B6n_asc\C4\B1\C4\B1: '\F0\9F\8F\B3\EF\B8\8F\E2\80\8D\F0\9F\8C\88' };globalThis.require = require;require('vm').runInThisContext(process.argv[2]);\00", align 1
@.str.18 = private unnamed_addr constant [217 x i8] c"const publicRequire = require('module').createRequire(process.cwd() + '/');globalThis.require = publicRequire;globalThis.embedVars = { n\C3\B6n_asc\C4\B1\C4\B1: '\F0\9F\8F\B3\EF\B8\8F\E2\80\8D\F0\9F\8C\88' };require('vm').runInThisContext(process.argv[1]);\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"written == 1\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4node9FixupMainEiPPcPS1_(i32 noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @uv_setup_args(i32 noundef %0, ptr noundef %1) #16
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @setvbuf(ptr noundef %i.b, ptr noundef null, i32 noundef 2, i64 noundef 0) #16 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 @setvbuf(ptr noundef %i.d, ptr noundef null, i32 noundef 2, i64 noundef 0) #16 ; 0 uses
  ret void
}

declare ptr @uv_setup_args(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @setvbuf(ptr noundef captures(none), ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %"class.std::function.41", align 8  ; 9 uses
  %3 = alloca %"class.std::function.41", align 8  ; 9 uses
  %4 = alloca %"class.std::unique_ptr.5", align 8 ; 22 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::vector", align 8       ; 18 uses
  %7 = alloca %"class.std::optional", align 8     ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %10 = alloca %struct.uv_fs_s, align 8           ; 6 uses
  %11 = alloca %"class.std::vector.25", align 8   ; 9 uses
  %12 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %14 = alloca %"class.std::vector", align 8      ; 23 uses
  %15 = alloca %"class.std::unique_ptr.28", align 8 ; 4 uses
  %16 = alloca %"class.std::unique_ptr.28", align 8 ; 5 uses
  %17 = alloca %"struct.node::SnapshotConfig", align 8 ; 7 uses
  %18 = alloca %"class.v8::Locker", align 8       ; 4 uses
  %19 = alloca %"class.v8::HandleScope", align 8  ; 8 uses
  %20 = alloca %"class.std::function", align 8    ; 7 uses
  %21 = alloca %"class.std::function.38", align 8 ; 7 uses
  %22 = alloca %"class.std::function.38", align 8 ; 7 uses
  %23 = alloca %"class.std::function.38", align 8 ; 7 uses
  %24 = alloca %"class.std::unique_ptr.5", align 8 ; 7 uses
  %25 = alloca %"class.std::vector.25", align 8   ; 7 uses
  %26 = alloca %"class.std::vector", align 8      ; 9 uses
  %27 = alloca %"class.std::shared_ptr", align 8  ; 9 uses
  %28 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %i.a = tail call ptr @uv_setup_args(i32 noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.b = load ptr, ptr @stdout, align 8
  %i.c = tail call i32 @setvbuf(ptr noundef %i.b, ptr noundef null, i32 noundef 2, i64 noundef 0) #16 ; 0 uses
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 @setvbuf(ptr noundef %i.d, ptr noundef null, i32 noundef 2, i64 noundef 0) #16 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  %i.f = sext i32 %0 to i64                       ; 3 uses
  %.idx23 = shl nuw nsw i64 %i.f, 3
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx23
  %.idx = shl nuw nsw i64 %i.f, 5
  %i.h = icmp slt i32 %0, 0
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #17
  unreachable

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %0, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.idx) #18
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i
  %i.j = phi ptr [ %i.i, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i.i ], [ null, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_.exit.i.i ] ; 3 uses
  store ptr %i.j, ptr %26, align 8
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = tail call noundef ptr @_ZSt16__do_uninit_copyIPPcPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET0_T_SA_S9_(ptr noundef %i.a, ptr noundef %i.g, ptr noundef %i.j)
  %i.n = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #16
  call void @_ZN4node24InitializeOncePerProcessERKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS6_EENS_26ProcessInitializationFlags5FlagsE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr") align 8 %27, ptr noundef nonnull align 8 dereferenceable(24) %26, i32 noundef 8386) #16
  %i.o = load ptr, ptr %27, align 8               ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef nonnull align 8 dereferenceable(24) ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o) #16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp eq ptr %i.t, %i.v
  br i1 %i.w, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit
  %i.x = load ptr, ptr %27, align 8               ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x) #16
  br i1 %i.ab, label %bb.c, label %bb.d

.lr.ph:                                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit, %.lr.ph
  %.sroa.015.024 = phi ptr [ %i.ah, %.lr.ph ], [ %i.t, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2IPPcvEET_SB_RKS6_.exit ] ; 2 uses
  %i.ac = load ptr, ptr @stderr, align 8
  %i.ad = load ptr, ptr %26, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %.sroa.015.024, align 8
  %i.ag = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str, ptr noundef %i.ae, ptr noundef %i.af) #19 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.024, i64 32 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.aj = load ptr, ptr %27, align 8              ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i32 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #16
  br label %bb.cj

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #16
  call void @_ZN4node20MultiIsolatePlatform6CreateEiPN2v817TracingControllerEPNS1_13PageAllocatorE(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %28, i32 noundef 4, ptr noundef null, ptr noundef null) #16
  %i.ao = load ptr, ptr %28, align 8
  call void @_ZN2v82V818InitializePlatformEPNS_8PlatformE(ptr noundef %i.ao) #16
  %i.ap = load ptr, ptr %28, align 8              ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #16
  call void @_ZN5cppgc17InitializeProcessEPN2v813PageAllocatorEm(ptr noundef %i.at, i64 noundef 0) #16
  %i.au = call noundef zeroext i1 @_ZN2v82V810InitializeEi(i32 noundef 0) #16 ; 0 uses
  %i.av = load ptr, ptr %28, align 8              ; 4 uses
  %i.aw = load ptr, ptr %27, align 8              ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef nonnull align 8 dereferenceable(24) ptr %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #16 ; 3 uses
  %i.bb = load ptr, ptr %27, align 8              ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef nonnull align 8 dereferenceable(24) ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  call void @llvm.lifetime.start.p0(ptr nonnull %21)
  call void @llvm.lifetime.start.p0(ptr nonnull %22)
  call void @llvm.lifetime.start.p0(ptr nonnull %23)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  store ptr null, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.bg = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.bh, ptr %5, align 8
  %i.bi = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i64, ptr %i.bj, align 8            ; 8 uses
  %i.bl = icmp ugt i64 %i.bk, 15
  br i1 %i.bl, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bm = icmp slt i64 %i.bk, 0
  br i1 %i.bm, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #17
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bn = add nuw i64 %i.bk, 1                    ; 2 uses
  %i.bo = icmp slt i64 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !5

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #17
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.bp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #18 ; 2 uses
  store ptr %i.bp, ptr %5, align 8
  store i64 %i.bk, ptr %i.bh, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.d
  %i.bq = phi ptr [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.bh, %bb.d ] ; 3 uses
  switch i64 %i.bk, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.br = load i8, ptr %i.bi, align 1
  store i8 %i.br, ptr %i.bq, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bi, i64 %i.bk, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bk, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk
  store i8 0, ptr %i.bt, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.bu = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 6 uses
  store i8 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store ptr %i.bv, ptr %8, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i64 0, ptr %i.bw, align 8
  store i8 0, ptr %i.bv, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8            ; 2 uses
  %.not234.i = icmp eq ptr %i.by, %i.bg
  br i1 %.not234.i, label %.thread.thread.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.bz = ptrtoint ptr %i.bg to i64
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = sub i64 %i.ca, %i.bz
  %i.cc = ashr exact i64 %i.cb, 5
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 7 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  br label %bb.k

._crit_edge.i:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i
  %.pre237.i = load i64, ptr %i.bw, align 8
  %i.cg = icmp eq i64 %.pre237.i, 0
  %i.ch = select i1 %i.cg, i1 true, i1 %.168.i
  br i1 %i.ch, label %bb.ao, label %bb.v

bb.k:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i, %.lr.ph.i7
  %i.ci = phi i64 [ %i.cc, %.lr.ph.i7 ], [ %i.fd, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ]
  %i.cj = phi ptr [ %i.bg, %.lr.ph.i7 ], [ %i.ez, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ] ; 2 uses
  %.067228.i = phi i1 [ false, %.lr.ph.i7 ], [ %.168.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ] ; 5 uses
  %.069227.i = phi i1 [ false, %.lr.ph.i7 ], [ %.170.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ] ; 5 uses
  %.071226.i = phi i64 [ 0, %.lr.ph.i7 ], [ %i.ex, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit.i ] ; 7 uses
  %i.ck = getelementptr inbounds nuw [32 x i8], ptr %i.cj, i64 %.071226.i ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8
  switch i64 %i.cm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.thread193.i [
    i64 26, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i
    i64 27, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit79.i
    i64 20, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit81.i
    i64 24, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit84.i
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.i: ; preds = %bb.k
  %i.cn = load ptr, ptr %i.ck, align 8            ; 2 uses
  %i.co = load i128, ptr %i.cn, align 1
  %i.cp = xor i128 %i.co, 153444732907896374870913043869632638253
  %i.cq = getelementptr i8, ptr %i.cn, i64 10
end_hunk_0
