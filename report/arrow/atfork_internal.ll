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
  %.sroa.036.066.i.i.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 14 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.066.i.i.i.i.i.i) ]
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
  %.sroa.036.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ak, %._crit_edge.loopexit.i.i.i.i.i.i ], [ %i.m, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ] ; 7 uses
  %i.an = ashr exact i64 %.pre-phi76.i.i.i.i.i.i, 4
  switch i64 %i.an, label %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i [
    i64 3, label %bb.k
    i64 2, label %bb.m
    i64 1, label %bb.o
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.0.lcssa.i.i.i.i.i.i) ]
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
  %.sroa.036.1.i.i.i.i.i.i = phi ptr [ %i.as, %bb.l ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.1.i.i.i.i.i.i) ]
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
  %.sroa.036.2.i.i.i.i.i.i = phi ptr [ %i.ax, %bb.n ], [ %.sroa.036.0.lcssa.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.036.2.i.i.i.i.i.i) ]
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
  %.sroa.013.027.i.i.i.i = phi ptr [ %.sroa.013.1.i.i.i.i, %_ZN9__gnu_cxx5__ops10_Iter_predIZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKSt8weak_ptrINS3_13AtForkHandlerEEE_EclINS_17__normal_iteratorIPS8_St6vectorIS8_SaIS8_EEEEEEbT_.exit.thread.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ] ; 6 uses
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
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.013.027.i.i.i.i) ]
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
  %i.cc = phi ptr [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %i.o, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ], [ %.pre.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i ]
  %.sroa.013.2.i.i.i.i = phi ptr [ %i.o, %._crit_edge.i.i.i.i.i.i ], [ %.sroa.08.0.in.sroa.speculated.i.i.i.i.i.i, %_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEENS0_5__ops10_Iter_predIZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_EEET_SK_SK_T0_.exit.i.i.i.i ], [ %.sroa.013.1.i.i.i.i, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.loopexit.i.i ]
  %i.cd = invoke ptr @_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS4_S6_EESB_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %.sroa.013.2.i.i.i.i, ptr %i.cc)
          to label %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i unwind label %bb.w ; 0 uses

_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i: ; preds = %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i
  %i.ce = load ptr, ptr %i.n, align 8, !tbaa !29  ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31
  %.not.i.i2.i = icmp eq ptr %i.ce, %i.cg
  br i1 %.not.i.i2.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i
  %i.ch = load <2 x ptr>, ptr %1, align 16, !tbaa !15
  store <2 x ptr> %i.ch, ptr %i.ce, align 8, !tbaa !15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store ptr %i.ci, ptr %i.n, align 8, !tbaa !29
  br label %bb.x

bb.v:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEv.exit.i
  invoke void @_ZNSt6vectorISt8weak_ptrIN5arrow8internal13AtForkHandlerEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZSt9remove_ifIN9__gnu_cxx17__normal_iteratorIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEESt6vectorIS6_SaIS6_EEEEZNS4_12_GLOBAL__N_111AtForkState24MaintainHandlersUnlockedEvEUlRKS6_E_ET_SH_SH_T0_.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18 ; 0 uses
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !12
  br label %.body

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.cl = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18 ; 0 uses
  %i.cm = load ptr, ptr %i.g, align 8, !tbaa !12  ; 4 uses
  %.not.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i, label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 3 uses
  %i.co = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i1 = icmp eq i8 %i.co, 0
  br i1 %.not.i.i.i1, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cp = load i32, ptr %i.cn, align 4, !tbaa !3  ; 2 uses
  %i.cq = add nsw i32 %i.cp, -1
  store i32 %i.cq, ptr %i.cn, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cr = atomicrmw volatile add ptr %i.cn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.cp, %bb.z ], [ %i.cr, %bb.aa ]
  %i.cs = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.cs, label %bb.ab, label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  %i.ct = load ptr, ptr %i.cm, align 8, !tbaa !25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  call void %i.cv(ptr noundef nonnull align 8 dereferenceable(16) %i.cm) #18, !inline_history !32
  br label %_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt10__weak_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  ret void

bb.ac:                                            ; preds = %bb.f
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.w, %bb.ac
  %i.cx = phi ptr [ %i.i, %bb.ac ], [ %.pre, %bb.w ] ; 4 uses
  %eh.lpad-body = phi { ptr, i32 } [ %i.cw, %bb.ac ], [ %i.cj, %bb.w ] ; 3 uses
  %.not.i.i2 = icmp eq ptr %i.cx, null
  br i1 %.not.i.i2, label %common.resume, label %bb.ad

