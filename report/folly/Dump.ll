Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Dump?download=true
inline.NumInlined: 702
inline.NumDeleted: 406
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::c_array" = type { [20 x i64] }
%"struct.folly::c_array.36" = type { [100 x i16] }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.3" }
%"struct.std::_Head_base.3" = type { ptr }
%"class.folly::IOBufQueue" = type { %"struct.folly::IOBufQueue::Options", %"class.std::unique_ptr", ptr, ptr, ptr, %"struct.folly::IOBufQueue::WritableRangeCacheData", i64 }
%"struct.folly::IOBufQueue::Options" = type { i8 }
%"struct.folly::IOBufQueue::WritableRangeCacheData" = type <{ %"struct.std::pair", i8, [7 x i8] }>
%"struct.std::pair" = type { ptr, ptr }
%"class.folly::io::QueueAppender" = type { %"class.folly::IOBufQueue::WritableRangeCache", i64, i64 }
%"class.folly::IOBufQueue::WritableRangeCache" = type { %"struct.folly::IOBufQueue::WritableRangeCacheData", ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon.10 }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon.10 = type { i64, [8 x i8] }
%"class.std::vector.16" = type { %"struct.std::_Vector_base.17" }
%"struct.std::_Vector_base.17" = type { %"struct.std::_Vector_base<std::pair<folly::dynamic, folly::dynamic>, std::allocator<std::pair<folly::dynamic, folly::dynamic>>>::_Vector_impl" }
%"struct.std::_Vector_base<std::pair<folly::dynamic, folly::dynamic>, std::allocator<std::pair<folly::dynamic, folly::dynamic>>>::_Vector_impl" = type { %"struct.std::_Vector_base<std::pair<folly::dynamic, folly::dynamic>, std::allocator<std::pair<folly::dynamic, folly::dynamic>>>::_Vector_impl_data" }
%"struct.std::_Vector_base<std::pair<folly::dynamic, folly::dynamic>, std::allocator<std::pair<folly::dynamic, folly::dynamic>>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.folly::TypeError" = type { %"class.std::runtime_error" }
%"class.std::runtime_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.std::exception" = type { ptr }
%"struct.std::__cow_string" = type { %union.anon.11 }
%union.anon.11 = type { ptr }
%"class.std::allocator.7" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.std::pair.21" = type { %"struct.folly::dynamic", %"struct.folly::dynamic" }
%"struct.folly::dynamic" = type { i32, %"union.folly::dynamic::Data" }
%"union.folly::dynamic::Data" = type { %"class.std::__cxx11::basic_string" }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"class.std::invalid_argument" = type { %"class.std::logic_error" }
%"class.std::logic_error" = type { %"class.std::exception", %"struct.std::__cow_string" }
%"class.folly::basic_fbstring" = type { %"class.folly::fbstring_core" }
%"class.folly::fbstring_core" = type { %union.anon.37 }
%union.anon.37 = type { %"struct.folly::fbstring_core<char>::MediumLarge" }
%"struct.folly::fbstring_core<char>::MediumLarge" = type { ptr, i64, i64 }

$__clang_call_terminate = comdat any

$_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA22_cmA35_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_ = comdat any

$_ZN5folly2io13QueueAppenderD2Ev = comdat any

$_ZNSt10unique_ptrIN5folly5IOBufESt14default_deleteIS1_EED2Ev = comdat any

$_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm = comdat any

$_ZN5folly2io13QueueAppender10ensureSlowEm = comdat any

$_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionINS_9TypeErrorEEEvOT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN5folly9TypeErrorC2EOS0_ = comdat any

$_ZN5folly9TypeErrorD0Ev = comdat any

$_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev = comdat any

$_ZSt16__do_uninit_copyIN5folly7dynamic19const_item_iteratorEPSt4pairIS1_S1_EET0_T_S7_S6_ = comdat any

$_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_EEvT_S5_ = comdat any

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_ = comdat any

$_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_ = comdat any

$_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_ = comdat any

$_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_less_valEEvT_T0_SE_T1_RT2_ = comdat any

$_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_ = comdat any

$_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_ = comdat any

$_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_ = comdat any

$_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_ = comdat any

$_ZN5folly15throw_exceptionISt16invalid_argumentEEvOT_ = comdat any

$_ZNSt16invalid_argumentC2EOS_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm = comdat any

$_ZN5folly6detail18ToAppendStrImplAllISt16integer_sequenceImJLm0ELm1ELm2ELm3EEEE4callIJA22_cmA35_cPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpRKT_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

$_ZN5folly8toAppendINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEENSt9enable_ifIXaaaaaa13is_integral_vIT0_Ent11is_signed_vIS8_Esr12IsSomeStringIT_EE5valuegestS8_Li4EEvE4typeES8_PS9_ = comdat any

$_ZTIN5folly9TypeErrorE = comdat any

$_ZTSN5folly9TypeErrorE = comdat any

$_ZTVN5folly9TypeErrorE = comdat any

@_ZN5folly4bser6kMagicE = local_unnamed_addr constant [2 x i8] c"\00\01", align 1
@.str = private unnamed_addr constant [22 x i8] c"serialized data size \00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c" is too large to represent as BSER\00", align 1
@_ZTISt11range_error = external constant ptr
@_ZTIN5folly9TypeErrorE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5folly9TypeErrorE, ptr @_ZTISt13runtime_error }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5folly9TypeErrorE = linkonce_odr constant [19 x i8] c"N5folly9TypeErrorE\00", comdat, align 1
@_ZTISt13runtime_error = external constant ptr
@_ZTVN5folly9TypeErrorE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN5folly9TypeErrorE, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN5folly9TypeErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@.str.20 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE = external local_unnamed_addr constant ptr, align 8
@.str.23 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE = external local_unnamed_addr constant ptr, align 8
@.str.26 = private unnamed_addr constant [36 x i8] c"IOBufQueue: chain length not cached\00", align 1
@_ZTISt16invalid_argument = external constant ptr
@_ZTVSt16invalid_argument = external constant { [5 x ptr] }, align 8
@_ZN5folly6detail15to_ascii_powersILm10EmE4dataE = external local_unnamed_addr global %"struct.folly::c_array", align 8
@.str.27 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZN5folly6detail14to_ascii_tableILm10ENS_17to_ascii_alphabetILb0EEEE4dataE = external local_unnamed_addr global %"struct.folly::c_array.36", align 2

