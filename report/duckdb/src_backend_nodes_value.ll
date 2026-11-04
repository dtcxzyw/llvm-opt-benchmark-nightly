Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/src_backend_nodes_value?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery11makeIntegerEl(i64 noundef %0) local_unnamed_addr #0 !guid !11 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 16, i32 noundef 217) ; 3 uses
  store i32 218, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.b, align 8, !tbaa !10
  ret ptr %i.a
}

declare noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery9makeFloatEPc(ptr noundef %0) local_unnamed_addr #0 !guid !12 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 16, i32 noundef 217) ; 3 uses
  store i32 219, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !10
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN17duckdb_libpgquery10makeStringEPKc(ptr noundef %0) local_unnamed_addr #0 !guid !13 {
bb.a:
  %i.a = tail call noundef ptr @_ZN17duckdb_libpgquery7newNodeEmNS_9PGNodeTagE(i64 noundef 16, i32 noundef 217) ; 3 uses
  store i32 220, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.b, align 8, !tbaa !10
  ret ptr %i.a
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!5, !5, i64 0}
!7 = !{!"_ZTSN17duckdb_libpgquery9PGNodeTagE", !4, i64 0}
!8 = !{!"_ZTSN17duckdb_libpgquery7PGValueE", !7, i64 0, !4, i64 8}
!9 = !{!8, !7, i64 0}
!10 = !{!4, !4, i64 0}
!11 = !{i64 4844947828182754410}
!12 = !{i64 2577089623488133087}
!13 = !{i64 735229279299950467}
end_hunk_0
