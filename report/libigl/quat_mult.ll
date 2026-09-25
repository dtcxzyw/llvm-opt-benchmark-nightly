Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/quat_mult?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN3igl9quat_multIdEEvPKT_S3_PS1_ = comdat any

$_ZN3igl9quat_multIfEEvPKT_S3_PS1_ = comdat any

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl9quat_multIdEEvPKT_S3_PS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !10
  %i.c = load double, ptr %1, align 8, !tbaa !10
  %i.d = load double, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !10
  %i.g = fmul double %i.d, %i.f
  %i.h = tail call double @llvm.fmuladd.f64(double %i.b, double %i.c, double %i.g)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !10
  %i.m = tail call double @llvm.fmuladd.f64(double %i.j, double %i.l, double %i.h)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.o = load double, ptr %i.n, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.q = load double, ptr %i.p, align 8, !tbaa !10
  %i.r = fneg double %i.o
  %i.s = tail call double @llvm.fmuladd.f64(double %i.r, double %i.q, double %i.m)
  store double %i.s, ptr %2, align 8, !tbaa !10
  %i.t = load double, ptr %i.a, align 8, !tbaa !10
  %i.u = load double, ptr %i.p, align 8, !tbaa !10
  %i.v = load double, ptr %i.i, align 8, !tbaa !10
  %i.w = load double, ptr %i.e, align 8, !tbaa !10
  %i.x = fmul double %i.v, %i.w
  %i.y = tail call double @llvm.fmuladd.f64(double %i.t, double %i.u, double %i.x)
  %i.z = load double, ptr %i.n, align 8, !tbaa !10
  %i.aa = load double, ptr %1, align 8, !tbaa !10
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.z, double %i.aa, double %i.y)
  %i.ac = load double, ptr %0, align 8, !tbaa !10
  %i.ad = load double, ptr %i.k, align 8, !tbaa !10
  %i.ae = fneg double %i.ac
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ad, double %i.ab)
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.af, ptr %i.ag, align 8, !tbaa !10
  %i.ah = load double, ptr %i.a, align 8, !tbaa !10
  %i.ai = load double, ptr %i.k, align 8, !tbaa !10
  %i.aj = load double, ptr %i.n, align 8, !tbaa !10
  %i.ak = load double, ptr %i.e, align 8, !tbaa !10
  %i.al = fmul double %i.aj, %i.ak
  %i.am = tail call double @llvm.fmuladd.f64(double %i.ah, double %i.ai, double %i.al)
  %i.an = load double, ptr %0, align 8, !tbaa !10
  %i.ao = load double, ptr %i.p, align 8, !tbaa !10
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.an, double %i.ao, double %i.am)
  %i.aq = load double, ptr %i.i, align 8, !tbaa !10
  %i.ar = load double, ptr %1, align 8, !tbaa !10
  %i.as = fneg double %i.aq
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.ar, double %i.ap)
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.at, ptr %i.au, align 8, !tbaa !10
  %i.av = load double, ptr %i.a, align 8, !tbaa !10
  %i.aw = load double, ptr %i.e, align 8, !tbaa !10
  %i.ax = load double, ptr %0, align 8, !tbaa !10
  %i.ay = load double, ptr %1, align 8, !tbaa !10
  %i.az = load double, ptr %i.i, align 8, !tbaa !10
  %i.ba = load double, ptr %i.p, align 8, !tbaa !10
  %i.bb = fmul double %i.az, %i.ba
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.ay, double %i.bb)
  %i.bd = load double, ptr %i.n, align 8, !tbaa !10
  %i.be = load double, ptr %i.k, align 8, !tbaa !10
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.be, double %i.bc)
  %i.bg = fneg double %i.bf
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.av, double %i.aw, double %i.bg)
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.bh, ptr %i.bi, align 8, !tbaa !10
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr dso_local void @_ZN3igl9quat_multIfEEvPKT_S3_PS1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 3 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.d = add i64 %i.c, 16
  %i.e = add i64 %i.b, 16
  %i.f = add i64 %i.a, 16                         ; 2 uses
  %rt.bound0 = icmp ugt i64 %i.d, %i.a
  %rt.bound1 = icmp ugt i64 %i.f, %i.c
  %rt.conflict = and i1 %rt.bound0, %rt.bound1
  %rt.bound036 = icmp ugt i64 %i.e, %i.a
  %rt.bound137 = icmp ugt i64 %i.f, %i.b
  %rt.conflict38 = and i1 %rt.bound036, %rt.bound137
  %rt.conflict.all = or i1 %rt.conflict, %rt.conflict38
  br i1 %rt.conflict.all, label %.rtscalar, label %.rtvec, !prof !11

