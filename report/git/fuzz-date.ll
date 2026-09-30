Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/fuzz-date?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.date_mode = type { i32, i32, ptr }

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @LLVMFuzzerTestOneInput(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.date_mode, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.b = icmp ult i64 %1, 5
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = lshr i8 %i.d, 4
  %.lobit = and i8 %i.e, 1
  %i.f = zext nneg i8 %.lobit to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.h = load i8, ptr %i.c, align 1, !tbaa !12
  %i.i = urem i8 %i.h, 9                          ; 2 uses
  %i.j = zext nneg i8 %i.i to i32
  %i.k = icmp samesign ugt i8 %i.i, 6
  %i.l = zext i1 %i.k to i32
  %spec.select = add nuw nsw i32 %i.l, %i.j       ; 2 uses
  store i32 %spec.select, ptr %i.a, align 4, !tbaa !13
  %3 = load i16, ptr %i.g, align 1
  %4 = tail call i16 @llvm.bswap.i16(i16 %3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = add i64 %1, -4
  %i.o = tail call ptr @xmemdupz(ptr noundef nonnull %i.m, i64 noundef %i.n) #5 ; 2 uses
  %i.p = call i64 @approxidate_careful(ptr noundef %i.o, ptr noundef nonnull %i.a) #5
  call void @free(ptr noundef %i.o) #5
  %i.q = call { i64, ptr } @date_mode_from_type(i32 noundef %spec.select) #5 ; 2 uses
  %i.r = extractvalue { i64, ptr } %i.q, 0
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 2 uses
  store i64 %i.r, ptr %2, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.s, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.f, ptr %i.t, align 4, !tbaa !18
  %i.u = sext i16 %4 to i32
  %i.v = load i64, ptr %2, align 8
  %i.w = call ptr @show_date(i64 noundef %i.p, i32 noundef %i.u, i64 %i.v, ptr %i.s) #5 ; 0 uses
  call void @date_mode_release(ptr noundef nonnull %2) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @approxidate_careful(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare { i64, ptr } @date_mode_from_type(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @show_date(i64 noundef, i32 noundef, i64, ptr) local_unnamed_addr #2

declare void @date_mode_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = !{!8, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"date_mode", !9, i64 0, !9, i64 4, !15, i64 8}
!18 = !{!17, !9, i64 4}
end_hunk_0
