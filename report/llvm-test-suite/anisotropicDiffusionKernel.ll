begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @anisotropicDiffusionKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = icmp sgt i32 %4, 0
  br i1 %i.b, label %.preheader109.lr.ph, label %._crit_edge114.split

.preheader109.lr.ph:                              ; preds = %bb.a
  %5 = icmp sgt i32 %0, 4
  %6 = icmp sgt i32 %1, 4
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %.preheader109.preheader, label %._crit_edge114.split

.preheader109.preheader:                          ; preds = %.preheader109.lr.ph
  %i.c = add nsw i32 %1, -2
  %i.d = add nsw i32 %0, -2
  %wide.trip.count121 = zext i32 %i.d to i64
  %wide.trip.count = zext i32 %i.c to i64
  br label %.preheader109

.preheader109:                                    ; preds = %.preheader109.preheader, %._crit_edge112
  %.0108113 = phi i32 [ %i.dc, %._crit_edge112 ], [ 0, %.preheader109.preheader ]
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.a, %.preheader109
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %._crit_edge.a ], [ 2, %.preheader109 ] ; 3 uses
  %i.e = getelementptr inbounds nuw [2048 x i8], ptr %2, i64 %indvars.iv118 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2048 ; 3 uses
  %i.g = getelementptr i8, ptr %i.e, i64 -2048    ; 3 uses
  %i.h = getelementptr i8, ptr %i.e, i64 -4096
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  %i.j = mul nuw nsw i64 %indvars.iv118, %i.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 2, %.preheader ] ; 8 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = load i32, ptr %i.l, align 4, !tbaa !4
  %i.p = sub nsw i32 %i.n, %i.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = sub nsw i32 %i.r, %i.t
  %i.v = add nsw i32 %i.u, %i.p                   ; 2 uses
  %i.w = mul i32 %i.v, %i.v
  %i.x = sub i32 0, %i.w
  %i.y = sitofp i32 %i.x to double
  %i.z = fmul nnan double %i.y, 2.000000e+00
  %i.aa = fmul nnan double %i.z, 5.000000e-01
  %i.ab = tail call double @exp(double noundef %i.aa) #3, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.af = sub nsw i32 %i.ad, %i.ae
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fmul double %i.ab, %i.ag
  %i.ai = fptrunc double %i.ah to float
  %i.aj = getelementptr i8, ptr %i.l, i64 -8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = sub nsw i32 %i.ae, %i.ak
  %i.am = add nsw i64 %indvars.iv, -1             ; 3 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.am ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = sub nsw i32 %i.ao, %i.aq
  %i.as = add nsw i32 %i.ar, %i.al                ; 2 uses
  %i.at = mul i32 %i.as, %i.as
  %i.au = sub i32 0, %i.at
  %i.av = sitofp i32 %i.au to double
  %i.aw = fmul nnan double %i.av, 2.000000e+00
  %i.ax = fmul nnan double %i.aw, 5.000000e-01
  %i.ay = tail call double @exp(double noundef %i.ax) #3, !tbaa !4
  %i.az = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.am
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !4
  %i.bb = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.bc = sub nsw i32 %i.ba, %i.bb
  %i.bd = sitofp i32 %i.bc to double
  %i.be = fmul double %i.ay, %i.bd
  %i.bf = fptrunc double %i.be to float
  %i.bg = load i32, ptr %i.s, align 4, !tbaa !4
  %i.bh = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !4
  %i.bl = sub nsw i32 %i.bb, %i.bk
  %i.bm = add nsw i32 %i.bl, %i.bi                ; 2 uses
  %i.bn = mul i32 %i.bm, %i.bm
  %i.bo = sub i32 0, %i.bn
  %i.bp = sitofp i32 %i.bo to double
  %i.bq = fmul nnan double %i.bp, 2.000000e+00
  %i.br = fmul nnan double %i.bq, 5.000000e-01
  %i.bs = tail call double @exp(double noundef %i.br) #3, !tbaa !4
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = sitofp i32 %i.bw to double
  %i.by = fmul double %i.bs, %i.bx
  %i.bz = fptrunc double %i.by to float
  %i.ca = load i32, ptr %i.q, align 4, !tbaa !4
  %i.cb = load i32, ptr %i.an, align 4, !tbaa !4
  %i.cc = sub nsw i32 %i.ca, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !4
  %i.cf = sub nsw i32 %i.ce, %i.bv
  %i.cg = add nsw i32 %i.cf, %i.cc                ; 2 uses
  %i.ch = mul i32 %i.cg, %i.cg
  %i.ci = sub i32 0, %i.ch
  %i.cj = sitofp i32 %i.ci to double
  %i.ck = fmul nnan double %i.cj, 2.000000e+00
  %i.cl = fmul nnan double %i.ck, 5.000000e-01
  %i.cm = tail call double @exp(double noundef %i.cl) #3, !tbaa !4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !4
  %i.cp = load i32, ptr %i.l, align 4, !tbaa !4   ; 2 uses
  %i.cq = sub nsw i32 %i.co, %i.cp
  %i.cr = sitofp i32 %i.cq to double
  %i.cs = fmul double %i.cm, %i.cr
  %i.ct = fptrunc double %i.cs to float
  %i.cu = sitofp i32 %i.cp to double
  %i.cv = fadd float %i.ai, %i.bf
  %i.cw = fadd float %i.cv, %i.bz
  %i.cx = fadd float %i.cw, %i.ct
  %i.cy = fpext float %i.cx to double
  %i.cz = tail call double @llvm.fmuladd.f64(double %i.cy, double 1.250000e-01, double %i.cu)
  %i.da = fptosi double %i.cz to i32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %i.da, ptr %i.db, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.a, label %bb.b, !llvm.loop !8

._crit_edge.a:                                    ; preds = %bb.b
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next119, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge112, label %.preheader, !llvm.loop !10

._crit_edge112:                                   ; preds = %._crit_edge.a
  %i.dc = add nuw nsw i32 %.0108113, 1            ; 2 uses
  %exitcond123.not = icmp eq i32 %i.dc, %4
  br i1 %exitcond123.not, label %._crit_edge114.split, label %.preheader109, !llvm.loop !11

._crit_edge114.split:                             ; preds = %._crit_edge112, %.preheader109.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!11 = distinct !{!11, !9}
end_hunk_0
