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
  %1 = load ptr, ptr %i.a, align 8, !tbaa !15
  %2 = icmp ne ptr %1, null
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 96
  %4 = load ptr, ptr %3, align 16, !tbaa !16
  %5 = icmp ne ptr %4, null
  %6 = and i1 %2, %5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <4 x float>, ptr %i.b, align 16, !tbaa !17 ; 2 uses
  %i.d = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.c, <4 x float> %i.c, i8 127)
  %i.e = shufflevector <4 x float> %i.d, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.f = tail call noundef <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.e, <4 x float> <float 1.002000e+00, float poison, float poison, float poison>, i8 1)
  %i.g = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> <float 9.980000e-01, float poison, float poison, float poison>, <4 x float> %i.e, i8 1)
  %i.h = bitcast <4 x float> %i.f to <4 x i32>
  %i.i = bitcast <4 x float> %i.g to <4 x i32>
  %i.j = and <4 x i32> %i.i, %i.h
  %i.k = extractelement <4 x i32> %i.j, i64 0
  %i.l = icmp slt i32 %i.k, 0
  %i.m = and i1 %6, %i.l
  ret i1 %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation8IKAimJob3RunEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 5 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !16  ; 4 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = and i1 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load <4 x float>, ptr %i.h, align 16, !tbaa !17 ; 4 uses
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
  %i.t = load <4 x float>, ptr %i.b, align 16, !tbaa !17, !noalias !20 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.v = load <4 x float>, ptr %i.u, align 16, !tbaa !17, !noalias !20 ; 2 uses
  %i.w = shufflevector <4 x float> %i.t, <4 x float> %i.v, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.y = load <4 x float>, ptr %i.x, align 16, !tbaa !17, !noalias !20 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aa = load <4 x float>, ptr %i.z, align 16, !tbaa !17, !noalias !20 ; 2 uses
  %i.ab = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ac = shufflevector <4 x float> %i.t, <4 x float> %i.v, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.ad = shufflevector <4 x float> %i.y, <4 x float> %i.aa, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.ae = shufflevector <4 x float> %i.w, <4 x float> %i.ab, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %i.af = shufflevector <4 x float> %i.ab, <4 x float> %i.w, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.ag = shufflevector <4 x float> %i.ac, <4 x float> %i.ad, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.ah = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.ai = fmul <4 x float> %i.ag, %i.ah           ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ak = fmul <4 x float> %i.af, %i.aj
  %i.al = fmul <4 x float> %i.ae, %i.aj
  %i.am = shufflevector <4 x float> %i.ai, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.an = fmul <4 x float> %i.af, %i.am
  %i.ao = fsub <4 x float> %i.an, %i.ak
  %i.ap = fmul <4 x float> %i.ae, %i.am
  %i.aq = fsub <4 x float> %i.ap, %i.al
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.as = fmul <4 x float> %i.af, %i.ag           ; 2 uses
  %i.at = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.au = fmul <4 x float> %i.ah, %i.at
  %i.av = fadd <4 x float> %i.au, %i.ao
  %i.aw = fmul <4 x float> %i.ae, %i.at
  %i.ax = shufflevector <4 x float> %i.as, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ay = fmul <4 x float> %i.ah, %i.ax
  %i.az = fsub <4 x float> %i.av, %i.ay
  %i.ba = fmul <4 x float> %i.ae, %i.ax
  %i.bb = fsub <4 x float> %i.ba, %i.aw
  %i.bc = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bd = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.be = shufflevector <4 x float> %i.w, <4 x float> %i.ab, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.bf = fmul <4 x float> %i.bd, %i.be           ; 3 uses
  %i.bg = shufflevector <4 x float> %i.ad, <4 x float> %i.ac, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 7 uses
  %i.bh = fmul <4 x float> %i.bg, %i.bf
  %i.bi = fadd <4 x float> %i.bh, %i.az
  %i.bj = fmul <4 x float> %i.ae, %i.bf
  %i.bk = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.bl = fmul <4 x float> %i.bg, %i.bk
  %i.bm = fsub <4 x float> %i.bi, %i.bl           ; 2 uses
  %i.bn = fmul <4 x float> %i.ae, %i.bk
  %i.bo = fsub <4 x float> %i.bn, %i.bj
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bq = fmul <4 x float> %i.ae, %i.af           ; 2 uses
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bs = fmul <4 x float> %i.ah, %i.br
  %i.bt = fadd <4 x float> %i.bs, %i.bp
  %i.bu = fmul <4 x float> %i.bg, %i.br
  %i.bv = fsub <4 x float> %i.bu, %i.bc
  %i.bw = shufflevector <4 x float> %i.bq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bx = fmul <4 x float> %i.ah, %i.bw
  %i.by = fsub <4 x float> %i.bx, %i.bt
  %i.bz = fmul <4 x float> %i.bg, %i.bw
  %i.ca = fsub <4 x float> %i.bv, %i.bz
  %i.cb = fmul <4 x float> %i.ae, %i.ah           ; 2 uses
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cd = fmul <4 x float> %i.bg, %i.cc
  %i.ce = fsub <4 x float> %i.ar, %i.cd
  %i.cf = fmul <4 x float> %i.af, %i.cc
  %i.cg = fadd <4 x float> %i.cf, %i.by
  %i.ch = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ci = fmul <4 x float> %i.bg, %i.ch
  %i.cj = fadd <4 x float> %i.ci, %i.ce
  %i.ck = fmul <4 x float> %i.af, %i.ch
  %i.cl = fsub <4 x float> %i.cg, %i.ck
  %i.cm = fmul <4 x float> %i.ae, %i.bg           ; 2 uses
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.co = fmul <4 x float> %i.ah, %i.cn
  %i.cp = fadd <4 x float> %i.co, %i.cj
  %i.cq = fmul <4 x float> %i.af, %i.cn
  %i.cr = fsub <4 x float> %i.ca, %i.cq
  %i.cs = shufflevector <4 x float> %i.cm, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ct = fmul <4 x float> %i.ah, %i.cs
  %i.cu = fsub <4 x float> %i.cp, %i.ct
  %i.cv = fmul <4 x float> %i.af, %i.cs
  %i.cw = fadd <4 x float> %i.cv, %i.cr
  %i.cx = fmul <4 x float> %i.ae, %i.bm           ; 2 uses
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cz = fadd <4 x float> %i.cx, %i.cy           ; 3 uses
  %shift = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.cz ; 2 uses
  %i.da = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 7, i32 6> ; 3 uses
  %i.db = fcmp une <4 x float> %i.da, zeroinitializer
  %i.dc = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.da) ; 4 uses
  %i.dd = fadd <4 x float> %i.dc, %i.dc
  %i.de = fmul <4 x float> %i.dc, %i.dc
  %i.df = fmul <4 x float> %i.de, %i.da
  %i.dg = fsub <4 x float> %i.dd, %i.df
  %i.dh = select <4 x i1> %i.db, <4 x float> %i.dg, <4 x float> <float 0.000000e+00, float poison, float poison, float poison> ; 4 uses
  %foldExtExtBinop107 = fadd <4 x float> %i.dh, %i.dh
  %foldExtExtBinop109 = fmul <4 x float> %i.dh, %i.dh
  %foldExtExtBinop111 = fmul <4 x float> %foldExtExtBinop, %foldExtExtBinop109
  %foldExtExtBinop113 = fsub <4 x float> %foldExtExtBinop107, %foldExtExtBinop111
  %i.di = shufflevector <4 x float> %foldExtExtBinop113, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dj = fmul <4 x float> %i.bm, %i.di           ; 2 uses
  %i.dk = fmul <4 x float> %i.cu, %i.di           ; 2 uses
  %i.dl = fmul <4 x float> %i.cl, %i.di           ; 2 uses
  %i.dm = fmul <4 x float> %i.cw, %i.di
  %i.dn = load <3 x float>, ptr %0, align 16, !tbaa !17 ; 3 uses
  %i.do = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.do, %i.dj
  %i.dq = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dr = fmul <4 x float> %i.dq, %i.dl
  %i.ds = fadd <4 x float> %i.dm, %i.dr
  %i.dt = shufflevector <3 x float> %i.dn, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.du = fmul <4 x float> %i.dt, %i.dk
  %i.dv = fadd <4 x float> %i.du, %i.dp
  %i.dw = fadd <4 x float> %i.dv, %i.ds           ; 10 uses
  %i.dx = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.dw, <4 x float> %i.dw, i8 127) ; 7 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load <4 x float>, ptr %i.dy, align 16, !tbaa !17 ; 4 uses
  %i.ea = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.i, <4 x float> %i.dz, i8 127) ; 3 uses
  %i.eb = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.dz, <4 x float> %i.dz, i8 127)
  %i.ec = fneg <4 x float> %i.ea
  %i.ed = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ea, <4 x float> %i.eb) ; 2 uses
  %i.ee = fcmp olt <4 x float> %i.dx, %i.ed
  %i.ef = extractelement <4 x i1> %i.ee, i64 0    ; 3 uses
  br i1 %i.ef, label %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.eg = fsub <4 x float> %i.dx, %i.ed
  %i.eh = extractelement <4 x float> %i.eg, i64 0
  %i.ei = tail call float @llvm.sqrt.f32(float %i.eh)
  %i.ej = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.ek = fsub <4 x float> %i.ej, %i.ea
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.i, <4 x float> %i.el, <4 x float> %i.dz)
  br label %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit

_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit: ; preds = %bb.b, %bb.c
  %.0 = phi <4 x float> [ undef, %bb.b ], [ %i.em, %bb.c ] ; 9 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %i.eo, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit
  %.0.i = xor i1 %i.ef, true
  %i.ep = zext i1 %.0.i to i8
  store i8 %i.ep, ptr %i.eo, align 1, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN3ozz9animation12_GLOBAL__N_123ComputeOffsettedForwardEDv4_fS2_S2_PS2_.exit
  %i.eq = extractelement <4 x float> %i.dx, i64 0
  %i.er = fcmp oeq float %i.eq, 0.000000e+00
  %or.cond = or i1 %i.er, %i.ef
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 16, !tbaa !17
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.es = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.0, <4 x float> %.0, i8 127)
  %i.et = fmul <4 x float> %i.dx, %i.es
  %i.eu = extractelement <4 x float> %i.et, i64 0
  %i.ev = tail call float @llvm.sqrt.f32(float %i.eu) ; 3 uses
  %i.ew = fcmp olt float %i.ev, f0x358637BD
  br i1 %i.ew, label %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ex = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.0, <4 x float> %i.dw, i8 127)
  %i.ez = fadd <4 x float> %i.ex, %i.ey           ; 2 uses
  %i.fa = extractelement <4 x float> %i.ez, i64 0
  %i.fb = fmul float %i.ev, f0x358637BD
  %i.fc = fcmp olt float %i.fa, %i.fb
  br i1 %i.fc, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %.sroa.078.0.vec.extract = extractelement <4 x float> %.0, i64 0
  %i.fd = tail call noundef float @llvm.fabs.f32(float %.sroa.078.0.vec.extract)
  %.sroa.078.8.vec.extract = extractelement <4 x float> %.0, i64 2 ; 2 uses
  %i.fe = tail call noundef float @llvm.fabs.f32(float %.sroa.078.8.vec.extract)
  %i.ff = fcmp ogt float %i.fd, %i.fe
  br i1 %i.ff, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fg = fneg <4 x float> %.0
  %i.fh = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x float> %i.fg, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %.0, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.fj = fneg float %.sroa.078.8.vec.extract
  %i.fk = insertelement <4 x float> <float 0.000000e+00, float poison, float poison, float 0.000000e+00>, float %i.fj, i64 1
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> %.0, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.fm = shufflevector <4 x float> %.0, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.fn = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 poison>
  %i.fo = fmul <4 x float> %i.dw, %i.fm
  %i.fp = fmul <4 x float> %i.fn, %i.fm
  %i.fq = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 poison>
  %i.fr = fsub <4 x float> %i.fp, %i.fq
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> %i.ez, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.sroa.085.0 = phi <4 x float> [ %i.fs, %bb.l ], [ %i.fi, %bb.j ], [ %i.fl, %bb.k ] ; 3 uses
  %i.ft = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %.sroa.085.0, <4 x float> %.sroa.085.0, i8 -1)
  %i.fu = extractelement <4 x float> %i.ft, i64 0
  %i.fv = tail call float @llvm.sqrt.f32(float %i.fu)
  %i.fw = fdiv float 1.000000e+00, %i.fv
  %i.fx = insertelement <4 x float> poison, float %i.fw, i64 0
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fz = fmul <4 x float> %.sroa.085.0, %i.fy
  br label %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit

_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit: ; preds = %bb.g, %bb.m
  %.sroa.0.0.i = phi <4 x float> [ %i.fz, %bb.m ], [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.g ] ; 5 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gb = load <4 x float>, ptr %i.ga, align 16, !tbaa !17 ; 4 uses
  %i.gc = shufflevector <4 x float> %.sroa.0.0.i, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gd = shufflevector <4 x float> %.sroa.0.0.i, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 5 uses
  %i.ge = shufflevector <4 x float> %i.gb, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.gf = fmul <4 x float> %i.gd, %i.gb
  %i.gg = fmul <4 x float> %i.gd, %i.ge
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.gi = fsub <4 x float> %i.gg, %i.gh
  %i.gj = fmul <4 x float> %i.gc, %i.gb
  %i.gk = fadd <4 x float> %i.gj, %i.gi           ; 2 uses
  %i.gl = shufflevector <4 x float> %i.gk, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.gm = fmul <4 x float> %i.gd, %i.gk
  %i.gn = fmul <4 x float> %i.gd, %i.gl
  %i.go = shufflevector <4 x float> %i.gm, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.gp = fsub <4 x float> %i.gn, %i.go           ; 2 uses
  %i.gq = fadd <4 x float> %i.gb, %i.gp
  %i.gr = fadd <4 x float> %i.gp, %i.gq           ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gt = load <3 x float>, ptr %i.gs, align 16, !tbaa !17 ; 3 uses
  %i.gu = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gv = fmul <4 x float> %i.dj, %i.gu
  %i.gw = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gx = fmul <4 x float> %i.dk, %i.gw
  %i.gy = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gz = fmul <4 x float> %i.dl, %i.gy
  %i.ha = fadd <4 x float> %i.gz, %i.gv
  %i.hb = fadd <4 x float> %i.gx, %i.ha
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.hd = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3> ; 2 uses
  %i.he = fmul <4 x float> %i.dw, %i.hc
  %i.hf = fmul <4 x float> %i.hd, %i.hc
  %i.hg = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.hh = fsub <4 x float> %i.hf, %i.hg           ; 4 uses
  %i.hi = shufflevector <4 x float> %i.gr, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3> ; 2 uses
  %i.hj = fmul <4 x float> %i.dw, %i.hi
  %i.hk = fmul <4 x float> %i.hd, %i.hi
  %i.hl = shufflevector <4 x float> %i.hj, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.hm = fsub <4 x float> %i.hk, %i.hl           ; 3 uses
  %i.hn = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.hh, <4 x float> %i.hh, i8 127)
  %i.ho = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.hm, <4 x float> %i.hm, i8 127)
  %i.hp = shufflevector <4 x float> %i.dx, <4 x float> %i.ho, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.hq = shufflevector <4 x float> %i.hn, <4 x float> %i.dx, <4 x i32> <i32 0, i32 poison, i32 7, i32 poison>
  %i.hr = shufflevector <4 x float> %i.hp, <4 x float> %i.hq, <4 x i32> <i32 0, i32 1, i32 4, i32 6> ; 4 uses
  %i.hs = fcmp une <4 x float> %i.hr, zeroinitializer
  %i.ht = bitcast <4 x i1> %i.hs to i4
  %i.hu = and i4 %i.ht, 7
  %i.hv = icmp eq i4 %i.hu, 7
  br i1 %i.hv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit
  %i.hw = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.hr) ; 3 uses
  %i.hx = fmul <4 x float> %i.hw, splat (float 5.000000e-01)
  %i.hy = fmul <4 x float> %i.hr, %i.hw
  %i.hz = fmul <4 x float> %i.hw, %i.hy
  %i.ia = fsub <4 x float> splat (float 3.000000e+00), %i.hz
  %i.ib = fmul <4 x float> %i.hx, %i.ia           ; 3 uses
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = fmul <4 x float> %i.dw, %i.ic           ; 2 uses
  %i.ie = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.if = fmul <4 x float> %i.hm, %i.ie
  %i.ig = shufflevector <4 x float> %i.ib, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ih = fmul <4 x float> %i.hh, %i.ig
  %i.ii = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.if, <4 x float> %i.ih, i8 127)
  %i.ij = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.hh, <4 x float> %i.gr, i8 127)
  %i.ik = bitcast <4 x float> %i.ij to <4 x i32>
  %i.il = and <4 x i32> %i.ik, <i32 -2147483648, i32 poison, i32 poison, i32 poison>
  %i.im = shufflevector <4 x i32> %i.il, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.in = bitcast <4 x float> %i.id to <4 x i32>
  %i.io = xor <4 x i32> %i.im, %i.in
  %i.ip = bitcast <4 x i32> %i.io to <4 x float>
  %i.iq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ii, <4 x float> splat (float 1.000000e+00))
  %i.ir = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -1.000000e+00), <4 x float> %i.iq)
  %i.is = fadd <4 x float> %i.ir, splat (float 1.000000e+00)
  %i.it = fmul <4 x float> %i.is, splat (float 5.000000e-01) ; 2 uses
  %i.iu = fsub <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, %i.it
  %i.iv = shufflevector <4 x float> %i.it, <4 x float> %i.iu, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.iw = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.iv) ; 2 uses
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.iy = fmul <4 x float> %i.ix, %i.ip
  %i.iz = shufflevector <4 x float> %i.iy, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  br label %bb.p

