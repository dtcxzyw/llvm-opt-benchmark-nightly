Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/e_aes?download=true
inline.NumInlined: 3
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@EVP_aes_256_ofb
define dso_local nonnull ptr @EVP_aes_256_ofb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_ofb, ptr @aesni_256_ofb
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_cfb128() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_cfb, ptr @aesni_256_cfb
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_cfb1() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_cfb1, ptr @aesni_256_cfb1
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_cfb8() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_cfb8, ptr @aesni_256_cfb8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_ctr() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_ctr, ptr @aesni_256_ctr
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_128_gcm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_128_gcm, ptr @aesni_128_gcm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_192_gcm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_192_gcm, ptr @aesni_192_gcm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_gcm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_gcm, ptr @aesni_256_gcm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_128_xts() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_128_xts, ptr @aesni_128_xts
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_xts() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_xts, ptr @aesni_256_xts
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_128_ccm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_128_ccm, ptr @aesni_128_ccm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_192_ccm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_192_ccm, ptr @aesni_192_ccm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_ccm() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_ccm, ptr @aesni_256_ccm
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_128_wrap() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_128_wrap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_192_wrap() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_192_wrap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_256_wrap() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_256_wrap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_128_wrap_pad() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_128_wrap_pad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_192_wrap_pad() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_192_wrap_pad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @EVP_aes_256_wrap_pad() local_unnamed_addr #1 {
bb.a:
  ret ptr @aes_256_wrap_pad
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_128_ocb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_128_ocb, ptr @aesni_128_ocb
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_192_ocb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_192_ocb, ptr @aesni_192_ocb
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local nonnull ptr @EVP_aes_256_ocb() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.b = and i32 %i.a, 33554432
  %.not = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not, ptr @aes_256_ocb, ptr @aesni_256_ocb
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aesni_init_key(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 6 uses
  %i.b = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.c = shl nsw i32 %i.b, 3                      ; 2 uses
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @EVP_CIPHER_CTX_get0_cipher(ptr noundef %0) #7
  %i.f = tail call i32 @EVP_CIPHER_get_mode(ptr noundef %i.e) #7 ; 3 uses
  %i.g = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.h = add i32 %i.f, -3
  %or.cond = icmp ult i32 %i.h, -2
  %i.i = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.i, %or.cond
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  br i1 %or.cond3, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 @aesni_set_decrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  store ptr @aesni_decrypt, ptr %i.j, align 8, !tbaa !11
  %i.l = select i1 %i.g, ptr @aesni_cbc_encrypt, ptr null
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr %i.l, ptr %i.m, align 8, !tbaa !14
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.n = tail call i32 @aesni_set_encrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7 ; 3 uses
  store ptr @aesni_encrypt, ptr %i.j, align 8, !tbaa !11
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @aesni_cbc_encrypt, ptr %i.o, align 8, !tbaa !14
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.p = icmp eq i32 %i.f, 5
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr @aesni_ctr32_encrypt_blocks, ptr %i.q, align 8, !tbaa !14
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  store ptr null, ptr %i.q, align 8, !tbaa !14
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ %i.n, %bb.e ], [ %i.n, %bb.g ], [ %i.n, %bb.h ], [ %i.k, %bb.c ]
  %i.r = icmp slt i32 %.0, 0
  br i1 %i.r, label %.sink.split, label %bb.j

.sink.split:                                      ; preds = %bb.i, %bb.a
  %.sink30 = phi i32 [ 151, %bb.a ], [ 172, %bb.i ]
  %.sink = phi i32 [ 130, %bb.a ], [ 143, %bb.i ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink30, ptr noundef nonnull @__func__.aesni_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, ptr noundef null) #7
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i
  %.026 = phi i32 [ 1, %bb.i ], [ 0, %.sink.split ]
  ret i32 %.026
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aesni_cbc_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  tail call void @aesni_cbc_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.a, ptr noundef nonnull %i.b, i32 noundef %i.c) #7
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef) local_unnamed_addr #4

declare void @ERR_new() local_unnamed_addr #4

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_mode(ptr noundef) local_unnamed_addr #4

declare ptr @EVP_CIPHER_CTX_get0_cipher(ptr noundef) local_unnamed_addr #4

