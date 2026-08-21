inline.NumInlined: 113
inline.NumDeleted: 65
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20260526::NoDestructor" = type { %"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" }
%"class.absl::lts_20260526::NoDestructor<absl::lts_20260526::Mutex>::PlacementImpl" = type { [8 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

$__clang_call_terminate = comdat any

@_ZN4absl12lts_2026052614flags_internalL12program_nameB5cxx11E = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex = internal global %"class.absl::lts_20260526::NoDestructor" zeroinitializer, align 8
@_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex = internal global i64 0, align 8
@.str.4 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal21ProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  br label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit

_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
  %i.e = load ptr, ptr @_ZN4absl12lts_2026052614flags_internalL12program_nameB5cxx11E, align 8, !tbaa !13 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !16
  br i1 %.not, label %._crit_edge.i.i10, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !19   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !21   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %i.i, ptr %i.a, align 8, !tbaa !22
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.d
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.k, ptr %0, align 8, !tbaa !19
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.l, ptr %i.f, align 8, !tbaa !23
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.d
  %i.m = phi ptr [ %i.k, %.noexc ], [ %i.f, %bb.d ] ; 2 uses
  switch i64 %i.i, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !23
  store i8 %i.n, ptr %i.m, align 1, !tbaa !23
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %bb.g

._crit_edge.i.i10:                                ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.f, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.p, align 1, !tbaa !23
  br label %.critedge

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i
  %i.q = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !21
  %i.s = load ptr, ptr %0, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %._crit_edge.i.i10
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %.critedge
  ret void

bb.i:                                             ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit13 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit13:      ; preds = %bb.i
  resume { ptr, i32 } %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal26ShortProgramInvocationNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %i.b = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  br label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit

_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
  %i.e = load ptr, ptr @_ZN4absl12lts_2026052614flags_internalL12program_nameB5cxx11E, align 8, !tbaa !13 ; 3 uses
  %.not.not.not = icmp eq ptr %i.e, null
  br i1 %.not.not.not, label %._crit_edge.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !21   ; 4 uses
  %.not.i25 = icmp eq i64 %i.h, 0
  br i1 %.not.i25, label %._crit_edge.i.i.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.i, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.h

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i:   ; preds = %bb.d, %bb.e
  %.1.i.i.in.i = phi i64 [ %.1.i.i.i, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.1.i.i.i = add i64 %.1.i.i.in.i, -1            ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i.i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23
  switch i8 %i.k, label %bb.e [
    i8 92, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
    i8 47, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  ]

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %.not17.i.i.i = icmp eq i64 %.1.i.i.i, 0
  br i1 %.not17.i.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, !llvm.loop !24

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.i
  %i.l = sub nuw i64 %i.h, %.1.i.i.in.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %.1.i.i.in.i
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i
  %.pn9.i = phi i64 [ %i.l, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.h, %bb.e ] ; 4 uses
  %.pn7.i = phi ptr [ %i.m, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit.i ], [ %i.f, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %.pn9.i, ptr %i.a, align 8, !tbaa !22
  %i.o = icmp ugt i64 %.pn9.i, 15
  br i1 %i.o, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.loopexit
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc27 unwind label %bb.j   ; 2 uses

.noexc27:                                         ; preds = %.noexc.i.i.i
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  %i.q = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.q, ptr %i.n, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc27, %.loopexit
  %i.r = phi ptr [ %i.p, %.noexc27 ], [ %i.n, %.loopexit ] ; 2 uses
  switch i64 %.pn9.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %bb.h
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  %i.s = load i8, ptr %.pn7.i, align 1, !tbaa !23
  store i8 %i.s, ptr %i.r, align 1, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %.pn7.i, i64 %.pn9.i, i1 false)
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.t, ptr noundef nonnull align 1 dereferenceable(7) @.str, i64 7, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 7, ptr %i.u, align 8, !tbaa !21
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 0, ptr %i.v, align 1, !tbaa !23
  br label %.critedge21

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.thread, %bb.g, %bb.f, %._crit_edge.i.i.i.i
  %i.w = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.w, ptr %i.x, align 8, !tbaa !21
  %i.y = load ptr, ptr %0, align 8, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %.critedge21

.critedge21:                                      ; preds = %bb.h, %._crit_edge.i.i
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %.critedge21
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %.critedge21
  ret void

bb.j:                                             ; preds = %.noexc.i.i.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit29 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          catch ptr null
  %i.ae = extractvalue { ptr, i32 } %i.ad, 0
  call void @__clang_call_terminate(ptr %i.ae) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit29:      ; preds = %bb.j
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052614flags_internal24SetProgramInvocationNameESt17basic_string_viewIcSt11char_traitsIcEE(i64 %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load atomic i8, ptr @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 0, ptr @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex, align 8, !tbaa !10
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex) #9
  br label %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit

_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
  %i.e = load ptr, ptr @_ZN4absl12lts_2026052614flags_internalL12program_nameB5cxx11E, align 8, !tbaa !13 ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.m

bb.d:                                             ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  %i.f = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11
          to label %bb.e unwind label %bb.k       ; 8 uses

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp eq ptr %1, null
  %i.i = icmp ne i64 %0, 0
  %or.cond.i.i.i = and i1 %i.i, %i.h
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 %0, ptr %i.a, align 8, !tbaa !22
  %i.j = icmp ugt i64 %0, 15
  br i1 %i.j, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.g
  %i.k = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc5 unwind label %bb.l    ; 2 uses

.noexc5:                                          ; preds = %.noexc.i.i.i
  store ptr %i.k, ptr %i.f, align 8, !tbaa !19
  %i.l = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.l, ptr %i.g, align 8, !tbaa !23
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc5, %bb.g
  %i.m = phi ptr [ %i.k, %.noexc5 ], [ %i.g, %bb.g ] ; 2 uses
  switch i64 %0, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.n = load i8, ptr %1, align 1, !tbaa !23
  store i8 %i.n, ptr %i.m, align 1, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %1, i64 %0, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !21
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  store ptr %i.f, ptr @_ZN4absl12lts_2026052614flags_internalL12program_nameB5cxx11E, align 8, !tbaa !13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit

bb.k:                                             ; preds = %bb.m, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %.noexc.i.i.i, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 32) #13
  br label %bb.o

bb.m:                                             ; preds = %_ZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 noundef 0, i64 noundef %i.v, ptr noundef %1, i64 noundef %0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit unwind label %bb.k ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit: ; preds = %bb.m, %bb.j
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit unwind label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit:        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEPKcm.exit
  ret void

bb.o:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.t, %bb.l ]
  invoke void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4absl12lts_2026052614flags_internalL16ProgramNameMutexEvE5mutex)
          to label %_ZN4absl12lts_202605269MutexLockD2Ev.exit7 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #10
  unreachable

_ZN4absl12lts_202605269MutexLockD2Ev.exit7:       ; preds = %bb.o
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

declare void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202605265Mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #9 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!"branch_weights", i32 1, i32 1048575}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTSSt13__atomic_baseIlE", !12, i64 0}
!12 = !{!"long", !7, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!17, !18, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!20, !18, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !17, i64 0, !12, i64 8, !7, i64 16}
!21 = !{!20, !12, i64 8}
!22 = !{!12, !12, i64 0}
!23 = !{!7, !7, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
end_hunk_0
