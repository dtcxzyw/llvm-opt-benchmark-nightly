begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.prov_cipher_hw_st = type { ptr, ptr, ptr }

@OPENSSL_ia32cap_P = external local_unnamed_addr global [0 x i32], align 4
@aesni_ocb = internal constant %struct.prov_cipher_hw_st { ptr @cipher_hw_aes_ocb_aesni_initkey, ptr null, ptr null }, align 8
@aes_generic_ocb = internal constant %struct.prov_cipher_hw_st { ptr @cipher_hw_aes_ocb_generic_initkey, ptr null, ptr null }, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @ossl_prov_cipher_hw_aes_ocb(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !5
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %aes_generic_ocb.aesni_ocb = select i1 %.not, ptr @aes_generic_ocb, ptr @aesni_ocb
  ret ptr %aes_generic_ocb.aesni_ocb
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cipher_hw_aes_ocb_aesni_initkey(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 2 uses
  tail call void @CRYPTO_ocb128_cleanup(ptr noundef nonnull %i.a) #3
  %.tr = trunc i64 %2 to i32
  %i.b = shl i32 %.tr, 3                          ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = tail call i32 @aesni_set_encrypt_key(ptr noundef %1, i32 noundef %i.b, ptr noundef nonnull %i.c) #3 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.f = tail call i32 @aesni_set_decrypt_key(ptr noundef %1, i32 noundef %i.b, ptr noundef nonnull %i.e) #3 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i8, ptr %i.g, align 4
  %i.i = and i8 %i.h, 2
  %.not = icmp eq i8 %i.i, 0
  %i.j = select i1 %.not, ptr @aesni_ocb_decrypt, ptr @aesni_ocb_encrypt
  %i.k = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull @aesni_encrypt, ptr noundef nonnull @aesni_decrypt, ptr noundef nonnull %i.j) #3
  %.not13 = icmp eq i32 %i.k, 0
  br i1 %.not13, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4
  %i.n = or i8 %i.m, 1
  store i8 %i.n, ptr %i.l, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @CRYPTO_ocb128_cleanup(ptr noundef) local_unnamed_addr #2

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @CRYPTO_ocb128_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @aesni_encrypt(ptr noundef, ptr noundef, ptr noundef) #2

declare void @aesni_decrypt(ptr noundef, ptr noundef, ptr noundef) #2

declare void @aesni_ocb_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @aesni_ocb_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @cipher_hw_aes_ocb_generic_initkey(ptr noundef %0, ptr noundef %1, i64 noundef %2) #1 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !5
  %i.b = and i32 %i.a, 512
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 3 uses
  tail call void @CRYPTO_ocb128_cleanup(ptr noundef nonnull %i.c) #3
  %.tr = trunc i64 %2 to i32
  %i.d = shl i32 %.tr, 3                          ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @vpaes_set_encrypt_key(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.e) #3 ; 0 uses
  %i.h = tail call i32 @vpaes_set_decrypt_key(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.f) #3 ; 0 uses
  %i.i = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull @vpaes_encrypt, ptr noundef nonnull @vpaes_decrypt, ptr noundef null) #3
  %.not27 = icmp eq i32 %i.i, 0
  br i1 %.not27, label %bb.d, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i32 @AES_set_encrypt_key(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.e) #3 ; 0 uses
  %i.k = tail call i32 @AES_set_decrypt_key(ptr noundef %1, i32 noundef %i.d, ptr noundef nonnull %i.f) #3 ; 0 uses
  %i.l = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull @AES_encrypt, ptr noundef nonnull @AES_decrypt, ptr noundef null) #3
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 868 ; 2 uses
  %i.n = load i8, ptr %i.m, align 4
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.m, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.c ], [ 0, %bb.b ], [ 1, %.sink.split ]
  ret i32 %.0
}

declare i32 @vpaes_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @vpaes_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @vpaes_encrypt(ptr noundef, ptr noundef, ptr noundef) #2

declare void @vpaes_decrypt(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @AES_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #2

declare void @AES_decrypt(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
