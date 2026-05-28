inline.NumInlined: 148
inline.NumDeleted: 84
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::NoDestructor" = type { %"class.absl::NoDestructor<absl::cord_internal::(anonymous namespace)::Queue>::PlacementImpl" }
%"class.absl::NoDestructor<absl::cord_internal::(anonymous namespace)::Queue>::PlacementImpl" = type { [16 x i8] }
%"class.std::vector.2" = type { %"struct.std::_Vector_base.3" }
%"struct.std::_Vector_base.3" = type { %"struct.std::_Vector_base<const absl::cord_internal::CordzHandle *, std::allocator<const absl::cord_internal::CordzHandle *>>::_Vector_impl" }
%"struct.std::_Vector_base<const absl::cord_internal::CordzHandle *, std::allocator<const absl::cord_internal::CordzHandle *>>::_Vector_impl" = type { %"struct.std::_Vector_base<const absl::cord_internal::CordzHandle *, std::allocator<const absl::cord_internal::CordzHandle *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<const absl::cord_internal::CordzHandle *, std::allocator<const absl::cord_internal::CordzHandle *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@_ZTVN4absl13cord_internal11CordzHandleE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZN4absl13cord_internal11CordzHandleD2Ev, ptr @_ZN4absl13cord_internal11CordzHandleD0Ev] }, align 8
@.str = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"../../deps/v8/third_party/abseil-cpp/absl/strings/internal/cordz_handle.cc\00", align 1
@__PRETTY_FUNCTION__._ZN4absl13cord_internal11CordzHandle6DeleteEPS1_ = private unnamed_addr constant [68 x i8] c"static void absl::cord_internal::CordzHandle::Delete(CordzHandle *)\00", align 1
@_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue = internal global %"class.absl::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"false && \22snapshot_found\22\00", align 1
@"__PRETTY_FUNCTION__._ZZNK4absl13cord_internal11CordzHandle32DiagnosticsHandleIsSafeToInspectEPKS1_ENK3$_0clEv" = private unnamed_addr constant [123 x i8] c"auto absl::cord_internal::CordzHandle::DiagnosticsHandleIsSafeToInspect(const CordzHandle *)::(lambda)::operator()() const\00", align 1

@_ZN4absl13cord_internal11CordzHandleC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN4absl13cord_internal11CordzHandleC2Eb
@_ZN4absl13cord_internal11CordzHandleD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl13cord_internal11CordzHandleD2Ev

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandleC2Eb(ptr noundef nonnull align 8 dereferenceable(32) initializes((0, 9), (16, 32)) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i1 %1 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl13cord_internal11CordzHandleE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  br i1 %1, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.g = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %0, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store atomic ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 captures(none) dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN4absl13cord_internal11CordzHandleE, i64 16), ptr %0, align 8
  %i.a = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EED2Ev.exit

bb.d:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.d
  %.not55 = icmp eq ptr %i.h, null
  br i1 %.not55, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit
  %.sroa.020.059 = phi ptr [ %.sroa.020.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ], [ null, %.preheader ] ; 6 uses
  %.058 = phi ptr [ %i.ad, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ], [ %i.h, %.preheader ] ; 5 uses
  %.sroa.7.057 = phi ptr [ %.sroa.7.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ], [ null, %.preheader ] ; 5 uses
  %.sroa.12.056 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ], [ null, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !6, !noundef !7
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge.thread37, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %.not.i10 = icmp eq ptr %.sroa.7.057, %.sroa.12.056
  br i1 %.not.i10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.058, ptr %.sroa.7.057, align 8
  br label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit

bb.g:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %.sroa.7.057 to i64
  %i.p = ptrtoint ptr %.sroa.020.059 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 6 uses
  %i.r = icmp eq i64 %i.q, 9223372036854775800
  br i1 %i.r, label %bb.h, label %_ZNKSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.s = ashr exact i64 %i.q, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.t = add nsw i64 %.sroa.speculated.i.i.i, %i.s ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.s
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975)
  %i.w = select i1 %i.u, i64 1152921504606846975, i64 %i.v ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.w, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.x = shl nuw nsw i64 %i.w, 3
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.x) #13 ; 4 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.q ; 2 uses
  store ptr %.058, ptr %i.z, align 8
  %i.aa = icmp sgt i64 %i.q, 0
  br i1 %i.aa, label %bb.i, label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %.sroa.020.059, i64 %i.q, i1 false)
  br label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.i, %_ZNKSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.020.059, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.059, i64 noundef %i.q) #14
  br label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.w
  br label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit: ; preds = %bb.f, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i
  %.sroa.12.2 = phi ptr [ %i.ab, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.12.056, %bb.f ] ; 2 uses
  %.pn = phi ptr [ %i.z, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.7.057, %bb.f ]
  %.sroa.020.2 = phi ptr [ %i.y, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.020.059, %bb.f ] ; 2 uses
  %.sroa.7.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.058, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !8

.critedge:                                        ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.h, ptr %i.ae, align 8
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %.critedge.thread, label %.critedge.thread37

