inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [60 x i8] c"../../deps/openssl/openssl/providers/common/securitycheck.c\00", align 1
@__func__.ossl_rsa_key_op_get_protect = private unnamed_addr constant [28 x i8] c"ossl_rsa_key_op_get_protect\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"operation: %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid operation: %d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_key_op_get_protect(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.split, label %bb.f

.split:                                           ; preds = %bb.a
  %i.c = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %1, i1 true)
  switch i32 %i.c, label %bb.f [
    i32 4, label %bb.b
    i32 14, label %bb.b
    i32 5, label %bb.g
    i32 15, label %bb.g
    i32 12, label %bb.c
    i32 9, label %bb.c
    i32 6, label %bb.d
    i32 13, label %bb.d
    i32 10, label %bb.d
  ]

bb.b:                                             ; preds = %.split, %.split
  br label %bb.g

bb.c:                                             ; preds = %.split, %.split
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.split, %.split, %.split
  %.0 = phi i32 [ 1, %bb.c ], [ 0, %.split ], [ 0, %.split ], [ 0, %.split ]
  %i.d = tail call i32 @RSA_test_flags(ptr noundef %0, i32 noundef 61440) #5
  %i.e = icmp eq i32 %i.d, 4096
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 47, ptr noundef nonnull @__func__.ossl_rsa_key_op_get_protect) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 178, ptr noundef nonnull @.str.1, i32 noundef %1) #5
  br label %bb.h

bb.f:                                             ; preds = %bb.a, %.split
  tail call void @ERR_new() #5
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.ossl_rsa_key_op_get_protect) #5
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 786691, ptr noundef nonnull @.str.2, i32 noundef %1) #5
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %.split, %.split, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ 0, %.split ], [ 0, %.split ], [ %.0, %bb.d ]
  store i32 %.1, ptr %2, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.06 = phi i32 [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.e ]
  ret i32 %.06
}

declare i32 @RSA_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_rsa_check_key_size(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RSA_bits(ptr noundef %0) #5 ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %i.a, 2048
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %i.a, 1024
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @RSA_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_kdf_check_key_size(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = icmp ugt i64 %i.a, 111
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @ossl_mac_check_key_size(i64 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = shl i64 %0, 3
  %i.b = icmp ugt i64 %i.a, 111
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_ec_check_curve_allowed(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EC_GROUP_get_curve_name(ptr noundef %0) #5 ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @EC_curve_nid2nist(i32 noundef %i.a) #5
  %i.d = icmp ne ptr %i.c, null
  %. = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.b ]
  ret i32 %.0
}

declare i32 @EC_GROUP_get_curve_name(ptr noundef) local_unnamed_addr #1

declare ptr @EC_curve_nid2nist(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_ec_check_security_strength(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EC_GROUP_order_bits(ptr noundef %0) #5 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 159
  %i.c = icmp eq i32 %1, 0
  %i.d = icmp sgt i32 %i.a, 223
  %or.cond.not = or i1 %i.c, %i.d
  %narrow = and i1 %i.b, %or.cond.not
  %.0 = zext i1 %narrow to i32
  ret i32 %.0
}

declare i32 @EC_GROUP_order_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_dsa_check_key(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @DSA_get0_p(ptr noundef nonnull %0) #5 ; 2 uses
  %i.c = tail call ptr @DSA_get0_q(ptr noundef nonnull %0) #5 ; 2 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #5 ; 4 uses
  %i.g = tail call i32 @BN_num_bits(ptr noundef nonnull %i.c) #5 ; 4 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult i32 %i.f, 512
  %i.i = icmp ult i32 %i.g, 160
  %or.cond3 = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond3, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = icmp ult i32 %i.f, 2048
  %i.k = icmp ult i32 %i.g, 224
  %or.cond5 = select i1 %i.j, i1 true, i1 %i.k
  br i1 %or.cond5, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.l = icmp eq i32 %i.f, 2048
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  switch i32 %i.g, label %bb.h [
    i32 256, label %bb.i
    i32 224, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.m = icmp eq i32 %i.f, 3072
  %i.n = icmp eq i32 %i.g, 256
  %i.o = select i1 %i.m, i1 %i.n, i1 false
  %i.p = zext i1 %i.o to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.g, %bb.e, %bb.d, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ 0, %bb.d ], [ 0, %bb.a ], [ 1, %bb.e ], [ %i.p, %bb.h ], [ 0, %bb.b ], [ 1, %bb.g ], [ 1, %bb.g ]
  ret i32 %.0
}

declare ptr @DSA_get0_p(ptr noundef) local_unnamed_addr #1

declare ptr @DSA_get0_q(ptr noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_dh_check_key(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @DH_get0_p(ptr noundef nonnull %0) #5 ; 2 uses
  %i.c = tail call ptr @DH_get0_q(ptr noundef nonnull %0) #5 ; 2 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @BN_num_bits(ptr noundef nonnull %i.b) #5 ; 2 uses
  %i.g = icmp ult i32 %i.f, 2048
  br i1 %i.g, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @DH_get_nid(ptr noundef nonnull %0) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @BN_num_bits(ptr noundef nonnull %i.c) #5 ; 2 uses
  %i.j = icmp eq i32 %i.f, 2048
  %i.k = icmp eq i32 %i.i, 224
  %i.l = icmp eq i32 %i.i, 256
  %i.m = or i1 %i.k, %i.l
  %narrow = select i1 %i.j, i1 %i.m, i1 false
  %i.n = zext i1 %narrow to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.0 = phi i32 [ %i.n, %bb.e ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.0
}

declare ptr @DH_get0_p(ptr noundef) local_unnamed_addr #1

declare ptr @DH_get0_q(ptr noundef) local_unnamed_addr #1

declare i32 @DH_get_nid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!10 = !{!7, !7, i64 0}
end_hunk_0
