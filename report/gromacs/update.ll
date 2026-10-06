Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/update?download=true
inline.NumInlined: 2061
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 51
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, ptr }
%"struct.std::array.296" = type { [16384 x float] }
%"class.gmx::ArrayRef.110" = type { %"struct.gmx::ArrayRefIter.111", %"struct.gmx::ArrayRefIter.111" }
%"struct.gmx::ArrayRefIter.111" = type { ptr }
%"class.gmx::ArrayRef.113" = type { %"struct.gmx::ArrayRefIter.114", %"struct.gmx::ArrayRefIter.114" }
%"struct.gmx::ArrayRefIter.114" = type { ptr }
%"class.gmx::ArrayRef.116" = type { %"struct.gmx::ArrayRefIter.117", %"struct.gmx::ArrayRefIter.117" }
%"struct.gmx::ArrayRefIter.117" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.280 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.280 = type { i64, [8 x i8] }
%"class.std::allocator.277" = type { i8 }
%"class.std::filesystem::__cxx11::path" = type { %"class.std::__cxx11::basic_string", %"struct.std::filesystem::__cxx11::path::_List" }
%"struct.std::filesystem::__cxx11::path::_List" = type { %"class.std::unique_ptr.299" }
%"class.std::unique_ptr.299" = type { %"struct.std::__uniq_ptr_data.300" }
%"struct.std::__uniq_ptr_data.300" = type { %"class.std::__uniq_ptr_impl.301" }
%"class.std::__uniq_ptr_impl.301" = type { %"class.std::tuple.302" }
%"class.std::tuple.302" = type { %"struct.std::_Tuple_impl.303" }
%"struct.std::_Tuple_impl.303" = type { %"struct.std::_Head_base.306" }
%"struct.std::_Head_base.306" = type { ptr }
%"class.gmx::ArrayRef.245" = type { %"struct.gmx::ArrayRefIter.246", %"struct.gmx::ArrayRefIter.246" }
%"struct.gmx::ArrayRefIter.246" = type { ptr }
%"class.gmx::BasicMatrix3x3" = type { %"class.gmx::MultiDimArray" }
%"class.gmx::MultiDimArray" = type { %"struct.std::array", %"class.gmx::basic_mdspan" }
%"struct.std::array" = type { [9 x float] }
%"class.gmx::basic_mdspan" = type { [8 x i8], ptr }
%"class.gmx::ArrayRefWithPadding.256" = type { ptr, ptr, ptr }
%"class.gmx::BasicVector" = type { [3 x float] }
%"class.gmx::ArrayRef" = type { %"struct.gmx::ArrayRefIter", %"struct.gmx::ArrayRefIter" }
%"struct.gmx::ArrayRefIter" = type { ptr }
%"class.gmx::ThreeFry2x64" = type { %"class.gmx::ThreeFry2x64General.base", [4 x i8] }
%"class.gmx::ThreeFry2x64General.base" = type <{ %"struct.std::array.273", %"struct.std::array.273", %"struct.std::array.273", i32 }>
%"struct.std::array.273" = type { [2 x i64] }
%"class.gmx::InternalError" = type { %"class.gmx::GromacsException" }
%"class.gmx::GromacsException" = type { %"class.std::exception", %"class.std::shared_ptr.274" }
%"class.std::exception" = type { ptr }
%"class.std::shared_ptr.274" = type { %"class.std::__shared_ptr.275" }
%"class.std::__shared_ptr.275" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::unique_ptr.286" = type { %"struct.std::__uniq_ptr_data.287" }
%"struct.std::__uniq_ptr_data.287" = type { %"class.std::__uniq_ptr_impl.288" }
%"class.std::__uniq_ptr_impl.288" = type { %"class.std::tuple.289" }
%"class.std::tuple.289" = type { %"struct.std::_Tuple_impl.290" }
%"struct.std::_Tuple_impl.290" = type { %"struct.std::_Head_base.293" }
%"struct.std::_Head_base.293" = type { ptr }
%"struct.std::type_index" = type { ptr }
%"class.gmx::ExceptionInitializer" = type { %"class.std::__cxx11::basic_string", %"class.std::vector.281" }
%"class.std::vector.281" = type { %"struct.std::_Vector_base.282" }
%"struct.std::_Vector_base.282" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::__exception_ptr::exception_ptr, std::allocator<std::__exception_ptr::exception_ptr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.gmx::ExceptionInfo" = type { %"class.gmx::internal::IExceptionInfo", %"struct.gmx::ThrowLocation" }
%"class.gmx::internal::IExceptionInfo" = type { ptr }
%"struct.gmx::ThrowLocation" = type <{ ptr, ptr, i32, [4 x i8] }>
%class.anon = type { i32, i32, i8, float, float, %"class.gmx::ArrayRef", %"class.gmx::ArrayRef", %"class.gmx::ArrayRef.116", ptr, %"class.gmx::ArrayRef.116", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %"class.gmx::BasicMatrix3x3" }

$__clang_call_terminate = comdat any

$_ZN3gmx6Update4ImplD2Ev = comdat any

$_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev = comdat any

$_ZN12gmx_stochd_tD2Ev = comdat any

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb = comdat any

$_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE17resizeWithPaddingEl = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE7reserveEm = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_ = comdat any

$_ZNSt6vectorIdSaIdEE17_M_default_appendEm = comdat any

$_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE = comdat any

$_ZN3gmx16GromacsExceptionD2Ev = comdat any

$_ZN3gmx20ExceptionInitializerD2Ev = comdat any

$_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE = comdat any

$_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE = comdat any

$_ZNSt10filesystem7__cxx114pathD2Ev = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_ = comdat any

$_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_ = comdat any

$_ZNSt7__cxx119to_stringEm = comdat any

$_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

$_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"vector<bool>::_M_fill_insert\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@_ZTISt9exception = external constant ptr
@.str.3 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ekinstate->ekinh\00", align 1
@.str.5 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/mdlib/update.cpp\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ekinstate->ekinf\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"ekinstate->ekinh_old\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@0 = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@1 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 22, ptr @0 }, align 8
@2 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 22, ptr @0 }, align 8
@.str.66 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/random/threefry.h\00", align 1
@_ZTIN3gmx13InternalErrorE = external constant ptr
@_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZTIN3gmx8internal14IExceptionInfoE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant [71 x i8] c"N3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE\00", comdat, align 1
@_ZTIN3gmx8internal14IExceptionInfoE = external constant ptr
@_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE = linkonce_odr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr @_ZN3gmx8internal14IExceptionInfoD2Ev, ptr @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev] }, comdat, align 8
@_ZTVN3gmx13InternalErrorE = external constant { [6 x ptr] }, align 8
@_ZTVN3gmx16GromacsExceptionE = external constant { [6 x ptr] }, align 8
@.str.67 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E = external local_unnamed_addr global %"struct.std::array.296", align 4
@.str.68 = private unnamed_addr constant [69 x i8] c"Cannot increment random engine defined with 0 internal counter bits.\00", align 1
@__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE = private unnamed_addr constant [139 x i8] c"static void gmx::internal::highBitCounter::increment(std::array<UIntType, words> *) [UIntType = unsigned long, words = 2UL, highBits = 0U]\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"incons\00", align 1
@.str.70 = private unnamed_addr constant [56 x i8] c"update_coords called for velocity without VV integrator\00", align 1
@.str.71 = private unnamed_addr constant [37 x i8] c"Don't know how to update coordinates\00", align 1
@.str.72 = private unnamed_addr constant [39 x i8] c"Invalid arguments of mp_with_index (i=\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c")\00", align 1
@"__PRETTY_FUNCTION__._ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_" = private unnamed_addr constant [175 x i8] c"auto gmx::compat::mp_with_index(std::size_t, F &&) [N = 1UL, F = (lambda at /opt-bench/work/gromacs/gromacs/src/gromacs/utility/include/gromacs/utility/template_mp.h:102:25)]\00", align 1
@.str.74 = private unnamed_addr constant [58 x i8] c"/opt-bench/work/gromacs/gromacs/src/gromacs/compat/mp11.h\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits = private unnamed_addr constant [201 x i8] c"00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899\00", align 16

@_ZN3gmx6UpdateC1ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN3gmx6UpdateC2ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE
@_ZN3gmx6UpdateD1Ev = unnamed_addr alias void (ptr), ptr @_ZN3gmx6UpdateD2Ev
@_ZN12gmx_stochd_tC1ERK10t_inputrec = unnamed_addr alias void (ptr, ptr), ptr @_ZN12gmx_stochd_tC2ERK10t_inputrec
@_ZN3gmx6Update4ImplC1ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE = unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN3gmx6Update4ImplC2ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6UpdateC2ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #29 ; 3 uses
  invoke void @_ZN3gmx6Update4ImplC1ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(224) %2, ptr noundef %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #30
  resume { ptr, i32 } %i.b
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #31
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx6UpdateD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx6Update4ImplESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx6Update4ImplEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx6Update4ImplEEclEPS2_.exit.i: ; preds = %bb.a
  tail call void @_ZN3gmx6Update4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.a) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 232) #30
  br label %_ZNSt10unique_ptrIN3gmx6Update4ImplESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx6Update4ImplESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN3gmx6Update4ImplEEclEPS2_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx6Update4ImplD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.b)
          to label %_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #31
  unreachable

_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i.i1 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i1, label %_ZNSt6vectorIfSaIfEED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit.i

_ZNSt6vectorIfSaIfEED2Ev.exit.i:                  ; preds = %bb.d, %_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r                       ; 2 uses
  %i.t = ashr exact i64 %i.s, 3
  %i.u = sub nsw i64 0, %i.t
  %i.v = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.u
  tail call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.s) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i

_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i:           ; preds = %bb.e, %_ZNSt6vectorIfSaIfEED2Ev.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !30
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = sub i64 %i.aa, %i.ab
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.ac) #30
  br label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit.i

_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit.i: ; preds = %bb.f, %_ZNSt13_Bvector_baseISaIbEED2Ev.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !33 ; 3 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !34
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #30
  br label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit.i

_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit.i: ; preds = %bb.g, %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit.i
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !19  ; 3 uses
  %.not.i.i.i3.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i3.i, label %_ZN12gmx_stochd_tD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #30
  br label %_ZN12gmx_stochd_tD2Ev.exit

_ZN12gmx_stochd_tD2Ev.exit:                       ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit.i, %bb.h
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.a)
          to label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #31
  unreachable

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN12gmx_stochd_tD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m                       ; 2 uses
  %i.o = ashr exact i64 %i.n, 3
  %i.p = sub nsw i64 0, %i.o
  %i.q = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.p
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.n) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #30
  br label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit

_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit:   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !33   ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #30
  br label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit

_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit:   ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit, %bb.e
  %i.af = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIfSaIfEED2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !20
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %i.af to i64
  %i.ak = sub i64 %i.ai, %i.aj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.ak) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit4

_ZNSt6vectorIfSaIfEED2Ev.exit4:                   ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit, %bb.f
  ret void
}

declare void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(40) ptr @_ZNK3gmx6Update25getAndersenRandomizeGroupEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK3gmx6Update17getBoltzmanFactorEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull ptr @_ZN3gmx6Update2xpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK3gmx6Update6deformEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !59
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS4_IKfEENS4_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISC_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.110") align 8 captures(none) %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.113") align 8 captures(none) %6, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef.116") align 8 captures(none) %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %13, ptr noundef %14, i1 noundef zeroext %15) local_unnamed_addr #0 align 2 {
bb.a:
  %16 = alloca %"class.gmx::ArrayRef.110", align 8 ; 3 uses
  %17 = alloca %"class.gmx::ArrayRef.113", align 8 ; 3 uses
  %18 = alloca %"class.gmx::ArrayRef.116", align 8 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = load ptr, ptr %5, align 8, !tbaa !61     ; 3 uses
  store ptr %i.b, ptr %16, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.b to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  store ptr %i.i, ptr %i.c, align 8, !tbaa !61
  %i.j = load ptr, ptr %6, align 8, !tbaa !63     ; 3 uses
  store ptr %i.j, ptr %17, align 8, !tbaa !63
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !63
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  store ptr %i.q, ptr %i.k, align 8, !tbaa !63
  %i.r = load ptr, ptr %7, align 8, !tbaa !65     ; 3 uses
  store ptr %i.r, ptr %18, align 8, !tbaa !65
  %i.s = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x
  store ptr %i.y, ptr %i.s, align 8, !tbaa !65
  tail call void @_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef nonnull byval(%"class.gmx::ArrayRef.110") align 8 %16, ptr noundef nonnull byval(%"class.gmx::ArrayRef.113") align 8 %17, ptr noundef nonnull byval(%"class.gmx::ArrayRef.116") align 8 %18, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %10, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %13, ptr noundef %14, i1 noundef zeroext %15)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, i64 noundef %2, i32 noundef %3, i1 noundef zeroext %4, ptr noundef byval(%"class.gmx::ArrayRef.110") align 8 %5, ptr noundef byval(%"class.gmx::ArrayRef.113") align 8 %6, ptr noundef byval(%"class.gmx::ArrayRef.116") align 8 %7, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(56) %12, i32 noundef %13, ptr noundef %14, i1 noundef zeroext %15) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i8, align 1                       ; 2 uses
  %i.d = alloca ptr, align 8                      ; 2 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = alloca ptr, align 8                      ; 2 uses
  %i.h = alloca i8, align 1                       ; 2 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::allocator.277", align 1 ; 3 uses
  %18 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.i = alloca float, align 4                    ; 4 uses
  %i.j = alloca i32, align 4                      ; 4 uses
  %i.k = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i64 %2, ptr %i.a, align 8, !tbaa !67
  store i32 %3, ptr %i.b, align 4, !tbaa !68
  %i.l = zext i1 %4 to i8
  store i8 %i.l, ptr %i.c, align 1, !tbaa !70
  store ptr %8, ptr %i.d, align 8, !tbaa !72
  store ptr %11, ptr %i.e, align 8, !tbaa !74
  store i32 %13, ptr %i.f, align 4, !tbaa !68
  store ptr %14, ptr %i.g, align 8, !tbaa !76
  %i.m = zext i1 %15 to i8
  store i8 %i.m, ptr %i.h, align 1, !tbaa !70
  %i.n = add i32 %13, -7
  %or.cond = icmp ult i32 %i.n, 2
  br i1 %or.cond, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !172
  %i.q = and i32 %i.p, -2
  %switch = icmp eq i32 %i.q, 10
  br i1 %switch, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.70, ptr noundef nonnull align 1 dereferenceable(1) %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %18, ptr noundef nonnull align 1 dereferenceable(61) @.str.5, i8 noundef zeroext 2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef nonnull @.str.69, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(40) %18, i32 noundef 1775) #32
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.r, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #20
  %i.t = load ptr, ptr %16, align 8, !tbaa !176   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8, !tbaa !177
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #20
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load double, ptr %i.y, align 8, !tbaa !178
  %i.aa = fptrunc double %i.z to float
  store float %i.aa, ptr %i.i, align 4, !tbaa !179
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !354 ; 2 uses
  %i.ad = and i32 %i.ac, 16384
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !369
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 688
  tail call void @_Z21update_disres_historyRK12t_disresdataP9history_t(ptr noundef nonnull align 8 dereferenceable(104) %i.af, ptr noundef nonnull %i.ag)
  %.pre = load i32, ptr %i.ab, align 4, !tbaa !354
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = phi i32 [ %.pre, %bb.j ], [ %i.ac, %bb.i ]
  %i.ai = and i32 %i.ah, 65536
  %.not16 = icmp eq i32 %i.ai, 0
  br i1 %.not16, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !370
  tail call void @_ZN12t_oriresdata13updateHistoryEv(ptr noundef nonnull align 8 dereferenceable(544) %i.ak)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.al = tail call noundef i32 @_Z20gmx_omp_nthreads_get17ModuleMultiThread(i32 noundef 6) ; 2 uses
  store i32 %i.al, ptr %i.j, align 4, !tbaa !68
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.al)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %i.d, ptr nonnull %0, ptr nonnull %9, ptr nonnull %1, ptr nonnull %i.i, ptr nonnull %i.a, ptr nonnull %6, ptr nonnull %7, ptr nonnull %i.e, ptr nonnull %12, ptr nonnull %i.c, ptr nonnull %5, ptr nonnull %i.g, ptr nonnull %i.h, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update13finish_updateERK10t_inputrecbiP7t_stateP13gmx_wallcycleb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, i1 noundef zeroext %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !210
  tail call void @_ZN3gmx6Update4Impl13finish_updateERK10t_inputrecbiNS_8ArrayRefIKtEEP7t_stateP13gmx_wallcycleb(ptr noundef nonnull align 8 dereferenceable(232) %i.a, ptr noundef nonnull align 8 dereferenceable(888) %1, i1 noundef zeroext %2, i32 noundef %3, ptr %i.b, ptr poison, ptr noundef %4, ptr noundef %5, i1 noundef zeroext %6)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update4Impl13finish_updateERK10t_inputrecbiNS_8ArrayRefIKtEEP7t_stateP13gmx_wallcycleb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(888) %1, i1 noundef zeroext %2, i32 noundef %3, ptr nofree readonly captures(none) %4, ptr nofree readnone captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, i1 noundef zeroext %8) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %9 = alloca %"class.gmx::ArrayRef.116", align 8 ; 5 uses
  %10 = alloca %"class.gmx::ArrayRef.245", align 8 ; 5 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  store i32 %3, ptr %i.a, align 4, !tbaa !68
  %i.c = icmp eq ptr %7, null                     ; 2 uses
  br i1 %i.c, label %_Z23wallcycle_start_nocountP13gmx_wallcycle16WallCycleCounter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef nonnull %7)
  %i.d = tail call { i32, i32 } asm sideeffect "rdtscp", "={ax},={dx},~{ecx},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !211 ; 2 uses
  %i.e = extractvalue { i32, i32 } %i.d, 0
  %i.f = extractvalue { i32, i32 } %i.d, 1
  %i.g = zext i32 %i.e to i64
  %i.h = zext i32 %i.f to i64
  %i.i = shl nuw i64 %i.h, 32
  %i.j = or disjoint i64 %i.i, %i.g               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 1152 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 1168
  store i64 %i.j, ptr %i.l, align 8, !tbaa !214
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 2584
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !216  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 2592
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !216
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 2608 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !233
  %i.t = add nsw i32 %i.s, 1                      ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !233
  %i.u = icmp eq i32 %i.t, 3
  br i1 %i.u, label %bb.d, label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 2612
  %i.w = load i32, ptr %i.v, align 4, !tbaa !234
  %i.x = mul nsw i32 %i.w, 60
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr [24 x i8], ptr %i.n, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 1152    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !235
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !235
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 2616
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !236
  %i.af = sub i64 %i.j, %i.ae
  %i.ag = getelementptr i8, ptr %i.z, i64 1160    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !237
  %i.ai = add i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !237
  br label %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit.i

_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  %i.aj = load i32, ptr %i.k, align 8, !tbaa !235
  %i.ak = add nsw i32 %i.aj, -1
  store i32 %i.ak, ptr %i.k, align 8, !tbaa !235
  br label %_Z23wallcycle_start_nocountP13gmx_wallcycle16WallCycleCounter.exit

_Z23wallcycle_start_nocountP13gmx_wallcycle16WallCycleCounter.exit: ; preds = %bb.a, %_Z15wallcycle_startP13gmx_wallcycle16WallCycleCounter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 5 uses
  %i.an = sext i32 %3 to i64                      ; 2 uses
  %i.ao = getelementptr inbounds [12 x i8], ptr %i.am, i64 %i.an
  store ptr %i.am, ptr %9, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ao, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 416
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !238 ; 5 uses
  %i.as = getelementptr inbounds [12 x i8], ptr %i.ar, i64 %i.an
  store ptr %i.ar, ptr %10, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.as, ptr %i.at, align 8
  %or.cond = and i1 %2, %8
  br i1 %or.cond, label %bb.e, label %bb.l

bb.e:                                             ; preds = %_Z23wallcycle_start_nocountP13gmx_wallcycle16WallCycleCounter.exit
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !239
  %i.aw = icmp sgt i32 %3, 0
  br i1 %i.aw, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 8 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !241
  %i.az = zext i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [12 x i8], ptr %i.av, i64 %i.az ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !68
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv
  %i.be = load float, ptr %i.bd, align 4, !tbaa !179
  %i.bf = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %indvars.iv
  store float %i.be, ptr %i.bf, align 4, !tbaa !179
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !68
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !179
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  store float %i.bl, ptr %i.bn, align 4, !tbaa !179
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !68
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.br = getelementptr inbounds nuw [12 x i8], ptr %i.am, i64 %indvars.iv
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !179
  %i.bu = getelementptr inbounds nuw [12 x i8], ptr %i.ar, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store float %i.bt, ptr %i.bv, align 4, !tbaa !179
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN12gmx_stochd_tC2ERK10t_inputrec:bb.a
  ]

bb.b:                                             ; preds = %bb.a
  %.not103 = icmp eq i32 %i.i, 0
  br i1 %.not103, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.i to i64
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.l)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.o, %bb.n, %bb.g, %bb.f, %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !19   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.v

bb.e:                                             ; preds = %bb.a
  %i.o = sext i32 %i.i to i64                     ; 5 uses
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.o)
          to label %._ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit_crit_edge80 unwind label %bb.d

._ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit_crit_edge80: ; preds = %bb.f
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !263
  %.pre81 = load ptr, ptr %i.b, align 8, !tbaa !29
  br label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit

_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit: ; preds = %bb.e, %._ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit_crit_edge80
  %i.p = phi ptr [ %.pre81, %._ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit_crit_edge80 ], [ null, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %.pre, %._ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit_crit_edge80 ], [ null, %bb.e ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2                   ; 3 uses
  %i.w = icmp ult i64 %i.v, %i.o
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit
  %i.x = sub nuw nsw i64 %i.o, %i.v
  invoke void @_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.x)
          to label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit unwind label %bb.d

bb.h:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE6resizeEm.exit
  %i.y = icmp ugt i64 %i.v, %i.o
  br i1 %i.y, label %bb.i, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.o ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.q, %i.z
  br i1 %.not.i.i49, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit, label %_ZSt8_DestroyIP14gmx_sd_sigma_tS0_EvT_S2_RSaIT0_E.exit.i.i

_ZSt8_DestroyIP14gmx_sd_sigma_tS0_EvT_S2_RSaIT0_E.exit.i.i: ; preds = %bb.i
  store ptr %i.z, ptr %i.r, align 8, !tbaa !263
  br label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit

_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit: ; preds = %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIP14gmx_sd_sigma_tS0_EvT_S2_RSaIT0_E.exit.i.i
  %i.aa = icmp sgt i32 %i.i, 0
  br i1 %i.aa, label %.lr.ph, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

.lr.ph:                                           ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !394
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4, !tbaa !179 ; 2 uses
  %i.ah = fcmp ogt float %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load double, ptr %i.ad, align 8, !tbaa !178
  %i.aj = fneg double %i.ai
  %i.ak = fpext float %i.ag to double
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = tail call double @exp(double noundef %i.al) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi double [ %i.am, %bb.k ], [ 1.000000e+00, %bb.j ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  store double %.sink, ptr %i.an, align 8, !tbaa !258
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.j, !llvm.loop !391

bb.m:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !264
  %i.aq = and i32 %i.ap, -2
  %switch = icmp eq i32 %i.aq, 4
  br i1 %switch, label %bb.n, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.n:                                             ; preds = %bb.m
  %i.ar = sext i32 %i.i to i64                    ; 5 uses
  invoke void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr null, i32 0, i64 noundef %i.ar, i1 noundef zeroext false)
          to label %_ZNSt6vectorIbSaIbEE6resizeEmb.exit unwind label %bb.d

_ZNSt6vectorIbSaIbEE6resizeEmb.exit:              ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !255 ; 2 uses
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !19  ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 2                 ; 3 uses
  %i.az = icmp ult i64 %i.ay, %i.ar
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.ba = sub nuw nsw i64 %i.ar, %i.ay
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.ba)
          to label %_ZNSt6vectorIfSaIfEE6resizeEm.exit55 unwind label %bb.d

bb.p:                                             ; preds = %_ZNSt6vectorIbSaIbEE6resizeEmb.exit
  %i.bb = icmp ugt i64 %i.ay, %i.ar
  br i1 %i.bb, label %bb.q, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit55

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ar ; 2 uses
  %.not.i.i52 = icmp eq ptr %i.at, %i.bc
  br i1 %.not.i.i52, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit55, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i53

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i53:      ; preds = %bb.q
  store ptr %i.bc, ptr %i.as, align 8, !tbaa !255
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit55

_ZNSt6vectorIfSaIfEE6resizeEm.exit55:             ; preds = %bb.o, %bb.p, %bb.q, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i53
  %i.bd = icmp sgt i32 %i.i, 0
  br i1 %i.bd, label %.lr.ph72, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

.lr.ph72:                                         ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit55
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 768
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !395
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 808
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !394
  %wide.trip.count78 = zext nneg i32 %i.i to i64
  %i.bi = load ptr, ptr %i.c, align 8, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph72, %bb.u
  %indvars.iv75 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next76, %bb.u ] ; 6 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv75
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !179 ; 2 uses
  %i.bl = fcmp ogt float %i.bk, 0.000000e+00
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv75
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !179
  %i.bo = fcmp ogt float %i.bn, 0.000000e+00
  %or.cond = select i1 %i.bo, i1 %i.bl, i1 false
  %i.bp = lshr i64 %indvars.iv75, 6
  %.zext = and i64 %i.bp, 67108863
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.zext ; 4 uses
  %i.br = and i64 %indvars.iv75, 63
  %i.bs = shl nuw i64 1, %i.br                    ; 2 uses
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !67
  %i.bu = or i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.bq, align 8, !tbaa !67
  %i.bv = fpext nnan float %i.bk to double
  %i.bw = fmul nnan double %i.bv, f0x3F81072C483AF26D
  %i.bx = fptrunc double %i.bw to float
  %i.by = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv75
  store float %i.bx, ptr %i.bz, align 4, !tbaa !179
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ca = xor i64 %i.bs, -1
  %i.cb = load i64, ptr %i.bq, align 8, !tbaa !67
  %i.cc = and i64 %i.cb, %i.ca
  store i64 %i.cc, ptr %i.bq, align 8, !tbaa !67
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.r, !llvm.loop !392

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.l, %bb.u, %bb.b, %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE6resizeEm.exit, %_ZNSt6vectorIfSaIfEE6resizeEm.exit55, %bb.c, %bb.m
  ret void

bb.v:                                             ; preds = %bb.d
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !20
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = ptrtoint ptr %i.n to i64
  %i.ch = sub i64 %i.cf, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.ch) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %bb.d, %bb.v
  %i.ci = load ptr, ptr %i.c, align 8, !tbaa !23  ; 2 uses
  %.not.i.i60 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i60, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !26  ; 2 uses
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.co
  tail call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cm) #30
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.w
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !29  ; 3 uses
  %.not.i.i.i61 = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30
  %i.ct = ptrtoint ptr %i.cs to i64
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cq, i64 noundef %i.cv) #30
  br label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit

_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit:   ; preds = %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, %bb.x
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !33  ; 3 uses
  %.not.i.i.i62 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !34
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = sub i64 %i.cz, %i.da
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cw, i64 noundef %i.db) #30
  br label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit

_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit:   ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EED2Ev.exit, %bb.y
  %i.dc = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %.not.i.i.i63 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i63, label %_ZNSt6vectorIfSaIfEED2Ev.exit64, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !20
  %i.df = ptrtoint ptr %i.de to i64
  %i.dg = ptrtoint ptr %i.dc to i64
  %i.dh = sub i64 %i.df, %i.dg
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dc, i64 noundef %i.dh) #30
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit64

