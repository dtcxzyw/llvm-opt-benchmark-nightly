Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n2fv_6?download=true
inline.NumInlined: 16
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 6, ptr @.str, %struct.opcnt { double 1.600000e+01, double 2.000000e+00, double 2.000000e+00, double 0.000000e+00 }, ptr @fftw_dft_n2fsimd_genus_avx2_128, i64 0, i64 2, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [16 x i8] c"n2fv_6_avx2_128\00", align 1
@fftw_dft_n2fsimd_genus_avx2_128 = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n2fv_6_avx2_128(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n2fv_6, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n2fv_6(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0111 = phi ptr [ %4, %.lr.ph ], [ %i.az, %bb.b ] ; 6 uses
  %.0101110 = phi i64 [ %6, %.lr.ph ], [ %i.aw, %bb.b ] ; 2 uses
  %.0102109 = phi ptr [ %0, %.lr.ph ], [ %i.ax, %bb.b ] ; 7 uses
  %.0103108 = phi ptr [ %2, %.lr.ph ], [ %i.ay, %bb.b ] ; 5 uses
  %.0102.val = load <2 x double>, ptr %.0102109, align 16, !tbaa !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0111, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %.0111, i64 8
  %.val107 = load <2 x double>, ptr %i.e, align 16, !tbaa !12 ; 2 uses
  %i.g = fsub <2 x double> %.0102.val, %.val107   ; 2 uses
  %i.h = fadd <2 x double> %.0102.val, %.val107   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0111, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %i.j
  %.val106 = load <2 x double>, ptr %i.k, align 16, !tbaa !12 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0111, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %i.m
  %.val105 = load <2 x double>, ptr %i.n, align 16, !tbaa !12 ; 2 uses
  %i.o = fsub <2 x double> %.val106, %.val105     ; 2 uses
  %i.p = fadd <2 x double> %.val106, %.val105     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0111, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %i.r
  %.val104 = load <2 x double>, ptr %i.s, align 16, !tbaa !12 ; 2 uses
  %i.t = load i64, ptr %i.f, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %i.t
  %.val = load <2 x double>, ptr %i.u, align 16, !tbaa !12 ; 2 uses
  %i.v = fsub <2 x double> %.val104, %.val        ; 2 uses
  %i.w = fadd <2 x double> %.val104, %.val        ; 2 uses
  %i.x = fadd <2 x double> %i.o, %i.v             ; 2 uses
  %i.y = fadd <2 x double> %i.p, %i.w             ; 2 uses
  %i.z = fadd <2 x double> %i.g, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.0103108, i64 48
  %i.ab = fadd <2 x double> %i.h, %i.y
  %i.ac = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.x, <2 x double> splat (double -5.000000e-01), <2 x double> %i.g) ; 2 uses
  %i.ad = fsub <2 x double> %i.v, %i.o
  %i.ae = fmul <2 x double> %i.ad, splat (double f0x3FEBB67AE8584CAA)
  %i.af = bitcast <2 x double> %i.ae to <2 x i64>
  %i.ag = xor <2 x i64> %i.af, <i64 0, i64 -9223372036854775808>
  %i.ah = bitcast <2 x i64> %i.ag to <2 x double>
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aj = fsub <2 x double> %i.ac, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.0103108, i64 80
  store <2 x double> %i.aj, ptr %i.ak, align 16, !tbaa !12
  %i.al = fadd <2 x double> %i.ac, %i.ai
  %9 = shufflevector <2 x double> %i.ab, <2 x double> %i.al, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %9, ptr %.0103108, align 16, !tbaa !12
  %i.am = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.y, <2 x double> splat (double -5.000000e-01), <2 x double> %i.h) ; 2 uses
  %i.an = fsub <2 x double> %i.w, %i.p
  %i.ao = fmul <2 x double> %i.an, splat (double f0x3FEBB67AE8584CAA)
  %i.ap = bitcast <2 x double> %i.ao to <2 x i64>
  %i.aq = xor <2 x i64> %i.ap, <i64 0, i64 -9223372036854775808>
  %i.ar = bitcast <2 x i64> %i.aq to <2 x double>
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.at = fsub <2 x double> %i.am, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %.0103108, i64 32
  store <2 x double> %i.at, ptr %i.au, align 16, !tbaa !12
  %i.av = fadd <2 x double> %i.am, %i.as
  %10 = shufflevector <2 x double> %i.z, <2 x double> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %10, ptr %i.aa, align 16, !tbaa !12
  %i.aw = add nsw i64 %.0101110, -1
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0102109, i64 %7
  %i.ay = getelementptr inbounds [8 x i8], ptr %.0103108, i64 %8
  %i.az = getelementptr inbounds [8 x i8], ptr %.0111, i64 %i.b
  %i.ba = icmp samesign ugt i64 %.0101110, 1
  br i1 %i.ba, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fma.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !13}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!5, !5, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
end_hunk_0
