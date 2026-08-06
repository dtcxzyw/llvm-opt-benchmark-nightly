begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"24-bit audio, monaural\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"24-bit audio, stereo\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"L24\00", align 1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @codec_register_l24() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call zeroext i1 @register_codec(ptr noundef nonnull @.str, ptr noundef nonnull @codec_l24_mono_init, ptr noundef nonnull @codec_l24_release, ptr noundef nonnull @codec_l24_get_channels, ptr noundef nonnull @codec_l24_get_frequency, ptr noundef nonnull @codec_l24_decode) ; 0 uses
  %i.b = tail call zeroext i1 @register_codec(ptr noundef nonnull @.str.1, ptr noundef nonnull @codec_l24_stereo_init, ptr noundef nonnull @codec_l24_release, ptr noundef nonnull @codec_l24_get_channels, ptr noundef nonnull @codec_l24_get_frequency, ptr noundef nonnull @codec_l24_decode) ; 0 uses
  %i.c = tail call zeroext i1 @register_codec(ptr noundef nonnull @.str.2, ptr noundef nonnull @codec_l24_init, ptr noundef nonnull @codec_l24_release, ptr noundef nonnull @codec_l24_get_channels, ptr noundef nonnull @codec_l24_get_frequency, ptr noundef nonnull @codec_l24_decode) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @register_codec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noalias noundef ptr @codec_l24_mono_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) #2 {
bb.a:
  store i32 44100, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 4
  store i32 1, ptr %i.a, align 4
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal void @codec_l24_release(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noundef i32 @codec_l24_get_channels(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 1, 0) i32 @codec_l24_get_frequency(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not, i32 44100, i32 %i.a
  ret i32 %spec.select
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable
define internal i64 @codec_l24_decode(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.b, i32 1) ; 4 uses
  %i.c = icmp ne ptr %3, null
  %i.d = icmp ne ptr %4, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader40, label %bb.b

.preheader40:                                     ; preds = %bb.a
  %i.e = mul i32 %spec.select, 3
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = udiv i64 %2, %i.f
  %.not = icmp ult i64 %2, %i.f
  %.pre = zext i32 %spec.select to i64            ; 5 uses
  br i1 %.not, label %._crit_edge, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader40
  %min.iters.check = icmp ult i32 %i.b, 8
  %n.vec = and i64 %.pre, 4294967288              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %.pre
  br label %.preheader

bb.b:                                             ; preds = %bb.a
  %i.h = zext i32 %spec.select to i64
  %i.i = udiv i64 %2, %i.h
  br label %bb.c

.preheader:                                       ; preds = %.preheader.preheader, %.loopexit
  %.03543 = phi i64 [ %i.bb, %.loopexit ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.j = mul i64 %.03543, %.pre
  %i.k = getelementptr [3 x i8], ptr %1, i64 %i.j ; 9 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 9 uses
  %vec.phi = phi <4 x i32> [ %i.au, %vector.body ], [ zeroinitializer, %.preheader ]
  %vec.phi48 = phi <4 x i32> [ %i.av, %vector.body ], [ zeroinitializer, %.preheader ]
  %i.l = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.m = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.n = getelementptr i8, ptr %i.m, i64 3
  %i.o = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.p = getelementptr i8, ptr %i.o, i64 6
  %i.q = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.r = getelementptr i8, ptr %i.q, i64 9
  %i.s = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.t = getelementptr i8, ptr %i.s, i64 12
  %i.u = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.v = getelementptr i8, ptr %i.u, i64 15
  %i.w = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.x = getelementptr i8, ptr %i.w, i64 18
  %i.y = getelementptr [3 x i8], ptr %i.k, i64 %index
  %i.z = getelementptr i8, ptr %i.y, i64 21
  %i.aa = load i16, ptr %i.l, align 1
  %i.ab = load i16, ptr %i.n, align 1
  %i.ac = load i16, ptr %i.p, align 1
  %i.ad = load i16, ptr %i.r, align 1
  %i.ae = insertelement <4 x i16> poison, i16 %i.aa, i64 0
  %i.af = insertelement <4 x i16> %i.ae, i16 %i.ab, i64 1
  %i.ag = insertelement <4 x i16> %i.af, i16 %i.ac, i64 2
  %i.ah = insertelement <4 x i16> %i.ag, i16 %i.ad, i64 3
  %i.ai = load i16, ptr %i.t, align 1
  %i.aj = load i16, ptr %i.v, align 1
  %i.ak = load i16, ptr %i.x, align 1
  %i.al = load i16, ptr %i.z, align 1
  %i.am = insertelement <4 x i16> poison, i16 %i.ai, i64 0
  %i.an = insertelement <4 x i16> %i.am, i16 %i.aj, i64 1
  %i.ao = insertelement <4 x i16> %i.an, i16 %i.ak, i64 2
  %i.ap = insertelement <4 x i16> %i.ao, i16 %i.al, i64 3
  %i.aq = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ah)
  %i.ar = tail call <4 x i16> @llvm.bswap.v4i16(<4 x i16> %i.ap)
  %i.as = sext <4 x i16> %i.aq to <4 x i32>
  %i.at = sext <4 x i16> %i.ar to <4 x i32>
  %i.au = add <4 x i32> %vec.phi, %i.as           ; 2 uses
  %i.av = add <4 x i32> %vec.phi48, %i.at         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.av, %i.au
  %i.ax = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  %.03341.ph = phi i32 [ 0, %.preheader ], [ %i.ax, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %i.ax, %middle.block ], [ %i.bg, %scalar.ph ]
  %i.ay = udiv i32 %.lcssa, %spec.select
  %i.az = trunc i32 %i.ay to i16
  %i.ba = getelementptr [2 x i8], ptr %3, i64 %.03543
  store i16 %i.az, ptr %i.ba, align 2
  %i.bb = add nuw i64 %.03543, 1                  ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.g
  br i1 %i.bc, label %.preheader, label %._crit_edge, !llvm.loop !10

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.03341 = phi i32 [ %i.bg, %scalar.ph ], [ %.03341.ph, %scalar.ph.preheader ]
  %i.bd = getelementptr [3 x i8], ptr %i.k, i64 %indvars.iv
  %i.be = load i16, ptr %i.bd, align 1
  %rev = tail call i16 @llvm.bswap.i16(i16 %i.be)
  %i.bf = sext i16 %rev to i32
  %i.bg = add i32 %.03341, %i.bf                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %.pre
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.loopexit, %.preheader40
  %i.bh = shl i64 %2, 1
  %5 = mul nuw nsw i64 %.pre, 3
  %i.bi = udiv i64 %i.bh, %5                      ; 2 uses
  store i64 %i.bi, ptr %4, align 8
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.034 = phi i64 [ %i.bi, %._crit_edge ], [ %i.i, %bb.b ]
  ret i64 %.034
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable
define internal noalias noundef ptr @codec_l24_stereo_init(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0) #2 {
bb.a:
  store i32 44100, ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 4
  store i32 2, ptr %i.a, align 4
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define internal noalias noundef ptr @codec_l24_init(ptr nofree readnone captures(none) %0) #3 {
bb.a:
  ret ptr null
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.bswap.v4i16(<4 x i16>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 8, !"cf-protection-return", i32 1}
!1 = !{i32 8, !"cf-protection-branch", i32 1}
!2 = !{i32 4, !"probe-stack", !"inline-asm"}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!6 = distinct !{!6, !7, !8, !9}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.isvectorized", i32 1}
!9 = !{!"llvm.loop.unroll.runtime.disable"}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7, !9, !8}
end_hunk_0
