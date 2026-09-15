Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cb2_4?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.hc2c_desc_s = type { i64, ptr, ptr, ptr, %struct.opcnt }
%struct.opcnt = type { double, double, double, double }
%struct.tw_instr = type { i8, i8, i16 }
%struct.hc2c_genus = type { ptr, i32, i64 }

@desc = internal constant %struct.hc2c_desc_s { i64 4, ptr @.str, ptr @twinstr, ptr @fftw_rdft_hc2cb_genus, %struct.opcnt { double 1.600000e+01, double 8.000000e+00, double 8.000000e+00, double 0.000000e+00 } }, align 8
@fftw_an_INT_guaranteed_to_be_zero = external local_unnamed_addr constant i64, align 8
@.str = private unnamed_addr constant [9 x i8] c"hc2cb2_4\00", align 1
@twinstr = internal constant [3 x %struct.tw_instr] [%struct.tw_instr { i8 2, i8 1, i16 1 }, %struct.tw_instr { i8 2, i8 1, i16 3 }, %struct.tw_instr { i8 3, i8 1, i16 0 }], align 2
@fftw_rdft_hc2cb_genus = external constant %struct.hc2c_genus, align 8

; Function Attrs: nounwind uwtable
define dso_local void @fftw_codelet_hc2cb2_4(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @fftw_khc2c_register(ptr noundef %0, ptr noundef nonnull @hc2cb2_4, ptr noundef nonnull @desc, i32 noundef 0) #4
  ret void
}

