begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"../../deps/openssl/openssl/crypto/ec/ec_deprecated.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @EC_POINT_point2bn(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  %i.b = call i64 @EC_POINT_point2buf(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.a, ptr noundef %4) #3 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = trunc i64 %i.b to i32
  %i.f = call ptr @BN_bin2bn(ptr noundef %i.d, i32 noundef %i.e, ptr noundef %3) #3
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @CRYPTO_free(ptr noundef %i.g, ptr noundef nonnull @.str, i32 noundef 36) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @EC_POINT_point2buf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @EC_POINT_bn2point(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %1) #3 ; 2 uses
  %i.b = add nsw i32 %i.a, 7
  %i.c = sdiv i32 %i.b, 8
  %.off = add i32 %i.a, 14
  %i.d = icmp ult i32 %.off, 15
  %narrow = select i1 %i.d, i32 1, i32 %i.c       ; 2 uses
  %spec.store.select = sext i32 %narrow to i64    ; 2 uses
  %i.e = tail call noalias ptr @CRYPTO_malloc(i64 noundef %spec.store.select, ptr noundef nonnull @.str, i32 noundef 50) #3 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @BN_bn2binpad(ptr noundef %1, ptr noundef nonnull %i.e, i32 noundef %narrow) #3
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @EC_POINT_new(ptr noundef %0) #3 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.j, %bb.d ], [ %2, %bb.c ]    ; 4 uses
  %i.l = tail call i32 @EC_POINT_oct2point(ptr noundef %0, ptr noundef nonnull %.0, ptr noundef nonnull %i.e, i64 noundef %spec.store.select, ptr noundef %3) #3
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %.not25 = icmp eq ptr %.0, %2
  br i1 %.not25, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @EC_POINT_clear_free(ptr noundef nonnull %.0) #3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.b
  %.sink = phi i32 [ 69, %bb.f ], [ 60, %bb.d ], [ 54, %bb.b ], [ 69, %bb.g ], [ 73, %bb.e ]
  %.021.ph = phi ptr [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.b ], [ null, %bb.g ], [ %.0, %bb.e ]
  tail call void @CRYPTO_free(ptr noundef nonnull %i.e, ptr noundef nonnull @.str, i32 noundef %.sink) #3
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %.021 = phi ptr [ null, %bb.a ], [ %.021.ph, %.sink.split ]
  ret ptr %.021
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @BN_bn2binpad(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EC_POINT_new(ptr noundef) local_unnamed_addr #2

declare i32 @EC_POINT_oct2point(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @EC_POINT_clear_free(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !8, i64 0}
end_hunk_0
