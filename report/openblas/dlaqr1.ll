Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlaqr1?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @dlaqr1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !8      ; 5 uses
  %narrow = xor i32 %i.a, -1
  %i.b = sext i32 %narrow to i64
  %i.c = getelementptr inbounds [8 x i8], ptr %1, i64 %i.b ; 4 uses
  %i.d = load i32, ptr %0, align 4, !tbaa !8      ; 2 uses
  %i.e = and i32 %i.d, -2
  %switch = icmp eq i32 %i.e, 2
  br i1 %switch, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.d, 2
  %i.g = load double, ptr %1, align 8, !tbaa !10  ; 3 uses
  %i.h = load double, ptr %5, align 8, !tbaa !10
  %i.i = fsub double %i.g, %i.h                   ; 5 uses
  %i.j = fcmp oge double %i.i, 0.000000e+00
  %i.k = fneg double %i.i
  %i.l = select i1 %i.j, double %i.i, double %i.k
  %i.m = load double, ptr %6, align 8, !tbaa !10  ; 4 uses
  %i.n = fcmp ult double %i.m, 0.000000e+00
  %i.o = fneg double %i.m                         ; 2 uses
  %i.p = select i1 %i.n, double %i.o, double %i.m
  %i.q = fadd double %i.l, %i.p
  %i.r = sext i32 %i.a to i64
  %i.s = getelementptr [8 x i8], ptr %i.c, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load double, ptr %i.t, align 8, !tbaa !10 ; 5 uses
  %i.v = fcmp oge double %i.u, 0.000000e+00
  %i.w = fneg double %i.u
  %i.x = select i1 %i.v, double %i.u, double %i.w
  %i.y = fadd double %i.q, %i.x                   ; 5 uses
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.aa = fdiv double %i.u, %i.y                  ; 2 uses
  %i.ab = shl i32 %i.a, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.c, i64 %i.ac ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load double, ptr %i.ae, align 8, !tbaa !10
  %i.ag = load double, ptr %3, align 8, !tbaa !10
  %i.ah = fsub double %i.g, %i.ag
  %i.ai = fdiv double %i.i, %i.y
  %i.aj = fmul double %i.ai, %i.ah
  %i.ak = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.af, double %i.aj)
  %i.al = load double, ptr %4, align 8, !tbaa !10
  %i.am = fdiv double %i.m, %i.y
  %i.an = fneg double %i.al
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.an, double %i.am, double %i.ak)
  store double %i.ao, ptr %7, align 8, !tbaa !10
  %i.ap = load double, ptr %1, align 8, !tbaa !10
  %i.aq = getelementptr i8, ptr %i.ad, i64 16
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !10
  %i.as = fadd double %i.ap, %i.ar
  %i.at = load double, ptr %3, align 8, !tbaa !10
  %i.au = fsub double %i.as, %i.at
  %i.av = load double, ptr %5, align 8, !tbaa !10
  %i.aw = fsub double %i.au, %i.av
  %i.ax = fmul double %i.aa, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ax, ptr %i.ay, align 8, !tbaa !10
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.az = getelementptr i8, ptr %i.s, i64 24
  %i.ba = load double, ptr %i.az, align 8, !tbaa !10 ; 4 uses
  %i.bb = fcmp oge double %i.ba, 0.000000e+00
  %i.bc = fneg double %i.ba
  %i.bd = select i1 %i.bb, double %i.ba, double %i.bc
  %i.be = fadd double %i.y, %i.bd                 ; 5 uses
  %i.bf = fcmp oeq double %i.be, 0.000000e+00
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %8 = fdiv double %i.u, %i.be                    ; 3 uses
  %9 = fdiv double %i.ba, %i.be                   ; 3 uses
  %i.bg = load double, ptr %3, align 8, !tbaa !10
  %i.bh = fsub double %i.g, %i.bg
  %i.bi = fdiv double %i.i, %i.be
  %i.bj = load double, ptr %4, align 8, !tbaa !10
  %i.bk = fdiv double %i.o, %i.be
  %i.bl = fmul double %i.bk, %i.bj
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bi, double %i.bl)
  %i.bn = shl i32 %i.a, 1
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr [8 x i8], ptr %i.c, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %i.br = load double, ptr %i.bq, align 8, !tbaa !10
  %i.bs = tail call double @llvm.fmuladd.f64(double %i.br, double %8, double %i.bm)
  %i.bt = mul nsw i32 %i.a, 3
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr [8 x i8], ptr %i.c, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !10
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double %9, double %i.bs)
  store double %i.by, ptr %7, align 8, !tbaa !10
  %i.bz = load double, ptr %1, align 8, !tbaa !10
  %i.ca = getelementptr i8, ptr %i.bp, i64 16
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !10
  %i.cc = fadd double %i.bz, %i.cb
  %i.cd = load double, ptr %3, align 8, !tbaa !10
  %i.ce = fsub double %i.cc, %i.cd
  %i.cf = load double, ptr %5, align 8, !tbaa !10
  %i.cg = fsub double %i.ce, %i.cf
  %i.ch = getelementptr i8, ptr %i.bv, i64 16
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !10
  %i.cj = fmul double %9, %i.ci
  %i.ck = tail call double @llvm.fmuladd.f64(double %8, double %i.cg, double %i.cj)
  %i.cl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %i.ck, ptr %i.cl, align 8, !tbaa !10
  %i.cm = load double, ptr %1, align 8, !tbaa !10
  %i.cn = getelementptr i8, ptr %i.bv, i64 24
  %i.co = load double, ptr %i.cn, align 8, !tbaa !10
  %i.cp = fadd double %i.cm, %i.co
  %i.cq = load double, ptr %3, align 8, !tbaa !10
  %i.cr = fsub double %i.cp, %i.cq
  %i.cs = load double, ptr %5, align 8, !tbaa !10
  %i.ct = fsub double %i.cr, %i.cs
  %i.cu = getelementptr i8, ptr %i.bp, i64 24
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !10
  %i.cw = fmul double %8, %i.cv
  %i.cx = tail call double @llvm.fmuladd.f64(double %9, double %i.ct, double %i.cw)
  %i.cy = getelementptr inbounds nuw i8, ptr %7, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !10
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.h, %bb.g
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
end_hunk_0
