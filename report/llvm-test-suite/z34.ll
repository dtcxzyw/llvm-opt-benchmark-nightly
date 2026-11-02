Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z34?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define dso_local void @RotateSize(ptr nofree noundef writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %sincos.sin = alloca double, align 8            ; 8 uses
  %sincos.cos = alloca double, align 8            ; 8 uses
  %i.a = sitofp i32 %5 to double
  %i.b = fmul nnan double %i.a, 2.000000e+00
  %i.c = fmul nnan double %i.b, f0x400921FB54442D18
  %i.d = fdiv double %i.c, 4.608000e+04           ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = sitofp i32 %i.g to float
  %i.i = fpext float %i.h to double               ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.k = load i32, ptr %i.j, align 4, !tbaa !8    ; 3 uses
  %i.l = sitofp i32 %i.k to float
  %i.m = fpext float %i.l to double               ; 6 uses
  %i.n = load i32, ptr %i.e, align 8, !tbaa !8    ; 2 uses
  %i.o = sitofp i32 %i.n to float
  %i.p = fneg float %i.o
  %i.q = fpext float %i.p to double               ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 60
  %i.s = load i32, ptr %i.r, align 4, !tbaa !8    ; 3 uses
  %i.t = sitofp i32 %i.s to float
  %i.u = fneg float %i.t
  %i.v = fpext float %i.u to double               ; 6 uses
  %i.w = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.x = icmp eq i32 %i.k, 0
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = tail call double @atan2(double noundef %i.m, double noundef %i.i) #4, !tbaa !7
  %i.z = fmul nnan double %i.m, %i.m
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.z)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.aa)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.8.0 = phi double [ %sqrt, %bb.b ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi double [ %i.y, %bb.b ], [ 0.000000e+00, %bb.a ]
  %i.ab = fadd double %i.d, %.sroa.0.0
  call void @sincos(double %i.ab, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load double, ptr %sincos.sin, align 8
  %cos = load double, ptr %sincos.cos, align 8
  %i.ac = icmp eq i32 %i.n, 0                     ; 2 uses
  %i.ad = icmp eq i32 %i.k, 0
  %or.cond62 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond62, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %6 = call double @atan2(double noundef %i.m, double noundef %i.q) #4, !tbaa !7
  %i.ae = fmul nnan double %i.m, %i.m
  %7 = call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.ae)
  %sqrt.1 = call double @llvm.sqrt.f64(double %7)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sroa.8.0.1 = phi double [ %sqrt.1, %bb.d ], [ 0.000000e+00, %bb.c ] ; 2 uses
  %.sroa.0.0.1 = phi double [ %6, %bb.d ], [ 0.000000e+00, %bb.c ]
  %i.af = fadd double %i.d, %.sroa.0.0.1
  call void @sincos(double %i.af, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.1 = load double, ptr %sincos.sin, align 8
  %cos.1 = load double, ptr %sincos.cos, align 8
  %i.ag = icmp eq i32 %i.s, 0
  %or.cond63 = select i1 %i.ac, i1 %i.ag, i1 false
  br i1 %or.cond63, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %8 = call double @atan2(double noundef %i.v, double noundef %i.q) #4, !tbaa !7
  %i.ah = fmul nnan double %i.v, %i.v
  %9 = call double @llvm.fmuladd.f64(double %i.q, double %i.q, double %i.ah)
  %sqrt.2 = call double @llvm.sqrt.f64(double %9)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.8.0.2 = phi double [ %sqrt.2, %bb.f ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.sroa.0.0.2 = phi double [ %8, %bb.f ], [ 0.000000e+00, %bb.e ]
  %i.ai = fadd double %i.d, %.sroa.0.0.2
  call void @sincos(double %i.ai, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.2 = load double, ptr %sincos.sin, align 8
  %cos.2 = load double, ptr %sincos.cos, align 8
  %i.aj = icmp eq i32 %i.s, 0
  %or.cond64 = select i1 %i.w, i1 %i.aj, i1 false
  br i1 %or.cond64, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %10 = call double @atan2(double noundef %i.v, double noundef %i.i) #4, !tbaa !7
  %i.ak = fmul nnan double %i.v, %i.v
  %11 = call double @llvm.fmuladd.f64(double %i.i, double %i.i, double %i.ak)
  %sqrt.3 = call double @llvm.sqrt.f64(double %11)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.8.0.3 = phi double [ %sqrt.3, %bb.h ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.sroa.0.0.3 = phi double [ %10, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.al = fmul double %.sroa.8.0, %sin            ; 4 uses
  %i.am = fcmp ogt double %i.al, f0x415FFFFFC0000000
  %i.an = select i1 %i.am, double f0x415FFFFFC0000000, double %i.al ; 2 uses
  %i.ao = fmul double %.sroa.8.0.1, %sin.1        ; 4 uses
  %i.ap = fcmp olt double %i.an, %i.ao
  %i.aq = select i1 %i.ap, double %i.an, double %i.ao ; 2 uses
  %i.ar = fmul double %.sroa.8.0.2, %sin.2        ; 4 uses
  %i.as = fcmp olt double %i.aq, %i.ar
  %i.at = select i1 %i.as, double %i.aq, double %i.ar ; 2 uses
  %i.au = fcmp ogt double %i.al, f0xC15FFFFFC0000000
  %i.av = select i1 %i.au, double %i.al, double f0xC15FFFFFC0000000 ; 2 uses
  %i.aw = fcmp olt double %i.av, %i.ao
  %i.ax = select i1 %i.aw, double %i.ao, double %i.av ; 2 uses
  %i.ay = fcmp olt double %i.ax, %i.ar
  %i.az = select i1 %i.ay, double %i.ar, double %i.ax ; 2 uses
  %i.ba = fmul double %.sroa.8.0, %cos            ; 4 uses
  %i.bb = fcmp ogt double %i.ba, f0x415FFFFFC0000000
  %i.bc = select i1 %i.bb, double f0x415FFFFFC0000000, double %i.ba ; 2 uses
  %i.bd = fmul double %.sroa.8.0.1, %cos.1        ; 4 uses
  %i.be = fcmp olt double %i.bc, %i.bd
  %i.bf = select i1 %i.be, double %i.bc, double %i.bd ; 2 uses
  %i.bg = fmul double %.sroa.8.0.2, %cos.2        ; 4 uses
  %i.bh = fcmp olt double %i.bf, %i.bg
  %i.bi = select i1 %i.bh, double %i.bf, double %i.bg ; 2 uses
  %i.bj = fcmp ogt double %i.ba, f0xC15FFFFFC0000000
  %i.bk = select i1 %i.bj, double %i.ba, double f0xC15FFFFFC0000000 ; 2 uses
  %i.bl = fcmp olt double %i.bk, %i.bd
  %i.bm = select i1 %i.bl, double %i.bd, double %i.bk ; 2 uses
  %i.bn = fcmp olt double %i.bm, %i.bg
  %i.bo = select i1 %i.bn, double %i.bg, double %i.bm ; 2 uses
  %i.bp = fadd double %i.d, %.sroa.0.0.3
  call void @sincos(double %i.bp, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin.3 = load double, ptr %sincos.sin, align 8
  %cos.3 = load double, ptr %sincos.cos, align 8
  %12 = fmul double %.sroa.8.0.3, %cos.3          ; 4 uses
  %i.bq = fmul double %.sroa.8.0.3, %sin.3        ; 4 uses
  %i.br = fcmp olt double %i.bo, %12
  %i.bs = select i1 %i.br, double %12, double %i.bo
  %i.bt = fcmp olt double %i.bi, %12
  %i.bu = select i1 %i.bt, double %i.bi, double %12
  %i.bv = fcmp olt double %i.az, %i.bq
  %i.bw = select i1 %i.bv, double %i.bq, double %i.az
  %i.bx = fcmp olt double %i.at, %i.bq
  %i.by = select i1 %i.bx, double %i.at, double %i.bq
  %i.bz = fptosi double %i.bu to i32
  %i.ca = sub nsw i32 0, %i.bz
  store i32 %i.ca, ptr %0, align 4, !tbaa !7
  %i.cb = fptosi double %i.bs to i32
  store i32 %i.cb, ptr %1, align 4, !tbaa !7
  %i.cc = fptosi double %i.bw to i32
  store i32 %i.cc, ptr %2, align 4, !tbaa !7
  %i.cd = fptosi double %i.by to i32
  %i.ce = sub nsw i32 0, %i.cd
  store i32 %i.ce, ptr %3, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincos(double noundef, ptr, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!8 = !{!5, !5, i64 0}
end_hunk_0
