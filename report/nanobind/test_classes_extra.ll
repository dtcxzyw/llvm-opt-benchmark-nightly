Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nanobind/original/test_classes_extra?download=true
inline.NumInlined: 52
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.NeverDestruct = type { %"class.std::unique_ptr" }
%"class.std::unique_ptr" = type { %"struct.std::__uniq_ptr_data" }
%"struct.std::__uniq_ptr_data" = type { %"class.std::__uniq_ptr_impl" }
%"class.std::__uniq_ptr_impl" = type { %"class.std::tuple" }
%"class.std::tuple" = type { %"struct.std::_Tuple_impl" }
%"struct.std::_Tuple_impl" = type { %"struct.std::_Head_base.1" }
%"struct.std::_Head_base.1" = type { ptr }

$_ZN13NeverDestructD2Ev = comdat any

@_ZZN13NeverDestruct4makeEvE2nd = internal global %class.NeverDestruct zeroinitializer, align 8
@_ZGVZN13NeverDestruct4makeEvE2nd = internal global i64 0, align 8
@__dso_handle = external hidden global i8

@_ZN13NeverDestructC1Ev = hidden unnamed_addr alias void (ptr), ptr @_ZN13NeverDestructC2Ev

; Function Attrs: mustprogress optsize memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_ZN13NeverDestructC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt10unique_ptrIN13NeverDestruct6NDImplESt14default_deleteIS1_EED2Ev.exit:
  store ptr null, ptr %0, align 8, !tbaa !11
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #8 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !13, !noalias !20
  store ptr %i.a, ptr %0, align 8, !tbaa !14
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_ZNK13NeverDestruct3varEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = load i32, ptr %i.a, align 4, !tbaa !13
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN13NeverDestruct7set_varEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  store i32 %1, ptr %i.a, align 4, !tbaa !13
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN13NeverDestruct4makeEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN13NeverDestruct4makeEvE2nd acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN13NeverDestruct4makeEvE2nd) #9
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN13NeverDestruct4makeEvE2nd, align 8, !tbaa !11
  %i.d = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #8
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 4, !tbaa !13, !noalias !27
  store ptr %i.d, ptr @_ZZN13NeverDestruct4makeEvE2nd, align 8, !tbaa !14
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN13NeverDestructD2Ev, ptr nonnull @_ZZN13NeverDestruct4makeEvE2nd, ptr nonnull @__dso_handle) #9 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN13NeverDestruct4makeEvE2nd) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  ret ptr @_ZZN13NeverDestruct4makeEvE2nd

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN13NeverDestruct4makeEvE2nd) #9
  resume { ptr, i32 } %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind optsize uwtable
define linkonce_odr hidden void @_ZN13NeverDestructD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN13NeverDestruct6NDImplESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN13NeverDestruct6NDImplEEclEPS1_.exit.i

_ZNKSt14default_deleteIN13NeverDestruct6NDImplEEclEPS1_.exit.i: ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #10
  br label %_ZNSt10unique_ptrIN13NeverDestruct6NDImplESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN13NeverDestruct6NDImplESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN13NeverDestruct6NDImplEEclEPS1_.exit.i
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

attributes #0 = { mustprogress optsize memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { inlinehint mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { builtin optsize allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTSN13NeverDestruct6NDImplE", !8, i64 0}
!10 = !{!"_ZTSSt10_Head_baseILm0EPN13NeverDestruct6NDImplELb0EE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN13NeverDestruct6NDImplE", !5, i64 0}
!13 = !{!12, !5, i64 0}
!14 = !{!9, !9, i64 0}
!18 = distinct !{!18, i1 false, !"_ZSt11make_uniqueIN13NeverDestruct6NDImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!19 = distinct !{!19, !18, !"_ZSt11make_uniqueIN13NeverDestruct6NDImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!20 = !{!19}
!23 = !{!"branch_weights", i32 1, i32 1048575}
!25 = distinct !{!25, i1 false, !"_ZSt11make_uniqueIN13NeverDestruct6NDImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!26 = distinct !{!26, !25, !"_ZSt11make_uniqueIN13NeverDestruct6NDImplEJEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!27 = !{!26}
end_hunk_0
