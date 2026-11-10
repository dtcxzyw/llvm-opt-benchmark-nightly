Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rio_notifier?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"ssl/rio/rio_notifier.c\00", align 1
@__func__.ossl_rio_notifier_init = private unnamed_addr constant [23 x i8] c"ossl_rio_notifier_init\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"calling socketpair()\00", align 1
@ossl_rio_notifier_signal.ch = internal constant i8 0, align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rio_notifier_init(ptr nofree noundef writeonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = call i32 @socketpair(i32 noundef 1, i32 noundef 526337, i32 noundef 0, ptr noundef nonnull %i.a) #7
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @ERR_new() #7
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @__func__.ossl_rio_notifier_init) #7
  %i.d = tail call ptr @__errno_location() #8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 2, i32 noundef %i.e, ptr noundef nonnull @.str.1) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = load <2 x i32>, ptr %i.a, align 8, !tbaa !8
  store <2 x i32> %i.f, ptr %0, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @socketpair(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @BIO_closesocket(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ossl_rio_notifier_cleanup(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11
  %i.e = tail call i32 @BIO_closesocket(i32 noundef %i.d) #7 ; 0 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !10
  %i.g = tail call i32 @BIO_closesocket(i32 noundef %i.f) #7 ; 0 uses
  store i32 -1, ptr %i.c, align 4, !tbaa !11
  store i32 -1, ptr %0, align 4, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @ossl_rio_notifier_signal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.b = load i32, ptr %i.a, align 4, !tbaa !11
  %i.c = tail call i64 @write(i32 noundef %i.b, ptr noundef nonnull @ossl_rio_notifier_signal.ch, i64 noundef 1) #7
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !8
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %bb.b, %bb.c
  ret i32 1
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rio_notifier_unsignal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %bb.a
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %i.c = call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 16) #7 ; 2 uses
  %i.d = icmp eq i64 %i.c, 16
  br i1 %i.d, label %.critedge.backedge, label %bb.b

bb.b:                                             ; preds = %.critedge
  %i.e = icmp slt i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %.critedge7

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__errno_location() #8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = icmp eq i32 %i.g, 4
  br i1 %i.h, label %.critedge.backedge, label %.critedge2

.critedge.backedge:                               ; preds = %bb.c, %.critedge
  br label %.critedge, !llvm.loop !14

.critedge2:                                       ; preds = %bb.c
  %i.i = tail call i32 @BIO_fd_non_fatal_error(i32 noundef %i.g) #7
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %.critedge7

.critedge7:                                       ; preds = %bb.b, %.critedge2
  br label %bb.d

bb.d:                                             ; preds = %.critedge2, %.critedge7
  %.0 = phi i32 [ 1, %.critedge7 ], [ 0, %.critedge2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

declare i32 @BIO_fd_non_fatal_error(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"rio_notifier_st", !5, i64 0, !5, i64 4}
!10 = !{!9, !5, i64 0}
!11 = !{!9, !5, i64 4}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
end_hunk_0
