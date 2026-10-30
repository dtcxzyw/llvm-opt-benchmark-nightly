Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/curl_sha512_256?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Curl_HMAC_SHA512_256 = local_unnamed_addr constant [1 x { ptr, ptr, ptr, i32, i32, i32, [4 x i8] }] [{ ptr, ptr, ptr, i32, i32, i32, [4 x i8] } { ptr @Curl_sha512_256_init, ptr @Curl_sha512_256_update_i, ptr @Curl_sha512_256_finish_v, i32 8, i32 128, i32 32, [4 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define range(i32 0, 44) i32 @Curl_sha512_256it(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EVP_MD_CTX_new() #2       ; 6 uses
  %.not.i = icmp eq ptr %i.a, null                ; 2 uses
  br i1 %.not.i, label %Curl_sha512_256_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_sha512_256() #2
  %i.c = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef null) #2
  %.not6.i = icmp eq i32 %i.c, 0
  br i1 %.not6.i, label %bb.c, label %Curl_sha512_256_init.exit

bb.c:                                             ; preds = %bb.b
  tail call void @EVP_MD_CTX_free(ptr noundef nonnull %i.a) #2
  br label %Curl_sha512_256_init.exit.thread

Curl_sha512_256_init.exit:                        ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ 27, %bb.a ], [ 0, %bb.b ]
  br i1 %.not.i, label %Curl_sha512_256_init.exit.thread, label %Curl_sha512_256_init.exit.a

Curl_sha512_256_init.exit.a:                      ; preds = %Curl_sha512_256_init.exit
  %i.d = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.a, ptr noundef %1, i64 noundef %2) #2
  %.not.i11.not = icmp eq i32 %i.d, 0
  %i.e = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef null) #2
  %.not.i12 = icmp eq i32 %i.e, 0
  tail call void @EVP_MD_CTX_free(ptr noundef nonnull %i.a) #2
  %i.f = select i1 %.not.i11.not, i1 true, i1 %.not.i12
  %. = select i1 %i.f, i32 43, i32 0
  br label %Curl_sha512_256_init.exit.thread

Curl_sha512_256_init.exit.thread:                 ; preds = %bb.c, %Curl_sha512_256_init.exit.a, %Curl_sha512_256_init.exit
  %.0 = phi i32 [ %.0.i, %Curl_sha512_256_init.exit ], [ %., %Curl_sha512_256_init.exit.a ], [ 2, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 28) i32 @Curl_sha512_256_init(ptr nofree noundef captures(none) initializes((0, 8)) %0) #0 {
bb.a:
  %i.a = tail call ptr @EVP_MD_CTX_new() #2       ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !10
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @EVP_sha512_256() #2
  %i.c = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.a, ptr noundef %i.b, ptr noundef null) #2
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  tail call void @EVP_MD_CTX_free(ptr noundef %i.d) #2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 27, %bb.a ], [ 2, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal void @Curl_sha512_256_update_i(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %.val = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = tail call i32 @EVP_DigestUpdate(ptr noundef %.val, ptr noundef %1, i64 noundef %i.a) #2 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Curl_sha512_256_finish_v(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = tail call i32 @EVP_DigestFinal_ex(ptr noundef %i.a, ptr noundef %0, ptr noundef null) #2 ; 0 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !10
  tail call void @EVP_MD_CTX_free(ptr noundef %i.c) #2
  store ptr null, ptr %1, align 8, !tbaa !10
  ret void
}

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #1

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @EVP_sha512_256() local_unnamed_addr #1

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS13evp_md_ctx_st", !8, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
