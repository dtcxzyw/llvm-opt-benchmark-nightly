inline.NumInlined: 231
inline.NumDeleted: 132
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.arrow::Status" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%struct.timespec = type { i64, i64 }
%"class.arrow::internal::StringStreamWrapper" = type { %"class.std::unique_ptr.2", ptr }
%"class.std::unique_ptr.2" = type { %"struct.std::__uniq_ptr_data.3" }
%"struct.std::__uniq_ptr_data.3" = type { %"class.std::__uniq_ptr_impl.4" }
%"class.std::__uniq_ptr_impl.4" = type { %"class.std::tuple.5" }
%"class.std::tuple.5" = type { %"struct.std::_Tuple_impl.6" }
%"struct.std::_Tuple_impl.6" = type { %"struct.std::_Head_base.9" }
%"struct.std::_Head_base.9" = type { ptr }

$_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj = comdat any

$_ZN5arrow4util17CountingSemaphore4Impl7ReleaseEj = comdat any

$_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj = comdat any

$_ZN5arrow4util17CountingSemaphore4Impl5CloseEv = comdat any

$_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA44_KcRjRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

$_ZN5arrow8internal12JoinToStringIJRA23_KcRjRA31_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ = comdat any

$_ZN5arrow6Status8FromArgsIJRA73_KcEEES0_NS_10StatusCodeEDpOT_ = comdat any

@.str = private unnamed_addr constant [44 x i8] c"Timed out waiting for semaphore to release \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" permits.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Semaphore closed while acquiring\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Invalid operation on closed semaphore\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Semaphore closed while waiting for waiters\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Timed out waiting for \00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c" to start waiting on semaphore\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"There were one or more threads waiting on a semaphore when it was closed\00", align 1

@_ZN5arrow4util17CountingSemaphoreC1Ejd = unnamed_addr alias void (ptr, i32, double), ptr @_ZN5arrow4util17CountingSemaphoreC2Ejd
@_ZN5arrow4util17CountingSemaphoreD1Ev = unnamed_addr alias void (ptr), ptr @_ZN5arrow4util17CountingSemaphoreD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util17CountingSemaphoreC2Ejd(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 noundef %1, double noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #10 ; 8 uses
  store i32 %1, ptr %i.a, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store double %2, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 0, ptr %i.d, align 4, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, i8 0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #11
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.g) #11
  store ptr %i.a, ptr %0, align 8, !tbaa !18
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5arrow4util17CountingSemaphoreD2Ev(ptr noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !18     ; 4 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN5arrow4util17CountingSemaphore4ImplESt14default_deleteIS3_EED2Ev.exit, label %_ZNKSt14default_deleteIN5arrow4util17CountingSemaphore4ImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow4util17CountingSemaphore4ImplEEclEPS3_.exit.i: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  tail call void @_ZNSt18condition_variableD1Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 160) #12
  br label %_ZNSt10unique_ptrIN5arrow4util17CountingSemaphore4ImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow4util17CountingSemaphore4ImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow4util17CountingSemaphore4ImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util17CountingSemaphore7AcquireEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  tail call void @_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util17CountingSemaphore4Impl7AcquireEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #13
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noalias !22, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.thread

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(38) @.str.3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN5arrow6StatusD2Ev.exit17

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  %.pr = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit17, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

_ZN5arrow6StatusD2Ev.exit17:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !16
  %i.k = add i32 %i.j, %2
  store i32 %i.k, ptr %i.i, align 8, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.l) #11
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load double, ptr %i.n, align 8, !tbaa !15
  %i.p = fmul double %i.o, 1.000000e+09
  %i.q = fptosi double %i.p to i64
  %i.r = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  %i.s = add nsw i64 %i.r, %i.q                   ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = sdiv i64 %i.s, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.u, -1000000000
  %i.v = add i64 %.neg.i.i.i.i.i.i, %i.s
  br label %bb.e

bb.e:                                             ; preds = %.noexc18, %_ZN5arrow6StatusD2Ev.exit17
  %i.w = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.thread35, label %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i

_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i: ; preds = %bb.e
  %i.y = load i32, ptr %1, align 8, !tbaa !7
  %.not.i.i = icmp ugt i32 %2, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.m

bb.f:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 %i.u, ptr %4, align 8, !tbaa !29
  store i64 %i.v, ptr %i.t, align 8, !tbaa !32
  %i.z = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc18 unwind label %bb.k   ; 0 uses

.noexc18:                                         ; preds = %bb.f
  %i.aa = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  %.not7.i.i = icmp slt i64 %i.aa, %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %.not7.i.i, label %bb.e, label %bb.g, !llvm.loop !33

