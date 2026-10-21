Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n2bv_12?download=true
inline.NumInlined: 31
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 12, ptr @.str, %struct.opcnt { double 4.400000e+01, double 4.000000e+00, double 4.000000e+00, double 0.000000e+00 }, ptr @fftw_dft_n2bsimd_genus_avx2_128, i64 0, i64 2, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [17 x i8] c"n2bv_12_avx2_128\00", align 1
@fftw_dft_n2bsimd_genus_avx2_128 = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n2bv_12_avx2_128(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n2bv_12, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n2bv_12(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0232 = phi ptr [ %4, %.lr.ph ], [ %i.dp, %bb.b ] ; 12 uses
  %.0216231 = phi i64 [ %6, %.lr.ph ], [ %i.dm, %bb.b ] ; 2 uses
  %.0217230 = phi ptr [ %1, %.lr.ph ], [ %i.dn, %bb.b ] ; 13 uses
  %.0218229 = phi ptr [ %3, %.lr.ph ], [ %i.do, %bb.b ] ; 13 uses
  %.0217.val = load <2 x double>, ptr %.0217230, align 16, !tbaa !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0232, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.d
  %.val228 = load <2 x double>, ptr %i.e, align 16, !tbaa !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0232, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !11
  %i.h = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.g
  %.val227 = load <2 x double>, ptr %i.h, align 16, !tbaa !12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0232, i64 64
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.j
  %.val226 = load <2 x double>, ptr %i.k, align 16, !tbaa !12 ; 2 uses
  %i.l = fadd <2 x double> %.val227, %.val226     ; 2 uses
  %i.m = fsub <2 x double> %.val227, %.val226     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0232, i64 80
  %i.o = load i64, ptr %i.n, align 8, !tbaa !11
  %i.p = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.o
  %.val225 = load <2 x double>, ptr %i.p, align 16, !tbaa !12 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0232, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.r
  %.val224 = load <2 x double>, ptr %i.s, align 16, !tbaa !12 ; 2 uses
  %i.t = fadd <2 x double> %.val225, %.val224     ; 2 uses
  %i.u = fsub <2 x double> %.val225, %.val224     ; 2 uses
  %i.v = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.l, <2 x double> splat (double -5.000000e-01), <2 x double> %.0217.val) ; 2 uses
  %i.w = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.t, <2 x double> splat (double -5.000000e-01), <2 x double> %.val228) ; 2 uses
  %i.x = fadd <2 x double> %.val228, %i.t         ; 2 uses
  %i.y = fadd <2 x double> %.0217.val, %i.l       ; 2 uses
  %i.z = fadd <2 x double> %i.m, %i.u             ; 2 uses
  %i.aa = fsub <2 x double> %i.m, %i.u
  %i.ab = fmul <2 x double> %i.aa, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0232, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %.0232, i64 8
  %.val223 = load <2 x double>, ptr %i.ae, align 16, !tbaa !12 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0232, i64 72
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.ah
  %.val222 = load <2 x double>, ptr %i.ai, align 16, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.0232, i64 56
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.ak
  %.val221 = load <2 x double>, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0232, i64 88
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.an
  %.val220 = load <2 x double>, ptr %i.ao, align 16, !tbaa !12 ; 2 uses
  %i.ap = fsub <2 x double> %.val221, %.val220    ; 2 uses
  %i.aq = fadd <2 x double> %.val221, %.val220    ; 2 uses
  %i.ar = load i64, ptr %i.af, align 8, !tbaa !11
  %i.as = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.ar
  %.val219 = load <2 x double>, ptr %i.as, align 16, !tbaa !12 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0232, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11
  %i.av = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %i.au
  %.val = load <2 x double>, ptr %i.av, align 16, !tbaa !12 ; 2 uses
  %i.aw = fsub <2 x double> %.val219, %.val       ; 2 uses
  %i.ax = fadd <2 x double> %.val219, %.val       ; 2 uses
  %i.ay = fsub <2 x double> %i.ap, %i.aw
  %i.az = fmul <2 x double> %i.ay, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.ba = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.aq, <2 x double> splat (double -5.000000e-01), <2 x double> %.val223) ; 2 uses
  %i.bb = fadd <2 x double> %.val222, %i.ax       ; 2 uses
  %i.bc = fadd <2 x double> %.val223, %i.aq       ; 2 uses
  %i.bd = fadd <2 x double> %i.ap, %i.aw          ; 2 uses
  %i.be = tail call <2 x double> @llvm.fma.v2f64(<2 x double> %i.ax, <2 x double> splat (double -5.000000e-01), <2 x double> %.val222) ; 2 uses
  %i.bf = fsub <2 x double> %i.y, %i.x            ; 2 uses
  %i.bg = fsub <2 x double> %i.bc, %i.bb
  %i.bh = bitcast <2 x double> %i.bg to <2 x i64>
  %i.bi = xor <2 x i64> %i.bh, <i64 0, i64 -9223372036854775808>
  %i.bj = bitcast <2 x i64> %i.bi to <2 x double>
  %i.bk = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bl = fsub <2 x double> %i.bf, %i.bk
  %9 = getelementptr inbounds nuw i8, ptr %.0218229, i64 48
  %i.bm = getelementptr inbounds nuw i8, ptr %.0218229, i64 16
  store <2 x double> %i.bl, ptr %9, align 16, !tbaa !12
  %i.bn = fadd <2 x double> %i.bf, %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %.0218229, i64 144
  store <2 x double> %i.bn, ptr %i.bo, align 16, !tbaa !12
  %i.bp = fadd <2 x double> %i.y, %i.x            ; 2 uses
  %i.bq = fadd <2 x double> %i.bc, %i.bb          ; 2 uses
  %i.br = fsub <2 x double> %i.bp, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %.0218229, i64 96
  store <2 x double> %i.br, ptr %i.bs, align 16, !tbaa !12
  %i.bt = fadd <2 x double> %i.bp, %i.bq
  store <2 x double> %i.bt, ptr %.0218229, align 16, !tbaa !12
  %i.bu = fsub <2 x double> %i.v, %i.w            ; 2 uses
  %i.bv = fsub <2 x double> %i.bu, %i.az          ; 2 uses
  %i.bw = fadd <2 x double> %i.bu, %i.az          ; 2 uses
  %i.bx = fsub <2 x double> %i.ba, %i.be          ; 2 uses
  %i.by = fadd <2 x double> %i.ab, %i.bx
  %i.bz = bitcast <2 x double> %i.by to <2 x i64>
  %i.ca = xor <2 x i64> %i.bz, <i64 0, i64 -9223372036854775808>
  %i.cb = bitcast <2 x i64> %i.ca to <2 x double>
  %i.cc = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cd = fsub <2 x double> %i.bx, %i.ab
  %i.ce = bitcast <2 x double> %i.cd to <2 x i64>
  %i.cf = xor <2 x i64> %i.ce, <i64 0, i64 -9223372036854775808>
  %i.cg = bitcast <2 x i64> %i.cf to <2 x double>
  %i.ch = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ci = fsub <2 x double> %i.bv, %i.cc
  %i.cj = getelementptr inbounds nuw i8, ptr %.0218229, i64 176
  store <2 x double> %i.ci, ptr %i.cj, align 16, !tbaa !12
  %i.ck = fadd <2 x double> %i.bw, %i.ch
  %i.cl = getelementptr inbounds nuw i8, ptr %.0218229, i64 80
  store <2 x double> %i.ck, ptr %i.cl, align 16, !tbaa !12
  %i.cm = fadd <2 x double> %i.bv, %i.cc
  store <2 x double> %i.cm, ptr %i.bm, align 16, !tbaa !12
  %i.cn = fsub <2 x double> %i.bw, %i.ch
  %10 = getelementptr inbounds nuw i8, ptr %.0218229, i64 112
  store <2 x double> %i.cn, ptr %10, align 16, !tbaa !12
  %i.co = fsub <2 x double> %i.bd, %i.z
  %i.cp = fmul <2 x double> %i.co, splat (double f0x3FEBB67AE8584CAA)
  %i.cq = bitcast <2 x double> %i.cp to <2 x i64>
  %i.cr = xor <2 x i64> %i.cq, <i64 0, i64 -9223372036854775808>
  %i.cs = bitcast <2 x i64> %i.cr to <2 x double>
  %i.ct = shufflevector <2 x double> %i.cs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cu = fadd <2 x double> %i.z, %i.bd
  %i.cv = fmul <2 x double> %i.cu, splat (double f0x3FEBB67AE8584CAA)
  %i.cw = bitcast <2 x double> %i.cv to <2 x i64>
  %i.cx = xor <2 x i64> %i.cw, <i64 0, i64 -9223372036854775808>
  %i.cy = bitcast <2 x i64> %i.cx to <2 x double>
  %i.cz = shufflevector <2 x double> %i.cy, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.da = fadd <2 x double> %i.v, %i.w            ; 2 uses
  %i.db = fadd <2 x double> %i.ba, %i.be          ; 2 uses
  %i.dc = fsub <2 x double> %i.da, %i.db          ; 2 uses
  %i.dd = fadd <2 x double> %i.da, %i.db          ; 2 uses
  %i.de = fadd <2 x double> %i.dc, %i.ct
  %i.df = getelementptr inbounds nuw i8, ptr %.0218229, i64 32
  store <2 x double> %i.de, ptr %i.df, align 16, !tbaa !12
  %i.dg = fsub <2 x double> %i.dd, %i.cz
  %i.dh = getelementptr inbounds nuw i8, ptr %.0218229, i64 128
  store <2 x double> %i.dg, ptr %i.dh, align 16, !tbaa !12
  %i.di = fsub <2 x double> %i.dc, %i.ct
  %i.dj = getelementptr inbounds nuw i8, ptr %.0218229, i64 160
  store <2 x double> %i.di, ptr %i.dj, align 16, !tbaa !12
  %i.dk = fadd <2 x double> %i.dd, %i.cz
  %i.dl = getelementptr inbounds nuw i8, ptr %.0218229, i64 64
  store <2 x double> %i.dk, ptr %i.dl, align 16, !tbaa !12
  %i.dm = add nsw i64 %.0216231, -1
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0217230, i64 %7
  %i.do = getelementptr inbounds [8 x i8], ptr %.0218229, i64 %8
  %i.dp = getelementptr inbounds [8 x i8], ptr %.0232, i64 %i.b
  %i.dq = icmp samesign ugt i64 %.0216231, 1
  br i1 %i.dq, label %bb.b, label %._crit_edge, !llvm.loop !9

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
