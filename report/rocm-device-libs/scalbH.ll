Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocm-device-libs/original/scalbH?download=true
inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-p7:160:256:256:32-p8:128:128:128:48-p9:192:256:256:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7:8:9-p10:32:32-p11:32:32-p12:32:32-p13:32:32-p14:32:32-p15:32:32"
target triple = "amdgpu-amd-amdhsa"

@__oclc_finite_only_opt = external local_unnamed_addr addrspace(4) constant i8, align 1

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden <2 x half> @__ocml_scalb_2f16(<2 x half> noundef %0, <2 x half> noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = extractelement <2 x half> %0, i64 0      ; 4 uses
  %i.b = extractelement <2 x half> %1, i64 0      ; 4 uses
  %i.c = tail call nsz half @llvm.maxnum.f16(half %i.b, half -6.400000e+01)
  %i.d = tail call nsz half @llvm.minnum.f16(half %i.c, half 6.400000e+01) ; 2 uses
  %i.e = tail call half @llvm.floor.f16(half %i.d) ; 2 uses
  %i.f = fsub half %i.d, %i.e                     ; 2 uses
  %i.g = fptosi half %i.e to i32
  %i.h = tail call half @llvm.ldexp.f16.i32(half %i.a, i32 %i.g) ; 2 uses
  %i.i = fcmp oeq half %i.f, 0.000000e+00
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call half @__ocml_exp2_f16(half noundef %i.f) #3
  %i.k = fmul half %i.h, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi half [ %i.k, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.m = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  br i1 %i.n, label %__ocml_scalb_f16.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = fcmp uno half %i.a, %i.b
  %i.p = fcmp oeq half %i.a, 0.000000e+00
  %i.q = fcmp oeq half %i.b, +inf
  %i.r = and i1 %i.p, %i.q
  %i.s = or i1 %i.o, %i.r
  %i.t = tail call half @llvm.fabs.f16(half %i.a)
  %i.u = fcmp oeq half %i.t, +inf
  %i.v = fcmp oeq half %i.b, -inf
  %i.w = and i1 %i.u, %i.v
  %i.x = or i1 %i.w, %i.s
  %i.y = select i1 %i.x, half +qnan, half %i.l
  br label %__ocml_scalb_f16.exit

__ocml_scalb_f16.exit:                            ; preds = %bb.c, %bb.d
  %.0.i = phi half [ %i.l, %bb.c ], [ %i.y, %bb.d ]
  %i.z = extractelement <2 x half> %0, i64 1      ; 4 uses
  %i.aa = extractelement <2 x half> %1, i64 1     ; 3 uses
  %i.ab = tail call nsz half @llvm.maxnum.f16(half %i.aa, half -6.400000e+01)
  %i.ac = tail call nsz half @llvm.minnum.f16(half %i.ab, half 6.400000e+01) ; 2 uses
  %i.ad = tail call half @llvm.floor.f16(half %i.ac) ; 2 uses
  %i.ae = fsub half %i.ac, %i.ad                  ; 2 uses
  %i.af = fptosi half %i.ad to i32
  %i.ag = tail call half @llvm.ldexp.f16.i32(half %i.z, i32 %i.af) ; 2 uses
  %i.ah = fcmp oeq half %i.ae, 0.000000e+00
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %__ocml_scalb_f16.exit
  %i.ai = tail call half @__ocml_exp2_f16(half noundef %i.ae) #3
  %i.aj = fmul half %i.ag, %i.ai
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %__ocml_scalb_f16.exit
  %i.ak = phi half [ %i.aj, %bb.e ], [ %i.ag, %__ocml_scalb_f16.exit ] ; 2 uses
  br i1 %i.n, label %__ocml_scalb_f16.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = fcmp uno half %i.z, %i.aa
  %i.am = fcmp oeq half %i.z, 0.000000e+00
  %i.an = fcmp oeq half %i.aa, +inf
  %i.ao = and i1 %i.am, %i.an
  %i.ap = or i1 %i.al, %i.ao
  %i.aq = tail call half @llvm.fabs.f16(half %i.z)
  %2 = insertelement <2 x half> %1, half %i.aq, i64 0
  %3 = fcmp une <2 x half> %2, <half +inf, half -inf>
  %4 = bitcast <2 x i1> %3 to i2
  %5 = icmp eq i2 %4, 0
  %i.ar = or i1 %5, %i.ap
  %i.as = select i1 %i.ar, half +qnan, half %i.ak
  br label %__ocml_scalb_f16.exit6

__ocml_scalb_f16.exit6:                           ; preds = %bb.f, %bb.g
  %.0.i5 = phi half [ %i.ak, %bb.f ], [ %i.as, %bb.g ]
  %i.at = insertelement <2 x half> poison, half %.0.i, i64 0
  %i.au = insertelement <2 x half> %i.at, half %.0.i5, i64 1
  ret <2 x half> %i.au
}

; Function Attrs: convergent mustprogress nofree norecurse nounwind willreturn denormal_fpenv(dynamic) memory(none) uwtable
define hidden half @__ocml_scalb_f16(half noundef %0, half noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nsz half @llvm.maxnum.f16(half %1, half -6.400000e+01)
  %i.b = tail call nsz half @llvm.minnum.f16(half %i.a, half 6.400000e+01) ; 2 uses
  %i.c = tail call half @llvm.floor.f16(half %i.b) ; 2 uses
  %i.d = fsub half %i.b, %i.c                     ; 2 uses
  %i.e = fptosi half %i.c to i32
  %i.f = tail call half @llvm.ldexp.f16.i32(half %0, i32 %i.e) ; 2 uses
  %i.g = fcmp oeq half %i.d, 0.000000e+00
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call half @__ocml_exp2_f16(half noundef %i.d) #3
  %i.i = fmul half %i.f, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi half [ %i.i, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %i.k = load i8, ptr addrspace(4) @__oclc_finite_only_opt, align 1, !tbaa !10, !range !11, !noundef !12
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = fcmp uno half %0, %1
  %i.n = fcmp oeq half %0, 0.000000e+00
  %i.o = fcmp oeq half %1, +inf
  %i.p = and i1 %i.n, %i.o
  %i.q = or i1 %i.m, %i.p
  %i.r = tail call half @llvm.fabs.f16(half %0)
  %i.s = fcmp oeq half %i.r, +inf
  %i.t = fcmp oeq half %1, -inf
  %i.u = and i1 %i.s, %i.t
  %i.v = or i1 %i.u, %i.q
  %i.w = select i1 %i.v, half +qnan, half %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi half [ %i.j, %bb.c ], [ %i.w, %bb.d ]
  ret half %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.maxnum.f16(half, half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.minnum.f16(half, half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.floor.f16(half) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.ldexp.f16.i32(half, i32) #1

; Function Attrs: convergent mustprogress nofree nounwind willreturn denormal_fpenv(dynamic) memory(none)
declare half @__ocml_exp2_f16(half noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fabs.f16(half) #1

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
!9 = !{!"bool", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{i8 0, i8 2}
!12 = !{}
end_hunk_0
