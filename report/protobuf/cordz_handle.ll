inline.NumInlined: 154
inline.NumDeleted: 87
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::NoDestructor" = type { %"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::cord_internal::(anonymous namespace)::Queue>::PlacementImpl" }
%"class.absl::lts_20250512::NoDestructor<absl::lts_20250512::cord_internal::(anonymous namespace)::Queue>::PlacementImpl" = type { [16 x i8] }
%"class.std::vector.2" = type { %"struct.std::_Vector_base.3" }
%"struct.std::_Vector_base.3" = type { %"struct.std::_Vector_base<const absl::lts_20250512::cord_internal::CordzHandle *, std::allocator<const absl::lts_20250512::cord_internal::CordzHandle *>>::_Vector_impl" }
%"struct.std::_Vector_base<const absl::lts_20250512::cord_internal::CordzHandle *, std::allocator<const absl::lts_20250512::cord_internal::CordzHandle *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const absl::lts_20250512::cord_internal::CordzHandle *, std::allocator<const absl::lts_20250512::cord_internal::CordzHandle *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const absl::lts_20250512::cord_internal::CordzHandle *, std::allocator<const absl::lts_20250512::cord_internal::CordzHandle *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$__clang_call_terminate = comdat any

@_ZTVN4absl12lts_2025051213cord_internal11CordzHandleE = unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN4absl12lts_2025051213cord_internal11CordzHandleE, ptr @_ZN4absl12lts_2025051213cord_internal11CordzHandleD1Ev, ptr @_ZN4absl12lts_2025051213cord_internal11CordzHandleD0Ev] }, align 8
@_ZTIN4absl12lts_2025051213cord_internal11CordzHandleE = constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4absl12lts_2025051213cord_internal11CordzHandleE }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4absl12lts_2025051213cord_internal11CordzHandleE = constant [50 x i8] c"N4absl12lts_2025051213cord_internal11CordzHandleE\00", align 1
@_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue = internal global %"class.absl::lts_20250512::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue = internal global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4absl12lts_2025051213cord_internal11CordzHandleC1Eb = unnamed_addr alias void (ptr, i1), ptr @_ZN4absl12lts_2025051213cord_internal11CordzHandleC2Eb
@_ZN4absl12lts_2025051213cord_internal11CordzHandleD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandleC2Eb(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 9), (16, 32)) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal11CordzHandleE, i64 16), ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8, !tbaa !9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  br i1 %1, label %bb.d, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
  %i.g = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.c, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %0, ptr %i.h, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store atomic ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.f, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl12lts_2025051213cord_internal11CordzHandleE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !9, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %.loopexit.split-lp

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !16   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15   ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.preheader, label %.critedge

.preheader:                                       ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %.not60 = icmp eq ptr %i.h, null
  br i1 %.not60, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit
  %.sroa.021.064 = phi ptr [ %.sroa.021.2, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ], [ null, %.preheader ] ; 6 uses
  %.063 = phi ptr [ %i.ad, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ], [ %i.h, %.preheader ] ; 5 uses
  %.sroa.7.062 = phi ptr [ %.sroa.7.2, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ], [ null, %.preheader ] ; 5 uses
  %.sroa.11.061 = phi ptr [ %.sroa.11.2, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ], [ null, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.063, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !9, !range !17, !noundef !18
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge.thread37.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.not.i10 = icmp eq ptr %.sroa.7.062, %.sroa.11.061
  br i1 %.not.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.063, ptr %.sroa.7.062, align 8, !tbaa !19
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %.sroa.7.062 to i64
  %i.p = ptrtoint ptr %.sroa.021.064 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.h, label %_ZNKSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #17
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %.063, ptr %i.z, align 8, !tbaa !19
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.i, label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.i:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.021.064, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.i, %.noexc11
  %.not.i17.i.i = icmp eq ptr %.sroa.021.064, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.064, i64 noundef %i.q) #18
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.f
  %.sroa.11.2 = phi ptr [ %i.ab, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.11.061, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.z, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.7.062, %bb.f ]
  %.sroa.021.2 = phi ptr [ %i.y, %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.021.064, %bb.f ] ; 2 uses
  %.sroa.7.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.063, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge.thread.loopexit, label %.lr.ph, !llvm.loop !20

