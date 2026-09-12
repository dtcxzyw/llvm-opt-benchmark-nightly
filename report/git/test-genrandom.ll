Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-genrandom?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"usage: %s <seed_string> [<size>]\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot parse argument '%s'\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 2) i32 @cmd__genrandom(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = add i32 %0, -4
  %or.cond = icmp ult i32 %i.b, -2
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.d = load ptr, ptr %1, align 8, !tbaa !19
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef %i.d) #5 ; 0 uses
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.013 = phi i64 [ 0, %bb.c ], [ %4, %bb.d ]
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.i, %bb.d ]  ; 2 uses
  %2 = mul i64 %.013, 11
  %i.h = load i8, ptr %.0, align 1, !tbaa !20     ; 2 uses
  %3 = zext i8 %i.h to i64
  %4 = add i64 %2, %3                             ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  store i64 -1, ptr %i.a, align 8, !tbaa !23
  %i.j = icmp eq i32 %0, 3
  br i1 %i.j, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.e
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = call i32 @git_parse_ulong(ptr noundef %i.l, ptr noundef nonnull %i.a) #4
  %.not16 = icmp eq i32 %i.m, 0
  br i1 %.not16, label %bb.g, label %.preheader

bb.g:                                             ; preds = %bb.f
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.o = call i32 (ptr, ...) @error_errno(ptr noundef nonnull @.str.1, ptr noundef %i.n) #4 ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %.preheader, %bb.i
  %.1 = phi i64 [ %6, %bb.i ], [ %4, %.preheader ]
  %i.p = load i64, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.q = add i64 %i.p, -1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !23
  %.not17 = icmp eq i64 %i.p, 0
  br i1 %.not17, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %5 = mul i64 %.1, 1103515245
  %6 = add i64 %5, 12345                          ; 2 uses
  %7 = lshr i64 %6, 16
  %8 = trunc i64 %7 to i32
  %i.r = and i32 %8, 255
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.t = call i32 @putc(i32 noundef %i.r, ptr noundef %i.s), !inline_history !13
  %i.u = icmp eq i32 %i.t, -1
  br i1 %i.u, label %.loopexit, label %bb.h, !llvm.loop !14

.loopexit:                                        ; preds = %bb.h, %bb.i, %bb.g, %bb.b
  %.014 = phi i32 [ 1, %bb.b ], [ -1, %bb.g ], [ 0, %bb.h ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare i32 @git_parse_ulong(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = distinct !{!12, !21}
!13 = distinct !{null}
!14 = distinct !{!14, !21}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 omnipotent char", !15, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!"long", !8, i64 0}
!23 = !{!22, !22, i64 0}
end_hunk_0
