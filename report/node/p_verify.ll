begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"../../deps/openssl/openssl/crypto/evp/p_verify.c\00", align 1
@__func__.EVP_VerifyFinal_ex = private unnamed_addr constant [19 x i8] c"EVP_VerifyFinal_ex\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_VerifyFinal_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store i32 0, ptr %i.b, align 4, !tbaa !5
  %i.c = tail call i32 @EVP_MD_CTX_test_flags(ptr noundef %0, i32 noundef 512) #3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = call i32 @EVP_DigestFinal_ex(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  %.not32 = icmp eq i32 %i.d, 0
  br i1 %.not32, label %bb.i, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @EVP_MD_CTX_new() #3       ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  tail call void @ERR_new() #3
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 34, ptr noundef nonnull @__func__.EVP_VerifyFinal_ex) #3
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 524294, ptr noundef null) #3
  br label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_MD_CTX_copy_ex(ptr noundef nonnull %i.e, ptr noundef %0) #3
  %.not30 = icmp eq i32 %i.g, 0
  %. = select i1 %.not30, ptr %0, ptr %i.e
  %i.h = call i32 @EVP_DigestFinal_ex(ptr noundef %., ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #3
  call void @EVP_MD_CTX_free(ptr noundef nonnull %i.e) #3
  %.not31.not = icmp eq i32 %i.h, 0
  br i1 %.not31.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.i = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef %4, ptr noundef %3, ptr noundef %5) #3 ; 7 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 @EVP_PKEY_verify_init(ptr noundef nonnull %i.i) #3
  %i.l = icmp slt i32 %i.k, 1
  br i1 %i.l, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = call ptr @EVP_MD_CTX_get0_md(ptr noundef %0) #3
  %i.n = call i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef nonnull %i.i, ptr noundef %i.m) #3
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = zext i32 %2 to i64
  %i.q = load i32, ptr %i.b, align 4, !tbaa !5
  %i.r = zext i32 %i.q to i64
  %i.s = call i32 @EVP_PKEY_verify(ptr noundef nonnull %i.i, ptr noundef %1, i64 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef %i.r) #3
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.b, %bb.h
  %.026 = phi i32 [ -1, %bb.e ], [ -1, %bb.f ], [ -1, %bb.g ], [ %i.s, %bb.h ], [ 0, %bb.b ]
  %.025 = phi ptr [ null, %bb.e ], [ %i.i, %bb.f ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ null, %bb.b ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.025) #3
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %bb.d, %bb.i
  %.1 = phi i32 [ %.026, %bb.i ], [ 0, %bb.d ], [ 0, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @EVP_MD_CTX_test_flags(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @EVP_MD_CTX_copy_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_verify_init(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_CTX_set_signature_md(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_get0_md(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_verify(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @EVP_VerifyFinal(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @EVP_VerifyFinal_ex(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

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
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
end_hunk_0
