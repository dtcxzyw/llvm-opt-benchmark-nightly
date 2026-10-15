Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/r2cb_9?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2c_desc_s = type { i64, ptr, %struct.opcnt, ptr }
%struct.opcnt = type { double, double, double, double }
%struct.kr2c_genus = type { i32, i64 }

@desc = internal constant %struct.kr2c_desc_s { i64 9, ptr @.str, %struct.opcnt { double 2.200000e+01, double 8.000000e+00, double 1.000000e+01, double 0.000000e+00 }, ptr @fftw_rdft_r2cb_genus }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [7 x i8] c"r2cb_9\00", align 1
@fftw_rdft_r2cb_genus = external constant %struct.kr2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_r2cb_9(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2c_register(ptr noundef %0, ptr noundef nonnull @r2cb_9, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2c_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @r2cb_9(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) #2 {
bb.a:
  %i.a = icmp sgt i64 %7, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0125 = phi ptr [ %0, %.lr.ph ], [ %i.cu, %bb.b ] ; 6 uses
  %.0111124 = phi ptr [ %1, %.lr.ph ], [ %i.cv, %bb.b ] ; 5 uses
  %.0112123 = phi ptr [ %2, %.lr.ph ], [ %i.cw, %bb.b ] ; 6 uses
  %.0113122 = phi ptr [ %3, %.lr.ph ], [ %i.cx, %bb.b ] ; 5 uses
  %.0114121 = phi ptr [ %4, %.lr.ph ], [ %i.cy, %bb.b ] ; 5 uses
  %.0115120 = phi ptr [ %5, %.lr.ph ], [ %i.cz, %bb.b ] ; 5 uses
  %.0116119 = phi ptr [ %6, %.lr.ph ], [ %i.da, %bb.b ] ; 5 uses
  %.0117118 = phi i64 [ %7, %.lr.ph ], [ %i.ct, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0116119, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !11
  %i.e = getelementptr inbounds [8 x i8], ptr %.0113122, i64 %i.d
  %i.f = load double, ptr %i.e, align 8, !tbaa !13
  %i.g = fmul double %i.f, f0x3FFBB67AE8584CAA    ; 2 uses
  %i.h = load double, ptr %.0112123, align 8, !tbaa !13 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0115120, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !11
  %i.k = getelementptr inbounds [8 x i8], ptr %.0112123, i64 %i.j
  %i.l = load double, ptr %i.k, align 8, !tbaa !13 ; 2 uses
  %i.m = fsub double %i.h, %i.l                   ; 2 uses
  %i.n = fadd double %i.g, %i.m                   ; 2 uses
  %i.o = fsub double %i.m, %i.g                   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0115120, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds [8 x i8], ptr %.0112123, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0116119, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds [8 x i8], ptr %.0113122, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0115120, i64 32
  %i.y = load i64, ptr %i.x, align 8, !tbaa !11
  %i.z = getelementptr inbounds [8 x i8], ptr %.0112123, i64 %i.y
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.0115120, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !11
  %i.ad = getelementptr inbounds [8 x i8], ptr %.0112123, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !13 ; 2 uses
  %i.af = fadd double %i.aa, %i.ae                ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0116119, i64 32
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !11
  %i.ai = getelementptr inbounds [8 x i8], ptr %.0113122, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !13 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0116119, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !11
  %i.am = getelementptr inbounds [8 x i8], ptr %.0113122, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !13 ; 2 uses
  %i.ao = fsub double %i.an, %i.aj                ; 2 uses
  %i.ap = fadd double %i.s, %i.af                 ; 2 uses
  %i.aq = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1
  %i.as = insertelement <2 x double> poison, double %i.h, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.w, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> <double 2.000000e+00, double 5.000000e-01>, <2 x double> %i.at) ; 3 uses
  %i.av = extractelement <2 x double> %i.au, i64 1 ; 2 uses
  %i.aw = extractelement <2 x double> %i.au, i64 0
  %i.ax = fsub double %i.aw, %i.ap                ; 2 uses
  %i.ay = fsub double %i.w, %i.ao
  %i.az = fmul double %i.ay, f0x3FFBB67AE8584CAA  ; 2 uses
  %i.ba = fsub double %i.ax, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %.0114121, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !11 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %.0111124, i64 %i.bc
  %i.be = fadd double %i.ax, %i.az
  %i.bf = getelementptr inbounds nuw i8, ptr %.0114121, i64 24
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !11 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.bg
  %i.bi = fsub double %i.aa, %i.ae
  %i.bj = fmul double %i.bi, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.bk = fadd double %i.aj, %i.an
  %i.bl = fmul double %i.bk, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.bm = fadd double %i.bj, %i.av
  %i.bn = fsub double %i.av, %i.bj                ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.ap, i64 0
  %11 = insertelement <2 x double> %10, double %i.af, i64 1
  %12 = insertelement <2 x double> %i.au, double %i.s, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 2.000000e+00, double -5.000000e-01>, <2 x double> %12) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0
  store double %14, ptr %.0125, align 8, !tbaa !13
  store double %i.ba, ptr %i.bd, align 8, !tbaa !13
  store double %i.be, ptr %i.bh, align 8, !tbaa !13
  %15 = extractelement <2 x double> %13, i64 1    ; 2 uses
  %i.bo = fsub double %15, %i.bl
  %i.bp = fadd double %15, %i.bl                  ; 2 uses
  %i.bq = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.br = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bs = fmul <2 x double> %i.br, <double f0x3FF53AAFE3631109, double f0xBFE491B7523C161D>
  %i.bt = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> <double f0x3FF1D03E70EA84FF, double f0x3FE8836FA2CF5039>, <2 x double> %i.bs) ; 2 uses
  %i.bw = extractelement <2 x double> %i.bv, i64 1 ; 2 uses
  %i.bx = fsub double %i.o, %i.bw                 ; 2 uses
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bw, double 2.000000e+00, double %i.o)
  store double %i.by, ptr %.0111124, align 8, !tbaa !13
  %i.bz = extractelement <2 x double> %i.bv, i64 0 ; 2 uses
  %i.ca = fadd double %i.bz, %i.bx
  %i.cb = getelementptr inbounds [8 x i8], ptr %.0111124, i64 %i.bg
  store double %i.ca, ptr %i.cb, align 8, !tbaa !13
  %i.cc = fsub double %i.bx, %i.bz
  %i.cd = getelementptr inbounds nuw i8, ptr %.0114121, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !11 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.ce
  store double %i.cc, ptr %i.cf, align 8, !tbaa !13
  %i.cg = fmul double %i.bn, f0x3FD33FC62FEE2044
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bp, double f0x3FFB4AB2F290BEAA, double %i.cg) ; 2 uses
  %i.ci = fmul double %i.bn, f0xBFEF838B8C811C17
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.bp, double f0x3FC63A1A7E0B738A, double %i.ci) ; 2 uses
  %i.ck = fsub double %i.n, %i.cj                 ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cj, double 2.000000e+00, double %i.n)
  %i.cm = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.bc
  store double %i.cl, ptr %i.cm, align 8, !tbaa !13
  %i.cn = fadd double %i.ch, %i.ck
  %i.co = getelementptr inbounds nuw i8, ptr %.0114121, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !11
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0125, i64 %i.cp
  store double %i.cn, ptr %i.cq, align 8, !tbaa !13
  %i.cr = fsub double %i.ck, %i.ch
  %i.cs = getelementptr inbounds [8 x i8], ptr %.0111124, i64 %i.ce
  store double %i.cr, ptr %i.cs, align 8, !tbaa !13
  %i.ct = add nsw i64 %.0117118, -1
  %i.cu = getelementptr inbounds [8 x i8], ptr %.0125, i64 %9
  %i.cv = getelementptr inbounds [8 x i8], ptr %.0111124, i64 %9
  %i.cw = getelementptr inbounds [8 x i8], ptr %.0112123, i64 %8
  %i.cx = getelementptr inbounds [8 x i8], ptr %.0113122, i64 %8
  %i.cy = getelementptr inbounds [8 x i8], ptr %.0114121, i64 %i.b
  %i.cz = getelementptr inbounds [8 x i8], ptr %.0115120, i64 %i.b
  %i.da = getelementptr inbounds [8 x i8], ptr %.0116119, i64 %i.b
  %i.db = icmp samesign ugt i64 %.0117118, 1
  br i1 %i.db, label %bb.b, label %._crit_edge, !llvm.loop !9

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