@_ZN5folly4bser18serialization_optsC1Ev = unnamed_addr alias void (ptr), ptr @_ZN5folly4bser18serialization_optsC2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly4bser18serialization_optsC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(80) initializes((0, 1), (8, 16), (72, 73)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i8 0, ptr %0, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 8192, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.b, align 8, !tbaa !85
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly4bser11toBserIOBufERKNS_7dynamicERKNS0_18serialization_optsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::IOBufQueue", align 8 ; 14 uses
  %4 = alloca %"struct.folly::IOBufQueue::Options", align 1 ; 4 uses
  %i.a = alloca [11 x i8], align 2                ; 7 uses
  %5 = alloca %"class.std::unique_ptr", align 8   ; 8 uses
  %6 = alloca %"class.folly::io::QueueAppender", align 16 ; 14 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  store i8 1, ptr %4, align 1
  call void @_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !24
  invoke void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5, i64 noundef %i.d)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %5, align 8, !tbaa !27     ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %_ZN5folly5IOBuf7advanceEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 11
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.i, ptr align 1 %i.h, i64 %i.f, i1 false)
  br label %_ZN5folly5IOBuf7advanceEm.exit

_ZN5folly5IOBuf7advanceEm.exit:                   ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  store ptr %i.l, ptr %i.j, align 8, !tbaa !90
  invoke void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %_ZN5folly5IOBuf7advanceEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.m = load i64, ptr %i.c, align 8, !tbaa !24   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %6, i8 0, i64 17, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store ptr %3, ptr %i.n, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47   ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.p, %6
  br i1 %.not.i.i.i.i.i, label %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load <2 x ptr>, ptr %i.p, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.q, ptr %6, align 16, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !tbaa !49, !range !50, !noundef !51
  store i8 0, ptr %i.r, align 8, !tbaa !49
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i8 %i.s, ptr %i.t, align 16, !tbaa !52
  store ptr %6, ptr %i.o, align 8, !tbaa !47
  br label %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit

_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit: ; preds = %bb.d, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i64 %i.m, ptr %i.u, align 16, !tbaa !54
  store i64 %i.m, ptr %i.v, align 8, !tbaa !91
  invoke fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.w = load i8, ptr %3, align 8, !tbaa !92, !range !50, !noundef !51
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.h, label %bb.g, !prof !55

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5folly6detail16throw_exception_ISt16invalid_argumentJPKcEEEvDpT0_(ptr noundef nonnull @.str.26) #8
          to label %.noexc unwind label %bb.ae

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !56
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !57
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !58
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = add i64 %i.z, %i.ae
  %i.ah = sub i64 %i.ag, %i.af                    ; 9 uses
  store i64 %i.ah, ptr %i.b, align 8, !tbaa !59
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.aj = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA22_cmA35_cETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameISA_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSD_EEEE5valueEiE4typeELi0EEESA_DpRKSC_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 1 dereferenceable(22) @.str, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(35) @.str.1)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZNSt11range_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt11range_error, ptr nonnull @_ZNSt11range_errorD1Ev) #26
          to label %bb.aj unwind label %bb.o

bb.l:                                             ; preds = %bb.a
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.m:                                             ; preds = %_ZN5folly5IOBuf7advanceEm.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.n:                                             ; preds = %_ZN5folly2io13QueueAppenderC2EPNS_10IOBufQueueEm.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.p

bb.o:                                             ; preds = %bb.k, %bb.j
  %.020 = phi i1 [ false, %bb.k ], [ true, %bb.j ] ; 2 uses
  %i.ao = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ap = load ptr, ptr %7, align 8, !tbaa !62    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !63
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.020, label %bb.p, label %bb.af

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br i1 %.020, label %bb.p, label %bb.af

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn37 = phi { ptr, i32 } [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ao, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aj) #24
  br label %bb.af

bb.q:                                             ; preds = %bb.h
  store i16 256, ptr %i.a, align 2
end_hunk_0
begin_hunk_1_@_ZN5folly10IOBufQueueC1ERKNS0_7OptionsE
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare void @_ZN5folly5IOBuf6createEm(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, i64 noundef) local_unnamed_addr #5

declare void @_ZN5folly10IOBufQueue6appendEOSt10unique_ptrINS_5IOBufESt14default_deleteIS2_EEbb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.16", align 8    ; 8 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !106
  switch i32 %i.a, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit [
    i32 0, label %bb.b
    i32 2, label %_ZNKR5folly7dynamic7getBoolEv.exit
    i32 3, label %_ZNKR5folly7dynamic9getDoubleEv.exit
    i32 4, label %_ZNKR5folly7dynamic6getIntEv.exit
    i32 5, label %bb.g
    i32 1, label %bb.ab
    i32 6, label %_ZNKR5folly7dynamic9getStringB5cxx11Ev.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !68
  %i.d = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !70

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %bb.b, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ]
  store i8 10, ptr %i.f, align 1
  %i.g = load ptr, ptr %1, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

_ZNKR5folly7dynamic7getBoolEv.exit:               ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i8, ptr %i.i, align 8, !tbaa !49, !range !50, !noundef !51
  %i.k = xor i8 %i.j, 9
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.n = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %bb.d, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19, !prof !70

bb.d:                                             ; preds = %_ZNKR5folly7dynamic7getBoolEv.exit
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i18 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit19: ; preds = %_ZNKR5folly7dynamic7getBoolEv.exit, %bb.d
  %i.p = phi ptr [ %.pre.i.i18, %bb.d ], [ %i.n, %_ZNKR5folly7dynamic7getBoolEv.exit ]
  store i8 %i.k, ptr %i.p, align 1
  %i.q = load ptr, ptr %1, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store ptr %i.r, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

_ZNKR5folly7dynamic9getDoubleEv.exit:             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !108
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = load ptr, ptr %1, align 8, !tbaa !69     ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %bb.e, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22, !prof !70