bb.ad:                                            ; preds = %.body
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12 ; 3 uses
  %i.cz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i3 = icmp eq i8 %i.cz, 0
  br i1 %.not.i.i.i3, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !3  ; 2 uses
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr %i.cy, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

bb.af:                                            ; preds = %bb.ad
  %i.dc = atomicrmw volatile add ptr %i.cy, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4: ; preds = %bb.af, %bb.ae
  %.0.i.i.i.i5 = phi i32 [ %i.da, %bb.ae ], [ %i.dc, %bb.af ]
  %i.dd = icmp eq i32 %.0.i.i.i.i5, 1
  br i1 %i.dd, label %bb.ag, label %common.resume

bb.ag:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i4
  %i.de = load ptr, ptr %i.cx, align 8, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(16) %i.cx) #18, !inline_history !32
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
end_hunk_0
begin_hunk_1_@_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev:bb.a

_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt8weak_ptrIN5arrow8internal13AtForkHandlerEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !51
  br label %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.s = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal12_GLOBAL__N_111AtForkStateEEclEPS3_.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exit.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.s to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.x) #21
  br label %_ZNKSt14default_deleteIN5arrow8internal12_GLOBAL__N_111AtForkStateEEclEPS3_.exit

_ZNKSt14default_deleteIN5arrow8internal12_GLOBAL__N_111AtForkStateEEclEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt8weak_ptrIN5arrow8internal13AtForkHandlerEES4_EvT_S6_RSaIT0_E.exit.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #21
  br label %bb.h

bb.h:                                             ; preds = %_ZNKSt14default_deleteIN5arrow8internal12_GLOBAL__N_111AtForkStateEEclEPS3_.exit, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_atfork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal16IOErrorFromErrnoIJRA36_KcEEENS_6StatusEiDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i32 noundef %1, ptr noundef nonnull align 1 dereferenceable(36) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.17", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN5arrow8internal21StatusDetailFromErrnoEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.17") align 8 %3, i32 noundef %1), !noalias !54
  invoke void @_ZN5arrow6Status17FromDetailAndArgsIJRA36_KcEEES0_NS_10StatusCodeESt10shared_ptrINS_12StatusDetailEEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(36) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57, !noalias !54 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !61
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !61
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !54
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.f ], [ %i.p, %bb.g ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.h, label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit, !prof !62

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit

bb.i:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  resume { ptr, i32 } %i.r

_ZN5arrow8internal15StatusFromErrnoIJRA36_KcEEENS_6StatusEiNS_10StatusCodeEDpOT_.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: noreturn
declare void @_ZNK5arrow6Status5AbortEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #18 ; 0 uses
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress uwtable
define internal void @"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENUlvE_8__invokeEv"() #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %1 = alloca %"union.std::any::_Arg", align 8    ; 4 uses
  %2 = alloca %"class.std::shared_ptr", align 8   ; 9 uses
  %3 = alloca %"class.std::any", align 8          ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEv"()
          to label %bb.d unwind label %bb.e, !inline_history !63

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt10unique_ptrIN5arrow8internal12_GLOBAL__N_111AtForkStateESt14default_deleteIS3_EED2Ev, ptr nonnull @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, ptr nonnull @__dso_handle) #18, !inline_history !63 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  br label %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i

common.resume.i:                                  ; preds = %bb.z, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %lpad.phi.i.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state) #18, !inline_history !63
  br label %common.resume.i

_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load ptr, ptr @_ZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvE5state, align 8, !tbaa !9 ; 8 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(88) %i.f) #18, !inline_history !64 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %_ZNSt5mutex4lockEv.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #19, !inline_history !64
  unreachable

_ZNSt5mutex4lockEv.exit.i.i:                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEv.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt5mutex4lockEv.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %_ZNSt5mutex4lockEv.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.val10.i.i = load ptr, ptr %i.q, align 8, !tbaa !65 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !65 ; 2 uses
  %i.s = icmp eq ptr %.val10.i.i, %.val.i.i
  br i1 %i.s, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE_clEv.exit", label %.lr.ph35.i.i

