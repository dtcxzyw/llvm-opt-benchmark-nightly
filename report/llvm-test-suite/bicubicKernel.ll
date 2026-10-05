Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/bicubicKernel?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @bicubicKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = shl i32 %1, 2                            ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = icmp sgt i32 %0, 3
  %i.d = icmp sgt i32 %1, 3
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %.preheader60.preheader, label %._crit_edge65.split

.preheader60.preheader:                           ; preds = %bb.a
  %i.e = shl i32 %0, 2
  %i.f = add i32 %i.e, -12
  %i.g = add i32 %i.a, -12
  %smax = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %smax72 = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %wide.trip.count73 = zext nneg i32 %smax72 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.preheader60

.preheader60:                                     ; preds = %.preheader60.preheader, %._crit_edge
  %indvars.iv69 = phi i64 [ 0, %.preheader60.preheader ], [ %indvars.iv.next70, %._crit_edge ] ; 4 uses
  %i.h = trunc nuw nsw i64 %indvars.iv69 to i32
  %i.i = lshr i64 %indvars.iv69, 2
  %i.j = and i32 %i.h, 3
  %i.k = uitofp nneg i32 %i.j to double
  %i.l = fmul nnan double %i.k, 2.500000e-01      ; 3 uses
  %i.m = fmul nnan double %i.l, 5.000000e-01
  %i.n = mul nuw nsw i64 %indvars.iv69, %i.b
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.n
  %i.p = and i64 %i.i, 1073741823                 ; 4 uses
  %i.q = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 3072 ; 3 uses
  %i.s = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.p ; 2 uses
  %i.t = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1024 ; 3 uses
  %i.v = getelementptr inbounds nuw [1024 x i8], ptr %2, i64 %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2048 ; 2 uses
  br label %.preheader59

._crit_edge65.split:                              ; preds = %._crit_edge, %bb.a
  ret void

