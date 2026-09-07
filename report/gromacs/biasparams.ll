Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/biasparams?download=true
inline.NumInlined: 240
inline.NumDeleted: 183
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.gmx::ArrayRef.0" = type { %"struct.gmx::ArrayRefIter.1", %"struct.gmx::ArrayRefIter.1" }
%"struct.gmx::ArrayRefIter.1" = type { ptr }
%"class.gmx::InvalidInputError" = type { %"class.gmx::UserInputError" }
%"class.gmx::UserInputError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.11" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.11" = type { %"struct.std::_Vector_base.12" }
%"struct.std::_Vector_base.12" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.42" }
%"struct.std::_Head_base.42" = type { ptr }
%"struct.std::type_index" = type { ptr }

$_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx20ExceptionInitializerC2EPKc = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZNSt18bad_variant_accessD0Ev = comdat any

$_ZNKSt18bad_variant_access4whatEv = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZTISt18bad_variant_access = comdat any

$_ZTSSt18bad_variant_access = comdat any

$_ZTVSt18bad_variant_access = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [45 x i8] c"To use AWH, the beta=1/(k_B T) should be > 0\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx10BiasParamsC2ERKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddNS0_18DisableUpdateSkipsEiNS7_IKNS_8GridAxisEEEi = private unnamed_addr constant [169 x i8] c"gmx::BiasParams::BiasParams(const AwhParams &, const AwhBiasParams &, ArrayRef<const DimParams>, double, double, DisableUpdateSkips, int, ArrayRef<const GridAxis>, int)\00", align 1
@.str.1 = private unnamed_addr constant [78 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/applied_forces/awh/biasparams.cpp\00", align 1
@_ZTIN3gmx17InvalidInputErrorE = external constant ptr
@.str.2 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Unknown AWH target type\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsEENK3$_0clEv" = private unnamed_addr constant [130 x i8] c"auto gmx::(anonymous namespace)::calcTargetUpdateInterval(const AwhParams &, const AwhBiasParams &)::(lambda)::operator()() const\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"std::get: variant is valueless\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"std::get: wrong index for variant\00", align 1
@_ZTISt18bad_variant_access = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt18bad_variant_access, ptr @_ZTISt9exception }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSSt18bad_variant_access = linkonce_odr constant [23 x i8] c"St18bad_variant_access\00", comdat, align 1
@_ZTISt9exception = external constant ptr
@_ZTVSt18bad_variant_access = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTISt18bad_variant_access, ptr @_ZNSt9exceptionD2Ev, ptr @_ZNSt18bad_variant_accessD0Ev, ptr @_ZNKSt18bad_variant_access4whatEv] }, comdat, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"dimParams[d].pullDimParams().betak > 0\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Inverse temperature (beta) and force constant (k) should be positive.\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEEENK3$_0clEv" = private unnamed_addr constant [161 x i8] c"auto gmx::(anonymous namespace)::calcCheckCoveringInterval(const AwhParams &, ArrayRef<const DimParams>, ArrayRef<const GridAxis>)::(lambda)::operator()() const\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"gridAxis[d].length() / sigma < std::numeric_limits<int>::max()\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"The axis length in units of sigma should fit in an int\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"awhParams.numSamplesUpdateFreeEnergy() > 0\00", align 1
@.str.11 = private unnamed_addr constant [86 x i8] c"When checking for AWH coverings, the number of samples per AWH update need to be > 0.\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"numSharingSimulations >= 1\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"We should ''share'' at least with ourselves\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEiENK3$_0clEv" = private unnamed_addr constant [110 x i8] c"auto gmx::(anonymous namespace)::getNumSharedUpdate(const AwhBiasParams &, int)::(lambda)::operator()() const\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"awhDimParams[d].diffusion() > 0\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"We need positive diffusion\00", align 1
@"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEddENK3$_0clEv" = private unnamed_addr constant [160 x i8] c"auto gmx::(anonymous namespace)::getInitialHistogramSizeEstimate(const AwhBiasParams &, ArrayRef<const GridAxis>, double, double)::(lambda)::operator()() const\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"maxCrossingTime > 0\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"We need at least one dimension with non-zero length\00", align 1
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx17InvalidInputErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