.critedge.thread37:                               ; preds = %.lr.ph, %.critedge
  %.sroa.020.146 = phi ptr [ null, %.critedge ], [ %.sroa.020.059, %.lr.ph ]
  %.145 = phi ptr [ %i.h, %.critedge ], [ %.058, %.lr.ph ]
  %.sroa.7.144 = phi ptr [ null, %.critedge ], [ %.sroa.7.057, %.lr.ph ]
  %.sroa.12.143 = phi ptr [ null, %.critedge ], [ %.sroa.12.056, %.lr.ph ]
  %i.af = load ptr, ptr %i.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.145, i64 16
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.k

.critedge.thread:                                 ; preds = %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit, %.preheader, %.critedge
  %.sroa.020.136 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.020.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ]
  %.sroa.7.134 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.7.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ]
  %.sroa.12.132 = phi ptr [ null, %.critedge ], [ null, %.preheader ], [ %.sroa.12.2, %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EE9push_backERKS3_.exit ]
  %i.ah = load ptr, ptr %i.i, align 8
  store atomic ptr %i.ah, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  br label %bb.k

bb.k:                                             ; preds = %.critedge.thread, %.critedge.thread37
  %.sroa.020.135 = phi ptr [ %.sroa.020.136, %.critedge.thread ], [ %.sroa.020.146, %.critedge.thread37 ] ; 5 uses
  %.sroa.7.133 = phi ptr [ %.sroa.7.134, %.critedge.thread ], [ %.sroa.7.144, %.critedge.thread37 ] ; 2 uses
  %.sroa.12.131 = phi ptr [ %.sroa.12.132, %.critedge.thread ], [ %.sroa.12.143, %.critedge.thread37 ]
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.ai = icmp eq ptr %.sroa.020.135, %.sroa.7.133
  br i1 %i.ai, label %._crit_edge, label %.lr.ph63

._crit_edge:                                      ; preds = %bb.n, %bb.k
  %.not.i.i.i11 = icmp eq ptr %.sroa.020.135, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  %i.aj = ptrtoint ptr %.sroa.12.131 to i64
  %i.ak = ptrtoint ptr %.sroa.020.135 to i64
  %i.al = sub i64 %i.aj, %i.ak
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.020.135, i64 noundef %i.al) #14
  br label %_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EED2Ev.exit

.lr.ph63:                                         ; preds = %bb.k, %bb.n
  %.sroa.012.062 = phi ptr [ %i.ar, %bb.n ], [ %.sroa.020.135, %bb.k ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.012.062, align 8   ; 3 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph63
  %i.ao = load ptr, ptr %i.am, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.am) #11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph63
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.062, i64 8 ; 2 uses
  %i.as = icmp eq ptr %i.ar, %.sroa.7.133
  br i1 %i.as, label %._crit_edge, label %.lr.ph63

_ZNSt6vectorIPN4absl13cord_internal11CordzHandleESaIS3_EED2Ev.exit: ; preds = %bb.l, %._crit_edge, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandleD0Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4absl13cord_internal11CordzHandleD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #11
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.g = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8
  %i.h = icmp eq ptr %i.g, null
  br label %bb.e

bb.e:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %bb.a
  %i.i = phi i1 [ true, %bb.a ], [ %i.h, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandle6DeleteEPS1_(ptr noundef %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 102, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4absl13cord_internal11CordzHandle6DeleteEPS1_) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.d, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i8, ptr %i.d, align 8, !range !6, !noundef !7
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.g = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.g, label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit, !prof !5

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit

_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit: ; preds = %bb.f, %bb.g, %bb.h
  %i.j = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.l = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 3 uses
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.l, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %0, ptr %i.n, align 8
  store atomic ptr %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) release, align 8
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %bb.k

.critedge:                                        ; preds = %bb.i
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit.thread

_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit.thread: ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit, %.critedge
  %i.o = load ptr, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK4absl13cord_internal11CordzHandle12SafeToDeleteEv.exit.thread
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandle25DiagnosticsGetDeleteQueueEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.2") align 8 captures(none) initializes((0, 24)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.d = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) acquire, align 8 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %.lcssa = phi ptr [ %.promoted, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ], [ %i.aa, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit
  %i.g = phi ptr [ %.pre, %.lr.ph ], [ %i.z, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ] ; 4 uses
  %storemerge9 = phi ptr [ %i.d, %.lr.ph ], [ %i.ac, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ] ; 6 uses
  %i.i = load ptr, ptr %i.f, align 8
  %.not.i4 = icmp eq ptr %i.g, %i.i
  br i1 %.not.i4, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %storemerge9, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

