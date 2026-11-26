Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/spec_allocate_proxy?download=true
inline.NumInlined: 72
inline.NumDeleted: 67
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN3pro2v45proxyI3AnyED2EvQooeqsrT_15destructibilityLNS0_16constraint_levelE1EeqsrS4_15destructibilityLS5_2E.exit:
  %0 = tail call noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #4, !noalias !13 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(400) %0, i8 0, i64 400, i1 false), !noalias !13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 400) #5
  ret i32 0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { builtin allocsize(0) }
attributes #5 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, i1 true, !"_ZN3pro2v414allocate_proxyITkNS0_6facadeE3AnySt5arrayIiLm100EESaIS4_EJEEENS0_5proxyIT_EERKT1_DpOT2_Qsr3stdE18is_constructible_vIT0_DpSC_E"}
!10 = distinct !{!10, !9, !"_ZN3pro2v414allocate_proxyITkNS0_6facadeE3AnySt5arrayIiLm100EESaIS4_EJEEENS0_5proxyIT_EERKT1_DpOT2_Qsr3stdE18is_constructible_vIT0_DpSC_E: argument 0"}
!11 = distinct !{!11, i1 true, !"_ZN3pro2v46detail19allocate_proxy_implI3AnySt5arrayIiLm100EESaIS5_EJEEENS0_5proxyIT_EERKT1_DpOT2_"}
!12 = distinct !{!12, !11, !"_ZN3pro2v46detail19allocate_proxy_implI3AnySt5arrayIiLm100EESaIS5_EJEEENS0_5proxyIT_EERKT1_DpOT2_: argument 0"}
!13 = !{!12, !10}
end_hunk_0
