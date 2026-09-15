Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_10?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 10, ptr @.str, %struct.opcnt { double 2.600000e+01, double 6.000000e+00, double 8.000000e+00, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [8 x i8] c"r2cb_10\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_10(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_10, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_10(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0132 = phi ptr [ %0, %.lr.ph ], [ %i.db, %bb.b ] ; 6 uses
  %.0118131 = phi ptr [ %1, %.lr.ph ], [ %i.dc, %bb.b ] ; 6 uses
  %.0119130 = phi ptr [ %2, %.lr.ph ], [ %i.dd, %bb.b ] ; 7 uses
  %.0120129 = phi ptr [ %3, %.lr.ph ], [ %i.de, %bb.b ] ; 5 uses
  %.0121128 = phi ptr [ %4, %.lr.ph ], [ %i.df, %bb.b ] ; 5 uses
  %.0122127 = phi ptr [ %5, %.lr.ph ], [ %i.dg, %bb.b ] ; 6 uses
  %.0123126 = phi ptr [ %6, %.lr.ph ], [ %i.dh, %bb.b ] ; 5 uses
  %.0124125 = phi i64 [ %7, %.lr.ph ], [ %i.da, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.0119130, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0122127, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0123126, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.0120129, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0123126, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds [8 x i8], ptr %.0120129, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.p = fadd double %i.k, %i.o                   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0123126, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !11
  %i.s = getelementptr inbounds [8 x i8], ptr %.0120129, i64 %i.r
  %i.t = load double, ptr %i.s, align 8, !tbaa !13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0123126, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !11
  %i.w = getelementptr inbounds [8 x i8], ptr %.0120129, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0122127, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.0122127, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0122127, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0122127, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0121128, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !11 ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %.0118131, i64 %i.ap
  %i.ar = fadd double %i.c, %i.g                  ; 2 uses
  %i.as = fadd double %i.ab, %i.af                ; 2 uses
  %i.at = fsub double %i.ab, %i.af                ; 2 uses
  %i.au = fadd double %i.aj, %i.an                ; 2 uses
  %i.av = fsub double %i.aj, %i.an                ; 2 uses
  %i.aw = fsub double %i.at, %i.av
  %i.ax = fmul double %i.aw, f0x3FF1E3779B97F4A8  ; 2 uses
  %i.ay = fadd double %i.as, %i.au                ; 2 uses
  %i.az = fsub double %i.as, %i.au
  %i.ba = fmul double %i.az, f0x3FF1E3779B97F4A8  ; 2 uses
  %10 = fsub double %i.k, %i.o
  %11 = fsub double %i.t, %i.x
  %i.bb = insertelement <2 x double> poison, double %10, i64 0
  %12 = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, <double f0xBFFE6F0E134454FF, double f0x3FF2CF2304755A5E>
  %14 = insertelement <2 x double> poison, double %11, i64 0
  %i.bc = shufflevector <2 x double> %14, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> <double f0x3FF2CF2304755A5E, double f0x3FFE6F0E134454FF>, <2 x double> %13) ; 2 uses
  %i.be = tail call double @llvm.fmuladd.f64(double %i.ay, double -5.000000e-01, double %i.ar) ; 2 uses
  %i.bf = fsub double %i.be, %i.ba                ; 2 uses
  %i.bg = fadd double %i.ba, %i.be                ; 2 uses
  %i.bh = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %.0121128, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !11 ; 2 uses
  %i.bl = getelementptr inbounds [8 x i8], ptr %.0132, i64 %i.bk
  %i.bm = extractelement <2 x double> %i.bd, i64 1 ; 2 uses
  %i.bn = fadd double %i.bm, %i.bg
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0132, i64 %i.ap
  %i.bp = fadd double %i.bh, %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %.0121128, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11 ; 2 uses
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0132, i64 %i.br
  %i.bt = fsub double %i.bg, %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %.0121128, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11 ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %.0132, i64 %i.bv
  %i.bx = fmul double %i.p, f0xBFFE6F0E134454FF
  %15 = insertelement <2 x double> poison, double %i.t, i64 0
  %16 = insertelement <2 x double> %15, double %i.at, i64 1
  %i.by = insertelement <2 x double> poison, double %i.x, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.av, i64 1
  %i.ca = fadd <2 x double> %16, %i.bz            ; 3 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cc = insertelement <2 x double> %i.cb, double %i.ay, i64 1
  %i.cd = fsub double %i.c, %i.g                  ; 2 uses
  %i.ce = fmul double %i.p, f0x3FF2CF2304755A5E
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.ar, i64 1
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cc, <2 x double> splat (double 2.000000e+00), <2 x double> %i.cg) ; 2 uses
  %i.ci = extractelement <2 x double> %i.ch, i64 0
  store double %i.ci, ptr %i.aq, align 8, !tbaa !13
  %i.cj = extractelement <2 x double> %i.ch, i64 1
  store double %i.cj, ptr %.0132, align 8, !tbaa !13
  store double %i.bi, ptr %i.bl, align 8, !tbaa !13
  store double %i.bn, ptr %i.bo, align 8, !tbaa !13
  store double %i.bp, ptr %i.bs, align 8, !tbaa !13
  store double %i.bt, ptr %i.bw, align 8, !tbaa !13
  %i.ck = extractelement <2 x double> %i.ca, i64 0
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double f0x3FF2CF2304755A5E, double %i.bx) ; 2 uses
  %i.cm = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cn = insertelement <2 x double> %i.cm, double %i.cd, i64 1
  %i.co = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> <double f0x3FFE6F0E134454FF, double -5.000000e-01>, <2 x double> %i.cn) ; 2 uses
  %i.cp = extractelement <2 x double> %i.co, i64 1 ; 2 uses
  %i.cq = fsub double %i.cp, %i.ax                ; 2 uses
  %i.cr = fadd double %i.ax, %i.cp                ; 2 uses
  %i.cs = fsub double %i.cq, %i.cl
  %i.ct = getelementptr inbounds [8 x i8], ptr %.0118131, i64 %i.bv
  store double %i.cs, ptr %i.ct, align 8, !tbaa !13
  %i.cu = extractelement <2 x double> %i.co, i64 0 ; 2 uses
  %i.cv = fadd double %i.cu, %i.cr
  %i.cw = getelementptr inbounds [8 x i8], ptr %.0118131, i64 %i.br
  store double %i.cv, ptr %i.cw, align 8, !tbaa !13
  %i.cx = fadd double %i.cl, %i.cq
  %i.cy = getelementptr inbounds [8 x i8], ptr %.0118131, i64 %i.bk
  store double %i.cx, ptr %i.cy, align 8, !tbaa !13
  %i.cz = fsub double %i.cr, %i.cu
  store double %i.cz, ptr %.0118131, align 8, !tbaa !13
  %i.da = add nsw i64 %.0124125, -1
  %i.db = getelementptr inbounds [8 x i8], ptr %.0132, i64 %9
  %i.dc = getelementptr inbounds [8 x i8], ptr %.0118131, i64 %9
  %i.dd = getelementptr inbounds [8 x i8], ptr %.0119130, i64 %8
  %i.de = getelementptr inbounds [8 x i8], ptr %.0120129, i64 %8
  %i.df = getelementptr inbounds [8 x i8], ptr %.0121128, i64 %i.b
  %i.dg = getelementptr inbounds [8 x i8], ptr %.0122127, i64 %i.b
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0123126, i64 %i.b
  %i.di = icmp samesign ugt i64 %.0124125, 1
  br i1 %i.di, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
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
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
