Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/ik_two_bone_job?download=true
inline.NumInlined: 16
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !15
  %.not = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8
  %.not4 = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 true, i1 %.not4
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !16
  %i.g = icmp ne ptr %i.f, null
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %.not5 = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.l = load ptr, ptr %i.k, align 16
  %.not6 = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load <4 x float>, ptr %i.m, align 16, !tbaa !18 ; 2 uses
  %i.o = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.n, <4 x float> %i.n, i8 127)
  %i.p = shufflevector <4 x float> %i.o, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.q = tail call noundef <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.p, <4 x float> <float 1.002000e+00, float poison, float poison, float poison>, i8 1)
  %i.r = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> <float 9.980000e-01, float poison, float poison, float poison>, <4 x float> %i.p, i8 1)
  %i.s = bitcast <4 x float> %i.q to <4 x i32>
  %i.t = bitcast <4 x float> %i.r to <4 x i32>
  %i.u = and <4 x i32> %i.t, %i.s
  %i.v = extractelement <4 x i32> %i.u, i64 0
  %i.w = icmp slt i32 %i.v, 0
  %i.x = select i1 %i.w, i1 %.not5, i1 false
  %i.y = select i1 %i.x, i1 %.not6, i1 false
  %i.z = select i1 %i.y, i1 %i.h, i1 false
  ret i1 %i.z
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK3ozz9animation12IKTwoBoneJob3RunEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(112) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !15  ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %.not4.i = icmp eq ptr %i.d, null
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not4.i
  br i1 %or.cond.i, label %_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !16
  %i.g = icmp ne ptr %i.f, null
  br label %_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv.exit

_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i1 [ %i.g, %bb.b ], [ false, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17   ; 3 uses
  %.not5.i = icmp ne ptr %i.j, null
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 16             ; 3 uses
  %.not6.i = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load <4 x float>, ptr %i.m, align 16, !tbaa !18 ; 2 uses
  %i.o = tail call <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.n, <4 x float> %i.n, i8 127)
  %i.p = shufflevector <4 x float> %i.o, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 2 uses
  %i.q = tail call noundef <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> %i.p, <4 x float> <float 1.002000e+00, float poison, float poison, float poison>, i8 1)
  %i.r = tail call <4 x float> @llvm.x86.sse.cmp.ss(<4 x float> <float 9.980000e-01, float poison, float poison, float poison>, <4 x float> %i.p, i8 1)
  %i.s = bitcast <4 x float> %i.q to <4 x i32>
  %i.t = bitcast <4 x float> %i.r to <4 x i32>
  %i.u = and <4 x i32> %i.t, %i.s
  %i.v = extractelement <4 x i32> %i.u, i64 0
  %i.w = icmp slt i32 %i.v, 0
  %i.x = select i1 %i.w, i1 %.not5.i, i1 false
  %i.y = select i1 %i.x, i1 %.not6.i, i1 false
  %i.z = select i1 %i.y, i1 %i.h, i1 false        ; 2 uses
  br i1 %i.z, label %bb.c, label %_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit

bb.c:                                             ; preds = %_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !23 ; 4 uses
  %i.ac = fcmp ugt float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 16, !tbaa !18
  %i.ad = load ptr, ptr %i.i, align 8, !tbaa !17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !24
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25 ; 2 uses
  %.not3 = icmp eq ptr %i.af, null
  br i1 %.not3, label %_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.af, align 1, !tbaa !27
  br label %_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit

bb.f:                                             ; preds = %bb.c
  %i.ag = load <4 x float>, ptr %i.b, align 16, !tbaa !18, !noalias !35 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ai = load <4 x float>, ptr %i.ah, align 16, !tbaa !18, !noalias !35 ; 2 uses
  %i.aj = shufflevector <4 x float> %i.ag, <4 x float> %i.ai, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.al = load <4 x float>, ptr %i.ak, align 16, !tbaa !18, !noalias !35 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load <4 x float>, ptr %i.am, align 16, !tbaa !18, !noalias !35 ; 5 uses
  %i.ao = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ap = shufflevector <4 x float> %i.ag, <4 x float> %i.ai, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.aq = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.ar = shufflevector <4 x float> %i.aj, <4 x float> %i.ao, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %i.as = shufflevector <4 x float> %i.ao, <4 x float> %i.aj, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.at = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.au = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.av = fmul <4 x float> %i.at, %i.au           ; 2 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.ax = fmul <4 x float> %i.as, %i.aw
  %i.ay = fmul <4 x float> %i.ar, %i.aw
  %i.az = shufflevector <4 x float> %i.av, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ba = fmul <4 x float> %i.as, %i.az
  %i.bb = fsub <4 x float> %i.ba, %i.ax
  %i.bc = fmul <4 x float> %i.ar, %i.az
  %i.bd = fsub <4 x float> %i.bc, %i.ay
  %i.be = shufflevector <4 x float> %i.bd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bf = fmul <4 x float> %i.as, %i.at           ; 2 uses
  %i.bg = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.bh = fmul <4 x float> %i.au, %i.bg
  %i.bi = fadd <4 x float> %i.bh, %i.bb
  %i.bj = fmul <4 x float> %i.ar, %i.bg
  %i.bk = shufflevector <4 x float> %i.bf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bl = fmul <4 x float> %i.au, %i.bk
  %i.bm = fsub <4 x float> %i.bi, %i.bl
  %i.bn = fmul <4 x float> %i.ar, %i.bk
  %i.bo = fsub <4 x float> %i.bn, %i.bj
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bq = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.br = shufflevector <4 x float> %i.aj, <4 x float> %i.ao, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.bs = fmul <4 x float> %i.bq, %i.br           ; 3 uses
  %i.bt = shufflevector <4 x float> %i.aq, <4 x float> %i.ap, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 7 uses
  %i.bu = fmul <4 x float> %i.bt, %i.bs
  %i.bv = fadd <4 x float> %i.bu, %i.bm
  %i.bw = fmul <4 x float> %i.ar, %i.bs
  %i.bx = shufflevector <4 x float> %i.bs, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.by = fmul <4 x float> %i.bt, %i.bx
  %i.bz = fsub <4 x float> %i.bv, %i.by           ; 2 uses
  %i.ca = fmul <4 x float> %i.ar, %i.bx
  %i.cb = fsub <4 x float> %i.ca, %i.bw
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.cd = fmul <4 x float> %i.ar, %i.as           ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cf = fmul <4 x float> %i.au, %i.ce
  %i.cg = fadd <4 x float> %i.cf, %i.cc
  %i.ch = fmul <4 x float> %i.bt, %i.ce
  %i.ci = fsub <4 x float> %i.ch, %i.bp
  %i.cj = shufflevector <4 x float> %i.cd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ck = fmul <4 x float> %i.au, %i.cj
  %i.cl = fsub <4 x float> %i.ck, %i.cg
  %i.cm = fmul <4 x float> %i.bt, %i.cj
  %i.cn = fsub <4 x float> %i.ci, %i.cm
  %i.co = fmul <4 x float> %i.ar, %i.au           ; 2 uses
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.cq = fmul <4 x float> %i.bt, %i.cp
  %i.cr = fsub <4 x float> %i.be, %i.cq
  %i.cs = fmul <4 x float> %i.as, %i.cp
  %i.ct = fadd <4 x float> %i.cs, %i.cl
  %i.cu = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.cv = fmul <4 x float> %i.bt, %i.cu
  %i.cw = fadd <4 x float> %i.cv, %i.cr
  %i.cx = fmul <4 x float> %i.as, %i.cu
  %i.cy = fsub <4 x float> %i.ct, %i.cx
  %i.cz = fmul <4 x float> %i.ar, %i.bt           ; 2 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.db = fmul <4 x float> %i.au, %i.da
  %i.dc = fadd <4 x float> %i.db, %i.cw
  %i.dd = fmul <4 x float> %i.as, %i.da
  %i.de = fsub <4 x float> %i.cn, %i.dd
  %i.df = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.dg = fmul <4 x float> %i.au, %i.df
  %i.dh = fsub <4 x float> %i.dc, %i.dg
  %i.di = fmul <4 x float> %i.as, %i.df
  %i.dj = fadd <4 x float> %i.di, %i.de
  %i.dk = fmul <4 x float> %i.ar, %i.bz           ; 2 uses
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.dm = fadd <4 x float> %i.dk, %i.dl           ; 3 uses
  %shift = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x float> %shift, %i.dm ; 2 uses
  %i.dn = shufflevector <4 x float> %foldExtExtBinop, <4 x float> %i.dm, <4 x i32> <i32 0, i32 4, i32 7, i32 6> ; 3 uses
  %i.do = fcmp une <4 x float> %i.dn, zeroinitializer
  %i.dp = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.dn) ; 4 uses
  %i.dq = fadd <4 x float> %i.dp, %i.dp
  %i.dr = fmul <4 x float> %i.dp, %i.dp
  %i.ds = fmul <4 x float> %i.dr, %i.dn
  %i.dt = fsub <4 x float> %i.dq, %i.ds
  %i.du = select <4 x i1> %i.do, <4 x float> %i.dt, <4 x float> <float 0.000000e+00, float poison, float poison, float poison> ; 4 uses
  %foldExtExtBinop36 = fadd <4 x float> %i.du, %i.du
  %foldExtExtBinop38 = fmul <4 x float> %i.du, %i.du
  %foldExtExtBinop40 = fmul <4 x float> %foldExtExtBinop, %foldExtExtBinop38
  %foldExtExtBinop42 = fsub <4 x float> %foldExtExtBinop36, %foldExtExtBinop40
  %i.dv = shufflevector <4 x float> %foldExtExtBinop42, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.dw = fmul <4 x float> %i.bz, %i.dv           ; 6 uses
  %i.dx = fmul <4 x float> %i.dh, %i.dv           ; 6 uses
  %i.dy = fmul <4 x float> %i.cy, %i.dv           ; 6 uses
  %i.dz = fmul <4 x float> %i.dj, %i.dv           ; 3 uses
  %i.ea = load <4 x float>, ptr %i.d, align 16, !tbaa !18, !noalias !38 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ec = load <4 x float>, ptr %i.eb, align 16, !tbaa !18, !noalias !38 ; 2 uses
  %i.ed = shufflevector <4 x float> %i.ea, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 32 ; 2 uses
  %i.ef = load <4 x float>, ptr %i.ee, align 16, !tbaa !18, !noalias !38 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.eh = load <4 x float>, ptr %i.eg, align 16, !tbaa !18, !noalias !38 ; 5 uses
  %i.ei = shufflevector <4 x float> %i.ef, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 3 uses
  %i.ej = shufflevector <4 x float> %i.ea, <4 x float> %i.ec, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.ek = shufflevector <4 x float> %i.ef, <4 x float> %i.eh, <4 x i32> <i32 2, i32 3, i32 6, i32 7> ; 4 uses
  %i.el = shufflevector <4 x float> %i.ed, <4 x float> %i.ei, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 10 uses
  %i.em = shufflevector <4 x float> %i.ei, <4 x float> %i.ed, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.en = shufflevector <4 x float> %i.ej, <4 x float> %i.ek, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %i.eo = shufflevector <4 x float> %i.ek, <4 x float> %i.ej, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 8 uses
  %i.ep = fmul <4 x float> %i.en, %i.eo           ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.er = fmul <4 x float> %i.em, %i.eq
  %i.es = fmul <4 x float> %i.el, %i.eq
  %i.et = shufflevector <4 x float> %i.ep, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.eu = fmul <4 x float> %i.em, %i.et
  %i.ev = fsub <4 x float> %i.eu, %i.er
  %i.ew = fmul <4 x float> %i.el, %i.et
  %i.ex = fsub <4 x float> %i.ew, %i.es
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ez = fmul <4 x float> %i.em, %i.en           ; 2 uses
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.fb = fmul <4 x float> %i.eo, %i.fa
  %i.fc = fadd <4 x float> %i.fb, %i.ev
  %i.fd = fmul <4 x float> %i.el, %i.fa
  %i.fe = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ff = fmul <4 x float> %i.eo, %i.fe
  %i.fg = fsub <4 x float> %i.fc, %i.ff
  %i.fh = fmul <4 x float> %i.el, %i.fe
  %i.fi = fsub <4 x float> %i.fh, %i.fd
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fk = shufflevector <4 x float> %i.ek, <4 x float> %i.ej, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.fl = shufflevector <4 x float> %i.ed, <4 x float> %i.ei, <4 x i32> <i32 3, i32 1, i32 7, i32 5>
  %i.fm = fmul <4 x float> %i.fk, %i.fl           ; 3 uses
  %i.fn = shufflevector <4 x float> %i.ek, <4 x float> %i.ej, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 7 uses
  %i.fo = fmul <4 x float> %i.fn, %i.fm
  %i.fp = fadd <4 x float> %i.fo, %i.fg
  %i.fq = fmul <4 x float> %i.el, %i.fm
  %i.fr = shufflevector <4 x float> %i.fm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1> ; 2 uses
  %i.fs = fmul <4 x float> %i.fn, %i.fr
  %i.ft = fsub <4 x float> %i.fp, %i.fs           ; 2 uses
  %i.fu = fmul <4 x float> %i.el, %i.fr
  %i.fv = fsub <4 x float> %i.fu, %i.fq
  %i.fw = shufflevector <4 x float> %i.fv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.fx = fmul <4 x float> %i.el, %i.em           ; 2 uses
  %i.fy = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.fz = fmul <4 x float> %i.eo, %i.fy
  %i.ga = fadd <4 x float> %i.fz, %i.fw
  %i.gb = fmul <4 x float> %i.fn, %i.fy
  %i.gc = fsub <4 x float> %i.gb, %i.fj
  %i.gd = shufflevector <4 x float> %i.fx, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ge = fmul <4 x float> %i.eo, %i.gd
  %i.gf = fsub <4 x float> %i.ge, %i.ga
  %i.gg = fmul <4 x float> %i.fn, %i.gd
  %i.gh = fsub <4 x float> %i.gc, %i.gg
  %i.gi = fmul <4 x float> %i.el, %i.eo           ; 2 uses
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gk = fmul <4 x float> %i.fn, %i.gj
  %i.gl = fsub <4 x float> %i.ey, %i.gk
  %i.gm = fmul <4 x float> %i.em, %i.gj
  %i.gn = fadd <4 x float> %i.gm, %i.gf
  %i.go = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.gp = fmul <4 x float> %i.fn, %i.go
  %i.gq = fadd <4 x float> %i.gp, %i.gl
  %i.gr = fmul <4 x float> %i.em, %i.go
  %i.gs = fsub <4 x float> %i.gn, %i.gr
  %i.gt = fmul <4 x float> %i.el, %i.fn           ; 2 uses
  %i.gu = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gv = fmul <4 x float> %i.eo, %i.gu
  %i.gw = fadd <4 x float> %i.gv, %i.gq
  %i.gx = fmul <4 x float> %i.em, %i.gu
  %i.gy = fsub <4 x float> %i.gh, %i.gx
  %i.gz = shufflevector <4 x float> %i.gt, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.ha = fmul <4 x float> %i.eo, %i.gz
  %i.hb = fsub <4 x float> %i.gw, %i.ha
  %i.hc = fmul <4 x float> %i.em, %i.gz
  %i.hd = fadd <4 x float> %i.hc, %i.gy
  %i.he = fmul <4 x float> %i.el, %i.ft           ; 2 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hg = fadd <4 x float> %i.he, %i.hf           ; 3 uses
  %shift44 = shufflevector <4 x float> %i.hg, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop45 = fadd <4 x float> %shift44, %i.hg ; 2 uses
  %i.hh = shufflevector <4 x float> %foldExtExtBinop45, <4 x float> %i.hg, <4 x i32> <i32 0, i32 4, i32 7, i32 6> ; 3 uses
  %i.hi = fcmp une <4 x float> %i.hh, zeroinitializer
  %i.hj = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.hh) ; 4 uses
  %i.hk = fadd <4 x float> %i.hj, %i.hj
  %i.hl = fmul <4 x float> %i.hj, %i.hj
  %i.hm = fmul <4 x float> %i.hl, %i.hh
  %i.hn = fsub <4 x float> %i.hk, %i.hm
  %i.ho = select <4 x i1> %i.hi, <4 x float> %i.hn, <4 x float> <float 0.000000e+00, float poison, float poison, float poison> ; 4 uses
  %foldExtExtBinop47 = fadd <4 x float> %i.ho, %i.ho
  %foldExtExtBinop49 = fmul <4 x float> %i.ho, %i.ho
  %foldExtExtBinop51 = fmul <4 x float> %foldExtExtBinop45, %foldExtExtBinop49
  %foldExtExtBinop53 = fsub <4 x float> %foldExtExtBinop47, %foldExtExtBinop51
  %i.hp = shufflevector <4 x float> %foldExtExtBinop53, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hq = fmul <4 x float> %i.ft, %i.hp           ; 2 uses
  %i.hr = fmul <4 x float> %i.hb, %i.hp           ; 2 uses
  %i.hs = fmul <4 x float> %i.gs, %i.hp           ; 2 uses
  %i.ht = fmul <4 x float> %i.hd, %i.hp           ; 2 uses
  %i.hu = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hv = fmul <4 x float> %i.hu, %i.hq
  %i.hw = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hx = fmul <4 x float> %i.hw, %i.hs
  %i.hy = fadd <4 x float> %i.ht, %i.hx
  %i.hz = shufflevector <4 x float> %i.an, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ia = fmul <4 x float> %i.hz, %i.hr
  %i.ib = fadd <4 x float> %i.ia, %i.hv
  %i.ic = fadd <4 x float> %i.ib, %i.hy
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ie = load ptr, ptr %i.id, align 16, !tbaa !16
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 48
  %i.ig = load <3 x float>, ptr %i.if, align 16, !tbaa !18 ; 3 uses
  %i.ih = shufflevector <3 x float> %i.ig, <3 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ii = fmul <4 x float> %i.ih, %i.hq
  %i.ij = shufflevector <3 x float> %i.ig, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ik = fmul <4 x float> %i.ij, %i.hs
  %i.il = fadd <4 x float> %i.ht, %i.ik
  %i.im = shufflevector <3 x float> %i.ig, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.in = fmul <4 x float> %i.im, %i.hr
  %i.io = fadd <4 x float> %i.in, %i.ii
  %i.ip = fadd <4 x float> %i.io, %i.il           ; 5 uses
  %i.iq = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ir = fmul <4 x float> %i.iq, %i.dw
  %i.is = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.it = fmul <4 x float> %i.is, %i.dy
  %i.iu = fadd <4 x float> %i.dz, %i.it
  %i.iv = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.iw = fmul <4 x float> %i.iv, %i.dx
  %i.ix = fadd <4 x float> %i.iw, %i.ir
  %i.iy = fadd <4 x float> %i.ix, %i.iu           ; 4 uses
  %i.iz = fmul <4 x float> %i.ih, %i.dw
  %i.ja = fmul <4 x float> %i.ij, %i.dy
  %i.jb = fadd <4 x float> %i.dz, %i.ja
  %i.jc = fmul <4 x float> %i.im, %i.dx
  %i.jd = fadd <4 x float> %i.jc, %i.iz
  %i.je = fadd <4 x float> %i.jd, %i.jb           ; 3 uses
  %i.jf = fneg <4 x float> %i.ic
  %i.jg = fsub <4 x float> %i.je, %i.iy           ; 2 uses
  %i.jh = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.iy, <4 x float> %i.iy, i8 127) ; 4 uses
  %i.ji = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.jg, <4 x float> %i.jg, i8 127) ; 3 uses
  %i.jj = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.je, <4 x float> %i.je, i8 127)
  %i.jk = load <3 x float>, ptr %0, align 16, !tbaa !18 ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.val4 = load float, ptr %i.jl, align 4, !tbaa !30
  %i.jm = shufflevector <3 x float> %i.jk, <3 x float> poison, <4 x i32> zeroinitializer
  %i.jn = fmul <4 x float> %i.jm, %i.dw
  %i.jo = shufflevector <3 x float> %i.jk, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.jp = fmul <4 x float> %i.jo, %i.dy
  %i.jq = fadd <4 x float> %i.dz, %i.jp
  %i.jr = shufflevector <3 x float> %i.jk, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.js = fmul <4 x float> %i.jr, %i.dx
  %i.jt = fadd <4 x float> %i.jn, %i.js
  %i.ju = fadd <4 x float> %i.jq, %i.jt           ; 4 uses
  %i.jv = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.ju, <4 x float> %i.ju, i8 127) ; 2 uses
  %i.jw = shufflevector <4 x float> %i.jh, <4 x float> %i.ji, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x float> %i.jv, <4 x float> %i.jh, <4 x i32> <i32 0, i32 poison, i32 7, i32 poison>
  %i.jy = shufflevector <4 x float> %i.jw, <4 x float> %i.jx, <4 x i32> <i32 0, i32 1, i32 4, i32 6>
  %i.jz = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.jy) ; 4 uses
  %i.ka = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.kb = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kc = fsub <4 x float> %i.ka, %i.kb
  %i.kd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.kc)
  %i.ke = fadd <4 x float> %i.ka, %i.kb           ; 2 uses
  %i.kf = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %.val4, i64 0
  %i.kg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.kf, <4 x float> splat (float 1.000000e+00))
  %i.kh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.kg)
  %i.ki = fmul <4 x float> %i.kh, %i.ke           ; 4 uses
  %i.kj = fsub <4 x float> %i.ke, %i.ki           ; 4 uses
  %i.kk = shufflevector <4 x float> %i.jz, <4 x float> %i.kj, <4 x i32> <i32 2, i32 2, i32 2, i32 4>
  %i.kl = shufflevector <4 x float> %i.ki, <4 x float> %i.kd, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.km = fcmp olt <4 x float> %i.kl, %i.kk
  %i.kn = bitcast <4 x i1> %i.km to i4
  %i.ko = zext i4 %i.kn to i32                    ; 2 uses
  %i.kp = and i32 %i.ko, 11
  %i.kq = icmp eq i32 %i.kp, 11
  br i1 %i.kq, label %bb.g, label %_ZN3ozz9animation12_GLOBAL__N_112SoftenTargetERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupEPDv4_fS9_.exit