_ZNSt6vectorIfSaIfEED2Ev.exit64:                  ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EED2Ev.exit, %bb.z
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !255  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !19     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !179
  %i.p = getelementptr i8, ptr %i.b, i64 4        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 2       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !255
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store float 0.000000e+00, ptr %i.y, align 4, !tbaa !179
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !179
  br label %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPfmfET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.x, ptr align 4 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !20
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36: ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !255
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPfmfET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !402  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !33     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP14gmx_sd_const_tmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP14gmx_sd_const_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !258
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !402
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI14gmx_sd_const_tSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorI14gmx_sd_const_tSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !258
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorI14gmx_sd_const_tSaIS0_EE12_M_check_lenEmPKc.exit
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.d, -8
  %i.z = sub i64 %i.y, %i.e                       ; 3 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  %i.ac = sub i64 %i.e, %i.x
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.z, 120
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 12
  %n.vec = and i64 %i.ab, 4611686018427387888     ; 4 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 4 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.ai = getelementptr i8, ptr %next.gep41, i64 32
  %i.aj = getelementptr i8, ptr %next.gep41, i64 64
  %i.ak = getelementptr i8, ptr %next.gep41, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep41, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  %wide.load42 = load <4 x i64>, ptr %i.ai, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  %wide.load43 = load <4 x i64>, ptr %i.aj, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  %wide.load44 = load <4 x i64>, ptr %i.ak, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <4 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  store <4 x i64> %wide.load42, ptr %i.al, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  store <4 x i64> %wide.load43, ptr %i.am, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  store <4 x i64> %wide.load44, ptr %i.an, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !405

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ab, 4611686018427387900   ; 3 uses
  %i.ap = shl i64 %n.vec46, 3                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index47, 3                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.u, i64 %i.as
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %wide.load50 = load <4 x i64>, ptr %next.gep49, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  store <4 x i64> %wide.load50, ptr %next.gep48, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  %index.next51 = add nuw i64 %index47, 4         ; 2 uses
  %i.at = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !400

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ab, %n.vec46
  br i1 %cmp.n52, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.au = load i64, ptr %.0911.i.i.i, align 8, !tbaa !252, !alias.scope !404, !noalias !403
  store i64 %i.au, ptr %.012.i.i.i, align 8, !tbaa !252, !alias.scope !403, !noalias !404
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !401

_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorI14gmx_sd_const_tSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !34
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #30
  br label %_ZNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorI14gmx_sd_const_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %1
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !402
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_sd_const_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !263  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !29     ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 2305843009213693952
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 2305843009213693951        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIP14gmx_sd_sigma_tmS0_ET_S2_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIP14gmx_sd_sigma_tmS0_ET_S2_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 2                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !260
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !263
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorI14gmx_sd_sigma_tSaIS0_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorI14gmx_sd_sigma_tSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2305843009213693951) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 2
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !260
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %iter.check

iter.check:                                       ; preds = %_ZNKSt6vectorI14gmx_sd_sigma_tSaIS0_EE12_M_check_lenEmPKc.exit
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.d, -4
  %i.z = sub i64 %i.y, %i.e                       ; 3 uses
  %i.aa = lshr i64 %i.z, 2
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.z, 28
  %i.ac = sub i64 %i.e, %i.x
  %diff.check = icmp ugt i64 %i.ac, -128
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check40 = icmp ult i64 %i.z, 124
  br i1 %min.iters.check40, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, 9223372036854775776     ; 4 uses
  %i.ae = shl i64 %n.vec, 2                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.u, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.c, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ah ; 4 uses
  %next.gep41 = getelementptr i8, ptr %i.c, i64 %i.ah ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.ai = getelementptr i8, ptr %next.gep41, i64 32
  %i.aj = getelementptr i8, ptr %next.gep41, i64 64
  %i.ak = getelementptr i8, ptr %next.gep41, i64 96
  %wide.load = load <8 x i32>, ptr %next.gep41, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  %wide.load42 = load <8 x i32>, ptr %i.ai, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  %wide.load43 = load <8 x i32>, ptr %i.aj, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  %wide.load44 = load <8 x i32>, ptr %i.ak, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  store <8 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  store <8 x i32> %wide.load42, ptr %i.al, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  store <8 x i32> %wide.load43, ptr %i.am, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  store <8 x i32> %wide.load44, ptr %i.an, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !409

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !414

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec46 = and i64 %i.ab, 9223372036854775800   ; 3 uses
  %i.ap = shl i64 %n.vec46, 2                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.u, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.c, i64 %i.ap
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index47 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next51, %vec.epilog.vector.body ] ; 2 uses
  %i.as = shl i64 %index47, 2                     ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.u, i64 %i.as
  %next.gep49 = getelementptr i8, ptr %i.c, i64 %i.as
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %wide.load50 = load <8 x i32>, ptr %next.gep49, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  store <8 x i32> %wide.load50, ptr %next.gep48, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  %index.next51 = add nuw i64 %index47, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next51, %n.vec46
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !410

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n52 = icmp eq i64 %i.ab, %n.vec46
  br i1 %cmp.n52, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.ph = phi ptr [ %i.u, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.aq, %vec.epilog.middle.block ]
  %.0911.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.ar, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i ], [ %.012.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i ], [ %.0911.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %i.au = load i32, ptr %.0911.i.i.i, align 4, !tbaa !179, !alias.scope !413, !noalias !412
  store i32 %i.au, ptr %.012.i.i.i, align 4, !tbaa !179, !alias.scope !412, !noalias !413
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 4 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 4
  %.not.i.i.i = icmp eq ptr %i.av, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i, !llvm.loop !411

_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %_ZNKSt6vectorI14gmx_sd_sigma_tSaIS0_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE13_M_deallocateEPS0_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !30
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.az) #30
  br label %_ZNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE13_M_deallocateEPS0_m.exit37

_ZNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE13_M_deallocateEPS0_m.exit37: ; preds = %_ZNSt6vectorI14gmx_sd_sigma_tSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %1
  store ptr %i.ba, ptr %i.a, align 8, !tbaa !263
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.s
  store ptr %i.bb, ptr %i.h, align 8, !tbaa !30
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIP14gmx_sd_sigma_tmS0_ET_S2_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE13_M_deallocateEPS0_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr %1, i32 %2, i64 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.neg = sext i1 %4 to i8                        ; 2 uses
  %i.a = icmp eq i64 %3, 0
  br i1 %i.a, label %bb.az, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = load ptr, ptr %0, align 8, !tbaa !23
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = shl nsw i64 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !262  ; 4 uses
  %i.m = ptrtoint ptr %i.j to i64                 ; 3 uses
  %i.n = sub i64 %i.m, %i.f
  %i.o = shl nsw i64 %i.n, 3
  %i.p = zext i32 %i.l to i64                     ; 4 uses
  %i.q = add nsw i64 %i.o, %i.p                   ; 5 uses
  %i.r = sub i64 %i.h, %i.q
  %.not = icmp ult i64 %i.r, %3
  br i1 %.not, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.t = sub i64 %i.m, %i.s
  %i.u = shl nsw i64 %i.t, 3
  %i.v = zext i32 %2 to i64                       ; 5 uses
  %i.w = sub nsw i64 %i.p, %i.v                   ; 2 uses
  %i.x = add i64 %i.w, %i.u                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader: ; preds = %bb.c
  %i.z = add nsw i64 %3, %i.p                     ; 3 uses
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 63                       ; 3 uses
  %i.ac = sdiv i64 %i.z, 64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.ac
  %i.ae = and i64 %i.z, -9223372036854775745
  %i.af = icmp ugt i64 %i.ae, -9223372036854775808
  %storemerge.idx.i.i.i = select i1 %i.af, i64 -8, i64 0
  %storemerge.i.i.i = getelementptr inbounds i8, ptr %i.ad, i64 %storemerge.idx.i.i.i ; 2 uses
  %i.ag = shl i64 %i.m, 3
  %i.ah = add i64 %i.ag, %i.p
  %i.ai = xor i64 %i.v, -1
  %i.aj = add i64 %i.ah, %i.ai
  %i.ak = shl i64 %i.s, 3
  %xtraiter = and i64 %i.w, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol:     ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader
  %i.al = add i32 %i.l, -1
  %i.am = icmp eq i32 %i.l, 0                     ; 2 uses
  %spec.select.i.i.i.i.i.prol = select i1 %i.am, i32 63, i32 %i.al ; 2 uses
  %spec.select19.idx.i.i.i.i.i.prol = select i1 %i.am, i64 -8, i64 0
  %spec.select19.i.i.i.i.i.prol = getelementptr inbounds i8, ptr %i.j, i64 %spec.select19.idx.i.i.i.i.i.prol ; 2 uses
  %i.an = zext nneg i32 %spec.select.i.i.i.i.i.prol to i64
  %i.ao = shl nuw i64 1, %i.an
  %i.ap = add nsw i32 %i.ab, -1
  %i.aq = icmp eq i32 %i.ab, 0                    ; 2 uses
  %.sroa.59.1.i.i.i.i.i.prol = select i1 %i.aq, i32 63, i32 %i.ap ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i.prol = select i1 %i.aq, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i.prol = getelementptr inbounds i8, ptr %storemerge.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i.prol ; 4 uses
  %i.ar = zext nneg i32 %.sroa.59.1.i.i.i.i.i.prol to i64
  %i.as = shl nuw i64 1, %i.ar                    ; 2 uses
  %i.at = load i64, ptr %spec.select19.i.i.i.i.i.prol, align 8, !tbaa !67
  %i.au = and i64 %i.ao, %i.at
  %.not.i.i.i.i.i.i.prol = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i.i.i.i.prol, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol
  %i.av = load i64, ptr %.sroa.07.1.i.i.i.i.i.prol, align 8, !tbaa !67
  %i.aw = or i64 %i.av, %i.as
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol
  %i.ax = xor i64 %i.as, -1
  %i.ay = load i64, ptr %.sroa.07.1.i.i.i.i.i.prol, align 8, !tbaa !67
  %i.az = and i64 %i.ay, %i.ax
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol: ; preds = %bb.e, %bb.d
  %storemerge.i.i.i.i.i.prol = phi i64 [ %i.aw, %bb.d ], [ %i.az, %bb.e ]
  store i64 %storemerge.i.i.i.i.i.prol, ptr %.sroa.07.1.i.i.i.i.i.prol, align 8, !tbaa !67
  %i.ba = add nsw i64 %i.x, -1
  br label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit: ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader
  %.024.i.i.i.i.i.unr = phi i64 [ %i.x, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ], [ %i.ba, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol ]
  %.sroa.07.023.i.i.i.i.i.unr = phi ptr [ %storemerge.i.i.i, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol ]
  %.sroa.59.022.i.i.i.i.i.unr = phi i32 [ %i.ab, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ], [ %.sroa.59.1.i.i.i.i.i.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol ]
  %.sroa.012.021.i.i.i.i.i.unr = phi ptr [ %i.j, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ], [ %spec.select19.i.i.i.i.i.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol ]
  %.sroa.515.020.i.i.i.i.i.unr = phi i32 [ %i.l, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.preheader ], [ %spec.select.i.i.i.i.i.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.prol ]
  %i.bb = icmp eq i64 %i.aj, %i.ak
  br i1 %i.bb, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i

_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i:          ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1
  %.024.i.i.i.i.i = phi i64 [ %i.cg, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1 ], [ %.024.i.i.i.i.i.unr, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i = phi ptr [ %.sroa.07.1.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1 ], [ %.sroa.07.023.i.i.i.i.i.unr, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit ]
  %.sroa.59.022.i.i.i.i.i = phi i32 [ %.sroa.59.1.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1 ], [ %.sroa.59.022.i.i.i.i.i.unr, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.012.021.i.i.i.i.i = phi ptr [ %spec.select19.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1 ], [ %.sroa.012.021.i.i.i.i.i.unr, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit ]
  %.sroa.515.020.i.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1 ], [ %.sroa.515.020.i.i.i.i.i.unr, %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.bc = add i32 %.sroa.515.020.i.i.i.i.i, -1
  %i.bd = icmp eq i32 %.sroa.515.020.i.i.i.i.i, 0 ; 2 uses
  %spec.select.i.i.i.i.i = select i1 %i.bd, i32 63, i32 %i.bc ; 3 uses
  %spec.select19.idx.i.i.i.i.i = select i1 %i.bd, i64 -8, i64 0
  %spec.select19.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.012.021.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i ; 2 uses
  %i.be = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.bf = shl nuw i64 1, %i.be
  %i.bg = add i32 %.sroa.59.022.i.i.i.i.i, -1
  %i.bh = icmp eq i32 %.sroa.59.022.i.i.i.i.i, 0  ; 2 uses
  %.sroa.59.1.i.i.i.i.i = select i1 %i.bh, i32 63, i32 %i.bg ; 3 uses
  %.sroa.07.1.idx.i.i.i.i.i = select i1 %i.bh, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.07.023.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i ; 4 uses
  %i.bi = zext nneg i32 %.sroa.59.1.i.i.i.i.i to i64
  %i.bj = shl nuw i64 1, %i.bi                    ; 2 uses
  %i.bk = load i64, ptr %spec.select19.i.i.i.i.i, align 8, !tbaa !67
  %i.bl = and i64 %i.bf, %i.bk
  %.not.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.bm = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !67
  %i.bn = or i64 %i.bm, %i.bj
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i
  %i.bo = xor i64 %i.bj, -1
  %i.bp = load i64, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !67
  %i.bq = and i64 %i.bp, %i.bo
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i:      ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.i = phi i64 [ %i.bn, %bb.f ], [ %i.bq, %bb.g ]
  store i64 %storemerge.i.i.i.i.i, ptr %.sroa.07.1.i.i.i.i.i, align 8, !tbaa !67
  %i.br = add i32 %spec.select.i.i.i.i.i, -1
  %i.bs = icmp eq i32 %spec.select.i.i.i.i.i, 0   ; 2 uses
  %spec.select.i.i.i.i.i.1 = select i1 %i.bs, i32 63, i32 %i.br ; 2 uses
  %spec.select19.idx.i.i.i.i.i.1 = select i1 %i.bs, i64 -8, i64 0
  %spec.select19.i.i.i.i.i.1 = getelementptr inbounds i8, ptr %spec.select19.i.i.i.i.i, i64 %spec.select19.idx.i.i.i.i.i.1 ; 2 uses
  %i.bt = zext nneg i32 %spec.select.i.i.i.i.i.1 to i64
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = add i32 %.sroa.59.1.i.i.i.i.i, -1
  %i.bw = icmp eq i32 %.sroa.59.1.i.i.i.i.i, 0    ; 2 uses
  %.sroa.59.1.i.i.i.i.i.1 = select i1 %i.bw, i32 63, i32 %i.bv ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i.1 = select i1 %i.bw, i64 -8, i64 0
  %.sroa.07.1.i.i.i.i.i.1 = getelementptr inbounds i8, ptr %.sroa.07.1.i.i.i.i.i, i64 %.sroa.07.1.idx.i.i.i.i.i.1 ; 4 uses
  %i.bx = zext nneg i32 %.sroa.59.1.i.i.i.i.i.1 to i64
  %i.by = shl nuw i64 1, %i.bx                    ; 2 uses
  %i.bz = load i64, ptr %spec.select19.i.i.i.i.i.1, align 8, !tbaa !67
  %i.ca = and i64 %i.bu, %i.bz
  %.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.i.i.i.i.1, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %i.cb = load i64, ptr %.sroa.07.1.i.i.i.i.i.1, align 8, !tbaa !67
  %i.cc = or i64 %i.cb, %i.by
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1

bb.i:                                             ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i
  %i.cd = xor i64 %i.by, -1
  %i.ce = load i64, ptr %.sroa.07.1.i.i.i.i.i.1, align 8, !tbaa !67
  %i.cf = and i64 %i.ce, %i.cd
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1:    ; preds = %bb.i, %bb.h
  %storemerge.i.i.i.i.i.1 = phi i64 [ %i.cc, %bb.h ], [ %i.cf, %bb.i ]
  store i64 %storemerge.i.i.i.i.i.1, ptr %.sroa.07.1.i.i.i.i.i.1, align 8, !tbaa !67
  %i.cg = add nsw i64 %.024.i.i.i.i.i, -2
  %i.ch = icmp sgt i64 %.024.i.i.i.i.i, 2
  br i1 %i.ch, label %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i, label %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !415

_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit: ; preds = %_ZNSt13_Bit_iteratormmEv.exit.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i.1, %bb.c
  %i.ci = add nsw i64 %3, %i.v                    ; 3 uses
  %i.cj = sdiv i64 %i.ci, 64
  %.idx = shl nsw i64 %i.cj, 3
  %i.ck = and i64 %i.ci, -9223372036854775745
  %i.cl = icmp ugt i64 %i.ck, -9223372036854775808
  %storemerge.idx.i.i.i75 = select i1 %i.cl, i64 -8, i64 0
  %i.cm = add nsw i64 %storemerge.idx.i.i.i75, %.idx ; 2 uses
  %storemerge.i.i.i76 = getelementptr inbounds i8, ptr %1, i64 %i.cm ; 4 uses
  %i.cn = trunc i64 %i.ci to i32
  %i.co = and i32 %i.cn, 63                       ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.cm, 0
  br i1 %.not.i.i.i, label %bb.r, label %bb.j

bb.j:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not26.i.i.i = icmp eq i32 %2, 0
  br i1 %.not26.i.i.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cq = shl nsw i64 -1, %i.v                    ; 2 uses
  br i1 %4, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i64, ptr %1, align 8, !tbaa !67
  %i.cs = or i64 %i.cr, %i.cq
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ct = xor i64 %i.cq, -1
  %i.cu = load i64, ptr %1, align 8, !tbaa !67
  %i.cv = and i64 %i.cu, %i.ct
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i

_ZSt14__fill_bvectorPmjjb.exit.i.i.i:             ; preds = %bb.m, %bb.l
  %storemerge.i.i.i.i = phi i64 [ %i.cv, %bb.m ], [ %i.cs, %bb.l ]
  store i64 %storemerge.i.i.i.i, ptr %1, align 8, !tbaa !67
  %.pre = ptrtoint ptr %i.cp to i64
  br label %bb.n

bb.n:                                             ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i, %bb.j
  %.pre-phi = phi i64 [ %.pre, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %i.s, %bb.j ]
  %.0.i.i.i = phi ptr [ %i.cp, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i ], [ %1, %bb.j ]
  %i.cw = ptrtoint ptr %storemerge.i.i.i76 to i64
  %i.cx = sub i64 %i.cw, %.pre-phi
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i, i8 %.neg, i64 %i.cx, i1 false)
  %.not27.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not27.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nuw nsw i32 64, %i.co
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = lshr i64 -1, %i.cz                      ; 2 uses
  br i1 %4, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.db = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !67
  %i.dc = or i64 %i.db, %i.da
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.dd = xor i64 %i.da, -1
  %i.de = load i64, ptr %storemerge.i.i.i76, align 8, !tbaa !67
  %i.df = and i64 %i.de, %i.dd
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i:           ; preds = %bb.q, %bb.p
  %storemerge.i28.i.i.i = phi i64 [ %i.df, %bb.q ], [ %i.dc, %bb.p ]
  store i64 %storemerge.i28.i.i.i, ptr %storemerge.i.i.i76, align 8, !tbaa !67
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

bb.r:                                             ; preds = %_ZSt13copy_backwardISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %.not25.i.i.i = icmp eq i32 %2, %i.co
  br i1 %.not25.i.i.i, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = shl nsw i64 -1, %i.v
  %i.dh = sub nuw nsw i32 64, %i.co
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = lshr i64 -1, %i.di
  %i.dk = and i64 %i.dj, %i.dg                    ; 2 uses
  br i1 %4, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dl = load i64, ptr %1, align 8, !tbaa !67
  %i.dm = or i64 %i.dl, %i.dk
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.dn = xor i64 %i.dk, -1
  %i.do = load i64, ptr %1, align 8, !tbaa !67
  %i.dp = and i64 %i.do, %i.dn
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i:           ; preds = %bb.u, %bb.t
  %storemerge.i30.i.i.i = phi i64 [ %i.dp, %bb.u ], [ %i.dm, %bb.t ]
  store i64 %storemerge.i30.i.i.i, ptr %1, align 8, !tbaa !67
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit:    ; preds = %bb.n, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i, %bb.r, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i
  %i.dq = load i32, ptr %i.k, align 8, !tbaa !262
  %i.dr = zext i32 %i.dq to i64
  %i.ds = add nsw i64 %3, %i.dr                   ; 3 uses
  %i.dt = sdiv i64 %i.ds, 64
  %i.du = load ptr, ptr %i.i, align 8, !tbaa !23
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.dt
  %i.dw = and i64 %i.ds, -9223372036854775745
  %i.dx = icmp ugt i64 %i.dw, -9223372036854775808
  %storemerge.idx.i.i = select i1 %i.dx, i64 -8, i64 0
  %storemerge.i.i = getelementptr inbounds i8, ptr %i.dv, i64 %storemerge.idx.i.i
  store ptr %storemerge.i.i, ptr %i.i, align 8, !tbaa !23
  %i.dy = trunc i64 %i.ds to i32
  %i.dz = and i32 %i.dy, 63
  br label %.sink.split

bb.v:                                             ; preds = %bb.b
  %i.ea = sub i64 9223372036854775744, %i.q
  %i.eb = icmp ult i64 %i.ea, %3
  br i1 %i.eb, label %bb.w, label %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit

bb.w:                                             ; preds = %bb.v
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #32
  unreachable

_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit:    ; preds = %bb.v
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %3)
  %i.ec = add i64 %.sroa.speculated.i, %i.q       ; 2 uses
  %i.ed = icmp ult i64 %i.ec, %i.q
  %i.ee = tail call i64 @llvm.umin.i64(i64 %i.ec, i64 9223372036854775744)
  %i.ef = add nuw nsw i64 %i.ee, 63
  %i.eg = select i1 %i.ed, i64 9223372036854775807, i64 %i.ef ; 2 uses
  %i.eh = lshr i64 %i.eg, 3
  %i.ei = and i64 %i.eh, 1152921504606846968
  %i.ej = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ei) #29 ; 5 uses
  %i.ek = load ptr, ptr %0, align 8, !tbaa !23    ; 3 uses
  %i.el = ptrtoint ptr %1 to i64                  ; 3 uses
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em                    ; 4 uses
  %i.eo = icmp sgt i64 %i.en, 8
  br i1 %i.eo, label %bb.x, label %bb.y, !prof !267

bb.x:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ej, ptr align 8 %i.ek, i64 %i.en, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.y:                                             ; preds = %_ZNKSt6vectorIbSaIbEE12_M_check_lenEmPKc.exit
  %i.ep = icmp eq i64 %i.en, 8
  br i1 %i.ep, label %bb.z, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.z:                                             ; preds = %bb.y
  %i.eq = load i64, ptr %i.ek, align 8, !tbaa !67
  store i64 %i.eq, ptr %i.ej, align 8, !tbaa !67
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.z, %bb.y, %bb.x
  %i.er = getelementptr inbounds i8, ptr %i.ej, i64 %i.en ; 3 uses
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.i.preheader.i:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.es = zext i32 %2 to i64                      ; 2 uses
  %xtraiter168 = and i64 %i.es, 1
  %i.et = icmp eq i32 %2, 1
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.i.new

.lr.ph.i.i.i.i.i.preheader.i.new:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i
  %unroll_iter = and i64 %i.es, 4294967294
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1, %.lr.ph.i.i.i.i.i.preheader.i.new
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.new ], [ %niter.next.1, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1 ]
  %i.eu = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.ev = shl nuw i64 1, %i.eu
  %i.ew = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !67
  %i.ex = and i64 %i.ew, %i.ev
  %.not.i.i.i.i.i.i81 = icmp eq i64 %i.ex, 0
  %i.ey = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.ez = shl nuw i64 1, %i.ey                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fa = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fb = or i64 %i.fa, %i.ez
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.fc = xor i64 %i.ez, -1
  %i.fd = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fe = and i64 %i.fd, %i.fc
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.ab, %bb.aa
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.fe, %bb.ab ], [ %i.fb, %bb.aa ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !67
  %i.ff = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.fg = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.fg, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i ; 2 uses
  %spec.select15.i.i.i.i.i.i = select i1 %i.fg, i32 0, i32 %i.ff ; 3 uses
  %i.fh = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.fi = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.fi, i32 0, i32 %i.fh ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.fi, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i ; 4 uses
  %i.fj = zext nneg i32 %spec.select15.i.i.i.i.i.i to i64
  %i.fk = shl nuw i64 1, %i.fj
  %i.fl = load i64, ptr %spec.select.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fm = and i64 %i.fl, %i.fk
  %.not.i.i.i.i.i.i81.1 = icmp eq i64 %i.fm, 0
  %i.fn = zext nneg i32 %.sroa.55.1.i.i.i.i.i.i to i64
  %i.fo = shl nuw i64 1, %i.fn                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81.1, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.fp = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fq = or i64 %i.fp, %i.fo
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

bb.ad:                                            ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %i.fr = xor i64 %i.fo, -1
  %i.fs = load i64, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !67
  %i.ft = and i64 %i.fs, %i.fr
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1:     ; preds = %bb.ad, %bb.ac
  %storemerge.i.i.i.i.i.i.1 = phi i64 [ %i.ft, %bb.ad ], [ %i.fq, %bb.ac ]
  store i64 %storemerge.i.i.i.i.i.i.1, ptr %.sroa.03.1.i.i.i.i.i.i, align 8, !tbaa !67
  %i.fu = add i32 %spec.select15.i.i.i.i.i.i, 1
  %i.fv = icmp eq i32 %spec.select15.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i.1 = select i1 %i.fv, i64 8, i64 0
  %spec.select.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i.1 ; 2 uses
  %spec.select15.i.i.i.i.i.i.1 = select i1 %i.fv, i32 0, i32 %i.fu ; 2 uses
  %i.fw = add i32 %.sroa.55.1.i.i.i.i.i.i, 1
  %i.fx = icmp eq i32 %.sroa.55.1.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.1 = select i1 %i.fx, i32 0, i32 %i.fw ; 3 uses
  %.sroa.03.1.idx.i.i.i.i.i.i.1 = select i1 %i.fx, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.03.1.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i.1 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !416

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.1
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.i
  %.sroa.03.019.i.i.i.i.i.i.epil.init = phi ptr [ %i.er, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select15.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %.sroa.09.016.i.i.i.i.i.i.epil.init = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader.i ], [ %spec.select.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ]
  %lcmp.mod172 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod172)
  %i.fy = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i.epil.init to i64
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = load i64, ptr %.sroa.09.016.i.i.i.i.i.i.epil.init, align 8, !tbaa !67
  %i.gb = and i64 %i.ga, %i.fz
  %.not.i.i.i.i.i.i81.epil = icmp eq i64 %i.gb, 0
  %i.gc = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i.epil.init to i64
  %i.gd = shl nuw i64 1, %i.gc                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i81.epil, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.ge = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !67
  %i.gf = or i64 %i.ge, %i.gd
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

bb.af:                                            ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader
  %i.gg = xor i64 %i.gd, -1
  %i.gh = load i64, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !67
  %i.gi = and i64 %i.gh, %i.gg
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil:  ; preds = %bb.af, %bb.ae
  %storemerge.i.i.i.i.i.i.epil = phi i64 [ %i.gi, %bb.af ], [ %i.gf, %bb.ae ]
  store i64 %storemerge.i.i.i.i.i.i.epil, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, align 8, !tbaa !67
  %i.gj = add i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 1
  %i.gk = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i.epil.init, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i.epil = select i1 %i.gk, i32 0, i32 %i.gj
  %.sroa.03.1.idx.i.i.i.i.i.i.epil = select i1 %i.gk, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i.epil.init, i64 %.sroa.03.1.idx.i.i.i.i.i.i.epil
  br label %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit

_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit: ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %.sroa.55.0.lcssa.i.i.i.i.i.i = phi i32 [ 0, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.55.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.55.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ] ; 3 uses
  %.sroa.03.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.er, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i ], [ %.sroa.03.1.i.i.i.i.i.i.1, %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit.loopexit.unr-lcssa ], [ %.sroa.03.1.i.i.i.i.i.i.epil, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i.epil ] ; 9 uses
  %i.gl = zext i32 %.sroa.55.0.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.gm = add nsw i64 %3, %i.gl                   ; 4 uses
  %i.gn = sdiv i64 %i.gm, 64
  %.idx157 = shl nsw i64 %i.gn, 3
  %i.go = and i64 %i.gm, -9223372036854775745
  %i.gp = icmp ugt i64 %i.go, -9223372036854775808
  %storemerge.idx.i.i.i85 = select i1 %i.gp, i64 -8, i64 0
  %i.gq = add nsw i64 %storemerge.idx.i.i.i85, %.idx157 ; 2 uses
  %storemerge.i.i.i86 = getelementptr inbounds i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 %i.gq ; 10 uses
  %i.gr = trunc i64 %i.gm to i32
  %i.gs = and i32 %i.gr, 63                       ; 8 uses
  %.not.i.i.i89 = icmp eq i64 %i.gq, 0
  br i1 %.not.i.i.i89, label %bb.ao, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not26.i.i.i90 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, 0
  br i1 %.not26.i.i.i90, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, i64 8
  %i.gu = shl nsw i64 -1, %i.gl                   ; 2 uses
  br i1 %4, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.gv = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  %i.gw = or i64 %i.gv, %i.gu
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

bb.aj:                                            ; preds = %bb.ah
  %i.gx = xor i64 %i.gu, -1
  %i.gy = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  %i.gz = and i64 %i.gy, %i.gx
  br label %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92

