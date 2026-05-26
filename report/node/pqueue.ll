inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"../../deps/openssl/openssl/ssl/pqueue.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @pitem_new(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_malloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 20) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.d, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.e, align 8, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pitem_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 33) #8
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @pqueue_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 16, ptr noundef nonnull @.str, i32 noundef 38) #8
  ret ptr %i.a
}

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pqueue_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 45) #8
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @pqueue_insert(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 1
  %i.d = load i64, ptr %1, align 1
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.c)
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.d)
  %i.g = tail call i32 @llvm.ucmp.i32.i64(i64 %i.e, i64 %i.f) ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.preheader._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !14
  br label %.thread

.preheader:                                       ; preds = %bb.e
  %i.i = load i64, ptr %i.t, align 1
  %i.j = load i64, ptr %1, align 1
  %i.k = tail call i64 @llvm.bswap.i64(i64 %i.i)
  %i.l = tail call i64 @llvm.bswap.i64(i64 %i.j)
  %i.m = tail call i32 @llvm.ucmp.i32.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !16

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %.02638.lcssa = phi ptr [ %i.a, %.preheader.preheader ], [ %i.t, %.preheader ]
  %.02737.lcssa = phi ptr [ null, %.preheader.preheader ], [ %.0263856, %.preheader ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %.02638.lcssa, ptr %i.o, align 8, !tbaa !13
  %i.p = icmp eq ptr %.02737.lcssa, null
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader._crit_edge
  store ptr %1, ptr %0, align 8, !tbaa !14
  br label %.thread

bb.d:                                             ; preds = %.preheader._crit_edge
  %i.q = getelementptr inbounds nuw i8, ptr %.02737.lcssa, i64 16
  store ptr %1, ptr %i.q, align 8, !tbaa !13
  br label %.thread

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %i.r = phi i32 [ %i.m, %.preheader ], [ %i.g, %.preheader.preheader ]
  %.0263856 = phi ptr [ %i.t, %.preheader ], [ %i.a, %.preheader.preheader ] ; 3 uses
  %.not32 = icmp eq i32 %i.r, 0
  br i1 %.not32, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.0263856, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !13   ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.f, label %.preheader, !llvm.loop !16

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.0263856, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr null, ptr %i.v, align 8, !tbaa !13
  store ptr %1, ptr %i.u, align 8, !tbaa !13
  br label %.thread

.thread:                                          ; preds = %.lr.ph, %bb.d, %bb.c, %bb.f, %bb.b
  %.2 = phi ptr [ %1, %bb.b ], [ %1, %bb.d ], [ %1, %bb.f ], [ %1, %bb.c ], [ null, %.lr.ph ]
  ret ptr %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @pqueue_peek(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pqueue_pop(ptr noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13
  store ptr %i.c, ptr %0, align 8, !tbaa !14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pqueue_find(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  %.013 = phi ptr [ %i.d, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.013, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = load i64, ptr %.013, align 1
  %i.f = load i64, ptr %1, align 1
  %i.g = icmp ne i64 %i.e, %i.f
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.preheader, !llvm.loop !18

bb.c:                                             ; preds = %bb.b, %.preheader
  %.0 = phi ptr [ null, %.preheader ], [ %.013, %bb.b ]
  %i.j = load i64, ptr %.013, align 1
  %i.k = load i64, ptr %1, align 1
  %i.l = icmp ne i64 %i.j, %i.k
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  %spec.select = select i1 %i.n, ptr %.013, ptr %.0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.014 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.c ]
  ret ptr %.014
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @pqueue_iterator(ptr noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @pqueue_next(ptr noundef captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  store ptr %i.e, ptr %0, align 8, !tbaa !19
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @pqueue_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.045 = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %.not6 = icmp eq ptr %.045, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.048 = phi ptr [ %.04, %.lr.ph ], [ %.045, %bb.a ]
  %.07 = phi i64 [ %i.a, %.lr.ph ], [ 0, %bb.a ]
  %i.a = add i64 %.07, 1                          ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %.04 = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %.04, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.a, %.lr.ph ]
  ret i64 %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 8}
!10 = !{!"pitem_st", !7, i64 0, !11, i64 8, !12, i64 16}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8pitem_st", !11, i64 0}
!13 = !{!10, !12, i64 16}
!14 = !{!15, !12, i64 0}
!15 = !{!"pqueue_st", !12, i64 0, !6, i64 8}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = distinct !{!18, !17}
!19 = !{!12, !12, i64 0}
!20 = distinct !{!20, !17}
end_hunk_0
