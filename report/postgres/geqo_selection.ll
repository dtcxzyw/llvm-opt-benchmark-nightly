Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/geqo_selection?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @geqo_selection(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, double noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = sitofp i32 %i.b to double                ; 2 uses
  %i.d = fadd double %4, -1.000000e+00            ; 4 uses
  %i.e = fmul double %i.d, 4.000000e+00           ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %i.f = tail call double @geqo_rand(ptr noundef %0) #4
  %i.g = fneg double %i.f
  %i.h = fmul double %i.e, %i.g
  %i.i = tail call double @llvm.fmuladd.f64(double %4, double %4, double %i.h) ; 3 uses
  %i.j = fcmp ogt double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = tail call double @sqrt(double noundef %i.i) #4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi double [ %i.k, %bb.c ], [ %i.i, %bb.b ]
  %i.l = fsub double %4, %.0.i
  %i.m = fmul double %i.l, %i.c
  %i.n = fmul double %i.m, 5.000000e-01
  %i.o = fdiv double %i.n, %i.d                   ; 3 uses
  %i.p = fcmp olt double %i.o, 0.000000e+00
  %i.q = fcmp oge double %i.o, %i.c
  %i.r = or i1 %i.p, %i.q
  br i1 %i.r, label %bb.b, label %linear_rand.exit, !llvm.loop !4

linear_rand.exit:                                 ; preds = %bb.d
  %i.s = load i32, ptr %i.a, align 8
  %i.t = sitofp i32 %i.s to double                ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %linear_rand.exit
  %i.u = tail call double @geqo_rand(ptr noundef %0) #4
  %i.v = fneg double %i.u
  %i.w = fmul double %i.e, %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %4, double %4, double %i.w) ; 3 uses
  %i.y = fcmp ogt double %i.x, 0.000000e+00
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = tail call double @sqrt(double noundef %i.x) #4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i21 = phi double [ %i.z, %bb.f ], [ %i.x, %bb.e ]
  %i.aa = fsub double %4, %.0.i21
  %i.ab = fmul double %i.aa, %i.t
  %i.ac = fmul double %i.ab, 5.000000e-01
  %i.ad = fdiv double %i.ac, %i.d                 ; 3 uses
  %i.ae = fcmp olt double %i.ad, 0.000000e+00
  %i.af = fcmp oge double %i.ad, %i.t
  %i.ag = or i1 %i.ae, %i.af
  br i1 %i.ag, label %bb.e, label %linear_rand.exit22, !llvm.loop !4

linear_rand.exit22:                               ; preds = %bb.g
  %i.ah = fptosi double %i.o to i32               ; 3 uses
  %i.ai = fptosi double %i.ad to i32              ; 2 uses
  %i.aj = load i32, ptr %i.a, align 8
  %i.ak = icmp sgt i32 %i.aj, 1
  %i.al = icmp eq i32 %i.ai, %i.ah
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %linear_rand.exit22, %linear_rand.exit24
  %i.am = load i32, ptr %i.a, align 8
  %i.an = sitofp i32 %i.am to double              ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph
  %i.ao = tail call double @geqo_rand(ptr noundef %0) #4
  %i.ap = fneg double %i.ao
  %i.aq = fmul double %i.e, %i.ap
  %i.ar = tail call double @llvm.fmuladd.f64(double %4, double %4, double %i.aq) ; 3 uses
  %i.as = fcmp ogt double %i.ar, 0.000000e+00
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = tail call double @sqrt(double noundef %i.ar) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i23 = phi double [ %i.at, %bb.i ], [ %i.ar, %bb.h ]
  %i.au = fsub double %4, %.0.i23
  %i.av = fmul double %i.au, %i.an
  %i.aw = fmul double %i.av, 5.000000e-01
  %i.ax = fdiv double %i.aw, %i.d                 ; 3 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  %i.az = fcmp oge double %i.ax, %i.an
  %i.ba = or i1 %i.ay, %i.az
  br i1 %i.ba, label %bb.h, label %linear_rand.exit24, !llvm.loop !4

linear_rand.exit24:                               ; preds = %bb.j
  %i.bb = fptosi double %i.ax to i32              ; 2 uses
  %i.bc = icmp eq i32 %i.bb, %i.ah
  br i1 %i.bc, label %.lr.ph, label %.loopexit, !llvm.loop !5

.loopexit:                                        ; preds = %linear_rand.exit24, %linear_rand.exit22
  %.1 = phi i32 [ %i.ai, %linear_rand.exit22 ], [ %i.bb, %linear_rand.exit24 ]
  %i.bd = load ptr, ptr %3, align 8
  %5 = sext i32 %i.ah to i64
  %i.be = getelementptr inbounds [16 x i8], ptr %i.bd, i64 %5
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  tail call void @geqo_copy(ptr noundef %0, ptr noundef %1, ptr noundef %i.be, i32 noundef %i.bg) #4
  %i.bh = load ptr, ptr %3, align 8
  %6 = sext i32 %.1 to i64
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.bh, i64 %6
  %i.bj = load i32, ptr %i.bf, align 4
  tail call void @geqo_copy(ptr noundef %0, ptr noundef %2, ptr noundef %i.bi, i32 noundef %i.bj) #4
  ret void
}

declare void @geqo_copy(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare double @geqo_rand(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !6}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
end_hunk_0