_ZSt14__fill_bvectorPmjjb.exit.i.i.i92:           ; preds = %bb.aj, %bb.ai
  %storemerge.i.i.i.i93 = phi i64 [ %i.gz, %bb.aj ], [ %i.gw, %bb.ai ]
  store i64 %storemerge.i.i.i.i93, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  br label %bb.ak

bb.ak:                                            ; preds = %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92, %bb.ag
  %.0.i.i.i94 = phi ptr [ %i.gt, %_ZSt14__fill_bvectorPmjjb.exit.i.i.i92 ], [ %.sroa.03.0.lcssa.i.i.i.i.i.i, %bb.ag ] ; 2 uses
  %i.ha = ptrtoint ptr %storemerge.i.i.i86 to i64
  %i.hb = ptrtoint ptr %.0.i.i.i94 to i64
  %i.hc = sub i64 %i.ha, %i.hb
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %.0.i.i.i94, i8 %.neg, i64 %i.hc, i1 false)
end_hunk_1
begin_hunk_2_@_ZNSt6vectorIbSaIbEE14_M_fill_insertESt13_Bit_iteratormb:bb.a
  %i.hi = xor i64 %i.hf, -1
  %i.hj = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !67
  %i.hk = and i64 %i.hj, %i.hi
  br label %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96

_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96:         ; preds = %bb.an, %bb.am
  %storemerge.i28.i.i.i97 = phi i64 [ %i.hk, %bb.an ], [ %i.hh, %bb.am ]
  store i64 %storemerge.i28.i.i.i97, ptr %storemerge.i.i.i86, align 8, !tbaa !67
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

bb.ao:                                            ; preds = %_ZNSt6vectorIbSaIbEE15_M_copy_alignedESt19_Bit_const_iteratorS2_St13_Bit_iterator.exit
  %.not25.i.i.i98 = icmp eq i32 %.sroa.55.0.lcssa.i.i.i.i.i.i, %i.gs
  br i1 %.not25.i.i.i98, label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hl = shl nsw i64 -1, %i.gl
  %i.hm = sub nuw nsw i32 64, %i.gs
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = lshr i64 -1, %i.hn
  %i.hp = and i64 %i.ho, %i.hl                    ; 2 uses
  br i1 %4, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.hq = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  %i.hr = or i64 %i.hq, %i.hp
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

bb.ar:                                            ; preds = %bb.ap
  %i.hs = xor i64 %i.hp, -1
  %i.ht = load i64, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  %i.hu = and i64 %i.ht, %i.hs
  br label %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99

_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99:         ; preds = %bb.ar, %bb.aq
  %storemerge.i30.i.i.i100 = phi i64 [ %i.hu, %bb.ar ], [ %i.hr, %bb.aq ]
  store i64 %storemerge.i30.i.i.i100, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !67
  br label %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101

_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101: ; preds = %bb.ak, %_ZSt14__fill_bvectorPmjjb.exit29.i.i.i96, %bb.ao, %_ZSt14__fill_bvectorPmjjb.exit31.i.i.i99
  %.sroa.0.0.copyload.i102 = load ptr, ptr %i.i, align 8
  %.sroa.2.0.copyload.i104 = load i32, ptr %i.k, align 8
  %i.hv = ptrtoint ptr %.sroa.0.0.copyload.i102 to i64 ; 2 uses
  %i.hw = sub i64 %i.hv, %i.el
  %i.hx = shl nsw i64 %i.hw, 3
  %i.hy = zext i32 %.sroa.2.0.copyload.i104 to i64 ; 2 uses
  %i.hz = zext i32 %2 to i64                      ; 2 uses
  %i.ia = sub nsw i64 %i.hy, %i.hz                ; 2 uses
  %i.ib = add i64 %i.ia, %i.hx                    ; 3 uses
  %i.ic = icmp sgt i64 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i.i.i.i.i.preheader, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %i.id = shl i64 %i.hv, 3
  %i.ie = add i64 %i.id, %i.hy
  %i.if = xor i64 %i.hz, -1
  %i.ig = add i64 %i.ie, %i.if
  %i.ih = shl i64 %i.el, 3
  %xtraiter173 = and i64 %i.ia, 1
  %lcmp.mod174.not = icmp eq i64 %xtraiter173, 0
  br i1 %lcmp.mod174.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ii = zext nneg i32 %2 to i64
  %i.ij = shl nuw i64 1, %i.ii
  %i.ik = and i64 %i.gm, 63
  %i.il = shl nuw i64 1, %i.ik                    ; 2 uses
  %i.im = load i64, ptr %1, align 8, !tbaa !67
  %i.in = and i64 %i.im, %i.ij
  %.not.i.i.i.i.i.i121.prol = icmp eq i64 %i.in, 0
  br i1 %.not.i.i.i.i.i.i121.prol, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.io = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !67
  %i.ip = or i64 %i.io, %i.il
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.prol
  %i.iq = xor i64 %i.il, -1
  %i.ir = load i64, ptr %storemerge.i.i.i86, align 8, !tbaa !67
  %i.is = and i64 %i.ir, %i.iq
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol: ; preds = %bb.at, %bb.as
  %storemerge.i.i.i.i.i123.prol = phi i64 [ %i.ip, %bb.as ], [ %i.is, %bb.at ]
  store i64 %storemerge.i.i.i.i.i123.prol, ptr %storemerge.i.i.i86, align 8, !tbaa !67
  %i.it = add i32 %2, 1
  %i.iu = icmp eq i32 %2, 63                      ; 2 uses
  %spec.select.idx.i.i.i.i.i.prol = select i1 %i.iu, i64 8, i64 0
  %spec.select.i.i.i.i.i124.prol = getelementptr inbounds nuw i8, ptr %1, i64 %spec.select.idx.i.i.i.i.i.prol
  %spec.select19.i.i.i.i.i125.prol = select i1 %i.iu, i32 0, i32 %i.it
  %i.iv = add nuw nsw i32 %i.gs, 1
  %i.iw = icmp eq i32 %i.gs, 63                   ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.prol = select i1 %i.iw, i32 0, i32 %i.iv ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127.prol = select i1 %i.iw, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128.prol = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i86, i64 %.sroa.07.1.idx.i.i.i.i.i127.prol ; 2 uses
  %i.ix = add nsw i64 %i.ib, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol, %.lr.ph.i.i.i.i.i.preheader
  %.024.i.i.i.i.i118.unr = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ix, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.07.023.i.i.i.i.i119.unr = phi ptr [ %storemerge.i.i.i86, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i128.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.59.022.i.i.i.i.i120.unr = phi i32 [ %i.gs, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.59.1.i.i.i.i.i126.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.516.021.i.i.i.i.i.unr = phi i32 [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %spec.select19.i.i.i.i.i125.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.013.020.i.i.i.i.i.unr = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %spec.select.i.i.i.i.i124.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.59.1.i.i.i.i.i126.lcssa.unr = phi i32 [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.59.1.i.i.i.i.i126.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %.sroa.07.1.i.i.i.i.i128.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.preheader ], [ %.sroa.07.1.i.i.i.i.i128.prol, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.prol ]
  %i.iy = icmp eq i64 %i.ig, %i.ih
  br i1 %i.iy, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1
  %.024.i.i.i.i.i118 = phi i64 [ %i.kd, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.024.i.i.i.i.i118.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.023.i.i.i.i.i119 = phi ptr [ %.sroa.07.1.i.i.i.i.i128.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.07.023.i.i.i.i.i119.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %.sroa.59.022.i.i.i.i.i120 = phi i32 [ %.sroa.59.1.i.i.i.i.i126.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.59.022.i.i.i.i.i120.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.516.021.i.i.i.i.i = phi i32 [ %spec.select19.i.i.i.i.i125.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.516.021.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.013.020.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i124.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ], [ %.sroa.013.020.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %i.iz = zext nneg i32 %.sroa.516.021.i.i.i.i.i to i64
  %i.ja = shl nuw i64 1, %i.iz
  %i.jb = zext nneg i32 %.sroa.59.022.i.i.i.i.i120 to i64
  %i.jc = shl nuw i64 1, %i.jb                    ; 2 uses
  %i.jd = load i64, ptr %.sroa.013.020.i.i.i.i.i, align 8, !tbaa !67
  %i.je = and i64 %i.jd, %i.ja
  %.not.i.i.i.i.i.i121 = icmp eq i64 %i.je, 0
  br i1 %.not.i.i.i.i.i.i121, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jf = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !67
  %i.jg = or i64 %i.jf, %i.jc
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

bb.av:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.jh = xor i64 %i.jc, -1
  %i.ji = load i64, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !67
  %i.jj = and i64 %i.ji, %i.jh
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122:   ; preds = %bb.av, %bb.au
  %storemerge.i.i.i.i.i123 = phi i64 [ %i.jg, %bb.au ], [ %i.jj, %bb.av ]
  store i64 %storemerge.i.i.i.i.i123, ptr %.sroa.07.023.i.i.i.i.i119, align 8, !tbaa !67
  %i.jk = add i32 %.sroa.516.021.i.i.i.i.i, 1
  %i.jl = icmp eq i32 %.sroa.516.021.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i = select i1 %i.jl, i64 8, i64 0
  %spec.select.i.i.i.i.i124 = getelementptr inbounds nuw i8, ptr %.sroa.013.020.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i ; 2 uses
  %spec.select19.i.i.i.i.i125 = select i1 %i.jl, i32 0, i32 %i.jk ; 3 uses
  %i.jm = add i32 %.sroa.59.022.i.i.i.i.i120, 1
  %i.jn = icmp eq i32 %.sroa.59.022.i.i.i.i.i120, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126 = select i1 %i.jn, i32 0, i32 %i.jm ; 3 uses
  %.sroa.07.1.idx.i.i.i.i.i127 = select i1 %i.jn, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128 = getelementptr inbounds nuw i8, ptr %.sroa.07.023.i.i.i.i.i119, i64 %.sroa.07.1.idx.i.i.i.i.i127 ; 4 uses
  %i.jo = zext nneg i32 %spec.select19.i.i.i.i.i125 to i64
  %i.jp = shl nuw i64 1, %i.jo
  %i.jq = zext nneg i32 %.sroa.59.1.i.i.i.i.i126 to i64
  %i.jr = shl nuw i64 1, %i.jq                    ; 2 uses
  %i.js = load i64, ptr %spec.select.i.i.i.i.i124, align 8, !tbaa !67
  %i.jt = and i64 %i.js, %i.jp
  %.not.i.i.i.i.i.i121.1 = icmp eq i64 %i.jt, 0
  br i1 %.not.i.i.i.i.i.i121.1, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.ju = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !67
  %i.jv = or i64 %i.ju, %i.jr
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

bb.ax:                                            ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122
  %i.jw = xor i64 %i.jr, -1
  %i.jx = load i64, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !67
  %i.jy = and i64 %i.jx, %i.jw
  br label %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1

_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1: ; preds = %bb.ax, %bb.aw
  %storemerge.i.i.i.i.i123.1 = phi i64 [ %i.jv, %bb.aw ], [ %i.jy, %bb.ax ]
  store i64 %storemerge.i.i.i.i.i123.1, ptr %.sroa.07.1.i.i.i.i.i128, align 8, !tbaa !67
  %i.jz = add i32 %spec.select19.i.i.i.i.i125, 1
  %i.ka = icmp eq i32 %spec.select19.i.i.i.i.i125, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.1 = select i1 %i.ka, i64 8, i64 0
  %spec.select.i.i.i.i.i124.1 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i.i.i124, i64 %spec.select.idx.i.i.i.i.i.1
  %spec.select19.i.i.i.i.i125.1 = select i1 %i.ka, i32 0, i32 %i.jz
  %i.kb = add i32 %.sroa.59.1.i.i.i.i.i126, 1
  %i.kc = icmp eq i32 %.sroa.59.1.i.i.i.i.i126, 63 ; 2 uses
  %.sroa.59.1.i.i.i.i.i126.1 = select i1 %i.kc, i32 0, i32 %i.kb ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i127.1 = select i1 %i.kc, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i128.1 = getelementptr inbounds nuw i8, ptr %.sroa.07.1.i.i.i.i.i128, i64 %.sroa.07.1.idx.i.i.i.i.i127.1 ; 2 uses
  %i.kd = add nsw i64 %.024.i.i.i.i.i118, -2
  %i.ke = icmp sgt i64 %.024.i.i.i.i.i118, 2
  br i1 %i.ke, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !417

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101
  %.sroa.59.0.lcssa.i.i.i.i.i114 = phi i32 [ %i.gs, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.59.1.i.i.i.i.i126.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.59.1.i.i.i.i.i126.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %.sroa.07.0.lcssa.i.i.i.i.i115 = phi ptr [ %storemerge.i.i.i86, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit101 ], [ %.sroa.07.1.i.i.i.i.i128.lcssa.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ], [ %.sroa.07.1.i.i.i.i.i128.1, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i122.1 ]
  %i.kf = load ptr, ptr %0, align 8, !tbaa !23    ; 2 uses
  %.not.i129 = icmp eq ptr %i.kf, null
  br i1 %.not.i129, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.kg = load ptr, ptr %i.b, align 8, !tbaa !26  ; 2 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = ptrtoint ptr %i.kf to i64
  %i.kj = sub i64 %i.kh, %i.ki                    ; 2 uses
  %i.kk = ashr exact i64 %i.kj, 3
  %i.kl = sub nsw i64 0, %i.kk
  %i.km = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.kl
  tail call void @_ZdlPvm(ptr noundef %i.km, i64 noundef %i.kj) #30
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.ay
  %i.kn = lshr i64 %i.eg, 6
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.kn
  store ptr %i.ko, ptr %i.b, align 8, !tbaa !26
  store ptr %i.ej, ptr %0, align 8
  %.sroa.5137.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.5137.0..sroa_idx138, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i115, ptr %i.i, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  %.sroa.59.0.lcssa.i.i.i.i.i114.sink = phi i32 [ %.sroa.59.0.lcssa.i.i.i.i.i114, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit ], [ %i.dz, %_ZSt4fillISt13_Bit_iteratorbEvT_S1_RKT0_.exit ]
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i114.sink, ptr %i.k, align 8
  br label %bb.az

bb.az:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update4ImplC2ERK10t_inputrecRK14gmx_ekindata_tPNS_14BoxDeformationE(ptr noundef nonnull align 8 dereferenceable(232) initializes((0, 52)) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(224) %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 867
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.c = load i8, ptr %i.b, align 1, !tbaa !418, !range !268, !noundef !269
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.noexc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 672
  %i.f = load float, ptr %i.e, align 8, !tbaa !419
  %i.g = fcmp une float %i.f, 0.000000e+00
  br i1 %i.g, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_Z21ir_haveBoxDeformationRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.i = select i1 %i.h, i32 3, i32 0
  br label %.noexc

.noexc:                                           ; preds = %bb.a, %bb.b, %bb.c
  %i.j = phi i32 [ 1, %bb.a ], [ %i.i, %bb.c ], [ 2, %bb.b ]
  store i32 %i.j, ptr %i.a, align 8, !tbaa !270
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN12gmx_stochd_tC1ERK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(136) %i.k, ptr noundef nonnull align 8 dereferenceable(888) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, i8 0, i64 32, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %3, ptr %i.m, align 8, !tbaa !59
  tail call void @_ZN3gmx6Update4Impl28update_temperature_constantsERK10t_inputrecRK14gmx_ekindata_t(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(888) %1, ptr noundef nonnull align 8 dereferenceable(224) %2)
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !254
  %.not.i.i.i = icmp eq ptr %i.p, %i.n
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc
  store ptr %i.n, ptr %i.o, align 8, !tbaa !254
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i: ; preds = %bb.d, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !179
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float 0.000000e+00, ptr %i.q, align 8, !tbaa !179
  invoke void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr %i.n, i64 noundef 0, ptr noundef nonnull align 4 dereferenceable(12) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.r = load ptr, ptr %i.l, align 8, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.r, ptr %i.s, align 8, !tbaa !253
  ret void

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.l) #20
  call void @_ZN12gmx_stochd_tD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %i.k) #20
  resume { ptr, i32 } %i.t
}

declare noundef zeroext i1 @_Z21ir_haveBoxDeformationRK10t_inputrec(ptr noundef nonnull align 8 dereferenceable(888)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE17resizeWithPaddingEl(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.gmx::BasicVector", align 8  ; 5 uses
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, 1
  %i.c = add nsw i64 %1, 15
  %i.d = sdiv i64 %i.c, 16
  %i.e = shl nsw i64 %i.d, 4
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.b, i64 %i.e)
  br label %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit

_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %.sroa.speculated.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.0.i)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !254  ; 4 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 12                  ; 3 uses
  %i.m = icmp ugt i64 %1, %i.l
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit
  %i.n = sub nuw i64 %1, %i.l
  tail call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n)
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !253
  %.pre5 = load ptr, ptr %0, align 8, !tbaa !16   ; 2 uses
  %.pre6 = ptrtoint ptr %.pre5 to i64
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.d:                                             ; preds = %_ZN3gmx6detail17computePaddedSizeINS_11BasicVectorIfEEEEll.exit
  %i.o = icmp ult i64 %1, %i.l
  br i1 %i.o, label %bb.e, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.h, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.p, ptr %i.f, align 8, !tbaa !254
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.pre-phi = phi i64 [ %.pre6, %bb.c ], [ %i.j, %bb.d ], [ %i.j, %bb.e ], [ %i.j, %bb.f ]
  %i.q = phi ptr [ %.pre5, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ], [ %i.h, %bb.f ]
  %i.r = phi ptr [ %.pre, %bb.c ], [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.p, %bb.f ]
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = sub i64 %i.s, %.pre-phi                  ; 2 uses
  %.neg.i = sdiv exact i64 %i.t, -12
  %i.u = add i64 %.neg.i, %.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !179
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float 0.000000e+00, ptr %i.v, align 8, !tbaa !179
  %i.w = getelementptr inbounds i8, ptr %i.q, i64 %i.t
  call void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.w, i64 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(12) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.x = load ptr, ptr %0, align 8, !tbaa !253
  %i.y = getelementptr inbounds [12 x i8], ptr %i.x, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.y, ptr %i.z, align 8, !tbaa !253
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 768614336404564650
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271
  %i.d = load ptr, ptr %0, align 8, !tbaa !16
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !254
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = mul nuw nsw i64 %1, 12
  %i.o = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.n) ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !273
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit: ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !254  ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i ], [ %i.r, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !274, !alias.scope !423
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split: ; preds = %.lr.ph.i.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !16
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit
  %i.v = phi ptr [ %.pr, %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exitthread-pre-split ], [ %i.r, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.not.i8 = icmp eq ptr %i.v, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.v)
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, %bb.f
  store ptr %i.o, ptr %0, align 8, !tbaa !16
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.w, ptr %i.j, align 8, !tbaa !254
  %i.x = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %1
  store ptr %i.x, ptr %i.b, align 8, !tbaa !271
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef) local_unnamed_addr #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9bad_allocD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !254  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !16     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !271
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12
  %scevgep.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i, ptr %i.a, align 8, !tbaa !254
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.e, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.t) ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !273
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

bb.g:                                             ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !274, !alias.scope !427
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 12
  %.not.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, label %.lr.ph.i.i.i, !llvm.loop !0

_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit32, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.c)
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit32

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit32: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_S_relocateEPS2_S7_S7_RS5_.exit, %bb.h
  store ptr %i.u, ptr %0, align 8, !tbaa !16
  %i.aa = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %1
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !254
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ab, ptr %i.h, align 8, !tbaa !271
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit32, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S6_EEmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.9 = alloca [15 x i8], align 1            ; 14 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !271
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !254  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %.sroa.4.8.copyload = load i8, ptr %3, align 4  ; 11 uses
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..sroa_idx, i64 11, i1 false), !tbaa.struct !433
  %i.i = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.j = sub i64 %i.f, %i.i                       ; 3 uses
  %i.k = sdiv exact i64 %i.j, 12                  ; 3 uses
  %i.l = icmp ugt i64 %i.k, %2
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %.idx = mul i64 %2, -12                         ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.d, i64 %.idx ; 2 uses
  %.not13.i.i = icmp eq i64 %.idx, 0
  br i1 %.not13.i.i, label %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.015.i.i = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %.sroa.010.014.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %i.m, %bb.d ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i, i64 12, i1 false), !tbaa.struct !274
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i, i64 12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 12
  %.not.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i, label %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit.loopexit, label %.lr.ph.i.i, !llvm.loop !428

_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !254
  br label %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit

_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit: ; preds = %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit.loopexit, %bb.d
  %i.p = phi ptr [ %.pre, %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit.loopexit ], [ %i.d, %bb.d ]
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %2
  store ptr %i.q, ptr %i.c, align 8, !tbaa !254
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.r, %i.i                       ; 4 uses
  %i.t = icmp sgt i64 %i.s, 12
  br i1 %i.t, label %bb.e, label %bb.f, !prof !267

bb.e:                                             ; preds = %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit
  %.neg133 = udiv exact i64 %i.s, 12
  %.neg133.neg = sub nsw i64 0, %.neg133
  %i.u = getelementptr inbounds [12 x i8], ptr %i.d, i64 %.neg133.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.u, ptr align 4 %1, i64 %i.s, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit
  %i.v = icmp eq i64 %i.s, 12
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds i8, ptr %i.d, i64 -12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.w, ptr noundef nonnull align 4 dereferenceable(12) %1, i64 12, i1 false), !tbaa.struct !274
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.idx115 = mul nuw nsw i64 %2, 12
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %.idx115
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %1, %bb.h ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i, align 4
  %.sroa.9.8..06.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.y = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i.i.i, label %_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !429

bb.i:                                             ; preds = %bb.c
  %i.z = sub nuw i64 %2, %i.k                     ; 4 uses
  %.not8.i = icmp eq i64 %i.z, 0
  br i1 %.not8.i, label %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.i
  %xtraiter = and i64 %i.z, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.010.i.prol = phi ptr [ %i.ab, %.lr.ph.i.prol ], [ %i.d, %.lr.ph.i.preheader ] ; 3 uses
  %.079.i.prol = phi i64 [ %i.aa, %.lr.ph.i.prol ], [ %i.z, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  store i8 %.sroa.4.8.copyload, ptr %.010.i.prol, align 4
  %.sroa.9.8..010.i.sroa_idx.prol = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.prol, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.aa = add i64 %.079.i.prol, -1                ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.010.i.prol, i64 12 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !430

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa142.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.010.i.unr = phi ptr [ %i.d, %.lr.ph.i.preheader ], [ %i.ab, %.lr.ph.i.prol ]
  %.079.i.unr = phi i64 [ %i.z, %.lr.ph.i.preheader ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ac = sub i64 %i.k, %2
  %i.ad = icmp ugt i64 %i.ac, -8
  br i1 %i.ad, label %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.010.i = phi ptr [ %i.am, %.lr.ph.i ], [ %.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 17 uses
  %.079.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.079.i.unr, %.lr.ph.i.prol.loopexit ]
  store i8 %.sroa.4.8.copyload, ptr %.010.i, align 4
  %.sroa.9.8..010.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.010.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.ae = getelementptr inbounds nuw i8, ptr %.010.i, i64 12
  store i8 %.sroa.4.8.copyload, ptr %i.ae, align 4
  %.sroa.9.8..010.i.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.010.i, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.1, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.af = getelementptr inbounds nuw i8, ptr %.010.i, i64 24
  store i8 %.sroa.4.8.copyload, ptr %i.af, align 4
  %.sroa.9.8..010.i.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.010.i, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.2, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.ag = getelementptr inbounds nuw i8, ptr %.010.i, i64 36
  store i8 %.sroa.4.8.copyload, ptr %i.ag, align 4
  %.sroa.9.8..010.i.sroa_idx.3 = getelementptr inbounds nuw i8, ptr %.010.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.ah = getelementptr inbounds nuw i8, ptr %.010.i, i64 48
  store i8 %.sroa.4.8.copyload, ptr %i.ah, align 4
  %.sroa.9.8..010.i.sroa_idx.4 = getelementptr inbounds nuw i8, ptr %.010.i, i64 49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.4, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.ai = getelementptr inbounds nuw i8, ptr %.010.i, i64 60
  store i8 %.sroa.4.8.copyload, ptr %i.ai, align 4
  %.sroa.9.8..010.i.sroa_idx.5 = getelementptr inbounds nuw i8, ptr %.010.i, i64 61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.5, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.aj = getelementptr inbounds nuw i8, ptr %.010.i, i64 72
  store i8 %.sroa.4.8.copyload, ptr %i.aj, align 4
  %.sroa.9.8..010.i.sroa_idx.6 = getelementptr inbounds nuw i8, ptr %.010.i, i64 73
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.6, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.ak = getelementptr inbounds nuw i8, ptr %.010.i, i64 84
  store i8 %.sroa.4.8.copyload, ptr %i.ak, align 4
  %.sroa.9.8..010.i.sroa_idx.7 = getelementptr inbounds nuw i8, ptr %.010.i, i64 85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..010.i.sroa_idx.7, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.al = add i64 %.079.i, -8                     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.010.i, i64 96 ; 2 uses
  %.not.i.7 = icmp eq i64 %i.al, 0
  br i1 %.not.i.7, label %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit, label %.lr.ph.i, !llvm.loop !431

_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.i
  %i.an = phi ptr [ %i.d, %bb.i ], [ %.lcssa142.unr, %.lr.ph.i.prol.loopexit ], [ %i.am, %.lr.ph.i ] ; 3 uses
  store ptr %i.an, ptr %i.c, align 8, !tbaa !254
  %.not13.i.i68 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i68, label %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74.thread, label %.lr.ph.i.i69

_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.j
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !254
  br label %_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit

.lr.ph.i.i69:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit, %.lr.ph.i.i69
  %.015.i.i70 = phi ptr [ %i.aq, %.lr.ph.i.i69 ], [ %i.an, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit ] ; 2 uses
  %.sroa.010.014.i.i71 = phi ptr [ %i.ap, %.lr.ph.i.i69 ], [ %1, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i70, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i71, i64 12, i1 false), !tbaa.struct !274
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i71, i64 12 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.015.i.i70, i64 12
  %.not.i.i72 = icmp eq ptr %i.ap, %i.d
  br i1 %.not.i.i72, label %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74, label %.lr.ph.i.i69, !llvm.loop !428

_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74: ; preds = %.lr.ph.i.i69
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !254
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.j
  store ptr %i.as, ptr %i.c, align 8, !tbaa !254
  br label %.lr.ph.i.i.i76

.lr.ph.i.i.i76:                                   ; preds = %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74, %.lr.ph.i.i.i76
  %.06.i.i.i77 = phi ptr [ %i.at, %.lr.ph.i.i.i76 ], [ %1, %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74 ] ; 3 uses
  store i8 %.sroa.4.8.copyload, ptr %.06.i.i.i77, align 4
  %.sroa.9.8..06.i.i.i77.sroa_idx = getelementptr inbounds nuw i8, ptr %.06.i.i.i77, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9.8..06.i.i.i77.sroa_idx, ptr noundef nonnull align 1 dereferenceable(11) %.sroa.9, i64 11, i1 false), !tbaa.struct !433
  %i.at = getelementptr inbounds nuw i8, ptr %.06.i.i.i77, i64 12 ; 2 uses
  %.not.i.i.i78 = icmp eq ptr %i.at, %i.d
  br i1 %.not.i.i.i78, label %_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i76, !llvm.loop !429

_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i76, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit74.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %bb.o

bb.j:                                             ; preds = %bb.b
  %i.au = load ptr, ptr %0, align 8, !tbaa !16    ; 5 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.aw = sub i64 %i.f, %i.av
  %i.ax = sdiv exact i64 %i.aw, 12                ; 4 uses
  %i.ay = sub nsw i64 768614336404564650, %i.ax
  %i.az = icmp ult i64 %i.ay, %2
  br i1 %i.az, label %bb.k, label %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #32
  unreachable

_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit: ; preds = %bb.j
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %2)
  %i.ba = add nsw i64 %.sroa.speculated.i, %i.ax  ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 768614336404564650)
  %i.bd = select i1 %i.bb, i64 768614336404564650, i64 %i.bc ; 3 uses
  %i.be = ptrtoint ptr %1 to i64
  %i.bf = sub i64 %i.be, %i.av
  %.not.i80 = icmp eq i64 %i.bd, 0
  br i1 %.not.i80, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit, label %bb.l

bb.l:                                             ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit
  %i.bg = mul nuw nsw i64 %i.bd, 12
  %i.bh = tail call noundef ptr @_ZN3gmx23AlignedAllocationPolicy6mallocEm(i64 noundef %i.bg) ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.m, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit

bb.m:                                             ; preds = %bb.l
  %i.bj = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bj, align 8, !tbaa !273
  tail call void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit, %bb.l
  %i.bk = phi ptr [ null, %_ZNKSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_M_check_lenEmPKc.exit ], [ %i.bh, %bb.l ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bf ; 2 uses
  %xtraiter143 = and i64 %2, 7                    ; 2 uses
  %lcmp.mod144.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod144.not, label %.lr.ph.i82.prol.loopexit, label %.lr.ph.i82.prol

.lr.ph.i82.prol:                                  ; preds = %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit, %.lr.ph.i82.prol
  %.010.i83.prol = phi ptr [ %i.bn, %.lr.ph.i82.prol ], [ %i.bl, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ] ; 2 uses
  %.079.i84.prol = phi i64 [ %i.bm, %.lr.ph.i82.prol ], [ %2, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ]
  %prol.iter145 = phi i64 [ %prol.iter145.next, %.lr.ph.i82.prol ], [ 0, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.010.i83.prol, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bm = add i64 %.079.i84.prol, -1              ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.010.i83.prol, i64 12 ; 2 uses
  %prol.iter145.next = add i64 %prol.iter145, 1   ; 2 uses
  %prol.iter145.cmp.not = icmp eq i64 %prol.iter145.next, %xtraiter143
  br i1 %prol.iter145.cmp.not, label %.lr.ph.i82.prol.loopexit, label %.lr.ph.i82.prol, !llvm.loop !432

.lr.ph.i82.prol.loopexit:                         ; preds = %.lr.ph.i82.prol, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit
  %.010.i83.unr = phi ptr [ %i.bl, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ], [ %i.bn, %.lr.ph.i82.prol ]
  %.079.i84.unr = phi i64 [ %2, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE11_M_allocateEm.exit ], [ %i.bm, %.lr.ph.i82.prol ]
  %i.bo = icmp ult i64 %2, 8
  br i1 %i.bo, label %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87, label %.lr.ph.i82

.lr.ph.i82:                                       ; preds = %.lr.ph.i82.prol.loopexit, %.lr.ph.i82
  %.010.i83 = phi ptr [ %i.bx, %.lr.ph.i82 ], [ %.010.i83.unr, %.lr.ph.i82.prol.loopexit ] ; 9 uses
  %.079.i84 = phi i64 [ %i.bw, %.lr.ph.i82 ], [ %.079.i84.unr, %.lr.ph.i82.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.010.i83, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bp = getelementptr inbounds nuw i8, ptr %.010.i83, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bq = getelementptr inbounds nuw i8, ptr %.010.i83, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bq, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.br = getelementptr inbounds nuw i8, ptr %.010.i83, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.br, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bs = getelementptr inbounds nuw i8, ptr %.010.i83, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bs, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bt = getelementptr inbounds nuw i8, ptr %.010.i83, i64 60
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bt, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bu = getelementptr inbounds nuw i8, ptr %.010.i83, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bu, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bv = getelementptr inbounds nuw i8, ptr %.010.i83, i64 84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bv, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 12, i1 false), !tbaa.struct !274
  %i.bw = add i64 %.079.i84, -8                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.010.i83, i64 96
  %.not.i85.7 = icmp eq i64 %i.bw, 0
  br i1 %.not.i85.7, label %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87, label %.lr.ph.i82, !llvm.loop !431

_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87: ; preds = %.lr.ph.i82, %.lr.ph.i82.prol.loopexit
  %.not13.i.i88 = icmp eq ptr %i.au, %1
  br i1 %.not13.i.i88, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i89

.lr.ph.i.i89:                                     ; preds = %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87, %.lr.ph.i.i89
  %.015.i.i90 = phi ptr [ %i.bz, %.lr.ph.i.i89 ], [ %i.bk, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87 ] ; 2 uses
  %.sroa.010.014.i.i91 = phi ptr [ %i.by, %.lr.ph.i.i89 ], [ %i.au, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i90, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i91, i64 12, i1 false), !tbaa.struct !274
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i91, i64 12 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.015.i.i90, i64 12 ; 2 uses
  %.not.i.i92 = icmp eq ptr %i.by, %1
  br i1 %.not.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit, label %.lr.ph.i.i89, !llvm.loop !428

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit: ; preds = %.lr.ph.i.i89, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87
  %.0.lcssa.i.i93 = phi ptr [ %i.bk, %_ZSt24__uninitialized_fill_n_aIPN3gmx11BasicVectorIfEEmS2_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET_S7_T0_RKT1_RT2_.exit87 ], [ %i.bz, %.lr.ph.i.i89 ]
  %i.ca = getelementptr inbounds nuw [12 x i8], ptr %.0.lcssa.i.i93, i64 %2 ; 2 uses
  %.not13.i.i94 = icmp eq ptr %1, %i.d
  br i1 %.not13.i.i94, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit100, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit, %.lr.ph.i.i95
  %.015.i.i96 = phi ptr [ %i.cc, %.lr.ph.i.i95 ], [ %i.ca, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit ] ; 2 uses
  %.sroa.010.014.i.i97 = phi ptr [ %i.cb, %.lr.ph.i.i95 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.015.i.i96, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.010.014.i.i97, i64 12, i1 false), !tbaa.struct !274
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.010.014.i.i97, i64 12 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.015.i.i96, i64 12 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.cb, %i.d
  br i1 %.not.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit100, label %.lr.ph.i.i95, !llvm.loop !428

_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit100: ; preds = %.lr.ph.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit
  %.0.lcssa.i.i99 = phi ptr [ %i.ca, %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit ], [ %i.cc, %.lr.ph.i.i95 ]
  %.not.i101 = icmp eq ptr %i.au, null
  br i1 %.not.i101, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit100
  tail call void @_ZN3gmx23AlignedAllocationPolicy4freeEPv(ptr noundef nonnull %i.au)
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN3gmx11BasicVectorIfEES3_NS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEET0_T_S8_S7_RT1_.exit100, %bb.n
  store ptr %i.bk, ptr %0, align 8, !tbaa !16
  store ptr %.0.lcssa.i.i99, ptr %i.c, align 8, !tbaa !254
  %i.cd = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %i.bd
  store ptr %i.cd, ptr %i.a, align 8, !tbaa !271
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4fillIPN3gmx11BasicVectorIfEES2_EvT_S4_RKT0_.exit, %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE13_M_deallocateEPS2_m.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx6Update20updateAfterPartitionEiNS_8ArrayRefIKtEES3_S3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, ptr %2, ptr %3, ptr %4, ptr %5, ptr nofree noundef readonly byval(%"class.gmx::ArrayRef") align 8 captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.c = sext i32 %1 to i64
  tail call void @_ZN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEE17resizeWithPaddingEl(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 noundef %i.c)
  %i.d = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  store ptr %2, ptr %i.d, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %3, ptr %.sroa.22.0..sroa_idx, align 8
  %i.e = load ptr, ptr %0, align 8, !tbaa !13     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %4, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %5, ptr %.sroa.2.0..sroa_idx, align 8
  %i.g = load ptr, ptr %0, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z14init_ekinstateP11ekinstate_tPK10t_inputrec(ptr noundef initializes((4, 32)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 744
  %i.b = load i32, ptr %i.a, align 8, !tbaa !434  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  store i32 %i.b, ptr %i.c, align 4, !tbaa !275
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = sext i32 %i.b to i64
  %i.f = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1444, i64 noundef range(i64 -2147483648, 2147483648) %i.e, i64 noundef 36)
  store ptr %i.f, ptr %i.d, align 8, !tbaa !435
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i32, ptr %i.c, align 4, !tbaa !275
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.5, i32 noundef 1445, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 36)
  store ptr %i.j, ptr %i.g, align 8, !tbaa !435
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.c, align 4, !tbaa !275
  %i.m = sext i32 %i.l to i64
  %i.n = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5, i32 noundef 1446, i64 noundef range(i64 -2147483648, 2147483648) %i.m, i64 noundef 36)
  store ptr %i.n, ptr %i.k, align 8, !tbaa !435
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load i32, ptr %i.c, align 4, !tbaa !275
  %i.q = sext i32 %i.p to i64                     ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !276  ; 2 uses
  %i.t = load ptr, ptr %i.o, align 8, !tbaa !277  ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = ashr exact i64 %i.w, 3                   ; 3 uses
  %i.y = icmp ult i64 %i.x, %i.q
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.z = sub nuw nsw i64 %i.q, %i.x
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.z)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !275
  %.pre24 = sext i32 %.pre to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.aa = icmp ugt i64 %i.x, %i.q
  br i1 %i.aa, label %bb.d, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.q ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.ab
  br i1 %.not.i.i, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ab, ptr %i.r, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit

_ZNSt6vectorIdSaIdEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre24, %bb.b ], [ %i.q, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !276 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !277 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3                 ; 3 uses
  %i.ak = icmp ult i64 %i.aj, %.pre-phi
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.al = sub nuw nsw i64 %.pre-phi, %i.aj
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.al)
  %.pre23 = load i32, ptr %i.c, align 4, !tbaa !275
  %.pre25 = sext i32 %.pre23 to i64
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

bb.f:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit
  %i.am = icmp ugt i64 %i.aj, %.pre-phi
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

bb.g:                                             ; preds = %bb.f
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.pre-phi ; 2 uses
  %.not.i.i17 = icmp eq ptr %i.ae, %i.an
  br i1 %.not.i.i17, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18:      ; preds = %bb.g
  store ptr %i.an, ptr %i.ad, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit19

_ZNSt6vectorIdSaIdEE6resizeEm.exit19:             ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18
  %.pre-phi26 = phi i64 [ %.pre25, %bb.e ], [ %.pre-phi, %bb.f ], [ %.pre-phi, %bb.g ], [ %.pre-phi, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i18 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !276 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !277 ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 3 uses
  %i.aw = icmp ult i64 %i.av, %.pre-phi26
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit19
  %i.ax = sub nuw nsw i64 %.pre-phi26, %i.av
  tail call void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 noundef %i.ax)
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

bb.i:                                             ; preds = %_ZNSt6vectorIdSaIdEE6resizeEm.exit19
  %i.ay = icmp ugt i64 %i.av, %.pre-phi26
  br i1 %i.ay, label %bb.j, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

bb.j:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %.pre-phi26 ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.aq, %i.az
  br i1 %.not.i.i20, label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22, label %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21

_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21:      ; preds = %bb.j
  store ptr %i.az, ptr %i.ap, align 8, !tbaa !276
  br label %_ZNSt6vectorIdSaIdEE6resizeEm.exit22

_ZNSt6vectorIdSaIdEE6resizeEm.exit22:             ; preds = %bb.h, %bb.i, %bb.j, %_ZSt8_DestroyIPddEvT_S1_RSaIT0_E.exit.i.i21
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.ba, i8 0, i64 9, i1 false)
  ret void
}

declare noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIdSaIdEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !276  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !277    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !436
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !252
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !252
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !276
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #32
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store double 0.000000e+00, ptr %i.y, align 8, !tbaa !252
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !252
  br label %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !436
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #30
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36: ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !277
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !276
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !436
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPdmdET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit36, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16update_ekinstateP11ekinstate_tPK14gmx_ekindata_tbRKN3gmx7MpiCommEPK12gmx_domdec_t(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp ne ptr %4, null
  %or.cond.not = and i1 %2, %.not.i
  br i1 %or.cond.not, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !532
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread

bb.b:                                             ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !255
  %i.f = load ptr, ptr %1, align 8, !tbaa !19
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 3 uses
  %i.j = lshr exact i64 %i.i, 2                   ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = mul i64 %i.j, 77309411328                ; 4 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %.noexc, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #32
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.b
  %i.n = lshr exact i64 %i.l, 29
  %i.o = or disjoint i64 %i.n, 8                  ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #29 ; 34 uses
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !252
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %.idx.i.i.i.i.i.i.i = lshr exact i64 %i.l, 29
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !252
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i
  %i.s = icmp sgt i32 %i.k, 0
  br i1 %i.s, label %.preheader124.lr.ph, label %._crit_edge

.preheader124.lr.ph:                              ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290  ; 3 uses
  %i.v = and i64 %i.i, 8589934588
  %i.w = icmp eq i64 %i.v, 4
  br i1 %i.w, label %.preheader124.epil.preheader, label %.preheader124.lr.ph.new

.preheader124.lr.ph.new:                          ; preds = %.preheader124.lr.ph
  %unroll_iter = and i64 %i.j, 2147483646
  br label %.preheader124

.preheader124:                                    ; preds = %.preheader124, %.preheader124.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next.1, %.preheader124 ] ; 3 uses
  %.098133 = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %indvars.iv.next165.2.2.1, %.preheader124 ] ; 7 uses
  %niter = phi i64 [ 0, %.preheader124.lr.ph.new ], [ %niter.next.1, %.preheader124 ]
  %i.x = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.aa = load <4 x float>, ptr %i.y, align 4, !tbaa !179
  %i.ab = fpext <4 x float> %i.aa to <4 x double>
  store <4 x double> %i.ab, ptr %i.z, align 8, !tbaa !252
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load <4 x float>, ptr %i.ac, align 4, !tbaa !179
  %i.ag = fpext <4 x float> %i.af to <4 x double>
  store <4 x double> %i.ag, ptr %i.ae, align 8, !tbaa !252
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %5 = load float, ptr %i.ah, align 4, !tbaa !179
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %6 = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %7 = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %8 = load float, ptr %7, align 4, !tbaa !179
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 84
  %9 = load <2 x float>, ptr %i.aj, align 4, !tbaa !179
  %10 = insertelement <4 x float> poison, float %5, i64 0
  %11 = insertelement <4 x float> %10, float %8, i64 1
  %12 = shufflevector <2 x float> %9, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = shufflevector <4 x float> %11, <4 x float> %12, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ak = fpext <4 x float> %13 to <4 x double>
  store <4 x double> %i.ak, ptr %6, align 8, !tbaa !252
  %i.al = getelementptr inbounds nuw i8, ptr %i.x, i64 92
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96
  %i.ao = load <4 x float>, ptr %i.al, align 4, !tbaa !179
  %i.ap = fpext <4 x float> %i.ao to <4 x double>
  store <4 x double> %i.ap, ptr %i.an, align 8, !tbaa !252
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %indvars.iv.next165.2.2 = add nuw nsw i64 %.098133, 18 ; 5 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !179
  %i.au = fpext <2 x float> %i.at to <2 x double>
  store <2 x double> %i.au, ptr %i.as, align 8, !tbaa !252
  %i.av = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv ; 7 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 152
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.ay = load <4 x float>, ptr %i.aw, align 4, !tbaa !179
  %i.az = fpext <4 x float> %i.ay to <4 x double>
  store <4 x double> %i.az, ptr %i.ax, align 8, !tbaa !252
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 168
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load <4 x float>, ptr %i.ba, align 4, !tbaa !179
  %i.be = fpext <4 x float> %i.bd to <4 x double>
  store <4 x double> %i.be, ptr %i.bc, align 8, !tbaa !252
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 184
  %14 = load float, ptr %i.bf, align 4, !tbaa !179
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %15 = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %16 = getelementptr inbounds nuw i8, ptr %i.av, i64 224
  %17 = load float, ptr %16, align 4, !tbaa !179
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 228
  %18 = load <2 x float>, ptr %i.bh, align 4, !tbaa !179
  %19 = insertelement <4 x float> poison, float %14, i64 0
  %20 = insertelement <4 x float> %19, float %17, i64 1
  %21 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %22 = shufflevector <4 x float> %20, <4 x float> %21, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bi = fpext <4 x float> %22 to <4 x double>
  store <4 x double> %i.bi, ptr %15, align 8, !tbaa !252
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 236
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load <4 x float>, ptr %i.bj, align 4, !tbaa !179
  %i.bn = fpext <4 x float> %i.bm to <4 x double>
  store <4 x double> %i.bn, ptr %i.bl, align 8, !tbaa !252
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 252
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next165.2.2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 128
  %indvars.iv.next165.2.2.1 = add nuw nsw i64 %.098133, 36 ; 3 uses
  %i.br = load <2 x float>, ptr %i.bo, align 4, !tbaa !179
  %i.bs = fpext <2 x float> %i.br to <2 x double>
  store <2 x double> %i.bs, ptr %i.bq, align 8, !tbaa !252
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.preheader124, !llvm.loop !437

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader124
  %i.bt = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.bt, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.preheader124.epil.preheader

.preheader124.epil.preheader:                     ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.098133.epil.init = phi i64 [ 0, %.preheader124.lr.ph ], [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 6 uses
  %lcmp.mod270 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod270)
  %i.bu = getelementptr inbounds nuw [144 x i8], ptr %i.u, i64 %indvars.iv.epil.init ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.bx = load <4 x float>, ptr %i.bv, align 4, !tbaa !179
  %i.by = fpext <4 x float> %i.bx to <4 x double>
  store <4 x double> %i.by, ptr %i.bw, align 8, !tbaa !252
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load <4 x float>, ptr %i.bz, align 4, !tbaa !179
  %i.cd = fpext <4 x float> %i.cc to <4 x double>
  store <4 x double> %i.cd, ptr %i.cb, align 8, !tbaa !252
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %23 = load float, ptr %i.ce, align 4, !tbaa !179
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %24 = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %25 = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  %26 = load float, ptr %25, align 4, !tbaa !179
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 84
  %27 = load <2 x float>, ptr %i.cg, align 4, !tbaa !179
  %28 = insertelement <4 x float> poison, float %23, i64 0
  %29 = insertelement <4 x float> %28, float %26, i64 1
  %30 = shufflevector <2 x float> %27, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %31 = shufflevector <4 x float> %29, <4 x float> %30, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ch = fpext <4 x float> %31 to <4 x double>
  store <4 x double> %i.ch, ptr %24, align 8, !tbaa !252
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 92
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 96
  %i.cl = load <4 x float>, ptr %i.ci, align 4, !tbaa !179
  %i.cm = fpext <4 x float> %i.cl to <4 x double>
  store <4 x double> %i.cm, ptr %i.ck, align 8, !tbaa !252
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bu, i64 108
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.098133.epil.init
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 128
  %indvars.iv.next165.2.2.epil = add nuw nsw i64 %.098133.epil.init, 18
  %i.cq = load <2 x float>, ptr %i.cn, align 4, !tbaa !179
  %i.cr = fpext <2 x float> %i.cq to <2 x double>
  store <2 x double> %i.cr, ptr %i.cp, align 8, !tbaa !252
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader124.epil.preheader
  %indvars.iv.next165.2.2.lcssa = phi i64 [ %indvars.iv.next165.2.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %indvars.iv.next165.2.2.epil, %.preheader124.epil.preheader ]
  %i.cs = trunc nsw i64 %indvars.iv.next165.2.2.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %.098.lcssa = phi i32 [ 0, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit ], [ %i.cs, %._crit_edge.loopexit ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cu = load float, ptr %i.ct, align 8, !tbaa !308
  %i.cv = fpext float %i.cu to double
  %i.cw = add nsw i32 %.098.lcssa, 1
  %i.cx = sext i32 %.098.lcssa to i64
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.cx
  store double %i.cv, ptr %i.cy, align 8, !tbaa !252
  %i.cz = sext i32 %i.cw to i64
  invoke void @_ZNK3gmx7MpiComm9sumReduceEmPd(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.cz, ptr noundef nonnull %i.p)
          to label %bb.c unwind label %_ZNSt6vectorIdSaIdEED2Ev.exit

bb.c:                                             ; preds = %._crit_edge
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !309
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.preheader120, label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread

.preheader120:                                    ; preds = %bb.c
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !275 ; 4 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.preheader119.lr.ph, label %._crit_edge145

.preheader119.lr.ph:                              ; preds = %.preheader120
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !310 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !311 ; 3 uses
  %wide.trip.count204 = zext nneg i32 %i.de to i64 ; 2 uses
  %xtraiter271 = and i64 %wide.trip.count204, 1
  %i.dk = icmp eq i32 %i.de, 1
  br i1 %i.dk, label %.preheader119.epil.preheader, label %.preheader119.lr.ph.new

.preheader119.lr.ph.new:                          ; preds = %.preheader119.lr.ph
  %unroll_iter275 = and i64 %wide.trip.count204, 2147483646
  br label %.preheader119

.preheader119:                                    ; preds = %.preheader119, %.preheader119.lr.ph.new
  %indvars.iv201 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %indvars.iv.next202.1, %.preheader119 ] ; 4 uses
  %.5143 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %indvars.iv.next190.2.2.1, %.preheader119 ] ; 6 uses
  %niter276 = phi i64 [ 0, %.preheader119.lr.ph.new ], [ %niter276.next.1, %.preheader119 ]
  %i.dl = getelementptr inbounds nuw [36 x i8], ptr %i.dh, i64 %indvars.iv201 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.dn = load <8 x double>, ptr %i.dm, align 8, !tbaa !252
  %i.do = fptrunc <8 x double> %i.dn to <8 x float>
  store <8 x float> %i.do, ptr %i.dl, align 4, !tbaa !179
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !252
  %i.ds = fptrunc double %i.dr to float
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store float %i.ds, ptr %i.dt, align 4, !tbaa !179
  %i.du = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv201 ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 72
  %i.dx = load <8 x double>, ptr %i.dw, align 8, !tbaa !252
  %i.dy = fptrunc <8 x double> %i.dx to <8 x float>
  store <8 x float> %i.dy, ptr %i.du, align 4, !tbaa !179
  %indvars.iv.next190.2.2 = add nuw nsw i64 %.5143, 18 ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 136
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !252
  %i.ec = fptrunc double %i.eb to float
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  store float %i.ec, ptr %i.ed, align 4, !tbaa !179
  %indvars.iv.next202 = or disjoint i64 %indvars.iv201, 1 ; 2 uses
  %i.ee = getelementptr inbounds nuw [36 x i8], ptr %i.dh, i64 %indvars.iv.next202 ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.eg = load <8 x double>, ptr %i.ef, align 8, !tbaa !252
  %i.eh = fptrunc <8 x double> %i.eg to <8 x float>
  store <8 x float> %i.eh, ptr %i.ee, align 4, !tbaa !179
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 64
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !252
  %i.el = fptrunc double %i.ek to float
  %i.em = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  store float %i.el, ptr %i.em, align 4, !tbaa !179
  %i.en = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv.next202 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 72
  %i.eq = load <8 x double>, ptr %i.ep, align 8, !tbaa !252
  %i.er = fptrunc <8 x double> %i.eq to <8 x float>
  store <8 x float> %i.er, ptr %i.en, align 4, !tbaa !179
  %indvars.iv.next190.2.2.1 = add nuw nsw i64 %.5143, 36 ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv.next190.2.2
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 136
  %i.eu = load double, ptr %i.et, align 8, !tbaa !252
  %i.ev = fptrunc double %i.eu to float
  %i.ew = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store float %i.ev, ptr %i.ew, align 4, !tbaa !179
  %indvars.iv.next202.1 = add nuw nsw i64 %indvars.iv201, 2 ; 2 uses
  %niter276.next.1 = add i64 %niter276, 2         ; 2 uses
  %niter276.ncmp.1 = icmp eq i64 %niter276.next.1, %unroll_iter275
  br i1 %niter276.ncmp.1, label %._crit_edge145.loopexit.unr-lcssa, label %.preheader119, !llvm.loop !438

._crit_edge145.loopexit.unr-lcssa:                ; preds = %.preheader119
  %lcmp.mod272.not = icmp eq i64 %xtraiter271, 0
  br i1 %lcmp.mod272.not, label %._crit_edge145, label %.preheader119.epil.preheader

.preheader119.epil.preheader:                     ; preds = %._crit_edge145.loopexit.unr-lcssa, %.preheader119.lr.ph
  %indvars.iv201.epil.init = phi i64 [ 0, %.preheader119.lr.ph ], [ %indvars.iv.next202.1, %._crit_edge145.loopexit.unr-lcssa ] ; 2 uses
  %.5143.epil.init = phi i64 [ 0, %.preheader119.lr.ph ], [ %indvars.iv.next190.2.2.1, %._crit_edge145.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod274 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod274)
  %i.ex = getelementptr inbounds nuw [36 x i8], ptr %i.dh, i64 %indvars.iv201.epil.init ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.ez = load <8 x double>, ptr %i.ey, align 8, !tbaa !252
  %i.fa = fptrunc <8 x double> %i.ez to <8 x float>
  store <8 x float> %i.fa, ptr %i.ex, align 4, !tbaa !179
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 64
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !252
  %i.fe = fptrunc double %i.fd to float
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store float %i.fe, ptr %i.ff, align 4, !tbaa !179
  %i.fg = getelementptr inbounds nuw [36 x i8], ptr %i.dj, i64 %indvars.iv201.epil.init ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 72
  %i.fj = load <8 x double>, ptr %i.fi, align 8, !tbaa !252
  %i.fk = fptrunc <8 x double> %i.fj to <8 x float>
  store <8 x float> %i.fk, ptr %i.fg, align 4, !tbaa !179
  %indvars.iv.next190.2.2.epil = add nuw nsw i64 %.5143.epil.init, 18
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5143.epil.init
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 136
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !252
  %i.fo = fptrunc double %i.fn to float
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  store float %i.fo, ptr %i.fp, align 4, !tbaa !179
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %.preheader119.epil.preheader, %._crit_edge145.loopexit.unr-lcssa, %.preheader120
  %.5.lcssa = phi i64 [ 0, %.preheader120 ], [ %indvars.iv.next190.2.2.1, %._crit_edge145.loopexit.unr-lcssa ], [ %indvars.iv.next190.2.2.epil, %.preheader119.epil.preheader ]
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.5.lcssa
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !252
  %i.fs = fptrunc double %i.fr to float
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.fs, ptr %i.ft, align 8, !tbaa !312
  br label %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %._crit_edge
  %i.fu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  resume { ptr, i32 } %i.fu

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread: ; preds = %bb.a, %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !309
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %.preheader, label %bb.f

_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread: ; preds = %bb.c, %._crit_edge145
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #30
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !309
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %._crit_edge216, label %bb.f

._crit_edge216:                                   ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !275
  br label %bb.e

.preheader:                                       ; preds = %_ZL25havePPDomainDecompositionPK12gmx_domdec_t.exit.thread
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !275 ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  br i1 %i.gd, label %.lr.ph, label %._crit_edge148

.lr.ph:                                           ; preds = %.preheader
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !290
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !310
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !311
  %wide.trip.count209 = zext nneg i32 %i.gc to i64
  br label %bb.d

._crit_edge148:                                   ; preds = %bb.d, %.preheader
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.gl = load float, ptr %i.gk, align 8, !tbaa !308
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 144
  store float %i.gl, ptr %i.gm, align 8, !tbaa !312
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv206 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next207, %bb.d ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [144 x i8], ptr %i.gf, i64 %indvars.iv206 ; 18 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = getelementptr inbounds nuw [36 x i8], ptr %i.gh, i64 %indvars.iv206 ; 9 uses
  %i.gq = load float, ptr %i.go, align 4, !tbaa !179
  store float %i.gq, ptr %i.gp, align 4, !tbaa !179
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !179
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  store float %i.gs, ptr %i.gt, align 4, !tbaa !179
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !179
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store float %i.gv, ptr %i.gw, align 4, !tbaa !179
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 12
  %i.gz = load float, ptr %i.gx, align 4, !tbaa !179
  store float %i.gz, ptr %i.gy, align 4, !tbaa !179
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !179
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  store float %i.hb, ptr %i.hc, align 4, !tbaa !179
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 28
  %i.he = load float, ptr %i.hd, align 4, !tbaa !179
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gp, i64 20
  store float %i.he, ptr %i.hf, align 4, !tbaa !179
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gp, i64 24
  %i.hi = load float, ptr %i.hg, align 4, !tbaa !179
  store float %i.hi, ptr %i.hh, align 4, !tbaa !179
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 36
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !179
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  store float %i.hk, ptr %i.hl, align 4, !tbaa !179
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !179
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  store float %i.hn, ptr %i.ho, align 4, !tbaa !179
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gn, i64 80
  %i.hq = getelementptr inbounds nuw [36 x i8], ptr %i.gj, i64 %indvars.iv206 ; 9 uses
  %i.hr = load float, ptr %i.hp, align 4, !tbaa !179
  store float %i.hr, ptr %i.hq, align 4, !tbaa !179
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gn, i64 84
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !179
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  store float %i.ht, ptr %i.hu, align 4, !tbaa !179
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gn, i64 88
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !179
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  store float %i.hw, ptr %i.hx, align 4, !tbaa !179
  %i.hy = getelementptr inbounds nuw i8, ptr %i.gn, i64 92
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hq, i64 12
  %i.ia = load float, ptr %i.hy, align 4, !tbaa !179
  store float %i.ia, ptr %i.hz, align 4, !tbaa !179
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gn, i64 96
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !179
  %i.id = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  store float %i.ic, ptr %i.id, align 4, !tbaa !179
  %i.ie = getelementptr inbounds nuw i8, ptr %i.gn, i64 100
  %i.if = load float, ptr %i.ie, align 4, !tbaa !179
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store float %i.if, ptr %i.ig, align 4, !tbaa !179
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.ij = load float, ptr %i.ih, align 4, !tbaa !179
  store float %i.ij, ptr %i.ii, align 4, !tbaa !179
  %i.ik = getelementptr inbounds nuw i8, ptr %i.gn, i64 108
  %i.il = load float, ptr %i.ik, align 4, !tbaa !179
  %i.im = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  store float %i.il, ptr %i.im, align 4, !tbaa !179
  %i.in = getelementptr inbounds nuw i8, ptr %i.gn, i64 112
  %i.io = load float, ptr %i.in, align 4, !tbaa !179
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  store float %i.io, ptr %i.ip, align 4, !tbaa !179
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %._crit_edge148, label %bb.d, !llvm.loop !439

