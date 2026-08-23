Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/atfork_internal?download=true
inline.NumInlined: 405
inline.NumDeleted: 234
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.6" }
%"struct.std::_Head_base.6" = type { ptr }
%"class.std::weak_ptr" = type { %"class.std::__weak_ptr" }
%"class.std::__weak_ptr" = type { ptr, %"class.std::__weak_count" }
%"class.std::__weak_count" = type { ptr }
%"class.arrow::Status" = type { ptr }
%"class.std::shared_ptr.17" = type { %"class.std::__shared_ptr.18" }
%"class.std::__shared_ptr.18" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"union.std::any::_Arg" = type { ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::any" = type { ptr, %"union.std::any::_Storage" }
%"union.std::any::_Storage" = type { ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler, std::allocator<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler>>::_Vector_impl" }
%"struct.std::_Vector_base<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler, std::allocator<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler>>::_Vector_impl" = type { %"struct.std::_Vector_base<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler, std::allocator<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler>>::_Vector_impl_data" }
%"struct.std::_Vector_base<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler, std::allocator<arrow::internal::(anonymous namespace)::AtForkState::RunningHandler>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.23", ptr }
%"class.std::unique_ptr.23" = type { %"struct.std::__uniq_ptr_data.24" }
%"struct.std::__uniq_ptr_data.24" = type { %"class.std::__uniq_ptr_impl.25" }
%"class.std::__uniq_ptr_impl.25" = type { %"class.std::tuple.26" }
%"class.std::tuple.26" = type { %"struct.std::_Tuple_impl.27" }
%"struct.std::_Tuple_impl.27" = type { %"struct.std::_Head_base.30" }
%"struct.std::_Head_base.30" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$_ZN5arrow8internal16IOErrorFromErrnoIJRA36_KcEEENS_6StatusEiDpOT_ = comdat any

$__clang_call_terminate = comdat any

$_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

$_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_ = comdat any

$_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev = comdat any

$_ZN5arrow6Status11DeleteStateEv = comdat any

$_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_ = comdat any

$_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_ = comdat any

@_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state = internal global %"class.std::unique_ptr" zeroinitializer, align 8
@_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [36 x i8] c"Error when calling pthread_atfork: \00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal14RegisterAtForkESt8weak_ptrINS0_13AtForkHandlerEE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::weak_ptr", align 16    ; 5 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !8
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEv"()
          to label %bb.d unwind label %bb.e, !inline_history !8

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev, ptr nonnull @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, ptr nonnull @__dso_handle) #18, !inline_history !8 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !8
  br label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit

