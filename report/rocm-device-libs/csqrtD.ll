Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/csqrtD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x double> @__ocml_csqrt_f64(<2 x double> noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x double> %0, i64 0    ; 4 uses
  %i.b = tail call double @llvm.fabs.f64(double %i.a) ; 3 uses
  %i.c = extractelement <2 x double> %0, i64 1    ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c) ; 5 uses
  %i.e = tail call nsz double @llvm.maxnum.f64(double %i.b, double %i.d)
  %i.f = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = fcmp ord double %i.b, %i.d
  %i.i = or i1 %i.h, %i.g
  %.0111 = select i1 %i.i, double %i.e, double +qnan ; 6 uses
  %i.j = tail call { double, i32 } @llvm.frexp.f64.i32(double %.0111)
  %i.k = extractvalue { double, i32 } %i.j, 1     ; 3 uses
  %i.l = sub nsw i32 0, %i.k                      ; 2 uses
  %i.m = tail call double @llvm.ldexp.f64.i32(double %i.b, i32 %i.l) ; 3 uses
  %i.n = tail call double @llvm.ldexp.f64.i32(double %i.d, i32 %i.l) ; 2 uses
  %i.o = tail call i1 @llvm.is.fpclass.f64(double %.0111, /* (nan pinf pzero) */ i32 579) ; 2 uses
  %i.p = fmul double %i.n, %i.n
  %i.q = tail call double @llvm.fma.f64(double %i.m, double %i.m, double %i.p) ; 5 uses
  %i.r = tail call double @llvm.amdgcn.rsq.f64(double %i.q) ; 2 uses
  %i.s = fmul double %i.q, %i.r                   ; 3 uses
  %i.t = fmul double %i.r, 5.000000e-01           ; 3 uses
  %i.u = fneg double %i.t
  %i.v = tail call double @llvm.fma.f64(double %i.u, double %i.s, double 5.000000e-01) ; 2 uses
  %i.w = tail call double @llvm.fma.f64(double %i.t, double %i.v, double %i.t)
  %i.x = tail call double @llvm.fma.f64(double %i.s, double %i.v, double %i.s) ; 3 uses
  %i.y = fneg double %i.x
  %i.z = tail call double @llvm.fma.f64(double %i.y, double %i.x, double %i.q)
  %i.aa = tail call double @llvm.fma.f64(double %i.z, double %i.w, double %i.x)
  %i.ab = fcmp oeq double %i.q, 0.000000e+00
  %i.ac = select i1 %i.ab, double %i.q, double %i.aa
  %i.ad = select i1 %i.o, double %.0111, double %i.ac
  %i.ae = and i32 %i.k, 1
  %i.af = xor i32 %i.ae, 1                        ; 2 uses
  %i.ag = fadd double %i.m, %i.ad
  %i.ah = tail call double @llvm.ldexp.f64.i32(double %i.ag, i32 %i.af) ; 5 uses
  %i.ai = tail call double @llvm.amdgcn.rsq.f64(double %i.ah) ; 2 uses
  %i.aj = fmul double %i.ah, %i.ai                ; 3 uses
  %i.ak = fmul double %i.ai, 5.000000e-01         ; 3 uses
  %i.al = fneg double %i.ak
  %i.am = tail call double @llvm.fma.f64(double %i.al, double %i.aj, double 5.000000e-01) ; 2 uses
  %i.an = tail call double @llvm.fma.f64(double %i.ak, double %i.am, double %i.ak)
  %i.ao = tail call double @llvm.fma.f64(double %i.aj, double %i.am, double %i.aj) ; 3 uses
  %i.ap = fneg double %i.ao
  %i.aq = tail call double @llvm.fma.f64(double %i.ap, double %i.ao, double %i.ah)
  %i.ar = tail call double @llvm.fma.f64(double %i.aq, double %i.an, double %i.ao)
  %i.as = fcmp oeq double %i.ah, 0.000000e+00
  %i.at = select i1 %i.as, double %i.ah, double %i.ar
  %i.au = ashr i32 %i.k, 1
  %i.av = sub nsw i32 %i.au, %i.af
  %i.aw = tail call double @llvm.ldexp.f64.i32(double %i.at, i32 %i.av)
  %i.ax = select i1 %i.o, double %.0111, double %i.aw ; 3 uses
  %i.ay = fdiv double %i.d, %i.ax
  %i.az = fmul double %i.ay, 5.000000e-01
  %i.ba = fcmp oeq double %.0111, 0.000000e+00
  %i.bb = select i1 %i.ba, double %.0111, double %i.az ; 2 uses
  %i.bc = fcmp olt double %i.a, 0.000000e+00      ; 2 uses
  %i.bd = select i1 %i.bc, double %i.bb, double %i.ax ; 2 uses
  %i.be = select i1 %i.bc, double %i.ax, double %i.bb ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = fcmp oeq double %i.d, +inf              ; 2 uses
  %i.bg = fcmp oeq double %i.a, -inf
  %i.bh = or i1 %i.bg, %i.bf
  %i.bi = select i1 %i.bh, double +inf, double %i.be
  %i.bj = fcmp oeq double %i.a, +inf
  %i.bk = or i1 %i.bj, %i.bf
  %i.bl = select i1 %i.bk, double +inf, double %i.bd
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0110 = phi double [ %i.bd, %bb.a ], [ %i.bl, %bb.b ]
  %.0 = phi double [ %i.be, %bb.a ], [ %i.bi, %bb.b ]
  %i.bm = insertelement <2 x double> poison, double %.0110, i64 0
  %i.bn = tail call double @llvm.copysign.f64(double %.0, double %i.c)
  %i.bo = insertelement <2 x double> %i.bm, double %i.bn, i64 1
  ret <2 x double> %i.bo
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.maxnum.f64(double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { double, i32 } @llvm.frexp.f64.i32(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ldexp.f64.i32(double, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.rsq.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.copysign.f64(double, double) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!opencl.ocl.version = !{!0}
!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 2, i32 0}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260908082138+de2a0dd540f7-1~exp1~20260908202305.1836)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
