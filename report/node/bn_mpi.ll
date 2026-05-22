begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"../../deps/openssl/openssl/crypto/bn/bn_mpi.c\00", align 1
@__func__.BN_mpi2bn = private unnamed_addr constant [10 x i8] c"BN_mpi2bn\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2147483644, -2147483648) i32 @BN_bn2mpi(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @BN_num_bits(ptr noundef %0) #2 ; 3 uses
  %i.b = add nsw i32 %i.a, 7
  %i.c = sdiv i32 %i.b, 8                         ; 2 uses
  %2 = and i32 %i.a, 7
  %3 = icmp eq i32 %2, 0
  %.narrow.narrow.narrow.narrow.narrow.narrow.narrow = icmp sgt i32 %i.a, 7
  %narrow = and i1 %.narrow.narrow.narrow.narrow.narrow.narrow.narrow, %3 ; 4 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.026 = zext i1 %narrow to i32
  %i.e = add nsw i32 %i.c, %.026                  ; 4 uses
  %i.f = lshr i32 %i.e, 24
  %i.g = trunc nuw i32 %i.f to i8
  store i8 %i.g, ptr %1, align 1, !tbaa !9
  %i.h = lshr i32 %i.e, 16
  %i.i = trunc i32 %i.h to i8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !9
  %i.k = lshr i32 %i.e, 8
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.m, align 1, !tbaa !9
  %i.n = trunc i32 %i.e to i8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 %i.n, ptr %i.o, align 1, !tbaa !9
  br i1 %narrow, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.p, align 1, !tbaa !9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = zext i1 %narrow to i64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = tail call i32 @BN_bn2bin(ptr noundef %0, ptr noundef nonnull %i.s) #2 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !10
  %.not29 = icmp eq i32 %i.v, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9
  %i.y = or i8 %i.x, -128
  store i8 %i.y, ptr %i.w, align 1, !tbaa !9
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.pn.in = phi i32 [ %i.c, %bb.a ], [ %i.t, %bb.e ], [ %i.t, %bb.d ]
  %.pn = select i1 %narrow, i32 5, i32 4
  %.0 = add i32 %.pn, %.pn.in
  ret i32 %.0
}

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @BN_mpi2bn(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 4
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %.not = icmp sgt i8 %i.b, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 49, ptr noundef nonnull @__func__.BN_mpi2bn) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 106, ptr noundef null) #2
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.c = zext nneg i8 %i.b to i64
  %i.d = shl nuw nsw i64 %i.c, 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !9
  %i.g = zext i8 %i.f to i64
  %i.h = shl nuw nsw i64 %i.g, 16
  %i.i = or disjoint i64 %i.h, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 8
  %i.n = or disjoint i64 %i.i, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = zext i8 %i.p to i64
  %i.r = or disjoint i64 %i.n, %i.q               ; 3 uses
  %i.s = add nuw nsw i64 %i.r, 4
  %i.t = zext nneg i32 %1 to i64
  %.not33 = icmp eq i64 %i.s, %i.t
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.BN_mpi2bn) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 3, i32 noundef 104, ptr noundef null) #2
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  %i.u = icmp eq ptr %2, null                     ; 2 uses
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.v = tail call ptr @BN_new() #2               ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.f, %bb.g
  %.037 = phi ptr [ %i.v, %bb.g ], [ %2, %bb.f ]  ; 10 uses
  %i.x = icmp eq i64 %i.r, 0
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %.037, i64 16
  store i32 0, ptr %i.y, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %.037, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !14
  br label %bb.n

bb.i:                                             ; preds = %.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !9   ; 2 uses
  %i.ac = trunc nuw nsw i64 %i.r to i32
  %i.ad = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.aa, i32 noundef %i.ac, ptr noundef nonnull %.037) #2
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.u, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  tail call void @BN_free(ptr noundef nonnull %.037) #2
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %.not34 = icmp slt i8 %i.ab, 0
  %.lobit = lshr i8 %i.ab, 7
  %spec.select = zext nneg i8 %.lobit to i32
  %i.af = getelementptr inbounds nuw i8, ptr %.037, i64 16
  store i32 %spec.select, ptr %i.af, align 8, !tbaa !10
  br i1 %.not34, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call i32 @BN_num_bits(ptr noundef nonnull %.037) #2
  %i.ah = add nsw i32 %i.ag, -1
  %i.ai = tail call i32 @BN_clear_bit(ptr noundef nonnull %.037, i32 noundef %i.ah) #2 ; 0 uses
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

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{!11, !6, i64 16}
!11 = !{!"bignum_st", !12, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!12 = !{!"p1 long", !13, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!11, !6, i64 8}
end_hunk_0