@_ZN3gmx10BiasParamsC1ERKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddNS0_18DisableUpdateSkipsEiNS7_IKNS_8GridAxisEEEi = unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, double, double, i32, i32, ptr, i32), ptr @_ZN3gmx10BiasParamsC2ERKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddNS0_18DisableUpdateSkipsEiNS7_IKNS_8GridAxisEEEi

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx10BiasParamsC2ERKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddNS0_18DisableUpdateSkipsEiNS7_IKNS_8GridAxisEEEi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((0, 20)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(49) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %2, ptr nofree readonly captures(none) %3, ptr nofree readnone captures(none) %4, double noundef %5, double noundef %6, i32 noundef %7, i32 noundef %8, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.0") align 8 captures(none) %9, i32 noundef %10) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.gmx::InvalidInputError", align 8 ; 4 uses
  %12 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %13 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = fcmp ogt double %5, 0.000000e+00
  %i.b = fdiv double 1.000000e+00, %5
  %i.c = select i1 %i.a, double %i.b, double 0.000000e+00
  store double %i.c, ptr %0, align 8, !tbaa !40
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 2 uses
  %i.g = sext i32 %i.f to i64
  store i64 %i.g, ptr %i.d, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !50   ; 5 uses
  store i32 %i.j, ptr %i.h, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i32, ptr %i.e, align 4             ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val49 = load i32, ptr %i.l, align 8, !tbaa !59 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 65
  %.val50 = load i8, ptr %i.m, align 1            ; 2 uses
  switch i32 %.val49, label %bb.e [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.c
    i32 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.n = trunc nuw i8 %.val50 to i1
  br i1 %i.n, label %bb.c, label %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a
  %i.o = srem i32 100, %i.j
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.o, i32 %i.j)
  %i.p = mul nsw i32 %.sroa.speculated.i, %.val
  %i.q = sext i32 %i.p to i64
  br label %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit

bb.d:                                             ; preds = %bb.a
  %i.r = mul nsw i32 %i.j, %.val
  %i.s = sext i32 %i.r to i64
  br label %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit

bb.e:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 115) #17
  unreachable

_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.c ], [ %i.s, %bb.d ]
  store i64 %.0.i, ptr %i.k, align 8, !tbaa !60
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %9, align 8                ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !63   ; 2 uses
  %14 = ptrtoint ptr %i.w to i64
  %i.x = ptrtoint ptr %i.u to i64
  %15 = sub i64 %14, %i.x                         ; 2 uses
  %.val51 = load i32, ptr %i.e, align 4
  %.val52 = load i32, ptr %i.i, align 8           ; 3 uses
  %.not.i = icmp eq ptr %i.w, %i.u                ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit
  %i.y = sdiv exact i64 %15, 48
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.j, %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit
  %.018.lcssa.i = phi i32 [ 0, %_ZN3gmx12_GLOBAL__N_124calcTargetUpdateIntervalERKNS_9AwhParamsERKNS_13AwhBiasParamsE.exit ], [ %.sroa.speculated6.i, %bb.j ]
  %i.z = icmp sgt i32 %.val52, 0
  br i1 %i.z, label %_ZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEE.exit, label %bb.k

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %.024.i = phi i64 [ %i.aw, %bb.j ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.01823.i = phi i32 [ %.sroa.speculated6.i, %bb.j ], [ 0, %.lr.ph.preheader.i ]
  %i.aa = getelementptr inbounds [40 x i8], ptr %3, i64 %.024.i ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !65
  switch i8 %i.ac, label %bb.i [
    i8 0, label %_ZNK3gmx9DimParams13pullDimParamsEv.exit.i
    i8 1, label %_ZNK3gmx9DimParams12fepDimParamsEv.exit.i
    i8 -1, label %_ZSt26__throw_bad_variant_accessb.exit.i.i.i20.i
  ], !prof !66

_ZNK3gmx9DimParams13pullDimParamsEv.exit.i:       ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !68 ; 2 uses
  %i.af = fcmp ogt double %i.ae, 0.000000e+00
  br i1 %i.af, label %_ZNK3gmx9DimParams13pullDimParamsEv.exit19.i, label %bb.f

bb.f:                                             ; preds = %_ZNK3gmx9DimParams13pullDimParamsEv.exit.i
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 142) #17
  unreachable