.critedge:                                        ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.h, ptr %i.ae, align 8, !tbaa !16
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %.critedge.thread, label %.critedge.thread37

.critedge.thread37.loopexit:                      ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %.critedge.thread37

.critedge.thread37:                               ; preds = %.critedge.thread37.loopexit, %.critedge
  %i.af = phi ptr [ %i.j, %.critedge ], [ %.pre, %.critedge.thread37.loopexit ]
  %.sroa.021.146 = phi ptr [ null, %.critedge ], [ %.sroa.021.064, %.critedge.thread37.loopexit ]
  %.145 = phi ptr [ %i.h, %.critedge ], [ %.063, %.critedge.thread37.loopexit ]
  %.sroa.7.144 = phi ptr [ null, %.critedge ], [ %.sroa.7.062, %.critedge.thread37.loopexit ]
  %.sroa.11.143 = phi ptr [ null, %.critedge ], [ %.sroa.11.061, %.critedge.thread37.loopexit ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !15
  br label %bb.k

.critedge.thread.loopexit:                        ; preds = %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit
  %.pre82 = load ptr, ptr %i.i, align 8, !tbaa !15
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge.thread.loopexit, %.preheader, %.critedge
  %i.ah = phi ptr [ %i.j, %.critedge ], [ null, %.preheader ], [ %.pre82, %.critedge.thread.loopexit ]
  %.sroa.021.136 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.021.2, %.critedge.thread.loopexit ]
  %.sroa.7.134 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.7.2, %.critedge.thread.loopexit ]
  %.sroa.11.132 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.11.2, %.critedge.thread.loopexit ]
  store atomic ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge.thread, %.critedge.thread37
  %.sroa.021.135 = phi ptr [ %.sroa.021.136, %.critedge.thread ], [ %.sroa.021.146, %.critedge.thread37 ] ; 5 uses
  %.sroa.7.133 = phi ptr [ %.sroa.7.134, %.critedge.thread ], [ %.sroa.7.144, %.critedge.thread37 ] ; 2 uses
  %.sroa.11.131 = phi ptr [ %.sroa.11.132, %.critedge.thread ], [ %.sroa.11.143, %.critedge.thread37 ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader unwind label %bb.l

_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader: ; preds = %bb.k
  %.not4767 = icmp eq ptr %.sroa.021.135, %.sroa.7.133
  br i1 %.not4767, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge, label %.lr.ph69

bb.l:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader
  %.not.i.i.i12 = icmp eq ptr %.sroa.021.135, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge
  %i.ak = ptrtoint ptr %.sroa.11.131 to i64
  %i.al = ptrtoint ptr %.sroa.021.135 to i64
  %i.am = sub i64 %i.ak, %i.al
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.021.135, i64 noundef %i.am) #18
  br label %_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EED2Ev.exit

.lr.ph69:                                         ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader, %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %.sroa.013.068 = phi ptr [ %i.as, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ], [ %.sroa.021.135, %_ZN4absl12lts_202505129MutexLockD2Ev.exit.preheader ] ; 2 uses
  %i.an = load ptr, ptr %.sroa.013.068, align 8, !tbaa !19 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph69
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.an) #14
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.n, %.lr.ph69
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.013.068, i64 8 ; 2 uses
  %.not47 = icmp eq ptr %i.as, %.sroa.7.133
  br i1 %.not47, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge, label %.lr.ph69

_ZNSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EED2Ev.exit: ; preds = %bb.m, %_ZN4absl12lts_202505129MutexLockD2Ev.exit._crit_edge, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  ret void