common.resume:                                    ; preds = %bb.ag, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4, %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4 ], [ %eh.lpad-body, %bb.ag ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !8
  br label %common.resume

_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.f = load ptr, ptr @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, align 8, !tbaa !9 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !15
  store <2 x ptr> %i.j, ptr %1, align 16, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.k) #19
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.f
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !16   ; 8 uses
  %i.p = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr i64 %i.r, 6                         ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, %bb.j
  %.067.i.i.i.i.i.i = phi i64 [ %i.al, %bb.j ], [ %i.s, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 2 uses
  %.sroa.036.066.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 13 uses
  %i.u = getelementptr i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.u, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i, i64 8
  %i.w = load atomic i32, ptr %i.v monotonic, align 8
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i.i
  %i.y = getelementptr i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 24
  %.val.i16.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i17.i.i.i.i.i.i = icmp eq ptr %.val.i16.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i17.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit54.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit18.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit18.i.i.i.i.i.i: ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i16.i.i.i.i.i.i, i64 8
  %i.aa = load atomic i32, ptr %i.z monotonic, align 8
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit46.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit18.i.i.i.i.i.i
  %i.ac = getelementptr i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 40
  %.val.i19.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i20.i.i.i.i.i.i = icmp eq ptr %.val.i19.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i20.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit56.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.i.i.i.i.i.i: ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i19.i.i.i.i.i.i, i64 8
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit48.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.i.i.i.i.i.i
  %i.ag = getelementptr i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 56
  %.val.i22.i.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i23.i.i.i.i.i.i = icmp eq ptr %.val.i22.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i23.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit58.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit24.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit24.i.i.i.i.i.i: ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.i22.i.i.i.i.i.i, i64 8
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit50.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit24.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 64 ; 3 uses
  %i.al = add nsw i64 %.067.i.i.i.i.i.i, -1
  %i.am = icmp sgt i64 %.067.i.i.i.i.i.i, 1
  br i1 %i.am, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.loopexit.i.i.i.i.i.i, !llvm.loop !18

._crit_edge.loopexit.i.i.i.i.i.i:                 ; preds = %bb.j
  %.pre.i.i.i.i.i.i = ptrtoint ptr %i.ak to i64
  %.pre75.i.i.i.i.i.i = sub i64 %i.p, %.pre.i.i.i.i.i.i
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.loopexit.i.i.i.i.i.i, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %.pre-phi76.i.i.i.i.i.i = phi i64 [ %.pre75.i.i.i.i.i.i, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.r, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ]
  %.sroa.036.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 6 uses
  %i.an = ashr exact i64 %.pre-phi76.i.i.i.i.i.i, 4
  switch i64 %i.an, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ao = getelementptr i8, ptr %.sroa.036.0.lcssa.i.i.i.i.i.i, i64 8
  %.val.i25.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i26.i.i.i.i.i.i = icmp eq ptr %.val.i25.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i26.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.i.i.i.i.i.i: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i25.i.i.i.i.i.i, i64 8
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 8
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.i.i.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.036.0.lcssa.i.i.i.i.i.i, i64 16
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i.i.i
  %.sroa.036.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.l ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  %i.at = getelementptr i8, ptr %.sroa.036.1.i.i.i.i.i.i, i64 8
  %.val.i28.i.i.i.i.i.i = load ptr, ptr %i.at, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i29.i.i.i.i.i.i = icmp eq ptr %.val.i28.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i29.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.i.i.i.i.i.i: ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i28.i.i.i.i.i.i, i64 8
  %i.av = load atomic i32, ptr %i.au monotonic, align 8
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.036.1.i.i.i.i.i.i, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i.i.i
  %.sroa.036.2.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.n ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.ay = getelementptr i8, ptr %.sroa.036.2.i.i.i.i.i.i, i64 8
  %.val.i31.i.i.i.i.i.i = load ptr, ptr %i.ay, align 8, !tbaa !12 ; 2 uses
  %.not.i.i.i.i32.i.i.i.i.i.i = icmp eq ptr %.val.i31.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i32.i.i.i.i.i.i, label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit33.i.i.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit33.i.i.i.i.i.i: ; preds = %bb.o
  %i.az = getelementptr inbounds nuw i8, ptr %.val.i31.i.i.i.i.i.i, i64 8
  %i.ba = load atomic i32, ptr %i.az monotonic, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  %spec.select.i.i.i.i.i.i = select i1 %i.bb, ptr %.sroa.036.2.i.i.i.i.i.i, ptr %i.o
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit46.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit18.i.i.i.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit48.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit21.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 32
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit50.i.i.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit24.i.i.i.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit54.i.i.i.i.i.i: ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 16
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit56.i.i.i.i.i.i: ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 32
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit58.i.i.i.i.i.i: ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.036.066.i.i.i.i.i.i, i64 48
  br label %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i

_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit58.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit56.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit54.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit50.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit48.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit46.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit33.i.i.i.i.i.i, %bb.o, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.i.i.i.i.i.i, %bb.m, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.i.i.i.i.i.i, %bb.k
  %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i = phi ptr [ %.sroa.036.1.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit30.i.i.i.i.i.i ], [ %.sroa.036.2.i.i.i.i.i.i, %bb.o ], [ %i.bc, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit46.i.i.i.i.i.i ], [ %.sroa.036.1.i.i.i.i.i.i, %bb.m ], [ %spec.select.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit33.i.i.i.i.i.i ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %bb.k ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit27.i.i.i.i.i.i ], [ %i.bg, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit56.i.i.i.i.i.i ], [ %i.bf, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit54.i.i.i.i.i.i ], [ %i.bh, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit58.i.i.i.i.i.i ], [ %i.be, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit50.i.i.i.i.i.i ], [ %i.bd, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.loopexit.split.loop.exit48.i.i.i.i.i.i ], [ %.sroa.036.066.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.036.066.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i.i.i ] ; 5 uses
  %i.bi = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %i.o
  %.sroa.07.025.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %.sroa.07.025.i.i.i.i, %i.o
  %or.cond.i.i.i.i = select i1 %i.bi, i1 true, i1 %i.bj
  br i1 %or.cond.i.i.i.i, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i
  %.sroa.07.028.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.07.025.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ] ; 4 uses
  %.sroa.013.027.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ] ; 5 uses
  %.sroa.08.0.in.sroa.speculated.i.i.pn26.i.i.i.i = phi ptr [ %.sroa.07.028.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ]
  %i.bk = getelementptr i8, ptr %.sroa.08.0.in.sroa.speculated.i.i.pn26.i.i.i.i, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !tbaa !12 ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 8
  %i.bm = load atomic i32, ptr %i.bl monotonic, align 8
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i
  %i.bo = load ptr, ptr %.sroa.07.028.i.i.i.i, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.07.028.i.i.i.i, i8 0, i64 16, i1 false)
  store ptr %i.bo, ptr %.sroa.013.027.i.i.i.i, align 8, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i.i, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !12 ; 4 uses
  store ptr %.val.i.i.i.i.i, ptr %i.bp, align 8, !tbaa !12
  %.not.i.i.i.i5.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i5.i.i.i.i, label %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12 ; 3 uses
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = load i32, ptr %i.br, align 4, !tbaa !3  ; 2 uses
  %i.bu = add nsw i32 %i.bt, -1
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.q
  %i.bv = atomicrmw volatile add ptr %i.br, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bt, %bb.r ], [ %i.bv, %bb.s ]
  %i.bw = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bw, label %bb.t, label %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i
  %i.bx = load ptr, ptr %i.bq, align 8, !tbaa !25
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(16) %i.bq) #18, !inline_history !27
  br label %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i