declare i32 @aesni_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_decrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @aesni_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @aesni_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_encrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @aesni_ctr32_encrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_init_key(ptr noundef %0, ptr noundef %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 14 uses
  %i.b = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.c = shl nsw i32 %i.b, 3                      ; 6 uses
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @EVP_CIPHER_CTX_get0_cipher(ptr noundef %0) #7
  %i.f = tail call i32 @EVP_CIPHER_get_mode(ptr noundef %i.e) #7 ; 3 uses
  %i.g = icmp eq i32 %i.f, 2                      ; 5 uses
  %i.h = add i32 %i.f, -3
  %or.cond = icmp ult i32 %i.h, -2
  %i.i = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.i, %or.cond
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.k = and i32 %i.j, 512
  %i.l = icmp ne i32 %i.k, 0                      ; 4 uses
  br i1 %or.cond3, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %or.cond5 = and i1 %i.g, %i.l
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call i32 @AES_set_decrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr @AES_decrypt, ptr %i.n, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @ossl_bsaes_cbc_encrypt, ptr %i.o, align 8, !tbaa !14
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = tail call i32 @vpaes_set_decrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  store ptr @vpaes_decrypt, ptr %i.p, align 8, !tbaa !11
  %i.s = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  store ptr %i.s, ptr %i.q, align 8, !tbaa !14
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @AES_set_decrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  store ptr @AES_decrypt, ptr %i.p, align 8, !tbaa !11
  %i.u = select i1 %i.g, ptr @AES_cbc_encrypt, ptr null
  store ptr %i.u, ptr %i.q, align 8, !tbaa !14
  br label %bb.m

bb.h:                                             ; preds = %bb.b
  %i.v = icmp eq i32 %i.f, 5
  %or.cond7 = and i1 %i.v, %i.l
  br i1 %or.cond7, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = tail call i32 @AES_set_encrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr @AES_encrypt, ptr %i.x, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @ossl_bsaes_ctr32_encrypt_blocks, ptr %i.y, align 8, !tbaa !14
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  br i1 %i.l, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = tail call i32 @vpaes_set_encrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  store ptr @vpaes_encrypt, ptr %i.z, align 8, !tbaa !11
  %i.ac = select i1 %i.g, ptr @vpaes_cbc_encrypt, ptr null
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !14
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ad = tail call i32 @AES_set_encrypt_key(ptr noundef %1, i32 noundef %i.c, ptr noundef %i.a) #7
  store ptr @AES_encrypt, ptr %i.z, align 8, !tbaa !11
  %i.ae = select i1 %i.g, ptr @AES_cbc_encrypt, ptr null
  store ptr %i.ae, ptr %i.aa, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.d, %bb.g, %bb.f
  %.0 = phi i32 [ %i.w, %bb.i ], [ %i.ab, %bb.k ], [ %i.ad, %bb.l ], [ %i.m, %bb.d ], [ %i.r, %bb.f ], [ %i.t, %bb.g ]
  %i.af = icmp slt i32 %.0, 0
  br i1 %i.af, label %.sink.split, label %bb.n

.sink.split:                                      ; preds = %bb.m, %bb.a
  %.sink53 = phi i32 [ 2423, %bb.a ], [ 2504, %bb.m ]
  %.sink = phi i32 [ 130, %bb.a ], [ 143, %bb.m ]
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink53, ptr noundef nonnull @__func__.aes_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef %.sink, ptr noundef null) #7
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %.051 = phi i32 [ 1, %bb.m ], [ 0, %.sink.split ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_cbc_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  tail call void %i.c(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef %i.e) #7
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not21 = icmp eq i32 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef %i.i) #7
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @CRYPTO_cbc128_decrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef %i.i) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret i32 1
}

declare i32 @AES_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @AES_decrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @ossl_bsaes_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @vpaes_set_decrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @vpaes_decrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @vpaes_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare void @AES_cbc_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #4

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @ossl_bsaes_ctr32_encrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

declare i32 @vpaes_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @vpaes_encrypt(ptr noundef, ptr noundef, ptr noundef) #4

declare void @CRYPTO_cbc128_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @CRYPTO_cbc128_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @aesni_ecb_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef %0) #7
  %i.b = sext i32 %i.a to i64
  %i.c = icmp ult i64 %3, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7
  %i.e = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  tail call void @aesni_ecb_encrypt(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef %i.d, i32 noundef %i.e) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i32 1
}

declare i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef) local_unnamed_addr #4

declare void @aesni_ecb_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ecb_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call i32 @EVP_CIPHER_CTX_get_block_size(ptr noundef %0) #7
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 2 uses
  %i.d = icmp ult i64 %3, %i.b
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sub nuw i64 %3, %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %.019 = phi i64 [ 0, %bb.b ], [ %i.j, %bb.c ]   ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %.019
end_hunk_0
begin_hunk_1_@aes_gcm_ctrl:bb.a

ctr64_inc.exit:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.dh, align 4, !tbaa !24
  br label %.thread

bb.ai:                                            ; preds = %bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !28
  %i.dk = icmp eq i32 %i.dj, 0
  br i1 %i.dk, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !27
  %i.dn = icmp eq i32 %i.dm, 0
  br i1 %i.dn, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !39
  %.not140 = icmp eq i32 %i.dp, 0
  br i1 %.not140, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.dq = getelementptr inbounds nuw i8, ptr %i.a, i64 704 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 712 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !26
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds i8, ptr %i.dr, i64 %i.du
  %i.dw = sext i32 %2 to i64                      ; 2 uses
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dy, ptr align 1 %3, i64 %i.dw, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !25
  %i.eb = load i32, ptr %i.ds, align 8, !tbaa !26
  %i.ec = sext i32 %i.eb to i64
  tail call void @CRYPTO_gcm128_setiv(ptr noundef nonnull %i.dz, ptr noundef %i.ea, i64 noundef %i.ec) #7
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.ed, align 4, !tbaa !24
  br label %.thread

bb.am:                                            ; preds = %bb.a
  %.not138 = icmp eq i32 %2, 13
  br i1 %.not138, label %bb.an, label %.thread

bb.an:                                            ; preds = %bb.am
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.ee, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 728
  store i32 13, ptr %i.ef, align 8, !tbaa !29
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store i64 0, ptr %i.eg, align 8, !tbaa !30
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 67 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !14
  %i.ej = zext i8 %i.ei to i32
  %i.ek = shl nuw nsw i32 %i.ej, 8
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.em = load i8, ptr %i.el, align 4, !tbaa !14
  %i.en = zext i8 %i.em to i32
  %i.eo = or disjoint i32 %i.ek, %i.en            ; 4 uses
  %i.ep = icmp samesign ult i32 %i.eo, 8
  br i1 %i.ep, label %.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eq = add nsw i32 %i.eo, -8
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.es = load i32, ptr %i.er, align 8, !tbaa !39
  %.not139 = icmp eq i32 %i.es, 0
  br i1 %.not139, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.et = icmp samesign ult i32 %i.eo, 24
  br i1 %i.et, label %.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = add nsw i32 %i.eo, -24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ao
  %.0 = phi i32 [ %i.eq, %bb.ao ], [ %i.eu, %bb.aq ] ; 2 uses
  %i.ev = lshr i32 %.0, 8
  %i.ew = trunc nuw i32 %i.ev to i8
  store i8 %i.ew, ptr %i.eh, align 1, !tbaa !14
  %i.ex = trunc i32 %.0 to i8
  store i8 %i.ex, ptr %i.el, align 4, !tbaa !14
  br label %.thread