_ZNK3gmx9DimParams13pullDimParamsEv.exit19.i:     ; preds = %_ZNK3gmx9DimParams13pullDimParamsEv.exit.i
  %i.ag = tail call double @sqrt(double noundef %i.ae) #18
  %i.ah = fdiv double 1.000000e+00, %i.ag
  %i.ai = getelementptr inbounds [48 x i8], ptr %i.u, i64 %.024.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !70
  %i.al = fdiv double %i.ak, %i.ah                ; 2 uses
  %i.am = fcmp olt double %i.al, f0x41DFFFFFFFC00000
  br i1 %i.am, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3gmx9DimParams13pullDimParamsEv.exit19.i
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 149) #17
  unreachable

bb.h:                                             ; preds = %_ZNK3gmx9DimParams13pullDimParamsEv.exit19.i
  %i.an = tail call double @llvm.ceil.f64(double %i.al)
  %i.ao = fptosi double %i.an to i32
  %i.ap = add nsw i32 %i.ao, 1
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.aq, align 8, !tbaa !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @.str.5, ptr %i.ar, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #17
  unreachable

_ZSt26__throw_bad_variant_accessb.exit.i.i.i20.i: ; preds = %.lr.ph.i
  %i.as = tail call ptr @__cxa_allocate_exception(i64 16) #18 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.as, align 8, !tbaa !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.4, ptr %i.at, align 8, !tbaa !16
  tail call void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #17
  unreachable

_ZNK3gmx9DimParams12fepDimParamsEv.exit.i:        ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !72
  br label %bb.j

bb.j:                                             ; preds = %_ZNK3gmx9DimParams12fepDimParamsEv.exit.i, %bb.h
  %storemerge.i = phi i32 [ %i.av, %_ZNK3gmx9DimParams12fepDimParamsEv.exit.i ], [ %i.ap, %bb.h ]
  %.sroa.speculated6.i = tail call i32 @llvm.smax.i32(i32 %.01823.i, i32 %storemerge.i) ; 2 uses
  %i.aw = add nuw i64 %.024.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aw, %i.y
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !27

bb.k:                                             ; preds = %._crit_edge.i
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEEENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 168) #17
  unreachable

_ZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEE.exit: ; preds = %._crit_edge.i
  %i.ax = udiv i32 %.018.lcssa.i, %.val52
  %.sroa.speculated.i54 = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %i.ay = mul nsw i32 %.val52, %.val51
  %i.az = mul nsw i32 %i.ay, %.sroa.speculated.i54
  %i.ba = sext i32 %i.az to i64
  store i64 %i.ba, ptr %i.t, align 8, !tbaa !73
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.val49, ptr %i.bb, align 8, !tbaa !74
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.val50, ptr %i.bc, align 4, !tbaa !75
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bf = load double, ptr %i.be, align 8, !tbaa !76
  store double %i.bf, ptr %i.bd, align 8, !tbaa !77
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !78
  %i.bj = fmul double %5, %i.bi
  store double %i.bj, ptr %i.bg, align 8, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !80 ; 2 uses
  store double %i.bm, ptr %i.bk, align 8, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bo = icmp ne i32 %.val49, 3
  %i.bp = zext i1 %i.bo to i8
  store i8 %i.bp, ptr %i.bn, align 8, !tbaa !82
  %i.bq = icmp sgt i32 %8, 0
  br i1 %i.bq, label %_ZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEi.exit, label %bb.l

bb.l:                                             ; preds = %_ZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEE.exit
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEiENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 219) #17
  unreachable

_ZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEi.exit: ; preds = %_ZN3gmx12_GLOBAL__N_125calcCheckCoveringIntervalERKNS_9AwhParamsENS_8ArrayRefIKNS_9DimParamsEEENS4_IKNS_8GridAxisEEE.exit
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.val53 = load i32, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.inv.i = icmp slt i32 %.val53, 1
  %spec.select.i = select i1 %.inv.i, i32 1, i32 %8 ; 2 uses
  store i32 %spec.select.i, ptr %i.bs, align 4, !tbaa !83
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = mul nsw i32 %spec.select.i, %i.j
  %i.bv = sitofp i32 %i.bu to double
  store double %i.bv, ptr %i.bt, align 8, !tbaa !84
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bx = icmp eq i32 %.val49, 3
  %spec.select = select i1 %i.bx, double %i.bm, double 1.000000e+00
  store double %spec.select, ptr %i.bw, align 8, !tbaa !85
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !86
  %i.cb = fmul double %5, %i.ca                   ; 3 uses
  store double %i.cb, ptr %i.by, align 8, !tbaa !87
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cd = sitofp i32 %i.f to double
  %i.ce = fmul double %6, %i.cd
  %i.cf = load ptr, ptr %2, align 8, !tbaa !88    ; 7 uses
  br i1 %.not.i, label %.noexc18.i, label %.lr.ph.preheader.i56

