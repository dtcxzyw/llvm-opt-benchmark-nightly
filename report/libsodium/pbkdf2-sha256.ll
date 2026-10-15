Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/pbkdf2-sha256?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_auth_hmacsha256_state = type { %struct.crypto_hash_sha256_state, %struct.crypto_hash_sha256_state }
%struct.crypto_hash_sha256_state = type { [8 x i32], i64, [64 x i8] }

; Function Attrs: nounwind ssp uwtable
define hidden void @escrypt_PBKDF2_SHA256(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6) local_unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.crypto_auth_hmacsha256_state, align 8 ; 7 uses
  %8 = alloca %struct.crypto_auth_hmacsha256_state, align 8 ; 11 uses
  %i.a = alloca [4 x i8], align 1                 ; 9 uses
  %i.b = alloca [32 x i8], align 16               ; 10 uses
  %i.c = alloca [32 x i8], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = icmp ugt i64 %6, 137438953440
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = call i32 @crypto_auth_hmacsha256_init(ptr noundef nonnull %7, ptr noundef %0, i64 noundef %1) #5 ; 0 uses
  %i.f = call i32 @crypto_auth_hmacsha256_update(ptr noundef nonnull %7, ptr noundef %2, i64 noundef %3) #5 ; 0 uses
  %.not34 = icmp eq i64 %6, 0
  br i1 %.not34, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.not28 = icmp ult i64 %4, 2
  br i1 %.not28, label %.lr.ph32.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.16..sroa_idx136 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph

.lr.ph32.split.us:                                ; preds = %.lr.ph32, %.lr.ph32.split.us
  %i.k = phi i64 [ %i.x, %.lr.ph32.split.us ], [ 0, %.lr.ph32 ] ; 2 uses
  %.02430.us = phi i64 [ %i.l, %.lr.ph32.split.us ], [ 0, %.lr.ph32 ]
  %i.l = add i64 %.02430.us, 1                    ; 6 uses
  %i.m = trunc i64 %i.l to i8
  store i8 %i.m, ptr %i.g, align 1
  %i.n = lshr i64 %i.l, 8
  %i.o = trunc i64 %i.n to i8
  store i8 %i.o, ptr %i.h, align 1
  %i.p = lshr i64 %i.l, 16
  %i.q = trunc i64 %i.p to i8
  store i8 %i.q, ptr %i.i, align 1
  %i.r = lshr i64 %i.l, 24
  %i.s = trunc i64 %i.r to i8
  store i8 %i.s, ptr %i.a, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 noundef 208, i1 noundef false) #5
  %i.t = call i32 @crypto_auth_hmacsha256_update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 4) #5 ; 0 uses
  %i.u = call i32 @crypto_auth_hmacsha256_final(ptr noundef nonnull %8, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.v = sub nuw nsw i64 %6, %i.k
  %spec.store.select.us = call i64 @llvm.umin.i64(i64 %i.v, i64 32)
  %i.w = getelementptr i8, ptr %5, i64 %i.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull align 16 %i.b, i64 noundef range(i64 -137438953439, 137438953441) %spec.store.select.us, i1 noundef false) #5
  %i.x = shl i64 %i.l, 5                          ; 2 uses
  %9 = icmp ult i64 %i.x, %6
  br i1 %9, label %.lr.ph32.split.us, label %._crit_edge33, !llvm.loop !4

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %i.y = phi i64 [ %i.av, %._crit_edge ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02430 = phi i64 [ %i.z, %._crit_edge ], [ 0, %.lr.ph.preheader ]
  %i.z = add i64 %.02430, 1                       ; 6 uses
  %i.aa = trunc i64 %i.z to i8
  store i8 %i.aa, ptr %i.g, align 1
  %i.ab = lshr i64 %i.z, 8
  %i.ac = trunc i64 %i.ab to i8
  store i8 %i.ac, ptr %i.h, align 1
  %i.ad = lshr i64 %i.z, 16
  %i.ae = trunc i64 %i.ad to i8
  store i8 %i.ae, ptr %i.i, align 1
  %i.af = lshr i64 %i.z, 24
  %i.ag = trunc i64 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %8, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 noundef 208, i1 noundef false) #5
  %i.ah = call i32 @crypto_auth_hmacsha256_update(ptr noundef nonnull %8, ptr noundef nonnull %i.a, i64 noundef 4) #5 ; 0 uses
  %i.ai = call i32 @crypto_auth_hmacsha256_final(ptr noundef nonnull %8, ptr noundef nonnull %i.b) #5 ; 0 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 noundef 32, i1 noundef false) #5
  %.0. = load <16 x i8>, ptr %i.c, align 16
  %.16. = load <16 x i8>, ptr %.16..sroa_idx, align 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.02329 = phi i64 [ 2, %.lr.ph ], [ %i.as, %bb.d ]
  %i.aj = phi <16 x i8> [ %.0., %.lr.ph ], [ %i.ap, %bb.d ]
  %i.ak = phi <16 x i8> [ %.16., %.lr.ph ], [ %i.ar, %bb.d ]
  %i.al = call i32 @crypto_auth_hmacsha256_init(ptr noundef nonnull %8, ptr noundef %0, i64 noundef %1) #5 ; 0 uses
  %i.am = call i32 @crypto_auth_hmacsha256_update(ptr noundef nonnull %8, ptr noundef nonnull %i.b, i64 noundef 32) #5 ; 0 uses
  %i.an = call i32 @crypto_auth_hmacsha256_final(ptr noundef nonnull %8, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.ao = load <16 x i8>, ptr %i.b, align 16
  %i.ap = xor <16 x i8> %i.aj, %i.ao              ; 2 uses
  %i.aq = load <16 x i8>, ptr %i.j, align 16
  %i.ar = xor <16 x i8> %i.ak, %i.aq              ; 2 uses
  %i.as = add i64 %.02329, 1                      ; 2 uses
  %.not = icmp ugt i64 %i.as, %4
  br i1 %.not, label %._crit_edge, label %bb.d, !llvm.loop !5

._crit_edge:                                      ; preds = %bb.d
  store <16 x i8> %i.ap, ptr %i.c, align 16
  store <16 x i8> %i.ar, ptr %.16..sroa_idx136, align 16
  %i.at = sub nuw nsw i64 %6, %i.y
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.at, i64 32)
  %i.au = getelementptr i8, ptr %5, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.au, ptr noundef nonnull align 16 %i.c, i64 noundef range(i64 -137438953439, 137438953441) %spec.store.select, i1 noundef false) #5
  %i.av = shl i64 %i.z, 5                         ; 2 uses
  %10 = icmp ult i64 %i.av, %6
  br i1 %10, label %.lr.ph, label %._crit_edge33, !llvm.loop !4

._crit_edge33:                                    ; preds = %._crit_edge, %.lr.ph32.split.us, %bb.c
  call void @sodium_memzero(ptr noundef nonnull %7, i64 noundef 208) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #2

declare i32 @crypto_auth_hmacsha256_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @crypto_auth_hmacsha256_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @crypto_auth_hmacsha256_final(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !6}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_0