.loopexit:                                        ; preds = %_ZNKSt6vectorIPN4absl12lts_2025051213cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.loopexit.split-lp:                               ; preds = %bb.d, %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.at = extractvalue { ptr, i32 } %lpad.phi, 0
  tail call void @__clang_call_terminate(ptr %i.at) #15
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN4absl12lts_2025051213cord_internal11CordzHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8
  %i.h = icmp eq ptr %i.g, null
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ %i.h, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ]
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandle6DeleteEPS2_(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !tbaa !9, !range !17, !noundef !18
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit15, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.g = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.f, label %_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit

_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.j = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit15, label %bb.h

bb.h:                                             ; preds = %_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
  %i.l = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 3 uses
  %.not14 = icmp eq ptr %i.l, null
  br i1 %.not14, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %0, ptr %i.n, align 8, !tbaa !16
  store atomic ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #15
  unreachable

.critedge:                                        ; preds = %bb.h
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit15 unwind label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit15:      ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %.critedge, %_ZNK4absl12lts_2025051213cord_internal11CordzHandle12SafeToDeleteEv.exit
  %i.s = load ptr, ptr %0, align 8, !tbaa !7
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #14
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit15, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandle25DiagnosticsGetDeleteQueueEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.2") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.c, %bb.b, %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.e

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.d = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not18 = icmp eq ptr %i.d, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !22
  %.pre24 = load ptr, ptr %i.f, align 8, !tbaa !26
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %.lcssa = phi ptr [ %.promoted, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit ], [ %i.ae, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %._crit_edge
  ret void

bb.e:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.pre25 = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit11

bb.f:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit
  %i.j = phi ptr [ %.pre24, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.k = phi ptr [ %.pre, %.lr.ph ], [ %i.ad, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %storemerge19 = phi ptr [ %i.d, %.lr.ph ], [ %i.ag, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 3 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 8 uses
  %.not.i9 = icmp eq ptr %i.k, %i.j
  br i1 %.not.i9, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %storemerge19, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8, !tbaa !22
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit

bb.h:                                             ; preds = %bb.f
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = sub i64 %i.n, %i.o                       ; 6 uses
  %i.q = icmp eq i64 %i.p, 9223372036854775800
  br i1 %i.q, label %bb.i, label %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.l, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.r = ashr exact i64 %i.p, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 1)
  %i.s = add nsw i64 %.sroa.speculated.i.i.i, %i.r ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.r
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.s, i64 1152921504606846975)
  %i.v = select i1 %i.t, i64 1152921504606846975, i64 %i.u ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.v, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #17
          to label %.noexc10 unwind label %.loopexit ; 4 uses

.noexc10:                                         ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 %i.p ; 2 uses
  store ptr %storemerge19, ptr %i.y, align 8, !tbaa !19
  %i.z = icmp sgt i64 %i.p, 0
  br i1 %i.z, label %bb.j, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.j:                                             ; preds = %.noexc10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.l, i64 %i.p, i1 false)
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.j, %.noexc10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.p) #18
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.aa, ptr %i.e, align 8, !tbaa !22
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v ; 2 uses
  store ptr %i.ab, ptr %i.f, align 8, !tbaa !26
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.g
  %i.ac = phi ptr [ %i.ab, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.j, %bb.g ]
  %i.ad = phi ptr [ %i.aa, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.m, %bb.g ]
  %i.ae = phi ptr [ %i.x, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.l, %bb.g ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %storemerge19, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !28

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %bb.l

.loopexit.split-lp:                               ; preds = %bb.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit11 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit11:      ; preds = %bb.e, %bb.l
  %i.aj = phi ptr [ %i.l, %bb.l ], [ %.pre25, %bb.e ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.l ], [ %i.i, %bb.e ]
  %.not.i.i.i12 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !26
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #18
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit11, %bb.n
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2025051213cord_internal11CordzHandle32DiagnosticsHandleIsSafeToInspectEPKS2_(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 8, !tbaa !9, !range !17, !noundef !18
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
  %i.k = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) seq_cst, align 8 ; 2 uses
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %bb.h
  %.01221 = phi ptr [ %i.p, %bb.h ], [ %i.k, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ] ; 3 uses
  %.01420 = phi i1 [ %spec.select, %bb.h ], [ false, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ] ; 2 uses
  %i.l = icmp eq ptr %.01221, %1
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.m = xor i1 %.01420, true
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %.01221, %0
  %spec.select = select i1 %i.n, i1 true, i1 %.01420
  %i.o = getelementptr inbounds nuw i8, ptr %.01221, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !15   ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !29

.loopexit:                                        ; preds = %bb.h, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %bb.g
  %spec.select17 = phi i1 [ %i.m, %bb.g ], [ true, %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ], [ true, %bb.h ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %.loopexit, %bb.c, %bb.b, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ %spec.select17, %.loopexit ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051213cord_internal11CordzHandle41DiagnosticsGetSafeToInspectDeletedHandlesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.2") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !9, !range !17, !noundef !18
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_202505129MutexLockD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #14
  br label %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.d, %bb.c, %bb.b
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.preheader unwind label %bb.f

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.preheader: ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %storemerge.in19 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %storemerge20 = load ptr, ptr %storemerge.in19, align 8, !tbaa !16 ; 2 uses
  %.not21 = icmp eq ptr %storemerge20, null
  br i1 %.not21, label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.g

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit._crit_edge: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.preheader
  %.lcssa = phi ptr [ %.promoted, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.preheader ], [ %i.aj, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit._crit_edge
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

bb.f:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !27
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit12

bb.g:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit
  %storemerge22 = phi ptr [ %storemerge20, %.lr.ph ], [ %storemerge, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 4 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %storemerge22, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !9, !range !17, !noundef !18
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !22   ; 4 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26
  %.not.i10 = icmp eq ptr %i.p, %i.q
  br i1 %.not.i10, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %storemerge22, ptr %i.p, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.r, ptr %i.g, align 8, !tbaa !22
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit

bb.j:                                             ; preds = %bb.h
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.l to i64
  %i.u = sub i64 %i.s, %i.t                       ; 6 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.k, label %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.l, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #16
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.k
  unreachable

_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #17
          to label %.noexc11 unwind label %.loopexit ; 4 uses

.noexc11:                                         ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %storemerge22, ptr %i.ad, align 8, !tbaa !19
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.l, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

bb.l:                                             ; preds = %.noexc11
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.l, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i: ; preds = %bb.l, %.noexc11
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.u) #18
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit16.i.i
  store ptr %i.af, ptr %i.g, align 8, !tbaa !22
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.ag, ptr %i.h, align 8, !tbaa !26
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2025051213cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit12 unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #15
  unreachable

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.i, %bb.g
  %i.aj = phi ptr [ %i.ac, %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i ], [ %i.l, %bb.i ], [ %i.l, %bb.g ] ; 2 uses
  %storemerge.in = getelementptr inbounds nuw i8, ptr %storemerge22, i64 24
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !16 ; 2 uses
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit._crit_edge, label %bb.g, !llvm.loop !30

_ZN4absl12lts_202505129MutexLockD2Ev.exit12:      ; preds = %bb.f, %bb.n
  %i.ak = phi ptr [ %i.l, %bb.n ], [ %.pre, %bb.f ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.phi, %bb.n ], [ %i.k, %bb.f ]
  %.not.i.i.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit12
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #18
  br label %_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit

_ZNSt6vectorIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EED2Ev.exit: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit12, %bb.p
  resume { ptr, i32 } %.pn.pn

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 8}
!10 = !{!"_ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !11, i64 8, !12, i64 16, !12, i64 24}
!11 = !{!"bool", !5, i64 0}
!12 = !{!"p1 _ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"branch_weights", i32 1, i32 1048575}
!15 = !{!10, !12, i64 16}
!16 = !{!10, !12, i64 24}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!12, !12, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!23, !24, i64 8}
!23 = !{!"_ZTSNSt12_Vector_baseIPKN4absl12lts_2025051213cord_internal11CordzHandleESaIS5_EE17_Vector_impl_dataE", !24, i64 0, !24, i64 8, !24, i64 16}
!24 = !{!"p2 _ZTSN4absl12lts_2025051213cord_internal11CordzHandleE", !25, i64 0}
!25 = !{!"any p2 pointer", !13, i64 0}
!26 = !{!23, !24, i64 16}
!27 = !{!23, !24, i64 0}
!28 = distinct !{!28, !21}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
end_hunk_0
