Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/erfcxD?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocmlpriv_erfcx_f64(double noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fadd double %0, -4.000000e+00
  %i.b = fadd double %0, 4.000000e+00             ; 2 uses
  %i.c = tail call double @llvm.amdgcn.rcp.f64(double %i.b) ; 3 uses
  %i.d = fneg double %i.b                         ; 2 uses
  %i.e = tail call double @llvm.fma.f64(double %i.d, double %i.c, double 1.000000e+00)
  %i.f = tail call double @llvm.fma.f64(double %i.e, double %i.c, double %i.c) ; 3 uses
  %i.g = tail call double @llvm.fma.f64(double %i.d, double %i.f, double 1.000000e+00)
  %i.h = tail call double @llvm.fma.f64(double %i.g, double %i.f, double %i.f) ; 2 uses
  %i.i = fmul double %i.a, %i.h                   ; 3 uses
  %i.j = fneg double %i.i
  %i.k = fadd double %i.i, 1.000000e+00
  %i.l = tail call double @llvm.fma.f64(double %i.k, double -4.000000e+00, double %0)
  %i.m = tail call double @llvm.fma.f64(double %i.j, double %0, double %i.l)
  %i.n = tail call double @llvm.fma.f64(double %i.h, double %i.m, double %i.i) ; 21 uses
  %i.o = tail call double @llvm.fma.f64(double %i.n, double f0xBE41F39D54DF3C0E, double f0xBE41166337CFA789)
  %i.p = tail call double @llvm.fma.f64(double %i.n, double %i.o, double f0x3E7B45F1D9802B82)
  %i.q = tail call double @llvm.fma.f64(double %i.n, double %i.p, double f0x3E6D90488A03DCDB)
  %i.r = tail call double @llvm.fma.f64(double %i.n, double %i.q, double f0xBEAB87B02EBA62D8)
  %i.s = tail call double @llvm.fma.f64(double %i.n, double %i.r, double f0x3E95104BA56E15F1)
  %i.t = tail call double @llvm.fma.f64(double %i.n, double %i.s, double f0x3ED7F29F71C907DE)
  %i.u = tail call double @llvm.fma.f64(double %i.n, double %i.t, double f0xBEE78F5C2CD770FB)
  %i.v = tail call double @llvm.fma.f64(double %i.n, double %i.u, double f0xBEF995FB76D0A51A)
  %i.w = tail call double @llvm.fma.f64(double %i.n, double %i.v, double f0x3F23BE2EC022D0ED)
  %i.x = tail call double @llvm.fma.f64(double %i.n, double %i.w, double f0xBF2A1DEB2FDBF62E)
  %i.y = tail call double @llvm.fma.f64(double %i.n, double %i.x, double f0xBF48D4AC3689FC43)
  %i.z = tail call double @llvm.fma.f64(double %i.n, double %i.y, double f0x3F749C67192D909B)
  %i.aa = tail call double @llvm.fma.f64(double %i.n, double %i.z, double f0xBF909623852FF070)
  %i.ab = tail call double @llvm.fma.f64(double %i.n, double %i.aa, double f0x3FA3079EDFADEA8F)
  %i.ac = tail call double @llvm.fma.f64(double %i.n, double %i.ab, double f0xBFB0FB06DFF65910)
  %i.ad = tail call double @llvm.fma.f64(double %i.n, double %i.ac, double f0x3FB7FEE004DE8F32)
  %i.ae = tail call double @llvm.fma.f64(double %i.n, double %i.ad, double f0xBFB9DDB23C3DBEB3)
  %i.af = tail call double @llvm.fma.f64(double %i.n, double %i.ae, double f0x3FB16ECEFCFA6930)
  %i.ag = tail call double @llvm.fma.f64(double %i.n, double %i.af, double f0x3F8F7F5DF66FB8A3)
  %i.ah = tail call double @llvm.fma.f64(double %i.n, double %i.ag, double f0xBFC1DF1AD154A2A8)
  %i.ai = tail call double @llvm.fma.f64(double %i.n, double %i.ah, double f0x3FCDD2C8B74FEBF8) ; 2 uses
  %i.aj = fadd double %0, %0                      ; 2 uses
  %i.ak = fadd double %i.aj, 1.000000e+00         ; 2 uses
  %i.al = tail call double @llvm.amdgcn.rcp.f64(double %i.ak) ; 3 uses
  %i.am = fneg double %i.ak                       ; 2 uses
  %i.an = tail call double @llvm.fma.f64(double %i.am, double %i.al, double 1.000000e+00)
  %i.ao = tail call double @llvm.fma.f64(double %i.an, double %i.al, double %i.al) ; 3 uses
  %i.ap = tail call double @llvm.fma.f64(double %i.am, double %i.ao, double 1.000000e+00)
  %i.aq = tail call double @llvm.fma.f64(double %i.ap, double %i.ao, double %i.ao) ; 3 uses
  %i.ar = tail call double @llvm.fma.f64(double %i.ai, double %i.aq, double %i.aq) ; 3 uses
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.fma.f64(double %i.as, double %i.aj, double 1.000000e+00)
  %i.au = fsub double %i.ai, %i.ar
  %i.av = fadd double %i.at, %i.au
  %i.aw = tail call double @llvm.fma.f64(double %i.aq, double %i.av, double %i.ar)
  ret double %i.aw
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.amdgcn.rcp.f64(double) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fma.f64(double, double, double) #1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden double @__ocml_erfcx_f64(double noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call double @llvm.fabs.f64(double %0) ; 8 uses
  %i.b = fcmp olt double %i.a, f0x403B39DC41E48BFC
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = fadd nnan double %i.a, -4.000000e+00
  %i.d = fadd double %i.a, 4.000000e+00           ; 2 uses
  %i.e = tail call double @llvm.amdgcn.rcp.f64(double %i.d) ; 3 uses
  %i.f = fneg double %i.d                         ; 2 uses
  %i.g = tail call double @llvm.fma.f64(double %i.f, double %i.e, double 1.000000e+00)
  %i.h = tail call double @llvm.fma.f64(double %i.g, double %i.e, double %i.e) ; 3 uses
  %i.i = tail call double @llvm.fma.f64(double %i.f, double %i.h, double 1.000000e+00)
  %i.j = tail call double @llvm.fma.f64(double %i.i, double %i.h, double %i.h) ; 2 uses
  %i.k = fmul double %i.c, %i.j                   ; 3 uses
  %i.l = fneg double %i.k
  %i.m = fadd double %i.k, 1.000000e+00
  %i.n = tail call double @llvm.fma.f64(double %i.m, double -4.000000e+00, double %i.a)
  %i.o = tail call double @llvm.fma.f64(double %i.l, double %i.a, double %i.n)
  %i.p = tail call double @llvm.fma.f64(double %i.j, double %i.o, double %i.k) ; 21 uses
  %i.q = tail call double @llvm.fma.f64(double %i.p, double f0xBE41F39D54DF3C0E, double f0xBE41166337CFA789)
  %i.r = tail call double @llvm.fma.f64(double %i.p, double %i.q, double f0x3E7B45F1D9802B82)
  %i.s = tail call double @llvm.fma.f64(double %i.p, double %i.r, double f0x3E6D90488A03DCDB)
  %i.t = tail call double @llvm.fma.f64(double %i.p, double %i.s, double f0xBEAB87B02EBA62D8)
  %i.u = tail call double @llvm.fma.f64(double %i.p, double %i.t, double f0x3E95104BA56E15F1)
  %i.v = tail call double @llvm.fma.f64(double %i.p, double %i.u, double f0x3ED7F29F71C907DE)
  %i.w = tail call double @llvm.fma.f64(double %i.p, double %i.v, double f0xBEE78F5C2CD770FB)
  %i.x = tail call double @llvm.fma.f64(double %i.p, double %i.w, double f0xBEF995FB76D0A51A)
  %i.y = tail call double @llvm.fma.f64(double %i.p, double %i.x, double f0x3F23BE2EC022D0ED)
  %i.z = tail call double @llvm.fma.f64(double %i.p, double %i.y, double f0xBF2A1DEB2FDBF62E)
  %i.aa = tail call double @llvm.fma.f64(double %i.p, double %i.z, double f0xBF48D4AC3689FC43)
  %i.ab = tail call double @llvm.fma.f64(double %i.p, double %i.aa, double f0x3F749C67192D909B)
  %i.ac = tail call double @llvm.fma.f64(double %i.p, double %i.ab, double f0xBF909623852FF070)
  %i.ad = tail call double @llvm.fma.f64(double %i.p, double %i.ac, double f0x3FA3079EDFADEA8F)
  %i.ae = tail call double @llvm.fma.f64(double %i.p, double %i.ad, double f0xBFB0FB06DFF65910)
  %i.af = tail call double @llvm.fma.f64(double %i.p, double %i.ae, double f0x3FB7FEE004DE8F32)
  %i.ag = tail call double @llvm.fma.f64(double %i.p, double %i.af, double f0xBFB9DDB23C3DBEB3)
  %i.ah = tail call double @llvm.fma.f64(double %i.p, double %i.ag, double f0x3FB16ECEFCFA6930)
  %i.ai = tail call double @llvm.fma.f64(double %i.p, double %i.ah, double f0x3F8F7F5DF66FB8A3)
  %i.aj = tail call double @llvm.fma.f64(double %i.p, double %i.ai, double f0xBFC1DF1AD154A2A8)
  %i.ak = tail call double @llvm.fma.f64(double %i.p, double %i.aj, double f0x3FCDD2C8B74FEBF8) ; 2 uses
  %i.al = fadd double %i.a, %i.a                  ; 2 uses
  %i.am = fadd double %i.al, 1.000000e+00         ; 2 uses
  %i.an = tail call double @llvm.amdgcn.rcp.f64(double %i.am) ; 3 uses
  %i.ao = fneg double %i.am                       ; 2 uses
  %i.ap = tail call double @llvm.fma.f64(double %i.ao, double %i.an, double 1.000000e+00)
  %i.aq = tail call double @llvm.fma.f64(double %i.ap, double %i.an, double %i.an) ; 3 uses
  %i.ar = tail call double @llvm.fma.f64(double %i.ao, double %i.aq, double 1.000000e+00)
  %i.as = tail call double @llvm.fma.f64(double %i.ar, double %i.aq, double %i.aq) ; 3 uses
  %i.at = tail call double @llvm.fma.f64(double %i.ak, double %i.as, double %i.as) ; 3 uses
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fma.f64(double %i.au, double %i.al, double 1.000000e+00)
  %i.aw = fsub double %i.ak, %i.at
  %i.ax = fadd double %i.av, %i.aw
  %i.ay = tail call double @llvm.fma.f64(double %i.as, double %i.ax, double %i.at)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.az = fdiv double 1.000000e+00, %i.a          ; 3 uses
  %i.ba = fmul double %i.az, %i.az                ; 6 uses
  %i.bb = tail call double @llvm.fma.f64(double %i.ba, double f0x40644D8000000000, double f0xC03D880000000000)
  %i.bc = tail call double @llvm.fma.f64(double %i.ba, double %i.bb, double 6.562500e+00)
  %i.bd = tail call double @llvm.fma.f64(double %i.ba, double %i.bc, double -1.875000e+00)
  %i.be = tail call double @llvm.fma.f64(double %i.ba, double %i.bd, double 7.500000e-01)
  %i.bf = tail call double @llvm.fma.f64(double %i.ba, double %i.be, double -5.000000e-01)
  %i.bg = tail call double @llvm.fma.f64(double %i.ba, double %i.bf, double 1.000000e+00)
  %i.bh = fmul double %i.az, f0x3FE20DD750429B6D
  %i.bi = fmul double %i.bh, %i.bg
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi double [ %i.ay, %bb.b ], [ %i.bi, %bb.c ] ; 2 uses
  %i.bj = fcmp olt double %0, 0.000000e+00
  br i1 %i.bj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bk = fmul double %0, %0                      ; 2 uses
  %i.bl = fneg double %i.bk
  %i.bm = tail call double @llvm.fma.f64(double %0, double %0, double %i.bl)
  %i.bn = tail call double @__ocml_exp_f64(double noundef %i.bk) #4 ; 2 uses
  %i.bo = tail call double @llvm.fma.f64(double %i.bn, double %i.bm, double %i.bn)
  %i.bp = fneg double %.0
  %i.bq = tail call double @llvm.fma.f64(double %i.bo, double 2.000000e+00, double %i.bp)
  %i.br = fcmp olt double %0, f0xC03AA0F4D2E063CE
  %i.bs = select i1 %i.br, double +inf, double %i.bq
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi double [ %i.bs, %bb.e ], [ %.0, %bb.d ]
  ret double %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare double @__ocml_exp_f64(double noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "amdgpu-no-cluster-id-x" "amdgpu-no-cluster-id-y" "amdgpu-no-cluster-id-z" "amdgpu-no-completion-action" "amdgpu-no-default-queue" "amdgpu-no-dispatch-id" "amdgpu-no-dispatch-ptr" "amdgpu-no-flat-scratch-init" "amdgpu-no-heap-ptr" "amdgpu-no-hostcall-ptr" "amdgpu-no-implicitarg-ptr" "amdgpu-no-lds-kernel-id" "amdgpu-no-multigrid-sync-arg" "amdgpu-no-queue-ptr" "amdgpu-no-workgroup-id-x" "amdgpu-no-workgroup-id-y" "amdgpu-no-workgroup-id-z" "amdgpu-no-workitem-id-x" "amdgpu-no-workitem-id-y" "amdgpu-no-workitem-id-z" "amdgpu-no-wwm" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { convergent nounwind willreturn memory(none) }

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
end_hunk_0
