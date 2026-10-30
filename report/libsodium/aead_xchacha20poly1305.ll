Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/aead_xchacha20poly1305?download=true
inline.NumInlined: 6
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_onetimeauth_poly1305_state = type { [256 x i8] }

@_pad0 = internal constant [16 x i8] zeroinitializer, align 16

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_aead_xchacha20poly1305_ietf_encrypt_detached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr nofree readnone captures(none) %7, ptr noundef nonnull %8, ptr noundef nonnull %9) local_unnamed_addr #0 {
bb.a:
  %10 = alloca %struct.crypto_onetimeauth_poly1305_state, align 16 ; 11 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %i.d = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4
  %i.e = call i32 @crypto_core_hchacha20(ptr noundef nonnull %i.c, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef null) #6 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr i8, ptr %8, i64 16
  %i.h = load i64, ptr %i.g, align 1
  store i64 %i.h, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.i = call i32 @crypto_stream_chacha20_ietf_ext(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.j = call i32 @crypto_onetimeauth_poly1305_init(ptr noundef nonnull %10, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %i.k = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef %5, i64 noundef %6) #6 ; 0 uses
  %i.l = sub i64 0, %6
  %i.m = and i64 %i.l, 15
  %i.n = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef nonnull @_pad0, i64 noundef %i.m) #6 ; 0 uses
  %i.o = call i32 @crypto_stream_chacha20_ietf_ext_xor_ic(ptr noundef nonnull %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef nonnull %i.c) #6 ; 0 uses
  %i.p = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef nonnull %0, i64 noundef %4) #6 ; 0 uses
  %i.q = sub i64 0, %4
  %i.r = and i64 %i.q, 15
  %i.s = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef nonnull @_pad0, i64 noundef %i.r) #6 ; 0 uses
  store i64 %6, ptr %i.b, align 8
  %i.t = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i64 noundef 8) #6 ; 0 uses
  store i64 %4, ptr %i.b, align 8
  %i.u = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %10, ptr noundef nonnull %i.b, i64 noundef 8) #6 ; 0 uses
  %i.v = call i32 @crypto_onetimeauth_poly1305_final(ptr noundef nonnull %10, ptr noundef nonnull %1) #6 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %10, i64 noundef 256) #6
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %_encrypt_detached.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 16, ptr %2, align 8
  br label %_encrypt_detached.exit

_encrypt_detached.exit:                           ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #6
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 32) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @crypto_core_hchacha20(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_aead_xchacha20poly1305_ietf_encrypt(ptr noundef nonnull %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr nofree noundef readnone captures(none) %6, ptr noundef nonnull %7, ptr noundef nonnull %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %3, -17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 %3
  %i.c = tail call i32 @crypto_aead_xchacha20poly1305_ietf_encrypt_detached(ptr noundef %0, ptr noundef %i.b, ptr noundef null, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr poison, ptr noundef %7, ptr noundef %8) ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = add nuw i64 %3, 16
  store i64 %i.d, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 0
}

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_xchacha20poly1305_ietf_decrypt_detached(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca %struct.crypto_onetimeauth_poly1305_state, align 16 ; 11 uses
  %i.a = alloca [64 x i8], align 16               ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 16               ; 5 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  %i.e = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 0, ptr %i.e, align 4
  %i.f = call i32 @crypto_core_hchacha20(ptr noundef nonnull %i.d, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef null) #6 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = getelementptr i8, ptr %7, i64 16
  %i.i = load i64, ptr %i.h, align 1
  store i64 %i.i, ptr %i.g, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.j = call i32 @crypto_stream_chacha20_ietf_ext(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d) #6 ; 0 uses
  %i.k = call i32 @crypto_onetimeauth_poly1305_init(ptr noundef nonnull %9, ptr noundef nonnull %i.a) #6 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %i.l = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef %5, i64 noundef %6) #6 ; 0 uses
  %i.m = sub i64 0, %6
  %i.n = and i64 %i.m, 15
  %i.o = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef nonnull @_pad0, i64 noundef %i.n) #6 ; 0 uses
  %i.p = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef nonnull %2, i64 noundef %3) #6 ; 0 uses
  %i.q = sub i64 0, %3
  %i.r = and i64 %i.q, 15
  %i.s = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef nonnull @_pad0, i64 noundef %i.r) #6 ; 0 uses
  store i64 %6, ptr %i.b, align 8
  %i.t = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i64 noundef 8) #6 ; 0 uses
  store i64 %3, ptr %i.b, align 8
  %i.u = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %9, ptr noundef nonnull %i.b, i64 noundef 8) #6 ; 0 uses
  %i.v = call i32 @crypto_onetimeauth_poly1305_final(ptr noundef nonnull %9, ptr noundef nonnull %i.c) #6 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %9, i64 noundef 256) #6
  %i.w = call i32 @crypto_verify_16(ptr noundef nonnull %i.c, ptr noundef nonnull %4) #6 ; 2 uses
  call void @sodium_memzero(ptr noundef nonnull %i.c, i64 noundef 16) #6
  %i.x = icmp eq ptr %0, null
  br i1 %i.x, label %_decrypt_detached.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %0, i8 noundef 0, i64 noundef %3, i1 noundef false) #6
  br label %_decrypt_detached.exit