bb.g:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, %.lr.ph.i.i
  %.sroa.026.032.i.i = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.cx, %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.032.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.experimental.noalias.scope.decl(metadata !67)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !12, !noalias !67 ; 3 uses
  store ptr %i.u, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  %.not.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.w = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.06.i.i.i.i.i.i.i = phi i32 [ %i.w, %bb.h ], [ %i.aa, %bb.j ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.06.i.i.i.i.i.i.i, 1
  %i.y = cmpxchg weak ptr %i.v, i32 %.06.i.i.i.i.i.i.i, i32 %i.x acq_rel monotonic, align 8, !noalias !67 ; 2 uses
  %i.z = extractvalue { i32, i1 } %i.y, 1
  %i.aa = extractvalue { i32, i1 } %i.y, 0
  br i1 %i.z, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, label %bb.i, !llvm.loop !70

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i: ; preds = %bb.i
  store ptr null, ptr %i.m, align 8, !tbaa !57, !alias.scope !67
  br label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i: ; preds = %bb.j
  %i.ab = load atomic i32, ptr %i.v monotonic, align 8, !noalias !67
  %.fr.i.i.i.i.i = freeze i32 %i.ab
  %.not.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i, 0
  %i.ac = load ptr, ptr %.sroa.026.032.i.i, align 8, !noalias !67 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i, label %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i.i.i, %bb.g
  store ptr null, ptr %2, align 8, !tbaa !71, !alias.scope !67
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i
  store ptr %i.ac, ptr %2, align 8, !tbaa !71, !alias.scope !67
  %.not.i1.i = icmp eq ptr %i.ac, null
  br i1 %.not.i1.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i
  %i.ad = load ptr, ptr %i.o, align 8, !tbaa !73  ; 7 uses
  %i.ae = load ptr, ptr %i.p, align 8, !tbaa !75
  %.not.i14.i.i = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i14.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !57
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !73
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.aj, ptr %i.o, align 8, !tbaa !73
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %.val26.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !76 ; 5 uses
  %i.ak = ptrtoint ptr %i.ad to i64
  %i.al = ptrtoint ptr %.val26.i.i.i.i to i64     ; 2 uses
  %i.am = sub i64 %i.ak, %i.al                    ; 3 uses
  %i.an = icmp eq i64 %i.am, 9223372036854775776
  br i1 %i.an, label %bb.n, label %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #19
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i.i, !inline_history !64

.noexc.i.i:                                       ; preds = %bb.n
  unreachable

_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.m
  %i.ao = ashr exact i64 %i.am, 5                 ; 3 uses
  %i.ap = icmp eq ptr %i.ad, %.val26.i.i.i.i      ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.ap, i64 1, i64 %i.ao
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.ao ; 2 uses
  %i.ar = icmp ult i64 %i.aq, %i.ao
  %i.as = call i64 @llvm.umin.i64(i64 %i.aq, i64 288230376151711743)
  %i.at = select i1 %i.ar, i64 288230376151711743, i64 %i.as ; 3 uses
  %.not.i.i.i15.i.i.a = icmp ne i64 %i.at, 0
  call void @llvm.assume(i1 %.not.i.i.i15.i.i.a)
  %i.au = shl nuw nsw i64 %i.at, 5
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #20
          to label %.noexc16.i.i unwind label %.loopexit.i.i, !inline_history !64 ; 5 uses

.noexc16.i.i:                                     ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.am ; 3 uses
  %i.ax = load ptr, ptr %i.m, align 8, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %i.ac, ptr %i.aw, align 8, !tbaa !71
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !57
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  br i1 %i.ap, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc16.i.i, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cb, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.av, %.noexc16.i.i ] ; 4 uses
  %.094.i.i.i.i = phi ptr [ %i.ca, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %.val26.i.i.i.i, %.noexc16.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.ba = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 8 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %.094.i.i.i.i, align 8, !tbaa !15, !alias.scope !80, !noalias !77
  store ptr null, ptr %i.ba, align 8, !tbaa !57, !alias.scope !80, !noalias !77
  store <2 x ptr> %i.bb, ptr %.05.i.i.i.i, align 8, !tbaa !15, !alias.scope !77, !noalias !80
  store ptr null, ptr %.094.i.i.i.i, align 8, !tbaa !71, !alias.scope !80, !noalias !77
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24
  store ptr null, ptr %i.be, align 8, !tbaa !24, !alias.scope !77, !noalias !80
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !82, !alias.scope !80, !noalias !77 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i, label %bb.o

_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr null, ptr %i.bc, align 8, !tbaa !82, !alias.scope !77, !noalias !80
  br label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18, !noalias !84
  store ptr %i.bc, ptr %0, align 8, !tbaa !24, !noalias !84
  invoke void %i.bf(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %0)
          to label %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i unwind label %bb.p, !inline_history !64

bb.p:                                             ; preds = %bb.o
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #22, !inline_history !64
  unreachable

_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18, !noalias !84
  %.pr.i.i.i.i.i = load ptr, ptr %i.bd, align 8, !tbaa !82, !alias.scope !80, !noalias !77 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i
  invoke void %.pr.i.i.i.i.i(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i unwind label %bb.r, !inline_history !64

bb.r:                                             ; preds = %bb.q
  %i.bi = landingpad { ptr, i32 }
          catch ptr null
  %i.bj = extractvalue { ptr, i32 } %i.bi, 0
  call void @__clang_call_terminate(ptr %i.bj) #22, !inline_history !64
  unreachable

_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i:                 ; preds = %bb.q, %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.i.i.i.i.i, %_ZSt12construct_atIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerEJS4_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS6_DpOS7_.exit.thread.i.i.i.i.i
  %i.bk = load ptr, ptr %i.ba, align 8, !tbaa !57, !alias.scope !80, !noalias !77 ; 8 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bm = load atomic i64, ptr %i.bl acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bl, align 8, !tbaa !58
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !60
  %i.bq = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18, !inline_history !85
  %i.bt = load ptr, ptr %i.bk, align 8, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18, !inline_history !85
  br label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24, !noalias !84
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.by = atomicrmw volatile add ptr %i.bl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.bo, %bb.v ], [ %i.by, %bb.w ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.x, label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, !prof !62

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bk) #18, !inline_history !64
  br label %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i, %bb.t, %_ZNSt3anyD2Ev.exit.i.i.i.i.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.094.i.i.i.i, i64 32 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ca, %i.ad
  br i1 %.not.i.i.i2.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !86

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i: ; preds = %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i, %.noexc16.i.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.av, %.noexc16.i.i ], [ %i.cb, %_ZSt19__relocate_object_aIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerES4_SaIS4_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 32
  %.not.i30.i.i.i.i = icmp eq ptr %.val26.i.i.i.i, null
  br i1 %.not.i30.i.i.i.i, label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  %i.cd = load ptr, ptr %i.p, align 8, !tbaa !75
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = sub i64 %i.ce, %i.al
  call void @_ZdlPvm(ptr noundef nonnull %.val26.i.i.i.i, i64 noundef %i.cf) #21, !inline_history !64
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit.i
  store ptr %i.av, ptr %i.n, align 8, !tbaa !76
  store ptr %i.cc, ptr %i.o, align 8, !tbaa !73
  %i.cg = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.at
  store ptr %i.cg, ptr %i.p, align 8, !tbaa !75
  br label %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp.i.i:                           ; preds = %bb.n
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #18, !inline_history !64
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %common.resume.i

_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i: ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE17_M_realloc_insertIJSt10shared_ptrINS1_13AtForkHandlerEEEEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.l, %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.i.i, %_ZNKSt8weak_ptrIN5arrow8internal13AtForkHandlerEE4lockEv.exit.thread.i.i
  %i.ch = load ptr, ptr %i.m, align 8, !tbaa !57  ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 4 uses
  %i.cj = load atomic i64, ptr %i.ci acquire, align 8 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 4294967297
  %i.cl = trunc i64 %i.cj to i32                  ; 2 uses
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ci, align 8, !tbaa !58
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 12
  store i32 0, ptr %i.cm, align 4, !tbaa !60
  %i.cn = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !87
  %i.cq = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  call void %i.cs(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !87
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ct = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i17.i.i = icmp eq i8 %i.ct, 0
  br i1 %.not.i.i.i17.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add nsw i32 %i.cl, -1
  store i32 %i.cu, ptr %i.ci, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.cv = atomicrmw volatile add ptr %i.ci, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i = phi i32 [ %i.cl, %bb.ad ], [ %i.cv, %bb.ae ]
  %i.cw = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.cw, label %bb.af, label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, !prof !62

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch) #18, !inline_history !64
  br label %_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i

_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i: ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ab, %_ZNSt6vectorIN5arrow8internal12_GLOBAL__N_111AtForkState14RunningHandlerESaIS4_EE12emplace_backIJSt10shared_ptrINS1_13AtForkHandlerEEEEERS4_DpOT_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.026.032.i.i, i64 16 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.k
  br i1 %i.cy, label %._crit_edge.i.i, label %bb.g

.lr.ph35.i.i:                                     ; preds = %._crit_edge.i.i, %bb.as
  %.sroa.024.033.i.i = phi ptr [ %i.ds, %bb.as ], [ %.val10.i.i, %._crit_edge.i.i ] ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.024.033.i.i) ]
  %i.cz = load ptr, ptr %.sroa.024.033.i.i, align 8, !tbaa !71 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !88
  %.not.i.i18.not.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i18.not.i.i, label %bb.as, label %_ZNKSt8functionIFSt3anyvEEclEv.exit.i.i

