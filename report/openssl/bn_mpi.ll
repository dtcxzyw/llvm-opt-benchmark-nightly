Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/bn_mpi?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"crypto/bn/bn_mpi.c\00", align 1
@__func__.BN_mpi2bn = private unnamed_addr constant [10 x i8] c"BN_mpi2bn\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -2147483644, -2147483648) i32 @BN_bn2mpi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %0) #3 ; 3 uses
  %i.b = add nsw i32 %i.a, 7
  %i.c = sdiv i32 %i.b, 8                         ; 2 uses
  %i.d = icmp sgt i32 %i.a, 0
  %i.e = and i32 %i.a, 7
  %i.f = icmp eq i32 %i.e, 0
  %narrow = and i1 %i.d, %i.f                     ; 4 uses
  %i.g = icmp eq ptr %1, null
  br i1 %i.g, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.0 = zext i1 %narrow to i32
  %i.h = add nsw i32 %i.c, %.0                    ; 4 uses
  %2 = lshr i32 %i.h, 24
  %3 = trunc nuw i32 %2 to i8
  store i8 %3, ptr %1, align 1, !tbaa !8
  %4 = lshr i32 %i.h, 16
  %5 = trunc i32 %4 to i8
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %5, ptr %6, align 1, !tbaa !8
  %7 = lshr i32 %i.h, 8
  %8 = trunc i32 %7 to i8
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %8, ptr %9, align 1, !tbaa !8
  %10 = trunc i32 %i.h to i8
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %10, ptr %11, align 1, !tbaa !8
  br i1 %narrow, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.i, align 1, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = zext i1 %narrow to i64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = tail call i32 @BN_bn2bin(ptr noundef %0, ptr noundef nonnull %i.l) #3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !12
  %.not29 = icmp eq i32 %i.o, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !8
  %i.r = or i8 %i.q, -128
  store i8 %i.r, ptr %i.p, align 1, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.pn.in = phi i32 [ %i.c, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.d ]
  %.pn = select i1 %narrow, i32 5, i32 4
  %.026 = add i32 %.pn, %.pn.in
  ret i32 %.026
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @BN_mpi2bn(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !8
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @__func__.BN_mpi2bn) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #3
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %0, align 1, !tbaa !8      ; 2 uses
  %i.d = tail call i32 @llvm.bswap.i32(i32 %i.c)  ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = add nuw nsw i64 %i.e, 4
  %i.g = zext nneg i32 %1 to i64
  %.not33 = icmp eq i64 %i.f, %i.g
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.BN_mpi2bn) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 104, ptr noundef null) #3
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.h, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.i = tail call ptr @BN_new() #3               ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.037 = phi ptr [ %i.i, %bb.g ], [ %2, %bb.f ]  ; 10 uses
  %i.k = icmp eq i32 %i.c, 0
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.l = getelementptr inbounds nuw i8, ptr %.037, i64 16
  store i32 0, ptr %i.l, align 8, !tbaa !12
  %i.m = getelementptr inbounds nuw i8, ptr %.037, i64 8
  store i32 0, ptr %i.m, align 8, !tbaa !13
  br label %bb.n

bb.i:                                             ; preds = %.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !8     ; 2 uses
  %i.p = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.n, i32 noundef %i.d, ptr noundef nonnull %.037) #3
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.h, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call void @BN_free(ptr noundef nonnull %.037) #3
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %.not34 = icmp slt i8 %i.o, 0
  %.lobit = lshr i8 %i.o, 7
  %spec.select = zext nneg i8 %.lobit to i32
  %i.r = getelementptr inbounds nuw i8, ptr %.037, i64 16
  store i32 %spec.select, ptr %i.r, align 8, !tbaa !12
  br i1 %.not34, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.s = tail call i32 @BN_num_bits(ptr noundef nonnull %.037) #3
  %i.t = add nsw i32 %i.s, -1
  %i.u = tail call i32 @BN_clear_bit(ptr noundef nonnull %.037, i32 noundef %i.t) #3 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.j, %bb.k, %bb.g, %bb.h, %bb.e, %bb.c
  %.029 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.j ], [ %.037, %bb.h ], [ null, %bb.g ], [ null, %bb.k ], [ %.037, %bb.m ], [ %.037, %bb.l ]
  ret ptr %.029
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @BN_new() local_unnamed_addr #1

declare ptr @BN_bin2bn(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

declare i32 @BN_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!8 = !{!4, !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 long", !9, i64 0}
!11 = !{!"bignum_st", !10, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!12 = !{!11, !5, i64 16}
!13 = !{!11, !5, i64 8}
end_hunk_0
