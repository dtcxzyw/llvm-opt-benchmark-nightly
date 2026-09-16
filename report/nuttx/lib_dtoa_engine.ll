Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_dtoa_engine?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@g_dtoa_scale_up = external dso_local local_unnamed_addr constant [0 x double], align 8
@g_dtoa_scale_down = external dso_local local_unnamed_addr constant [0 x double], align 8
@g_dtoa_round = external dso_local local_unnamed_addr constant [0 x double], align 8

; Function Attrs: nofree norecurse noredzone nosync nounwind optsize memory(argmem: write) uwtable
define dso_local i32 @__dtoa_engine(double noundef %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00         ; 2 uses
  %i.b = fneg double %0
  %.073 = select i1 %i.a, double %i.b, double %0  ; 4 uses
  %.067 = zext i1 %i.a to i8                      ; 5 uses
  %i.c = fcmp oeq double %0, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %4 = or disjoint i8 %.067, 2                    ; 2 uses
  %i.d = icmp sgt i32 %2, 0
  br i1 %i.d, label %.lr.ph106, label %.loopexit.a

.lr.ph106:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.f = zext nneg i32 %2 to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 48, i64 %i.f, i1 false)
  br label %.loopexit.a

bb.c:                                             ; preds = %bb.a
  %i.g = fcmp uno double %.073, 0.000000e+00
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = or disjoint i8 %.067, 8
  br label %.loopexit.a

bb.e:                                             ; preds = %bb.c
  %i.i = tail call double @llvm.fabs.f64(double %0)
  %or.cond = fcmp oeq double %i.i, +inf
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = or disjoint i8 %.067, 4
  br label %.loopexit.a

bb.g:                                             ; preds = %bb.e
  %i.k = fcmp olt double %.073, 1.000000e+15
  br i1 %i.k, label %.preheader, label %.preheader94

.preheader:                                       ; preds = %bb.g, %.preheader
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %.preheader ], [ 8, %bb.g ] ; 4 uses
  %.069100 = phi i32 [ %.170, %.preheader ], [ 15, %bb.g ]
  %.17499 = phi double [ %.275, %.preheader ], [ %.073, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @g_dtoa_scale_up, i64 %indvars.iv110
  %i.m = load double, ptr %i.l, align 8
  %i.n = fmul double %.17499, %i.m                ; 2 uses
  %i.o = fcmp olt double %i.n, 1.000000e+16       ; 2 uses
  %i.p = trunc nuw nsw i64 %indvars.iv110 to i32
  %.neg = shl nsw i32 -1, %i.p
  %.275 = select i1 %i.o, double %i.n, double %.17499 ; 2 uses
  %i.q = select i1 %i.o, i32 %.neg, i32 0
  %.170 = add i32 %i.q, %.069100                  ; 2 uses
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, -1
  %.not122 = icmp eq i64 %indvars.iv110, 0
  br i1 %.not122, label %.loopexit93, label %.preheader, !llvm.loop !7

.preheader94:                                     ; preds = %bb.g, %.preheader94
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader94 ], [ 8, %bb.g ] ; 4 uses
  %.27197 = phi i32 [ %.372, %.preheader94 ], [ 15, %bb.g ]
  %.37696 = phi double [ %.477, %.preheader94 ], [ %.073, %bb.g ] ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @g_dtoa_scale_down, i64 %indvars.iv
  %i.s = load double, ptr %i.r, align 8
  %i.t = fmul double %.37696, %i.s                ; 2 uses
  %i.u = fcmp ult double %i.t, 1.000000e+15       ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv to i32
  %i.w = shl nuw i32 1, %i.v
  %.477 = select i1 %i.u, double %.37696, double %i.t ; 2 uses
  %i.x = select i1 %i.u, i32 0, i32 %i.w
  %.372 = add nsw i32 %i.x, %.27197               ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not121 = icmp eq i64 %indvars.iv, 0
  br i1 %.not121, label %.loopexit93, label %.preheader94, !llvm.loop !8

.loopexit93:                                      ; preds = %.preheader94, %.preheader
  %.578 = phi double [ %.275, %.preheader ], [ %.477, %.preheader94 ]
  %.4 = phi i32 [ %.170, %.preheader ], [ %.372, %.preheader94 ] ; 2 uses
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.loopexit93
  %i.y = tail call i32 @llvm.smax.i32(i32 %.4, i32 -1)
  %i.z = add i32 %3, 1
  %i.aa = add i32 %i.z, %i.y
  %. = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.aa)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.loopexit93
  %.080 = phi i32 [ %., %bb.h ], [ %2, %.loopexit93 ] ; 5 uses
  %i.ab = sext i32 %.080 to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr @g_dtoa_round, i64 %i.ab
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = fadd double %.578, %i.ad                ; 3 uses
  %i.af = fcmp oge double %i.ae, 1.000000e+16     ; 2 uses
  %5 = zext i1 %i.af to i32
  %.5 = add nsw i32 %.4, %5                       ; 2 uses
  %i.ag = icmp sgt i32 %.080, 0
  br i1 %i.ag, label %.lr.ph, label %.loopexit.a

.lr.ph:                                           ; preds = %bb.i
  %i.ah = fdiv double %i.ae, 1.000000e+01
  %.679 = select i1 %i.af, double %i.ah, double %i.ae
  %i.ai = fptoui double %.679 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 5
  %wide.trip.count = zext nneg i32 %.080 to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv113 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next114, %bb.j ] ; 2 uses
  %.0104 = phi i64 [ 1000000000000000, %.lr.ph ], [ %i.ap, %bb.j ] ; 3 uses
  %.065103 = phi i64 [ %i.ai, %.lr.ph ], [ %i.ao, %bb.j ] ; 2 uses
  %i.ak = udiv i64 %.065103, %.0104
  %i.al = trunc i64 %i.ak to i8
  %i.am = add i8 %i.al, 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv113
  store i8 %i.am, ptr %i.an, align 1
  %i.ao = urem i64 %.065103, %.0104
  %i.ap = udiv i64 %.0104, 10
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.a, label %bb.j, !llvm.loop !9

.loopexit.a:                                      ; preds = %bb.j, %.lr.ph106, %bb.i, %bb.b, %bb.d, %bb.f
  %.181 = phi i32 [ %2, %bb.b ], [ %2, %bb.d ], [ %2, %bb.f ], [ %.080, %bb.i ], [ %2, %.lr.ph106 ], [ %.080, %bb.j ] ; 2 uses
  %.6 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.f ], [ %.5, %bb.i ], [ 0, %.lr.ph106 ], [ %.5, %bb.j ]
  %.168 = phi i8 [ %4, %bb.b ], [ %i.h, %bb.d ], [ %i.j, %bb.f ], [ %.067, %bb.i ], [ %4, %.lr.ph106 ], [ %.067, %bb.j ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.ar = sext i32 %.181 to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  store i8 0, ptr %i.as, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %.168, ptr %i.at, align 4
  store i32 %.6, ptr %1, align 4
  ret i32 %.181
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nofree norecurse noredzone nosync nounwind optsize memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !10}
!8 = distinct !{!8, !10}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