bb.e:                                             ; preds = %_ZNKR5folly7dynamic9getDoubleEv.exit
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i21 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22: ; preds = %_ZNKR5folly7dynamic9getDoubleEv.exit, %bb.e
  %i.y = phi ptr [ %.pre.i.i21, %bb.e ], [ %i.w, %_ZNKR5folly7dynamic9getDoubleEv.exit ]
  store i8 7, ptr %i.y, align 1
  %i.z = load ptr, ptr %1, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 3 uses
  store ptr %i.aa, ptr %1, align 8, !tbaa !69
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp ult i64 %i.ae, 8
  br i1 %i.af, label %bb.f, label %_ZN5folly2io13QueueAppender5writeIdEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit, !prof !70

bb.f:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 8)
  %.pre.i.i23 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIdEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit

_ZN5folly2io13QueueAppender5writeIdEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit: ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22, %bb.f
  %i.ag = phi ptr [ %.pre.i.i23, %bb.f ], [ %i.aa, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit22 ]
  store double %i.t, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %1, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %i.ai, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

_ZNKR5folly7dynamic6getIntEv.exit:                ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59
  tail call fastcc void @_ZN5folly4bserL13bserEncodeIntElRNS_2io13QueueAppenderE(i64 noundef %i.ak, ptr noundef nonnull align 8 dereferenceable(48) %1)
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

bb.g:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !68
  %i.an = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %bb.h, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit41, !prof !70

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i40 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit41

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit41: ; preds = %bb.g, %bb.h
  %i.ap = phi ptr [ %.pre.i.i40, %bb.h ], [ %i.an, %bb.g ]
  store i8 1, ptr %i.ap, align 1
  %i.aq = load ptr, ptr %1, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store ptr %i.ar, ptr %1, align 8, !tbaa !69
  %i.as = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0), !inline_history !96
  tail call fastcc void @_ZN5folly4bserL13bserEncodeIntElRNS_2io13QueueAppenderE(i64 noundef %i.as, ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !96
  %i.at = load i8, ptr %2, align 8, !tbaa !23, !range !50, !noundef !51
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.i, label %bb.w

bb.i:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.av = load i32, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not.i.not.i.i.i38 = icmp eq i32 %i.av, 5
  br i1 %.not.i.not.i.i.i38, label %_ZNK5folly7dynamic5itemsEv.exit35, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !48
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.aw, i32 noundef %i.av) #8
  unreachable

_ZNK5folly7dynamic5itemsEv.exit35:                ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !110 ; 3 uses
  %i.az = and i64 %i.ay, -8                       ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  %i.bb = shl i64 %i.ay, 1
  %i.bc = and i64 %i.bb, 14
  %i.bd = lshr i64 %i.ay, 3
  %i.be = and i64 %i.bd, 1
  %i.bf = or disjoint i64 %i.bc, %i.be            ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not10.i.i = icmp eq i64 %i.az, 0
  br i1 %.not10.i.i, label %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EE11_M_allocateEm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK5folly7dynamic5itemsEv.exit35, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i
  %.013.i.i = phi i64 [ %i.cg, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i ], [ 0, %_ZNK5folly7dynamic5itemsEv.exit35 ] ; 3 uses
  %.sroa.5.012.i.i = phi i64 [ %.sroa.5.3.i.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i ], [ %i.bf, %_ZNK5folly7dynamic5itemsEv.exit35 ] ; 3 uses
  %.sroa.02.011.i.i = phi ptr [ %.sroa.02.1.i.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i ], [ %i.ba, %_ZNK5folly7dynamic5itemsEv.exit35 ] ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.02.011.i.i, i64 -16
  %.neg.i.i.i.i.i.i.i = mul nsw i64 %.sroa.5.012.i.i, -8
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %.neg.i.i.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i.i.i = icmp eq i64 %.sroa.5.012.i.i, 0
  br i1 %.not19.i5.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i.i

.critedge.i.i.i.i.i.i.preheader:                  ; preds = %bb.k, %.lr.ph.i.i
  br label %.critedge.i.i.i.i.i.i

bb.k:                                             ; preds = %thread-pre-split.i.i.i.i.i
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not19.i.i.i.i.i.i, label %.critedge.i.i.i.i.i.i.preheader, label %thread-pre-split.i.i.i.i.i

thread-pre-split.i.i.i.i.i:                       ; preds = %.lr.ph.i.i, %bb.k
  %i.bi = phi i64 [ %i.bk, %bb.k ], [ %.sroa.5.012.i.i, %.lr.ph.i.i ]
  %i.bj = phi ptr [ %i.bl, %bb.k ], [ %.sroa.02.011.i.i, %.lr.ph.i.i ]
  %i.bk = add nsw i64 %i.bi, -1                   ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bk
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !63
  %.not.i.i.i.i.i55 = icmp eq i8 %i.bn, 0
  br i1 %.not.i.i.i.i.i55, label %bb.k, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i, !prof !70, !llvm.loop !0

.critedge.i.i.i.i.i.i:                            ; preds = %.critedge.i.i.i.i.i.i.preheader, %bb.l
  %.017.i.i.i.i.i.i = phi ptr [ %i.bs, %bb.l ], [ %i.bh, %.critedge.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i.i.i, i64 14
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !63
  %i.bq = and i8 %i.bp, 15
  %.not2.i.i.i.i.i = icmp eq i8 %i.bq, 0
  br i1 %.not2.i.i.i.i.i, label %bb.l, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.thread, !prof !55

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.thread: ; preds = %.critedge.i.i.i.i.i.i
  %i.br = add nuw nsw i64 %.013.i.i, 1
  br label %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i

bb.l:                                             ; preds = %.critedge.i.i.i.i.i.i
  %i.bs = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -128 ; 3 uses
  %i.bt = load <16 x i8>, ptr %i.bs, align 16, !tbaa !63
  %i.bu = icmp eq <16 x i8> %i.bt, zeroinitializer
  %i.bv = bitcast <16 x i1> %i.bu to i16
  %i.bw = and i16 %i.bv, 16383                    ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %.017.i.i.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bx, i32 0, i32 3, i32 1)
  %.not3.i.i.i.i.i = icmp eq i16 %i.bw, 16383
  br i1 %.not3.i.i.i.i.i, label %.critedge.i.i.i.i.i.i, label %bb.m, !prof !70, !llvm.loop !1