bb.as:                                            ; preds = %bb.a
  %i.ey = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %3) #7 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 648
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.fa, null
  br i1 %.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not137 = icmp eq ptr %i.fa, %i.a
  br i1 %.not137, label %bb.au, label %.thread

bb.au:                                            ; preds = %bb.at
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 648
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !32
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 704 ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 704
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !25
  br label %.thread

bb.ax:                                            ; preds = %bb.av
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 712 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !26
  %i.fk = sext i32 %i.fj to i64
  %i.fl = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.fk, ptr noundef nonnull @.str, i32 noundef 2782) #7 ; 3 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 704
  store ptr %i.fl, ptr %i.fm, align 8, !tbaa !25
  %i.fn = icmp eq ptr %i.fl, null
  br i1 %i.fn, label %.thread, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fo = load ptr, ptr %i.fc, align 8, !tbaa !25
  %i.fp = load i32, ptr %i.fi, align 8, !tbaa !26
  %i.fq = sext i32 %i.fp to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr align 1 %i.fo, i64 %i.fq, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.ap, %bb.an, %bb.ar, %bb.a, %bb.at, %bb.ax, %bb.ay, %bb.aw, %bb.am, %bb.ai, %bb.aj, %bb.ak, %bb.y, %bb.z, %bb.w, %bb.t, %bb.u, %bb.n, %bb.o, %bb.p, %bb.k, %bb.l, %bb.i, %bb.d, %bb.al, %ctr64_inc.exit, %bb.x, %bb.s, %bb.q, %bb.m, %bb.j, %bb.c, %bb.b
  %.2 = phi i32 [ 1, %bb.aw ], [ 1, %bb.b ], [ 1, %bb.c ], [ -1, %bb.a ], [ 0, %bb.d ], [ 1, %bb.j ], [ 0, %bb.i ], [ 1, %bb.m ], [ 0, %bb.k ], [ 1, %bb.q ], [ 1, %bb.s ], [ 0, %bb.n ], [ 0, %bb.t ], [ 1, %bb.x ], [ 0, %bb.w ], [ 1, %ctr64_inc.exit ], [ 0, %bb.y ], [ 1, %bb.al ], [ 0, %bb.ai ], [ 0, %bb.am ], [ 1, %bb.ay ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.u ], [ 0, %bb.z ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %bb.at ], [ 0, %bb.ax ], [ 16, %bb.ar ], [ 0, %bb.an ], [ 0, %bb.ap ]
  ret i32 %.2
}