_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i: ; preds = %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.013.027.i.i.i.i, i64 16
  br label %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i

_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i: ; preds = %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.013.1.i.i.i.i = phi ptr [ %.sroa.013.027.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.i.i.i.i ], [ %i.ca, %_ZNSt8weak_ptrIN5arrow8internal13AtForkHandlerEEaSEOS3_.exit.i.i.i.i ], [ %.sroa.013.027.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %.sroa.07.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.07.028.i.i.i.i, i64 16 ; 2 uses
  %i.cb = icmp eq ptr %.sroa.07.0.i.i.i.i, %i.o
  br i1 %i.cb, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !28

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i: ; preds = %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !16
  br label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i

_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i, %._crit_edge.i.i.i.i.i.i
  %2 = phi ptr [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %i.o, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ], [ %.pre.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i ]
  %.sroa.013.2.i.i.i.i = phi ptr [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ], [ %.sroa.013.1.i.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i ]
  %i.cc = invoke ptr @_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %.sroa.013.2.i.i.i.i, ptr %2)
          to label %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i unwind label %bb.w ; 0 uses

_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i
  %i.cd = load ptr, ptr %i.n, align 8, !tbaa !29  ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !31
  %.not.i.i2.i = icmp eq ptr %i.cd, %i.cf
  br i1 %.not.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i
  %i.cg = load <2 x ptr>, ptr %1, align 16, !tbaa !15
  store <2 x ptr> %i.cg, ptr %i.cd, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %i.ch, ptr %i.n, align 8, !tbaa !29
  br label %bb.x

bb.v:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i
  invoke void @_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  %i.cj = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !12
  br label %.body

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ck = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18 ; 0 uses
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !12  ; 4 uses
  %.not.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 12 ; 3 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1 = icmp eq i8 %i.cn, 0
  br i1 %.not.i.i.i1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !3  ; 2 uses
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.cm, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cq = atomicrmw volatile add ptr %i.cm, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.co, %bb.z ], [ %i.cq, %bb.aa ]
  %i.cr = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cr, label %bb.ab, label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !25
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(16) %i.cl) #18, !inline_history !32
  br label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  ret void

bb.ac:                                            ; preds = %bb.f
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.ac
  %i.cw = phi ptr [ %i.i, %bb.ac ], [ %.pre, %bb.w ] ; 4 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.ac ], [ %i.ci, %bb.w ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.cw, null
  br i1 %.not.i.i2, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %.body
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12 ; 3 uses
  %i.cy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i3 = icmp eq i8 %i.cy, 0
  br i1 %.not.i.i.i3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.cx, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.af:                                            ; preds = %bb.ad
  %i.db = atomicrmw volatile add ptr %i.cx, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i5 = phi i32 [ %i.cz, %bb.ae ], [ %i.db, %bb.af ]
  %i.dc = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.dc, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !25
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %i.df = load ptr, ptr %i.de, align 8
  call void %i.df(ptr noundef nonnull align 8 dereferenceable(16) %i.cw) #18, !inline_history !32
  br label %common.resume
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEv"() unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #20 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, i8 0, i64 88, i1 false)
  store ptr %i.a, ptr @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, align 8, !tbaa !9
  %i.b = tail call i32 @pthread_atfork(ptr noundef nonnull @"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv", ptr noundef nonnull @"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE0_8__invokeEv", ptr noundef nonnull @"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE1_8__invokeEv") #18 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  invoke void @_ZN5arrow8internal16IOErrorFromErrnoIJRA36_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %i.b, ptr noundef nonnull align 1 dereferenceable(36) @.str)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #19
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow6StatusD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !33     ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.g, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !37, !range !49, !noundef !50
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN5arrow6StatusD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.d, %bb.f ], [ %i.d, %bb.g ], [ %i.d, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  call void @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18
  resume { ptr, i32 } %.pn

bb.i:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9      ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call fastcc void @_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EED2Ev(ptr noundef nonnull readonly align 8 dereferenceable(24) %i.b) #18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !51   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29   ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.r, %_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 0
end_hunk_0
