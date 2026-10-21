Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/n2fv_4?download=true
inline.NumInlined: 11
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kdft_desc_s = type { i64, ptr, %struct.opcnt, ptr, i64, i64, i64, i64 }
%struct.opcnt = type { double, double, double, double }
%struct.kdft_genus = type { ptr, i64 }

@desc = internal constant %struct.kdft_desc_s { i64 4, ptr @.str, %struct.opcnt { double 8.000000e+00, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00 }, ptr @fftw_dft_n2fsimd_genus_avx2_128, i64 0, i64 2, i64 0, i64 0 }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [16 x i8] c"n2fv_4_avx2_128\00", align 1
@fftw_dft_n2fsimd_genus_avx2_128 = external constant %struct.kdft_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_n2fv_4_avx2_128(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kdft_register(ptr noundef %0, ptr noundef nonnull @n2fv_4, ptr noundef nonnull @desc) #3
  ret void
}

declare void @fftw_kdft_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @n2fv_4(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree readnone captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree readnone captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp sgt i64 %6, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %.061.val.prol = load <2 x double>, ptr %0, align 16, !tbaa !12 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %0, i64 %i.d
  %.val64.prol = load <2 x double>, ptr %i.e, align 16, !tbaa !12 ; 2 uses
  %i.f = fsub <2 x double> %.061.val.prol, %.val64.prol ; 2 uses
  %i.g = fadd <2 x double> %.061.val.prol, %.val64.prol ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %0, i64 %i.i
  %.val63.prol = load <2 x double>, ptr %i.j, align 16, !tbaa !12 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %i.l
  %.val.prol = load <2 x double>, ptr %i.m, align 16, !tbaa !12 ; 2 uses
  %i.n = fsub <2 x double> %.val63.prol, %.val.prol
  %i.o = bitcast <2 x double> %i.n to <2 x i64>
  %i.p = xor <2 x i64> %i.o, <i64 0, i64 -9223372036854775808>
  %i.q = bitcast <2 x i64> %i.p to <2 x double>
  %i.r = shufflevector <2 x double> %i.q, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.s = fadd <2 x double> %.val63.prol, %.val.prol ; 2 uses
  %i.t = fsub <2 x double> %i.f, %i.r
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x double> %i.t, ptr %i.u, align 16, !tbaa !12
  %i.v = fadd <2 x double> %i.g, %i.s
  store <2 x double> %i.v, ptr %2, align 16, !tbaa !12
  %i.w = fadd <2 x double> %i.f, %i.r
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <2 x double> %i.w, ptr %i.x, align 16, !tbaa !12
  %i.y = fsub <2 x double> %i.g, %i.s
  %9 = getelementptr inbounds nuw i8, ptr %2, i64 32
  store <2 x double> %i.y, ptr %9, align 16, !tbaa !12
  %i.z = add nsw i64 %6, -1
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %7
  %i.ab = getelementptr inbounds [8 x i8], ptr %2, i64 %8
  %i.ac = getelementptr inbounds [8 x i8], ptr %4, i64 %i.b
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %.068.unr = phi ptr [ %4, %.lr.ph ], [ %i.ac, %.prol.loopexit.unr-lcssa ]
  %.06067.unr = phi i64 [ %6, %.lr.ph ], [ %i.z, %.prol.loopexit.unr-lcssa ]
  %.06166.unr = phi ptr [ %0, %.lr.ph ], [ %i.aa, %.prol.loopexit.unr-lcssa ]
  %.06265.unr = phi ptr [ %2, %.lr.ph ], [ %i.ab, %.prol.loopexit.unr-lcssa ]
  %i.ad = icmp eq i64 %6, 1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %.068 = phi ptr [ %i.ce, %.lr.ph.new ], [ %.068.unr, %.prol.loopexit ] ; 4 uses
  %.06067 = phi i64 [ %i.cb, %.lr.ph.new ], [ %.06067.unr, %.prol.loopexit ] ; 2 uses
  %.06166 = phi ptr [ %i.cc, %.lr.ph.new ], [ %.06166.unr, %.prol.loopexit ] ; 5 uses
  %.06265 = phi ptr [ %i.cd, %.lr.ph.new ], [ %.06265.unr, %.prol.loopexit ] ; 5 uses
  %.061.val = load <2 x double>, ptr %.06166, align 16, !tbaa !12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.068, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !11
  %i.ag = getelementptr inbounds [8 x i8], ptr %.06166, i64 %i.af
  %.val64 = load <2 x double>, ptr %i.ag, align 16, !tbaa !12 ; 2 uses
  %i.ah = fsub <2 x double> %.061.val, %.val64    ; 2 uses
  %i.ai = fadd <2 x double> %.061.val, %.val64    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr inbounds [8 x i8], ptr %.06166, i64 %i.ak
  %.val63 = load <2 x double>, ptr %i.al, align 16, !tbaa !12 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.068, i64 24
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.06166, i64 %i.an
  %.val = load <2 x double>, ptr %i.ao, align 16, !tbaa !12 ; 2 uses
  %i.ap = fsub <2 x double> %.val63, %.val
  %i.aq = bitcast <2 x double> %i.ap to <2 x i64>
  %i.ar = xor <2 x i64> %i.aq, <i64 0, i64 -9223372036854775808>
  %i.as = bitcast <2 x i64> %i.ar to <2 x double>
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.au = fadd <2 x double> %.val63, %.val        ; 2 uses
  %i.av = fsub <2 x double> %i.ah, %i.at
  %i.aw = getelementptr inbounds nuw i8, ptr %.06265, i64 16
  store <2 x double> %i.av, ptr %i.aw, align 16, !tbaa !12
  %i.ax = fadd <2 x double> %i.ai, %i.au
  store <2 x double> %i.ax, ptr %.06265, align 16, !tbaa !12
  %i.ay = fadd <2 x double> %i.ah, %i.at
  %i.az = getelementptr inbounds nuw i8, ptr %.06265, i64 48
  store <2 x double> %i.ay, ptr %i.az, align 16, !tbaa !12
  %i.ba = fsub <2 x double> %i.ai, %i.au
  %10 = getelementptr inbounds nuw i8, ptr %.06265, i64 32
  store <2 x double> %i.ba, ptr %10, align 16, !tbaa !12
  %i.bb = getelementptr inbounds [8 x i8], ptr %.06166, i64 %7 ; 5 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.06265, i64 %8 ; 5 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.068, i64 %i.b ; 4 uses
  %.061.val.1 = load <2 x double>, ptr %i.bb, align 16, !tbaa !12 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !11
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bf
  %.val64.1 = load <2 x double>, ptr %i.bg, align 16, !tbaa !12 ; 2 uses
  %i.bh = fsub <2 x double> %.061.val.1, %.val64.1 ; 2 uses
  %i.bi = fadd <2 x double> %.061.val.1, %.val64.1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bk
  %.val63.1 = load <2 x double>, ptr %i.bl, align 16, !tbaa !12 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !11
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %i.bn
  %.val.1 = load <2 x double>, ptr %i.bo, align 16, !tbaa !12 ; 2 uses
  %i.bp = fsub <2 x double> %.val63.1, %.val.1
  %i.bq = bitcast <2 x double> %i.bp to <2 x i64>
  %i.br = xor <2 x i64> %i.bq, <i64 0, i64 -9223372036854775808>
  %i.bs = bitcast <2 x i64> %i.br to <2 x double>
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.bu = fadd <2 x double> %.val63.1, %.val.1    ; 2 uses
  %i.bv = fsub <2 x double> %i.bh, %i.bt
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store <2 x double> %i.bv, ptr %i.bw, align 16, !tbaa !12
  %i.bx = fadd <2 x double> %i.bi, %i.bu
  store <2 x double> %i.bx, ptr %i.bc, align 16, !tbaa !12
  %i.by = fadd <2 x double> %i.bh, %i.bt
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  store <2 x double> %i.by, ptr %i.bz, align 16, !tbaa !12
  %i.ca = fsub <2 x double> %i.bi, %i.bu
  %11 = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store <2 x double> %i.ca, ptr %11, align 16, !tbaa !12
  %i.cb = add nsw i64 %.06067, -2
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %7
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %8
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.b
  %i.cf = icmp sgt i64 %.06067, 2
  br i1 %i.cf, label %.lr.ph.new, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.prol.loopexit, %.lr.ph.new, %bb.a
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
