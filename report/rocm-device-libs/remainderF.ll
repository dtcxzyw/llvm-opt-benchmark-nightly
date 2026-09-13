Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/remainderF?download=true
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1
@__oclc_ISA_version = external local_unnamed_addr addrspace(4) constant i32, align 4

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden float @__ocml_remainder_f32(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call float @llvm.fabs.f32(float %0) ; 6 uses
  %i.b = tail call float @llvm.fabs.f32(float %1) ; 6 uses
  %i.c = fcmp ogt float %i.a, %i.b
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.a) ; 2 uses
  %i.e = extractvalue { float, i32 } %i.d, 1
  %i.f = extractvalue { float, i32 } %i.d, 0
  %i.g = tail call { float, i32 } @llvm.frexp.f32.i32(float %i.b) ; 2 uses
  %i.h = extractvalue { float, i32 } %i.g, 1      ; 2 uses
  %i.i = extractvalue { float, i32 } %i.g, 0
  %i.j = add nsw i32 %i.h, -1
  %i.k = fmul float %i.i, 2.000000e+00            ; 14 uses
  %i.l = sub i32 %i.e, %i.h                       ; 3 uses
  %i.m = tail call float @llvm.amdgcn.rcp.f32(float %i.k) ; 2 uses
  %.091 = fmul float %i.f, 4.096000e+03           ; 2 uses
  %i.n = icmp sgt i32 %i.l, 12
  %.pre = load i32, ptr addrspace(4) @__oclc_ISA_version, align 4, !tbaa !9
  %.pre96 = freeze i32 %.pre                      ; 4 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.o = icmp sgt i32 %.pre96, 8999
  %i.p = bitcast float %i.k to i32
  %i.q = and i32 %i.p, -4096
  %i.r = bitcast i32 %i.q to float                ; 3 uses
  %i.s = fsub float %i.k, %i.r                    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %fnma.exit
  %.093 = phi float [ %.091, %.lr.ph ], [ %.0, %fnma.exit ] ; 4 uses
  %.08292 = phi i32 [ %i.l, %.lr.ph ], [ %i.ap, %fnma.exit ] ; 2 uses
  %i.t = fmul float %i.m, %.093
  %i.u = tail call float @llvm.rint.f32(float %i.t) ; 4 uses
  br i1 %i.o, label %bb.d, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.c
  switch i32 %.pre96, label %bb.e [
    i32 8001, label %bb.d
    i32 7001, label %bb.d
  ]

bb.d:                                             ; preds = %switch.early.test.i, %switch.early.test.i, %bb.c
  %i.v = fneg float %i.u
  %i.w = tail call float @llvm.fma.f32(float %i.v, float %i.k, float %.093)
  br label %fnma.exit

bb.e:                                             ; preds = %switch.early.test.i
  %i.x = bitcast float %i.u to i32
  %i.y = and i32 %i.x, -4096
  %i.z = bitcast i32 %i.y to float                ; 3 uses
  %i.aa = fsub float %i.u, %i.z                   ; 2 uses
  %i.ab = fmul float %i.k, %i.u                   ; 3 uses
  %i.ac = fneg float %i.ab
  %i.ad = tail call float @__ocml_fmuladd_f32(float noundef %i.z, float noundef %i.r, float noundef %i.ac) #3
  %i.ae = tail call float @__ocml_fmuladd_f32(float noundef %i.z, float noundef %i.s, float noundef %i.ad) #3
  %i.af = tail call float @__ocml_fmuladd_f32(float noundef %i.aa, float noundef %i.r, float noundef %i.ae) #3
  %i.ag = tail call float @__ocml_fmuladd_f32(float noundef %i.aa, float noundef %i.s, float noundef %i.af) #3
  %i.ah = fsub float %.093, %i.ab                 ; 2 uses
  %i.ai = fsub float %.093, %i.ah
  %i.aj = fsub float %i.ai, %i.ab
  %i.ak = fsub float %i.aj, %i.ag
  %i.al = fadd float %i.ah, %i.ak
  br label %fnma.exit

fnma.exit:                                        ; preds = %bb.d, %bb.e
  %.0.i = phi float [ %i.w, %bb.d ], [ %i.al, %bb.e ] ; 3 uses
  %i.am = fcmp olt float %.0.i, 0.000000e+00
  %i.an = fadd float %i.k, %.0.i
  %i.ao = select i1 %i.am, float %i.an, float %.0.i
  %i.ap = add nsw i32 %.08292, -12                ; 2 uses
  %.0 = fmul float %i.ao, 4.096000e+03            ; 2 uses
  %2 = icmp samesign ugt i32 %.08292, 24
  br i1 %2, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %fnma.exit, %bb.b
  %.082.lcssa = phi i32 [ %i.l, %bb.b ], [ %i.ap, %fnma.exit ]
  %.0.lcssa = phi float [ %.091, %bb.b ], [ %.0, %fnma.exit ]
  %i.aq = add nsw i32 %.082.lcssa, -11
  %i.ar = tail call float @llvm.ldexp.f32.i32(float %.0.lcssa, i32 %i.aq) ; 4 uses
  %i.as = fmul float %i.m, %i.ar
  %i.at = tail call float @llvm.rint.f32(float %i.as) ; 5 uses
  %i.au = icmp sgt i32 %.pre96, 8999
  br i1 %i.au, label %bb.f, label %switch.early.test.i88

switch.early.test.i88:                            ; preds = %._crit_edge
  switch i32 %.pre96, label %bb.g [
    i32 8001, label %bb.f
    i32 7001, label %bb.f
  ]

