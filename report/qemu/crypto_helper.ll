Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/crypto_helper?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0_@llvm.lifetime.end.p0
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_aes64es(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %union.AESState, align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = load i32, ptr @cpuinfo, align 4
  %i.c = and i32 %i.b, 262144
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  call fastcc void @aesenc_SB_SR_AK_accel(ptr noundef nonnull %2, <2 x i64> %.val.i, <2 x i64> zeroinitializer)
  br label %aesenc_SB_SR_AK.exit

bb.c:                                             ; preds = %bb.a
  call void @aesenc_SB_SR_AK_gen(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @aes_zero) #8
  br label %aesenc_SB_SR_AK.exit

aesenc_SB_SR_AK.exit:                             ; preds = %bb.b, %bb.c
  %i.d = load i64, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i64 %i.d
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_aes64ds(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %union.AESState, align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  store i64 %0, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = load i32, ptr @cpuinfo, align 4
  %i.c = and i32 %i.b, 262144
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  call fastcc void @aesdec_ISB_ISR_AK_accel(ptr noundef nonnull %2, <2 x i64> %.val.i)
  br label %aesdec_ISB_ISR_AK.exit

bb.c:                                             ; preds = %bb.a
  call void @aesdec_ISB_ISR_AK_gen(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull @aes_zero) #8
  br label %aesdec_ISB_ISR_AK.exit

aesdec_ISB_ISR_AK.exit:                           ; preds = %bb.b, %bb.c
  %i.d = load i64, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i64 %i.d
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_aes64dsm(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %union.AESState, align 16           ; 9 uses
  %3 = alloca %union.AESState, align 16           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  store i64 %0, ptr %2, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.a, align 8
  %i.b = load i32, ptr @cpuinfo, align 4
  %i.c = and i32 %i.b, 262144
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %2, align 16
  call fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr noundef nonnull %2, <2 x i64> %.val.i, <2 x i64> zeroinitializer)
  br label %aesdec_ISB_ISR_IMC_AK.exit

bb.c:                                             ; preds = %bb.a
  call void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  br label %aesdec_ISB_ISR_IMC_AK.exit

aesdec_ISB_ISR_IMC_AK.exit:                       ; preds = %bb.b, %bb.c
  %i.d = load i64, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local i64 @helper_aes64ks2(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %0, 32
  %i.b = xor i64 %i.a, %1                         ; 2 uses
  %i.c = shl i64 %i.b, 32
  %.masked = and i64 %1, -4294967296
  %i.d = xor i64 %i.c, %.masked
  %i.e = and i64 %i.b, 4294967295
  %i.f = or disjoint i64 %i.d, %i.e
  ret i64 %i.f
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_aes64ks1i(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %union.AESState, align 16           ; 8 uses
  %3 = alloca %union.AESState, align 16           ; 7 uses
  %i.a = lshr i64 %0, 32
  %i.b = trunc nuw i64 %i.a to i32                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.c = and i64 %1, 255                          ; 2 uses
  %.not = icmp eq i64 %i.c, 10
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 24)
  %i.e = getelementptr inbounds nuw i8, ptr @helper_aes64ks1i.round_consts, i64 %i.c
  %i.f = load i8, ptr %i.e, align 1
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.g, ptr %i.h, align 4
  store i32 %i.g, ptr %3, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %i.d, %bb.b ], [ %i.b, %bb.a ]
  %i.i = insertelement <4 x i32> poison, i32 %.0, i64 0
  %i.j = shufflevector <4 x i32> %i.i, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.j, ptr %2, align 16
  %i.k = load i32, ptr @cpuinfo, align 4
  %i.l = and i32 %i.k, 262144
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %.val.i = load <2 x i64>, ptr %2, align 16
  %.val10.i = load <2 x i64>, ptr %3, align 16
  call fastcc void @aesenc_SB_SR_AK_accel(ptr noundef nonnull %2, <2 x i64> %.val.i, <2 x i64> %.val10.i)
  br label %aesenc_SB_SR_AK.exit

bb.e:                                             ; preds = %bb.c
  call void @aesenc_SB_SR_AK_gen(ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  br label %aesenc_SB_SR_AK.exit

aesenc_SB_SR_AK.exit:                             ; preds = %bb.d, %bb.e
  %i.m = load i64, ptr %2, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i64 %i.m
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local i64 @helper_aes64im(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %1 = alloca %union.AESState, align 16           ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 %0, ptr %1, align 16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.a, align 8
  %i.b = load i32, ptr @cpuinfo, align 4
  %i.c = and i32 %i.b, 262144
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %.val.i = load <2 x i64>, ptr %1, align 16
  call fastcc void @aesdec_IMC_accel(ptr noundef nonnull %1, <2 x i64> %.val.i)
  br label %aesdec_IMC.exit

bb.c:                                             ; preds = %bb.a
  call void @aesdec_IMC_gen(ptr noundef nonnull %1, ptr noundef nonnull %1) #8
  br label %aesdec_IMC.exit

aesdec_IMC.exit:                                  ; preds = %bb.b, %bb.c
  %i.d = load i64, ptr %1, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @helper_sm4ed(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, %2
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 6 uses
  %i.f = shl nuw nsw i32 %i.e, 8
  %i.g = or disjoint i32 %i.f, %i.e
  %i.h = shl nuw nsw i32 %i.e, 2
  %i.i = xor i32 %i.g, %i.h
  %i.j = shl nuw nsw i32 %i.e, 18
  %i.k = or disjoint i32 %i.i, %i.j
  %i.l = shl i32 %i.e, 26
  %i.m = or disjoint i32 %i.k, %i.l
  %i.n = shl nuw nsw i32 %i.e, 10
  %i.o = and i32 %i.n, 196608
  %3 = or disjoint i32 %i.m, %i.o                 ; 2 uses
  %i.p = trunc i64 %2 to i32
  %i.q = tail call noundef i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 %i.p)
  %i.r = trunc i64 %0 to i32
  %i.s = xor i32 %i.q, %i.r
  %i.t = sext i32 %i.s to i64
  ret i64 %i.t
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @helper_sm4ks(i64 noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = lshr i64 %1, %2
  %i.b = and i64 %i.a, 255
  %i.c = getelementptr inbounds nuw i8, ptr @sm4_sbox, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i32                      ; 5 uses
  %i.f = shl i32 %i.e, 29
  %i.g = shl nuw nsw i32 %i.e, 7
  %i.h = and i32 %i.g, 32512
  %i.i = or disjoint i32 %i.h, %i.f
  %i.j = shl nuw nsw i32 %i.e, 23
  %i.k = and i32 %i.j, 8388608
  %i.l = or disjoint i32 %i.i, %i.k
  %i.m = shl nuw nsw i32 %i.e, 13
  %i.n = and i32 %i.m, 2031616
  %i.o = or disjoint i32 %i.l, %i.n
  %i.p = or disjoint i32 %i.o, %i.e               ; 2 uses
  %i.q = trunc i64 %2 to i32
  %i.r = tail call noundef i32 @llvm.fshl.i32(i32 %i.p, i32 %i.p, i32 %i.q)
  %i.s = trunc i64 %0 to i32
  %i.t = xor i32 %i.r, %i.s
  %i.u = sext i32 %i.t to i64
  ret i64 %i.u
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_MC_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64> %.0.val, <2 x i64> zeroinitializer)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_MC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenc(<2 x i64>, <2 x i64>) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesenc_SB_SR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesenc_SB_SR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesenclast(<2 x i64>, <2 x i64>) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64> %.0.val, <2 x i64> zeroinitializer)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdeclast(<2 x i64>, <2 x i64>) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_ISB_ISR_IMC_AK_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val, <2 x i64> %.0.val1) unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64> %.0.val, <2 x i64> %.0.val1)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_ISB_ISR_IMC_AK_gen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesdec(<2 x i64>, <2 x i64>) #7

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal fastcc void @aesdec_IMC_accel(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 16)) %0, <2 x i64> %.0.val) unnamed_addr #5 {
bb.a:
  %i.a = tail call <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64> %.0.val)
  store <2 x i64> %i.a, ptr %0, align 16
  ret void
}

declare void @aesdec_IMC_gen(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <2 x i64> @llvm.x86.aesni.aesimc(<2 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { inlinehint mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+aes,+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