bb.m:                                             ; preds = %bb.l
  %i.by = xor i16 %i.bw, 16383
  %i.bz = zext nneg i16 %i.by to i32
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = xor i32 %i.ca, 31
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = getelementptr i8, ptr %i.bs, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i: ; preds = %thread-pre-split.i.i.i.i.i, %bb.m
  %.sroa.02.1.i.i = phi ptr [ %i.cf, %bb.m ], [ %i.bl, %thread-pre-split.i.i.i.i.i ] ; 2 uses
  %.sroa.5.3.i.i = phi i64 [ %i.cc, %bb.m ], [ %i.bk, %thread-pre-split.i.i.i.i.i ]
  %i.cg = add nuw nsw i64 %.013.i.i, 1            ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.02.1.i.i, null
  br i1 %.not.i.i, label %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i, label %.lr.ph.i.i, !llvm.loop !97

_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i: ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.thread
  %i.ch = phi i64 [ %i.br, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i.thread ], [ %i.cg, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit.i.i ] ; 2 uses
  %i.ci = icmp samesign ugt i64 %.013.i.i, 115292150460684696
  br i1 %i.ci, label %.noexc56, label %_ZNSt15__new_allocatorISt4pairIN5folly7dynamicES2_EE8allocateEmPKv.exit.i.i

.noexc56:                                         ; preds = %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #26
  unreachable

_ZNSt15__new_allocatorISt4pairIN5folly7dynamicES2_EE8allocateEmPKv.exit.i.i: ; preds = %_ZSt10__distanceIN5folly7dynamic19const_item_iteratorEENSt15iterator_traitsIT_E15difference_typeES4_S4_St18input_iterator_tag.exit.i
  %i.cj = mul nuw nsw i64 %i.ch, 80
  %i.ck = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cj) #28
  br label %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorISt4pairIN5folly7dynamicES2_EE8allocateEmPKv.exit.i.i, %_ZNK5folly7dynamic5itemsEv.exit35
  %.0.lcssa.i1518.i = phi i64 [ 0, %_ZNK5folly7dynamic5itemsEv.exit35 ], [ %i.ch, %_ZNSt15__new_allocatorISt4pairIN5folly7dynamicES2_EE8allocateEmPKv.exit.i.i ] ; 3 uses
  %.pr.i = phi ptr [ null, %_ZNK5folly7dynamic5itemsEv.exit35 ], [ %i.ck, %_ZNSt15__new_allocatorISt4pairIN5folly7dynamicES2_EE8allocateEmPKv.exit.i.i ] ; 15 uses
  store ptr %.pr.i, ptr %3, align 8, !tbaa !74
  %i.cl = getelementptr inbounds nuw [80 x i8], ptr %.pr.i, i64 %.0.lcssa.i1518.i
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !75
  %i.cn = invoke noundef ptr @_ZSt16__do_uninit_copyIN5folly7dynamic19const_item_iteratorEPSt4pairIS1_S1_EET0_T_S7_S6_(ptr %i.ba, i64 %i.bf, ptr null, i64 0, ptr noundef %.pr.i)
          to label %bb.p unwind label %bb.n       ; 9 uses

bb.n:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EE11_M_allocateEm.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i33, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.idx214 = mul nuw nsw i64 %.0.lcssa.i1518.i, 80
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx214) #27
  br label %.body

bb.p:                                             ; preds = %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EE11_M_allocateEm.exit.i
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !76
  %i.cp = icmp eq ptr %.pr.i, %i.cn
  br i1 %i.cp, label %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cq = ptrtoint ptr %i.cn to i64
  %i.cr = ptrtoint ptr %.pr.i to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = sdiv exact i64 %i.cs, 80
  %i.cu = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = shl nuw nsw i64 %i.cu, 1
  %i.cw = xor i64 %i.cv, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %.pr.i, ptr %i.cn, i64 noundef %i.cw)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.q
  %i.cx = icmp sgt i64 %i.cs, 1280
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.noexc
  %i.cy = getelementptr inbounds nuw i8, ptr %.pr.i, i64 1280 ; 3 uses
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.pr.i, ptr nonnull %i.cy)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %bb.r
  %i.cz = icmp eq ptr %i.cy, %i.cn
  br i1 %i.cz, label %.lr.ph121.preheader, label %.lr.ph.i.i.i.i

.lr.ph121.preheader:                              ; preds = %.noexc31, %bb.s, %.noexc30
  br label %.lr.ph121

.lr.ph.i.i.i.i:                                   ; preds = %.noexc30, %.noexc31
  %.sroa.0.04.i.i.i.i = phi ptr [ %i.da, %.noexc31 ], [ %i.cy, %.noexc30 ] ; 2 uses
  invoke void @_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_less_iterEEvT_T0_(ptr nonnull %.sroa.0.04.i.i.i.i)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %.lr.ph.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 80 ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.cn
  br i1 %i.db, label %.lr.ph121.preheader, label %.lr.ph.i.i.i.i, !llvm.loop !98

bb.s:                                             ; preds = %.noexc
  invoke void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_T0_(ptr %.pr.i, ptr %i.cn)
          to label %.lr.ph121.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.i.i.i28:                                   ; preds = %bb.v, %.lr.ph.i.i.i28
  %.05.i.i.i = phi ptr [ %i.dd, %.lr.ph.i.i.i28 ], [ %.pr.i, %bb.v ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.dc) #24
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %.05.i.i.i) #24
  %i.dd = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.dd, %i.cn
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i28, !llvm.loop !2

_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %.lr.ph.i.i.i28, %bb.p
  %.not.i.i1.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit.i
  %.idx = mul nuw nsw i64 %.0.lcssa.i1518.i, 80
  tail call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %.idx) #27
  br label %_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit

_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit

.lr.ph121:                                        ; preds = %.lr.ph121.preheader, %bb.v
  %.sroa.065.0120 = phi ptr [ %i.df, %bb.v ], [ %.pr.i, %.lr.ph121.preheader ] ; 3 uses
  invoke fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.065.0120, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

bb.u:                                             ; preds = %.lr.ph121
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.065.0120, i64 40
  invoke fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

bb.v:                                             ; preds = %bb.u
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.065.0120, i64 80 ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.cn
  br i1 %i.dg, label %.lr.ph.i.i.i28, label %.lr.ph121

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.u, %.lr.ph121, %.lr.ph.i.i.i.i, %bb.q, %bb.r, %bb.s
  %lpad.loopexit.split-lp377 = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #24, !inline_history !96
  br label %.body