_ZNKSt8functionIFSt3anyvEEclEv.exit.i.i:          ; preds = %.lr.ph35.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !90, !noalias !92
  call void %i.dd(ptr dead_on_unwind nonnull writable sret(%"class.std::any") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %i.cz), !inline_history !95
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 16 ; 8 uses
  %i.df = load ptr, ptr %3, align 8, !tbaa !82    ; 3 uses
  %.not8.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not8.i.i.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %_ZNKSt8functionIFSt3anyvEEclEv.exit.i.i
  %i.dg = load ptr, ptr %i.de, align 8, !tbaa !82 ; 2 uses
  %.not.i.i21.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i.i21.i.i, label %_ZNSt3anyD2Ev.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void %i.dg(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef null)
          to label %bb.ai unwind label %bb.aj, !inline_history !64

bb.ai:                                            ; preds = %bb.ah
  store ptr null, ptr %i.de, align 8, !tbaa !82
  br label %_ZNSt3anyaSEOS_.exit.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #22, !inline_history !64
  unreachable

bb.ak:                                            ; preds = %_ZNKSt8functionIFSt3anyvEEclEv.exit.i.i
  %.not.i20.i.i = icmp eq ptr %i.de, %3
  br i1 %.not.i20.i.i, label %_ZNSt3anyaSEOS_.exit.thread30.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dj = load ptr, ptr %i.de, align 8, !tbaa !82 ; 2 uses
  %.not.i6.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i6.i.i.i, label %_ZNSt3any5resetEv.exit7.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  invoke void %i.dj(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef null)
          to label %bb.an unwind label %bb.ao, !inline_history !64