bb.g:                                             ; preds = %bb.f
  %i.kr = shufflevector <4 x float> %i.jz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ks = fsub <4 x float> %i.kr, %i.ki
  %i.kt = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.kj)
  %i.ku = fmul <4 x float> %i.ks, %i.kt
  %i.kv = fadd <4 x float> %i.ku, <float 3.000000e+00, float poison, float poison, float poison>
  %i.kw = shufflevector <4 x float> <float 3.000000e+00, float poison, float poison, float poison>, <4 x float> %i.kv, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.kx = shufflevector <4 x float> %i.kw, <4 x float> <float poison, float poison, float 3.000000e+00, float 3.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ky = fmul <4 x float> %i.kx, %i.kx           ; 2 uses
  %i.kz = fmul <4 x float> %i.ky, %i.ky           ; 2 uses
  %i.la = shufflevector <4 x float> %i.kz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lb = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.la)
  %i.lc = fmul <4 x float> %i.lb, %i.kz
  %i.ld = fadd <4 x float> %i.ki, %i.kj
  %i.le = fneg <4 x float> %i.kj
  %i.lf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lc, <4 x float> %i.ld) ; 3 uses
  %i.lg = fmul <4 x float> %i.lf, %i.lf
  %i.lh = tail call noundef <4 x float> @llvm.x86.sse.rcp.ss(<4 x float> %i.kr)
  %i.li = fmul <4 x float> %i.lh, %i.lf
  %i.lj = shufflevector <4 x float> %i.li, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lk = fmul <4 x float> %i.ju, %i.lj
  br label %_ZN3ozz9animation12_GLOBAL__N_112SoftenTargetERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupEPDv4_fS9_.exit