.body:                                            ; preds = %bb.o, %bb.n, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp377, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %bb.n ], [ %lpad.thr_comm.split-lp, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn.pn.i

bb.w:                                             ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit41
  %i.dh = load i32, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not.i.not.i.i.i27 = icmp eq i32 %i.dh, 5
  br i1 %.not.i.not.i.i.i27, label %_ZNK5folly7dynamic5itemsEv.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.di = load ptr, ptr @_ZN5folly7dynamic8TypeInfoINS0_10ObjectImplEE4nameE, align 8, !tbaa !48
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.di, i32 noundef %i.dh) #8
  unreachable

_ZNK5folly7dynamic5itemsEv.exit:                  ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !110 ; 3 uses
  %i.dl = and i64 %i.dk, -8                       ; 2 uses
  %.not116 = icmp eq i64 %i.dl, 0
  br i1 %.not116, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %_ZNK5folly7dynamic5itemsEv.exit
  %i.dm = shl i64 %i.dk, 1
  %i.dn = and i64 %i.dm, 14
  %i.do = lshr i64 %i.dk, 3
  %i.dp = and i64 %i.do, 1
  %i.dq = or disjoint i64 %i.dn, %i.dp
  %i.dr = inttoptr i64 %i.dl to ptr
  br label %.lr.ph119

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit
  %.sroa.060.0118 = phi ptr [ %.sroa.060.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %i.dr, %.lr.ph119.preheader ] ; 3 uses
  %.sroa.8.0117 = phi i64 [ %.sroa.8.3, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %i.dq, %.lr.ph119.preheader ] ; 3 uses
  %i.ds = load ptr, ptr %.sroa.060.0118, align 8, !tbaa !78 ; 2 uses
  tail call fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %i.ds, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %2), !inline_history !96
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  tail call fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %i.dt, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(80) %2), !inline_history !96
  %i.du = getelementptr inbounds i8, ptr %.sroa.060.0118, i64 -16
  %.neg.i.i.i.i.i = mul nsw i64 %.sroa.8.0117, -8
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 %.neg.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i = icmp eq i64 %.sroa.8.0117, 0
  br i1 %.not19.i5.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

.critedge.i.i.i.i.preheader:                      ; preds = %bb.y, %.lr.ph119
  br label %.critedge.i.i.i.i

bb.y:                                             ; preds = %thread-pre-split.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not19.i.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %.lr.ph119, %bb.y
  %i.dw = phi i64 [ %i.dy, %bb.y ], [ %.sroa.8.0117, %.lr.ph119 ]
  %i.dx = phi ptr [ %i.dz, %bb.y ], [ %.sroa.060.0118, %.lr.ph119 ]
  %i.dy = add nsw i64 %i.dw, -1                   ; 4 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -8 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dy
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !63
  %.not.i.i.i26 = icmp eq i8 %i.eb, 0
  br i1 %.not.i.i.i26, label %bb.y, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !70, !llvm.loop !0

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %bb.z
  %.017.i.i.i.i = phi ptr [ %i.ef, %bb.z ], [ %i.dv, %.critedge.i.i.i.i.preheader ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 14
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !63
  %i.ee = and i8 %i.ed, 15
  %.not2.i.i.i = icmp eq i8 %i.ee, 0
  br i1 %.not2.i.i.i, label %bb.z, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, !prof !55

bb.z:                                             ; preds = %.critedge.i.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -128 ; 3 uses
  %i.eg = load <16 x i8>, ptr %i.ef, align 16, !tbaa !63
  %i.eh = icmp eq <16 x i8> %i.eg, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %i.ej = and i16 %i.ei, 16383                    ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.ek, i32 0, i32 3, i32 1)
  %.not3.i.i.i = icmp eq i16 %i.ej, 16383
  br i1 %.not3.i.i.i, label %.critedge.i.i.i.i, label %bb.aa, !prof !70, !llvm.loop !1

bb.aa:                                            ; preds = %bb.z
  %i.el = xor i16 %i.ej, 16383
  %i.em = zext nneg i16 %i.el to i32
  %i.en = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.em, i1 true)
  %i.eo = xor i32 %i.en, 31
  %i.ep = zext nneg i32 %i.eo to i64              ; 2 uses
  %i.eq = shl nuw nsw i64 %i.ep, 3
  %i.er = getelementptr i8, ptr %i.ef, i64 %i.eq
  %i.es = getelementptr i8, ptr %i.er, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit: ; preds = %thread-pre-split.i.i.i, %bb.aa
  %.sroa.8.3 = phi i64 [ %i.ep, %bb.aa ], [ %i.dy, %thread-pre-split.i.i.i ]
  %.sroa.060.1 = phi ptr [ %i.es, %bb.aa ], [ %i.dz, %thread-pre-split.i.i.i ] ; 2 uses
  %.not = icmp eq ptr %.sroa.060.1, null
  br i1 %.not, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph119

bb.ab:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eu = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ev = load i8, ptr %i.eu, align 8, !tbaa !111, !range !50, !noundef !51
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %_ZNKR5folly8OptionalISt13unordered_mapIPKNS_7dynamicES2_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEEE5valueEv.exit.i, label %.loopexit89

_ZNKR5folly8OptionalISt13unordered_mapIPKNS_7dynamicES2_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEEE5valueEv.exit.i: ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !119
  %.not.not.i.i.i = icmp eq i64 %i.ey, 0
  br i1 %.not.not.i.i.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZNKR5folly8OptionalISt13unordered_mapIPKNS_7dynamicES2_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEEE5valueEv.exit.i
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 32
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %bb.ac
  %.sroa.06.0.in.i.i.i = phi ptr [ %i.ez, %bb.ac ], [ %.sroa.06.0.i.i.i, %bb.ae ]
  %.sroa.06.0.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i, align 8, !tbaa !120 ; 4 uses
  %i.fa = icmp eq ptr %.sroa.06.0.i.i.i, null
  br i1 %i.fa, label %.loopexit89, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !122
  %i.fd = icmp eq ptr %0, %i.fc
  br i1 %i.fd, label %.loopexit90, label %bb.ad, !llvm.loop !99

bb.af:                                            ; preds = %_ZNKR5folly8OptionalISt13unordered_mapIPKNS_7dynamicES2_St4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S2_EEEE5valueEv.exit.i
  %i.fe = ptrtoint ptr %0 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !123 ; 2 uses
  %i.fh = urem i64 %i.fe, %i.fg                   ; 2 uses
  %i.fi = load ptr, ptr %i.et, align 8, !tbaa !124
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fh
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !125 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i.i.i, label %.loopexit89, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !120 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !122
  %i.fo = icmp eq ptr %0, %i.fn
  br i1 %i.fo, label %.loopexit90, label %.lr.ph.i.i.i.i.i

