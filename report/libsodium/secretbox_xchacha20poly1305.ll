Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/secretbox_xchacha20poly1305?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.crypto_onetimeauth_poly1305_state = type { [256 x i8] }

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_secretbox_xchacha20poly1305_detached(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.crypto_onetimeauth_poly1305_state, align 16 ; 6 uses
  %i.a = alloca [64 x i8], align 16               ; 10 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @crypto_core_hchacha20(ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #7 ; 0 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.f = icmp ugt ptr %0, %2
  %i.g = sub i64 %i.d, %i.e
  %i.h = icmp ult i64 %i.g, %3
  %or.cond = and i1 %i.f, %i.h
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt ptr %2, %0
  %i.j = sub i64 %i.e, %i.d
  %i.k = icmp ult i64 %i.j, %3
  %or.cond51 = and i1 %i.i, %i.k
  br i1 %or.cond51, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.a, %bb.b
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %2, i64 noundef %3, i1 noundef false) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %7 = icmp ugt i64 %3, 32
  %spec.store.select60 = call i64 @llvm.umin.i64(i64 %3, i64 32)
  br label %.lr.ph.preheader

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 noundef 0, i64 noundef 32, i1 noundef false) #7
  %8 = icmp ugt i64 %3, 32                        ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %3, i64 32) ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.c
  %spec.store.select64 = phi i64 [ %spec.store.select60, %.thread ], [ %spec.store.select, %bb.c ] ; 2 uses
  %9 = phi i1 [ %7, %.thread ], [ %8, %bb.c ]
  %.04362 = phi ptr [ %0, %.thread ], [ %2, %bb.c ] ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep, ptr align 1 %.04362, i64 %spec.store.select64, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.c
  %.not67 = phi i1 [ false, %.lr.ph.preheader ], [ true, %bb.c ]
  %spec.store.select65 = phi i64 [ %spec.store.select64, %.lr.ph.preheader ], [ %spec.store.select, %bb.c ] ; 5 uses
  %10 = phi i1 [ %9, %.lr.ph.preheader ], [ %8, %bb.c ]
  %.04363 = phi ptr [ %.04362, %.lr.ph.preheader ], [ %2, %bb.c ]
  %i.l = add nuw nsw i64 %spec.store.select65, 32
  %i.m = getelementptr i8, ptr %4, i64 16         ; 2 uses
  %i.n = call i32 @crypto_stream_chacha20_xor(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.l, ptr noundef %i.m, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.o = call i32 @crypto_onetimeauth_poly1305_init(ptr noundef nonnull %6, ptr noundef nonnull %i.a) #7 ; 0 uses
  br i1 %.not67, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %._crit_edge
  %scevgep58 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 16 %scevgep58, i64 %spec.store.select65, i1 false)
  br label %._crit_edge56

