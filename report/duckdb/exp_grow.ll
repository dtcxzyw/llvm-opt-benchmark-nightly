Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/exp_grow?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @duckdb_je_exp_grow_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) local_unnamed_addr #0 !guid !7 {
bb.a:
  store i32 31, ptr %0, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 198, ptr %i.a, align 4, !tbaa !10
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{i64 6759185359557761659}
!8 = !{!"exp_grow_s", !5, i64 0, !5, i64 4}
!9 = !{!8, !5, i64 0}
!10 = !{!8, !5, i64 4}
end_hunk_0