bb.f:                                             ; preds = %switch.early.test.i88, %switch.early.test.i88, %._crit_edge
  %i.av = fneg float %i.at
  %i.aw = tail call float @llvm.fma.f32(float %i.av, float %i.k, float %i.ar)
  br label %fnma.exit90

bb.g:                                             ; preds = %switch.early.test.i88
  %i.ax = bitcast float %i.at to i32
  %i.ay = and i32 %i.ax, -4096
  %i.az = bitcast i32 %i.ay to float              ; 3 uses
  %i.ba = fsub float %i.at, %i.az                 ; 2 uses
  %i.bb = bitcast float %i.k to i32
  %i.bc = and i32 %i.bb, -4096
  %i.bd = bitcast i32 %i.bc to float              ; 3 uses
  %i.be = fsub float %i.k, %i.bd                  ; 2 uses
  %i.bf = fmul float %i.k, %i.at                  ; 3 uses
  %i.bg = fneg float %i.bf
  %i.bh = tail call float @__ocml_fmuladd_f32(float noundef %i.az, float noundef %i.bd, float noundef %i.bg) #3
  %i.bi = tail call float @__ocml_fmuladd_f32(float noundef %i.az, float noundef %i.be, float noundef %i.bh) #3
  %i.bj = tail call float @__ocml_fmuladd_f32(float noundef %i.ba, float noundef %i.bd, float noundef %i.bi) #3
  %i.bk = tail call float @__ocml_fmuladd_f32(float noundef %i.ba, float noundef %i.be, float noundef %i.bj) #3
  %i.bl = fsub float %i.ar, %i.bf                 ; 2 uses
  %i.bm = fsub float %i.ar, %i.bl
  %i.bn = fsub float %i.bm, %i.bf
  %i.bo = fsub float %i.bn, %i.bk
  %i.bp = fadd float %i.bl, %i.bo
  br label %fnma.exit90

fnma.exit90:                                      ; preds = %bb.f, %bb.g
  %.0.i89 = phi float [ %i.aw, %bb.f ], [ %i.bp, %bb.g ] ; 3 uses
  %i.bq = fcmp olt float %.0.i89, 0.000000e+00    ; 2 uses
  %i.br = fadd float %i.k, %.0.i89
  %i.bs = select i1 %i.bq, float %i.br, float %.0.i89 ; 2 uses
  %i.bt = fptosi float %i.at to i32
  %i.bu = fmul float %i.bs, 2.000000e+00          ; 2 uses
  %i.bv = fcmp ogt float %i.bu, %i.k
  %.tr = trunc i32 %i.bt to i1
  %.narrow = xor i1 %i.bq, %.tr
  %i.bw = fcmp oeq float %i.bu, %i.k
  %i.bx = and i1 %.narrow, %i.bw
  %i.by = or i1 %i.bv, %i.bx
  %i.bz = select i1 %i.by, float %i.k, float 0.000000e+00
  %i.ca = fsub float %i.bs, %i.bz
  %i.cb = tail call float @llvm.ldexp.f32.i32(float %i.ca, i32 %i.j)
  %i.cc = bitcast float %0 to i32
  %i.cd = and i32 %i.cc, -2147483648
  %i.ce = bitcast float %i.cb to i32
  %i.cf = xor i32 %i.cd, %i.ce
  %i.cg = bitcast i32 %i.cf to float
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ch = fcmp olt float %i.b, f0x7F000000
  %i.ci = fmul float %i.a, 2.000000e+00
  %i.cj = fcmp ogt float %i.ci, %i.b
  %i.ck = and i1 %i.ch, %i.cj
  %i.cl = fmul float %i.b, 5.000000e-01
  %i.cm = fcmp ogt float %i.a, %i.cl
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = bitcast float %0 to i32
  %i.cp = bitcast float %1 to i32
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = ashr i32 %i.cq, 30
  %i.cs = or i32 %i.cr, 1
  %i.ct = sitofp i32 %i.cs to float
  %i.cu = fneg float %i.ct
  %i.cv = tail call float @__ocml_fmuladd_f32(float noundef %1, float noundef %i.cu, float noundef %0) #3
  %i.cw = tail call float @llvm.canonicalize.f32(float 1.401300e-45)
  %i.cx = tail call i1 @llvm.is.fpclass.f32(float %i.cw, /* (pzero) */ i32 64)
  %i.cy = tail call float @llvm.canonicalize.f32(float %0)
  %i.cz = select i1 %i.cx, float %i.cy, float %0
  %i.da = select i1 %i.cn, float %i.cv, float %i.cz
  %i.db = fcmp oeq float %i.a, %i.b
  %i.dc = tail call float @llvm.copysign.f32(float 0.000000e+00, float %0)
  %i.dd = select i1 %i.db, float %i.dc, float %i.da
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %fnma.exit90
  %.081 = phi float [ %i.cg, %fnma.exit90 ], [ %i.dd, %bb.h ]
  %i.de = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !11, !range !12, !noundef !13
  %i.df = trunc nuw i8 %i.de to i1
  %i.dg = fcmp one float %i.a, +inf
  %i.dh = fcmp one float %1, 0.000000e+00
  %i.di = and i1 %i.dh, %i.dg
  %i.dj = or i1 %i.di, %i.df
  %.1 = select i1 %i.dj, float %.081, float +qnan
  ret float %.1
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ldexp.f32.i32(float, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.amdgcn.rcp.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.rint.f32(float) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare float @__ocml_fmuladd_f32(float noundef, float noundef, float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.canonicalize.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fma.f32(float, float, float) #1

attributes #0 = { convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { convergent nounwind willreturn memory(none) }

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
!9 = !{!6, !6, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
end_hunk_0
