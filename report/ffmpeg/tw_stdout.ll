Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/tw_stdout?download=true
inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"stdoutwriter\00", align 1
@avtextwriter_stdout = internal constant { ptr, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr } { ptr @stdoutwriter_class, i32 8, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr @stdout_w8, ptr @stdout_put_str, ptr @stdout_vprintf }, align 8
@stdoutwriter_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @stdoutwriter_get_name, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @avtextwriter_create_stdout(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @avtextwriter_context_open(ptr noundef %0, ptr noundef nonnull @avtextwriter_stdout) #6
  ret i32 %i.a
}

declare i32 @avtextwriter_context_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nofree nounwind uwtable
define internal void @stdout_w8(ptr nofree readnone captures(none) %0, i32 noundef %1) #2 {
bb.a:
  %putchar = tail call i32 @putchar(i32 %1)       ; 0 uses
  ret void
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal void @stdout_put_str(ptr nofree readnone captures(none) %0, ptr noundef %1) #2 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %1) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nofree nounwind uwtable
define internal void @stdout_vprintf(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr @stdout, align 8, !tbaa !14, !noalias !18
  %i.b = tail call i32 @vfprintf(ptr noundef %i.a, ptr noundef %1, ptr noundef %2) #6, !inline_history !11 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @stdoutwriter_get_name(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!11 = distinct !{null}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!14 = !{!13, !13, i64 0}
!16 = distinct !{!16, i1 false, !"vprintf"}
!17 = distinct !{!17, !16, !"vprintf: argument 0"}
!18 = !{!17}
end_hunk_0