bb.o:                                             ; preds = %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit
  %i.ja = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.hr) ; 3 uses
  %i.jb = extractelement <4 x float> %i.ja, i64 0
  %i.jc = fmul float %i.jb, 5.000000e-01
  %foldExtExtBinop115 = fmul <4 x float> %i.dx, %i.ja
  %foldExtExtBinop117 = fmul <4 x float> %i.ja, %foldExtExtBinop115
  %i.jd = extractelement <4 x float> %foldExtExtBinop117, i64 0
  %i.je = fsub float 3.000000e+00, %i.jd
  %i.jf = fmul float %i.jc, %i.je
  %i.jg = insertelement <4 x float> poison, float %i.jf, i64 0
  %i.jh = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ji = fmul <4 x float> %i.dw, %i.jh
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %storemerge = phi <4 x float> [ <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.o ], [ %i.iz, %bb.n ] ; 5 uses
  %.044 = phi <4 x float> [ %i.ji, %bb.o ], [ %i.id, %bb.n ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.jk = load float, ptr %i.jj, align 16, !tbaa !24 ; 2 uses
  %i.jl = fcmp une float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jm = fmul float %i.jk, 5.000000e-01          ; 2 uses
  %i.jn = tail call noundef float @sinf(float noundef %i.jm) #5
  %i.jo = insertelement <4 x float> poison, float %i.jn, i64 0
  %i.jp = tail call noundef float @cosf(float noundef %i.jm) #5
  %i.jq = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jr = fmul <4 x float> %.044, %i.jq           ; 2 uses
  %i.js = insertelement <4 x float> %i.jr, float %i.jp, i64 0 ; 2 uses
  %i.jt = shufflevector <4 x float> %i.jr, <4 x float> %i.js, <4 x i32> <i32 0, i32 1, i32 6, i32 4> ; 3 uses
  %i.ju = shufflevector <4 x float> %i.js, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.jv = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.jw = fmul <4 x float> %i.jv, %i.ju
  %i.jx = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.jy = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.jz = fmul <4 x float> %i.jy, %i.jx
  %i.ka = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.kb = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.kc = fmul <4 x float> %i.kb, %i.ka
  %i.kd = fadd <4 x float> %i.kc, %i.jw
  %i.ke = shufflevector <4 x float> %i.jt, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.kf = shufflevector <4 x float> %storemerge, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.kg = fmul <4 x float> %i.kf, %i.ke
  %i.kh = fsub <4 x float> %i.jz, %i.kg
  %i.ki = fadd <4 x float> %i.kd, %i.kh
  %i.kj = bitcast <4 x float> %i.ki to <4 x i32>
  %i.kk = xor <4 x i32> %i.kj, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.kl = bitcast <4 x i32> %i.kk to <4 x float>
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %storemerge.sink105 = phi <4 x float> [ %i.kl, %bb.q ], [ %storemerge, %bb.p ] ; 4 uses
  %i.km = shufflevector <4 x float> %storemerge.sink105, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 2>
  %i.kn = shufflevector <4 x float> %.sroa.0.0.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ko = fmul <4 x float> %i.kn, %i.km
  %i.kp = shufflevector <4 x float> %storemerge.sink105, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.kq = shufflevector <4 x float> %.sroa.0.0.i, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.kr = fmul <4 x float> %i.kq, %i.kp
  %i.ks = shufflevector <4 x float> %storemerge.sink105, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.kt = shufflevector <4 x float> %.sroa.0.0.i, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.ku = fmul <4 x float> %i.kt, %i.ks
  %i.kv = fadd <4 x float> %i.ku, %i.ko
  %i.kw = shufflevector <4 x float> %storemerge.sink105, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.kx = fmul <4 x float> %i.gd, %i.kw
  %i.ky = fsub <4 x float> %i.kr, %i.kx
  %i.kz = fadd <4 x float> %i.kv, %i.ky
  %.sroa.052.0.in.in = bitcast <4 x float> %i.kz to <4 x i32>
  %.sroa.052.0.in = xor <4 x i32> %.sroa.052.0.in.in, <i32 0, i32 0, i32 0, i32 -2147483648> ; 2 uses
  %.sroa.052.0 = bitcast <4 x i32> %.sroa.052.0.in to <4 x float> ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.lb = load float, ptr %i.la, align 4, !tbaa !25 ; 2 uses
  %i.lc = fcmp olt float %i.lb, 1.000000e+00
  br i1 %i.lc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ld = insertelement <4 x float> poison, float %i.lb, i64 0
  %i.le = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.le)
  %i.lg = fadd <4 x float> %.sroa.052.0, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -1.000000e+00>
  %i.lh = fmul <4 x float> %i.lg, %i.lf
  %i.li = fadd <4 x float> %i.lh, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.lj = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.li, <4 x float> %i.li, i8 -1)
  %i.lk = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.lj)
  %i.ll = shufflevector <4 x float> %i.lk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lm = fmul <4 x float> %i.li, %i.ll
  store <4 x float> %i.lm, ptr %i.e, align 16, !tbaa !17
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ln = fcmp olt <4 x float> %.sroa.052.0, zeroinitializer
  %i.lo = shufflevector <4 x i1> %i.ln, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lp = select <4 x i1> %i.lo, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.lq = xor <4 x i32> %i.lp, %.sroa.052.0.in
  store <4 x i32> %i.lq, ptr %i.e, align 16, !tbaa !17
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.t, %bb.s, %bb.a
  ret i1 %i.s
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.dpps(<4 x float>, <4 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"float", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN3ozz4math8Float4x4E", !10, i64 0}
!12 = !{!"p1 _ZTSN3ozz4math14SimdQuaternionE", !10, i64 0}
!13 = !{!"p1 bool", !10, i64 0}
!14 = !{!"_ZTSN3ozz9animation8IKAimJobE", !5, i64 0, !5, i64 16, !5, i64 32, !5, i64 48, !5, i64 64, !9, i64 80, !9, i64 84, !11, i64 88, !12, i64 96, !13, i64 104}
!15 = !{!14, !11, i64 88}
!16 = !{!14, !12, i64 96}
!17 = !{!5, !5, i64 0}
!18 = distinct !{!18, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x"}
!19 = distinct !{!19, !18, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x: argument 0"}
!20 = !{!19}
!21 = !{!14, !13, i64 104}
!22 = !{!"bool", !5, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!14, !9, i64 80}
!25 = !{!14, !9, i64 84}
end_hunk_0