bb.e:                                             ; preds = %._crit_edge216, %._crit_edge148
  %i.iq = phi i32 [ %.pre, %._crit_edge216 ], [ %i.gc, %._crit_edge148 ] ; 3 uses
  %i.ir = icmp sgt i32 %i.iq, 0
  br i1 %i.ir, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.e
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !290 ; 8 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !277 ; 10 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !277 ; 10 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !277 ; 10 uses
  %wide.trip.count214 = zext nneg i32 %i.iq to i64 ; 7 uses
  %min.iters.check = icmp ult i32 %i.iq, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph151
  %i.ja = shl nuw nsw i64 %wide.trip.count214, 3  ; 3 uses
  %i.jb = getelementptr i8, ptr %i.iv, i64 %i.ja  ; 3 uses
  %i.jc = getelementptr i8, ptr %i.ix, i64 %i.ja  ; 3 uses
  %i.jd = getelementptr i8, ptr %i.iz, i64 %i.ja  ; 3 uses
  %i.je = getelementptr nuw i8, ptr %i.it, i64 120 ; 3 uses
  %i.jf = mul nuw nsw i64 %wide.trip.count214, 144
  %i.jg = getelementptr i8, ptr %i.it, i64 %i.jf  ; 3 uses
  %bound0 = icmp ult ptr %i.iv, %i.jc
  %bound1 = icmp ult ptr %i.ix, %i.jb
  %found.conflict = and i1 %bound0, %bound1
  %bound0245 = icmp ult ptr %i.iv, %i.jd
  %bound1246 = icmp ult ptr %i.iz, %i.jb
  %found.conflict247 = and i1 %bound0245, %bound1246
  %conflict.rdx = or i1 %found.conflict, %found.conflict247
  %bound0248 = icmp ult ptr %i.iv, %i.jg
  %bound1249 = icmp ult ptr %i.je, %i.jb
  %found.conflict250 = and i1 %bound0248, %bound1249
  %conflict.rdx251 = or i1 %conflict.rdx, %found.conflict250
  %bound0252 = icmp ult ptr %i.ix, %i.jd
  %bound1253 = icmp ult ptr %i.iz, %i.jc
  %found.conflict254 = and i1 %bound0252, %bound1253
  %conflict.rdx255 = or i1 %conflict.rdx251, %found.conflict254
  %bound0256 = icmp ult ptr %i.ix, %i.jg
  %bound1257 = icmp ult ptr %i.je, %i.jc
  %found.conflict258 = and i1 %bound0256, %bound1257
  %conflict.rdx259 = or i1 %conflict.rdx255, %found.conflict258
  %bound0260 = icmp ult ptr %i.iz, %i.jg
  %bound1261 = icmp ult ptr %i.je, %i.jd
  %found.conflict262 = and i1 %bound0260, %bound1261
  %conflict.rdx263 = or i1 %conflict.rdx259, %found.conflict262
  br i1 %conflict.rdx263, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count214, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr inbounds nuw [144 x i8], ptr %i.it, <4 x i64> %vec.ind ; 3 uses
  %wide.gep264 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 120
  %wide.masked.gather = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep264, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !314, !alias.scope !533
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %index
  store <4 x double> %wide.masked.gather, ptr %i.jh, align 8, !tbaa !252, !alias.scope !534, !noalias !535
  %wide.gep265 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 128
  %wide.masked.gather266 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep265, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !315, !alias.scope !533
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %index
  store <4 x double> %wide.masked.gather266, ptr %i.ji, align 8, !tbaa !252, !alias.scope !536, !noalias !537
  %wide.gep267 = getelementptr inbounds nuw i8, <4 x ptr> %wide.gep, i64 136
  %wide.masked.gather268 = tail call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep267, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !316, !alias.scope !533
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %index
  store <4 x double> %wide.masked.gather268, ptr %i.jj, align 8, !tbaa !252, !alias.scope !538, !noalias !533
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.jk = icmp eq i64 %index.next, %n.vec
  br i1 %i.jk, label %middle.block, label %vector.body, !llvm.loop !445

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count214
  br i1 %cmp.n, label %._crit_edge152, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph151, %middle.block
  %indvars.iv211.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph151 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter277 = and i64 %wide.trip.count214, 3   ; 2 uses
  %lcmp.mod278.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod278.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv211.prol = phi i64 [ %indvars.iv.next212.prol, %scalar.ph.prol ], [ %indvars.iv211.ph, %scalar.ph.preheader ] ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN3gmx6Update4Impl21update_sd_second_halfERK10t_inputreclPfiNS_8ArrayRefIK12ParticleTypeEENS6_IKfEEP7t_statePK12gmx_domdec_tP6t_nrnbP13gmx_wallcyclePNS_11ConstraintsEbb.omp_outlined:bb.a
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.fe
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !260, !noalias !549
  %i.hi = fmul float %i.ew, %i.hh
  %i.hj = icmp ult i32 %.sroa.9.1.i.1, 14
  br i1 %i.hj, label %bb.p, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.2

bb.p:                                             ; preds = %bb.o
  %i.hk = icmp samesign ugt i32 %i.gw, 1
  br i1 %i.hk, label %bb.q, label %._crit_edge.i.i.i.i.2

._crit_edge.i.i.i.i.2:                            ; preds = %bb.p
  %.phi.trans.insert1.i.i.i.i.2 = zext nneg i32 %i.gw to i64
  %.phi.trans.insert2.i.i.i.i.2 = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.phi.trans.insert1.i.i.i.i.2
  %.pre.i.i.i.i.2 = load i64, ptr %.phi.trans.insert2.i.i.i.i.2, align 8, !tbaa !67, !noalias !549
  %i.hl = add nuw nsw i32 %i.gw, 1
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE(ptr noundef nonnull %i.r)
          to label %.noexc.2 unwind label %bb.r

.noexc.2:                                         ; preds = %bb.q
  %.sroa.024.0.copyload.i56.i.2 = load i64, ptr %i.r, align 8, !noalias !549
  %.sroa.74.0.copyload.i58.i.2 = load i64, ptr %.sroa.74.0..sroa_idx.i.i, align 8, !tbaa !177, !noalias !549
  %i.hm = load i64, ptr %14, align 8, !tbaa !67, !noalias !549 ; 6 uses
  %i.hn = add i64 %i.hm, %.sroa.024.0.copyload.i56.i.2
  %i.ho = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !67, !noalias !549 ; 6 uses
  %i.hp = xor i64 %i.hm, %i.ho
  %i.hq = xor i64 %i.hp, 2004413935125273122      ; 4 uses
  %i.hr = add i64 %i.ho, %.sroa.74.0.copyload.i58.i.2 ; 3 uses
  %i.hs = add i64 %i.hn, %i.hr                    ; 2 uses
  %i.ht = call i64 @llvm.fshl.i64(i64 %i.hr, i64 %i.hr, i64 16)
  %i.hu = xor i64 %i.ht, %i.hs                    ; 3 uses
  %i.hv = add i64 %i.hu, %i.hs                    ; 2 uses
  %i.hw = call i64 @llvm.fshl.i64(i64 %i.hu, i64 %i.hu, i64 42)
  %i.hx = xor i64 %i.hw, %i.hv                    ; 3 uses
  %i.hy = add i64 %i.hx, %i.hv                    ; 2 uses
  %i.hz = call i64 @llvm.fshl.i64(i64 %i.hx, i64 %i.hx, i64 12)
  %i.ia = xor i64 %i.hz, %i.hy                    ; 3 uses
  %i.ib = add i64 %i.ia, %i.hy                    ; 2 uses
  %i.ic = call i64 @llvm.fshl.i64(i64 %i.ia, i64 %i.ia, i64 31)
  %i.id = xor i64 %i.ic, %i.ib
  %i.ie = add i64 %i.ib, %i.ho
  %i.if = add i64 %i.hq, 1
  %i.ig = add i64 %i.if, %i.id                    ; 3 uses
  %i.ih = add i64 %i.ie, %i.ig                    ; 2 uses
  %i.ii = call i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 16)
  %i.ij = xor i64 %i.ii, %i.ih                    ; 3 uses
  %i.ik = add i64 %i.ij, %i.ih                    ; 2 uses
  %i.il = call i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 32)
  %i.im = xor i64 %i.il, %i.ik                    ; 3 uses
  %i.in = add i64 %i.im, %i.ik                    ; 2 uses
  %i.io = call i64 @llvm.fshl.i64(i64 %i.im, i64 %i.im, i64 24)
  %i.ip = xor i64 %i.io, %i.in                    ; 3 uses
  %i.iq = add i64 %i.ip, %i.in                    ; 2 uses
  %i.ir = call i64 @llvm.fshl.i64(i64 %i.ip, i64 %i.ip, i64 21)
  %i.is = xor i64 %i.ir, %i.iq
  %i.it = add i64 %i.iq, %i.hq
  %i.iu = add i64 %i.hm, 2
  %i.iv = add i64 %i.iu, %i.is                    ; 3 uses
  %i.iw = add i64 %i.it, %i.iv                    ; 2 uses
  %i.ix = call i64 @llvm.fshl.i64(i64 %i.iv, i64 %i.iv, i64 16)
  %i.iy = xor i64 %i.ix, %i.iw                    ; 3 uses
  %i.iz = add i64 %i.iy, %i.iw                    ; 2 uses
  %i.ja = call i64 @llvm.fshl.i64(i64 %i.iy, i64 %i.iy, i64 42)
  %i.jb = xor i64 %i.ja, %i.iz                    ; 3 uses
  %i.jc = add i64 %i.jb, %i.iz                    ; 2 uses
  %i.jd = call i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 12)
  %i.je = xor i64 %i.jd, %i.jc                    ; 3 uses
  %i.jf = add i64 %i.je, %i.jc                    ; 2 uses
  %i.jg = call i64 @llvm.fshl.i64(i64 %i.je, i64 %i.je, i64 31)
  %i.jh = xor i64 %i.jg, %i.jf
  %i.ji = add i64 %i.jf, %i.hm
  %i.jj = add i64 %i.ho, 3
  %i.jk = add i64 %i.jj, %i.jh                    ; 3 uses
  %i.jl = add i64 %i.ji, %i.jk                    ; 2 uses
  %i.jm = call i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 16)
  %i.jn = xor i64 %i.jm, %i.jl                    ; 3 uses
  %i.jo = add i64 %i.jn, %i.jl                    ; 2 uses
  %i.jp = call i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 32)
  %i.jq = xor i64 %i.jp, %i.jo                    ; 3 uses
  %i.jr = add i64 %i.jq, %i.jo                    ; 2 uses
  %i.js = call i64 @llvm.fshl.i64(i64 %i.jq, i64 %i.jq, i64 24)
  %i.jt = xor i64 %i.js, %i.jr                    ; 3 uses
  %i.ju = add i64 %i.jt, %i.jr                    ; 2 uses
  %i.jv = call i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 21)
  %i.jw = xor i64 %i.jv, %i.ju
  %i.jx = add i64 %i.ju, %i.ho
  %i.jy = add i64 %i.hq, 4
  %i.jz = add i64 %i.jy, %i.jw                    ; 3 uses
  %i.ka = add i64 %i.jx, %i.jz                    ; 2 uses
  %i.kb = call i64 @llvm.fshl.i64(i64 %i.jz, i64 %i.jz, i64 16)
  %i.kc = xor i64 %i.kb, %i.ka                    ; 3 uses
  %i.kd = add i64 %i.kc, %i.ka                    ; 2 uses
  %i.ke = call i64 @llvm.fshl.i64(i64 %i.kc, i64 %i.kc, i64 42)
  %i.kf = xor i64 %i.ke, %i.kd                    ; 3 uses
  %i.kg = add i64 %i.kf, %i.kd                    ; 2 uses
  %i.kh = call i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 12)
  %i.ki = xor i64 %i.kh, %i.kg                    ; 3 uses
  %i.kj = add i64 %i.ki, %i.kg                    ; 2 uses
  %i.kk = call i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 31)
  %i.kl = xor i64 %i.kk, %i.kj
  %i.km = add i64 %i.kj, %i.hq                    ; 2 uses
  %i.kn = add i64 %i.hm, 5
  %i.ko = add i64 %i.kn, %i.kl
  store i64 %i.km, ptr %i.s, align 8, !noalias !549
  store i64 %i.ko, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !177, !noalias !549
  br label %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2

_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2: ; preds = %.noexc.2, %._crit_edge.i.i.i.i.2
  %i.kp = phi i64 [ %i.ho, %.noexc.2 ], [ %i.bn, %._crit_edge.i.i.i.i.2 ]
  %i.kq = phi i64 [ %i.hm, %.noexc.2 ], [ %i.bo, %._crit_edge.i.i.i.i.2 ]
  %i.kr = phi i64 [ %i.km, %.noexc.2 ], [ %.pre.i.i.i.i.2, %._crit_edge.i.i.i.i.2 ]
  %i.ks = phi i32 [ 1, %.noexc.2 ], [ %i.hl, %._crit_edge.i.i.i.i.2 ]
  store i32 %i.ks, ptr %i.t, align 8, !tbaa !323, !noalias !549
  br label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.2

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i.2: ; preds = %bb.o, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2
  %i.kt = phi i64 [ %i.kp, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2 ], [ %i.bn, %bb.o ]
  %i.ku = phi i64 [ %i.kq, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2 ], [ %i.bo, %bb.o ]
  %i.kv = phi i64 [ %i.kr, %_ZN3gmx19ThreeFry2x64GeneralILj20ELj0EEclEv.exit.i.i.i.2 ], [ %.sroa.6.2.i.1, %bb.o ] ; 2 uses
  %i.kw = and i64 %i.kv, 16383
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.kw
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !179, !noalias !549
  %i.kz = lshr i64 %i.kv, 14
  %i.la = fadd float %i.ky, 0.000000e+00
  %i.lb = fmul float %i.hi, %i.la
  %i.lc = fpext float %i.lb to double
  %i.ld = call double @llvm.fmuladd.f64(double %i.hb, double %i.he, double %i.lc)
  %i.le = fptrunc double %i.ld to float           ; 2 uses
  store float %i.le, ptr %i.gz, align 4, !tbaa !179, !alias.scope !548, !noalias !547
  %i.lf = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.lg = load float, ptr %i.lf, align 4, !tbaa !179, !alias.scope !547, !noalias !548
  %i.lh = fpext float %i.lg to double
  %i.li = fsub float %i.le, %i.ha
  %i.lj = fpext float %i.li to double
  %i.lk = fmul double %i.lj, 5.000000e-01
  %i.ll = call double @llvm.fmuladd.f64(double %i.lk, double %i.bl, double %i.lh)
  %i.lm = fptrunc double %i.ll to float
  store float %i.lm, ptr %i.lf, align 4, !tbaa !179, !alias.scope !547, !noalias !548
  br label %.split9.us.i

.split.i.preheader:                               ; preds = %bb.l
  %i.ln = load i32, ptr %i.fg, align 4, !tbaa !68, !noalias !549
  %.not46.i.not = icmp eq i32 %i.ln, 0            ; 2 uses
  br i1 %.not46.i.not, label %_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i, label %bb.m

_ZN3gmx27TabulatedNormalDistributionIfLj14EEclINS_12ThreeFry2x64ILj0EEEEEfRT_.exit.i: ; preds = %.split.i.preheader
  %i.lo = load float, ptr %i.fh, align 4, !tbaa !179, !alias.scope !548, !noalias !547 ; 2 uses
  %i.lp = fpext float %i.lo to double
  %i.lq = load ptr, ptr %i.u, align 8, !tbaa !33, !noalias !549
  %i.lr = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.fe
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !258, !noalias !549
  %i.lt = load ptr, ptr %i.v, align 8, !tbaa !29, !noalias !549
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.fe
  %i.lv = load float, ptr %i.lu, align 4, !tbaa !260, !noalias !549
  %i.lw = fmul float %i.ew, %i.lv
  store i32 1, ptr %i.t, align 8, !tbaa !323, !noalias !549
  %i.lx = and i64 %i.er, 16383
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr @_ZN3gmx27TabulatedNormalDistributionIfLj14EE8c_table_E, i64 %i.lx
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !179, !noalias !549
  %i.ma = lshr i64 %i.er, 14
  %i.mb = fadd float %i.lz, 0.000000e+00
  %i.mc = fmul float %i.lw, %i.mb
  %i.md = fpext float %i.mc to double
  %i.me = call double @llvm.fmuladd.f64(double %i.lp, double %i.ls, double %i.md)
  %i.mf = fptrunc double %i.me to float           ; 2 uses
  store float %i.mf, ptr %i.fh, align 4, !tbaa !179, !alias.scope !548, !noalias !547
  %i.mg = load float, ptr %i.fi, align 4, !tbaa !179, !alias.scope !547, !noalias !548
  %i.mh = fpext float %i.mg to double
  %i.mi = fsub float %i.mf, %i.lo
  %i.mj = fpext float %i.mi to double
  %i.mk = fmul double %i.mj, 5.000000e-01
  %i.ml = call double @llvm.fmuladd.f64(double %i.mk, double %i.bl, double %i.mh)
  %i.mm = fptrunc double %i.ml to float
  store float %i.mm, ptr %i.fi, align 4, !tbaa !179, !alias.scope !547, !noalias !548
  br label %bb.m

.loopexit.loopexit:                               ; preds = %.split9.us.i
  %.pre = load i32, ptr %i.b, align 4, !tbaa !68
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.e
  %i.mn = phi i32 [ %.pre, %.loopexit.loopexit ], [ %i.w, %bb.e ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20, !noalias !549
  %.not.not = icmp slt i32 %.056, %i.mn
  br i1 %.not.not, label %bb.c, label %._crit_edge

bb.r:                                             ; preds = %bb.q
  %i.mo = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %.030 = extractvalue { ptr, i32 } %i.mo, 1
  %.031 = extractvalue { ptr, i32 } %i.mo, 0      ; 2 uses
  %i.mp = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.mq = icmp eq i32 %.030, %i.mp
  br i1 %i.mq, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.mr = call ptr @__cxa_begin_catch(ptr %.031) #20
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.mr) #32
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %bb.s
  unreachable

._crit_edge:                                      ; preds = %.loopexit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.v:                                             ; preds = %bb.s
  %i.ms = landingpad { ptr, i32 }
          catch ptr null
  %i.mt = extractvalue { ptr, i32 } %i.ms, 0
  call void @__clang_call_terminate(ptr %i.mt) #31
  unreachable

bb.w:                                             ; preds = %bb.r
  call void @__clang_call_terminate(ptr %.031) #31
  unreachable
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #21

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #20

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #20

; Function Attrs: nounwind
declare !callback !327 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #20

declare noundef zeroext i1 @_ZN3gmx11Constraints5applyEblifNS_19ArrayRefWithPaddingINS_11BasicVectorIfEEEES4_NS_8ArrayRefIS3_EEPA3_KffPfS4_bPA3_fNS_18ConstraintVariableE(ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i64 noundef, i32 noundef, float noundef, ptr noundef align 8 dead_on_return, ptr noundef align 8 dead_on_return, ptr noundef byval(%"class.gmx::ArrayRef.245") align 8, ptr noundef, float noundef, ptr noundef, ptr noundef align 8 dead_on_return, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @_Z16wallcycleBarrierP13gmx_wallcycle(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind noalias writable sret(%"class.gmx::InternalError") align 8 %0, ptr noundef align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.286", align 8 ; 7 uses
  %4 = alloca %"struct.std::type_index", align 8  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.a, align 8, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !329
  store ptr %i.a, ptr %3, align 8, !tbaa !331
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %4, align 8, !tbaa !334
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.d = load ptr, ptr %3, align 8, !tbaa !331    ; 3 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !273
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #20, !inline_history !550
  br label %_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.i = load ptr, ptr %3, align 8, !tbaa !331    ; 3 uses
  %.not.i3.i = icmp eq ptr %i.i, null
  br i1 %.not.i3.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i: ; preds = %bb.c
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !273
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i) #20, !inline_history !550
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !335
  store ptr null, ptr %i.o, align 8, !tbaa !336
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !335
  store ptr null, ptr %i.n, align 8, !tbaa !339
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %0, align 8, !tbaa !273
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !273
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !336  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !553
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !554
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !551
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !273
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !551
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !555

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !342  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !343  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !345
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #20
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !346
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #30
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !177
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !347
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.67) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8, !tbaa !67
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !176
  %i.g = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.g, ptr %i.b, align 8, !tbaa !177
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !177
  store i8 %i.i, ptr %i.h, align 1, !tbaa !177
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !348
  %i.l = load ptr, ptr %0, align 8, !tbaa !176
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !273
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !556
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !177
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !68   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !68
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !273
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !556
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE(ptr noundef %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc.i.i:
  %1 = alloca %"class.std::unique_ptr.286", align 8 ; 7 uses
  %2 = alloca %"struct.std::type_index", align 8  ; 5 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 14 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 7 uses
  %i.b = tail call ptr @__cxa_allocate_exception(i64 24) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 68, ptr %i.a, align 8, !tbaa !67
  %i.d = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZN3gmx20ExceptionInitializerD2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.d, ptr %4, align 8, !tbaa !176
  %i.e = load i64, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(68) %i.d, ptr noundef nonnull align 1 dereferenceable(68) @.str.68, i64 68, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !348
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  store i8 0, ptr %i.g, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i8 0, i64 24, i1 false)
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %3, align 8, !tbaa !273
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !273
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr @__PRETTY_FUNCTION__._ZN3gmx8internal14highBitCounter9incrementImLm2ELj0EEEvPSt5arrayIT_XT0_EE, ptr %i.i, align 8, !tbaa !328
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.66, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !328
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 266, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !68
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20, !noalias !560
  %i.j = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %.noexc9 unwind label %bb.f    ; 3 uses

.noexc9:                                          ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %i.j, align 8, !tbaa !273, !noalias !560
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !tbaa.struct !329, !noalias !560
  store ptr %i.j, ptr %1, align 8, !tbaa !331, !noalias !560
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20, !noalias !560
  store ptr @_ZTIN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, ptr %2, align 8, !tbaa !334, !noalias !560
  invoke void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.c, !noalias !560

bb.b:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !560
  %i.l = load ptr, ptr %1, align 8, !tbaa !331, !noalias !560 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %bb.d, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !273, !noalias !560
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !560
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #20, !noalias !560, !inline_history !559
  br label %bb.d

bb.c:                                             ; preds = %.noexc9
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20, !noalias !560
  %i.q = load ptr, ptr %1, align 8, !tbaa !331, !noalias !560 ; 3 uses
  %.not.i3.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i.i, label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i, label %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i

_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !273, !noalias !560
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !noalias !560
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #20, !noalias !560, !inline_history !559
  br label %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i

_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i4.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !560
  br label %.body

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i.i, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20, !noalias !560
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.x = load <2 x ptr>, ptr %i.v, align 8, !tbaa !335, !noalias !560
  store ptr null, ptr %i.w, align 8, !tbaa !336, !noalias !560
  store <2 x ptr> %i.x, ptr %i.u, align 8, !tbaa !335, !alias.scope !560
  store ptr null, ptr %i.v, align 8, !tbaa !339, !noalias !560
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %i.b, align 8, !tbaa !273, !alias.scope !560
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.l unwind label %bb.f

_ZN3gmx20ExceptionInitializerD2Ev.exit.thread:    ; preds = %.noexc.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.j

bb.e:                                             ; preds = %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.f:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.a ]
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i, %bb.f
  %.0.lpad-body = phi i1 [ %.0, %bb.f ], [ true, %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.aa, %bb.f ], [ %i.p, %_ZNSt10unique_ptrIN3gmx8internal14IExceptionInfoESt14default_deleteIS2_EED2Ev.exit5.i.i ]
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #20
  br label %bb.g

bb.g:                                             ; preds = %.body, %bb.e
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.z, %bb.e ] ; 4 uses
  %.1 = phi i1 [ %.0.lpad-body, %.body ], [ true, %bb.e ] ; 2 uses
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !342 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !343 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.af, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %i.ae = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !345
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i.i) #20
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %i.ad
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.h, align 8, !tbaa !342
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.g
  %i.ag = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.ab, %bb.g ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !346
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = ptrtoint ptr %i.ag to i64
  %i.al = sub i64 %i.aj, %i.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.al) #30
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i: ; preds = %bb.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.am = load ptr, ptr %4, align 8, !tbaa !176   ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.c
  br i1 %i.an, label %_ZN3gmx20ExceptionInitializerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !177
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.1, label %bb.j, label %bb.k

