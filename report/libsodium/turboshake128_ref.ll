Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libsodium/original/turboshake128_ref?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.turboshake128_state_internal_ = type { %struct.crypto_core_keccak1600_state, i64, i8, i8 }
%struct.crypto_core_keccak1600_state = type { [224 x i8] }

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @turboshake128_ref_init_with_domain(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  tail call void @crypto_core_keccak1600_init(ptr noundef %0) #4
  %i.a = getelementptr i8, ptr %0, i64 224
  store i64 0, ptr %i.a, align 16
  %i.b = getelementptr i8, ptr %0, i64 232
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 233
  store i8 %1, ptr %i.c, align 1
  ret i32 0
}

declare void @crypto_core_keccak1600_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @turboshake128_ref_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @crypto_core_keccak1600_init(ptr noundef %0) #4
  %i.a = getelementptr i8, ptr %0, i64 224
  store i64 0, ptr %i.a, align 16
  %i.b = getelementptr i8, ptr %0, i64 232
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 233
  store i8 31, ptr %i.c, align 1
  ret i32 0
}

; Function Attrs: nounwind ssp uwtable
define hidden range(i32 -1, 1) i32 @turboshake128_ref_update(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %i.b = load i8, ptr %i.a, align 8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %0) #4
  store i8 0, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 224
  store i64 0, ptr %i.c, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ]
  %.not30 = icmp eq i64 %2, 0
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 224        ; 4 uses
  %.pre = load i64, ptr %i.d, align 16
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %i.e = phi i64 [ %.pre, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  %.02529 = phi i64 [ 0, %.lr.ph ], [ %i.m, %bb.f ] ; 3 uses
  %i.f = icmp eq i64 %i.e, 168
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %0) #4
  store i64 0, ptr %i.d, align 16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = phi i64 [ 0, %bb.e ], [ %i.e, %bb.d ]    ; 2 uses
  %i.h = sub i64 168, %i.g
  %i.i = sub nuw i64 %2, %.02529
  %spec.select = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.i) ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 %.02529
  tail call void @crypto_core_keccak1600_xor_bytes(ptr noundef nonnull %0, ptr noundef %i.j, i64 noundef %i.g, i64 noundef %spec.select) #4
  %i.k = load i64, ptr %i.d, align 16
  %i.l = add i64 %i.k, %spec.select               ; 2 uses
  store i64 %i.l, ptr %i.d, align 16
  %i.m = add i64 %spec.select, %.02529            ; 2 uses
  %i.n = icmp ult i64 %i.m, %2
  br i1 %i.n, label %bb.d, label %._crit_edge, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.f, %bb.c
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @crypto_core_keccak1600_permute_12(ptr noundef) local_unnamed_addr #1

declare void @crypto_core_keccak1600_xor_bytes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @turboshake128_ref_squeeze(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 232        ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.e = getelementptr i8, ptr %0, i64 224        ; 3 uses
  %i.f = load i64, ptr %i.e, align 16             ; 2 uses
  %3 = icmp eq i64 %i.f, 168
  br i1 %3, label %.thread.i, label %4

.thread.i:                                        ; preds = %bb.b
  tail call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %0) #4
  store i64 0, ptr %i.e, align 16
  br label %4

4:                                                ; preds = %.thread.i, %bb.b
  %5 = phi i64 [ 0, %.thread.i ], [ %i.f, %bb.b ] ; 2 uses
  %6 = icmp eq i64 %5, 167
  %7 = getelementptr i8, ptr %0, i64 233          ; 2 uses
  br i1 %6, label %bb.c, label %bb.d

bb.c:                                             ; preds = %4
  %i.g = load i8, ptr %7, align 1
  %i.h = xor i8 %i.g, -128
  br label %turboshake128_finalize.exit

bb.d:                                             ; preds = %4
  tail call void @crypto_core_keccak1600_xor_bytes(ptr noundef nonnull %0, ptr noundef %7, i64 noundef %5, i64 noundef 1) #4
  br label %turboshake128_finalize.exit

