Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/trigredlargeD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

%struct.redret = type { double, double, i32 }

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden %struct.redret @__ocmlpriv_trigredlarge_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 0) ; 2 uses
  %i.b = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 1) ; 2 uses
  %i.c = fcmp oge double %0, f0x7B00000000000000
  %i.d = fmul double %0, f0x37F0000000000000
  %i.e = select i1 %i.c, double %i.d, double %0   ; 7 uses
  %i.f = fmul double %i.b, %i.e                   ; 4 uses
  %i.g = fmul double %i.a, %i.e                   ; 3 uses
  %i.h = fneg double %i.g
  %i.i = tail call double @llvm.fma.f64(double %i.a, double %i.e, double %i.h) ; 2 uses
  %i.j = fadd double %i.f, %i.i                   ; 4 uses
  %i.k = fadd double %i.g, %i.j                   ; 2 uses
  %i.l = fmul double %i.k, 2.500000e-01           ; 2 uses
  %i.m = tail call double @llvm.floor.f64(double %i.l)
  %i.n = fsub double %i.l, %i.m                   ; 2 uses
  %i.o = fcmp oge double %i.n, f0x3FEFFFFFFFFFFFFF
  %i.p = select i1 %i.o, double f0x3FEFFFFFFFFFFFFF, double %i.n
  %i.q = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = tail call double @llvm.fabs.f64(double %i.e)
  %i.t = fcmp une double %i.s, +inf
  %i.u = or i1 %i.t, %i.r
  %i.v = fsub double %i.j, %i.f                   ; 2 uses
  %i.w = fsub double %i.i, %i.v
  %i.x = fsub double %i.j, %i.v
  %i.y = fsub double %i.f, %i.x
  %i.z = fadd double %i.w, %i.y                   ; 2 uses
  %i.aa = fneg double %i.f
  %i.ab = tail call double @llvm.fma.f64(double %i.b, double %i.e, double %i.aa) ; 2 uses
  %i.ac = tail call double @llvm.amdgcn.trig.preop.f64(double %0, i32 2) ; 2 uses
  %i.ad = fmul double %i.ac, %i.e                 ; 4 uses
  %i.ae = fadd double %i.ad, %i.ab                ; 5 uses
  %i.af = fadd double %i.ae, %i.z                 ; 4 uses
  %i.ag = fsub double %i.k, %i.g
  %i.ah = fsub double %i.ae, %i.ad                ; 2 uses
  %i.ai = fsub double %i.ab, %i.ah
  %i.aj = fsub double %i.ae, %i.ah
  %i.ak = fsub double %i.ad, %i.aj
  %i.al = fadd double %i.ai, %i.ak
  %i.am = fneg double %i.ad
  %i.an = fmul double %i.p, 4.000000e+00
  %i.ao = select i1 %i.u, double %i.an, double 0.000000e+00 ; 2 uses
  %i.ap = fsub double %i.j, %i.ag                 ; 2 uses
  %i.aq = fadd double %i.ap, %i.af                ; 5 uses
  %i.ar = fsub double %i.af, %i.ae                ; 2 uses
  %i.as = fsub double %i.z, %i.ar
  %i.at = tail call double @llvm.fma.f64(double %i.ac, double %i.e, double %i.am)
  %i.au = fadd double %i.aq, %i.ao
  %i.av = fcmp olt double %i.au, 0.000000e+00
  %i.aw = select i1 %i.av, double 4.000000e+00, double 0.000000e+00
  %i.ax = fadd double %i.ao, %i.aw                ; 2 uses
  %i.ay = fadd double %i.aq, %i.ax
  %i.az = fptosi double %i.ay to i32              ; 2 uses
  %i.ba = sitofp i32 %i.az to double
  %i.bb = fsub double %i.ax, %i.ba                ; 2 uses
  %i.bc = fadd double %i.aq, %i.bb                ; 3 uses
  %i.bd = insertelement <4 x double> poison, double %i.af, i64 0
  %i.be = insertelement <4 x double> %i.bd, double %i.aq, i64 1
  %i.bf = insertelement <4 x double> %i.be, double %i.bc, i64 2
  %i.bg = insertelement <4 x double> poison, double %i.ar, i64 0
  %i.bh = insertelement <4 x double> %i.bg, double %i.ap, i64 1
  %i.bi = insertelement <4 x double> %i.bh, double %i.bb, i64 2
  %i.bj = fsub <4 x double> %i.bf, %i.bi
  %i.bk = insertelement <4 x double> poison, double %i.ae, i64 0
  %i.bl = insertelement <4 x double> %i.bk, double %i.af, i64 1
  %i.bm = insertelement <4 x double> %i.bl, double %i.aq, i64 2
  %i.bn = fsub <4 x double> %i.bm, %i.bj          ; 3 uses
  %i.bo = extractelement <4 x double> %i.bn, i64 0
  %i.bp = fadd double %i.as, %i.bo
  %i.bq = fadd double %i.al, %i.bp
  %i.br = fadd double %i.at, %i.bq
  %i.bs = extractelement <4 x double> %i.bn, i64 1
  %i.bt = fadd double %i.bs, %i.br
  %i.bu = extractelement <4 x double> %i.bn, i64 2
  %i.bv = fadd double %i.bt, %i.bu                ; 2 uses
  %i.bw = fcmp oge double %i.bc, 5.000000e-01     ; 2 uses
  %i.bx = zext i1 %i.bw to i32
  %i.by = add nsw i32 %i.bx, %i.az
  %i.bz = select i1 %i.bw, double 1.000000e+00, double 0.000000e+00
  %i.ca = fsub double %i.bc, %i.bz                ; 2 uses
  %i.cb = fadd double %i.ca, %i.bv                ; 4 uses
  %i.cc = fsub double %i.cb, %i.ca
  %i.cd = fsub double %i.bv, %i.cc
  %i.ce = fmul double %i.cb, f0x3FF921FB54442D18  ; 3 uses
  %i.cf = fneg double %i.ce
  %i.cg = tail call double @llvm.fma.f64(double %i.cb, double f0x3FF921FB54442D18, double %i.cf)
  %i.ch = tail call double @llvm.fma.f64(double %i.cb, double f0x3C91A62633145C07, double %i.cg)
  %i.ci = tail call double @llvm.fma.f64(double %i.cd, double f0x3FF921FB54442D18, double %i.ch) ; 2 uses
  %i.cj = fadd double %i.ce, %i.ci                ; 2 uses
  %i.ck = fsub double %i.cj, %i.ce
  %i.cl = fsub double %i.ci, %i.ck
  %i.cm = and i32 %i.by, 3
  %.fca.0.insert = insertvalue %struct.redret poison, double %i.cl, 0
  %.fca.1.insert = insertvalue %struct.redret %.fca.0.insert, double %i.cj, 1
  %.fca.2.insert = insertvalue %struct.redret %.fca.1.insert, i32 %i.cm, 2
  ret %struct.redret %.fca.2.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.trig.preop.f64(double, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

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