_ZN3gmx20ExceptionInitializerD2Ev.exit:           ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.1, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN3gmx20ExceptionInitializerD2Ev.exit.thread, %_ZN3gmx20ExceptionInitializerD2Ev.exit
  %.pn.pn13 = phi { ptr, i32 } [ %i.y, %_ZN3gmx20ExceptionInitializerD2Ev.exit.thread ], [ %.pn, %_ZN3gmx20ExceptionInitializerD2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.j, %_ZN3gmx20ExceptionInitializerD2Ev.exit
  %.pn.pn12 = phi { ptr, i32 } [ %.pn.pn13, %bb.j ], [ %.pn, %_ZN3gmx20ExceptionInitializerD2Ev.exit ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn.pn12

bb.l:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx6Update4Impl13finish_updateERK10t_inputrecbiNS_8ArrayRefIKtEEP7t_stateP13gmx_wallcycleb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.g, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 1, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 0, ptr %i.d, align 4, !tbaa !68
  %i.h = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !68
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !68
  %i.k = load i32, ptr %i.a, align 4, !tbaa !68   ; 4 uses
  %.not14 = icmp sgt i32 %i.k, %i.j
  br i1 %.not14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = add nsw i32 %i.j, 1
  %i.n = add i32 %i.j, 1
  %i.o = sub i32 %i.n, %i.k
  %i.p = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %i.l, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.q = load i64, ptr %4, align 8
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = getelementptr inbounds [12 x i8], ptr %i.r, i64 %indvars.iv.prol
  %i.t = load i64, ptr %3, align 8
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = getelementptr inbounds [12 x i8], ptr %i.u, i64 %indvars.iv.prol
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.s, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !561

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.w = icmp ult i32 %i.p, 3
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.x = load i64, ptr %4, align 8
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = getelementptr inbounds [12 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i64, ptr %3, align 8
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = getelementptr inbounds [12 x i8], ptr %i.ab, i64 %indvars.iv
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ac, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = load i64, ptr %4, align 8
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds [12 x i8], ptr %i.ae, i64 %indvars.iv.next
  %i.ag = load i64, ptr %3, align 8
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.next
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ai, ptr noundef nonnull align 4 dereferenceable(12) %i.af, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.aj = load i64, ptr %4, align 8
  %i.ak = inttoptr i64 %i.aj to ptr
  %i.al = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.next.1
  %i.am = load i64, ptr %3, align 8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds [12 x i8], ptr %i.an, i64 %indvars.iv.next.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ao, ptr noundef nonnull align 4 dereferenceable(12) %i.al, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ap = load i64, ptr %4, align 8
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = getelementptr inbounds [12 x i8], ptr %i.aq, i64 %indvars.iv.next.2
  %i.as = load i64, ptr %3, align 8
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds [12 x i8], ptr %i.at, i64 %indvars.iv.next.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.au, ptr noundef nonnull align 4 dereferenceable(12) %i.ar, i64 12, i1 false), !tbaa.struct !274
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.m, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_Z18gmx_error_functionPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNSt10filesystem7__cxx114pathEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 1 dereferenceable(61) %1, i8 noundef zeroext %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(61) %1) #20 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.b, ptr %i.a, align 8, !tbaa !67
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !176
  %i.f = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.f, ptr %i.c, align 8, !tbaa !177
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.g = phi ptr [ %i.e, %.noexc.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.h = load i8, ptr %1, align 1, !tbaa !177
  store i8 %i.h, ptr %i.g, align 1, !tbaa !177
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %1, i64 %i.b, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.i = load i64, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.i, ptr %i.j, align 8, !tbaa !348
  %i.k = load ptr, ptr %0, align 8, !tbaa !176
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !350  ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull %i.p) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.o, %bb.i ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.s = load i64, ptr %i.c, align 8, !tbaa !177
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !350  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #20
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !176    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !177
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_Z21update_disres_historyRK12t_disresdataP9history_t(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #8

declare void @_ZN12t_oriresdata13updateHistoryEv(ptr noundef nonnull align 8 dereferenceable(544)) local_unnamed_addr #8

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(888) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %11, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %12, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %13, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %15, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #25 personality ptr @__gxx_personality_v0 {
bb.a:
  %19 = alloca %"class.gmx::ThreeFry2x64", align 8 ; 10 uses
  %20 = alloca %"class.gmx::ThreeFry2x64", align 8 ; 10 uses
  %21 = alloca %"class.gmx::BasicMatrix3x3", align 8 ; 17 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.gmx::InternalError", align 8 ; 6 uses
  %26 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %27 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %i.a = alloca [3 x [3 x float]], align 16       ; 8 uses
  %28 = alloca %"class.gmx::BasicMatrix3x3", align 8 ; 6 uses
  %29 = alloca %class.anon, align 8               ; 33 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %30 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !68     ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.ez

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 0, ptr %i.b, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %i.h, ptr %i.c, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 1, ptr %i.d, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  store i32 0, ptr %i.e, align 4, !tbaa !68
  %i.i = load i32, ptr %0, align 4, !tbaa !68     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.e, ptr nonnull %i.b, ptr nonnull %i.c, ptr nonnull %i.d, i32 1, i32 1)
  %i.j = load i32, ptr %i.c, align 4, !tbaa !68
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 2 uses
  store i32 %i.k, ptr %i.c, align 4, !tbaa !68
  %i.l = load i32, ptr %i.b, align 4, !tbaa !68   ; 2 uses
  %.not276 = icmp sgt i32 %i.l, %i.k
  br i1 %.not276, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 192
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 760
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 840 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 816 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 544
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 552 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %.sroa.74.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 6 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %19, i64 40 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %19, i64 48 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 212 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %21, i64 48 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 3 uses
  %.sroa.74.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %20, i64 32 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %20, i64 40 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 48 ; 4 uses
  %.sroa.gep45.i = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 80 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 196
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 824
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 676 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %28, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %29, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %29, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %29, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %29, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %29, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %29, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %29, i64 56
  %i.ba = getelementptr inbounds nuw i8, ptr %29, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %29, i64 72
  %i.bc = getelementptr inbounds nuw i8, ptr %29, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %29, i64 88
  %i.be = getelementptr inbounds nuw i8, ptr %29, i64 96
  %i.bf = getelementptr inbounds nuw i8, ptr %29, i64 104
  %i.bg = getelementptr inbounds nuw i8, ptr %29, i64 112
  %i.bh = getelementptr inbounds nuw i8, ptr %29, i64 120
  %i.bi = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %29, i64 136
  %i.bk = getelementptr inbounds nuw i8, ptr %29, i64 144
  %i.bl = getelementptr inbounds nuw i8, ptr %29, i64 152
  %i.bm = getelementptr inbounds nuw i8, ptr %29, i64 160 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %29, i64 208 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %29, i64 164
  %i.bp = getelementptr inbounds nuw i8, ptr %29, i64 168
  %i.bq = getelementptr inbounds nuw i8, ptr %29, i64 172
  %i.br = getelementptr inbounds nuw i8, ptr %29, i64 176 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %29, i64 184 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %29, i64 188 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %29, i64 192 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit
  %.0277 = phi i32 [ %i.l, %.lr.ph ], [ %i.cd, %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit ] ; 4 uses
  %i.bz = load i32, ptr %2, align 4, !tbaa !68    ; 2 uses
  %i.ca = load i32, ptr %3, align 4, !tbaa !68    ; 2 uses
  %i.cb = add i32 %i.ca, 15
  %i.cc = sdiv i32 %i.cb, 16                      ; 2 uses
  %i.cd = add nsw i32 %.0277, 1                   ; 2 uses
  %i.ce = mul nsw i32 %i.cc, %.0277
  %i.cf = mul nsw i32 %i.cc, %i.cd
  %i.cg = insertelement <2 x i32> poison, i32 %i.ce, i64 0
  %i.ch = insertelement <2 x i32> %i.cg, i32 %i.cf, i64 1
  %i.ci = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.cj = shufflevector <2 x i32> %i.ci, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.ck = sdiv <2 x i32> %i.ch, %i.cj             ; 2 uses
  %i.cl = extractelement <2 x i32> %i.ck, i64 0
  %i.cm = shl i32 %i.cl, 4                        ; 35 uses
  %i.cn = extractelement <2 x i32> %i.ck, i64 1
  %i.co = shl nsw i32 %i.cn, 4
  %i.cp = add nsw i32 %i.bz, -1
  %i.cq = icmp eq i32 %.0277, %i.cp
  %spec.select.i = select i1 %i.cq, i32 %i.ca, i32 %i.co ; 41 uses
  %i.cr = load ptr, ptr %4, align 8, !tbaa !72    ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 416
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !238 ; 24 uses
  %i.cu = load ptr, ptr %i.m, align 8, !tbaa !16  ; 24 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 456
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !238 ; 25 uses
  %i.cx = load ptr, ptr %6, align 8, !tbaa !352   ; 23 uses
  %i.cy = load i32, ptr %i.n, align 4, !tbaa !172
  switch i32 %i.cy, label %bb.er [
    i32 0, label %bb.d
    i32 9, label %bb.bj
    i32 3, label %bb.ct
    i32 10, label %bb.dr
    i32 11, label %bb.dr
  ]

bb.d:                                             ; preds = %bb.c
  %i.cz = load float, ptr %8, align 4, !tbaa !179 ; 45 uses
  %i.da = load i64, ptr %9, align 8, !tbaa !67    ; 2 uses
  %i.db = load i32, ptr %i.o, align 8, !tbaa !264 ; 2 uses
  %i.dc = load i32, ptr %i.p, align 4, !tbaa !692
  %i.dd = load i32, ptr %i.al, align 4, !tbaa !693 ; 7 uses
  %i.de = load i32, ptr %i.ae, align 4, !tbaa !694 ; 3 uses
  %i.df = load ptr, ptr %i.w, align 8, !tbaa !210 ; 15 uses
  %i.dg = load ptr, ptr %i.x, align 8, !tbaa !210 ; 5 uses
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 %i.dj
  %i.dl = load i32, ptr %i.am, align 8, !tbaa !270 ; 2 uses
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !210 ; 5 uses
  %i.dn = load ptr, ptr %i.u, align 8, !tbaa !210 ; 2 uses
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dq
  %i.ds = load ptr, ptr %i.v, align 8, !tbaa !695 ; 4 uses
  %i.dt = load ptr, ptr %i.an, align 8, !tbaa !696
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dw
  %i.dy = load ptr, ptr %10, align 8, !tbaa !63   ; 2 uses
  %i.dz = load ptr, ptr %11, align 8, !tbaa !65   ; 19 uses
  %i.ea = load ptr, ptr %i.ap, align 8, !tbaa !65
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ed
  %i.ef = load ptr, ptr %12, align 8, !tbaa !74   ; 11 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cr, i64 52 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.qv = shufflevector <2 x float> %i.qu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.qv, <2 x float> %i.qt)
  %i.qx = fmul <2 x float> %i.pi, %i.qw
  %i.qy = load <2 x float>, ptr %i.qk, align 4, !tbaa !179, !alias.scope !775, !noalias !776
  %i.qz = load <2 x float>, ptr %i.ql, align 4, !tbaa !179, !noalias !769
  %i.ra = fmul <2 x float> %i.qy, %i.qz
  %i.rb = insertelement <2 x float> poison, float %.055.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.rc = shufflevector <2 x float> %i.rb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rd = fmul <2 x float> %i.rc, %i.qr
  %i.re = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ra, <2 x float> %i.pg, <2 x float> %i.rd)
  %i.rf = fsub <2 x float> %i.re, %i.qx
  %i.rg = insertelement <2 x float> poison, float %i.ps, i64 0
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ri = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rh, <2 x float> %i.pu, <2 x float> %i.rf)
  %i.rj = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rl = fdiv <2 x float> %i.ri, %i.rk
  %i.rm = load <2 x float>, ptr %i.qo, align 4, !tbaa !179, !alias.scope !763, !noalias !777
  %i.rn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rm, <2 x float> %i.pg, <2 x float> %i.rl) ; 2 uses
  store <2 x float> %i.rn, ptr %i.pt, align 4, !tbaa !179, !alias.scope !771, !noalias !772
  %i.ro = load <2 x float>, ptr %i.qp, align 4, !tbaa !179, !alias.scope !778, !noalias !779
  %i.rp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rn, <2 x float> %i.pg, <2 x float> %i.ro)
  store <2 x float> %i.rp, ptr %i.qq, align 4, !tbaa !179, !alias.scope !780, !noalias !781
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !179, !alias.scope !775, !noalias !776
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !179, !noalias !769
  %i.ru = fmul float %i.rr, %i.rt
  %i.rv = fneg float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i
  %i.rw = fmul float %.055.i.i.i.i.i.i.i.i.i.i, %i.rv
  %i.rx = call float @llvm.fmuladd.f32(float %i.ru, float %i.cz, float %i.rw)
  %i.ry = fsub float %i.rx, %i.qj
  %i.rz = call float @llvm.fmuladd.f32(float %i.ps, float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i, float %i.ry)
  %i.sa = fdiv float %i.rz, %i.qm
  %i.sb = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !179, !alias.scope !763, !noalias !777
  %i.sd = call float @llvm.fmuladd.f32(float %i.sc, float %i.cz, float %i.sa) ; 2 uses
  store float %i.sd, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !179, !alias.scope !771, !noalias !772
  %i.se = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.sf = load float, ptr %i.se, align 4, !tbaa !179, !alias.scope !778, !noalias !779
  %i.sg = call float @llvm.fmuladd.f32(float %i.sd, float %i.cz, float %i.sf)
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qq, i64 8
  store float %i.sg, ptr %i.sh, align 4, !tbaa !179, !alias.scope !780, !noalias !781
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i", label %bb.w, !llvm.loop !589

bb.ad:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %25), !noalias !702
  br i1 %i.fs, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.si = getelementptr i8, ptr %i.ef, i64 32
  %.val1.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.si, align 8, !tbaa !290, !noalias !702
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !783)
  call void @llvm.experimental.noalias.scope.decl(metadata !784)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.sj = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.sj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ae
  %i.sk = icmp eq ptr %i.df, %i.dg
  %i.sl = sitofp i32 %i.dd to double
  %i.sm = fmul nnan double %i.sl, 5.000000e-01
  %i.sn = fpext float %i.cz to double
  %i.so = fmul double %i.sm, %i.sn
  %i.sp = load <4 x float>, ptr %i.bm, align 8, !tbaa !179, !noalias !787 ; 3 uses
  %i.sq = load <4 x float>, ptr %i.br, align 8    ; 2 uses
  %i.sr = load float, ptr %i.bs, align 8, !tbaa !179, !noalias !787
  %i.ss = load float, ptr %i.bt, align 4, !tbaa !179, !noalias !787
  %i.st = load float, ptr %i.bu, align 8, !tbaa !179, !noalias !787
  %i.su = sext i32 %i.cm to i64
  %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i = sext i32 %spec.select.i to i64
  %i.sv = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sx = insertelement <2 x float> poison, float %i.fo, i64 0
  %i.sy = shufflevector <2 x float> %i.sx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sz = shufflevector <4 x float> %i.sp, <4 x float> %i.sq, <2 x i32> <i32 2, i32 5>
  %i.ta = shufflevector <4 x float> %i.sp, <4 x float> %i.sq, <2 x i32> <i32 1, i32 4>
  %i.tb = shufflevector <4 x float> %i.sp, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.af

bb.af:                                            ; preds = %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %indvars.iv.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.su, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ] ; 7 uses
  %.0457.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %.1.i.i.i.i.i.i.i.i.i.i.i, %bb.aj ]
  br i1 %i.sk, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.tc = getelementptr inbounds [2 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i
  %i.td = load i16, ptr %i.tc, align 2, !tbaa !241, !noalias !787
  %i.te = zext i16 %i.td to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %.0457.i.i.i.i.i.i.i.i.i.i.i, %bb.af ], [ %i.te, %bb.ag ] ; 2 uses
  %i.tf = zext nneg i32 %.1.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.tg = getelementptr inbounds nuw [144 x i8], ptr %.val1.i.i.i.i.i.i.i.i.i.i, i64 %i.tf
  %i.th = getelementptr inbounds nuw i8, ptr %i.tg, i64 116
  %i.ti = load float, ptr %i.th, align 4, !tbaa !353, !noalias !788 ; 2 uses
  %i.tj = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.tk = load <2 x float>, ptr %i.tj, align 4, !alias.scope !789, !noalias !790 ; 6 uses
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.tj, i64 8 ; 2 uses
  %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load float, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !177, !alias.scope !789, !noalias !790 ; 4 uses
  br i1 %i.es, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.tl = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %i.tf
  %i.tm = load double, ptr %i.tl, align 8, !tbaa !252, !alias.scope !791, !noalias !792
  %i.tn = fmul double %i.so, %i.tm
  %i.to = fptrunc double %i.tn to float
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.047.i.i.i.i.i.i.i.i.i.i.i = phi float [ %i.to, %bb.ai ], [ 0.000000e+00, %bb.ah ] ; 3 uses
  %i.tp = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tb, <2 x float> %i.tp, <2 x float> zeroinitializer)
  %i.tr = extractelement <2 x float> %i.tk, i64 0
  %i.ts = call float @llvm.fmuladd.f32(float %i.sr, float %i.tr, float 0.000000e+00)
  %i.tt = extractelement <2 x float> %i.tk, i64 1
  %i.tu = call float @llvm.fmuladd.f32(float %i.ss, float %i.tt, float %i.ts)
  %i.tv = call float @llvm.fmuladd.f32(float %i.st, float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, float %i.tu)
  %i.tw = fmul float %i.fo, %i.tv
  %i.tx = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ty = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tz = fadd float %.047.i.i.i.i.i.i.i.i.i.i.i, 1.000000e+00 ; 2 uses
  %i.ua = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ub = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.uc = fneg <2 x float> %i.tk
  %i.ud = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ue = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ta, <2 x float> %i.ud, <2 x float> %i.tq)
  %i.uf = insertelement <2 x float> poison, float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sz, <2 x float> %i.ug, <2 x float> %i.ue)
  %i.ui = fmul <2 x float> %i.sy, %i.uh
  %i.uj = load <2 x float>, ptr %i.tx, align 4, !tbaa !179, !alias.scope !793, !noalias !794
  %i.uk = load <2 x float>, ptr %i.ty, align 4, !tbaa !179, !noalias !787
  %i.ul = fmul <2 x float> %i.uj, %i.uk
  %i.um = insertelement <2 x float> poison, float %.047.i.i.i.i.i.i.i.i.i.i.i, i64 0
  %i.un = shufflevector <2 x float> %i.um, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uo = fmul <2 x float> %i.un, %i.uc
  %i.up = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ul, <2 x float> %i.sw, <2 x float> %i.uo)
  %i.uq = fsub <2 x float> %i.up, %i.ui
  %i.ur = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.us = shufflevector <2 x float> %i.ur, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ut = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.us, <2 x float> %i.tk, <2 x float> %i.uq)
  %i.uu = insertelement <2 x float> poison, float %i.tz, i64 0
  %i.uv = shufflevector <2 x float> %i.uu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uw = fdiv <2 x float> %i.ut, %i.uv           ; 2 uses
  store <2 x float> %i.uw, ptr %i.tj, align 4, !tbaa !179, !alias.scope !789, !noalias !790
  %i.ux = load <2 x float>, ptr %i.ua, align 4, !tbaa !179, !alias.scope !795, !noalias !796
  %i.uy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uw, <2 x float> %i.sw, <2 x float> %i.ux)
  store <2 x float> %i.uy, ptr %i.ub, align 4, !tbaa !179, !alias.scope !797, !noalias !798
  %i.uz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.va = load float, ptr %i.uz, align 4, !tbaa !179, !alias.scope !793, !noalias !794
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ty, i64 8
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !179, !noalias !787
  %i.vd = fmul float %i.va, %i.vc
  %i.ve = fneg float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.vf = fmul float %.047.i.i.i.i.i.i.i.i.i.i.i, %i.ve
  %i.vg = call float @llvm.fmuladd.f32(float %i.vd, float %i.cz, float %i.vf)
  %i.vh = fsub float %i.vg, %i.tw
  %i.vi = call float @llvm.fmuladd.f32(float %i.ti, float %.sroa.7.0.copyload.i.i.i.i.i.i.i.i.i.i.i, float %i.vh)
  %i.vj = fdiv float %i.vi, %i.tz                 ; 2 uses
  store float %i.vj, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !179, !alias.scope !789, !noalias !790
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ua, i64 8
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !179, !alias.scope !795, !noalias !796
  %i.vm = call float @llvm.fmuladd.f32(float %i.vj, float %i.cz, float %i.vl)
  %i.vn = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  store float %i.vm, ptr %i.vn, align 4, !tbaa !179, !alias.scope !797, !noalias !798
  %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i", label %bb.af, !llvm.loop !596

bb.ak:                                            ; preds = %bb.ad
  %i.vo = sext i32 %i.fq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #20, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #20, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #20, !noalias !702
  invoke void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %24, i64 noundef range(i64 -2147483648, 2147483648) %i.vo)
          to label %.noexc120 unwind label %.loopexit.split-lp

.noexc120:                                        ; preds = %bb.ak
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull @.str.72, ptr noundef nonnull align 8 dereferenceable(32) %24)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %.noexc120
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %22, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.73)
          to label %bb.am unwind label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.vp = load ptr, ptr %23, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.vr = icmp eq ptr %i.vp, %i.vq
  br i1 %i.vr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.vs = load i64, ptr %i.vq, align 8, !tbaa !177, !noalias !702
  %i.vt = add i64 %i.vs, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vt) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.vu = load ptr, ptr %24, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.vw = icmp eq ptr %i.vu, %i.vv
  br i1 %i.vw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i
  %i.vx = load i64, ptr %i.vv, align 8, !tbaa !177, !noalias !702
  %i.vy = add i64 %i.vx, 1
  call void @_ZdlPvm(ptr noundef %i.vu, i64 noundef %i.vy) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !702
  %i.vz = call ptr @__cxa_allocate_exception(i64 24) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #20, !noalias !702
  invoke void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %26, ptr noundef nonnull align 8 dereferenceable(32) %22)
          to label %bb.an unwind label %.thread.i.i.i.i.i.i.i.i

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %25, ptr noundef nonnull align 8 dereferenceable(56) %26)
          to label %bb.ao unwind label %.thread5.i.i.i.i.i.i.i.i

bb.ao:                                            ; preds = %bb.an
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx13InternalErrorE, i64 16), ptr %25, align 8, !tbaa !273, !noalias !702
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #20, !noalias !702
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %27, align 8, !tbaa !273, !noalias !702
  %i.wa = getelementptr inbounds nuw i8, ptr %27, i64 8
  store ptr @"__PRETTY_FUNCTION__._ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_", ptr %i.wa, align 8, !tbaa !328, !noalias !702
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 16
  store ptr @.str.74, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !328, !noalias !702
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %27, i64 24
  store i32 87, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !tbaa !68, !noalias !702
  invoke void @_ZN3gmxlsINS_13InternalErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::InternalError") align 8 %i.vz, ptr noundef nonnull align 8 %25, ptr noundef nonnull align 8 dereferenceable(32) %27)
          to label %bb.ap unwind label %bb.as

bb.ap:                                            ; preds = %bb.ao
  invoke void @__cxa_throw(ptr %i.vz, ptr nonnull @_ZTIN3gmx13InternalErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #32
          to label %bb.av unwind label %bb.as

bb.aq:                                            ; preds = %.noexc120
  %i.wb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.al
  %i.wc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.wd = load ptr, ptr %23, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.wf = icmp eq ptr %i.wd, %i.we
  br i1 %i.wf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.wg = load i64, ptr %i.we, align 8, !tbaa !177, !noalias !702
  %i.wh = add i64 %i.wg, 1
  call void @_ZdlPvm(ptr noundef %i.wd, i64 noundef %i.wh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i, %bb.aq
  %.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wb, %bb.aq ], [ %i.wc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i.i.i.i.i.i.i.i ], [ %i.wc, %bb.ar ]
  %i.wi = load ptr, ptr %24, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.wj = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.wk = icmp eq ptr %i.wi, %i.wj
  br i1 %i.wk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i
  %i.wl = load i64, ptr %i.wj, align 8, !tbaa !177, !noalias !702
  %i.wm = add i64 %i.wl, 1
  call void @_ZdlPvm(ptr noundef %i.wi, i64 noundef %i.wm) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #20, !noalias !702
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i.i.i.i.i.i
  %i.wn = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %.sink.split.i.i.i.i.i.i.i.i

.thread5.i.i.i.i.i.i.i.i:                         ; preds = %bb.an
  %i.wo = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #20
  br label %.sink.split.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap, %bb.ao
  %.0.i.i.i.i.i.i.i.i = phi i1 [ false, %bb.ap ], [ true, %bb.ao ]
  %i.wp = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %27) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #20, !noalias !702
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %25) #20
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %26) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !702
  br i1 %.0.i.i.i.i.i.i.i.i, label %bb.at, label %bb.au

.sink.split.i.i.i.i.i.i.i.i:                      ; preds = %.thread5.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i
  %.pn14.pn4.ph.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wo, %.thread5.i.i.i.i.i.i.i.i ], [ %i.wn, %.thread.i.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #20, !noalias !702
  br label %bb.at

bb.at:                                            ; preds = %.sink.split.i.i.i.i.i.i.i.i, %bb.as
  %.pn14.pn4.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.wp, %bb.as ], [ %.pn14.pn4.ph.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.vz) #20
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.pn14.pn3.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn14.pn4.i.i.i.i.i.i.i.i, %bb.at ], [ %i.wp, %bb.as ] ; 2 uses
  %i.wq = load ptr, ptr %22, align 8, !tbaa !176, !noalias !702 ; 2 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.ws = icmp eq ptr %i.wq, %i.wr
  br i1 %i.ws, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i: ; preds = %bb.au
  %i.wt = load i64, ptr %i.wr, align 8, !tbaa !177, !noalias !702
  %i.wu = add i64 %i.wt, 1
  call void @_ZdlPvm(ptr noundef %i.wq, i64 noundef %i.wu) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i
  %.pn14.pn.pn.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26.i.i.i.i.i.i.i.i ], [ %.pn14.pn3.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27.i.i.i.i.i.i.i.i ], [ %.pn14.pn3.i.i.i.i.i.i.i.i, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #20, !noalias !702
  br label %.body

bb.av:                                            ; preds = %bb.ap
  unreachable

"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i": ; preds = %bb.aj, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %25), !noalias !702
  br label %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i"

"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i": ; preds = %bb.ac, %bb.u, %"_ZN3gmx6compatL13mp_with_indexILm1EZZNS_25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS4_S7_S6_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSC_NSA_IS5_EEPA3_KfNSA_ISF_EESE_PK14gmx_ekindata_tSH_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SD_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSZ_EUlST_E_TnPNSt9enable_ifIXleT_Li1EEvE4typeELPv0EEEDamOSV_.exit.i.i.i.i.i.i.i", %bb.v, %bb.p, %"_ZZZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_ENKUlDpT_E_clIJEEEDaSX_ENKUlSR_E_clISt17integral_constantImLm3EEEEDaSR_.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #20, !noalias !702
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #20, !noalias !702
  br label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

bb.aw:                                            ; preds = %.critedge.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ww = load ptr, ptr %i.wv, align 8, !tbaa !255, !noalias !702
  %i.wx = load ptr, ptr %i.ef, align 8, !tbaa !19, !noalias !702
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = ptrtoint ptr %i.wx to i64
  %i.xa = sub i64 %i.wy, %i.wz
  %i.xb = lshr exact i64 %i.xa, 2
  %i.xc = trunc i64 %i.xb to i32                  ; 2 uses
  %i.xd = icmp ne i32 %i.xc, 0
  %or.cond7.not.i = and i1 %i.eq, %i.xd
  %i.xe = icmp eq i32 %i.xc, 1                    ; 2 uses
  %i.xf = select i1 %i.xe, i32 1, i32 2
  %i.xg = select i1 %or.cond7.not.i, i32 %i.xf, i32 0 ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !290, !noalias !702 ; 7 uses
  br i1 %.not96.i, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.xj = load ptr, ptr %.sroa.gep45.i, align 8, !tbaa !251, !noalias !702 ; 3 uses
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !179 ; 3 uses
  %i.xl = getelementptr i8, ptr %i.xj, i64 16
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !179 ; 3 uses
  %i.xn = getelementptr i8, ptr %i.xj, i64 32
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !179 ; 3 uses
  switch i32 %i.xg, label %bb.ba [
    i32 2, label %bb.ay
    i32 1, label %bb.az
  ]

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.experimental.noalias.scope.decl(metadata !799)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  call void @llvm.experimental.noalias.scope.decl(metadata !801)
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  call void @llvm.experimental.noalias.scope.decl(metadata !803)
  %i.xp = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.xp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.ay
  %i.xq = sext i32 %i.cm to i64                   ; 4 uses
  %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.xr = insertelement <2 x float> poison, float %i.xk, i64 0
  %i.xs = insertelement <2 x float> %i.xr, float %i.xm, i64 1
  %i.xt = fneg <2 x float> %i.xs
  %i.xu = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.xv = shufflevector <2 x float> %i.xu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xw = fmul <2 x float> %i.xv, %i.xt           ; 3 uses
  %i.xx = fneg float %i.xo
  %i.xy = fmul float %i.fn, %i.xx                 ; 2 uses
  %i.xz = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i, %i.xq ; 2 uses
  %min.iters.check510 = icmp ult i64 %i.xz, 8
  br i1 %min.iters.check510, label %scalar.ph509.preheader, label %vector.ph511

vector.ph511:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ya = and i64 %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i, 7
  %n.vec512 = sub nuw nsw i64 %i.xz, %i.ya        ; 2 uses
  %i.yb = add nsw i64 %n.vec512, %i.xq
  %broadcast.splat514 = shufflevector <2 x float> %i.xw, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat516 = shufflevector <2 x float> %i.xw, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert517 = insertelement <8 x float> poison, float %i.xy, i64 0
  %broadcast.splat518 = shufflevector <8 x float> %broadcast.splatinsert517, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert519 = insertelement <8 x float> poison, float %i.cz, i64 0
  %broadcast.splat520 = shufflevector <8 x float> %broadcast.splatinsert519, <8 x float> poison, <8 x i32> zeroinitializer ; 6 uses
  br label %vector.body521