bb.d:                                             ; preds = %bb.b
  fence acquire
  %i.y = call i32 @crypto_stream_chacha20_ietf_ext_xor_ic(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %i.e, i32 noundef 1, ptr noundef nonnull %i.d) #6 ; 0 uses
  br label %_decrypt_detached.exit

_decrypt_detached.exit:                           ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi i32 [ 0, %bb.d ], [ -1, %bb.c ], [ %i.w, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #6
  call void @sodium_memzero(ptr noundef nonnull %i.d, i64 noundef 32) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  ret i32 %.0.i
}

; Function Attrs: nounwind ssp uwtable
define dso_local i32 @crypto_aead_xchacha20poly1305_ietf_decrypt(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef readnone captures(none) %2, ptr noundef nonnull %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, ptr noundef nonnull %7, ptr noundef nonnull %8) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %4, 15
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = add i64 %4, -16
  %i.c = getelementptr i8, ptr %3, i64 %4
  %i.d = getelementptr i8, ptr %i.c, i64 -16
  %i.e = tail call i32 @crypto_aead_xchacha20poly1305_ietf_decrypt_detached(ptr noundef %0, ptr poison, ptr noundef %3, i64 noundef %i.b, ptr noundef %i.d, ptr noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.a = phi i32 [ %i.e, %bb.b ], [ -1, %bb.a ]  ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %9 = icmp eq i32 %.0.a, 0
  %i.f = add i64 %4, -16
  %spec.select = select i1 %9, i64 %i.f, i64 0
  store i64 %spec.select, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %.0.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_aead_xchacha20poly1305_ietf_keybytes() local_unnamed_addr #4 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_aead_xchacha20poly1305_ietf_npubbytes() local_unnamed_addr #4 {
bb.a:
  ret i64 24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_aead_xchacha20poly1305_ietf_nsecbytes() local_unnamed_addr #4 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_aead_xchacha20poly1305_ietf_abytes() local_unnamed_addr #4 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_aead_xchacha20poly1305_ietf_messagebytes_max() local_unnamed_addr #4 {
bb.a:
  ret i64 -17
}

; Function Attrs: nounwind ssp uwtable
define dso_local void @crypto_aead_xchacha20poly1305_ietf_keygen(ptr noundef nonnull %0) local_unnamed_addr #0 {
bb.a:
  tail call void @randombytes_buf(ptr noundef nonnull %0, i64 noundef 32) #6
  ret void
}

declare void @randombytes_buf(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_stream_chacha20_ietf_ext(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_stream_chacha20_ietf_ext_xor_ic(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_final(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_verify_16(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