.lr.ph.preheader.i56:                             ; preds = %_ZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEi.exit
  %i.cg = sdiv exact i64 %15, 48
  br label %.lr.ph.i57

._crit_edge.i60:                                  ; preds = %bb.o
  %i.ch = fcmp ogt double %.sroa.speculated.i58, 0.000000e+00
  br i1 %i.ch, label %_ZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEdd.exit, label %.noexc18.i

.lr.ph.i57:                                       ; preds = %bb.o, %.lr.ph.preheader.i56
  %.01635.i = phi i64 [ %i.cx, %bb.o ], [ 0, %.lr.ph.preheader.i56 ] ; 3 uses
  %.034.i = phi double [ %.sroa.speculated.i58, %bb.o ], [ 0.000000e+00, %.lr.ph.preheader.i56 ] ; 2 uses
  %i.ci = getelementptr inbounds [64 x i8], ptr %i.cf, i64 %.01635.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !91 ; 2 uses
  %i.cl = fcmp ogt double %i.ck, 0.000000e+00
  br i1 %i.cl, label %bb.m, label %.noexc.i

.noexc.i:                                         ; preds = %.lr.ph.i57
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEddENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 198) #17
  unreachable

bb.m:                                             ; preds = %.lr.ph.i57
  %i.cm = getelementptr inbounds [48 x i8], ptr %i.u, i64 %.01635.i ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !92, !range !93, !noundef !94
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !70 ; 2 uses
  %i.cs = fmul double %i.cr, %i.cr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ct = phi double [ %i.cs, %bb.n ], [ 1.000000e+00, %bb.m ]
  %i.cu = fmul nnan double %i.ck, 2.000000e+00
  %i.cv = fdiv double %i.ct, %i.cu                ; 2 uses
  %i.cw = fcmp olt double %.034.i, %i.cv
  %.sroa.speculated.i58 = select i1 %i.cw, double %i.cv, double %.034.i ; 3 uses
  %i.cx = add nuw i64 %.01635.i, 1                ; 2 uses
  %exitcond.not.i59 = icmp eq i64 %i.cx, %i.cg
  br i1 %exitcond.not.i59, label %._crit_edge.i60, label %.lr.ph.i57, !llvm.loop !28

.noexc18.i:                                       ; preds = %._crit_edge.i60, %_ZN3gmx12_GLOBAL__N_118getNumSharedUpdateERKNS_13AwhBiasParamsEi.exit
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEddENK3$_0clEv", ptr noundef nonnull @.str.1, i32 noundef 204) #17
  unreachable

_ZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEdd.exit: ; preds = %._crit_edge.i60
  %i.cy = fmul double %i.cb, %i.cb
  %i.cz = fmul double %i.ce, %i.cy
  %i.da = fdiv double %.sroa.speculated.i58, %i.cz
  store double %i.da, ptr %i.cc, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !96
  %i.de = icmp eq i32 %i.dd, 0
  %i.df = zext i1 %i.de to i8
  store i8 %i.df, ptr %i.db, align 8, !tbaa !97
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 %10, ptr %i.dg, align 4, !tbaa !98
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.di = icmp eq i32 %7, 1
  %i.dj = zext i1 %i.di to i8
  store i8 %i.dj, ptr %i.dh, align 8, !tbaa !99
  %i.dk = fcmp ugt double %5, 0.000000e+00
  br i1 %i.dk, label %bb.v, label %bb.p

bb.p:                                             ; preds = %_ZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEdd.exit
  %i.dl = tail call ptr @__cxa_allocate_exception(i64 24) #18 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %12, ptr noundef nonnull @.str)
          to label %bb.q unwind label %.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(56) %12)
          to label %bb.r unwind label %.thread73