bb.g:                                             ; preds = %.noexc18
  %i.ab = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %.thread35, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit: ; preds = %bb.g
  %i.ad = load i32, ptr %1, align 8, !tbaa !7
  %.not = icmp ugt i32 %2, %i.ad
  %i.ae = load i32, ptr %i.i, align 8, !tbaa !16
  %i.af = sub i32 %i.ae, %2
  store i32 %i.af, ptr %i.i, align 8, !tbaa !16
  br i1 %.not, label %bb.h, label %.thread

bb.h:                                             ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !35
  invoke void @_ZN5arrow8internal12JoinToStringIJRA44_KcRjRA10_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(44) @.str, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.1)
          to label %.noexc19 unwind label %bb.l

.noexc19:                                         ; preds = %bb.h
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc19
  %i.ag = load ptr, ptr %3, align 8, !tbaa !40, !noalias !35 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZN5arrow6Status7InvalidIJRA44_KcRjRA10_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.i
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !44, !noalias !35
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #12
  br label %_ZN5arrow6Status7InvalidIJRA44_KcRjRA10_S2_EEES0_DpOT_.exit

bb.j:                                             ; preds = %.noexc19
  %i.al = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %3, align 8, !tbaa !40, !noalias !35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.j
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !44, !noalias !35
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !35
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

_ZN5arrow6Status7InvalidIJRA44_KcRjRA10_S2_EEES0_DpOT_.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !35
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.k:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

bb.l:                                             ; preds = %.thread35, %bb.h
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit23

bb.m:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl7AcquireEjENKUlvE_clEv.exit.i.i
  %i.at = load i32, ptr %i.i, align 8, !tbaa !16
  %i.au = sub i32 %i.at, %2
  store i32 %i.au, ptr %i.i, align 8, !tbaa !16
  br label %.thread

.thread35:                                        ; preds = %bb.e, %bb.g
  %i.av = load i32, ptr %i.i, align 8, !tbaa !16
  %i.aw = sub i32 %i.av, %2
  store i32 %i.aw, ptr %i.i, align 8, !tbaa !16
  invoke void @_ZN5arrow6Status8FromArgsIJRA33_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(33) @.str.2)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.l

.thread:                                          ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl7AcquireEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit, %bb.m
  %i.ax = load i32, ptr %1, align 8, !tbaa !7
  %i.ay = sub i32 %i.ax, %2
  store i32 %i.ay, ptr %1, align 8, !tbaa !7
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !45
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.thread, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6Status7InvalidIJRA44_KcRjRA10_S2_EEES0_DpOT_.exit, %.thread35
  %i.az = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 0 uses
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit23:          ; preds = %bb.d, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.l
  %.pn11.pn = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ar, %bb.k ], [ %i.as, %bb.l ], [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  %i.ba = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 0 uses
  resume { ptr, i32 } %.pn11.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util17CountingSemaphore7ReleaseEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  tail call void @_ZN5arrow4util17CountingSemaphore4Impl7ReleaseEj(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util17CountingSemaphore4Impl7ReleaseEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #13
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i8, ptr %i.c, align 4, !tbaa !17, !range !21, !noalias !48, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.thread

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(38) @.str.3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %_ZN5arrow6StatusD2Ev.exit12

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  %.pr = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit12, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.h = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  resume { ptr, i32 } %i.g

_ZN5arrow6StatusD2Ev.exit12:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.i = load i32, ptr %1, align 8, !tbaa !7
  %i.j = add i32 %i.i, %2
  store i32 %i.j, ptr %1, align 8, !tbaa !7
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #11
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !51
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit12
  %i.l = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util17CountingSemaphore14WaitForWaitersEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  tail call void @_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEj(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 2 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.c) #13
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noalias !54, !noundef !25
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.thread

bb.c:                                             ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(38) @.str.3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  %.pr = load ptr, ptr %5, align 8, !tbaa !26     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  %i.g = icmp eq ptr %.pr, null
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit14, label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !15
  %i.l = fmul double %i.k, 1.000000e+09
  %i.m = fptosi double %i.l to i64
  %i.n = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  %i.o = add nsw i64 %i.n, %i.m                   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = sdiv i64 %i.o, 1000000000                ; 2 uses
  %.neg.i.i.i.i.i.i = mul nsw i64 %i.r, -1000000000
  %i.s = add i64 %.neg.i.i.i.i.i.i, %i.o
  br label %bb.e

bb.e:                                             ; preds = %.noexc15, %_ZN5arrow6StatusD2Ev.exit14
  %i.t = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32, label %_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i

_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i: ; preds = %bb.e
  %i.v = load i32, ptr %i.p, align 8, !tbaa !16
  %.not.i.i = icmp ugt i32 %2, %i.v
  br i1 %.not.i.i, label %bb.f, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread

bb.f:                                             ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store i64 %i.r, ptr %4, align 8, !tbaa !29
  store i64 %i.s, ptr %i.q, align 8, !tbaa !32
  %i.w = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %.noexc15 unwind label %bb.h   ; 0 uses

.noexc15:                                         ; preds = %bb.f
  %i.x = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #11
  %.not7.i.i = icmp slt i64 %i.x, %i.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br i1 %.not7.i.i, label %bb.e, label %bb.g, !llvm.loop !57

bb.g:                                             ; preds = %.noexc15
  %i.y = load i8, ptr %i.d, align 4, !tbaa !17, !range !21, !noundef !25
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit: ; preds = %bb.g
  %i.aa = load i32, ptr %i.p, align 8, !tbaa !16
  %.not = icmp ugt i32 %2, %i.aa
  br i1 %.not, label %bb.j, label %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32: ; preds = %bb.e, %bb.g
  invoke void @_ZN5arrow6Status8FromArgsIJRA43_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(43) @.str.4)
          to label %_ZNSt11unique_lockISt5mutexED2Ev.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

bb.i:                                             ; preds = %bb.j, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread: ; preds = %_ZZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjENKUlvE_clEv.exit.i.i, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !58
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.j:                                             ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !61
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcRjRA31_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(23) @.str.5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(31) @.str.6)
          to label %.noexc17 unwind label %bb.i