_ZN3ozz9animation12_GLOBAL__N_112SoftenTargetERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupEPDv4_fS9_.exit: ; preds = %bb.f, %bb.g
  %.027 = phi <4 x float> [ %i.lk, %bb.g ], [ %i.ju, %bb.f ] ; 7 uses
  %.0 = phi <4 x float> [ %i.lg, %bb.g ], [ %i.jv, %bb.f ] ; 4 uses
end_hunk_0
begin_hunk_1_@_ZNK3ozz9animation12IKTwoBoneJob3RunEv:bb.a
  %i.tn = insertelement <4 x float> poison, float %i.tm, i64 0
  %i.to = tail call noundef float @cosf(float noundef %i.tl) #6
  %i.tp = shufflevector <4 x float> %i.tn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tq = fmul <4 x float> %i.sq, %i.tp           ; 2 uses
  %i.tr = insertelement <4 x float> %i.tq, float %i.to, i64 0 ; 2 uses
  %i.ts = shufflevector <4 x float> %i.tq, <4 x float> %i.tr, <4 x i32> <i32 0, i32 1, i32 6, i32 4> ; 3 uses
  %i.tt = shufflevector <4 x float> %i.tr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 2>
  %i.tu = shufflevector <4 x float> %i.tg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.tv = fmul <4 x float> %i.tu, %i.tt
  %i.tw = shufflevector <4 x float> %i.ts, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.tx = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.ty = fmul <4 x float> %i.tx, %i.tw
  %i.tz = shufflevector <4 x float> %i.ts, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ua = shufflevector <4 x float> %i.tg, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.ub = fmul <4 x float> %i.ua, %i.tz
  %i.uc = fadd <4 x float> %i.ub, %i.tv
  %i.ud = shufflevector <4 x float> %i.ts, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.ue = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.uf = fmul <4 x float> %i.ue, %i.ud
  %i.ug = fsub <4 x float> %i.ty, %i.uf
  %i.uh = fadd <4 x float> %i.uc, %i.ug
  %i.ui = bitcast <4 x float> %i.uh to <4 x i32>
  %i.uj = xor <4 x i32> %i.ui, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.uk = bitcast <4 x i32> %i.uj to <4 x float>  ; 4 uses
  %i.ul = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 2>
  %i.um = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.un = fmul <4 x float> %i.um, %i.ul
  %i.uo = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.up = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.uq = fmul <4 x float> %i.up, %i.uo
  %i.ur = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.us = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.ut = fmul <4 x float> %i.us, %i.ur
  %i.uu = fadd <4 x float> %i.ut, %i.un
  %i.uv = shufflevector <4 x float> %i.uk, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.uw = fmul <4 x float> %i.rl, %i.uv
  %i.ux = fsub <4 x float> %i.uq, %i.uw
  %i.uy = fadd <4 x float> %i.uu, %i.ux
  %i.uz = bitcast <4 x float> %i.uy to <4 x i32>
  %i.va = xor <4 x i32> %i.uz, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.vb = bitcast <4 x i32> %i.va to <4 x float>
  br label %_ZN3ozz9animation12_GLOBAL__N_117ComputeStartJointERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionEDv4_fSC_.exit