declare void @fftw_khc2c_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @hc2cb2_4(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i64 noundef %8) #2 {
bb.a:
  %i.a = icmp slt i64 %6, %7
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.idx = shl i64 %6, 5
  %i.b = getelementptr i8, ptr %4, i64 %.idx
  %i.c = getelementptr i8, ptr %i.b, i64 -32
  %i.d = sub i64 0, %8                            ; 2 uses
  %i.e = load i64, ptr @fftw_an_INT_guaranteed_to_be_zero, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.0119 = phi ptr [ %0, %.lr.ph ], [ %i.bn, %bb.b ] ; 4 uses
  %.0107118 = phi ptr [ %1, %.lr.ph ], [ %i.bo, %bb.b ] ; 4 uses
  %.0108117 = phi ptr [ %2, %.lr.ph ], [ %i.bp, %bb.b ] ; 4 uses
  %.0109116 = phi ptr [ %3, %.lr.ph ], [ %i.bq, %bb.b ] ; 4 uses
  %.0110115 = phi ptr [ %i.c, %.lr.ph ], [ %i.br, %bb.b ] ; 3 uses
  %.0111114 = phi ptr [ %5, %.lr.ph ], [ %i.bs, %bb.b ] ; 2 uses
  %.0112113 = phi i64 [ %6, %.lr.ph ], [ %i.bm, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %.0110115, i64 16
  %9 = load <2 x double>, ptr %.0110115, align 8, !tbaa !13 ; 4 uses
  %i.g = load <2 x double>, ptr %i.f, align 8, !tbaa !13 ; 5 uses
  %i.h = extractelement <2 x double> %i.g, i64 0  ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.i = fneg <2 x double> %i.g
  %i.j = shufflevector <2 x double> %i.g, <2 x double> %i.i, <2 x i32> <i32 1, i32 2>
  %i.k = fmul <2 x double> %10, %i.j
  %i.l = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.m = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> %i.g, <2 x double> %i.k) ; 2 uses
  %i.n = load double, ptr %.0119, align 8, !tbaa !13 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0111114, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !11   ; 4 uses
  %i.q = getelementptr inbounds [8 x i8], ptr %.0108117, i64 %i.p ; 2 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !13 ; 2 uses
  %i.s = fadd double %i.n, %i.r                   ; 2 uses
  %i.t = fsub double %i.n, %i.r                   ; 2 uses
  %i.u = load double, ptr %.0107118, align 8, !tbaa !13 ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.0109116, i64 %i.p ; 2 uses
  %i.w = load double, ptr %i.v, align 8, !tbaa !13 ; 2 uses
  %i.x = fsub double %i.u, %i.w                   ; 2 uses
  %i.y = fadd double %i.u, %i.w                   ; 2 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %.0119, i64 %i.p ; 2 uses
  %i.aa = load double, ptr %i.z, align 8, !tbaa !13 ; 2 uses
  %i.ab = load double, ptr %.0108117, align 8, !tbaa !13 ; 2 uses
  %i.ac = fadd double %i.aa, %i.ab                ; 2 uses
  %i.ad = fsub double %i.aa, %i.ab                ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %.0107118, i64 %i.p ; 2 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ag = load double, ptr %.0109116, align 8, !tbaa !13 ; 2 uses
  %i.ah = fsub double %i.af, %i.ag                ; 2 uses
  %i.ai = fadd double %i.af, %i.ag                ; 2 uses
  %i.aj = fadd double %i.s, %i.ac
  store double %i.aj, ptr %.0119, align 8, !tbaa !13
  %i.ak = fadd double %i.x, %i.ah
  store double %i.ak, ptr %.0108117, align 8, !tbaa !13
  %i.al = fsub double %i.s, %i.ac
  %i.am = fsub double %i.x, %i.ah                 ; 2 uses
  %i.an = fneg double %i.am
  %i.ao = insertelement <2 x double> poison, double %i.am, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.an, i64 1
  %i.aq = fmul <2 x double> %i.m, %i.ap
  %i.ar = shufflevector <2 x double> %i.aq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.as = insertelement <2 x double> poison, double %i.al, i64 0
  %i.at = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> zeroinitializer
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.m, <2 x double> %i.at, <2 x double> %i.ar) ; 2 uses
  %i.av = extractelement <2 x double> %i.au, i64 0
  store double %i.av, ptr %i.z, align 8, !tbaa !13
  %i.aw = extractelement <2 x double> %i.au, i64 1
  store double %i.aw, ptr %i.q, align 8, !tbaa !13
  %i.ax = fsub double %i.t, %i.ai                 ; 2 uses
  %i.ay = fadd double %i.y, %i.ad                 ; 2 uses
  %i.az = fneg double %i.ay
  %11 = extractelement <2 x double> %9, i64 1     ; 2 uses
  %i.ba = fmul double %11, %i.az
  %12 = extractelement <2 x double> %9, i64 0     ; 2 uses
  %i.bb = tail call double @llvm.fmuladd.f64(double %12, double %i.ax, double %i.ba)
  store double %i.bb, ptr %.0107118, align 8, !tbaa !13
  %i.bc = fmul double %11, %i.ax
  %i.bd = tail call double @llvm.fmuladd.f64(double %12, double %i.ay, double %i.bc)
  store double %i.bd, ptr %.0109116, align 8, !tbaa !13
  %i.be = fadd double %i.t, %i.ai                 ; 2 uses
  %i.bf = fsub double %i.y, %i.ad                 ; 2 uses
  %i.bg = fneg double %i.bf
  %i.bh = extractelement <2 x double> %i.g, i64 1 ; 2 uses
  %i.bi = fmul double %i.bh, %i.bg
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.h, double %i.be, double %i.bi)
  store double %i.bj, ptr %i.ae, align 8, !tbaa !13
  %i.bk = fmul double %i.bh, %i.be
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.h, double %i.bf, double %i.bk)
  store double %i.bl, ptr %i.v, align 8, !tbaa !13
  %i.bm = add nsw i64 %.0112113, 1                ; 2 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.0119, i64 %8
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0107118, i64 %8
  %i.bp = getelementptr inbounds [8 x i8], ptr %.0108117, i64 %i.d
  %i.bq = getelementptr inbounds [8 x i8], ptr %.0109116, i64 %i.d
  %i.br = getelementptr inbounds nuw i8, ptr %.0110115, i64 32
  %i.bs = getelementptr inbounds [8 x i8], ptr %.0111114, i64 %i.e
  %exitcond.not = icmp eq i64 %i.bm, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

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
