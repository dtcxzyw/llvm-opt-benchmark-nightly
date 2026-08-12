inline.NumInlined: 8
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dt_colorspaces_deltaE_1976(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12
  %i.b = load float, ptr %1, align 4, !tbaa !12
  %i.c = fsub reassoc nsz arcp contract afn float %i.a, %i.b ; 2 uses
  %i.d = fmul reassoc nsz arcp contract afn float %i.c, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load float, ptr %i.g, align 4, !tbaa !12
  %i.i = fsub reassoc nsz arcp contract afn float %i.f, %i.h ; 2 uses
  %i.j = fmul reassoc nsz arcp contract afn float %i.i, %i.i
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = fsub reassoc nsz arcp contract afn float %i.m, %i.o ; 2 uses
  %i.q = fmul reassoc nsz arcp contract afn float %i.p, %i.p
  %i.r = fadd reassoc nsz arcp contract afn float %i.q, %i.k
  %i.s = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.r)
  ret float %i.s
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local float @dt_colorspaces_deltaE_2000(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !12   ; 2 uses
  %i.b = load float, ptr %1, align 4, !tbaa !12   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.d, align 4, !tbaa !12 ; 3 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !12 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn float %i.h, %i.h
  %i.j = fmul reassoc nsz arcp contract afn float %i.g, %i.g ; 2 uses
  %i.k = fadd reassoc nsz arcp contract afn float %i.j, %i.i
  %i.l = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.k)
  %i.m = load float, ptr %i.f, align 4, !tbaa !12 ; 3 uses
  %i.n = load float, ptr %i.e, align 4, !tbaa !12 ; 3 uses
  %i.o = fmul reassoc nsz arcp contract afn float %i.n, %i.n
  %i.p = fmul reassoc nsz arcp contract afn float %i.m, %i.m ; 2 uses
  %i.q = fadd reassoc nsz arcp contract afn float %i.p, %i.o
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.q)
  %i.s = fadd reassoc nsz arcp contract afn float %i.r, %i.l
  %i.t = fmul reassoc nsz arcp contract afn float %i.s, 5.000000e-01
  %i.u = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.t, i32 7) ; 2 uses
  %i.v = fadd reassoc nsz arcp contract afn float %i.u, f0x4FB5E621
  %i.w = fdiv reassoc nsz arcp contract afn float %i.u, %i.v
  %i.x = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.w)
  %i.y = fpext reassoc nsz arcp contract afn float %i.x to double
  %i.z = fmul reassoc nsz arcp contract afn double %i.y, 5.000000e-01
  %i.aa = fsub reassoc nsz arcp contract afn double 5.000000e-01, %i.z
  %i.ab = fptrunc reassoc nsz arcp contract afn double %i.aa to float
  %i.ac = fadd reassoc nsz arcp contract afn float %i.ab, 1.000000e+00 ; 2 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.n ; 3 uses
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, %i.h ; 3 uses
  %i.af = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.m, float %i.ad)
  %i.ag = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.g, float %i.ae)
  %i.ah = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.af, i64 1
  %i.aj = fmul reassoc nsz arcp contract afn <2 x float> %i.ai, splat (float f0x42652EE0) ; 3 uses
  %i.ak = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.aj, zeroinitializer
  %i.al = fadd reassoc nsz arcp contract afn <2 x float> %i.aj, splat (float 3.600000e+02)
  %i.am = select <2 x i1> %i.ak, <2 x float> %i.al, <2 x float> %i.aj ; 2 uses
  %i.an = extractelement <2 x float> %i.am, i64 0 ; 4 uses
  %i.ao = extractelement <2 x float> %i.am, i64 1 ; 4 uses
  %i.ap = fsub reassoc nsz arcp contract afn float %i.an, %i.ao
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ap)
  %i.ar = fcmp reassoc nsz arcp contract afn ogt float %i.aq, 1.800000e+02
  %i.as = fadd reassoc nsz arcp contract afn float %i.an, %i.ao ; 2 uses
  br i1 %i.ar, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = fpext reassoc nsz arcp contract afn float %i.as to double
  %i.au = fmul reassoc nsz arcp contract afn double %i.at, 5.000000e-01
  %i.av = fadd reassoc nsz arcp contract afn double %i.au, 1.800000e+02
  %i.aw = fptrunc reassoc nsz arcp contract afn double %i.av to float
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ax = fmul reassoc nsz arcp contract afn float %i.as, 5.000000e-01
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.092 = phi nsz float [ %i.aw, %bb.b ], [ %i.ax, %bb.c ] ; 5 uses
  %i.ay = fsub reassoc nsz arcp contract afn float %i.ao, %i.an ; 4 uses
  %i.az = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ay)
  %i.ba = fcmp reassoc nsz arcp contract afn ogt float %i.az, 1.800000e+02
  br i1 %i.ba, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bb = fcmp reassoc nsz arcp contract afn ugt float %i.ao, %i.an
  br i1 %i.bb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = fadd reassoc nnan nsz arcp contract afn float %i.ay, 3.600000e+02
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bd = fadd reassoc nnan nsz arcp contract afn float %i.ay, -3.600000e+02
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d
  %.093 = phi nsz float [ %i.bc, %bb.f ], [ %i.bd, %bb.g ], [ %i.ay, %bb.d ]
  %i.be = fmul reassoc nsz arcp contract afn float %.092, f0x3D8EFA36
  %i.bf = fadd reassoc nsz arcp contract afn float %i.be, f0xBF8CBE4D
  %i.bg = fmul reassoc nsz arcp contract afn float %.092, f0x3D567751
  %i.bh = fadd reassoc nsz arcp contract afn float %i.bg, f0x3DD67751
  %i.bi = fmul reassoc nsz arcp contract afn float %.092, f0x3D0EFA36
  %i.bj = fmul reassoc nsz arcp contract afn float %.092, f0x3C8EFA36
  %i.bk = fadd reassoc nsz arcp contract afn float %i.bj, f0xBF060A93
  %i.bl = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.bh)
  %i.bm = fpext reassoc ninf nsz arcp contract afn float %i.bl to double
  %i.bn = fmul reassoc nsz arcp contract afn double %i.bm, 3.200000e-01
  %i.bo = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.bk)
  %.neg = fmul reassoc nsz arcp contract afn float %i.bo, -1.700000e-01
  %i.bp = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.bi)
  %i.bq = fmul reassoc nsz arcp contract afn float %i.bp, 2.400000e-01
  %i.br = fadd reassoc nsz arcp contract afn float %i.bq, 1.000000e+00
  %i.bs = fadd reassoc nsz arcp contract afn float %i.br, %.neg
  %i.bt = fpext reassoc nsz arcp contract afn float %i.bs to double
  %2 = fadd reassoc nsz arcp contract afn double %i.bn, %i.bt
  %i.bu = tail call reassoc nsz arcp contract afn float @llvm.cos.f32(float %i.bf)
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 2.000000e-01
  %i.bw = fpext reassoc nsz arcp contract afn float %i.bv to double
  %i.bx = fsub reassoc nsz arcp contract afn double %2, %i.bw
  %i.by = fptrunc reassoc nsz arcp contract afn double %i.bx to float
  %i.bz = fmul reassoc nsz arcp contract afn float %i.ae, %i.ae
  %i.ca = fadd reassoc nsz arcp contract afn float %i.bz, %i.j
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ca) ; 3 uses
  %i.cc = fmul reassoc nsz arcp contract afn float %i.ad, %i.ad
  %i.cd = fadd reassoc nsz arcp contract afn float %i.cc, %i.p
  %i.ce = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cd) ; 3 uses
  %i.cf = fadd reassoc nsz arcp contract afn float %i.cb, %i.ce
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cf, 5.000000e-01 ; 2 uses
  %i.ch = fadd reassoc nsz arcp contract afn float %i.b, %i.a
  %i.ci = fmul reassoc nsz arcp contract afn float %i.ch, 5.000000e-01
  %i.cj = fsub reassoc nsz arcp contract afn float %i.b, %i.a
  %i.ck = fsub reassoc nsz arcp contract afn float %i.ce, %i.cb
  %i.cl = fmul reassoc nsz arcp contract afn float %i.cb, %i.ce
  %i.cm = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cl)
  %i.cn = fpext reassoc nsz arcp contract afn float %i.cm to double
  %i.co = fmul reassoc nsz arcp contract afn double %i.cn, 2.000000e+00
  %i.cp = fmul reassoc nsz arcp contract afn float %.093, f0x3C0EFA36
  %i.cq = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.cp)
  %i.cr = fpext reassoc ninf nsz arcp contract afn float %i.cq to double
  %i.cs = fmul reassoc nsz arcp contract afn double %i.co, %i.cr
  %i.ct = fptrunc reassoc nsz arcp contract afn double %i.cs to float
  %i.cu = fpext reassoc nsz arcp contract afn float %i.ci to double
  %i.cv = fadd reassoc nsz arcp contract afn double %i.cu, -5.000000e+01 ; 2 uses
  %i.cw = fmul reassoc nsz arcp contract afn double %i.cv, %i.cv ; 2 uses
  %i.cx = fmul reassoc nsz arcp contract afn double %i.cw, 1.500000e-02
  %i.cy = fadd reassoc nsz arcp contract afn double %i.cw, 2.000000e+01
  %i.cz = fptrunc reassoc nsz arcp contract afn double %i.cy to float
  %i.da = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.cz)
  %i.db = fpext reassoc nsz arcp contract afn float %i.da to double
  %i.dc = fdiv reassoc nsz arcp contract afn double %i.cx, %i.db
  %i.dd = fadd reassoc nsz arcp contract afn double %i.dc, 1.000000e+00
  %i.de = fptrunc reassoc nsz arcp contract afn double %i.dd to float
  %i.df = fpext reassoc nsz arcp contract afn float %i.cg to double ; 2 uses
  %i.dg = fmul reassoc nsz arcp contract afn double %i.df, 4.500000e-02
  %i.dh = fadd reassoc nsz arcp contract afn double %i.dg, 1.000000e+00
  %i.di = fptrunc reassoc nsz arcp contract afn double %i.dh to float
  %i.dj = fmul reassoc nsz arcp contract afn double %i.df, 1.500000e-02
  %i.dk = fpext reassoc nsz arcp contract afn float %i.by to double
  %i.dl = fmul reassoc nsz arcp contract afn double %i.dj, %i.dk
  %i.dm = fadd reassoc nsz arcp contract afn double %i.dl, 1.000000e+00
  %i.dn = fptrunc reassoc nsz arcp contract afn double %i.dm to float
  %i.do = fpext reassoc nsz arcp contract afn float %.092 to double
  %i.dp = fmul reassoc nsz arcp contract afn double %i.do, 4.000000e-02
  %i.dq = fadd reassoc nsz arcp contract afn double %i.dp, -1.100000e+01 ; 2 uses
  %i.dr = fneg reassoc nsz arcp contract afn double %i.dq
  %i.ds = fmul reassoc nsz arcp contract afn double %i.dq, %i.dr
  %i.dt = fptrunc reassoc nsz arcp contract afn double %i.ds to float
  %i.du = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.dt)
  %i.dv = tail call reassoc nsz arcp contract afn float @llvm.powi.f32.i32(float %i.cg, i32 7) ; 2 uses
  %i.dw = fadd reassoc nsz arcp contract afn float %i.dv, f0x4FB5E621
  %i.dx = fdiv reassoc nsz arcp contract afn float %i.dv, %i.dw
  %i.dy = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.dx)
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, 2.000000e+00
  %i.ea = fpext reassoc nsz arcp contract afn float %i.dz to double
  %i.eb = fneg reassoc nsz arcp contract afn double %i.ea
  %i.ec = fmul reassoc nsz arcp contract afn float %i.du, f0x3F860A93
  %i.ed = tail call reassoc nsz arcp contract afn float @llvm.sin.f32(float %i.ec)
  %i.ee = fpext reassoc ninf nsz arcp contract afn float %i.ed to double
  %i.ef = fmul reassoc nsz arcp contract afn double %i.eb, %i.ee
  %i.eg = fptrunc reassoc nsz arcp contract afn double %i.ef to float
  %i.eh = fdiv reassoc nsz arcp contract afn float %i.cj, %i.de ; 2 uses
  %i.ei = fmul reassoc nsz arcp contract afn float %i.eh, %i.eh
  %i.ej = fdiv reassoc nsz arcp contract afn float %i.ck, %i.di ; 3 uses
  %i.ek = fmul reassoc nsz arcp contract afn float %i.ej, %i.ej
  %3 = fadd reassoc nsz arcp contract afn float %i.ek, %i.ei
  %i.el = fdiv reassoc nsz arcp contract afn float %i.ct, %i.dn ; 2 uses
  %i.em = fmul reassoc nsz arcp contract afn float %i.ej, %i.eg
  %reass.add = fadd reassoc nsz arcp contract afn float %i.em, %i.el
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add, %i.el
  %i.en = fadd reassoc nsz arcp contract afn float %3, %reass.mul
  %i.eo = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.en)
  ret float %i.eo
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.exp.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.powi.f32.i32(float, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
end_hunk_0