bb.ah:                                            ; preds = %bb.ai
  %i.fp = icmp eq ptr %0, %i.fs
  br i1 %i.fp, label %.loopexit90, label %.lr.ph.i.i.i.i.i, !llvm.loop !100

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ag, %bb.ah
  %.020.i.i.i.i.i = phi ptr [ %i.fq, %bb.ah ], [ %i.fl, %bb.ag ]
  %i.fq = load ptr, ptr %.020.i.i.i.i.i, align 8, !tbaa !120 ; 4 uses
  %.not18.i.i.i.i.i = icmp eq ptr %i.fq, null
  br i1 %.not18.i.i.i.i.i, label %.loopexit89, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !122 ; 2 uses
  %i.ft = ptrtoint ptr %i.fs to i64
  %i.fu = urem i64 %i.ft, %i.fg
  %.not19.i.i.i.i.i = icmp eq i64 %i.fu, %i.fh
  br i1 %.not19.i.i.i.i.i, label %bb.ah, label %..loopexit_crit_edge21.i.i.i.i.i, !llvm.loop !100

..loopexit_crit_edge21.i.i.i.i.i:                 ; preds = %bb.ai
  br label %.loopexit89, !llvm.loop !100

.loopexit90:                                      ; preds = %bb.ah, %bb.ae, %bb.ag
  %.sroa.06.1.i.i.i = phi ptr [ %.sroa.06.0.i.i.i, %bb.ae ], [ %i.fl, %bb.ag ], [ %i.fq, %bb.ah ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 16 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !68
  %i.fy = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.fz = icmp eq ptr %i.fx, %i.fy
  br i1 %i.fz, label %bb.aj, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54, !prof !70

bb.aj:                                            ; preds = %.loopexit90
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1)
  %.pre.i.i53 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54: ; preds = %.loopexit90, %bb.aj
  %i.ga = phi ptr [ %.pre.i.i53, %bb.aj ], [ %i.fy, %.loopexit90 ]
  store i8 11, ptr %i.ga, align 1
  %i.gb = load ptr, ptr %1, align 8, !tbaa !69
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 1 ; 3 uses
  store ptr %i.gc, ptr %1, align 8, !tbaa !69
  %i.gd = load ptr, ptr %i.fw, align 8, !tbaa !68
  %i.ge = icmp eq ptr %i.gd, %i.gc
  br i1 %i.ge, label %bb.ak, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i215, !prof !70

bb.ak:                                            ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54
  tail call void @_ZN5folly2io13QueueAppender18ensureSlowNoinlineEm(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 1), !inline_history !101
  %.pre.i.i.i216 = load ptr, ptr %1, align 8, !tbaa !69
  br label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i215

_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i215: ; preds = %bb.ak, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54
  %i.gf = phi ptr [ %.pre.i.i.i216, %bb.ak ], [ %i.gc, %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit54 ]
  store i8 0, ptr %i.gf, align 1
  %i.gg = load ptr, ptr %1, align 8, !tbaa !69
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 1
  store ptr %i.gh, ptr %1, align 8, !tbaa !69
  %i.gi = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %i.fv), !inline_history !101
  tail call fastcc void @_ZN5folly4bserL13bserEncodeIntElRNS_2io13QueueAppenderE(i64 noundef %i.gi, ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !101
  %i.gj = load i32, ptr %i.fv, align 8, !tbaa !106 ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i32 %i.gj, 1
  br i1 %.not.i.not.i.i.i.i, label %_ZNK5folly7dynamic3endEv.exit.i, label %bb.al

bb.al:                                            ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i215
  %i.gk = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !48
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.gk, i32 noundef %i.gj) #8, !inline_history !101
  unreachable

_ZNK5folly7dynamic3endEv.exit.i:                  ; preds = %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit.i215
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 24 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !122 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i.i, i64 32 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !122 ; 2 uses
  %i.gp = icmp eq ptr %i.gm, %i.go
  br i1 %i.gp, label %_ZN5folly4bserL21bserEncodeArraySimpleERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK5folly7dynamic3endEv.exit.i, %.lr.ph.i
  %.sroa.010.013.i = phi ptr [ %i.gq, %.lr.ph.i ], [ %i.gm, %_ZNK5folly7dynamic3endEv.exit.i ] ; 2 uses
  tail call fastcc void @_ZN5folly4bserL10bserEncodeERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.010.013.i, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull readonly align 8 dereferenceable(80) %2), !inline_history !101
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.010.013.i, i64 40 ; 2 uses
  %i.gr = icmp eq ptr %i.gq, %i.go
  br i1 %i.gr, label %_ZN5folly4bserL21bserEncodeArraySimpleERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph.i

_ZN5folly4bserL21bserEncodeArraySimpleERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit: ; preds = %.lr.ph.i, %_ZNK5folly7dynamic3endEv.exit.i
  %i.gs = tail call noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0), !inline_history !102
  tail call fastcc void @_ZN5folly4bserL13bserEncodeIntElRNS_2io13QueueAppenderE(i64 noundef %i.gs, ptr noundef nonnull align 8 dereferenceable(48) %1), !inline_history !102
  %i.gt = load i32, ptr %0, align 8, !tbaa !106   ; 2 uses
  %.not.i.not.i.i.i51 = icmp eq i32 %i.gt, 1
  br i1 %.not.i.not.i.i.i51, label %_ZNK5folly7dynamic3endEv.exit50, label %bb.am

bb.am:                                            ; preds = %_ZN5folly4bserL21bserEncodeArraySimpleERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit
  %i.gu = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !48
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.gu, i32 noundef %i.gt) #8
  unreachable

_ZNK5folly7dynamic3endEv.exit50:                  ; preds = %_ZN5folly4bserL21bserEncodeArraySimpleERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !122 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !122 ; 2 uses
  %i.gz = icmp eq ptr %i.gw, %i.gy
  br i1 %i.gz, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph115

