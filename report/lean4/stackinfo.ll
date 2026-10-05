Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lean4/original/stackinfo?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%struct.rlimit = type { i64, i64 }

$_ZN4lean9exceptionC2EPKc = comdat any

$_ZN4lean21stack_space_exceptionD2Ev = comdat any

$_ZN4lean9exceptionD0Ev = comdat any

$_ZN4lean21stack_space_exceptionD0Ev = comdat any

$_ZNK4lean21stack_space_exception4whatEv = comdat any

$_ZTIN4lean9exceptionE = comdat any

$_ZTSN4lean9exceptionE = comdat any

$_ZTIN4lean21stack_space_exceptionE = comdat any

$_ZTSN4lean21stack_space_exceptionE = comdat any

$_ZTVN4lean9exceptionE = comdat any

$_ZTVN4lean21stack_space_exceptionE = comdat any

@.str = private unnamed_addr constant [37 x i8] c"failed to retrieve thread stack size\00", align 1
@_ZTIN4lean9exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean9exceptionE, ptr @_ZTIN4lean9throwableE }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4lean9exceptionE = linkonce_odr constant [18 x i8] c"N4lean9exceptionE\00", comdat, align 1
@_ZTIN4lean9throwableE = external constant ptr
@_ZN4leanL17g_stack_info_initE = internal thread_local(localexec) unnamed_addr global i8 0, align 1
@_ZN4leanL12g_stack_sizeE = internal thread_local(localexec) unnamed_addr global i64 0, align 8
@_ZN4leanL12g_stack_baseE = internal thread_local(localexec) unnamed_addr global i64 0, align 8
@_ZN4leanL17g_stack_thresholdE = internal thread_local(localexec) unnamed_addr global i64 0, align 8
@_ZTIN4lean21stack_space_exceptionE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4lean21stack_space_exceptionE, ptr @_ZTIN4lean9throwableE }, comdat, align 8
@_ZTSN4lean21stack_space_exceptionE = linkonce_odr constant [31 x i8] c"N4lean21stack_space_exceptionE\00", comdat, align 1
@_ZTVN4lean9exceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean9exceptionE, ptr @_ZN4lean9throwableD2Ev, ptr @_ZN4lean9exceptionD0Ev, ptr @_ZNK4lean9throwable4whatEv] }, comdat, align 8
@_ZTVN4lean21stack_space_exceptionE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4lean21stack_space_exceptionE, ptr @_ZN4lean21stack_space_exceptionD2Ev, ptr @_ZN4lean21stack_space_exceptionD0Ev, ptr @_ZNK4lean21stack_space_exception4whatEv] }, comdat, align 8

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN4lean27throw_get_stack_size_failedEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 40) #13 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #13
  resume { ptr, i32 } %i.b
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean9exceptionE, i64 16), ptr %0, align 8, !tbaa !9
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4lean14get_stack_sizeEb(i1 noundef zeroext %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.rlimit, align 8             ; 4 uses
  br i1 %0, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.a = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %1) #13
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = call ptr @__cxa_allocate_exception(i64 40) #13 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.b) #13
  resume { ptr, i32 } %i.c

bb.f:                                             ; preds = %bb.b
  %i.d = load i64, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN4lean7lthread21get_thread_stack_sizeEv()
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi i64 [ %i.d, %bb.f ], [ %i.e, %bb.g ]
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef i64 @_ZN4lean7lthread21get_thread_stack_sizeEv() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN4lean15save_stack_infoEb(i1 noundef zeroext %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.rlimit, align 8             ; 4 uses
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL17g_stack_info_initE)
  store i8 1, ptr %i.a, align 1, !tbaa !14
  br i1 %0, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.b = call i32 @getrlimit(i32 noundef 3, ptr noundef nonnull %1) #13
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = call ptr @__cxa_allocate_exception(i64 40) #13 ; 3 uses
  invoke void @_ZN4lean9exceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull @.str)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN4lean9exceptionE, ptr nonnull @_ZN4lean9throwableD2Ev) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #13
  resume { ptr, i32 } %i.d

bb.f:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %_ZN4lean14get_stack_sizeEb.exit

bb.g:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN4lean7lthread21get_thread_stack_sizeEv()
  br label %_ZN4lean14get_stack_sizeEb.exit

