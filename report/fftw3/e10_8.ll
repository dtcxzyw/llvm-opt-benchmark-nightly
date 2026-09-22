Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/e10_8?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.kr2r_genus = type { i64 }
%struct.opcnt = type { double, double, double, double }

@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [6 x i8] c"e10_8\00", align 1
@fftw_rdft_r2r_genus = external constant %struct.kr2r_genus, align 8
@desc = internal constant { i64, ptr, %struct.opcnt, ptr, i32, [4 x i8] } { i64 8, ptr @.str, %struct.opcnt { double 2.000000e+01, double 1.000000e+01, double 6.000000e+00, double 0.000000e+00 }, ptr @fftw_rdft_r2r_genus, i32 11, [4 x i8] zeroinitializer }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_e10_8(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_kr2r_register(ptr noundef %0, ptr noundef nonnull @e10_8, ptr noundef nonnull @desc) #4
  ret void
}

declare void @fftw_kr2r_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @e10_8(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) #2 {
bb.a:
  %i.a = icmp sgt i64 %4, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.098 = phi ptr [ %0, %.lr.ph ], [ %i.cf, %bb.b ] ; 9 uses
  %.09097 = phi ptr [ %1, %.lr.ph ], [ %i.cg, %bb.b ] ; 9 uses
  %.09196 = phi ptr [ %2, %.lr.ph ], [ %i.ch, %bb.b ] ; 8 uses
  %.09295 = phi ptr [ %3, %.lr.ph ], [ %i.ci, %bb.b ] ; 8 uses
  %.09394 = phi i64 [ %4, %.lr.ph ], [ %i.ce, %bb.b ] ; 2 uses
  %i.c = load double, ptr %.098, align 8, !tbaa !13 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.09196, i64 56
  %i.e = load i64, ptr %i.d, align 8, !tbaa !11
  %i.f = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !13 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.09196, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.i
  %i.k = load double, ptr %i.j, align 8, !tbaa !13
  %i.l = getelementptr inbounds nuw i8, ptr %.09196, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !11
  %i.n = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.m
  %i.o = load double, ptr %i.n, align 8, !tbaa !13
  %i.p = getelementptr inbounds nuw i8, ptr %.09196, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.q
  %i.s = load double, ptr %i.r, align 8, !tbaa !13 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.09196, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11
  %i.v = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = fsub double %i.s, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.09196, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.09196, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11
  %i.ae = getelementptr inbounds [8 x i8], ptr %.098, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = fsub double %i.ab, %i.af                ; 2 uses
  %i.ah = fadd double %i.x, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %.09295, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !11
  %i.ak = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.aj
  %i.al = fsub double %i.x, %i.ag
  %i.am = getelementptr inbounds nuw i8, ptr %.09295, i64 40
  %i.an = load i64, ptr %i.am, align 8, !tbaa !11
  %i.ao = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.09295, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !11
  %i.ar = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.09295, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !11
  %i.au = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.at
  %i.av = fmul double %i.ah, f0x3FE6A09E667F3BCD  ; 2 uses
  %i.aw = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.ax = insertelement <2 x double> %i.aw, double %i.c, i64 1
  %i.ay = insertelement <2 x double> poison, double %i.o, i64 0 ; 2 uses
  %i.az = insertelement <2 x double> %i.ay, double %i.g, i64 1
  %i.ba = fsub <2 x double> %i.ax, %i.az          ; 3 uses
  %i.bb = insertelement <2 x double> %i.ba, double %i.al, i64 0
  %i.bc = fmul <2 x double> %i.bb, <double f0x3FE6A09E667F3BCD, double 1.000000e+00> ; 2 uses
  %i.bd = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.be = fsub <2 x double> %i.bc, %i.bd          ; 2 uses
  %i.bf = fmul <2 x double> %i.be, <double f0xBFF1C73B39AE68C8, double f0x3FF1C73B39AE68C8>
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> splat (double f0x3FFA9B66290EA1A3), <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 1
  store double %i.bi, ptr %i.ak, align 8, !tbaa !13
  %i.bj = extractelement <2 x double> %i.bh, i64 0
  store double %i.bj, ptr %i.ao, align 8, !tbaa !13
  %i.bk = insertelement <2 x double> %i.bc, double %i.av, i64 1
  %i.bl = fadd <2 x double> %i.ba, %i.bk          ; 2 uses
  %i.bm = fmul <2 x double> %i.bl, <double f0xBFD8F8B83C69A60B, double f0x3FD8F8B83C69A60B>
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> splat (double f0x3FFF6297CFF75CB0), <2 x double> %i.bn) ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %i.bq = getelementptr inbounds nuw i8, ptr %.09295, i64 56
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !11
  %i.bs = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.br
  %i.bt = extractelement <2 x double> %i.bo, i64 0
  %i.bu = getelementptr inbounds nuw i8, ptr %.09295, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !11
  %i.bw = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.bv
  %7 = insertelement <2 x double> %i.aw, double %i.ab, i64 1
  %8 = insertelement <2 x double> %i.ay, double %i.af, i64 1
  %9 = fadd <2 x double> %7, %8                   ; 2 uses
  %10 = insertelement <2 x double> poison, double %i.c, i64 0
  %11 = insertelement <2 x double> %10, double %i.s, i64 1
  %12 = insertelement <2 x double> poison, double %i.g, i64 0
  %13 = insertelement <2 x double> %12, double %i.w, i64 1
  %14 = fadd <2 x double> %11, %13                ; 2 uses
  %15 = fadd <2 x double> %14, %9                 ; 2 uses
  %16 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %17 = shufflevector <2 x double> %15, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %18 = fsub <2 x double> %16, %17
  %19 = fadd <2 x double> %16, %17
  %20 = shufflevector <2 x double> %18, <2 x double> %19, <2 x i32> <i32 0, i32 3>
  %21 = fmul <2 x double> %20, <double f0x3FF6A09E667F3BCD, double 2.000000e+00> ; 2 uses
  %22 = extractelement <2 x double> %21, i64 0
  store double %22, ptr %i.ar, align 8, !tbaa !13
  %23 = extractelement <2 x double> %21, i64 1
  store double %23, ptr %.09097, align 8, !tbaa !13
  store double %i.bp, ptr %i.au, align 8, !tbaa !13
  store double %i.bt, ptr %i.bs, align 8, !tbaa !13
  %24 = fsub <2 x double> %14, %9                 ; 2 uses
  %25 = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %26 = fmul <2 x double> %25, <double f0xBFE87DE2A6AEA963, double f0x3FFD906BCF328D46>
  %i.bx = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> <double f0x3FFD906BCF328D46, double f0x3FE87DE2A6AEA963>, <2 x double> %26) ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  store double %i.bz, ptr %i.bw, align 8, !tbaa !13
  %i.ca = getelementptr inbounds nuw i8, ptr %.09295, i64 48
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !11
  %i.cc = getelementptr inbounds [8 x i8], ptr %.09097, i64 %i.cb
  %i.cd = extractelement <2 x double> %i.by, i64 1
  store double %i.cd, ptr %i.cc, align 8, !tbaa !13
  %i.ce = add nsw i64 %.09394, -1
  %i.cf = getelementptr inbounds [8 x i8], ptr %.098, i64 %5
  %i.cg = getelementptr inbounds [8 x i8], ptr %.09097, i64 %6
  %i.ch = getelementptr inbounds [8 x i8], ptr %.09196, i64 %i.b
  %i.ci = getelementptr inbounds [8 x i8], ptr %.09295, i64 %i.b
  %i.cj = icmp samesign ugt i64 %.09394, 1
  br i1 %i.cj, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

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