.preheader59:                                     ; preds = %.preheader60, %.preheader59
  %indvars.iv = phi i64 [ 0, %.preheader60 ], [ %indvars.iv.next, %.preheader59 ] ; 4 uses
  %i.x = trunc nuw nsw i64 %indvars.iv to i32
  %i.y = lshr i64 %indvars.iv, 2
  %i.z = and i64 %i.y, 1073741823                 ; 7 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.z
  %i.ab = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %i.ac = add nuw nsw i64 %i.z, 2                 ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.ac
  %i.ae = add nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.z
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  %i.ah = sitofp i32 %i.ag to double              ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !tbaa !7
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  %i.am = load i32, ptr %i.al, align 4, !tbaa !7
  %i.an = sitofp i32 %i.am to double              ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ac
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.z
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %4 = sitofp i32 %i.ar to double                 ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ab
  %i.at = load <2 x i32>, ptr %i.as, align 4, !tbaa !7
  %i.au = sitofp <2 x i32> %i.at to <2 x double>  ; 2 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ae
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %i.ax = sitofp i32 %i.aw to double              ; 2 uses
  %i.ay = and i32 %i.x, 3
  %5 = uitofp nneg i32 %i.ay to double
  %6 = fmul nnan double %5, 2.500000e-01          ; 6 uses
  %7 = fmul nnan double %6, 5.000000e-01          ; 3 uses
  %i.az = extractelement <2 x double> %i.ak, i64 1 ; 3 uses
  %8 = fsub double %i.az, %i.ah
  %i.ba = extractelement <2 x double> %i.ak, i64 0 ; 3 uses
  %i.bb = fmul nnan double %i.ba, -5.000000e+00
  %i.bc = fsub double %i.ba, %i.az
  %i.bd = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bc, i64 1
  %i.bf = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.an, i64 1
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> <double 2.000000e+00, double 3.000000e+00>, <2 x double> %i.bg) ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.az, double 4.000000e+00, double %i.bi)
  %i.bk = fsub double %i.bj, %i.an
  %i.bl = extractelement <2 x double> %i.bh, i64 1
  %i.bm = fsub double %i.bl, %i.ah
  %9 = tail call double @llvm.fmuladd.f64(double %6, double %i.bm, double %i.bk)
  %10 = tail call double @llvm.fmuladd.f64(double %6, double %9, double %8)
  %11 = tail call double @llvm.fmuladd.f64(double %7, double %10, double %i.ba) ; 3 uses
  %i.bn = load <2 x i32>, ptr %i.aa, align 4, !tbaa !7 ; 2 uses
  %i.bo = load <2 x i32>, ptr %i.ad, align 4, !tbaa !7 ; 2 uses
  %i.bp = load <2 x i32>, ptr %i.ao, align 4, !tbaa !7 ; 2 uses
  %i.bq = shufflevector <2 x i32> %i.bp, <2 x i32> %i.bn, <2 x i32> <i32 0, i32 2>
  %i.br = sitofp <2 x i32> %i.bq to <2 x double>  ; 3 uses
  %i.bs = shufflevector <2 x i32> %i.bp, <2 x i32> %i.bn, <2 x i32> <i32 1, i32 3>
  %i.bt = sitofp <2 x i32> %i.bs to <2 x double>  ; 3 uses
  %i.bu = load <2 x i32>, ptr %i.ap, align 4, !tbaa !7 ; 2 uses
  %i.bv = shufflevector <2 x i32> %i.bu, <2 x i32> %i.bo, <2 x i32> <i32 0, i32 2>
  %i.bw = sitofp <2 x i32> %i.bv to <2 x double>  ; 3 uses
  %i.bx = shufflevector <2 x i32> %i.bu, <2 x i32> %i.bo, <2 x i32> <i32 1, i32 3>
  %i.by = sitofp <2 x i32> %i.bx to <2 x double>  ; 2 uses
  %i.bz = fsub <2 x double> %i.bw, %i.br
  %i.ca = fmul nnan <2 x double> %i.bt, splat (double -5.000000e+00)
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> splat (double 2.000000e+00), <2 x double> %i.ca)
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double 4.000000e+00), <2 x double> %i.cb)
  %i.cd = fsub <2 x double> %i.cc, %i.by
  %i.ce = fsub <2 x double> %i.bt, %i.bw
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> splat (double 3.000000e+00), <2 x double> %i.by)
  %i.cg = fsub <2 x double> %i.cf, %i.br
  %12 = insertelement <2 x double> poison, double %6, i64 0
  %13 = shufflevector <2 x double> %12, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %i.cg, <2 x double> %i.cd)
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %13, <2 x double> %14, <2 x double> %i.bz)
  %i.ch = insertelement <2 x double> poison, double %7, i64 0
  %16 = shufflevector <2 x double> %i.ch, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %16, <2 x double> %15, <2 x double> %i.bt) ; 4 uses
  %i.ci = extractelement <2 x double> %i.au, i64 1 ; 3 uses
  %i.cj = fsub double %i.ci, %4
  %18 = extractelement <2 x double> %i.au, i64 0  ; 3 uses
  %i.ck = fmul nnan double %18, -5.000000e+00
  %19 = tail call double @llvm.fmuladd.f64(double %4, double 2.000000e+00, double %i.ck)
  %20 = tail call double @llvm.fmuladd.f64(double %i.ci, double 4.000000e+00, double %19)
  %i.cl = fsub double %20, %i.ax
  %21 = fsub double %18, %i.ci
  %22 = tail call double @llvm.fmuladd.f64(double %21, double 3.000000e+00, double %i.ax)
  %23 = fsub double %22, %4
  %i.cm = extractelement <2 x double> %17, i64 0  ; 2 uses
  %i.cn = extractelement <2 x double> %17, i64 1  ; 2 uses
  %i.co = fsub double %i.cm, %i.cn
  %i.cp = fsub double %11, %i.cm
  %i.cq = tail call double @llvm.fmuladd.f64(double %6, double %23, double %i.cl)
  %i.cr = tail call double @llvm.fmuladd.f64(double %6, double %i.cq, double %i.cj)
  %i.cs = tail call double @llvm.fmuladd.f64(double %7, double %i.cr, double %18) ; 2 uses
  %24 = fmul double %11, -5.000000e+00
  %25 = tail call double @llvm.fmuladd.f64(double %i.cn, double 2.000000e+00, double %24)
  %26 = insertelement <2 x double> %17, double %i.cp, i64 1
  %27 = insertelement <2 x double> poison, double %25, i64 0
  %28 = insertelement <2 x double> %27, double %i.cs, i64 1
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %26, <2 x double> <double 4.000000e+00, double 3.000000e+00>, <2 x double> %28)
  %30 = insertelement <2 x double> %17, double %i.cs, i64 0
  %i.ct = fsub <2 x double> %29, %30              ; 2 uses
  %i.cu = extractelement <2 x double> %i.ct, i64 0
  %31 = extractelement <2 x double> %i.ct, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.l, double %31, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.l, double %i.cv, double %i.co)
  %i.cx = tail call double @llvm.fmuladd.f64(double %i.m, double %i.cw, double %11)
  %i.cy = fptosi double %i.cx to i32
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader59, !llvm.loop !8

._crit_edge:                                      ; preds = %.preheader59
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge65.split, label %.preheader60, !llvm.loop !9
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