.lr.ph115:                                        ; preds = %_ZNK5folly7dynamic3endEv.exit50, %._crit_edge
  %.sroa.076.0114 = phi ptr [ %i.hf, %._crit_edge ], [ %i.gw, %_ZNK5folly7dynamic3endEv.exit50 ] ; 2 uses
  %i.ha = load i32, ptr %i.fv, align 8, !tbaa !106 ; 2 uses
  %.not.i.not.i.i.i48 = icmp eq i32 %i.ha, 1
  br i1 %.not.i.not.i.i.i48, label %_ZNK5folly7dynamic3endEv.exit, label %bb.an

bb.an:                                            ; preds = %.lr.ph115
  %i.hb = load ptr, ptr @_ZN5folly7dynamic8TypeInfoISt6vectorIS0_SaIS0_EEE4nameE, align 8, !tbaa !48
  tail call void @_ZN5folly6detail16throw_exception_INS_9TypeErrorEJPKcNS_7dynamic4TypeEEEEvDpT0_(ptr noundef %i.hb, i32 noundef %i.ha) #8
  unreachable

_ZNK5folly7dynamic3endEv.exit:                    ; preds = %.lr.ph115
  %i.hc = load ptr, ptr %i.gl, align 8, !tbaa !122 ; 2 uses
  %i.hd = load ptr, ptr %i.gn, align 8, !tbaa !122 ; 2 uses
  %i.he = icmp eq ptr %i.hc, %i.hd
  br i1 %i.he, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.au, %_ZNK5folly7dynamic3endEv.exit
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.076.0114, i64 40 ; 2 uses
  %i.hg = icmp eq ptr %i.hf, %i.gy
  br i1 %i.hg, label %_ZN5folly4bserL16bserEncodeObjectERKNS_7dynamicERNS_2io13QueueAppenderERKNS0_18serialization_optsE.exit, label %.lr.ph115

.lr.ph:                                           ; preds = %_ZNK5folly7dynamic3endEv.exit, %bb.au
  %.sroa.072.0113 = phi ptr [ %i.hv, %bb.au ], [ %i.hc, %_ZNK5folly7dynamic3endEv.exit ] ; 2 uses
  %i.hh = tail call noundef ptr @_ZNKR5folly7dynamic11get_ptrImplERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.076.0114, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.072.0113) ; 3 uses
  %.not28.i = icmp eq ptr %i.hh, null
  br i1 %.not28.i, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !106
  %.not.i.i.i46 = icmp eq i32 %i.hi, 0
  br i1 %.not.i.i.i46, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.hj = load ptr, ptr %i.fw, align 8, !tbaa !68
  %i.hk = load ptr, ptr %1, align 8, !tbaa !69    ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %bb.aq, label %_ZN5folly2io13QueueAppender5writeIaEENSt9enable_ifIXsr3std13is_arithmeticIT_EE5valueEvE4typeES4_m.exit45, !prof !70

bb.aq:                                            ; preds = %bb.ap
end_hunk_1
begin_hunk_2_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
  store ptr %i.a, ptr %0, align 8, !tbaa !80
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 15
  br i1 %i.d, label %bb.d, label %._crit_edge.i

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.f = add nuw i64 %i.c, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc11, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i, !prof !70

.noexc11:                                         ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i: ; preds = %bb.e
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #28 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !62
  store i64 %i.c, ptr %i.a, align 8, !tbaa !63
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i ], [ %i.a, %bb.c ] ; 3 uses
  switch i64 %i.c, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i
  %i.j = load i8, ptr %1, align 1, !tbaa !63
  store i8 %i.j, ptr %i.i, align 1, !tbaa !63
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.c, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.k, align 8, !tbaa !79
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c
  store i8 0, ptr %i.l, align 1, !tbaa !63
  ret void
}

declare void @_ZN5folly9TypeErrorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_7dynamic4TypeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9TypeErrorC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #24
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly9TypeErrorE, i64 16), ptr %0, align 8, !tbaa !84
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly9TypeErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #27
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #15

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #16

declare noundef i64 @_ZNK5folly7dynamic4sizeEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !74     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.e, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 40
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #24
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %.05.i.i) #24
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 80 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !2

_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74
  br label %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.f = phi ptr [ %.pr, %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.f, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #27
  br label %_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt4pairIN5folly7dynamicES2_ESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_ES3_EvT_S5_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN5folly7dynamic19const_item_iteratorEPSt4pairIS1_S1_EET0_T_S7_S6_(ptr %0, i64 %1, ptr %2, i64 %3, ptr noundef %4) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not20 = icmp eq ptr %0, %2
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit
  %.023 = phi ptr [ %i.ad, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %4, %bb.a ] ; 5 uses
  %.sroa.6.022 = phi i64 [ %.sroa.6.3, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %1, %bb.a ] ; 3 uses
  %.sroa.08.021 = phi ptr [ %.sroa.08.1, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.sroa.08.021, align 8, !tbaa !78 ; 2 uses
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(80) %.023, ptr noundef nonnull align 8 dereferenceable(80) %i.a)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  invoke void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %.023) #24
  br label %.body

_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit: ; preds = %.noexc
  %i.e = getelementptr inbounds i8, ptr %.sroa.08.021, i64 -16
  %.neg.i.i.i.i.i = mul i64 %.sroa.6.022, -8
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %.neg.i.i.i.i.i ; 2 uses
  %.not19.i5.i.i.i = icmp eq i64 %.sroa.6.022, 0
  br i1 %.not19.i5.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

.critedge.i.i.i.i.preheader:                      ; preds = %bb.c, %_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit
  br label %.critedge.i.i.i.i

bb.c:                                             ; preds = %thread-pre-split.i.i.i
  %.not19.i.i.i.i = icmp eq i64 %i.i, 0
  br i1 %.not19.i.i.i.i, label %.critedge.i.i.i.i.preheader, label %thread-pre-split.i.i.i

thread-pre-split.i.i.i:                           ; preds = %_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit, %bb.c
  %i.g = phi i64 [ %i.i, %bb.c ], [ %.sroa.6.022, %_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit ]
  %i.h = phi ptr [ %i.j, %bb.c ], [ %.sroa.08.021, %_ZSt10_ConstructISt4pairIN5folly7dynamicES2_EJRKS0_IKS2_S2_EEEvPT_DpOT0_.exit ]
  %i.i = add i64 %i.g, -1                         ; 4 uses
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !63
  %.not.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i, label %bb.c, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !70, !llvm.loop !0