.rtvec:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !13
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %3 = load float, ptr %i.l, align 4, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load float, ptr %i.g, align 4, !tbaa !13 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !13 ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !13 ; 2 uses
  %i.q = load float, ptr %0, align 4, !tbaa !13   ; 3 uses
  %i.r = load <2 x float>, ptr %1, align 4, !tbaa !13
  %i.s = load <2 x float>, ptr %0, align 4, !tbaa !13
  %i.t = load <2 x float>, ptr %i.j, align 4, !tbaa !13
  %i.u = load <4 x float>, ptr %1, align 4, !tbaa !13 ; 2 uses
  %i.v = load <2 x float>, ptr %i.l, align 4, !tbaa !13
  %i.w = load float, ptr %i.j, align 4, !tbaa !13 ; 2 uses
  %i.x = load float, ptr %1, align 4, !tbaa !13
  %i.y = load float, ptr %i.m, align 4, !tbaa !13
  %i.z = fmul float %i.w, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.q, float %i.x, float %i.z)
  %i.ab = load float, ptr %i.l, align 4, !tbaa !13
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.p, float %i.aa)
  %i.ad = insertelement <4 x float> poison, float %3, i64 0
  %i.ae = insertelement <4 x float> %i.ad, float %i.q, i64 1
  %i.af = insertelement <4 x float> %i.ae, float %i.w, i64 2
  %i.ag = insertelement <4 x float> %i.af, float %i.ac, i64 3
  %i.ah = fneg <4 x float> %i.ag                  ; 2 uses
  %i.ai = shufflevector <2 x float> %i.v, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> %i.ah, <4 x i32> <i32 poison, i32 poison, i32 2, i32 7>
  %i.ak = shufflevector <2 x float> %i.s, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> %i.aj, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.am = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.u, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.an = insertelement <4 x float> %i.am, float %i.o, i64 1
  %i.ao = insertelement <4 x float> %i.an, float %i.o, i64 2
  %i.ap = fmul <4 x float> %i.al, %i.ao
  %i.aq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.ar = insertelement <4 x float> %i.aq, float %i.n, i64 1
  %i.as = insertelement <4 x float> %i.ar, float %i.n, i64 2
  %i.at = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.p, i64 2
  %i.au = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.av = shufflevector <4 x float> %i.au, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.aw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.as, <4 x float> %i.av, <4 x float> %i.ap)
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.q, i64 2
  %i.ay = shufflevector <2 x float> %i.t, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.az = shufflevector <4 x float> %i.ay, <4 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ba = shufflevector <4 x float> %i.u, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ba, <4 x float> %i.aw)
  %i.bc = load <4 x float>, ptr %1, align 4, !tbaa !13
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.be = shufflevector <4 x float> %i.ah, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.bf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.bd, <4 x float> %i.bb)
  store <4 x float> %i.bf, ptr %2, align 4, !tbaa !13
  br label %.rtcont

.rtscalar:                                        ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !13
  %i.bi = load float, ptr %1, align 4, !tbaa !13
  %i.bj = load float, ptr %0, align 4, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !13
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bi, float %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !13
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.br = load float, ptr %i.bq, align 4, !tbaa !13
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.br, float %i.bn)
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !13
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !13
  %i.bx = fneg float %i.bu
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.bw, float %i.bs)
  store float %i.by, ptr %2, align 4, !tbaa !13
  %i.bz = load float, ptr %i.bg, align 4, !tbaa !13
  %i.ca = load float, ptr %i.bv, align 4, !tbaa !13
  %i.cb = load float, ptr %i.bo, align 4, !tbaa !13
  %i.cc = load float, ptr %i.bk, align 4, !tbaa !13
  %i.cd = fmul float %i.cb, %i.cc
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.ca, float %i.cd)
  %i.cf = load float, ptr %i.bt, align 4, !tbaa !13
  %i.cg = load float, ptr %1, align 4, !tbaa !13
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cg, float %i.ce)
  %i.ci = load float, ptr %0, align 4, !tbaa !13
  %i.cj = load float, ptr %i.bq, align 4, !tbaa !13
  %i.ck = fneg float %i.ci
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.ck, float %i.cj, float %i.ch)
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.cl, ptr %i.cm, align 4, !tbaa !13
  %i.cn = load float, ptr %i.bg, align 4, !tbaa !13
  %i.co = load float, ptr %i.bq, align 4, !tbaa !13
  %i.cp = load float, ptr %i.bt, align 4, !tbaa !13
  %i.cq = load float, ptr %i.bk, align 4, !tbaa !13
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.co, float %i.cr)
  %i.ct = load float, ptr %0, align 4, !tbaa !13
  %i.cu = load float, ptr %i.bv, align 4, !tbaa !13
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.cu, float %i.cs)
  %i.cw = load float, ptr %i.bo, align 4, !tbaa !13
  %i.cx = load float, ptr %1, align 4, !tbaa !13
  %i.cy = fneg float %i.cw
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.cy, float %i.cx, float %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %i.cz, ptr %i.da, align 4, !tbaa !13
  %i.db = load float, ptr %i.bg, align 4, !tbaa !13
  %i.dc = load float, ptr %i.bk, align 4, !tbaa !13
  %i.dd = load float, ptr %0, align 4, !tbaa !13
  %i.de = load float, ptr %1, align 4, !tbaa !13
  %i.df = load float, ptr %i.bo, align 4, !tbaa !13
  %i.dg = load float, ptr %i.bv, align 4, !tbaa !13
  %i.dh = fmul float %i.df, %i.dg
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dd, float %i.de, float %i.dh)
  %i.dj = load float, ptr %i.bt, align 4, !tbaa !13
  %i.dk = load float, ptr %i.bq, align 4, !tbaa !13
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dk, float %i.di)
  %i.dm = fneg float %i.dl
  %i.dn = tail call float @llvm.fmuladd.f32(float %i.db, float %i.dc, float %i.dm)
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float %i.dn, ptr %i.do, align 4, !tbaa !13
  br label %.rtcont

.rtcont:                                          ; preds = %.rtscalar, %.rtvec
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!"float", !5, i64 0}
!13 = !{!12, !12, i64 0}
end_hunk_0
