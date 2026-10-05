Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/ik_aim_job?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation8IKAimJob8ValidateEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load <2 x ptr>, ptr %i.a, align 8, !tbaa !11
  %i.c = icmp eq <2 x ptr> %i.b, splat (ptr null)
  %i.d = bitcast <2 x i1> %i.c to i2
  %i.e = icmp eq i2 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load <4 x float>, ptr %i.f, align 16, !tbaa !10 ; 2 uses
  %i.h = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.g, <4 x float> %i.g, i8 127)
  %i.i = shufflevector <4 x float> %i.h, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.j = tail call noundef <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.i, <4 x float> <float 1.002000e+00, float poison, float poison, float poison>, i8 1)
  %i.k = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> <float 9.980000e-01, float poison, float poison, float poison>, <4 x float> %i.i, i8 1)
  %i.l = bitcast <4 x float> %i.j to <4 x i32>
  %i.m = bitcast <4 x float> %i.k to <4 x i32>
  %i.n = and <4 x i32> %i.m, %i.l
  %i.o = extractelement <4 x i32> %i.n, i64 0
  %i.p = icmp slt i32 %i.o, 0
  %i.q = and i1 %i.e, %i.p
  ret i1 %i.q
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation8IKAimJob3RunEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 5 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !20  ; 4 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 16, !tbaa !10 ; 4 uses
  %i.j = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.i, <4 x float> %i.i, i8 127)
  %i.k = shufflevector <4 x float> %i.j, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.l = tail call noundef <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.k, <4 x float> <float 1.002000e+00, float poison, float poison, float poison>, i8 1)
  %i.m = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> <float 9.980000e-01, float poison, float poison, float poison>, <4 x float> %i.k, i8 1)
  %i.n = bitcast <4 x float> %i.l to <4 x i32>
  %i.o = bitcast <4 x float> %i.m to <4 x i32>
  %i.p = and <4 x i32> %i.o, %i.n
  %i.q = extractelement <4 x i32> %i.p, i64 0
  %i.r = icmp slt i32 %i.q, 0
  %i.s = and i1 %i.g, %i.r                        ; 2 uses
  br i1 %i.s, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %1 = load <4 x float>, ptr %i.b, align 16, !tbaa !10, !noalias !21 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %3 = load <4 x float>, ptr %2, align 16, !tbaa !10, !noalias !21 ; 2 uses
  %i.t = shufflevector <4 x float> %1, <4 x float> %3, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %4 = load <4 x float>, ptr %i.u, align 16, !tbaa !10, !noalias !21 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %6 = load <4 x float>, ptr %5, align 16, !tbaa !10, !noalias !21 ; 2 uses
  %i.v = shufflevector <4 x float> %4, <4 x float> %6, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.w = shufflevector <4 x float> %1, <4 x float> %3, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.x = shufflevector <4 x float> %4, <4 x float> %6, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.y = shufflevector <4 x float> %i.t, <4 x float> %i.v, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %i.z = shufflevector <4 x float> %i.v, <4 x float> %i.t, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.aa = shufflevector <4 x float> %i.w, <4 x float> %i.x, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ab = shufflevector <4 x float> %i.x, <4 x float> %i.w, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.ac = fmul <4 x float> %i.aa, %i.ab           ; 2 uses
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ae = fmul <4 x float> %i.z, %i.ad
  %i.af = fmul <4 x float> %i.y, %i.ad
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ah = fmul <4 x float> %i.z, %i.ag
  %i.ai = fsub <4 x float> %i.ah, %i.ae
  %i.aj = fmul <4 x float> %i.y, %i.ag
  %i.ak = fsub <4 x float> %i.aj, %i.af
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.am = fmul <4 x float> %i.z, %i.aa            ; 2 uses
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ao = fmul <4 x float> %i.ab, %i.an
  %i.ap = fadd <4 x float> %i.ao, %i.ai
  %i.aq = fmul <4 x float> %i.y, %i.an
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.as = fmul <4 x float> %i.ab, %i.ar
  %i.at = fsub <4 x float> %i.ap, %i.as
  %i.au = fmul <4 x float> %i.y, %i.ar
  %i.av = fsub <4 x float> %i.au, %i.aq
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ax = shufflevector <4 x float> %i.x, <4 x float> %i.w, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.ay = shufflevector <4 x float> %i.t, <4 x float> %i.v, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.az = fmul <4 x float> %i.ax, %i.ay           ; 3 uses
  %i.ba = shufflevector <4 x float> %i.x, <4 x float> %i.w, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 7 uses
  %i.bb = fmul <4 x float> %i.ba, %i.az
  %i.bc = fadd <4 x float> %i.bb, %i.at
  %i.bd = fmul <4 x float> %i.y, %i.az
  %i.be = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.bf = fmul <4 x float> %i.ba, %i.be
  %i.bg = fsub <4 x float> %i.bc, %i.bf           ; 2 uses
  %i.bh = fmul <4 x float> %i.y, %i.be
  %i.bi = fsub <4 x float> %i.bh, %i.bd
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bk = fmul <4 x float> %i.y, %i.z             ; 2 uses
  %i.bl = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bm = fmul <4 x float> %i.ab, %i.bl
  %i.bn = fadd <4 x float> %i.bm, %i.bj
  %i.bo = fmul <4 x float> %i.ba, %i.bl
  %i.bp = fsub <4 x float> %i.bo, %i.aw
  %i.bq = shufflevector <4 x float> %i.bk, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.br = fmul <4 x float> %i.ab, %i.bq
  %i.bs = fsub <4 x float> %i.br, %i.bn
  %i.bt = fmul <4 x float> %i.ba, %i.bq
  %i.bu = fsub <4 x float> %i.bp, %i.bt
  %i.bv = fmul <4 x float> %i.y, %i.ab            ; 2 uses
  %i.bw = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bx = fmul <4 x float> %i.ba, %i.bw
  %i.by = fsub <4 x float> %i.al, %i.bx
  %i.bz = fmul <4 x float> %i.z, %i.bw
  %i.ca = fadd <4 x float> %i.bz, %i.bs
  %i.cb = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cc = fmul <4 x float> %i.ba, %i.cb
  %i.cd = fadd <4 x float> %i.cc, %i.by
  %i.ce = fmul <4 x float> %i.z, %i.cb
  %i.cf = fsub <4 x float> %i.ca, %i.ce
  %i.cg = fmul <4 x float> %i.y, %i.ba            ; 2 uses
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ci = fmul <4 x float> %i.ab, %i.ch
  %i.cj = fadd <4 x float> %i.ci, %i.cd
  %i.ck = fmul <4 x float> %i.z, %i.ch
  %i.cl = fsub <4 x float> %i.bu, %i.ck
  %i.cm = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cn = fmul <4 x float> %i.ab, %i.cm
  %i.co = fsub <4 x float> %i.cj, %i.cn
  %i.cp = fmul <4 x float> %i.z, %i.cm
  %i.cq = fadd <4 x float> %i.cp, %i.cl
  %i.cr = fmul <4 x float> %i.y, %i.bg            ; 2 uses
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ct = fadd <4 x float> %i.cr, %i.cs           ; 3 uses
  %shift = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.ct ; 2 uses
  %i.cu = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.ct, <4 x i32> <i32 0, i32 4, i32 7, i32 6> ; 3 uses
  %i.cv = fcmp une <4 x float> %i.cu, zeroinitializer
  %i.cw = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.cu) ; 4 uses
  %i.cx = fadd <4 x float> %i.cw, %i.cw
  %i.cy = fmul <4 x float> %i.cw, %i.cw
  %i.cz = fmul <4 x float> %i.cy, %i.cu
  %i.da = fsub <4 x float> %i.cx, %i.cz
  %i.db = select <4 x i1> %i.cv, <4 x float> %i.da, <4 x float> <float 0.000000e+00, float poison, float poison, float poison> ; 4 uses
  %foldExtExtBinop107 = fadd <4 x float> %i.db, %i.db
  %foldExtExtBinop109 = fmul <4 x float> %i.db, %i.db
  %foldExtExtBinop111 = fmul <4 x float> %foldExtExtBinop, %foldExtExtBinop109
  %foldExtExtBinop113 = fsub <4 x float> %foldExtExtBinop107, %foldExtExtBinop111
  %i.dc = shufflevector <4 x float> %foldExtExtBinop113, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dd = fmul <4 x float> %i.bg, %i.dc           ; 2 uses
  %i.de = fmul <4 x float> %i.co, %i.dc           ; 2 uses
  %i.df = fmul <4 x float> %i.cf, %i.dc           ; 2 uses
  %i.dg = fmul <4 x float> %i.cq, %i.dc
  %i.dh = load <3 x float>, ptr %0, align 16, !tbaa !10 ; 3 uses
  %i.di = shufflevector <3 x float> %i.dh, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dj = fmul <4 x float> %i.di, %i.dd
  %i.dk = shufflevector <3 x float> %i.dh, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dl = fmul <4 x float> %i.dk, %i.df
  %i.dm = fadd <4 x float> %i.dg, %i.dl
  %i.dn = shufflevector <3 x float> %i.dh, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.do = fmul <4 x float> %i.dn, %i.de
  %i.dp = fadd <4 x float> %i.do, %i.dj
  %i.dq = fadd <4 x float> %i.dp, %i.dm           ; 10 uses
  %i.dr = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.dq, <4 x float> %i.dq, i8 127) ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dt = load <4 x float>, ptr %i.ds, align 16, !tbaa !10 ; 4 uses
  %i.du = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.i, <4 x float> %i.dt, i8 127) ; 3 uses
  %i.dv = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.dt, <4 x float> %i.dt, i8 127)
  %i.dw = fneg <4 x float> %i.du
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dw, <4 x float> %i.du, <4 x float> %i.dv) ; 2 uses
  %i.dy = fcmp olt <4 x float> %i.dr, %i.dx
  %i.dz = extractelement <4 x i1> %i.dy, i64 0    ; 3 uses
  br i1 %i.dz, label %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ea = fsub <4 x float> %i.dr, %i.dx
  %i.eb = extractelement <4 x float> %i.ea, i64 0
  %i.ec = tail call float @llvm.sqrt.f32(float %i.eb)
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = fsub <4 x float> %i.ed, %i.du
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.ef, <4 x float> %i.dt)
  br label %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit

