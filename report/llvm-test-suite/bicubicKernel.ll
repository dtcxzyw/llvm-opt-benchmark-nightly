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
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sitofp i32 %i.ag to double              ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ab
  %i.aj = load <2 x i32>, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sitofp <2 x i32> %i.aj to <2 x double>  ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ae
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sitofp i32 %i.am to double              ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.z
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.ac
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.z
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sitofp i32 %i.ar to double              ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ab
  %i.au = load <2 x i32>, ptr %i.at, align 4, !tbaa !4
  %i.av = sitofp <2 x i32> %i.au to <2 x double>  ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ae
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !4
  %i.ay = sitofp i32 %i.ax to double              ; 2 uses
  %i.az = and i32 %i.x, 3
  %i.ba = uitofp nneg i32 %i.az to double
  %i.bb = fmul nnan double %i.ba, 2.500000e-01    ; 6 uses
  %i.bc = fmul nnan double %i.bb, 5.000000e-01    ; 3 uses
  %i.bd = extractelement <2 x double> %i.ak, i64 1 ; 3 uses
  %i.be = fsub double %i.bd, %i.ah
  %i.bf = extractelement <2 x double> %i.ak, i64 0 ; 3 uses
  %i.bg = fmul nnan double %i.bf, -5.000000e+00
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.ah, double 2.000000e+00, double %i.bg)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.bd, double 4.000000e+00, double %i.bh)
  %i.bj = fsub double %i.bi, %i.an
  %i.bk = fsub double %i.bf, %i.bd
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.bk, double 3.000000e+00, double %i.an)
  %i.bm = fsub double %i.bl, %i.ah
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bm, double %i.bj)
  %i.bo = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.bn, double %i.be)
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.bo, double %i.bf) ; 3 uses
  %i.bq = load <2 x i32>, ptr %i.aa, align 4, !tbaa !4 ; 2 uses
  %i.br = load <2 x i32>, ptr %i.ad, align 4, !tbaa !4 ; 2 uses
  %i.bs = load <2 x i32>, ptr %i.ao, align 4, !tbaa !4 ; 2 uses
  %i.bt = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bq, <2 x i32> <i32 0, i32 2>
  %i.bu = sitofp <2 x i32> %i.bt to <2 x double>  ; 3 uses
  %i.bv = shufflevector <2 x i32> %i.bs, <2 x i32> %i.bq, <2 x i32> <i32 1, i32 3>
  %i.bw = sitofp <2 x i32> %i.bv to <2 x double>  ; 3 uses
  %i.bx = load <2 x i32>, ptr %i.ap, align 4, !tbaa !4 ; 2 uses
  %i.by = shufflevector <2 x i32> %i.bx, <2 x i32> %i.br, <2 x i32> <i32 0, i32 2>
  %i.bz = sitofp <2 x i32> %i.by to <2 x double>  ; 3 uses
  %i.ca = shufflevector <2 x i32> %i.bx, <2 x i32> %i.br, <2 x i32> <i32 1, i32 3>
  %i.cb = sitofp <2 x i32> %i.ca to <2 x double>  ; 2 uses
  %i.cc = fsub <2 x double> %i.bz, %i.bu
  %i.cd = fmul nnan <2 x double> %i.bw, splat (double -5.000000e+00)
  %i.ce = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double 2.000000e+00), <2 x double> %i.cd)
  %i.cf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> splat (double 4.000000e+00), <2 x double> %i.ce)
  %i.cg = fsub <2 x double> %i.cf, %i.cb
  %i.ch = fsub <2 x double> %i.bw, %i.bz
  %i.ci = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> splat (double 3.000000e+00), <2 x double> %i.cb)
  %i.cj = fsub <2 x double> %i.ci, %i.bu
  %i.ck = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.cl = shufflevector <2 x double> %i.ck, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cj, <2 x double> %i.cg)
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cl, <2 x double> %i.cm, <2 x double> %i.cc)
  %i.co = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.cp = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cp, <2 x double> %i.cn, <2 x double> %i.bw) ; 4 uses
  %i.cr = extractelement <2 x double> %i.av, i64 1 ; 3 uses
  %i.cs = fsub double %i.cr, %i.as
  %i.ct = extractelement <2 x double> %i.av, i64 0 ; 3 uses
  %i.cu = fmul nnan double %i.ct, -5.000000e+00
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.as, double 2.000000e+00, double %i.cu)
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cr, double 4.000000e+00, double %i.cv)
  %i.cx = fsub double %i.cw, %i.ay
  %i.cy = fsub double %i.ct, %i.cr
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double 3.000000e+00, double %i.ay)
  %4 = fsub double %i.cz, %i.as
  %5 = extractelement <2 x double> %i.cq, i64 0   ; 2 uses
  %6 = extractelement <2 x double> %i.cq, i64 1   ; 2 uses
  %i.da = fsub double %5, %6
  %7 = fmul double %i.bp, -5.000000e+00
  %8 = fsub double %i.bp, %5
  %i.db = tail call double @llvm.fmuladd.f64(double %i.bb, double %4, double %i.cx)
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.db, double %i.cs)
  %9 = tail call double @llvm.fmuladd.f64(double %i.bc, double %i.dc, double %i.ct) ; 2 uses
  %10 = tail call double @llvm.fmuladd.f64(double %6, double 2.000000e+00, double %7)
  %11 = insertelement <2 x double> %i.cq, double %8, i64 1
  %12 = insertelement <2 x double> poison, double %10, i64 0
  %13 = insertelement <2 x double> %12, double %9, i64 1
  %14 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %11, <2 x double> <double 4.000000e+00, double 3.000000e+00>, <2 x double> %13) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %i.dd = fsub double %15, %9
  %foldExtExtBinop = fsub <2 x double> %14, %i.cq
  %16 = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.de = tail call double @llvm.fmuladd.f64(double %i.l, double %16, double %i.dd)
  %i.df = tail call double @llvm.fmuladd.f64(double %i.l, double %i.de, double %i.da)
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.m, double %i.df, double %i.bp)
  %i.dh = fptosi double %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader59, !llvm.loop !8

._crit_edge:                                      ; preds = %.preheader59
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %exitcond74.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count73
  br i1 %exitcond74.not, label %._crit_edge65.split, label %.preheader60, !llvm.loop !10
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