bb.an:                                            ; preds = %bb.am
  store ptr null, ptr %i.de, align 8, !tbaa !82
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !82
  br label %_ZNSt3any5resetEv.exit7.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #22, !inline_history !64
  unreachable

_ZNSt3any5resetEv.exit7.i.i.i:                    ; preds = %bb.an, %bb.al
  %i.dm = phi ptr [ %i.df, %bb.al ], [ %.pre.i.i.i, %bb.an ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  store ptr %i.de, ptr %1, align 8, !tbaa !24
  invoke void %i.dm(i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %1)
          to label %bb.ap unwind label %bb.aq, !inline_history !64

bb.ap:                                            ; preds = %_ZNSt3any5resetEv.exit7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %_ZNSt3anyaSEOS_.exit.i.i

bb.aq:                                            ; preds = %_ZNSt3any5resetEv.exit7.i.i.i
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  %i.do = extractvalue { ptr, i32 } %i.dn, 0
  call void @__clang_call_terminate(ptr %i.do) #22, !inline_history !64
  unreachable

_ZNSt3anyaSEOS_.exit.i.i:                         ; preds = %bb.ap, %bb.ai
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !82 ; 2 uses
  %.not.i.i22.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i22.i.i, label %_ZNSt3anyD2Ev.exit.i.i, label %_ZNSt3anyaSEOS_.exit.thread30.i.i

_ZNSt3anyaSEOS_.exit.thread30.i.i:                ; preds = %_ZNSt3anyaSEOS_.exit.i.i, %bb.ak
  %i.dp = phi ptr [ %.pr.i.i, %_ZNSt3anyaSEOS_.exit.i.i ], [ %i.df, %bb.ak ]
  invoke void %i.dp(i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef null)
          to label %_ZNSt3anyD2Ev.exit.i.i unwind label %bb.ar, !inline_history !64

bb.ar:                                            ; preds = %_ZNSt3anyaSEOS_.exit.thread30.i.i
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #22, !inline_history !64
  unreachable

_ZNSt3anyD2Ev.exit.i.i:                           ; preds = %_ZNSt3anyaSEOS_.exit.thread30.i.i, %_ZNSt3anyaSEOS_.exit.i.i, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.as

bb.as:                                            ; preds = %_ZNSt3anyD2Ev.exit.i.i, %.lr.ph35.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.024.033.i.i, i64 32 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %.val.i.i
  br i1 %i.dt, label %"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE_clEv.exit", label %.lr.ph35.i.i

"_ZZZN5arrow8internal12_GLOBAL__N_114GetAtForkStateEvENK3$_0clEvENKUlvE_clEv.exit": ; preds = %bb.as, %._crit_edge.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8internal13AtForkHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !58
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !60
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !96
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18, !inline_history !96
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !62

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #18
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #18, !inline_history !97
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !3    ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
end_hunk_1