_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit: ; preds = %bb.b, %bb.c
  %.0 = phi <4 x float> [ undef, %bb.b ], [ %i.eg, %bb.c ] ; 9 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !22 ; 2 uses
  %.not = icmp eq ptr %i.ei, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit
  %.0.i = xor i1 %i.dz, true
  %i.ej = zext i1 %.0.i to i8
  store i8 %i.ej, ptr %i.ei, align 1, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit
  %i.ek = extractelement <4 x float> %i.dr, i64 0
  %i.el = fcmp oeq float %i.ek, 0.000000e+00
  %or.cond = or i1 %i.el, %i.dz
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 16, !tbaa !10
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.em = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.0, <4 x float> %.0, i8 127)
  %i.en = fmul <4 x float> %i.dr, %i.em
  %i.eo = extractelement <4 x float> %i.en, i64 0
  %i.ep = tail call float @llvm.sqrt.f32(float %i.eo) ; 3 uses
  %i.eq = fcmp olt float %i.ep, f0x358637BD
  br i1 %i.eq, label %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.er = insertelement <4 x float> poison, float %i.ep, i64 0
  %i.es = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.0, <4 x float> %i.dq, i8 127)
  %i.et = fadd <4 x float> %i.er, %i.es           ; 2 uses
  %i.eu = extractelement <4 x float> %i.et, i64 0
  %i.ev = fmul float %i.ep, f0x358637BD
  %i.ew = fcmp olt float %i.eu, %i.ev
  br i1 %i.ew, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.078.0.vec.extract = extractelement <4 x float> %.0, i64 0
  %i.ex = tail call noundef float @llvm.fabs.f32(float %.sroa.078.0.vec.extract)
  %.sroa.078.8.vec.extract = extractelement <4 x float> %.0, i64 2 ; 2 uses
  %i.ey = tail call noundef float @llvm.fabs.f32(float %.sroa.078.8.vec.extract)
  %i.ez = fcmp ogt float %i.ex, %i.ey
  br i1 %i.ez, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fa = fneg <4 x float> %.0
  %i.fb = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fa, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %.0, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.fd = fneg float %.sroa.078.8.vec.extract
  %i.fe = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.fd, i64 1
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %.0, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.fg = shufflevector <4 x float> %.0, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.fh = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.fi = fmul <4 x float> %i.dq, %i.fg
  %i.fj = fmul <4 x float> %i.fh, %i.fg
  %i.fk = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.fl = fsub <4 x float> %i.fj, %i.fk
  %i.fm = shufflevector <4 x float> %i.fl, <4 x float> %i.et, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.085.0 = phi <4 x float> [ %i.fm, %bb.l ], [ %i.fc, %bb.j ], [ %i.ff, %bb.k ] ; 3 uses
  %i.fn = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.sroa.085.0, <4 x float> %.sroa.085.0, i8 -1)
  %i.fo = extractelement <4 x float> %i.fn, i64 0
  %i.fp = tail call float @llvm.sqrt.f32(float %i.fo)
  %i.fq = fdiv float 1.000000e+00, %i.fp
end_hunk_0