_ZN4lean14get_stack_sizeEb.exit:                  ; preds = %bb.f, %bb.g
  %.0.i = phi i64 [ %i.e, %bb.f ], [ %i.f, %bb.g ] ; 2 uses
  %i.g = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_sizeE)
  store i64 %.0.i, ptr %i.g, align 8, !tbaa !15
  %i.h = call noundef ptr @llvm.frameaddress.p0(i32 0)
  %i.i = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.j = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_baseE)
  store i64 %i.i, ptr %i.j, align 8, !tbaa !15
  %i.k = add i64 %i.i, 131072
  %spec.select = call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.0.i)
  %i.l = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL17g_stack_thresholdE)
  store i64 %spec.select, ptr %i.l, align 8, !tbaa !15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN4lean19get_used_stack_sizeEv() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef ptr @llvm.frameaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64
  %0 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_baseE)
  %i.c = load i64, ptr %0, align 8, !tbaa !15
  %i.d = sub i64 %i.c, %i.b
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZN4lean24get_available_stack_sizeEv() local_unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef ptr @llvm.frameaddress.p0(i32 0)
  %i.b = ptrtoint ptr %i.a to i64
  %0 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_baseE)
  %i.c = load i64, ptr %0, align 8, !tbaa !15
  %i.d = sub i64 %i.c, %i.b
  %1 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_sizeE)
  %i.e = load i64, ptr %1, align 8, !tbaa !15
  %.0 = tail call i64 @llvm.usub.sat.i64(i64 %i.e, i64 %i.d)
  ret i64 %.0
}

; Function Attrs: mustprogress noreturn uwtable
define hidden void @_ZN4lean27throw_stack_space_exceptionEPKc(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN4lean21stack_space_exceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN4lean21stack_space_exceptionE, ptr nonnull @_ZN4lean21stack_space_exceptionD2Ev) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.a) #13
  resume { ptr, i32 } %i.b
}

declare void @_ZN4lean21stack_space_exceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean21stack_space_exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean21stack_space_exceptionE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4lean11check_stackEPKc(ptr noundef %0) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN4leanL17g_stack_info_initE) ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !14, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = tail call noundef ptr @llvm.frameaddress.p0(i32 0)
  %.pre1 = ptrtoint ptr %.pre to i64
  %.pre3 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL17g_stack_thresholdE)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 1, !tbaa !14
  %i.d = tail call noundef i64 @_ZN4lean7lthread21get_thread_stack_sizeEv() ; 2 uses
  %i.e = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_sizeE)
  store i64 %i.d, ptr %i.e, align 8, !tbaa !15
  %i.f = tail call noundef ptr @llvm.frameaddress.p0(i32 0)
  %i.g = ptrtoint ptr %i.f to i64                 ; 3 uses
  %1 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL12g_stack_baseE)
  store i64 %i.g, ptr %1, align 8, !tbaa !15
  %i.h = add i64 %i.g, 131072
  %spec.select.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 %i.d)
  %2 = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN4leanL17g_stack_thresholdE) ; 2 uses
  store i64 %spec.select.i, ptr %2, align 8, !tbaa !15
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi4 = phi ptr [ %.pre3, %._crit_edge ], [ %2, %bb.b ]
  %.pre-phi2 = phi i64 [ %.pre1, %._crit_edge ], [ %i.g, %bb.b ]
  %i.i = load i64, ptr %.pre-phi4, align 8, !tbaa !15
  %i.j = icmp ugt i64 %i.i, %.pre-phi2
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %3 = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN4lean21stack_space_exceptionC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN4lean21stack_space_exceptionE, ptr nonnull @_ZN4lean21stack_space_exceptionD2Ev) #14
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %3) #13
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.c
  ret void
}

declare void @_ZN4lean9throwableC2EPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean9exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNK4lean9throwable4whatEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.frameaddress.p0(i32 immarg) #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4lean21stack_space_exceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4lean21stack_space_exceptionE, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZN4lean21stack_space_exceptionD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !21
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #15, !inline_history !24
  br label %_ZN4lean21stack_space_exceptionD2Ev.exit

_ZN4lean21stack_space_exceptionD2Ev.exit:         ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  tail call void @_ZN4lean9throwableD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(72) %0) #13, !inline_history !24
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #15
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4lean21stack_space_exception4whatEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !20
  ret ptr %i.b
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

attributes #0 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"vtable pointer", !3, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"long", !4, i64 0}
!11 = !{!"_ZTS6rlimit", !10, i64 0, !10, i64 8}
!12 = !{!11, !10, i64 0}
!13 = !{!"bool", !4, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!10, !10, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 omnipotent char", !16, i64 0}
!18 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0, !10, i64 8, !4, i64 16}
!20 = !{!19, !17, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
!24 = !{ptr @_ZN4lean21stack_space_exceptionD2Ev}
end_hunk_0