turboshake128_finalize.exit:                      ; preds = %bb.c, %bb.d
  %.sink.i = phi i8 [ -128, %bb.d ], [ %i.h, %bb.c ]
  store i8 %.sink.i, ptr %i.a, align 1
  call void @crypto_core_keccak1600_xor_bytes(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef 167, i64 noundef 1) #4
  call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %0) #4
  store i64 0, ptr %i.e, align 16
  store i8 1, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %turboshake128_finalize.exit, %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 224        ; 4 uses
  %.pre = load i64, ptr %i.i, align 16
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.q, %bb.h ] ; 2 uses
  %.02125 = phi i64 [ 0, %.lr.ph ], [ %i.r, %bb.h ] ; 3 uses
  %i.k = icmp eq i64 %i.j, 168
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %0) #4
  store i64 0, ptr %i.i, align 16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.l = phi i64 [ 0, %bb.g ], [ %i.j, %bb.f ]    ; 2 uses
  %i.m = sub i64 168, %i.l
  %i.n = sub nuw i64 %2, %.02125
  %spec.select = call i64 @llvm.umin.i64(i64 %i.m, i64 %i.n) ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %.02125
  call void @crypto_core_keccak1600_extract_bytes(ptr noundef nonnull %0, ptr noundef %i.o, i64 noundef %i.l, i64 noundef %spec.select) #4
  %i.p = load i64, ptr %i.i, align 16
  %i.q = add i64 %i.p, %spec.select               ; 2 uses
  store i64 %i.q, ptr %i.i, align 16
  %i.r = add i64 %spec.select, %.02125            ; 2 uses
  %i.s = icmp ult i64 %i.r, %2
  br i1 %i.s, label %bb.f, label %._crit_edge, !llvm.loop !6

._crit_edge:                                      ; preds = %bb.h, %bb.e
  ret i32 0
}

declare void @crypto_core_keccak1600_extract_bytes(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind ssp uwtable
define hidden noundef i32 @turboshake128_ref(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.turboshake128_state_internal_, align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @crypto_core_keccak1600_init(ptr noundef nonnull %4) #4
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 4 uses
  store i64 0, ptr %i.a, align 16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 232
  store i8 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 233
  store i8 31, ptr %i.c, align 1
  %.not30.i = icmp eq i64 %3, 0
  br i1 %.not30.i, label %turboshake128_ref_update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %i.d = phi i64 [ %i.k, %bb.c ], [ 0, %bb.a ]    ; 2 uses
  %.02529.i = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %i.e = icmp eq i64 %i.d, 168
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  call void @crypto_core_keccak1600_permute_12(ptr noundef nonnull %4) #4
  store i64 0, ptr %i.a, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i64 [ 0, %bb.b ], [ %i.d, %.lr.ph.i ] ; 2 uses
  %i.g = sub i64 168, %i.f
  %i.h = sub nuw i64 %3, %.02529.i
  %spec.select.i = call i64 @llvm.umin.i64(i64 %i.g, i64 %i.h) ; 3 uses
  %i.i = getelementptr i8, ptr %2, i64 %.02529.i
  call void @crypto_core_keccak1600_xor_bytes(ptr noundef nonnull %4, ptr noundef %i.i, i64 noundef %i.f, i64 noundef %spec.select.i) #4
  %i.j = load i64, ptr %i.a, align 16
  %i.k = add i64 %i.j, %spec.select.i             ; 2 uses
  store i64 %i.k, ptr %i.a, align 16
  %i.l = add i64 %spec.select.i, %.02529.i        ; 2 uses
  %i.m = icmp ult i64 %i.l, %3
  br i1 %i.m, label %.lr.ph.i, label %turboshake128_ref_update.exit, !llvm.loop !0

turboshake128_ref_update.exit:                    ; preds = %bb.c, %bb.a
  %i.n = call i32 @turboshake128_ref_squeeze(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

attributes #0 = { nounwind ssp uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
end_hunk_0