declare void @CRYPTO_gcm128_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @CRYPTO_gcm128_setiv(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @CRYPTO_gcm128_aad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @gcm_ghash_avx(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @CRYPTO_gcm128_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @aesni_gcm_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_encrypt_ctr32(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_decrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @aesni_gcm_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_decrypt_ctr32(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_gcm128_finish(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_gcm128_tag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_CTX_ctrl(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @EVP_CIPHER_get_iv_length(ptr noundef) local_unnamed_addr #4

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @RAND_bytes(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_gcm_init_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 17 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = shl nsw i32 %i.d, 3
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.h = and i32 %i.g, 512
  %.not51 = icmp eq i32 %i.h, 0
  %i.i = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef %i.a) #7 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  tail call void @CRYPTO_gcm128_init(ptr noundef nonnull %i.j, ptr noundef %i.a, ptr noundef nonnull @AES_encrypt) #7
  %.ossl_bsaes_ctr32_encrypt_blocks = select i1 %.not51, ptr null, ptr @ossl_bsaes_ctr32_encrypt_blocks
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store ptr %.ossl_bsaes_ctr32_encrypt_blocks, ptr %i.k, align 8, !tbaa !18
  br i1 %i.b, label %bb.e, label %.thread56

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.m = load i32, ptr %i.l, align 4, !tbaa !24
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %.thread60, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25   ; 2 uses
  %.not53 = icmp eq ptr %i.o, null
  br i1 %.not53, label %.thread60, label %.thread56

.thread56:                                        ; preds = %bb.d, %bb.f
  %.04559 = phi ptr [ %i.o, %bb.f ], [ %2, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.r = load i32, ptr %i.q, align 8, !tbaa !26
  %i.s = sext i32 %i.r to i64
  tail call void @CRYPTO_gcm128_setiv(ptr noundef nonnull %i.p, ptr noundef nonnull %.04559, i64 noundef %i.s) #7
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.t, align 4, !tbaa !24
  br label %.thread60

.thread60:                                        ; preds = %bb.f, %.thread56, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i32 1, ptr %i.u, align 8, !tbaa !27
  br label %bb.l

bb.g:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 2806, ptr noundef nonnull @__func__.aes_gcm_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.w = load i32, ptr %i.v, align 8, !tbaa !27
  %.not50 = icmp eq i32 %i.w, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.z = load i32, ptr %i.y, align 8, !tbaa !26
  %i.aa = sext i32 %i.z to i64
  tail call void @CRYPTO_gcm128_setiv(ptr noundef nonnull %i.x, ptr noundef %2, i64 noundef %i.aa) #7
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 704
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !25
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 712
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !26
  %i.af = sext i32 %i.ae to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %2, i64 %i.af, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.ag, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 720
  store i32 0, ptr %i.ah, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread60, %bb.g, %bb.a
  %.1 = phi i32 [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %.thread60 ], [ 1, %bb.k ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aesni_xts_init_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 12 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.critedge44, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = sdiv i32 %i.d, 2                         ; 3 uses
  %i.f = shl nsw i32 %i.e, 3                      ; 3 uses
  %i.g = icmp slt i32 %i.d, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @__func__.aesni_xts_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %.critedge44

bb.e:                                             ; preds = %bb.c
  %.not41 = icmp eq i32 %3, 0
  br i1 %.not41, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = zext nneg i32 %i.e to i64                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.h
  %i.j = tail call i32 @CRYPTO_memcmp(ptr noundef nonnull %1, ptr noundef nonnull %i.i, i64 noundef %i.h) #7
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @__func__.aesni_xts_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 192, ptr noundef null) #7
  br label %.critedge44

bb.h:                                             ; preds = %bb.f
  %i.l = tail call i32 @aesni_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef %i.a) #7 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store ptr @aesni_encrypt, ptr %i.m, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr @aesni_xts_encrypt, ptr %i.n, align 8, !tbaa !43
  br label %bb.i

.critedge:                                        ; preds = %bb.e
  %i.o = tail call i32 @aesni_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef %i.a) #7 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store ptr @aesni_decrypt, ptr %i.p, align 8, !tbaa !40
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr @aesni_xts_decrypt, ptr %i.q, align 8, !tbaa !43
  %.pre = zext nneg i32 %i.e to i64
  br label %bb.i

bb.i:                                             ; preds = %.critedge, %bb.h
  %.pre-phi = phi i64 [ %.pre, %.critedge ], [ %i.h, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.pre-phi
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.t = tail call i32 @aesni_set_encrypt_key(ptr noundef nonnull %i.r, i32 noundef %i.f, ptr noundef nonnull %i.s) #7 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store ptr @aesni_encrypt, ptr %i.v, align 8, !tbaa !44
  store ptr %i.a, ptr %i.u, align 8, !tbaa !45
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.b
  br i1 %i.b, label %.critedge44, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store ptr %i.w, ptr %i.x, align 8, !tbaa !46
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(16) %2, i64 16, i1 false)
  br label %.critedge44

.critedge44:                                      ; preds = %bb.d, %bb.g, %bb.j, %bb.k, %bb.a
  %.1 = phi i32 [ 1, %bb.j ], [ 1, %bb.a ], [ 1, %bb.k ], [ 0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_xts_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp eq ptr %1, null
  %or.cond = or i1 %i.h, %i.g
  %i.i = icmp eq ptr %2, null
  %or.cond3 = or i1 %i.i, %or.cond
  %i.j = icmp ult i64 %3, 16
  %or.cond5 = or i1 %i.j, %or.cond3
  br i1 %or.cond5, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %3, 16777216
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3360, ptr noundef nonnull @__func__.aes_xts_cipher) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 191, ptr noundef null) #7
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43   ; 2 uses
end_hunk_1
begin_hunk_2_@aes_ccm_ctrl:bb.a

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.g = load i32, ptr %i.f, align 8, !tbaa !51
  %i.h = sub nsw i32 15, %i.g
  store i32 %i.h, ptr %3, align 4, !tbaa !10
  br label %.critedge

bb.d:                                             ; preds = %bb.a
  %.not95 = icmp eq i32 %2, 13
  br i1 %.not95, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.i = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.i, ptr noundef nonnull align 1 dereferenceable(13) %3, i64 13, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i32 13, ptr %i.j, align 8, !tbaa !55
  %i.k = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 11
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw nsw i32 %i.n, 8
  %i.p = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.o, %i.s               ; 2 uses
  %i.u = icmp samesign ult i32 %i.t, 8
  br i1 %i.u, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = trunc nuw i32 %i.t to i16
  %i.w = add i16 %i.v, -8                         ; 3 uses
  %i.x = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not96 = icmp eq i32 %i.x, 0
  br i1 %.not96, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = zext i16 %i.w to i32
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !47  ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, %i.y
  br i1 %i.ab, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = trunc i32 %i.aa to i16
  %i.ad = sub i16 %i.w, %i.ac
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.0 = phi i16 [ %i.w, %bb.f ], [ %i.ad, %bb.h ] ; 2 uses
  %i.ae = lshr i16 %.0, 8
  %i.af = trunc nuw i16 %i.ae to i8
  %i.ag = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 11
  store i8 %i.af, ptr %i.ah, align 1, !tbaa !14
  %i.ai = trunc i16 %.0 to i8
  %i.aj = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.am = load i32, ptr %i.al, align 4, !tbaa !47
  br label %.critedge

bb.j:                                             ; preds = %bb.a
  %.not94 = icmp eq i32 %2, 4
  br i1 %.not94, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i32, ptr %3, align 1
  store i32 %i.ao, ptr %i.an, align 8
  br label %.critedge

bb.l:                                             ; preds = %bb.a
  %i.ap = sub nsw i32 15, %2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.a
  %.081 = phi i32 [ %i.ap, %bb.l ], [ %2, %bb.a ] ; 2 uses
  %i.aq = add i32 %.081, -9
  %or.cond = icmp ult i32 %i.aq, -7
  br i1 %or.cond, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store i32 %.081, ptr %i.ar, align 8, !tbaa !51
  br label %.critedge

bb.o:                                             ; preds = %bb.a
  %i.as = trunc i32 %2 to i1
  %i.at = add i32 %2, -17
  %i.au = icmp ult i32 %i.at, -13
  %or.cond5 = or i1 %i.au, %i.as
  br i1 %or.cond5, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %i.aw = icmp ne i32 %i.av, 0
  %i.ax = icmp ne ptr %3, null                    ; 2 uses
  %or.cond7 = and i1 %i.ax, %i.aw
  br i1 %or.cond7, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %i.ax, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i32 1, ptr %i.ay, align 8, !tbaa !57
  %i.az = tail call ptr @EVP_CIPHER_CTX_buf_noconst(ptr noundef %0) #7
  %i.ba = zext nneg i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr nonnull align 1 %3, i64 %i.ba, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  store i32 %2, ptr %i.bb, align 4, !tbaa !47
  br label %.critedge

bb.t:                                             ; preds = %bb.a
  %i.bc = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not91 = icmp eq i32 %i.bc, 0
  br i1 %.not91, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 256 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !57
  %.not92 = icmp eq i32 %i.be, 0
  br i1 %.not92, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.bg = sext i32 %2 to i64
  %i.bh = tail call i64 @CRYPTO_ccm128_tag(ptr noundef nonnull %i.bf, ptr noundef %3, i64 noundef %i.bg) #7
  %.not93 = icmp eq i64 %i.bh, 0
  br i1 %.not93, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.bd, align 8, !tbaa !57
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 0, ptr %i.bi, align 4, !tbaa !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 260
  store i32 0, ptr %i.bj, align 4, !tbaa !56
  br label %.critedge

bb.x:                                             ; preds = %bb.a
  %i.bk = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %3) #7 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !58 ; 2 uses
  %.not = icmp eq ptr %i.bm, null
  br i1 %.not, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not90 = icmp eq ptr %i.bm, %i.a
  br i1 %.not90, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 328
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !58
  br label %.critedge

.critedge:                                        ; preds = %bb.e, %bb.g, %bb.a, %bb.y, %bb.z, %bb.x, %bb.v, %bb.t, %bb.u, %bb.p, %bb.o, %bb.m, %bb.j, %bb.d, %bb.w, %bb.s, %bb.n, %bb.k, %bb.i, %bb.c, %bb.b
  %.2 = phi i32 [ 1, %bb.x ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %bb.v ], [ %i.am, %bb.i ], [ -1, %bb.a ], [ 0, %bb.d ], [ 1, %bb.k ], [ 0, %bb.j ], [ 1, %bb.n ], [ 0, %bb.m ], [ 0, %bb.o ], [ 1, %bb.s ], [ 1, %bb.w ], [ 0, %bb.t ], [ 0, %bb.p ], [ 0, %bb.u ], [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.g ], [ 0, %bb.e ]
  ret i32 %.2
}

declare void @CRYPTO_ccm128_init(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_ccm64_encrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @aesni_ccm64_decrypt_blocks(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @CRYPTO_ccm128_setiv(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_ccm128_aad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_encrypt_ccm64(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_decrypt_ccm64(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ccm128_decrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i64 @CRYPTO_ccm128_tag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_ccm_init_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 10 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = shl nsw i32 %i.d, 3                      ; 2 uses
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.h = and i32 %i.g, 512
  %.not35 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 268
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @vpaes_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  br label %.thread.sink.split

bb.f:                                             ; preds = %bb.d
  %i.o = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  br label %.thread.sink.split

bb.g:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3493, ptr noundef nonnull @__func__.aes_ccm_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %bb.i

.thread.sink.split:                               ; preds = %bb.e, %bb.f
  %AES_encrypt.sink = phi ptr [ @AES_encrypt, %bb.f ], [ @vpaes_encrypt, %bb.e ]
  %i.p = load i32, ptr %i.j, align 4, !tbaa !47
  %i.q = load i32, ptr %i.k, align 8, !tbaa !51
  tail call void @CRYPTO_ccm128_init(ptr noundef nonnull %i.i, i32 noundef %i.p, i32 noundef %i.q, ptr noundef %i.a, ptr noundef nonnull %AES_encrypt.sink) #7
  store ptr null, ptr %i.l, align 8, !tbaa !52
  store i32 1, ptr %i.m, align 8, !tbaa !53
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b
  br i1 %i.b, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  %i.t = load i32, ptr %i.s, align 8, !tbaa !51
  %i.u = sub nsw i32 15, %i.t
  %i.v = sext i32 %i.u to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 1 %2, i64 %i.v, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  store i32 1, ptr %i.w, align 4, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %.thread, %bb.h, %bb.a
  %.1 = phi i32 [ 0, %bb.g ], [ 1, %bb.a ], [ 1, %bb.h ], [ 1, %.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_wrap_init_key(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 4 uses
  %i.b = icmp eq ptr %2, null                     ; 3 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = shl nsw i32 %i.d, 3                      ; 2 uses
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not29 = icmp eq i32 %i.g, 0
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @AES_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.b, label %.thread.thread, label %.thread.thread31

.thread.thread:                                   ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr null, ptr %i.j, align 8, !tbaa !59
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3683, ptr noundef nonnull @__func__.aes_wrap_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %bb.j

.thread:                                          ; preds = %bb.b
  br i1 %i.b, label %bb.j, label %.thread.thread31

.thread.thread31:                                 ; preds = %bb.g, %.thread
  %i.k = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %0) #7 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread.thread31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.n = zext nneg i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 1 %2, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store ptr %i.m, ptr %i.o, align 8, !tbaa !59
  br label %bb.j

bb.j:                                             ; preds = %.thread.thread, %bb.h, %.thread, %bb.i, %.thread.thread31, %bb.a
  %.1 = phi i32 [ 0, %bb.h ], [ 1, %bb.a ], [ 0, %.thread.thread31 ], [ 1, %bb.i ], [ 1, %.thread ], [ 1, %.thread.thread ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @aes_wrap_cipher(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 5 uses
  %i.b = tail call i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef %0) #7
  %i.c = icmp eq i32 %i.b, 4                      ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not48 = icmp eq i64 %3, 0
  br i1 %.not48, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not49 = icmp eq i32 %i.d, 0
  br i1 %.not49, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = icmp ugt i64 %3, 15
  %i.f = and i64 %3, 7
  %.not50 = icmp eq i64 %i.f, 0
  %or.cond = and i1 %i.e, %.not50
  br i1 %or.cond, label %.thread, label %bb.s

bb.e:                                             ; preds = %bb.c
  %.pre = and i64 %3, 7
  %i.g = icmp eq i64 %.pre, 0
  %i.h = or i1 %i.g, %i.c
  br i1 %i.h, label %.thread, label %bb.s

.thread:                                          ; preds = %bb.d, %bb.e
  %i.i = trunc i64 %3 to i32                      ; 2 uses
  %i.j = tail call i32 @ossl_is_partially_overlapping(ptr noundef %1, ptr noundef nonnull %2, i32 noundef %i.i) #7
  %.not52 = icmp eq i32 %i.j, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3722, ptr noundef nonnull @__func__.aes_wrap_cipher) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 162, ptr noundef null) #7
  br label %bb.s

bb.g:                                             ; preds = %.thread
  %.not53 = icmp eq ptr %1, null
  %i.k = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not54 = icmp eq i32 %i.k, 0                   ; 3 uses
  br i1 %.not53, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br i1 %.not54, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = add i64 %3, 7
  %i.m = and i64 %i.l, 4294967288
  %.043 = select i1 %i.c, i64 %i.m, i64 %3
  %i.n = trunc i64 %.043 to i32
  %i.o = add i32 %i.n, 8
  br label %bb.s

bb.j:                                             ; preds = %bb.h
  %i.p = add i32 %i.i, -8
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !59   ; 4 uses
  br i1 %i.c, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %.not54, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = tail call i64 @CRYPTO_128_wrap_pad(ptr noundef %i.a, ptr noundef %i.r, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @AES_encrypt) #7
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.t = tail call i64 @CRYPTO_128_unwrap_pad(ptr noundef %i.a, ptr noundef %i.r, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @AES_decrypt) #7
  br label %bb.r

bb.o:                                             ; preds = %bb.k
  br i1 %.not54, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.u = tail call i64 @CRYPTO_128_wrap(ptr noundef %i.a, ptr noundef %i.r, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @AES_encrypt) #7
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.v = tail call i64 @CRYPTO_128_unwrap(ptr noundef %i.a, ptr noundef %i.r, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @AES_decrypt) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.m, %bb.n
  %.0 = phi i64 [ %i.s, %bb.m ], [ %i.t, %bb.n ], [ %i.u, %bb.p ], [ %i.v, %bb.q ] ; 2 uses
  %.not57 = icmp eq i64 %.0, 0
  %i.w = trunc i64 %.0 to i32
  %i.x = select i1 %.not57, i32 -1, i32 %i.w
  br label %bb.s

bb.s:                                             ; preds = %bb.e, %bb.d, %bb.b, %bb.a, %bb.r, %bb.j, %bb.i, %bb.f
  %.044 = phi i32 [ 0, %bb.f ], [ %i.x, %bb.r ], [ %i.o, %bb.i ], [ %i.p, %bb.j ], [ -1, %bb.d ], [ -1, %bb.b ], [ 0, %bb.a ], [ -1, %bb.e ]
  ret i32 %.044
}

declare i32 @EVP_CIPHER_CTX_get_iv_length(ptr noundef) local_unnamed_addr #4

declare i32 @ossl_is_partially_overlapping(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_wrap_pad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_unwrap_pad(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_wrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

declare i64 @CRYPTO_128_unwrap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aesni_ocb_init_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 17 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 370, ptr noundef nonnull @__func__.aesni_ocb_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.f = shl nuw nsw i32 %i.d, 3                  ; 2 uses
  %i.g = tail call i32 @aesni_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef %i.a) #7 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 2 uses
  %i.i = tail call i32 @aesni_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.f, ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  %.not44 = icmp eq i32 %3, 0
  %i.k = select i1 %.not44, ptr @aesni_ocb_decrypt, ptr @aesni_ocb_encrypt
  %i.l = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.j, ptr noundef %i.a, ptr noundef nonnull %i.h, ptr noundef nonnull @aesni_encrypt, ptr noundef nonnull @aesni_decrypt, ptr noundef nonnull %i.k) #7
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %.critedge, label %bb.f
end_hunk_2
begin_hunk_3_@aes_ocb_cipher:bb.a
  %.not136 = icmp eq i32 %i.bn, 0
  br i1 %.not136, label %.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 0, ptr %i.bh, align 4, !tbaa !70
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  %i.bo = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not137 = icmp eq i32 %i.bo, 0
  br i1 %.not137, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !67 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %.thread, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.bu = zext nneg i32 %i.bq to i64
  %i.bv = tail call i32 @CRYPTO_ocb128_finish(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bt, i64 noundef %i.bu) #7
  %.not138 = icmp eq i32 %i.bv, 0
  br i1 %.not138, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.b, align 4, !tbaa !61
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.by = tail call i32 @CRYPTO_ocb128_tag(ptr noundef nonnull %i.bw, ptr noundef nonnull %i.bx, i64 noundef 16) #7
  %.not139 = icmp eq i32 %i.by, 1
  br i1 %.not139, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %i.b, align 4, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %bb.o, %bb.l, %bb.n, %bb.j, %bb.al, %bb.aj, %bb.ai, %bb.af, %bb.ac, %bb.ab, %bb.x, %bb.y, %bb.v, %bb.u, %bb.s, %bb.b, %bb.a, %bb.am, %bb.ak, %bb.g
  %.1117 = phi i32 [ -1, %bb.v ], [ -1, %bb.b ], [ -1, %bb.s ], [ -1, %bb.u ], [ -1, %bb.al ], [ 0, %bb.g ], [ -1, %bb.aj ], [ %.3, %bb.am ], [ -1, %bb.af ], [ -1, %bb.ai ], [ %.3, %bb.ak ], [ -1, %bb.ac ], [ %.2, %bb.x ], [ -1, %bb.ab ], [ -1, %bb.a ], [ %.2, %bb.y ], [ -1, %bb.o ], [ -1, %bb.l ], [ -1, %bb.n ], [ 0, %bb.j ]
  ret i32 %.1117
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @aes_ocb_cleanup(ptr noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  tail call void @CRYPTO_ocb128_cleanup(ptr noundef nonnull %i.b) #7
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @aes_ocb_ctrl(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 15 uses
  switch i32 %1, label %bb.p [
    i32 0, label %bb.b
    i32 37, label %bb.c
    i32 9, label %bb.d
    i32 17, label %bb.f
    i32 16, label %bb.l
    i32 8, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i32 0, ptr %i.b, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store i32 0, ptr %i.c, align 4, !tbaa !61
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = tail call i32 @EVP_CIPHER_get_iv_length(ptr noundef %i.d) #7
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store i32 %i.e, ptr %i.f, align 8, !tbaa !66
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  store ptr %i.g, ptr %i.h, align 8, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  store i32 16, ptr %i.i, align 4, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 736
  store i32 0, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 740
  store i32 0, ptr %i.k, align 4, !tbaa !70
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %i.m = load i32, ptr %i.l, align 8, !tbaa !66
  store i32 %i.m, ptr %3, align 4, !tbaa !10
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = add i32 %2, -16
  %or.cond = icmp ult i32 %i.n, -15
  br i1 %or.cond, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  store i32 %2, ptr %i.o, align 8, !tbaa !66
  br label %bb.p

bb.f:                                             ; preds = %bb.a
  %i.p = icmp eq ptr %3, null
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %or.cond3 = icmp ugt i32 %2, 16
  br i1 %or.cond3, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  store i32 %2, ptr %i.q, align 4, !tbaa !67
  br label %bb.p

bb.i:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  %i.s = load i32, ptr %i.r, align 4, !tbaa !67
  %.not46 = icmp eq i32 %2, %i.s
  br i1 %.not46, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.t = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not47 = icmp eq i32 %i.t, 0
  br i1 %.not47, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.v = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull align 1 %3, i64 %i.v, i1 false)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  %i.x = load i32, ptr %i.w, align 4, !tbaa !67
  %.not = icmp eq i32 %2, %i.x
  br i1 %.not, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @EVP_CIPHER_CTX_is_encrypting(ptr noundef %0) #7
  %.not45 = icmp eq i32 %i.y, 0
  br i1 %.not45, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 688
  %i.aa = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 8 %i.z, i64 %i.aa, i1 false)
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.ab = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %3) #7 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  %i.af = tail call i32 @CRYPTO_ocb128_copy_ctx(ptr noundef nonnull %i.ac, ptr noundef nonnull %i.ad, ptr noundef %i.ab, ptr noundef nonnull %i.ae) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.l, %bb.m, %bb.i, %bb.j, %bb.g, %bb.d, %bb.o, %bb.n, %bb.k, %bb.h, %bb.e, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.l ], [ 1, %bb.b ], [ 1, %bb.c ], [ %i.af, %bb.o ], [ 1, %bb.e ], [ 0, %bb.d ], [ 1, %bb.h ], [ 0, %bb.g ], [ 1, %bb.k ], [ 0, %bb.i ], [ 1, %bb.n ], [ 0, %bb.j ], [ 0, %bb.m ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @CRYPTO_ocb128_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @aesni_ocb_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare void @aesni_ocb_decrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #4

declare i32 @CRYPTO_ocb128_setiv(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_aad(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_encrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_decrypt(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_finish(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_tag(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @CRYPTO_ocb128_cleanup(ptr noundef) local_unnamed_addr #4

declare i32 @CRYPTO_ocb128_copy_ctx(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @aes_ocb_init_key(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 %3) #2 {
bb.a:
  %i.a = tail call ptr @EVP_CIPHER_CTX_get_cipher_data(ptr noundef %0) #7 ; 20 uses
  %i.b = icmp eq ptr %2, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.c, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @EVP_CIPHER_CTX_get_key_length(ptr noundef %0) #7 ; 2 uses
  %i.e = shl nsw i32 %i.d, 3                      ; 4 uses
  %i.f = icmp slt i32 %i.d, 1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #7
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 3924, ptr noundef nonnull @__func__.aes_ocb_init_key) #7
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 6, i32 noundef 130, ptr noundef null) #7
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 4), align 4, !tbaa !10
  %i.h = and i32 %i.g, 512
  %.not52 = icmp eq i32 %i.h, 0
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 248 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 504 ; 2 uses
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @vpaes_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  %i.l = tail call i32 @vpaes_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.m = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.j, ptr noundef %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull @vpaes_encrypt, ptr noundef nonnull @vpaes_decrypt, ptr noundef null) #7
  %.not54 = icmp eq i32 %i.m, 0
  br i1 %.not54, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call i32 @AES_set_encrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef %i.a) #7 ; 0 uses
  %i.o = tail call i32 @AES_set_decrypt_key(ptr noundef nonnull %1, i32 noundef %i.e, ptr noundef nonnull %i.i) #7 ; 0 uses
  %i.p = tail call i32 @CRYPTO_ocb128_init(ptr noundef nonnull %i.j, ptr noundef %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull @AES_encrypt, ptr noundef nonnull @AES_decrypt, ptr noundef null) #7
  %.not53 = icmp eq i32 %i.p, 0
  br i1 %.not53, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  br i1 %i.b, label %bb.i, label %.thread60

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61
  %.not55 = icmp eq i32 %i.r, 0
  br i1 %.not55, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !65   ; 2 uses
  %.not56 = icmp eq ptr %i.t, null
  br i1 %.not56, label %.thread, label %.thread60

.thread60:                                        ; preds = %bb.h, %bb.j
  %.04663 = phi ptr [ %i.t, %bb.j ], [ %2, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %i.w = load i32, ptr %i.v, align 8, !tbaa !66
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  %i.z = load i32, ptr %i.y, align 4, !tbaa !67
  %i.aa = sext i32 %i.z to i64
  %i.ab = tail call i32 @CRYPTO_ocb128_setiv(ptr noundef nonnull %i.u, ptr noundef nonnull %.04663, i64 noundef %i.x, i64 noundef %i.aa) #7
  %.not57 = icmp eq i32 %i.ab, 1
  br i1 %.not57, label %bb.k, label %.critedge

bb.k:                                             ; preds = %.thread60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store i32 1, ptr %i.ac, align 4, !tbaa !61
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.k, %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  store i32 1, ptr %i.ad, align 8, !tbaa !68
  br label %.critedge

bb.l:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 496
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !68
  %.not51 = icmp eq i32 %i.af, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !66
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 748
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !67
  %i.am = sext i32 %i.al to i64
  %i.an = tail call i32 @CRYPTO_ocb128_setiv(ptr noundef nonnull %i.ag, ptr noundef %2, i64 noundef %i.aj, i64 noundef %i.am) #7 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 680
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 744
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !66
  %i.as = sext i32 %i.ar to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr align 1 %2, i64 %i.as, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 500
  store i32 1, ptr %i.at, align 4, !tbaa !61
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.g, %bb.f, %.thread60, %bb.o, %.thread, %bb.a
  %.1 = phi i32 [ 1, %bb.o ], [ 1, %bb.a ], [ 1, %.thread ], [ 0, %.thread60 ], [ 0, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }

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
!11 = !{!12, !13, i64 248}
!12 = !{!"", !8, i64 0, !13, i64 248, !8, i64 256}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!8, !8, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = distinct !{!17, !16}
!18 = !{!19, !13, i64 744}
!19 = !{!"", !8, i64 0, !7, i64 248, !7, i64 252, !20, i64 256, !22, i64 704, !7, i64 712, !7, i64 716, !7, i64 720, !7, i64 724, !7, i64 728, !23, i64 736, !13, i64 744}
!20 = !{!"gcm128_context", !8, i64 0, !8, i64 16, !8, i64 32, !8, i64 48, !8, i64 64, !8, i64 80, !8, i64 96, !21, i64 352, !7, i64 376, !7, i64 380, !13, i64 384, !13, i64 392, !8, i64 400}
!21 = !{!"gcm_funcs_st", !13, i64 0, !13, i64 8, !13, i64 16}
!22 = !{!"p1 omnipotent char", !13, i64 0}
!23 = !{!"long", !8, i64 0}
!24 = !{!19, !7, i64 252}
!25 = !{!19, !22, i64 704}
!26 = !{!19, !7, i64 712}
!27 = !{!19, !7, i64 248}
!28 = !{!19, !7, i64 720}
!29 = !{!19, !7, i64 728}
!30 = !{!19, !23, i64 736}
!31 = !{!19, !13, i64 616}
!32 = !{!19, !13, i64 648}
!33 = !{!19, !7, i64 632}
!34 = !{!19, !7, i64 716}
!35 = !{!36, !37, i64 0}
!36 = !{!"evp_cipher_ctx_st", !37, i64 0, !38, i64 8, !7, i64 16, !7, i64 20, !8, i64 24, !8, i64 40, !8, i64 56, !7, i64 88, !13, i64 96, !7, i64 104, !7, i64 108, !23, i64 112, !13, i64 120, !7, i64 128, !7, i64 132, !8, i64 136, !23, i64 168, !13, i64 176, !37, i64 184}
!37 = !{!"p1 _ZTS13evp_cipher_st", !13, i64 0}
!38 = !{!"p1 _ZTS9engine_st", !13, i64 0}
!39 = !{!36, !7, i64 16}
!40 = !{!41, !13, i64 512}
!41 = !{!"", !8, i64 0, !8, i64 248, !42, i64 496, !13, i64 528}
!42 = !{!"xts128_context", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!43 = !{!41, !13, i64 528}
!44 = !{!41, !13, i64 520}
!45 = !{!41, !13, i64 496}
!46 = !{!41, !13, i64 504}
!47 = !{!48, !7, i64 268}
!48 = !{!"", !8, i64 0, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !49, i64 280, !13, i64 336}
!49 = !{!"ccm128_context", !8, i64 0, !8, i64 16, !50, i64 32, !13, i64 40, !13, i64 48}
!50 = !{!"long long", !8, i64 0}
!51 = !{!48, !7, i64 264}
!52 = !{!48, !13, i64 336}
!53 = !{!48, !7, i64 248}
!54 = !{!48, !7, i64 252}
!55 = !{!48, !7, i64 272}
!56 = !{!48, !7, i64 260}
!57 = !{!48, !7, i64 256}
!58 = !{!48, !13, i64 328}
!59 = !{!60, !22, i64 248}
!60 = !{!"", !8, i64 0, !22, i64 248}
!61 = !{!62, !7, i64 500}
!62 = !{!"", !8, i64 0, !8, i64 248, !7, i64 496, !7, i64 500, !63, i64 504, !22, i64 680, !8, i64 688, !8, i64 704, !8, i64 720, !7, i64 736, !7, i64 740, !7, i64 744, !7, i64 748}
!63 = !{!"ocb128_context", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !23, i64 40, !23, i64 48, !8, i64 56, !8, i64 72, !13, i64 88, !64, i64 96}
!64 = !{!"", !50, i64 0, !50, i64 8, !8, i64 16, !8, i64 32, !8, i64 48, !8, i64 64}
!65 = !{!62, !22, i64 680}
!66 = !{!62, !7, i64 744}
!67 = !{!62, !7, i64 748}
!68 = !{!62, !7, i64 496}
!69 = !{!62, !7, i64 736}
!70 = !{!62, !7, i64 740}
end_hunk_3
