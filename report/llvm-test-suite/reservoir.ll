begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ResvSize = internal unnamed_addr global i32 0, align 4
@ResvMax = internal unnamed_addr global i32 0, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @ResvFrameBegin(ptr noundef readonly captures(none) %0, ptr noundef readnone captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i32, ptr @ResvSize, align 4, !tbaa !4
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr @ResvSize, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.d = phi i32 [ %.pre, %._crit_edge ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14
  %i.g = icmp eq i32 %i.f, 1
  %. = select i1 %i.g, i32 4088, i32 2040
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.i = load i32, ptr %i.h, align 8, !tbaa !15
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 7680)
  %i.j = sub nsw i32 7680, %4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load i32, ptr %i.k, align 8, !tbaa !16
  %.not = icmp eq i32 %i.l, 0
  %i.m = tail call i32 @llvm.umin.i32(i32 %i.j, i32 %.)
  %spec.store.select10 = select i1 %.not, i32 %i.m, i32 0
  store i32 %spec.store.select10, ptr @ResvMax, align 4
  %i.n = mul nsw i32 %i.i, %2
  %i.o = add nsw i32 %i.n, %i.d
  ret i32 %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ResvMaxBits(i32 noundef %0, ptr noundef writeonly captures(none) initializes((0, 4)) %1, ptr noundef writeonly captures(none) initializes((0, 4)) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @ResvSize, align 4, !tbaa !4 ; 3 uses
  %i.b = load i32, ptr @ResvMax, align 4, !tbaa !4 ; 2 uses
  %i.c = mul nsw i32 %i.b, 9
  %i.d = udiv i32 %i.c, 10                        ; 2 uses
  %i.e = icmp sgt i32 %i.a, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = sub nsw i32 %i.a, %i.d                   ; 2 uses
  %i.g = add nsw i32 %i.f, %0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = sitofp i32 %0 to double
  %i.i = fdiv double %i.h, 1.520000e+01
  %i.j = fptosi double %i.i to i32
  %i.k = sub nsw i32 %0, %i.j
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i32 [ %i.k, %bb.c ], [ %i.g, %bb.b ]
  %.0 = phi i32 [ 0, %bb.c ], [ %i.f, %bb.b ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !4
  %i.l = mul nsw i32 %i.b, 6
  %i.m = udiv i32 %i.l, 10
  %. = tail call i32 @llvm.smin.i32(i32 %i.a, i32 %i.m)
  %i.n = sub nsw i32 %., %.0
  %storemerge14 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  store i32 %storemerge14, ptr %2, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ResvAdjust(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef readnone captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = sdiv i32 %3, %i.b
  %i.d = load i32, ptr %1, align 8, !tbaa !18
  %i.e = sub i32 %i.c, %i.d
  %i.f = load i32, ptr @ResvSize, align 4, !tbaa !4
  %i.g = add i32 %i.e, %i.f
  store i32 %i.g, ptr @ResvSize, align 4, !tbaa !4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ResvFrameEnd(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((8, 12)) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.b = load i32, ptr %i.a, align 4, !tbaa !17
  %i.c = icmp eq i32 %i.b, 2
  %.not = trunc i32 %2 to i1
  %or.cond.not = and i1 %i.c, %.not
  %.pre = load i32, ptr @ResvSize, align 4, !tbaa !4
  %i.d = zext i1 %or.cond.not to i32
  %spec.select = add nsw i32 %.pre, %i.d          ; 2 uses
  %i.e = load i32, ptr @ResvMax, align 4, !tbaa !4 ; 2 uses
  %i.f = sub nsw i32 %spec.select, %i.e
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %i.g = tail call i32 @llvm.smin.i32(i32 %spec.select, i32 %i.e) ; 2 uses
  %i.h = srem i32 %i.g, 8                         ; 2 uses
  %i.i = add nsw i32 %spec.store.select, %i.h
  %i.j = sub nsw i32 %i.g, %i.h
  store i32 %i.j, ptr @ResvSize, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %i.k, align 8, !tbaa !21
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 168}
!9 = !{!"", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !11, i64 128, !11, i64 136, !5, i64 144, !5, i64 148, !13, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !10, i64 168, !10, i64 176, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !13, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !13, i64 232, !13, i64 236, !13, i64 240, !13, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276}
!10 = !{!"long", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"float", !6, i64 0}
!14 = !{!9, !5, i64 192}
!15 = !{!9, !5, i64 200}
!16 = !{!9, !5, i64 72}
!17 = !{!9, !5, i64 204}
!18 = !{!19, !5, i64 0}
!19 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !6, i64 32, !6, i64 44, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !20, i64 96, !6, i64 104}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!22, !5, i64 8}
!22 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !6, i64 12, !6, i64 48}
end_hunk_0