bb.r:                                             ; preds = %bb.p
  %i.vc = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 2>
  %i.vd = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.ve = fmul <4 x float> %i.vd, %i.vc
  %i.vf = shufflevector <4 x float> %i.tg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.vg = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 0>
  %i.vh = fmul <4 x float> %i.vg, %i.vf
  %i.vi = shufflevector <4 x float> %i.tg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.vj = shufflevector <4 x float> %.sroa.0.0.i.i, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 1>
  %i.vk = fmul <4 x float> %i.vj, %i.vi
  %i.vl = fadd <4 x float> %i.vk, %i.ve
  %i.vm = shufflevector <4 x float> %i.th, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 3>
  %i.vn = fmul <4 x float> %i.rl, %i.vm
  %i.vo = fsub <4 x float> %i.vh, %i.vn
  %i.vp = fadd <4 x float> %i.vl, %i.vo
  %i.vq = bitcast <4 x float> %i.vp to <4 x i32>
  %i.vr = xor <4 x i32> %i.vq, <i32 0, i32 0, i32 0, i32 -2147483648>
  %i.vs = bitcast <4 x i32> %i.vr to <4 x float>
  br label %_ZN3ozz9animation12_GLOBAL__N_117ComputeStartJointERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionEDv4_fSC_.exit

