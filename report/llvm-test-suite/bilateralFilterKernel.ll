begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @bilateralFilterKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = sdiv i32 %4, 2                           ; 5 uses
  %i.c = sub nsw i32 %0, %i.b                     ; 2 uses
  %i.d = icmp slt i32 %i.b, %i.c
  br i1 %i.d, label %.preheader76.lr.ph, label %._crit_edge91.split

.preheader76.lr.ph:                               ; preds = %bb.a
  %i.e = sub nsw i32 %1, %i.b                     ; 2 uses
  %i.f = icmp slt i32 %i.b, %i.e
  %i.g = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.preheader76.us.preheader, label %._crit_edge91.split

.preheader76.us.preheader:                        ; preds = %.preheader76.lr.ph
  %i.h = zext nneg i32 %i.b to i64                ; 4 uses
  %wide.trip.count110 = sext i32 %i.c to i64
  %wide.trip.count105 = sext i32 %i.e to i64
  %wide.trip.count100 = zext nneg i32 %4 to i64   ; 2 uses
  br label %.preheader76.us

.preheader76.us:                                  ; preds = %.preheader76.us.preheader, %._crit_edge.split.us.us
  %indvars.iv107 = phi i64 [ %i.h, %.preheader76.us.preheader ], [ %indvars.iv.next108, %._crit_edge.split.us.us ] ; 4 uses
  %i.i = getelementptr inbounds nuw [512 x i8], ptr %2, i64 %indvars.iv107
  %i.j = mul nuw nsw i64 %indvars.iv107, %i.a
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.j
  br label %.preheader75.us.us

.preheader75.us.us:                               ; preds = %._crit_edge84.split.us.us.us, %.preheader76.us
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %._crit_edge84.split.us.us.us ], [ %i.h, %.preheader76.us ] ; 4 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv102
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us.us.us, %.preheader75.us.us
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %._crit_edge.us.us.us ], [ 0, %.preheader75.us.us ] ; 2 uses
  %.06982.us.us.us = phi double [ %i.am, %._crit_edge.us.us.us ], [ 0.000000e+00, %.preheader75.us.us ]
  %.07081.us.us.us = phi double [ %i.al, %._crit_edge.us.us.us ], [ 0.000000e+00, %.preheader75.us.us ]
  %i.m = sub nsw i64 %i.h, %indvars.iv97          ; 3 uses
  %i.n = sub nsw i64 %indvars.iv107, %i.m
  %i.o = getelementptr inbounds [512 x i8], ptr %2, i64 %i.n
  %i.p = mul nsw i64 %i.m, %i.m
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader.us.us.us ] ; 2 uses
  %.178.us.us.us = phi double [ %i.am, %bb.b ], [ %.06982.us.us.us, %.preheader.us.us.us ]
  %.17177.us.us.us = phi double [ %i.al, %bb.b ], [ %.07081.us.us.us, %.preheader.us.us.us ]
  %i.q = sub nsw i64 %i.h, %indvars.iv            ; 3 uses
  %i.r = sub nsw i64 %indvars.iv102, %i.q
  %i.s = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = load i32, ptr %i.l, align 4, !tbaa !4    ; 2 uses
  %.neg73.us.us.us = add i32 %i.u, -1
  %.neg74.us.us.us = mul i32 %.neg73.us.us.us, %i.t
  %.neg.us.us.us = add i32 %.neg74.us.us.us, %i.u
  %i.v = sitofp i32 %.neg.us.us.us to double
  %i.w = fdiv double %i.v, 2.880000e+02
  %i.x = tail call double @exp(double noundef %i.w) #3, !tbaa !4
  %5 = fdiv double %i.x, f0x408C463ABECCB2BB
  %i.y = mul nsw i64 %i.q, %i.q
  %i.z = add nuw nsw i64 %i.y, %i.p
  %i.aa = trunc nsw i64 %i.z to i32
  %i.ab = uitofp nneg i32 %i.aa to double
  %sqrt.us.us.us = tail call double @llvm.sqrt.f64(double %i.ab)
  %i.ac = fptrunc double %sqrt.us.us.us to float  ; 2 uses
  %i.ad = fneg float %i.ac
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = fpext float %i.ae to double
  %i.ag = fmul double %i.af, f0x3F60000000000000
  %i.ah = tail call double @exp(double noundef %i.ag) #3, !tbaa !4
  %6 = fdiv double %i.ah, f0x409921FB54442D18
  %7 = fmul double %5, %6                         ; 2 uses
  %i.ai = load i32, ptr %i.s, align 4, !tbaa !4
  %i.aj = sitofp i32 %i.ai to double
  %i.ak = fmul double %7, %i.aj
  %i.al = fadd double %.17177.us.us.us, %i.ak     ; 3 uses
  %i.am = fadd double %.178.us.us.us, %7          ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count100
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !8

._crit_edge.us.us.us:                             ; preds = %bb.b
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %._crit_edge84.split.us.us.us, label %.preheader.us.us.us, !llvm.loop !10

._crit_edge84.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %i.an = fdiv double %i.al, %i.am
  %i.ao = fptosi double %i.an to i32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv102
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !4
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %._crit_edge.split.us.us, label %.preheader75.us.us, !llvm.loop !11

._crit_edge.split.us.us:                          ; preds = %._crit_edge84.split.us.us.us
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %._crit_edge91.split, label %.preheader76.us, !llvm.loop !12

._crit_edge91.split:                              ; preds = %._crit_edge.split.us.us, %.preheader76.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

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
!12 = distinct !{!12, !9}
end_hunk_0