vector.body521:                                   ; preds = %vector.body521, %vector.ph511
  %index522 = phi i64 [ 0, %vector.ph511 ], [ %index.next545, %vector.body521 ] ; 2 uses
  %i.yc = add i64 %index522, %i.xq                ; 6 uses
  %i.yd = getelementptr inbounds [2 x i8], ptr %i.df, i64 %i.yc
  %wide.load523 = load <8 x i16>, ptr %i.yd, align 2, !tbaa !241, !noalias !804
  %i.ye = zext <8 x i16> %wide.load523 to <8 x i64>
  %wide.gep524 = getelementptr inbounds nuw [144 x i8], ptr %i.xi, <8 x i64> %i.ye
  %wide.gep525 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep524, i64 116
  %wide.masked.gather526 = call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep525, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !353, !noalias !805 ; 3 uses
  %i.yf = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %i.yc ; 2 uses
  %i.yg = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %i.yc
  %i.yh = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %i.yc
  %i.yi = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %i.yc
  %i.yj = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %i.yc
  %wide.vec527 = load <24 x float>, ptr %i.yf, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 3 uses
  %strided.vec528 = shufflevector <24 x float> %wide.vec527, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21> ; 2 uses
  %strided.vec529 = shufflevector <24 x float> %wide.vec527, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22> ; 2 uses
  %strided.vec530 = shufflevector <24 x float> %wide.vec527, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23> ; 2 uses
  %wide.vec531 = load <24 x float>, ptr %i.yg, align 4, !tbaa !179, !alias.scope !808, !noalias !809 ; 3 uses
  %strided.vec532 = shufflevector <24 x float> %wide.vec531, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec533 = shufflevector <24 x float> %wide.vec531, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec534 = shufflevector <24 x float> %wide.vec531, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %wide.vec535 = load <24 x float>, ptr %i.yh, align 4, !tbaa !179, !alias.scope !799, !noalias !810 ; 3 uses
  %strided.vec536 = shufflevector <24 x float> %wide.vec535, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec537 = shufflevector <24 x float> %wide.vec535, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec538 = shufflevector <24 x float> %wide.vec535, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.yk = fmul <8 x float> %strided.vec532, %strided.vec536
  %i.yl = fmul <8 x float> %broadcast.splat520, %i.yk
  %i.ym = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather526, <8 x float> %strided.vec528, <8 x float> %i.yl)
  %i.yn = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat514, <8 x float> %strided.vec528, <8 x float> %i.ym) ; 2 uses
  %wide.vec539 = load <24 x float>, ptr %i.yi, align 4, !tbaa !179, !alias.scope !811, !noalias !812 ; 3 uses
  %strided.vec540 = shufflevector <24 x float> %wide.vec539, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec541 = shufflevector <24 x float> %wide.vec539, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %strided.vec542 = shufflevector <24 x float> %wide.vec539, <24 x float> poison, <8 x i32> <i32 2, i32 5, i32 8, i32 11, i32 14, i32 17, i32 20, i32 23>
  %i.yo = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yn, <8 x float> %broadcast.splat520, <8 x float> %strided.vec540)
  %i.yp = fmul <8 x float> %strided.vec533, %strided.vec537
  %i.yq = fmul <8 x float> %broadcast.splat520, %i.yp
  %i.yr = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather526, <8 x float> %strided.vec529, <8 x float> %i.yq)
  %i.ys = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat516, <8 x float> %strided.vec529, <8 x float> %i.yr) ; 2 uses
  %i.yt = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.ys, <8 x float> %broadcast.splat520, <8 x float> %strided.vec541)
  %i.yu = fmul <8 x float> %strided.vec534, %strided.vec538
  %i.yv = fmul <8 x float> %broadcast.splat520, %i.yu
  %i.yw = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %wide.masked.gather526, <8 x float> %strided.vec530, <8 x float> %i.yv)
  %i.yx = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat518, <8 x float> %strided.vec530, <8 x float> %i.yw) ; 2 uses
  %i.yy = shufflevector <8 x float> %i.yn, <8 x float> %i.ys, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.yz = shufflevector <8 x float> %i.yx, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec543 = shufflevector <16 x float> %i.yy, <16 x float> %i.yz, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec543, ptr %i.yf, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.za = call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.yx, <8 x float> %broadcast.splat520, <8 x float> %strided.vec542)
  %i.zb = shufflevector <8 x float> %i.yo, <8 x float> %i.yt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.zc = shufflevector <8 x float> %i.za, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec544 = shufflevector <16 x float> %i.zb, <16 x float> %i.zc, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x float> %interleaved.vec544, ptr %i.yj, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %index.next545 = add nuw i64 %index522, 8       ; 2 uses
  %i.zd = icmp eq i64 %index.next545, %n.vec512
  br i1 %i.zd, label %middle.block546, label %vector.body521, !llvm.loop !603

middle.block546:                                  ; preds = %vector.body521
  %i.ze = and i32 %spec.select.i, 7
  %cmp.n547 = icmp eq i32 %i.ze, 0
  br i1 %cmp.n547, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph509.preheader

scalar.ph509.preheader:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block546
  %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i.ph = phi i64 [ %i.xq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.yb, %middle.block546 ]
  %i.zf = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.zg = shufflevector <2 x float> %i.zf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %scalar.ph509

scalar.ph509:                                     ; preds = %scalar.ph509.preheader, %scalar.ph509
  %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i, %scalar.ph509 ], [ %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i.ph, %scalar.ph509.preheader ] ; 7 uses
  %i.zh = getelementptr inbounds [2 x i8], ptr %i.df, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !241, !noalias !804
  %i.zj = zext i16 %i.zi to i64
  %i.zk = getelementptr inbounds nuw [144 x i8], ptr %i.xi, i64 %i.zj
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 116
  %i.zm = load float, ptr %i.zl, align 4, !tbaa !353, !noalias !805 ; 2 uses
  %i.zn = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 3 uses
  %i.zo = getelementptr inbounds [12 x i8], ptr %i.cx, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zp = getelementptr inbounds [12 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zq = getelementptr inbounds [12 x i8], ptr %i.ct, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zr = getelementptr inbounds [12 x i8], ptr %i.cu, i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i ; 2 uses
  %i.zs = load <2 x float>, ptr %i.zn, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 2 uses
  %i.zt = load <2 x float>, ptr %i.zo, align 4, !tbaa !179, !alias.scope !808, !noalias !809
  %i.zu = load <2 x float>, ptr %i.zp, align 4, !tbaa !179, !alias.scope !799, !noalias !810
  %i.zv = fmul <2 x float> %i.zt, %i.zu
  %i.zw = fmul <2 x float> %i.zg, %i.zv
  %i.zx = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.zy = shufflevector <2 x float> %i.zx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.zz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %i.zs, <2 x float> %i.zw)
  %i.aaa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xw, <2 x float> %i.zs, <2 x float> %i.zz) ; 2 uses
  store <2 x float> %i.aaa, ptr %i.zn, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.aab = load <2 x float>, ptr %i.zq, align 4, !tbaa !179, !alias.scope !811, !noalias !812
  %i.aac = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaa, <2 x float> %i.zg, <2 x float> %i.aab)
  store <2 x float> %i.aac, ptr %i.zr, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %i.aad = getelementptr inbounds nuw i8, ptr %i.zn, i64 8 ; 2 uses
  %i.aae = load float, ptr %i.aad, align 4, !tbaa !179, !alias.scope !806, !noalias !807 ; 2 uses
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zo, i64 8
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !179, !alias.scope !808, !noalias !809
  %i.aah = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %i.aai = load float, ptr %i.aah, align 4, !tbaa !179, !alias.scope !799, !noalias !810
  %i.aaj = fmul float %i.aag, %i.aai
  %i.aak = fmul float %i.cz, %i.aaj
  %i.aal = call float @llvm.fmuladd.f32(float %i.zm, float %i.aae, float %i.aak)
  %i.aam = call float @llvm.fmuladd.f32(float %i.xy, float %i.aae, float %i.aal) ; 2 uses
  store float %i.aam, ptr %i.aad, align 4, !tbaa !179, !alias.scope !806, !noalias !807
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zq, i64 8
  %i.aao = load float, ptr %i.aan, align 4, !tbaa !179, !alias.scope !811, !noalias !812
  %i.aap = call float @llvm.fmuladd.f32(float %i.aam, float %i.cz, float %i.aao)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zr, i64 8
  store float %i.aap, ptr %i.aaq, align 4, !tbaa !179, !alias.scope !813, !noalias !814
  %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i.i.i.i13.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i15.i.i.i.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.i.i.i.i14.i.i.i.i.i.i, %wide.trip.count.i.i.i.i.i.i.i12.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i15.i.i.i.i.i.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %scalar.ph509, !llvm.loop !604

bb.az:                                            ; preds = %bb.ax
end_hunk_4
begin_hunk_5_@_ZN3gmx6Update4Impl13update_coordsERK10t_inputreclibNS_8ArrayRefIK12ParticleTypeEENS5_IKfEENS5_IKNS_11BasicVectorIfEEEEP7t_stateRKNS_19ArrayRefWithPaddingISD_EEP8t_fcdataPK14gmx_ekindata_tRKNS_14BasicMatrix3x3IfEEiPK12gmx_domdec_tb.omp_outlined:bb.a
  %i.cbn = fpext float %i.cbg to double
  %i.cbo = fmul double %i.cbn, 5.000000e-01
  %i.cbp = fpext float %i.cbm to double
  %i.cbq = fmul double %i.cbo, %i.cbp
  %i.cbr = fptrunc double %i.cbq to float         ; 3 uses
  %i.cbs = call noundef float @expf(float noundef %i.cbr) #20, !noalias !979
  %i.cbt = fmul float %i.cbr, %i.cbr              ; 2 uses
  %i.cbu = insertelement <4 x float> poison, float %i.cbt, i64 0
  %i.cbv = shufflevector <4 x float> %i.cbu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cbw = fdiv <4 x float> %i.cbv, <float 6.000000e+00, float 2.000000e+01, float 4.200000e+01, float 7.200000e+01> ; 4 uses
  %i.cbx = fdiv float %i.cbt, 1.100000e+02
  %i.cby = fadd float %i.cbx, 1.000000e+00
  %i.cbz = extractelement <4 x float> %i.cbw, i64 3
  %i.cca = call float @llvm.fmuladd.f32(float %i.cbz, float %i.cby, float 1.000000e+00)
  %i.ccb = extractelement <4 x float> %i.cbw, i64 2
  %i.ccc = call float @llvm.fmuladd.f32(float %i.ccb, float %i.cca, float 1.000000e+00)
  %i.ccd = extractelement <4 x float> %i.cbw, i64 1
  %i.cce = call float @llvm.fmuladd.f32(float %i.ccd, float %i.ccc, float 1.000000e+00)
  %i.ccf = extractelement <4 x float> %i.cbw, i64 0
  %i.ccg = call noundef float @llvm.fmuladd.f32(float %i.ccf, float %i.cce, float 1.000000e+00)
  %i.cch = fmul float %i.cbg, %i.ccg
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %.033.i = phi float [ %i.cbs, %bb.eh ], [ 1.000000e+00, %bb.eg ] ; 12 uses
  %.0.i161 = phi float [ %i.cch, %bb.eh ], [ %i.cbg, %bb.eg ] ; 6 uses
  %i.cci = icmp slt i32 %i.cm, %spec.select.i
  br i1 %i.cci, label %.lr.ph.i162, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit

.lr.ph.i162:                                      ; preds = %bb.ei
  %i.ccj = icmp eq ptr %i.cbj, %i.cbk
  %i.cck = sext i32 %i.cm to i64                  ; 2 uses
  %wide.trip.count64.i = sext i32 %spec.select.i to i64 ; 2 uses
  br i1 %i.ccj, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i162
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cbh, i64 4
  %i.ccm = getelementptr inbounds nuw i8, ptr %i.cbh, i64 8
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.split42.us47.i, %.lr.ph.split.us.preheader.i
  %indvars.iv61.i = phi i64 [ %i.cck, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next62.i, %.split42.us47.i ] ; 5 uses
  %i.ccn = getelementptr inbounds [4 x i8], ptr %i.cbi, i64 %indvars.iv61.i
  %i.cco = load i32, ptr %i.ccn, align 4, !tbaa !325, !noalias !979
  %.not.us.i = icmp eq i32 %i.cco, 2
  %i.ccp = getelementptr [12 x i8], ptr %i.ct, i64 %indvars.iv61.i ; 4 uses
  %i.ccq = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv61.i ; 3 uses
  %i.ccr = getelementptr [12 x i8], ptr %i.cu, i64 %indvars.iv61.i ; 5 uses
  br i1 %.not.us.i, label %.split.us.us.preheader.i, label %.split.us45.preheader.i

.split.us45.preheader.i:                          ; preds = %.lr.ph.split.us.i
  %i.ccs = load i32, ptr %i.cbh, align 4, !tbaa !68, !noalias !979
  %.not37.us.i = icmp eq i32 %i.ccs, 0
  %i.cct = load float, ptr %i.ccp, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.us.i, label %bb.ej, label %.split.us45.1.i

.split.us.us.preheader.i:                         ; preds = %.lr.ph.split.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ccr, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.ccp, i64 12, i1 false), !tbaa !179, !alias.scope !981, !noalias !978
  br label %.split42.us47.i

bb.ej:                                            ; preds = %.split.us45.preheader.i
  %i.ccu = load float, ptr %i.ccq, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.ccv = fmul float %.0.i161, %i.ccu
  %i.ccw = call float @llvm.fmuladd.f32(float %.033.i, float %i.cct, float %i.ccv)
  %i.ccx = fmul float %.033.i, %i.ccw
  br label %.split.us45.1.i

.split.us45.1.i:                                  ; preds = %bb.ej, %.split.us45.preheader.i
  %storemerge68.i = phi float [ %i.ccx, %bb.ej ], [ %i.cct, %.split.us45.preheader.i ]
  store float %storemerge68.i, ptr %i.ccr, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  %i.ccy = load i32, ptr %i.ccl, align 4, !tbaa !68, !noalias !979
  %.not37.us.1.i = icmp eq i32 %i.ccy, 0
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccp, i64 4
  %i.cda = load float, ptr %i.ccz, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.us.1.i, label %bb.ek, label %.split.us45.2.i

bb.ek:                                            ; preds = %.split.us45.1.i
  %i.cdb = getelementptr inbounds nuw i8, ptr %i.ccq, i64 4
  %i.cdc = load float, ptr %i.cdb, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.cdd = fmul float %.0.i161, %i.cdc
  %i.cde = call float @llvm.fmuladd.f32(float %.033.i, float %i.cda, float %i.cdd)
  %i.cdf = fmul float %.033.i, %i.cde
  br label %.split.us45.2.i

.split.us45.2.i:                                  ; preds = %bb.ek, %.split.us45.1.i
  %.sink.i174 = phi float [ %i.cdf, %bb.ek ], [ %i.cda, %.split.us45.1.i ]
  %i.cdg = getelementptr inbounds nuw i8, ptr %i.ccr, i64 4
  store float %.sink.i174, ptr %i.cdg, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  %i.cdh = load i32, ptr %i.ccm, align 4, !tbaa !68, !noalias !979
  %.not37.us.2.i = icmp eq i32 %i.cdh, 0
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.ccp, i64 8
  %i.cdj = load float, ptr %i.cdi, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.us.2.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %.split.us45.2.i
  %i.cdk = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  store float %i.cdj, ptr %i.cdk, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  br label %.split42.us47.i

bb.em:                                            ; preds = %.split.us45.2.i
  %i.cdl = getelementptr inbounds nuw i8, ptr %i.ccq, i64 8
  %i.cdm = load float, ptr %i.cdl, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.cdn = fmul float %.0.i161, %i.cdm
  %i.cdo = call float @llvm.fmuladd.f32(float %.033.i, float %i.cdj, float %i.cdn)
  %i.cdp = fmul float %.033.i, %i.cdo
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.ccr, i64 8
  store float %i.cdp, ptr %i.cdq, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  br label %.split42.us47.i

.split42.us47.i:                                  ; preds = %bb.em, %bb.el, %.split.us.us.preheader.i
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %exitcond65.not.i = icmp eq i64 %indvars.iv.next62.i, %wide.trip.count64.i
  br i1 %exitcond65.not.i, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.lr.ph.split.us.i, !llvm.loop !691

.lr.ph.split.i:                                   ; preds = %.lr.ph.i162, %.split42.us.i
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i171, %.split42.us.i ], [ %i.cck, %.lr.ph.i162 ] ; 6 uses
  %i.cdr = getelementptr inbounds [2 x i8], ptr %i.cbj, i64 %indvars.iv.i165
  %i.cds = load i16, ptr %i.cdr, align 2, !tbaa !241, !noalias !979
  %i.cdt = getelementptr inbounds [4 x i8], ptr %i.cbi, i64 %indvars.iv.i165
  %i.cdu = load i32, ptr %i.cdt, align 4, !tbaa !325, !noalias !979
  %.not.i166 = icmp eq i32 %i.cdu, 2
  %i.cdv = zext i16 %i.cds to i64
  %i.cdw = getelementptr inbounds nuw [12 x i8], ptr %i.cbh, i64 %i.cdv ; 3 uses
  %i.cdx = getelementptr [12 x i8], ptr %i.ct, i64 %indvars.iv.i165 ; 4 uses
  %i.cdy = getelementptr inbounds [12 x i8], ptr %i.cw, i64 %indvars.iv.i165 ; 3 uses
  %i.cdz = getelementptr [12 x i8], ptr %i.cu, i64 %indvars.iv.i165 ; 5 uses
  br i1 %.not.i166, label %.split.us.preheader.i173, label %.split.preheader.i167

.split.preheader.i167:                            ; preds = %.lr.ph.split.i
  %i.cea = load i32, ptr %i.cdw, align 4, !tbaa !68, !noalias !979
  %.not37.i = icmp eq i32 %i.cea, 0
  %i.ceb = load float, ptr %i.cdx, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.i, label %bb.en, label %.split.1.i168

.split.us.preheader.i173:                         ; preds = %.lr.ph.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cdz, ptr noundef nonnull readonly align 4 dereferenceable(12) %i.cdx, i64 12, i1 false), !tbaa !179, !alias.scope !981, !noalias !978
  br label %.split42.us.i

bb.en:                                            ; preds = %.split.preheader.i167
  %i.cec = load float, ptr %i.cdy, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.ced = fmul float %.0.i161, %i.cec
  %i.cee = call float @llvm.fmuladd.f32(float %.033.i, float %i.ceb, float %i.ced)
  %i.cef = fmul float %.033.i, %i.cee
  br label %.split.1.i168

.split.1.i168:                                    ; preds = %bb.en, %.split.preheader.i167
  %storemerge.i169 = phi float [ %i.cef, %bb.en ], [ %i.ceb, %.split.preheader.i167 ]
  store float %storemerge.i169, ptr %i.cdz, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  %i.ceg = getelementptr inbounds nuw i8, ptr %i.cdw, i64 4
  %i.ceh = load i32, ptr %i.ceg, align 4, !tbaa !68, !noalias !979
  %.not37.1.i = icmp eq i32 %i.ceh, 0
  %i.cei = getelementptr inbounds nuw i8, ptr %i.cdx, i64 4
  %i.cej = load float, ptr %i.cei, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.1.i, label %bb.eo, label %.split.2.i170

bb.eo:                                            ; preds = %.split.1.i168
  %i.cek = getelementptr inbounds nuw i8, ptr %i.cdy, i64 4
  %i.cel = load float, ptr %i.cek, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.cem = fmul float %.0.i161, %i.cel
  %i.cen = call float @llvm.fmuladd.f32(float %.033.i, float %i.cej, float %i.cem)
  %i.ceo = fmul float %.033.i, %i.cen
  br label %.split.2.i170

.split.2.i170:                                    ; preds = %bb.eo, %.split.1.i168
  %.sink71.i = phi float [ %i.ceo, %bb.eo ], [ %i.cej, %.split.1.i168 ]
  %i.cep = getelementptr inbounds nuw i8, ptr %i.cdz, i64 4
  store float %.sink71.i, ptr %i.cep, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cdw, i64 8
  %i.cer = load i32, ptr %i.ceq, align 4, !tbaa !68, !noalias !979
  %.not37.2.i = icmp eq i32 %i.cer, 0
  %i.ces = getelementptr inbounds nuw i8, ptr %i.cdx, i64 8
  %i.cet = load float, ptr %i.ces, align 4, !tbaa !179, !alias.scope !976, !noalias !980 ; 2 uses
  br i1 %.not37.2.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %.split.2.i170
  %i.ceu = getelementptr inbounds nuw i8, ptr %i.cdz, i64 8
  store float %i.cet, ptr %i.ceu, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  br label %.split42.us.i

bb.eq:                                            ; preds = %.split.2.i170
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cdy, i64 8
  %i.cew = load float, ptr %i.cev, align 4, !tbaa !179, !alias.scope !978, !noalias !981
  %i.cex = fmul float %.0.i161, %i.cew
  %i.cey = call float @llvm.fmuladd.f32(float %.033.i, float %i.cet, float %i.cex)
  %i.cez = fmul float %.033.i, %i.cey
  %i.cfa = getelementptr inbounds nuw i8, ptr %i.cdz, i64 8
  store float %i.cez, ptr %i.cfa, align 4, !tbaa !179, !alias.scope !977, !noalias !982
  br label %.split42.us.i

.split42.us.i:                                    ; preds = %bb.eq, %bb.ep, %.split.us.preheader.i173
  %indvars.iv.next.i171 = add nsw i64 %indvars.iv.i165, 1 ; 2 uses
  %exitcond.not.i172 = icmp eq i64 %indvars.iv.next.i171, %wide.trip.count64.i
  br i1 %exitcond.not.i172, label %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, label %.lr.ph.split.i, !llvm.loop !691

bb.er:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #20
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA61_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %30, ptr noundef nonnull align 1 dereferenceable(61) @.str.5, i8 noundef zeroext 2)
          to label %bb.es unwind label %bb.eu

bb.es:                                            ; preds = %bb.er
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %30, i32 noundef 1926, ptr noundef nonnull @.str.71) #32
          to label %bb.et unwind label %bb.ev

bb.et:                                            ; preds = %bb.es
  unreachable

bb.eu:                                            ; preds = %bb.er
  %i.cfb = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.ew

bb.ev:                                            ; preds = %bb.es
  %i.cfc = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %30) #20
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn89 = phi { ptr, i32 } [ %i.cfc, %bb.ev ], [ %i.cfb, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #20
  br label %.body

_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit: ; preds = %.split42.us.i, %.split42.us47.i, %.split6.us.i, %.preheader.i.i.i.i.i.i.i.i7.i.i.i.i.i.i, %scalar.ph509, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i102.i, %.lr.ph.i.i, %.preheader.i.i.i.i.i.i.i.i.i, %scalar.ph410, %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block584, %middle.block546, %middle.block506, %middle.block470, %middle.block438, %middle.block, %bb.ei, %bb.dw, %bb.bi, %bb.bh, %bb.bg, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.ay, %"_ZN3gmx25dispatchTemplatedFunctionIZL12do_update_mdiiflPKNS_11BasicVectorIfEEPS2_S5_S4_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeSA_NS8_IS3_EEPA3_KfNS8_ISD_EESC_PK14gmx_ekindata_tSF_PKdRKNS_14BasicMatrix3x3IfEEbE3$_0SB_JEEEDaOT_T0_DpT1_.exit.i", %bb.dt, %.loopexit261, %.loopexit
  %i.cfd = load i32, ptr %i.c, align 4, !tbaa !68
  %.not.not = icmp slt i32 %.0277, %i.cfd
  br i1 %.not.not, label %bb.c, label %._crit_edge

.body:                                            ; preds = %.split, %.loopexit265, %.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i, %bb.cs, %bb.ew
  %.pn89.pn.pn = phi { ptr, i32 } [ %.pn14.pn.pn.i.i.i.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29.i.i.i.i.i.i.i.i ], [ %.pn89, %bb.ew ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bij, %bb.cs ], [ %lpad.loopexit, %.loopexit265 ], [ %i.bwq, %.split ] ; 2 uses
  %.3 = extractvalue { ptr, i32 } %.pn89.pn.pn, 1
  %.384 = extractvalue { ptr, i32 } %.pn89.pn.pn, 0 ; 2 uses
  %i.cfe = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #20
  %i.cff = icmp eq i32 %.3, %i.cfe
  br i1 %i.cff, label %bb.ex, label %bb.fb

bb.ex:                                            ; preds = %.body
  %i.cfg = call ptr @__cxa_begin_catch(ptr %.384) #20
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.cfg) #32
          to label %bb.ey unwind label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  unreachable

._crit_edge:                                      ; preds = %_ZL12do_update_mdiiflPKN3gmx11BasicVectorIfEEPS1_S4_S3_19TemperatureCoupling16PressureCouplingiiNS_8ArrayRefIKtEE16AccelerationTypeS9_NS7_IS2_EEPA3_KfNS7_ISC_EESB_PK14gmx_ekindata_tSE_PKdRKNS_14BasicMatrix3x3IfEEb.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  br label %bb.ez

bb.ez:                                            ; preds = %._crit_edge, %bb.a
  ret void

bb.fa:                                            ; preds = %bb.ex
  %i.cfh = landingpad { ptr, i32 }
          catch ptr null
  %i.cfi = extractvalue { ptr, i32 } %i.cfh, 0
  call void @__clang_call_terminate(ptr %i.cfi) #31
  unreachable

bb.fb:                                            ; preds = %.body
  call void @__clang_call_terminate(ptr %.384) #31
  unreachable
}

; Function Attrs: noreturn
declare void @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef, ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ...) local_unnamed_addr #13

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

declare void @_ZN3gmx27setBoxDeformationFlowMatrixEPA3_KfS2_PA3_f(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #20 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !348
  %i.d = sub i64 4611686018427387903, %i.c
  %i.e = icmp ult i64 %i.d, %i.a
  br i1 %i.e, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.75) #32
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit: ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %2, i64 noundef %i.a) ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !347
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 5 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !348  ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  tail call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit
  store ptr %i.h, ptr %0, align 8, !tbaa !176
  %i.o = load i64, ptr %i.i, align 8, !tbaa !177
  store i64 %i.o, ptr %i.g, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !348
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = phi i64 [ %i.l, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.p, ptr %i.r, align 8, !tbaa !348
  store ptr %i.i, ptr %i.f, align 8, !tbaa !176
  store i64 0, ptr %i.q, align 8, !tbaa !348
  store i8 0, ptr %i.i, align 8, !tbaa !177
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !347
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !348  ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8, !tbaa !176
  %i.k = load i64, ptr %i.e, align 8, !tbaa !177
  store i64 %i.k, ptr %i.c, align 8, !tbaa !177
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !348
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8, !tbaa !348
  store ptr %i.e, ptr %i.b, align 8, !tbaa !176
  store i64 0, ptr %i.m, align 8, !tbaa !348
  store i8 0, ptr %i.e, align 8, !tbaa !177
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx119to_stringEm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, i64 noundef %1) local_unnamed_addr #22 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ult i64 %1, 10
  br i1 %i.a, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.g
  %.029.i = phi i32 [ %i.i, %bb.g ], [ 1, %bb.a ] ; 4 uses
  %.02328.i = phi i64 [ %i.h, %bb.g ], [ %1, %bb.a ] ; 5 uses
  %i.b = icmp ult i64 %.02328.i, 100
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = add i32 %.029.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.c:                                             ; preds = %.lr.ph.i
  %i.d = icmp ult i64 %.02328.i, 1000
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = add i32 %.029.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.e:                                             ; preds = %bb.c
  %i.f = icmp ult i64 %.02328.i, 10000
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = add i32 %.029.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit

bb.g:                                             ; preds = %bb.e
  %i.h = udiv i64 %.02328.i, 10000
  %i.i = add i32 %.029.i, 4                       ; 2 uses
  %i.j = icmp ult i64 %.02328.i, 100000
  br i1 %i.j, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit, label %.lr.ph.i, !llvm.loop !983

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit:      ; preds = %bb.g, %bb.a, %bb.b, %bb.d, %bb.f
  %.022.i = phi i32 [ %i.g, %bb.f ], [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ 1, %bb.a ], [ %i.i, %bb.g ]
  %i.k = zext i32 %.022.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %0, align 8, !tbaa !347
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k, i8 noundef signext 0)
  %i.m = load ptr, ptr %0, align 8, !tbaa !176    ; 4 uses
  %i.n = icmp ugt i64 %1, 99
  br i1 %i.n, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !348
  %i.q = trunc i64 %i.p to i32
  %i.r = add i32 %i.q, -1
  br label %.lr.ph.i4

.lr.ph.i4:                                        ; preds = %.lr.ph.i4, %.lr.ph.preheader.i
  %.020.i = phi i64 [ %i.u, %.lr.ph.i4 ], [ %1, %.lr.ph.preheader.i ] ; 3 uses
  %.01819.i = phi i32 [ %i.ae, %.lr.ph.i4 ], [ %i.r, %.lr.ph.preheader.i ] ; 3 uses
  %i.s = urem i64 %.020.i, 100
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = udiv i64 %.020.i, 100                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !177
  %i.y = zext i32 %.01819.i to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !177
  %i.aa = load i8, ptr %i.v, align 2, !tbaa !177
  %i.ab = add i32 %.01819.i, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ac
  store i8 %i.aa, ptr %i.ad, align 1, !tbaa !177
  %i.ae = add i32 %.01819.i, -2
  %i.af = icmp ugt i64 %.020.i, 9999
  br i1 %i.af, label %.lr.ph.i4, label %._crit_edge.i, !llvm.loop !984

._crit_edge.i:                                    ; preds = %.lr.ph.i4, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit
  %.0.lcssa.i = phi i64 [ %1, %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit ], [ %i.u, %.lr.ph.i4 ] ; 3 uses
  %i.ag = icmp samesign ugt i64 %.0.lcssa.i, 9
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i
  %i.ah = shl nuw nsw i64 %.0.lcssa.i, 1
  %i.ai = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !177
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !177
  %i.am = load i8, ptr %i.ai, align 2, !tbaa !177
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