.noexc17:                                         ; preds = %bb.j
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.noexc17
  %i.ad = load ptr, ptr %3, align 8, !tbaa !40, !noalias !61 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZN5arrow6Status7InvalidIJRA23_KcRjRA31_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.k
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !44, !noalias !61
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #12
  br label %_ZN5arrow6Status7InvalidIJRA23_KcRjRA31_S2_EEES0_DpOT_.exit

bb.l:                                             ; preds = %.noexc17
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %3, align 8, !tbaa !40, !noalias !61 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.l
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !44, !noalias !61
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !61
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit20

_ZN5arrow6Status7InvalidIJRA23_KcRjRA31_S2_EEES0_DpOT_.exit: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11, !noalias !61
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread, %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6Status7InvalidIJRA23_KcRjRA31_S2_EEES0_DpOT_.exit, %_ZNSt18condition_variable8wait_forIlSt5ratioILl1ELl1000000000EEZN5arrow4util17CountingSemaphore4Impl14WaitForWaitersEjEUlvE_EEbRSt11unique_lockISt5mutexERKNSt6chrono8durationIT_T0_EET1_.exit.thread.thread32
  %i.ao = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 0 uses
  ret void

_ZNSt11unique_lockISt5mutexED2Ev.exit20:          ; preds = %bb.d, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %bb.i
  %.pn9 = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.ab, %bb.h ], [ %i.ac, %bb.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  %i.ap = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.b) #11 ; 0 uses
  resume { ptr, i32 } %.pn9
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow4util17CountingSemaphore5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  tail call void @_ZN5arrow4util17CountingSemaphore4Impl5CloseEv(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow4util17CountingSemaphore4Impl5CloseEv(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #13
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !17, !range !21, !noalias !66, !noundef !25
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.thread

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  invoke void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %2, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(38) @.str.3)
          to label %_ZN5arrow6StatusD2Ev.exit unwind label %bb.d

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  store ptr null, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %_ZN5arrow6StatusD2Ev.exit14

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.c
  %.pr = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.f = icmp eq ptr %.pr, null
  br i1 %i.f, label %_ZN5arrow6StatusD2Ev.exit14, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.h

_ZN5arrow6StatusD2Ev.exit14:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  store i8 1, ptr %i.c, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !16
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.j) #11
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #11
  invoke void @_ZN5arrow6Status8FromArgsIJRA73_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(73) @.str.7)
          to label %.critedge unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit14
  store ptr null, ptr %0, align 8, !tbaa !26, !alias.scope !69
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %_ZN5arrow6StatusD2Ev.exit, %bb.g
  %i.m = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  ret void

bb.h:                                             ; preds = %bb.f, %bb.d
  %.pn9 = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.g, %bb.d ]
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #11 ; 0 uses
  resume { ptr, i32 } %.pn9
}

; Function Attrs: nounwind
declare void @_ZNSt18condition_variableC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind
declare void @_ZNSt18condition_variable10notify_allEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA38_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(38) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11, !noalias !72
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !72
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75, !noalias !72, !nonnull !25, !align !85
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(38) %2) #11, !noalias !72
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(38) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA38_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !72 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA38_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA38_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d
end_hunk_0