.critedge.i.i.i.i:                                ; preds = %.critedge.i.i.i.i.preheader, %bb.d
  %.017.i.i.i.i = phi ptr [ %i.p, %bb.d ], [ %i.f, %.critedge.i.i.i.i.preheader ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.017.i.i.i.i, i64 14
  %i.n = load i8, ptr %i.m, align 1, !tbaa !63
  %i.o = and i8 %i.n, 15
  %.not2.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not2.i.i.i, label %bb.d, label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, !prof !55

bb.d:                                             ; preds = %.critedge.i.i.i.i
  %i.p = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -128 ; 3 uses
  %i.q = load <16 x i8>, ptr %i.p, align 16, !tbaa !63
  %i.r = icmp eq <16 x i8> %i.q, zeroinitializer
  %i.s = bitcast <16 x i1> %i.r to i16
  %i.t = and i16 %i.s, 16383                      ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.017.i.i.i.i, i64 -256
  tail call void @llvm.prefetch.p0(ptr nonnull %i.u, i32 0, i32 3, i32 1)
  %.not3.i.i.i = icmp eq i16 %i.t, 16383
  br i1 %.not3.i.i.i, label %.critedge.i.i.i.i, label %bb.e, !prof !70, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  %i.v = xor i16 %i.t, 16383
  %i.w = zext nneg i16 %i.v to i32
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = getelementptr i8, ptr %i.p, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  br label %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit

_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit: ; preds = %thread-pre-split.i.i.i, %.critedge.i.i.i.i, %bb.e
  %.sroa.08.1 = phi ptr [ null, %.critedge.i.i.i.i ], [ %i.ac, %bb.e ], [ %i.j, %thread-pre-split.i.i.i ] ; 2 uses
  %.sroa.6.3 = phi i64 [ 0, %.critedge.i.i.i.i ], [ %i.z, %bb.e ], [ %i.i, %thread-pre-split.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.023, i64 80 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.1, %2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !128

bb.f:                                             ; preds = %.lr.ph
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  br label %.body

.body:                                            ; preds = %bb.b, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.f ], [ %i.d, %bb.b ]
  %i.af = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.ag = tail call ptr @__cxa_begin_catch(ptr %i.af) #24 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_EEvT_S5_(ptr noundef %4, ptr noundef nonnull %.023)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.body
  invoke void @__cxa_rethrow() #26
          to label %bb.k unwind label %bb.h

._crit_edge:                                      ; preds = %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit, %bb.a
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.ad, %_ZN5folly6detail14IteratorFacadeINS_7dynamic19const_item_iteratorEKSt4pairIKS2_S2_ESt20forward_iterator_tagEppEv.exit ]
  ret ptr %.0.lcssa

bb.h:                                             ; preds = %bb.g, %.body
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.ah

bb.j:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #25
  unreachable

bb.k:                                             ; preds = %bb.g
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt4pairIN5folly7dynamicES2_EEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #17 comdat {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN5folly7dynamicES4_EEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.05.i = phi ptr [ %i.b, %.lr.ph.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.05.i, i64 40
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #24
  tail call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %.05.i) #24
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 80 ; 2 uses
  %.not.i = icmp eq ptr %i.b, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN5folly7dynamicES4_EEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !2

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt4pairIN5folly7dynamicES4_EEEvT_S7_.exit: ; preds = %.lr.ph.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_ZN5folly7dynamicC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 1280
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph21

bb.b:                                             ; preds = %.lr.ph21
  %i.g = icmp eq i64 %i.m, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph21, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge13.lcssa = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %storemerge13.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %.lr.ph.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.h, %.lr.ph.i.i ], [ %storemerge13.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -80 ; 4 uses
  call void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_(ptr %0, ptr nonnull %i.h, ptr nonnull %i.h, ptr noundef nonnull align 1 dereferenceable(1) %4)
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.i, %i.a
  %i.k = icmp sgt i64 %i.j, 80
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit, !llvm.loop !130

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit: ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %.loopexit

.lr.ph21:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1320 = phi ptr [ %i.q, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.01419 = phi i64 [ %i.m, %bb.b ], [ %2, %.lr.ph ]
  %i.l = phi i64 [ %i.s, %bb.b ], [ %i.c, %.lr.ph ]
  %i.m = add nsw i64 %.01419, -1                  ; 3 uses
  %i.n = udiv i64 %i.l, 160
  %i.o = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %storemerge1320, i64 -80
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_SD_T0_(ptr %0, ptr nonnull %i.e, ptr %i.o, ptr nonnull %i.p)
  %i.q = tail call ptr @_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEET_SD_SD_SD_T0_(ptr nonnull %i.e, ptr %storemerge1320, ptr %0) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_less_iterEEvT_SD_T0_T1_(ptr %i.q, ptr %storemerge1320, i64 noundef %i.m)
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.r, %i.a                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 1280
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !129

.loopexit:                                        ; preds = %.lr.ph21, %bb.a, %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.21", align 8     ; 8 uses
  %4 = alloca %"struct.std::pair.21", align 8     ; 5 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = sdiv exact i64 %i.c, 80                  ; 2 uses
  %i.e = icmp slt i64 %i.c, 160
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2
  %i.g = lshr i64 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.l, %bb.d ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.j = getelementptr inbounds [80 x i8], ptr %0, i64 %.08 ; 2 uses
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %i.j) #24
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.k) #24
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef nonnull align 8 dereferenceable(80) %3) #24
  call void @_ZN5folly7dynamicC1EOS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h) #24
  invoke void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_less_iterEEvT_T0_SE_T1_T2_(ptr nonnull %0, i64 noundef %.08, i64 noundef %i.d, ptr noundef nonnull align 8 %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #24
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #24
  %.not = icmp eq i64 %.08, 0
  %i.l = add nsw i64 %.08, -1
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #24
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !131

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #24
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %4) #24
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(40) %i.h) #24
  call void @_ZN5folly7dynamic7destroyEv(ptr noundef nonnull align 8 dereferenceable(80) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %i.m

.loopexit:                                        ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIN5folly7dynamicES4_ESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_less_iterEEvT_SD_SD_RT0_(ptr %0, ptr %1, ptr %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #17 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::pair.21", align 8     ; 8 uses
end_hunk_2