._crit_edge56:                                    ; preds = %.lr.ph55.preheader, %._crit_edge
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #7
  br i1 %10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge56
  %i.p = getelementptr i8, ptr %0, i64 %spec.store.select65
  %i.q = getelementptr i8, ptr %.04363, i64 %spec.store.select65
  %i.r = sub nuw i64 %3, %spec.store.select65
  %i.s = call i32 @crypto_stream_chacha20_xor_ic(ptr noundef %i.p, ptr noundef %i.q, i64 noundef %i.r, ptr noundef %i.m, i64 noundef 1, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge56
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 32) #7
  %i.t = call i32 @crypto_onetimeauth_poly1305_update(ptr noundef nonnull %6, ptr noundef nonnull %0, i64 noundef %3) #7 ; 0 uses
  %i.u = call i32 @crypto_onetimeauth_poly1305_final(ptr noundef nonnull %6, ptr noundef nonnull %1) #7 ; 0 uses
  call void @sodium_memzero(ptr noundef nonnull %6, i64 noundef 256) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @crypto_core_hchacha20(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_stream_chacha20_xor(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @sodium_memzero(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_stream_chacha20_xor_ic(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_update(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind ssp uwtable
define dso_local noundef i32 @crypto_secretbox_xchacha20poly1305_easy(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %2, -17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @sodium_misuse() #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = tail call i32 @crypto_secretbox_xchacha20poly1305_detached(ptr noundef %i.b, ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) ; 0 uses
  ret i32 0
}

; Function Attrs: noreturn
declare void @sodium_misuse() local_unnamed_addr #3

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_secretbox_xchacha20poly1305_open_detached(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 11 uses
  %i.b = alloca [32 x i8], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.c = call i32 @crypto_core_hchacha20(ptr noundef nonnull %i.b, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef null) #7 ; 0 uses
  %i.d = getelementptr i8, ptr %4, i64 16         ; 4 uses
  %i.e = call i32 @crypto_stream_chacha20(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef %i.d, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.f = call i32 @crypto_onetimeauth_poly1305_verify(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %3, ptr noundef nonnull %i.a) #7
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 32) #7
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %0, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 32) #7
  call void @sodium_memzero(ptr noundef nonnull %i.a, i64 noundef 64) #7
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  fence acquire
  %i.h = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.i = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.j = icmp ugt ptr %1, %0
  %i.k = sub i64 %i.h, %i.i
  %i.l = icmp ult i64 %i.k, %3
  %or.cond = and i1 %i.j, %i.l
  br i1 %or.cond, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = icmp ugt ptr %0, %1
  %i.n = sub i64 %i.i, %i.h
  %i.o = icmp ult i64 %i.n, %3
  %or.cond56 = and i1 %i.m, %i.o
  br i1 %or.cond56, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %0, ptr noundef nonnull align 1 %1, i64 noundef %3, i1 noundef false) #7
  %spec.store.select67 = call i64 @llvm.umin.i64(i64 %3, i64 32)
  br label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %spec.store.select = call i64 @llvm.umin.i64(i64 %3, i64 32)
  %.not62 = icmp eq i64 %3, 0
  br i1 %.not62, label %._crit_edge.thread, label %._crit_edge

._crit_edge.thread:                               ; preds = %bb.g
  %i.p = call i32 @crypto_stream_chacha20_xor(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef %i.d, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.g, %.thread
  %spec.store.select71 = phi i64 [ %spec.store.select67, %.thread ], [ %spec.store.select, %bb.g ] ; 6 uses
  %.04769 = phi ptr [ %0, %.thread ], [ %1, %bb.g ] ; 2 uses
  %6 = icmp ugt i64 %3, 32
  %scevgep = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %scevgep, ptr nonnull align 1 %.04769, i64 %spec.store.select71, i1 false)
  %i.q = add nuw nsw i64 %spec.store.select71, 32
  %i.r = call i32 @crypto_stream_chacha20_xor(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, i64 noundef %i.q, ptr noundef %i.d, ptr noundef nonnull %i.b) #7 ; 0 uses
  %scevgep64 = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 16 %scevgep64, i64 %spec.store.select71, i1 false)
  br i1 %6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.s = getelementptr i8, ptr %0, i64 %spec.store.select71
  %i.t = getelementptr i8, ptr %.04769, i64 %spec.store.select71
  %i.u = sub nuw i64 %3, %spec.store.select71
  %i.v = call i32 @crypto_stream_chacha20_xor_ic(ptr noundef %i.s, ptr noundef %i.t, i64 noundef %i.u, ptr noundef %i.d, i64 noundef 1, ptr noundef nonnull %i.b) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.thread, %._crit_edge, %bb.h
  call void @sodium_memzero(ptr noundef nonnull %i.b, i64 noundef 32) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.b
  %.046 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.046
}

declare i32 @crypto_stream_chacha20(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @crypto_onetimeauth_poly1305_verify(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind ssp uwtable
define dso_local range(i32 -1, 1) i32 @crypto_secretbox_xchacha20poly1305_open_easy(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, ptr noundef nonnull %3, ptr noundef nonnull %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %2, 16
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = add i64 %2, -16
  %i.d = tail call i32 @crypto_secretbox_xchacha20poly1305_open_detached(ptr noundef %0, ptr noundef %i.b, ptr noundef %1, i64 noundef %i.c, ptr noundef %3, ptr noundef %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_secretbox_xchacha20poly1305_keybytes() local_unnamed_addr #4 {
bb.a:
  ret i64 32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_secretbox_xchacha20poly1305_noncebytes() local_unnamed_addr #4 {
bb.a:
  ret i64 24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_secretbox_xchacha20poly1305_macbytes() local_unnamed_addr #4 {
bb.a:
  ret i64 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable
define dso_local noundef i64 @crypto_secretbox_xchacha20poly1305_messagebytes_max() local_unnamed_addr #4 {
bb.a:
  ret i64 -17
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind ssp willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