bb.r:                                             ; preds = %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %13, align 8, !tbaa !12
  %i.dm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx10BiasParamsC2ERKNS_9AwhParamsERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_9DimParamsEEEddNS0_18DisableUpdateSkipsEiNS7_IKNS_8GridAxisEEEi, ptr %i.dm, align 8, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr @.str.1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 24
  store i32 267, ptr %.sroa.562.0..sroa_idx, align 8, !tbaa !19
  invoke void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InvalidInputError") align 8 %i.dl, ptr noundef nonnull align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr %i.dl, ptr nonnull @_ZTIN3gmx17InvalidInputErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #17
          to label %bb.ab unwind label %bb.t

.thread:                                          ; preds = %bb.p
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread73:                                        ; preds = %bb.q
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #18
  br label %.sink.split

bb.t:                                             ; preds = %bb.r, %bb.s
  %.039 = phi i1 [ false, %bb.s ], [ true, %bb.r ]
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %13) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #18
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %12) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br i1 %.039, label %bb.u, label %bb.aa

.sink.split:                                      ; preds = %.thread, %.thread73
  %.pn.pn72.ph = phi { ptr, i32 } [ %i.do, %.thread73 ], [ %i.dn, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #18
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.t
  %.pn.pn72 = phi { ptr, i32 } [ %i.dp, %bb.t ], [ %.pn.pn72.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.dl) #18
  br label %bb.aa

bb.v:                                             ; preds = %_ZN3gmx12_GLOBAL__N_131getInitialHistogramSizeEstimateERKNS_13AwhBiasParamsENS_8ArrayRefIKNS_8GridAxisEEEdd.exit
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !100 ; 2 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  %i.dt = ptrtoint ptr %i.cf to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 6                 ; 9 uses
  %i.dw = icmp sgt i64 %i.dv, 0
  br i1 %i.dw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.v
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %min.iters.check = icmp ult i64 %i.dv, 25
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %vector.body ] ; 8 uses
  %i.dy = sub nsw i64 %i.dv, %indvars.iv.ph
  %.neg = add nsw i64 %indvars.iv.ph, 1
  %xtraiter = and i64 %i.dy, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.dz = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv.ph
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !101 ; 2 uses
  %i.ec = fcmp ogt double %i.eb, 0.000000e+00
  br i1 %i.ec, label %bb.w, label %scalar.ph.prol.loopexit.unr-lcssa

bb.w:                                             ; preds = %scalar.ph.prol
  %i.ed = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %indvars.iv.ph
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 56
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !102
  %i.eg = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.ph
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !110
  %i.ej = fmul double %i.ef, %i.ei
  %i.ek = fmul double %i.ej, 5.000000e-01
  %i.el = fdiv double %i.ek, %i.eb
  %i.em = tail call double @llvm.round.f64(double %i.el)
  %i.en = fptosi double %i.em to i32
  br label %scalar.ph.prol.loopexit.unr-lcssa

