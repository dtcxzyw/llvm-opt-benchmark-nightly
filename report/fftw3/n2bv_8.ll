Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n2bv_8?download=true
inline.NumInlined: 21
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 8, ptr @.str, %struct.opcnt { double 2.600000e+01, double 2.000000e+00, double 0.000000e+00, double 0.000000e+00 }, ptr @fftw_dft_n2bsimd_genus_avx2_128, i64 0, i64 2, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [16 x i8] c"n2bv_8_avx2_128\00", align 1
@fftw_dft_n2bsimd_genus_avx2_128 = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n2bv_8_avx2_128(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n2bv_8, ptr noundef nonnull @desc) #3
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n2bv_8(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0144 = phi ptr [ %4, %.lr.ph ], [ %i.bs, %bb.b ] ; 8 uses
  %.0132143 = phi i64 [ %6, %.lr.ph ], [ %i.bp, %bb.b ] ; 2 uses
  %.0133142 = phi ptr [ %1, %.lr.ph ], [ %i.bq, %bb.b ] ; 9 uses
  %.0134141 = phi ptr [ %3, %.lr.ph ], [ %i.br, %bb.b ] ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0144, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.d
  %.val140 = load <2 x double>, ptr %i.e, align 16, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0144, i64 48
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.g
  %.val139 = load <2 x double>, ptr %i.h, align 16, !tbaa !12 ; 2 uses
  %i.i = fsub <2 x double> %.val140, %.val139     ; 2 uses
  %i.j = fadd <2 x double> %.val140, %.val139     ; 2 uses
  %.0133.val = load <2 x double>, ptr %.0133142, align 16, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0144, i64 32
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.l
  %.val138 = load <2 x double>, ptr %i.m, align 16, !tbaa !12 ; 2 uses
  %i.n = fsub <2 x double> %.0133.val, %.val138   ; 2 uses
  %i.o = fadd <2 x double> %.0133.val, %.val138   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0144, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.q
  %.val137 = load <2 x double>, ptr %i.r, align 16, !tbaa !12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0144, i64 40
  %i.t = load i64, ptr %i.s, align 8, !tbaa !11
  %i.u = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.t
  %.val136 = load <2 x double>, ptr %i.u, align 16, !tbaa !12 ; 2 uses
  %i.v = fsub <2 x double> %.val137, %.val136     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0144, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !11
  %i.y = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.x
  %.val135 = load <2 x double>, ptr %i.y, align 16, !tbaa !12 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0144, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !11
  %i.ab = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %i.aa
  %.val = load <2 x double>, ptr %i.ab, align 16, !tbaa !12 ; 2 uses
  %i.ac = fsub <2 x double> %.val135, %.val       ; 2 uses
  %i.ad = fsub <2 x double> %i.v, %i.ac
  %i.ae = fmul <2 x double> %i.ad, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.af = fadd <2 x double> %.val135, %.val       ; 2 uses
  %i.ag = fadd <2 x double> %i.v, %i.ac
  %i.ah = fmul <2 x double> %i.ag, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.ai = fadd <2 x double> %.val137, %.val136    ; 2 uses
  %i.aj = fsub <2 x double> %i.ae, %i.i
  %i.ak = bitcast <2 x double> %i.aj to <2 x i64>
  %i.al = xor <2 x i64> %i.ak, <i64 0, i64 -9223372036854775808>
  %i.am = bitcast <2 x i64> %i.al to <2 x double>
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ao = fsub <2 x double> %i.n, %i.ah           ; 2 uses
  %i.ap = fadd <2 x double> %i.ao, %i.an
  %i.aq = getelementptr inbounds nuw i8, ptr %.0134141, i64 48
  %i.ar = fsub <2 x double> %i.ao, %i.an
  %i.as = getelementptr inbounds nuw i8, ptr %.0134141, i64 80
  %i.at = fadd <2 x double> %i.j, %i.o            ; 2 uses
  %i.au = fadd <2 x double> %i.ai, %i.af          ; 2 uses
  %i.av = fsub <2 x double> %i.at, %i.au
  %9 = shufflevector <2 x double> %i.ap, <2 x double> %i.av, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %9, ptr %i.aq, align 16, !tbaa !12
  %i.aw = fadd <2 x double> %i.at, %i.au
  %i.ax = fadd <2 x double> %i.i, %i.ae
  %i.ay = bitcast <2 x double> %i.ax to <2 x i64>
  %i.az = xor <2 x i64> %i.ay, <i64 0, i64 -9223372036854775808>
  %i.ba = bitcast <2 x i64> %i.az to <2 x double>
  %i.bb = shufflevector <2 x double> %i.ba, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bc = fadd <2 x double> %i.n, %i.ah           ; 2 uses
  %i.bd = fadd <2 x double> %i.bc, %i.bb
  %10 = shufflevector <2 x double> %i.aw, <2 x double> %i.bd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %10, ptr %.0134141, align 16, !tbaa !12
  %i.be = fsub <2 x double> %i.bc, %i.bb
  %i.bf = getelementptr inbounds nuw i8, ptr %.0134141, i64 112
  store <2 x double> %i.be, ptr %i.bf, align 16, !tbaa !12
  %i.bg = fsub <2 x double> %i.o, %i.j            ; 2 uses
  %i.bh = fsub <2 x double> %i.ai, %i.af
  %i.bi = bitcast <2 x double> %i.bh to <2 x i64>
  %i.bj = xor <2 x i64> %i.bi, <i64 0, i64 -9223372036854775808>
  %i.bk = bitcast <2 x i64> %i.bj to <2 x double>
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bm = fsub <2 x double> %i.bg, %i.bl
  %11 = shufflevector <2 x double> %i.ar, <2 x double> %i.bm, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %11, ptr %i.as, align 16, !tbaa !12
  %i.bn = fadd <2 x double> %i.bg, %i.bl
  %i.bo = getelementptr inbounds nuw i8, ptr %.0134141, i64 32
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !12
  %i.bp = add nsw i64 %.0132143, -1
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0133142, i64 %7
  %i.br = getelementptr inbounds [8 x i8], ptr %.0134141, i64 %8
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0144, i64 %i.b
  %i.bt = icmp samesign ugt i64 %.0132143, 1
  br i1 %i.bt, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="icelake-server" }
attributes #3 = { nounwind }

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
