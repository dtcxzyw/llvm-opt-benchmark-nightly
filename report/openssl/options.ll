Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/options?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [35 x i8] c"assertion failed: n < sizeof(used)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"test/testutil/options.c\00", align 1
@used = internal unnamed_addr global [100 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [46 x i8] c"Warning ignored command-line argument %d: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Warning arguments %d and later unchecked\0A\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @test_skip_common_options() local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.a = tail call i32 @opt_next() #6
  switch i32 %i.a, label %.loopexit.loopexit [
    i32 0, label %.loopexit
    i32 500, label %.backedge
    i32 501, label %.backedge
    i32 502, label %.backedge
    i32 503, label %.backedge
    i32 504, label %.backedge
    i32 505, label %.backedge
  ]

.backedge:                                        ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.b, !llvm.loop !13

.loopexit.loopexit:                               ; preds = %bb.b
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %.loopexit.loopexit
  %.0 = phi i32 [ 0, %.loopexit.loopexit ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @opt_next() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i64 -2147483648, 2147483648) i64 @test_get_argument_count() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @opt_num_rest() #6
  %i.b = sext i32 %i.a to i64
  ret i64 %i.b
}

declare i32 @opt_num_rest() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @test_get_argument(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opt_rest() #6             ; 2 uses
  %i.b = icmp ult i64 %0, 400
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @OPENSSL_die(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 42) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %0 to i32
  %i.d = tail call i32 @opt_num_rest() #6
  %i.e = icmp sle i32 %i.d, %i.c
  %i.f = icmp eq ptr %i.a, null
  %or.cond = select i1 %i.e, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @used, i64 %0
  store i32 1, ptr %i.g, align 4, !tbaa !9
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %0
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

declare ptr @opt_rest() local_unnamed_addr #2

; Function Attrs: noreturn
declare void @OPENSSL_die(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @opt_check_usage() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @opt_rest() #6
  %i.b = tail call i32 @opt_num_rest() #6         ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 100) ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %. to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr @used, i64 %indvars.iv
  %i.e = load i32, ptr %i.d, align 4, !tbaa !9
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !12
  %i.i = trunc nuw nsw i64 %indvars.iv to i32
  %i.j = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.2, i32 noundef %i.i, ptr noundef %i.h) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.011.lcssa = phi i32 [ 0, %bb.a ], [ %., %bb.c ] ; 2 uses
  %0 = icmp slt i32 %.011.lcssa, %i.b
  br i1 %0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.k = tail call i32 (ptr, ...) @test_printf_stderr(ptr noundef nonnull @.str.3, i32 noundef %.011.lcssa) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  ret void
}

declare i32 @test_printf_stderr(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @opt_printf_stderr(ptr noundef %0, ...) local_unnamed_addr #0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call i32 @test_vprintf_stderr(ptr noundef %0, ptr noundef nonnull %1) #6
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

declare i32 @test_vprintf_stderr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!5, !5, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = distinct !{!13, !8}
!14 = distinct !{!14, !8}
end_hunk_0