bb.f:                                             ; preds = %bb.d
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 6 uses
  %i.n = icmp eq i64 %i.m, 9223372036854775800
  br i1 %i.n, label %bb.g, label %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.h, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.p = add nsw i64 %.sroa.speculated.i.i.i, %i.o ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.p, i64 1152921504606846975)
  %i.s = select i1 %i.q, i64 1152921504606846975, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #13 ; 4 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.m ; 2 uses
  store ptr %storemerge9, ptr %i.v, align 8
  %i.w = icmp sgt i64 %i.m, 0
  br i1 %i.w, label %bb.h, label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.u, ptr align 8 %i.h, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.m) #14
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.x, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.y, ptr %i.f, align 8
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit: ; preds = %bb.e, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i
  %i.z = phi ptr [ %i.j, %bb.e ], [ %i.x, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %i.aa = phi ptr [ %i.h, %bb.e ], [ %i.u, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %storemerge9, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !10
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4absl13cord_internal11CordzHandle32DiagnosticsHandleIsSafeToInspectEPKS1_(ptr noundef nonnull readonly align 8 captures(address) dereferenceable(32) %0, ptr noundef readonly captures(address) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i8, ptr %i.e, align 8, !range !6, !noundef !7
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.i = icmp eq i8 %i.h, 0
  br i1 %i.i, label %bb.e, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.d, %bb.e, %bb.f
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %i.k = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i64 8) seq_cst, align 8 ; 2 uses
  %.not21 = icmp eq ptr %i.k, null
  br i1 %.not21, label %._crit_edge.thread, label %.lr.ph, !prof !11

.lr.ph:                                           ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %bb.g
  %.01323 = phi ptr [ %i.o, %bb.g ], [ %i.k, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ] ; 3 uses
  %.01522 = phi i8 [ %spec.select, %bb.g ], [ 0, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ] ; 2 uses
  %i.l = icmp eq ptr %.01323, %1
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = icmp eq ptr %.01323, %0
  %spec.select = select i1 %i.m, i8 1, i8 %.01522 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.01323, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12

bb.h:                                             ; preds = %.lr.ph
  %i.p = trunc nuw i8 %.01522 to i1
  %i.q = xor i1 %i.p, true
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g
  %i.r = trunc nuw i8 %spec.select to i1
  br i1 %i.r, label %bb.i, label %._crit_edge.thread, !prof !13

._crit_edge.thread:                               ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, %._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZNK4absl13cord_internal11CordzHandle32DiagnosticsHandleIsSafeToInspectEPKS1_ENK3$_0clEv") #12
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.1 = phi i1 [ %i.q, %bb.h ], [ true, %._crit_edge ]
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.i
  %.2 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ %.1, %bb.i ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4absl13cord_internal11CordzHandle41DiagnosticsGetSafeToInspectDeletedHandlesEv(ptr dead_on_unwind noalias writable sret(%"class.std::vector.2") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !range !6, !noundef !7
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue, i8 0, i64 16, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit

_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %storemerge.in7 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %storemerge8 = load ptr, ptr %storemerge.in7, align 8 ; 2 uses
  %.not9 = icmp eq ptr %storemerge8, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit
  %.lcssa = phi ptr [ %.promoted, %_ZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEv.exit ], [ %i.ae, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ]
  store ptr %.lcssa, ptr %0, align 8
  tail call void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl13cord_internal12_GLOBAL__N_111GlobalQueueEvE12global_queue) #11
  br label %bb.l

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit
  %storemerge10 = phi ptr [ %storemerge8, %.lr.ph ], [ %storemerge, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ] ; 4 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %storemerge10, i64 8
  %i.k = load i8, ptr %i.j, align 8, !range !6, !noundef !7
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.n = load ptr, ptr %i.h, align 8
  %.not.i3 = icmp eq ptr %i.m, %i.n
  br i1 %.not.i3, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %storemerge10, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.g, align 8
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

bb.h:                                             ; preds = %bb.f
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.i to i64
  %i.r = sub i64 %i.p, %i.q                       ; 6 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.i, label %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.i, ptr %0, align 8
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.h
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #13 ; 4 uses
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.r ; 2 uses
  store ptr %storemerge10, ptr %i.aa, align 8
  %i.ab = icmp sgt i64 %i.r, 0
  br i1 %i.ab, label %bb.j, label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.j:                                             ; preds = %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.z, ptr align 8 %i.i, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.j, %_ZNKSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.r) #14
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.k, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.ac, ptr %i.g, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ad, ptr %i.h, align 8
  br label %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.g, %bb.e
  %i.ae = phi ptr [ %i.z, %_ZNSt6vectorIPKN4absl13cord_internal11CordzHandleESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.i, %bb.g ], [ %i.i, %bb.e ] ; 2 uses
  %storemerge.in = getelementptr inbounds nuw i8, ptr %storemerge10, i64 24
  %storemerge = load ptr, ptr %storemerge.in, align 8 ; 2 uses
  %.not = icmp eq ptr %storemerge, null
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !14

bb.l:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN4absl5Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4absl5Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!"branch_weights", i32 1, i32 1048575}
!6 = !{i8 0, i8 2}
!7 = !{}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = !{!"branch_weights", i32 1073205, i32 2146410443}
!12 = distinct !{!12, !9}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = distinct !{!14, !9}
end_hunk_0