bb.i:                                             ; preds = %._crit_edge.i
  %i.an = trunc nuw nsw i64 %.0.lcssa.i to i8
  %i.ao = or disjoint i8 %i.an, 48
  br label %_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit

_ZNSt8__detail18__to_chars_10_implImEEvPcjT_.exit: ; preds = %bb.h, %bb.i
  %storemerge.i = phi i8 [ %i.ao, %bb.i ], [ %i.am, %bb.h ]
  store i8 %storemerge.i, ptr %i.m, align 1, !tbaa !177
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !347
  %i.c = load ptr, ptr %1, align 8, !tbaa !176    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !348  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.e, ptr %i.a, align 8, !tbaa !67
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !176
  %i.h = load i64, ptr %i.a, align 8, !tbaa !67
  store i64 %i.h, ptr %i.b, align 8, !tbaa !177
end_hunk_5
begin_hunk_6_@_ZN3gmx6Update4Impl28update_for_constraint_virialERK10t_inputrecibNS_8ArrayRefIKfEENS5_IKNS_11BasicVectorIfEEEERK7t_stateRKNS_19ArrayRefWithPaddingISA_EERK14gmx_ekindata_t.omp_outlined:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.aq = insertelement <16 x float> poison, float %i.al, i64 0
  %i.ar = shufflevector <16 x float> %i.aq, <16 x float> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val39, i64 116
  %i.at = load float, ptr %i.as, align 4, !tbaa !353, !noalias !1012
  %i.au = insertelement <16 x float> poison, float %i.at, i64 0
  %i.av = shufflevector <16 x float> %i.au, <16 x float> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.aw = icmp slt i32 %i.ac, %spec.select.i
  br i1 %i.aw, label %.lr.ph.preheader.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.d
  %i.ax = sext i32 %i.ac to i64
  %i.ay = sext i32 %spec.select.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.ax, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 6 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %indvars.iv.i.i
  %.val.i.i = load <16 x float>, ptr %i.az, align 64, !tbaa !177, !noalias !1012 ; 3 uses
  %i.ba = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2, i32 2, i32 2, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 5>
  %i.bb = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 5, i32 5, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 8, i32 8, i32 8, i32 9, i32 9, i32 9, i32 10, i32 10>
  %i.bc = shufflevector <16 x float> %.val.i.i, <16 x float> poison, <16 x i32> <i32 10, i32 11, i32 11, i32 11, i32 12, i32 12, i32 12, i32 13, i32 13, i32 13, i32 14, i32 14, i32 14, i32 15, i32 15, i32 15>
  %i.bd = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i.i.i = load <16 x float>, ptr %i.bd, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %.val9.i.i.i = load <16 x float>, ptr %i.be, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 128
  %.val.i.i.i = load <16 x float>, ptr %i.bf, align 64, !tbaa !177, !alias.scope !1013, !noalias !1014
  %i.bg = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i52.i.i = load <16 x float>, ptr %i.bg, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 64
  %.val9.i53.i.i = load <16 x float>, ptr %i.bh, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 128
  %.val.i54.i.i = load <16 x float>, ptr %i.bi, align 64, !tbaa !177, !alias.scope !1015, !noalias !1016
  %i.bj = fmul <16 x float> %i.ba, %.val10.i52.i.i
  %i.bk = fmul <16 x float> %i.av, %.val10.i.i.i
  %i.bl = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bj, <16 x float> %i.ar, <16 x float> %i.bk)
  %i.bm = fmul <16 x float> %i.bb, %.val9.i53.i.i
  %i.bn = fmul <16 x float> %i.av, %.val9.i.i.i
  %i.bo = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bm, <16 x float> %i.ar, <16 x float> %i.bn)
  %i.bp = fmul <16 x float> %i.bc, %.val.i54.i.i
  %i.bq = fmul <16 x float> %i.av, %.val.i.i.i
  %i.br = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bp, <16 x float> %i.ar, <16 x float> %i.bq)
  %i.bs = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.i.i ; 3 uses
  %.val10.i55.i.i = load <16 x float>, ptr %i.bs, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 64
  %.val9.i56.i.i = load <16 x float>, ptr %i.bt, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 128
  %.val.i57.i.i = load <16 x float>, ptr %i.bu, align 64, !tbaa !177, !alias.scope !1017, !noalias !1018
  %i.bv = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bl, <16 x float> %i.ar, <16 x float> %.val10.i55.i.i)
  %i.bw = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.bo, <16 x float> %i.ar, <16 x float> %.val9.i56.i.i)
  %i.bx = call noundef <16 x float> @llvm.fma.v16f32(<16 x float> %i.br, <16 x float> %i.ar, <16 x float> %.val.i57.i.i)
  %i.by = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv.i.i ; 3 uses
  store <16 x float> %i.bv, ptr %i.by, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 64
  store <16 x float> %i.bw, ptr %i.bz, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  store <16 x float> %i.bx, ptr %i.ca, align 64, !tbaa !177, !alias.scope !1019, !noalias !1020
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 16 ; 2 uses
  %i.cb = icmp slt i64 %indvars.iv.next.i.i, %i.ay
  br i1 %i.cb, label %.lr.ph.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, !llvm.loop !995

bb.e:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.cc = getelementptr inbounds nuw i8, ptr %.val39, i64 116
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !353, !noalias !1026 ; 3 uses
  %i.ce = icmp slt i32 %i.ac, %spec.select.i
  br i1 %i.ce, label %.preheader.preheader.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.cf = sext i32 %i.ac to i64                   ; 4 uses
  %wide.trip.count.i.i = sext i32 %spec.select.i to i64 ; 3 uses
  %i.cg = sub nsw i64 %wide.trip.count.i.i, %i.cf ; 2 uses
  %min.iters.check = icmp ult i64 %i.cg, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.preheader.i.i
  %i.ch = and i64 %wide.trip.count.i.i, 7
  %n.vec = sub nuw nsw i64 %i.cg, %i.ch           ; 2 uses
  %i.ci = add nsw i64 %n.vec, %i.cf
  %broadcast.splatinsert = insertelement <8 x float> poison, float %i.al, i64 0 ; 2 uses
  %broadcast.splatinsert55 = insertelement <8 x float> poison, float %i.cd, i64 0
  %i.cj = shufflevector <8 x float> %broadcast.splatinsert55, <8 x float> poison, <24 x i32> zeroinitializer
  %i.ck = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  %i.cl = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <24 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = add i64 %index, %i.cf                   ; 5 uses
  %i.cn = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %i.cm
  %i.co = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %i.cm
  %i.cp = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.cm
  %i.cq = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %i.cm
  %i.cr = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %i.cm
  %wide.vec = load <24 x float>, ptr %i.cn, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %wide.vec59 = load <24 x float>, ptr %i.co, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %wide.vec63 = load <24 x float>, ptr %i.cp, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %wide.vec67 = load <24 x float>, ptr %i.cq, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.cs = fmul <24 x float> %wide.vec59, %wide.vec63
  %i.ct = fmul <24 x float> %i.ck, %i.cs
  %i.cu = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %i.cj, <24 x float> %wide.vec, <24 x float> %i.ct)
  %interleaved.vec = call <24 x float> @llvm.fmuladd.v24f32(<24 x float> %i.cu, <24 x float> %i.cl, <24 x float> %wide.vec67)
  store <24 x float> %interleaved.vec, ptr %i.cr, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1002

middle.block:                                     ; preds = %vector.body
  %i.cw = and i32 %spec.select.i, 7
  %cmp.n = icmp eq i32 %i.cw, 0
  br i1 %cmp.n, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %.preheader.preheader.i.i, %middle.block
  %indvars.iv.i16.i.ph = phi i64 [ %i.cf, %.preheader.preheader.i.i ], [ %i.ci, %middle.block ]
  %i.cx = insertelement <2 x float> poison, float %i.al, i64 0
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cz = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %indvars.iv.i16.i = phi i64 [ %indvars.iv.next.i17.i, %.preheader.i.i ], [ %indvars.iv.i16.i.ph, %.preheader.i.i.preheader ] ; 6 uses
  %i.db = getelementptr inbounds [12 x i8], ptr %i.aj, i64 %indvars.iv.i16.i ; 2 uses
  %i.dc = getelementptr inbounds [12 x i8], ptr %i.ak, i64 %indvars.iv.i16.i ; 2 uses
  %i.dd = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %indvars.iv.i16.i ; 2 uses
  %i.de = getelementptr inbounds [12 x i8], ptr %i.ah, i64 %indvars.iv.i16.i ; 2 uses
  %i.df = getelementptr inbounds [12 x i8], ptr %i.ai, i64 %indvars.iv.i16.i ; 2 uses
  %i.dg = load <2 x float>, ptr %i.db, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %i.dh = load <2 x float>, ptr %i.dc, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %i.di = load <2 x float>, ptr %i.dd, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %i.dj = fmul <2 x float> %i.dh, %i.di
  %i.dk = fmul <2 x float> %i.cy, %i.dj
  %i.dl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dg, <2 x float> %i.dk)
  %i.dm = load <2 x float>, ptr %i.de, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.dn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.cy, <2 x float> %i.dm)
  store <2 x float> %i.dn, ptr %i.df, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !179, !alias.scope !1027, !noalias !1028
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !179, !alias.scope !1029, !noalias !1030
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !179, !alias.scope !1021, !noalias !1031
  %i.du = fmul float %i.dr, %i.dt
  %i.dv = fmul float %i.al, %i.du
  %i.dw = call float @llvm.fmuladd.f32(float %i.cd, float %i.dp, float %i.dv)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !179, !alias.scope !1032, !noalias !1033
  %i.dz = call float @llvm.fmuladd.f32(float %i.dw, float %i.al, float %i.dy)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store float %i.dz, ptr %i.ea, align 4, !tbaa !179, !alias.scope !1034, !noalias !1035
  %indvars.iv.next.i17.i = add nsw i64 %indvars.iv.i16.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i17.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, label %.preheader.i.i, !llvm.loop !1003

_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit: ; preds = %.lr.ph.i.i, %.preheader.i.i, %middle.block, %bb.e, %bb.d
  %exitcond.not = icmp eq i32 %.047, %i.j
  br i1 %exitcond.not, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %_ZL31doUpdateMDDoNotUpdateVelocitiesiifPKN3gmx11BasicVectorIfEEPS1_S3_S3_bNS_8ArrayRefIKfEENS5_IS2_EERK14gmx_ekindata_t.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr>, <4 x i1>, <4 x double>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <24 x float> @llvm.fmuladd.v24f32(<24 x float>, <24 x float>, <24 x float>) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #13 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #17 = { cold noreturn }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #19 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #20 = { nounwind }
attributes #21 = { nounwind memory(none) }
attributes #22 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #23 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #24 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #25 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { noreturn }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !242}
!1 = distinct !{!1, !242}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTSN3gmx6Update4ImplE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTSN3gmx11BasicVectorIfEE", !11, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!15, !14, i64 0}
!17 = !{!"p1 float", !11, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!19 = !{!18, !17, i64 0}
!20 = !{!18, !17, i64 16}
!21 = !{!"p1 long", !11, i64 0}
!22 = !{!"_ZTSSt18_Bit_iterator_base", !21, i64 0, !8, i64 8}
!23 = !{!22, !21, i64 0}
!24 = !{!"_ZTSSt13_Bit_iterator", !22, i64 0}
!25 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !21, i64 32}
!26 = !{!25, !21, i64 32}
!27 = !{!"p1 _ZTS14gmx_sd_sigma_t", !11, i64 0}
!28 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!29 = !{!28, !27, i64 0}
!30 = !{!28, !27, i64 16}
!31 = !{!"p1 _ZTS14gmx_sd_const_t", !11, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!32, !31, i64 0}
!34 = !{!32, !31, i64 16}
!35 = !{!"p1 short", !11, i64 0}
!36 = !{!"_ZTSN3gmx12ArrayRefIterIKtEE", !35, i64 0}
!37 = !{!"_ZTSN3gmx8ArrayRefIKtEE", !36, i64 0, !36, i64 8}
!38 = !{!"_ZTS16AccelerationType", !7, i64 0}
!39 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE12_Vector_implE", !18, i64 0}
!40 = !{!"_ZTSSt12_Vector_baseIfSaIfEE", !39, i64 0}
!41 = !{!"_ZTSSt6vectorIfSaIfEE", !40, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE12_Vector_implE", !32, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseI14gmx_sd_const_tSaIS0_EE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorI14gmx_sd_const_tSaIS0_EE", !43, i64 0}
!45 = !{!"_ZTSNSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE12_Vector_implE", !28, i64 0}
!46 = !{!"_ZTSSt12_Vector_baseI14gmx_sd_sigma_tSaIS0_EE", !45, i64 0}
!47 = !{!"_ZTSSt6vectorI14gmx_sd_sigma_tSaIS0_EE", !46, i64 0}
!48 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !25, i64 0}
!49 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIbSaIbEE", !49, i64 0}
!51 = !{!"_ZTS12gmx_stochd_t", !41, i64 0, !44, i64 24, !47, i64 48, !50, i64 72, !41, i64 112}
!52 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE12_Vector_implE", !15, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_23AlignedAllocationPolicyEEEE", !53, i64 0}
!55 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS3_NS1_9AllocatorIS3_NS1_23AlignedAllocationPolicyEEEEEE", !14, i64 0}
!56 = !{!"_ZTSN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_23AlignedAllocationPolicyEEEEE", !54, i64 0, !55, i64 24}
!57 = !{!"p1 _ZTSN3gmx14BoxDeformationE", !11, i64 0}
!58 = !{!"_ZTSN3gmx6Update4ImplE", !37, i64 0, !37, i64 16, !37, i64 32, !38, i64 48, !51, i64 56, !56, i64 192, !57, i64 224}
!59 = !{!58, !57, i64 224}
!60 = !{!"_ZTSN3gmx12ArrayRefIterIK12ParticleTypeEE", !11, i64 0}
!61 = !{!60, !11, i64 0}
!62 = !{!"_ZTSN3gmx12ArrayRefIterIKfEE", !17, i64 0}
!63 = !{!62, !17, i64 0}
!64 = !{!"_ZTSN3gmx12ArrayRefIterIKNS_11BasicVectorIfEEEE", !14, i64 0}
!65 = !{!64, !14, i64 0}
!66 = !{!"long", !7, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!8, !8, i64 0}
!69 = !{!"bool", !7, i64 0}
!70 = !{!69, !69, i64 0}
!71 = !{!"p1 _ZTS7t_state", !11, i64 0}
!72 = !{!71, !71, i64 0}
!73 = !{!"p1 _ZTS14gmx_ekindata_t", !11, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"p1 _ZTS12gmx_domdec_t", !11, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!"_ZTS20IntegrationAlgorithm", !7, i64 0}
!78 = !{!"_ZTS12CutoffScheme", !7, i64 0}
!79 = !{!"_ZTS19ComRemovalAlgorithm", !7, i64 0}
!80 = !{!"double", !7, i64 0}
!81 = !{!"p1 _ZTSN3gmx8MtsLevelE", !11, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE12_Vector_implE", !82, i64 0}
!84 = !{!"_ZTSSt12_Vector_baseIN3gmx8MtsLevelESaIS1_EE", !83, i64 0}
!85 = !{!"_ZTSSt6vectorIN3gmx8MtsLevelESaIS1_EE", !84, i64 0}
!86 = !{!"float", !7, i64 0}
!87 = !{!"_ZTS13EwaldGeometry", !7, i64 0}
!88 = !{!"_ZTS12LongRangeVdW", !7, i64 0}
!89 = !{!"_ZTS7PbcType", !7, i64 0}
!90 = !{!"_ZTS26EnsembleTemperatureSetting", !7, i64 0}
!91 = !{!"_ZTS19TemperatureCoupling", !7, i64 0}
!92 = !{!"_ZTS16PressureCoupling", !7, i64 0}
!93 = !{!"_ZTS20PressureCouplingType", !7, i64 0}
!94 = !{!"_ZTS15RefCoordScaling", !7, i64 0}
!95 = !{!"_ZTS23PressureCouplingOptions", !92, i64 0, !93, i64 4, !8, i64 8, !86, i64 12, !7, i64 16, !7, i64 52, !94, i64 88}
!96 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!97 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE12_Vector_implE", !96, i64 0}
!98 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE", !97, i64 0}
!99 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE", !98, i64 0}
!100 = !{!"_ZTS22CoulombInteractionType", !7, i64 0}
!101 = !{!"_ZTS20InteractionModifiers", !7, i64 0}
!102 = !{!"_ZTS15VanDerWaalsType", !7, i64 0}
!103 = !{!"_ZTS24DispersionCorrectionType", !7, i64 0}
!104 = !{!"_ZTS26FreeEnergyPerturbationType", !7, i64 0}
!105 = !{!"p1 _ZTS8t_lambda", !11, i64 0}
!106 = !{!"_ZTSSt10_Head_baseILm0EP8t_lambdaLb0EE", !105, i64 0}
!107 = !{!"_ZTSSt11_Tuple_implILm0EJP8t_lambdaSt14default_deleteIS0_EEE", !106, i64 0}
!108 = !{!"_ZTSSt5tupleIJP8t_lambdaSt14default_deleteIS0_EEE", !107, i64 0}
!109 = !{!"_ZTSSt15__uniq_ptr_implI8t_lambdaSt14default_deleteIS0_EE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_dataI8t_lambdaSt14default_deleteIS0_ELb1ELb1EE", !109, i64 0}
!111 = !{!"_ZTSSt10unique_ptrI8t_lambdaSt14default_deleteIS0_EE", !110, i64 0}
!112 = !{!"p1 _ZTS9t_simtemp", !11, i64 0}
!113 = !{!"_ZTSSt10_Head_baseILm0EP9t_simtempLb0EE", !112, i64 0}
!114 = !{!"_ZTSSt11_Tuple_implILm0EJP9t_simtempSt14default_deleteIS0_EEE", !113, i64 0}
!115 = !{!"_ZTSSt5tupleIJP9t_simtempSt14default_deleteIS0_EEE", !114, i64 0}
!116 = !{!"_ZTSSt15__uniq_ptr_implI9t_simtempSt14default_deleteIS0_EE", !115, i64 0}
!117 = !{!"_ZTSSt15__uniq_ptr_dataI9t_simtempSt14default_deleteIS0_ELb1ELb1EE", !116, i64 0}
!118 = !{!"_ZTSSt10unique_ptrI9t_simtempSt14default_deleteIS0_EE", !117, i64 0}
!119 = !{!"p1 _ZTS10t_expanded", !11, i64 0}
!120 = !{!"_ZTSSt10_Head_baseILm0EP10t_expandedLb0EE", !119, i64 0}
!121 = !{!"_ZTSSt11_Tuple_implILm0EJP10t_expandedSt14default_deleteIS0_EEE", !120, i64 0}
!122 = !{!"_ZTSSt5tupleIJP10t_expandedSt14default_deleteIS0_EEE", !121, i64 0}
!123 = !{!"_ZTSSt15__uniq_ptr_implI10t_expandedSt14default_deleteIS0_EE", !122, i64 0}
!124 = !{!"_ZTSSt15__uniq_ptr_dataI10t_expandedSt14default_deleteIS0_ELb1ELb1EE", !123, i64 0}
!125 = !{!"_ZTSSt10unique_ptrI10t_expandedSt14default_deleteIS0_EE", !124, i64 0}
!126 = !{!"_ZTS27DistanceRestraintRefinement", !7, i64 0}
!127 = !{!"_ZTS26DistanceRestraintWeighting", !7, i64 0}
!128 = !{!"_ZTS19ConstraintAlgorithm", !7, i64 0}
!129 = !{!"_ZTS8WallType", !7, i64 0}
!130 = !{!"p1 _ZTS13pull_params_t", !11, i64 0}
!131 = !{!"_ZTSSt10_Head_baseILm0EP13pull_params_tLb0EE", !130, i64 0}
!132 = !{!"_ZTSSt11_Tuple_implILm0EJP13pull_params_tSt14default_deleteIS0_EEE", !131, i64 0}
!133 = !{!"_ZTSSt5tupleIJP13pull_params_tSt14default_deleteIS0_EEE", !132, i64 0}
!134 = !{!"_ZTSSt15__uniq_ptr_implI13pull_params_tSt14default_deleteIS0_EE", !133, i64 0}
!135 = !{!"_ZTSSt15__uniq_ptr_dataI13pull_params_tSt14default_deleteIS0_ELb1ELb1EE", !134, i64 0}
!136 = !{!"_ZTSSt10unique_ptrI13pull_params_tSt14default_deleteIS0_EE", !135, i64 0}
!137 = !{!"p1 _ZTSN3gmx9AwhParamsE", !11, i64 0}
!138 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx9AwhParamsELb0EE", !137, i64 0}
!139 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !138, i64 0}
!140 = !{!"_ZTSSt5tupleIJPN3gmx9AwhParamsESt14default_deleteIS1_EEE", !139, i64 0}
!141 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx9AwhParamsESt14default_deleteIS1_EE", !140, i64 0}
!142 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx9AwhParamsESt14default_deleteIS1_ELb1ELb1EE", !141, i64 0}
!143 = !{!"_ZTSSt10unique_ptrIN3gmx9AwhParamsESt14default_deleteIS1_EE", !142, i64 0}
!144 = !{!"p1 _ZTS5t_rot", !11, i64 0}
!145 = !{!"_ZTSSt10_Head_baseILm0EP5t_rotLb0EE", !144, i64 0}
!146 = !{!"_ZTSSt11_Tuple_implILm0EJP5t_rotSt14default_deleteIS0_EEE", !145, i64 0}
!147 = !{!"_ZTSSt5tupleIJP5t_rotSt14default_deleteIS0_EEE", !146, i64 0}
!148 = !{!"_ZTSSt15__uniq_ptr_implI5t_rotSt14default_deleteIS0_EE", !147, i64 0}
!149 = !{!"_ZTSSt15__uniq_ptr_dataI5t_rotSt14default_deleteIS0_ELb1ELb1EE", !148, i64 0}
!150 = !{!"_ZTSSt10unique_ptrI5t_rotSt14default_deleteIS0_EE", !149, i64 0}
!151 = !{!"_ZTS8SwapType", !7, i64 0}
!152 = !{!"p1 _ZTS12t_swapcoords", !11, i64 0}
!153 = !{!"_ZTSSt10_Head_baseILm0EP12t_swapcoordsLb0EE", !152, i64 0}
!154 = !{!"_ZTSSt11_Tuple_implILm0EJP12t_swapcoordsSt14default_deleteIS0_EEE", !153, i64 0}
!155 = !{!"_ZTSSt5tupleIJP12t_swapcoordsSt14default_deleteIS0_EEE", !154, i64 0}
!156 = !{!"_ZTSSt15__uniq_ptr_implI12t_swapcoordsSt14default_deleteIS0_EE", !155, i64 0}
!157 = !{!"_ZTSSt15__uniq_ptr_dataI12t_swapcoordsSt14default_deleteIS0_ELb1ELb1EE", !156, i64 0}
!158 = !{!"_ZTSSt10unique_ptrI12t_swapcoordsSt14default_deleteIS0_EE", !157, i64 0}
!159 = !{!"p1 _ZTS5t_IMD", !11, i64 0}
!160 = !{!"p1 int", !11, i64 0}
!161 = !{!"any p2 pointer", !11, i64 0}
!162 = !{!"p2 float", !161, i64 0}
!163 = !{!"_ZTS9t_grpopts", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !17, i64 16, !17, i64 24, !11, i64 32, !160, i64 40, !162, i64 48, !162, i64 56, !17, i64 64, !99, i64 72, !160, i64 96, !160, i64 104, !8, i64 112}
!164 = !{!"p1 _ZTSN3gmx18KeyValueTreeObjectE", !11, i64 0}
!165 = !{!"_ZTSSt10_Head_baseILm0EPN3gmx18KeyValueTreeObjectELb0EE", !164, i64 0}
!166 = !{!"_ZTSSt11_Tuple_implILm0EJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !165, i64 0}
!167 = !{!"_ZTSSt5tupleIJPN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EEE", !166, i64 0}
!168 = !{!"_ZTSSt15__uniq_ptr_implIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !167, i64 0}
!169 = !{!"_ZTSSt15__uniq_ptr_dataIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_ELb1ELb1EE", !168, i64 0}
!170 = !{!"_ZTSSt10unique_ptrIN3gmx18KeyValueTreeObjectESt14default_deleteIS1_EE", !169, i64 0}
!171 = !{!"_ZTS10t_inputrec", !8, i64 0, !77, i64 4, !66, i64 8, !8, i64 16, !66, i64 24, !8, i64 32, !78, i64 36, !8, i64 40, !8, i64 44, !79, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !80, i64 80, !80, i64 88, !69, i64 96, !85, i64 104, !86, i64 128, !86, i64 132, !86, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !86, i64 156, !86, i64 160, !87, i64 164, !86, i64 168, !88, i64 172, !89, i64 176, !69, i64 180, !69, i64 181, !90, i64 184, !86, i64 188, !91, i64 192, !8, i64 196, !69, i64 200, !95, i64 204, !99, i64 296, !99, i64 320, !8, i64 344, !86, i64 348, !86, i64 352, !86, i64 356, !86, i64 360, !100, i64 364, !101, i64 368, !86, i64 372, !86, i64 376, !86, i64 380, !86, i64 384, !69, i64 388, !102, i64 392, !101, i64 396, !86, i64 400, !86, i64 404, !103, i64 408, !86, i64 412, !86, i64 416, !104, i64 420, !111, i64 424, !69, i64 432, !118, i64 440, !69, i64 448, !125, i64 456, !126, i64 464, !86, i64 468, !127, i64 472, !69, i64 476, !8, i64 480, !86, i64 484, !86, i64 488, !86, i64 492, !8, i64 496, !86, i64 500, !86, i64 504, !8, i64 508, !86, i64 512, !8, i64 516, !8, i64 520, !128, i64 524, !8, i64 528, !86, i64 532, !8, i64 536, !69, i64 540, !86, i64 544, !66, i64 552, !8, i64 560, !129, i64 564, !86, i64 568, !7, i64 572, !7, i64 580, !86, i64 588, !69, i64 592, !136, i64 600, !69, i64 608, !143, i64 616, !69, i64 624, !150, i64 632, !151, i64 640, !158, i64 648, !69, i64 656, !159, i64 664, !86, i64 672, !7, i64 676, !8, i64 712, !8, i64 716, !8, i64 720, !8, i64 724, !86, i64 728, !86, i64 732, !86, i64 736, !86, i64 740, !163, i64 744, !69, i64 864, !69, i64 865, !69, i64 866, !69, i64 867, !164, i64 872, !170, i64 880}
!172 = !{!171, !77, i64 4}
!173 = !{!"p1 omnipotent char", !11, i64 0}
!174 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !173, i64 0}
!175 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !174, i64 0, !66, i64 8, !7, i64 16}
!176 = !{!175, !173, i64 0}
!177 = !{!7, !7, i64 0}
!178 = !{!171, !80, i64 88}
!179 = !{!86, !86, i64 0}
!180 = !{!"_ZTSN3gmx16EnumerationArrayI34FreeEnergyPerturbationCouplingTypefLS1_7EEE", !7, i64 0}
!181 = !{!"p1 double", !11, i64 0}
!182 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !181, i64 0, !181, i64 8, !181, i64 16}
!183 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !182, i64 0}
!184 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !183, i64 0}
!185 = !{!"_ZTSSt6vectorIdSaIdEE", !184, i64 0}
!186 = !{!"_ZTSN3gmx13PinningPolicyE", !7, i64 0}
!187 = !{!"_ZTSN3gmx20HostAllocationPolicyE", !186, i64 0, !69, i64 4}
!188 = !{!"_ZTSN3gmx9AllocatorINS_11BasicVectorIfEENS_20HostAllocationPolicyEEE", !187, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!190 = !{!"_ZTSNSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE12_Vector_implE", !188, i64 0, !189, i64 8}
!191 = !{!"_ZTSSt12_Vector_baseIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !190, i64 0}
!192 = !{!"_ZTSSt6vectorIN3gmx11BasicVectorIfEENS0_9AllocatorIS2_NS0_20HostAllocationPolicyEEEE", !191, i64 0}
!193 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPN3gmx11BasicVectorIfEESt6vectorIS3_NS1_9AllocatorIS3_NS1_20HostAllocationPolicyEEEEEE", !14, i64 0}
!194 = !{!"_ZTSN3gmx12PaddedVectorINS_11BasicVectorIfEENS_9AllocatorIS2_NS_20HostAllocationPolicyEEEEE", !192, i64 0, !193, i64 32}
end_hunk_6