_ZN3ozz9animation12_GLOBAL__N_117ComputeStartJointERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionEDv4_fSC_.exit: ; preds = %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit.i, %bb.q, %bb.r
  %.sroa.040.1.i = phi <4 x float> [ %.sroa.0.0.i.i, %_ZN3ozz4math14SimdQuaternion11FromVectorsEDv4_fS2_.exit.i ], [ %i.vb, %bb.q ], [ %i.vs, %bb.r ] ; 2 uses
  %i.vt = fcmp olt <4 x float> %.sroa.040.1.i, zeroinitializer
  %i.vu = shufflevector <4 x i1> %i.vt, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.vv = bitcast <4 x float> %.sroa.040.1.i to <4 x i32>
  %i.vw = select <4 x i1> %i.vu, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.vx = xor <4 x i32> %i.vw, %i.vv              ; 2 uses
  %i.vy = fcmp olt <4 x float> %i.nh, zeroinitializer
  %i.vz = shufflevector <4 x i1> %i.vy, <4 x i1> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.wa = bitcast <4 x float> %i.nh to <4 x i32>
  %i.wb = select <4 x i1> %i.vz, <4 x i32> splat (i32 -2147483648), <4 x i32> zeroinitializer
  %i.wc = xor <4 x i32> %i.wb, %i.wa              ; 2 uses
  %i.wd = fcmp olt float %i.ab, 1.000000e+00
  br i1 %i.wd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_117ComputeStartJointERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionEDv4_fSC_.exit
  %i.we = bitcast <4 x i32> %i.wc to <4 x float>
  %i.wf = bitcast <4 x i32> %i.vx to <4 x float>
  %i.wg = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.wh = shufflevector <4 x float> %i.wg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wi = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> zeroinitializer, <4 x float> %i.wh) ; 2 uses
  %i.wj = fadd <4 x float> %i.wf, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -1.000000e+00>
  %i.wk = fmul <4 x float> %i.wj, %i.wi
  %i.wl = fadd <4 x float> %i.wk, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.wm = fadd <4 x float> %i.we, <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -1.000000e+00>
  %i.wn = fmul <4 x float> %i.wm, %i.wi
  %i.wo = fadd <4 x float> %i.wn, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 3 uses
  %i.wp = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.wl, <4 x float> %i.wl, i8 -1)
  %i.wq = tail call noundef <4 x float> @llvm.x86.sse41.dpps(<4 x float> %i.wo, <4 x float> %i.wo, i8 -1)
  %i.wr = shufflevector <4 x float> %i.wp, <4 x float> %i.wq, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.ws = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float> %i.wr) ; 3 uses
  %i.wt = fmul <4 x float> %i.ws, splat (float 5.000000e-01)
  %i.wu = fmul <4 x float> %i.ws, %i.wr
  %i.wv = fmul <4 x float> %i.ws, %i.wu
  %i.ww = fsub <4 x float> splat (float 3.000000e+00), %i.wv
  %i.wx = fmul <4 x float> %i.wt, %i.ww           ; 2 uses
  %i.wy = shufflevector <4 x float> %i.wx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.wz = fmul <4 x float> %i.wl, %i.wy
  store <4 x float> %i.wz, ptr %i.j, align 16, !tbaa !18
  %i.xa = shufflevector <4 x float> %i.wx, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.xb = fmul <4 x float> %i.wo, %i.xa
  %i.xc = load ptr, ptr %i.k, align 16, !tbaa !32
  store <4 x float> %i.xb, ptr %i.xc, align 16, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit

bb.t:                                             ; preds = %_ZN3ozz9animation12_GLOBAL__N_117ComputeStartJointERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionEDv4_fSC_.exit
  store <4 x i32> %i.vx, ptr %i.j, align 16, !tbaa !18
  %i.xd = load ptr, ptr %i.k, align 16, !tbaa !32
  store <4 x i32> %i.wc, ptr %i.xd, align 16, !tbaa !18
  br label %_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit

_ZN3ozz9animation12_GLOBAL__N_112WeightOutputERKNS0_12IKTwoBoneJobERKNS1_15IKConstantSetupERKNS_4math14SimdQuaternionESB_.exit: ; preds = %bb.t, %bb.s, %bb.d, %bb.e, %_ZNK3ozz9animation12IKTwoBoneJob8ValidateEv.exit
  ret i1 %i.z
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse41.dpps(<4 x float>, <4 x float>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.cmp.ss(<4 x float>, <4 x float>, i8 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ps(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.sqrt.v4f32(<4 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.max.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.min.ps(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rcp.ss(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float>) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <4 x float> @llvm.x86.sse.rsqrt.ps(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }

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
!14 = !{!"_ZTSN3ozz9animation12IKTwoBoneJobE", !5, i64 0, !5, i64 16, !5, i64 32, !9, i64 48, !9, i64 52, !9, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !12, i64 88, !12, i64 96, !13, i64 104}
!15 = !{!14, !11, i64 64}
!16 = !{!14, !11, i64 80}
!17 = !{!14, !12, i64 88}
!18 = !{!5, !5, i64 0}
!23 = !{!14, !9, i64 56}
!24 = !{i64 0, i64 16, !18}
!25 = !{!14, !13, i64 104}
!26 = !{!"bool", !5, i64 0}
!27 = !{!26, !26, i64 0}
!30 = !{!14, !9, i64 52}
!31 = !{!14, !9, i64 48}
!32 = !{!14, !12, i64 96}
!33 = distinct !{!33, i1 false, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x"}
!34 = distinct !{!34, !33, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x: argument 0"}
!35 = !{!34}
!36 = distinct !{!36, i1 false, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x"}
!37 = distinct !{!37, !36, !"_ZN3ozz4math6InvertERKNS0_8Float4x4EPDv2_x: argument 0"}
!38 = !{!37}
end_hunk_1
