Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/t_pkey?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%02x%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s %s%lu (%s0x%lx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"crypto/asn1/t_pkey.c\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c" (Negative)\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_buf_print(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not18 = icmp eq i64 %2, 0
  br i1 %.not18, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = add i64 %2, -1                           ; 2 uses
  %i.b = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %3, i32 noundef 128) #2
  %.not16.peel = icmp eq i32 %i.b, 0
  br i1 %.not16.peel, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1, !tbaa !9
  %i.d = zext i8 %i.c to i32
  %i.e = icmp eq i64 %i.a, 0
  %i.f = select i1 %i.e, ptr @.str.2, ptr @.str.3
  %i.g = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.d, ptr noundef nonnull %i.f) #2
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %exitcond.peel.not = icmp eq i64 %2, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

bb.e:                                             ; preds = %bb.h
  %i.i = add nuw i64 %.017, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !8

.peel.next:                                       ; preds = %bb.d, %bb.e
  %.017 = phi i64 [ %i.i, %bb.e ], [ 1, %bb.d ]   ; 4 uses
  %i.j = and i64 %.017, 15
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.peel.next
  %i.l = tail call i32 @BIO_puts(ptr noundef %0, ptr noundef nonnull @.str) #2
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %3, i32 noundef 128) #2
  %.not16 = icmp eq i32 %i.n, 0
  br i1 %.not16, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.peel.next
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %.017
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i8 %i.p to i32
  %i.r = icmp eq i64 %.017, %i.a
  %i.s = select i1 %i.r, ptr @.str.2, ptr @.str.3
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.1, i32 noundef %i.q, ptr noundef nonnull %i.s) #2
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %.loopexit, label %bb.e

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.a
  %i.v = tail call i32 @BIO_write(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 1) #2
  %i.w = icmp sgt i32 %i.v, 0
  %. = zext i1 %i.w to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.g, %bb.f, %bb.b, %bb.c, %._crit_edge
  %.014 = phi i32 [ %., %._crit_edge ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.h ]
  ret i32 %.014
}

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BIO_indent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ASN1_bn_print(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @BN_is_negative(ptr noundef nonnull %2) #2
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = select i1 %.not, ptr @.str.2, ptr @.str.4 ; 2 uses
  %i.d = tail call i32 @BIO_indent(ptr noundef %0, i32 noundef %4, i32 noundef 128) #2
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @BN_is_zero(ptr noundef nonnull %2) #2
  %.not33 = icmp eq i32 %i.e, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %1) #2
  %i.g = icmp sgt i32 %i.f, 0
  %. = zext i1 %i.g to i32
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.h = tail call i32 @BN_num_bits(ptr noundef nonnull %2) #2
  %i.i = icmp slt i32 %i.h, 65
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @bn_get_words(ptr noundef nonnull %2) #2
  %i.k = load i64, ptr %i.j, align 8, !tbaa !13
  %i.l = tail call ptr @bn_get_words(ptr noundef nonnull %2) #2
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef %1, ptr noundef nonnull %i.c, i64 noundef %i.k, ptr noundef nonnull %i.c, i64 noundef %i.m) #2
  %i.o = icmp sgt i32 %i.n, 0
  %.34 = zext i1 %i.o to i32
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.p = tail call i32 @BN_num_bits(ptr noundef nonnull %2) #2
  %i.q = add nsw i32 %i.p, 7
  %i.r = sdiv i32 %i.q, 8
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.s, ptr noundef nonnull @.str.7, i32 noundef 75) #2 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = select i1 %.not, ptr @.str.2, ptr @.str.9
  %i.w = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef %1, ptr noundef nonnull %i.v) #2
  %i.x = icmp slt i32 %i.w, 1
  br i1 %i.x, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = tail call i32 @BN_bn2bin(ptr noundef nonnull %2, ptr noundef nonnull %i.t) #2
  %i.z = sext i32 %i.y to i64
  %i.aa = add nsw i32 %4, 4
  %i.ab = tail call i32 @ASN1_buf_print(ptr noundef %0, ptr noundef nonnull %i.t, i64 noundef %i.z, i32 noundef %i.aa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.h ], [ %i.ab, %bb.i ]
  tail call void @CRYPTO_clear_free(ptr noundef %i.t, i64 noundef %i.s, ptr noundef nonnull @.str.7, i32 noundef 88) #2
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.j
  %.029 = phi i32 [ 1, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ %.34, %bb.f ], [ %.0, %bb.j ]
  ret i32 %.029
}

declare i32 @BN_is_negative(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_zero(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare ptr @bn_get_words(ptr noundef) local_unnamed_addr #1

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!8 = distinct !{!8, !10, !11}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.peeled.count", i32 1}
!12 = !{!"long", !4, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