scalar.ph.prol.loopexit.unr-lcssa:                ; preds = %bb.w, %scalar.ph.prol
  %i.eo = phi i32 [ %i.en, %bb.w ], [ 0, %scalar.ph.prol ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.ph
  store i32 %i.eo, ptr %i.ep, align 4, !tbaa !19
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol.loopexit.unr-lcssa ]
  %i.eq = icmp eq i64 %i.dv, %.neg
  br i1 %i.eq, label %._crit_edge, label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph
  %i.er = ashr exact i64 %i.du, 4
  %i.es = getelementptr i8, ptr %0, i64 %i.er
  %scevgep = getelementptr i8, ptr %i.es, i64 112 ; 3 uses
  %scevgep86 = getelementptr i8, ptr %i.u, i64 24
  %i.et = mul nuw nsw i64 %i.dv, 48
  %i.eu = getelementptr i8, ptr %i.u, i64 %i.et
  %scevgep87 = getelementptr i8, ptr %i.eu, i64 -16
  %scevgep88 = getelementptr i8, ptr %i.cf, i64 56
  %scevgep90 = getelementptr i8, ptr %3, i64 32
  %i.ev = mul nuw nsw i64 %i.dv, 40
  %scevgep91 = getelementptr i8, ptr %3, i64 %i.ev
  %bound0 = icmp ult ptr %i.dx, %scevgep87
  %bound1 = icmp ult ptr %scevgep86, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %i.dx, %i.dr
  %bound193 = icmp ult ptr %scevgep88, %scevgep
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  %bound095 = icmp ult ptr %i.dx, %scevgep91
  %bound196 = icmp ult ptr %scevgep90, %scevgep
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx, %found.conflict97
  br i1 %conflict.rdx98, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ew = and i64 %i.dv, 3                        ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 0
  %i.ey = select i1 %i.ex, i64 4, i64 %i.ew
  %n.vec = sub nsw i64 %i.dv, %i.ey               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %i.u, <4 x i64> %vec.ind
  %wide.gep99 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 24
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep99, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !101, !alias.scope !111 ; 2 uses
  %i.ez = fcmp ogt <4 x double> %wide.masked.gather, zeroinitializer ; 3 uses
  %wide.gep100 = getelementptr inbounds nuw [64 x i8], ptr %i.cf, <4 x i64> %vec.ind
  %wide.gep101 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep100, i64 56
  %wide.masked.gather102 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep101, <4 x i1> %i.ez, <4 x double> poison), !tbaa !102, !alias.scope !112
  %wide.gep103 = getelementptr inbounds nuw [40 x i8], ptr %3, <4 x i64> %vec.ind
  %wide.gep104 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep103, i64 32
  %wide.masked.gather105 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep104, <4 x i1> %i.ez, <4 x double> poison), !tbaa !110, !alias.scope !113
  %i.fa = fmul <4 x double> %wide.masked.gather102, %wide.masked.gather105
  %i.fb = fmul <4 x double> %i.fa, splat (double 5.000000e-01)
  %i.fc = fdiv <4 x double> %i.fb, %wide.masked.gather
  %i.fd = tail call <4 x double> @llvm.round.v4f64(<4 x double> %i.fc)
  %i.fe = fptosi <4 x double> %i.fd to <4 x i32>
  %predphi = select <4 x i1> %i.ez, <4 x i32> %i.fe, <4 x i32> zeroinitializer
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index
  store <4 x i32> %predphi, ptr %i.ff, align 8, !tbaa !19, !alias.scope !114, !noalias !115
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.fg = icmp eq i64 %index.next, %n.vec
  br i1 %i.fg, label %scalar.ph.preheader, label %vector.body, !llvm.loop !34

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %bb.z, %bb.v
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %bb.z
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.z ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.fh = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !101 ; 2 uses
  %i.fk = fcmp ogt double %i.fj, 0.000000e+00
  br i1 %i.fk, label %bb.x, label %scalar.ph.1

bb.x:                                             ; preds = %scalar.ph
  %i.fl = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 56
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !102
  %i.fo = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !110
  %i.fr = fmul double %i.fn, %i.fq
  %i.fs = fmul double %i.fr, 5.000000e-01
  %i.ft = fdiv double %i.fs, %i.fj
  %i.fu = tail call double @llvm.round.f64(double %i.ft)
  %i.fv = fptosi double %i.fu to i32
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph, %bb.x
  %i.fw = phi i32 [ %i.fv, %bb.x ], [ 0, %scalar.ph ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv
  store i32 %i.fw, ptr %i.fx, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.fy = getelementptr inbounds nuw [48 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !101 ; 2 uses
  %i.gb = fcmp ogt double %i.ga, 0.000000e+00
  br i1 %i.gb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %scalar.ph.1
  %i.gc = getelementptr inbounds nuw [64 x i8], ptr %i.cf, i64 %indvars.iv.next
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 56
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !102
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %3, i64 %indvars.iv.next
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !110
  %i.gi = fmul double %i.ge, %i.gh
  %i.gj = fmul double %i.gi, 5.000000e-01
  %i.gk = fdiv double %i.gj, %i.ga
  %i.gl = tail call double @llvm.round.f64(double %i.gk)
  %i.gm = fptosi double %i.gl to i32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %scalar.ph.1
  %i.gn = phi i32 [ %i.gm, %bb.y ], [ 0, %scalar.ph.1 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv.next
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !19
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.dv
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !35

bb.aa:                                            ; preds = %bb.t, %bb.u
  %.pn.pn71 = phi { ptr, i32 } [ %i.dp, %bb.t ], [ %.pn.pn72, %bb.u ]
  resume { ptr, i32 } %.pn.pn71

bb.ab:                                            ; preds = %bb.s
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InvalidInputError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr", align 8   ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #19 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !119
  store ptr %i.a, ptr %3, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !124
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.d = load ptr, ptr %3, align 8, !tbaa !121    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
end_hunk_0
