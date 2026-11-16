Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/primrefgen?download=true
inline.NumInlined: 3236
inline.NumDeleted: 275
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_ZZN6embree4sse221createMortonCodeArrayINS_8InstanceEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  %i.og = or <2 x i64> %i.oa, %i.of
  %i.oh = and <2 x i64> %i.og, splat (i64 216173877380776191) ; 2 uses
  %i.oi = bitcast <2 x i64> %i.oh to <4 x i32>
  %i.oj = shl <4 x i32> %i.oi, splat (i32 8)
  %i.ok = bitcast <4 x i32> %i.oj to <2 x i64>
  %i.ol = or disjoint <2 x i64> %i.oh, %i.ok
  %i.om = and <2 x i64> %i.ol, splat (i64 216436729379352591) ; 2 uses
  %i.on = bitcast <2 x i64> %i.om to <4 x i32>
  %i.oo = shl nuw nsw <4 x i32> %i.on, splat (i32 4)
  %i.op = bitcast <4 x i32> %i.oo to <2 x i64>
  %i.oq = or disjoint <2 x i64> %i.om, %i.op
  %i.or = and <2 x i64> %i.oq, splat (i64 219604095962198211) ; 2 uses
  %i.os = bitcast <2 x i64> %i.or to <4 x i32>
  %i.ot = shl nuw nsw <4 x i32> %i.os, splat (i32 2)
  %i.ou = bitcast <4 x i32> %i.ot to <2 x i64>
  %i.ov = or disjoint <2 x i64> %i.or, %i.ou
  %i.ow = and <2 x i64> %i.ov, splat (i64 658812287886594633)
  %i.ox = bitcast <2 x i64> %i.ob to <4 x i32>
  %i.oy = shl <4 x i32> %i.ox, splat (i32 16)
  %i.oz = bitcast <4 x i32> %i.oy to <2 x i64>
  %i.pa = or <2 x i64> %i.ob, %i.oz
  %i.pb = and <2 x i64> %i.pa, splat (i64 216173877380776191) ; 2 uses
  %i.pc = bitcast <2 x i64> %i.pb to <4 x i32>
  %i.pd = shl <4 x i32> %i.pc, splat (i32 8)
  %i.pe = bitcast <4 x i32> %i.pd to <2 x i64>
  %i.pf = or disjoint <2 x i64> %i.pb, %i.pe
  %i.pg = and <2 x i64> %i.pf, splat (i64 216436729379352591) ; 2 uses
  %i.ph = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pi = shl nuw nsw <4 x i32> %i.ph, splat (i32 4)
  %i.pj = bitcast <2 x i64> %i.pg to <4 x i32>
  %i.pk = or disjoint <4 x i32> %i.pi, %i.pj
  %i.pl = and <4 x i32> %i.pk, splat (i32 51130563) ; 2 uses
  %i.pm = bitcast <2 x i64> %i.oc to <4 x i32>
  %i.pn = shl <4 x i32> %i.pm, splat (i32 16)
  %i.po = bitcast <4 x i32> %i.pn to <2 x i64>
  %i.pp = or <2 x i64> %i.oc, %i.po
  %i.pq = and <2 x i64> %i.pp, splat (i64 216173877380776191) ; 2 uses
  %i.pr = bitcast <2 x i64> %i.pq to <4 x i32>
  %i.ps = shl <4 x i32> %i.pr, splat (i32 8)
  %i.pt = bitcast <4 x i32> %i.ps to <2 x i64>
  %i.pu = or disjoint <2 x i64> %i.pq, %i.pt
  %i.pv = and <2 x i64> %i.pu, splat (i64 216436729379352591) ; 2 uses
  %i.pw = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.px = shl nuw nsw <4 x i32> %i.pw, splat (i32 4)
  %i.py = bitcast <2 x i64> %i.pv to <4 x i32>
  %i.pz = or disjoint <4 x i32> %i.px, %i.py
  %i.qa = and <4 x i32> %i.pz, splat (i32 51130563) ; 2 uses
  %i.qb = shl nuw nsw <4 x i32> %i.pl, splat (i32 3)
  %i.qc = shl nuw nsw <4 x i32> %i.pl, splat (i32 1)
  %i.qd = or disjoint <4 x i32> %i.qb, %i.qc
  %i.qe = bitcast <4 x i32> %i.qd to <2 x i64>
  %i.qf = and <2 x i64> %i.qe, splat (i64 1317624575773189266)
  %i.qg = or disjoint <2 x i64> %i.qf, %i.ow
  %i.qh = shl nuw nsw <4 x i32> %i.qa, splat (i32 4)
  %i.qi = shl nuw nsw <4 x i32> %i.qa, splat (i32 2)
  %i.qj = or disjoint <4 x i32> %i.qh, %i.qi
  %i.qk = bitcast <4 x i32> %i.qj to <2 x i64>
  %i.ql = and <2 x i64> %i.qk, splat (i64 2635249151546378532)
  %i.qm = or disjoint <2 x i64> %i.qg, %i.ql
  %i.qn = getelementptr [8 x i8], ptr %i.f, i64 %i.ny ; 2 uses
  %i.qo = getelementptr i8, ptr %i.qn, i64 -32
  %i.qp = bitcast <2 x i64> %i.qm to <4 x float>  ; 2 uses
  %i.qq = load <4 x float>, ptr %i.m, align 16, !noalias !1634 ; 2 uses
  %i.qr = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.qr, ptr %i.qo, align 1
  %i.qs = getelementptr i8, ptr %i.qn, i64 -16
  %i.qt = shufflevector <4 x float> %i.qp, <4 x float> %i.qq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.qt, ptr %i.qs, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.qu = phi i64 [ 0, %.noexc20 ], [ %i.nx, %.noexc15 ]
  %i.qv = add i64 %.01212, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.qw = phi i64 [ %i.ny, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ef, %bb.b ] ; 2 uses
  %i.qx = phi i64 [ %i.qu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ee, %bb.b ] ; 10 uses
  %.1 = phi i64 [ %i.qv, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01212, %bb.b ] ; 3 uses
  %i.qy = add nuw i64 %.0111211, 1                ; 2 uses
  %i.qz = load i64, ptr %i.o, align 8
  %i.ra = icmp ult i64 %i.qy, %i.qz
  br i1 %i.ra, label %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit, label %._crit_edge, !llvm.loop !1617
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE_clESH_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %2, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp ult i64 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !28, !align !29
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.h, null                ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 160 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, %bb.a
  %.0615.lcssa = phi i64 [ 0, %bb.a ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  %.sroa.6.0.lcssa = phi <4 x float> [ splat (float -inf), %bb.a ], [ %.sroa.6.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  %.sroa.014.0.lcssa = phi <4 x float> [ splat (float +inf), %bb.a ], [ %.sroa.014.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ]
  store i64 %.0615.lcssa, ptr %0, align 16, !alias.scope !1644
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x float> %.sroa.014.0.lcssa, ptr %i.n, align 16, !alias.scope !1644
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <4 x float> %.sroa.6.0.lcssa, ptr %i.o, align 16, !alias.scope !1644
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.0625 = phi i64 [ %i.a, %.lr.ph ], [ %i.qq, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 11 uses
  %.sroa.014.0624 = phi <4 x float> [ splat (float +inf), %.lr.ph ], [ %.sroa.014.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.sroa.6.0623 = phi <4 x float> [ splat (float -inf), %.lr.ph ], [ %.sroa.6.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.0615622 = phi i64 [ 0, %.lr.ph ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray5validEm.exit, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

_ZNK6embree13InstanceArray5validEm.exit:          ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8
  %i.q = load i64, ptr %i.j, align 8
  %i.r = mul i64 %i.q, %.0625
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.t, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread, !prof !39

_ZNK6embree13InstanceArray5validEm.exit.i.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit, %bb.b
  %i.u = load i32, ptr %i.k, align 4, !noalias !1645
  %i.v = and i32 %i.u, 65280
  %i.w = icmp eq i32 %i.v, 256
  %i.x = load ptr, ptr %i.l, align 8, !noalias !1645 ; 17 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8, !noalias !1645 ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.h, !prof !31

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.z, label %_ZNK6embree13InstanceArray3l2wEmm.exit [
    i32 37444, label %bb.d
    i32 45057, label %bb.e
    i32 37428, label %bb.f
    i32 37172, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !1646
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !1646
  %i.ad = mul i64 %i.ac, %.0625
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = load <4 x float>, ptr %i.ae, align 16, !noalias !1645
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ah = load <4 x float>, ptr %i.ag, align 16, !noalias !1645
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.aj = load <4 x float>, ptr %i.ai, align 16, !noalias !1645
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.al = load <4 x float>, ptr %i.ak, align 16, !noalias !1645
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.e:                                             ; preds = %bb.c
  %i.am = load ptr, ptr %i.x, align 8, !noalias !1645
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !noalias !1645
  %i.ap = mul i64 %i.ao, %.0625
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ap ; 12 uses
  %i.ar = load float, ptr %i.aq, align 16, !noalias !1645
  %.sroa.0169.0.vec.insert = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.at = load float, ptr %i.as, align 4, !noalias !1645
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.av = load float, ptr %i.au, align 8, !noalias !1645
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ax = load float, ptr %i.aw, align 4, !noalias !1645
  %i.ay = insertelement <4 x float> poison, float %i.ax, i64 0
  %.sroa.11172.16.vec.insert = insertelement <4 x float> %i.ay, float %i.at, i64 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ba = load <2 x float>, ptr %i.az, align 16, !noalias !1645
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20175.36.vec.insert = insertelement <4 x float> %i.bb, float %i.av, i64 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !noalias !1645
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0169.8.vec.insert718 = shufflevector <4 x float> %.sroa.0169.0.vec.insert, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 60
  %i.bg = load float, ptr %i.bf, align 4, !noalias !1645
  %.sroa.11172.24.vec.insert = insertelement <4 x float> %.sroa.11172.16.vec.insert, float %i.bg, i64 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.bm = load float, ptr %i.bl, align 16, !noalias !1645 ; 3 uses
  %i.bn = load float, ptr %i.bi, align 4, !noalias !1645 ; 2 uses
  %i.bo = load <4 x float>, ptr %i.bh, align 8, !noalias !1645 ; 2 uses
  %i.bp = load float, ptr %i.bj, align 8, !noalias !1645 ; 3 uses
  %i.bq = load float, ptr %i.bk, align 4, !noalias !1645 ; 3 uses
  %i.br = fmul float %i.bp, %i.bp
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.br)
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bm, float %i.bm, float %i.bt) ; 2 uses
  %i.bv = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bw = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.bv) ; 3 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0 ; 2 uses
  %i.by = fmul float %i.bx, 1.500000e+00
  %i.bz = fmul float %i.bu, 5.000000e-01
  %i.ca = fmul float %i.bx, %i.bz
  %foldExtExtBinop = fmul <4 x float> %i.bw, %i.bw
  %i.cb = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.cc = fmul float %i.cb, %i.ca
  %i.cd = fsub float %i.by, %i.cc                 ; 4 uses
  %i.ce = insertelement <4 x float> poison, float %i.cd, i64 3
  %i.cf = fmul <4 x float> %i.bo, %i.ce
  %3 = shufflevector <4 x float> %i.bo, <4 x float> %i.cf, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.cg = fmul float %i.bp, %i.cd
  %i.ch = fmul float %i.bq, %i.cd
  %i.ci = fmul float %i.bm, %i.cd
  %.sroa.0169.12.vec.insert = insertelement <4 x float> %.sroa.0169.8.vec.insert718, float %i.cg, i64 3
  %.sroa.11172.28.vec.insert = insertelement <4 x float> %.sroa.11172.24.vec.insert, float %i.ch, i64 3
  %.sroa.20175.44.vec.insert = insertelement <4 x float> %.sroa.20175.36.vec.insert, float %i.ci, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.f:                                             ; preds = %bb.c
  %i.cj = load ptr, ptr %i.x, align 8, !noalias !1646
  %i.ck = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !1646
  %i.cm = mul i64 %i.cl, %.0625
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load <2 x float>, ptr %i.co, align 4, !noalias !1645
  %i.cq = load float, ptr %i.cn, align 4, !noalias !1645
  %i.cr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cq, i64 0
  %i.cs = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cw = load <2 x float>, ptr %i.cv, align 4, !noalias !1645
  %i.cx = load float, ptr %i.cu, align 4, !noalias !1645
  %i.cy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.cx, i64 0
  %i.cz = shufflevector <2 x float> %i.cw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.da = shufflevector <4 x float> %i.cy, <4 x float> %i.cz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.db = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 28
  %i.dd = load <2 x float>, ptr %i.dc, align 4, !noalias !1645
  %i.de = load float, ptr %i.db, align 4, !noalias !1645
  %i.df = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.de, i64 0
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dh = shufflevector <4 x float> %i.df, <4 x float> %i.dg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.di = getelementptr inbounds nuw i8, ptr %i.cn, i64 36
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !noalias !1645
  %i.dl = load float, ptr %i.di, align 4, !noalias !1645
  %i.dm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dl, i64 0
  %i.dn = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.do = shufflevector <4 x float> %i.dm, <4 x float> %i.dn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

bb.g:                                             ; preds = %bb.c
  %i.dp = load ptr, ptr %i.x, align 8, !noalias !1646
  %i.dq = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.dr = load i64, ptr %i.dq, align 8, !noalias !1646
  %i.ds = mul i64 %i.dr, %.0625
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ds ; 12 uses
  %i.du = load float, ptr %i.dt, align 4, !noalias !1646
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dw = load float, ptr %i.dv, align 4, !noalias !1646
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dy = load float, ptr %i.dx, align 4, !noalias !1646
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.ea = load float, ptr %i.dz, align 4, !noalias !1646
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.ec = load float, ptr %i.eb, align 4, !noalias !1646
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.ee = load float, ptr %i.ed, align 4, !noalias !1646
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.eg = load float, ptr %i.ef, align 4, !noalias !1646
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 28
  %i.ei = load float, ptr %i.eh, align 4, !noalias !1646
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.ek = load float, ptr %i.ej, align 4, !noalias !1646
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  %i.em = load float, ptr %i.el, align 4, !noalias !1646
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.eo = load float, ptr %i.en, align 4, !noalias !1646
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  %i.eq = load float, ptr %i.ep, align 4, !noalias !1646
  %i.er = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.du, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.ec, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.ek, i64 2
  %i.eu = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dw, i64 0
  %i.ev = insertelement <4 x float> %i.eu, float %i.ee, i64 1
  %i.ew = insertelement <4 x float> %i.ev, float %i.em, i64 2
  %i.ex = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dy, i64 0
  %i.ey = insertelement <4 x float> %i.ex, float %i.eg, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.eo, i64 2
  %i.fa = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ea, i64 0
  %i.fb = insertelement <4 x float> %i.fa, float %i.ei, i64 1
  %i.fc = insertelement <4 x float> %i.fb, float %i.eq, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit

_ZNK6embree13InstanceArray3l2wEmm.exit:           ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sroa.0169.0 = phi <4 x float> [ %i.af, %bb.d ], [ %.sroa.0169.12.vec.insert, %bb.e ], [ %i.ct, %bb.f ], [ %i.et, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.11172.0 = phi <4 x float> [ %i.ah, %bb.d ], [ %.sroa.11172.28.vec.insert, %bb.e ], [ %i.da, %bb.f ], [ %i.ew, %bb.g ], [ undef, %bb.c ] ; 6 uses
  %.sroa.20175.0 = phi <4 x float> [ %i.aj, %bb.d ], [ %.sroa.20175.44.vec.insert, %bb.e ], [ %i.dh, %bb.f ], [ %i.ez, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29178.0 = phi <4 x float> [ %i.al, %bb.d ], [ %3, %bb.e ], [ %i.do, %bb.f ], [ %i.fc, %bb.g ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29178.60.vec.extract = extractelement <4 x float> %.sroa.29178.0, i64 3 ; 7 uses
  %.sroa.0169.12.vec.extract = extractelement <4 x float> %.sroa.0169.0, i64 3 ; 7 uses
  %.sroa.11172.28.vec.extract = extractelement <4 x float> %.sroa.11172.0, i64 3 ; 7 uses
  %.sroa.20175.44.vec.extract = extractelement <4 x float> %.sroa.20175.0, i64 3 ; 6 uses
  %.sroa.17320.52.vec.insert = shufflevector <4 x float> %.sroa.0169.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17320.56.vec.insert = shufflevector <4 x float> %.sroa.17320.52.vec.insert, <4 x float> %.sroa.11172.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.fd = fmul float %.sroa.0169.12.vec.extract, %.sroa.0169.12.vec.extract
  %i.fe = tail call float @llvm.fmuladd.f32(float %.sroa.29178.60.vec.extract, float %.sroa.29178.60.vec.extract, float %i.fd)
  %i.ff = fneg float %.sroa.11172.28.vec.extract  ; 3 uses
  %i.fg = tail call float @llvm.fmuladd.f32(float %i.ff, float %.sroa.11172.28.vec.extract, float %i.fe)
  %i.fh = fneg float %.sroa.20175.44.vec.extract  ; 3 uses
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.fh, float %.sroa.20175.44.vec.extract, float %i.fg)
  %i.fj = fmul float %.sroa.20175.44.vec.extract, %.sroa.29178.60.vec.extract
  %i.fk = tail call float @llvm.fmuladd.f32(float %.sroa.0169.12.vec.extract, float %.sroa.11172.28.vec.extract, float %i.fj)
  %i.fl = fmul float %i.fk, 2.000000e+00
  %i.fm = fmul float %.sroa.29178.60.vec.extract, %i.ff
  %i.fn = tail call float @llvm.fmuladd.f32(float %.sroa.0169.12.vec.extract, float %.sroa.20175.44.vec.extract, float %i.fm)
  %i.fo = fmul float %i.fn, 2.000000e+00
  %i.fp = fmul float %.sroa.29178.60.vec.extract, %i.fh
  %i.fq = tail call float @llvm.fmuladd.f32(float %.sroa.0169.12.vec.extract, float %.sroa.11172.28.vec.extract, float %i.fp)
  %i.fr = fmul float %i.fq, 2.000000e+00
  %i.fs = fneg float %.sroa.0169.12.vec.extract   ; 2 uses
  %i.ft = fmul float %.sroa.0169.12.vec.extract, %i.fs
  %i.fu = tail call float @llvm.fmuladd.f32(float %.sroa.29178.60.vec.extract, float %.sroa.29178.60.vec.extract, float %i.ft) ; 2 uses
  %i.fv = tail call float @llvm.fmuladd.f32(float %.sroa.11172.28.vec.extract, float %.sroa.11172.28.vec.extract, float %i.fu)
  %i.fw = shufflevector <4 x float> %.sroa.29178.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.fx = shufflevector <4 x float> %.sroa.0169.0, <4 x float> %.sroa.11172.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.fy = insertelement <4 x float> %i.fx, float %i.fv, i64 0
  %i.fz = insertelement <4 x float> %i.fy, float %i.fs, i64 3
  %i.ga = fmul <4 x float> %i.fw, %i.fz
  %i.gb = shufflevector <4 x float> %.sroa.11172.0, <4 x float> %.sroa.0169.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.gc = insertelement <4 x float> %i.gb, float %i.fh, i64 0
  %i.gd = shufflevector <4 x float> %.sroa.20175.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ge = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %i.gd, <4 x float> %i.ga) ; 3 uses
  %i.gf = extractelement <4 x float> %i.ge, i64 1
  %i.gg = fmul float %i.gf, 2.000000e+00
  %i.gh = shufflevector <4 x float> %i.ge, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gi = fmul <2 x float> %i.gh, splat (float 2.000000e+00) ; 2 uses
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.ff, float %.sroa.11172.28.vec.extract, float %i.fu)
  %i.gk = tail call float @llvm.fmuladd.f32(float %.sroa.20175.44.vec.extract, float %.sroa.20175.44.vec.extract, float %i.gj)
  %i.gl = insertelement <4 x float> poison, float %i.fi, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gn = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gr = fmul <4 x float> %i.gq, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.gs = fmul <4 x float> %i.go, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gt = fadd <4 x float> %i.gs, %i.gr
  %i.gu = fmul <4 x float> %i.gm, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.gv = fadd <4 x float> %i.gu, %i.gt           ; 4 uses
  %i.gw = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gy = shufflevector <4 x float> %i.ge, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gz = insertelement <4 x float> poison, float %i.gg, i64 0
  %i.ha = shufflevector <4 x float> %i.gz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hb = fmul <4 x float> %i.ha, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hc = fmul <4 x float> %i.gy, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hd = fadd <4 x float> %i.hc, %i.hb
  %i.he = fmul <4 x float> %i.gx, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hf = fadd <4 x float> %i.he, %i.hd           ; 4 uses
  %i.hg = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> zeroinitializer
  %i.hh = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hi = insertelement <4 x float> poison, float %i.gk, i64 0
  %i.hj = shufflevector <4 x float> %i.hi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hk = fmul <4 x float> %i.hj, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.hl = fmul <4 x float> %i.hh, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.hm = fadd <4 x float> %i.hl, %i.hk
  %i.hn = fmul <4 x float> %i.hg, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ho = fadd <4 x float> %i.hn, %i.hm           ; 3 uses
  %i.hp = fadd <4 x float> %.sroa.17320.56.vec.insert, zeroinitializer
  %i.hq = shufflevector <4 x float> %.sroa.0169.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hr = fmul <4 x float> %i.ho, zeroinitializer ; 2 uses
  %i.hs = fmul <4 x float> %i.hf, zeroinitializer
  %i.ht = fadd <4 x float> %i.hs, %i.hr
  %i.hu = fmul <4 x float> %i.hq, %i.gv
  %i.hv = fadd <4 x float> %i.hu, %i.ht           ; 2 uses
  %i.hw = shufflevector <4 x float> %.sroa.11172.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hx = shufflevector <4 x float> %.sroa.11172.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hy = fmul <4 x float> %i.hx, %i.hf
  %i.hz = fadd <4 x float> %i.hy, %i.hr
  %i.ia = fmul <4 x float> %i.hw, %i.gv
  %i.ib = fadd <4 x float> %i.ia, %i.hz           ; 2 uses
  %i.ic = shufflevector <4 x float> %.sroa.20175.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.id = shufflevector <4 x float> %.sroa.20175.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ie = shufflevector <4 x float> %.sroa.20175.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.if = fmul <4 x float> %i.ie, %i.ho
  %i.ig = fmul <4 x float> %i.id, %i.hf
  %i.ih = fadd <4 x float> %i.ig, %i.if
  %i.ii = fmul <4 x float> %i.ic, %i.gv
  %i.ij = fadd <4 x float> %i.ii, %i.ih           ; 2 uses
  %i.ik = shufflevector <4 x float> %.sroa.29178.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.il = shufflevector <4 x float> %.sroa.29178.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.im = shufflevector <4 x float> %.sroa.29178.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.in = fmul <4 x float> %i.im, %i.ho
  %i.io = fmul <4 x float> %i.il, %i.hf
  %i.ip = fadd <4 x float> %i.io, %i.in
  %i.iq = fmul <4 x float> %i.ik, %i.gv
  %i.ir = fadd <4 x float> %i.iq, %i.ip
  %i.is = fadd <4 x float> %i.hp, %i.ir           ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

bb.h:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.z, label %_ZNK6embree13InstanceArray3l2wEmm.exit6 [
    i32 37444, label %bb.i
    i32 45057, label %bb.j
    i32 37428, label %bb.k
    i32 37172, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h
  %i.it = load ptr, ptr %i.x, align 8, !noalias !1647
  %i.iu = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.iv = load i64, ptr %i.iu, align 8, !noalias !1647
  %i.iw = mul i64 %i.iv, %.0625
  %i.ix = getelementptr inbounds nuw i8, ptr %i.it, i64 %i.iw ; 4 uses
  %i.iy = load <4 x float>, ptr %i.ix, align 16, !noalias !1645
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !noalias !1645
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.jc = load <4 x float>, ptr %i.jb, align 16, !noalias !1645
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.je = load <4 x float>, ptr %i.jd, align 16, !noalias !1645
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.j:                                             ; preds = %bb.h
  %i.jf = load ptr, ptr %i.x, align 8, !noalias !1645
  %i.jg = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.jh = load i64, ptr %i.jg, align 8, !noalias !1645
  %i.ji = mul i64 %i.jh, %.0625
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jf, i64 %i.ji ; 12 uses
  %i.jk = load float, ptr %i.jj, align 16, !noalias !1645
  %.sroa.097.0.vec.insert = insertelement <4 x float> poison, float %i.jk, i64 0
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jm = load float, ptr %i.jl, align 4, !noalias !1645
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  %i.jo = load float, ptr %i.jn, align 8, !noalias !1645
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  %i.jq = load float, ptr %i.jp, align 4, !noalias !1645
  %i.jr = insertelement <4 x float> poison, float %i.jq, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.jr, float %i.jm, i64 1
  %i.js = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jt = load <2 x float>, ptr %i.js, align 16, !noalias !1645
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.ju, float %i.jo, i64 2
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jj, i64 52
  %i.jw = load <2 x float>, ptr %i.jv, align 4, !noalias !1645
  %i.jx = shufflevector <2 x float> %i.jw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.097.8.vec.insert719 = shufflevector <4 x float> %.sroa.097.0.vec.insert, <4 x float> %i.jx, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jj, i64 60
  %i.jz = load float, ptr %i.jy, align 4, !noalias !1645
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.jz, i64 2
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jj, i64 36
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 40
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jj, i64 44
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jj, i64 48
  %i.kf = load float, ptr %i.ke, align 16, !noalias !1645 ; 3 uses
  %i.kg = load float, ptr %i.kb, align 4, !noalias !1645 ; 2 uses
  %i.kh = load <4 x float>, ptr %i.ka, align 8, !noalias !1645 ; 2 uses
  %i.ki = load float, ptr %i.kc, align 8, !noalias !1645 ; 3 uses
  %i.kj = load float, ptr %i.kd, align 4, !noalias !1645 ; 3 uses
  %i.kk = fmul float %i.ki, %i.ki
  %i.kl = tail call float @llvm.fmuladd.f32(float %i.kg, float %i.kg, float %i.kk)
  %i.km = tail call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.kl)
  %i.kn = tail call float @llvm.fmuladd.f32(float %i.kf, float %i.kf, float %i.km) ; 2 uses
  %i.ko = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.kp = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.ko) ; 3 uses
  %i.kq = extractelement <4 x float> %i.kp, i64 0 ; 2 uses
  %i.kr = fmul float %i.kq, 1.500000e+00
  %i.ks = fmul float %i.kn, 5.000000e-01
  %i.kt = fmul float %i.kq, %i.ks
  %foldExtExtBinop721 = fmul <4 x float> %i.kp, %i.kp
  %i.ku = extractelement <4 x float> %foldExtExtBinop721, i64 0
  %i.kv = fmul float %i.ku, %i.kt
  %i.kw = fsub float %i.kr, %i.kv                 ; 4 uses
  %i.kx = insertelement <4 x float> poison, float %i.kw, i64 3
  %i.ky = fmul <4 x float> %i.kh, %i.kx
  %4 = shufflevector <4 x float> %i.kh, <4 x float> %i.ky, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.kz = fmul float %i.ki, %i.kw
  %i.la = fmul float %i.kj, %i.kw
  %i.lb = fmul float %i.kf, %i.kw
  %.sroa.097.12.vec.insert = insertelement <4 x float> %.sroa.097.8.vec.insert719, float %i.kz, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.la, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.lb, i64 3
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.k:                                             ; preds = %bb.h
  %i.lc = load ptr, ptr %i.x, align 8, !noalias !1647
  %i.ld = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.le = load i64, ptr %i.ld, align 8, !noalias !1647
  %i.lf = mul i64 %i.le, %.0625
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.lf ; 8 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 4
  %i.li = load <2 x float>, ptr %i.lh, align 4, !noalias !1645
  %i.lj = load float, ptr %i.lg, align 4, !noalias !1645
  %i.lk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lj, i64 0
  %i.ll = shufflevector <2 x float> %i.li, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lm = shufflevector <4 x float> %i.lk, <4 x float> %i.ll, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lg, i64 12
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lg, i64 16
  %i.lp = load <2 x float>, ptr %i.lo, align 4, !noalias !1645
  %i.lq = load float, ptr %i.ln, align 4, !noalias !1645
  %i.lr = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lq, i64 0
  %i.ls = shufflevector <2 x float> %i.lp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.lt = shufflevector <4 x float> %i.lr, <4 x float> %i.ls, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lg, i64 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lg, i64 28
  %i.lw = load <2 x float>, ptr %i.lv, align 4, !noalias !1645
  %i.lx = load float, ptr %i.lu, align 4, !noalias !1645
  %i.ly = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.lx, i64 0
  %i.lz = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ma = shufflevector <4 x float> %i.ly, <4 x float> %i.lz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lg, i64 36
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lg, i64 40
  %i.md = load <2 x float>, ptr %i.mc, align 4, !noalias !1645
  %i.me = load float, ptr %i.mb, align 4, !noalias !1645
  %i.mf = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.me, i64 0
  %i.mg = shufflevector <2 x float> %i.md, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mh = shufflevector <4 x float> %i.mf, <4 x float> %i.mg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

bb.l:                                             ; preds = %bb.h
  %i.mi = load ptr, ptr %i.x, align 8, !noalias !1647
  %i.mj = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.mk = load i64, ptr %i.mj, align 8, !noalias !1647
  %i.ml = mul i64 %i.mk, %.0625
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 %i.ml ; 12 uses
  %i.mn = load float, ptr %i.mm, align 4, !noalias !1647
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  %i.mp = load float, ptr %i.mo, align 4, !noalias !1647
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mr = load float, ptr %i.mq, align 4, !noalias !1647
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mm, i64 12
  %i.mt = load float, ptr %i.ms, align 4, !noalias !1647
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mv = load float, ptr %i.mu, align 4, !noalias !1647
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  %i.mx = load float, ptr %i.mw, align 4, !noalias !1647
  %i.my = getelementptr inbounds nuw i8, ptr %i.mm, i64 24
  %i.mz = load float, ptr %i.my, align 4, !noalias !1647
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 28
  %i.nb = load float, ptr %i.na, align 4, !noalias !1647
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mm, i64 32
  %i.nd = load float, ptr %i.nc, align 4, !noalias !1647
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mm, i64 36
  %i.nf = load float, ptr %i.ne, align 4, !noalias !1647
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mm, i64 40
  %i.nh = load float, ptr %i.ng, align 4, !noalias !1647
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mm, i64 44
  %i.nj = load float, ptr %i.ni, align 4, !noalias !1647
  %i.nk = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mn, i64 0
  %i.nl = insertelement <4 x float> %i.nk, float %i.mv, i64 1
  %i.nm = insertelement <4 x float> %i.nl, float %i.nd, i64 2
  %i.nn = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mp, i64 0
  %i.no = insertelement <4 x float> %i.nn, float %i.mx, i64 1
  %i.np = insertelement <4 x float> %i.no, float %i.nf, i64 2
  %i.nq = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mr, i64 0
  %i.nr = insertelement <4 x float> %i.nq, float %i.mz, i64 1
  %i.ns = insertelement <4 x float> %i.nr, float %i.nh, i64 2
  %i.nt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mt, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.nb, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.nj, i64 2
  br label %_ZNK6embree13InstanceArray3l2wEmm.exit6

_ZNK6embree13InstanceArray3l2wEmm.exit6:          ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %.sroa.26.0 = phi <4 x float> [ %i.je, %bb.i ], [ %4, %bb.j ], [ %i.mh, %bb.k ], [ %i.nv, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.jc, %bb.i ], [ %.sroa.18.44.vec.insert, %bb.j ], [ %i.ma, %bb.k ], [ %i.ns, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.ja, %bb.i ], [ %.sroa.10.28.vec.insert, %bb.j ], [ %i.lt, %bb.k ], [ %i.np, %bb.l ], [ undef, %bb.h ] ; 2 uses
  %.sroa.097.0 = phi <4 x float> [ %i.iy, %bb.i ], [ %.sroa.097.12.vec.insert, %bb.j ], [ %i.lm, %bb.k ], [ %i.nm, %bb.l ], [ undef, %bb.h ] ; 2 uses
  br i1 %.not.i, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split: ; preds = %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.sroa.18.0.sink697.ph = phi <4 x float> [ %i.ij, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sroa.26.0.sink695.ph = phi <4 x float> [ %i.is, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sroa.10.0.sink693.ph = phi <4 x float> [ %i.ib, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %.sroa.097.0.sink689.ph = phi <4 x float> [ %i.hv, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.097.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ]
  %i.nw = load ptr, ptr %i.i, align 8, !noalias !1645
  %i.nx = load i64, ptr %i.j, align 8, !noalias !1645
  %i.ny = mul i64 %i.nx, %.0625
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !noalias !1645 ; 2 uses
  %i.ob = icmp ne i32 %i.oa, -1
  tail call void @llvm.assume(i1 %i.ob)
  %i.oc = load ptr, ptr %i.m, align 16, !noalias !1645
  %i.od = zext i32 %i.oa to i64
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %i.od
  %i.of = load ptr, ptr %i.oe, align 8, !noalias !1645
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, %_ZNK6embree13InstanceArray3l2wEmm.exit6, %_ZNK6embree13InstanceArray3l2wEmm.exit
  %.0.i10.sink710 = phi ptr [ %i.h, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %i.h, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %i.of, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 4 uses
  %.sroa.18.0.sink697 = phi <4 x float> [ %i.ij, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.18.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sroa.18.0.sink697.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sroa.26.0.sink695 = phi <4 x float> [ %i.is, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.26.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sroa.26.0.sink695.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sroa.10.0.sink693 = phi <4 x float> [ %i.ib, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.10.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sroa.10.0.sink693.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sroa.097.0.sink689 = phi <4 x float> [ %i.hv, %_ZNK6embree13InstanceArray3l2wEmm.exit ], [ %.sroa.097.0, %_ZNK6embree13InstanceArray3l2wEmm.exit6 ], [ %.sroa.097.0.sink689.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0.i10.sink710, i64 16
  %i.oh = getelementptr inbounds nuw i8, ptr %.0.i10.sink710, i64 48
  %i.oi = load <4 x float>, ptr %i.og, align 16, !noalias !1645
  %i.oj = load <4 x float>, ptr %i.oh, align 16, !noalias !1645
  %i.ok = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oi, <4 x float> %i.oj) ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.0.i10.sink710, i64 32
  %i.om = getelementptr inbounds nuw i8, ptr %.0.i10.sink710, i64 64
  %i.on = load <4 x float>, ptr %i.ol, align 16, !noalias !1645
  %i.oo = load <4 x float>, ptr %i.om, align 16, !noalias !1645
  %i.op = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.on, <4 x float> %i.oo) ; 3 uses
  %i.oq = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> zeroinitializer
  %i.or = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.os = shufflevector <4 x float> %i.ok, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ot = fmul <4 x float> %.sroa.18.0.sink697, %i.os
  %i.ou = fadd <4 x float> %.sroa.26.0.sink695, %i.ot ; 2 uses
  %i.ov = fmul <4 x float> %.sroa.10.0.sink693, %i.or ; 2 uses
  %i.ow = fadd <4 x float> %i.ov, %i.ou           ; 2 uses
  %i.ox = fmul <4 x float> %.sroa.097.0.sink689, %i.oq ; 4 uses
  %i.oy = fadd <4 x float> %i.ox, %i.ow           ; 2 uses
  %i.oz = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.oy)
  %i.pa = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.oy)
  %i.pb = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.pc = fmul <4 x float> %.sroa.18.0.sink697, %i.pb
  %i.pd = fadd <4 x float> %.sroa.26.0.sink695, %i.pc ; 2 uses
  %i.pe = fadd <4 x float> %i.ov, %i.pd           ; 2 uses
  %i.pf = fadd <4 x float> %i.ox, %i.pe           ; 2 uses
  %i.pg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oz, <4 x float> %i.pf)
  %i.ph = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pa, <4 x float> %i.pf)
  %i.pi = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.pj = fmul <4 x float> %.sroa.10.0.sink693, %i.pi ; 2 uses
  %i.pk = fadd <4 x float> %i.ou, %i.pj           ; 2 uses
  %i.pl = fadd <4 x float> %i.ox, %i.pk           ; 2 uses
  %i.pm = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pg, <4 x float> %i.pl)
  %i.pn = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ph, <4 x float> %i.pl)
  %i.po = fadd <4 x float> %i.pj, %i.pd           ; 2 uses
  %i.pp = fadd <4 x float> %i.ox, %i.po           ; 2 uses
  %i.pq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pm, <4 x float> %i.pp)
  %i.pr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pn, <4 x float> %i.pp)
  %i.ps = shufflevector <4 x float> %i.op, <4 x float> poison, <4 x i32> zeroinitializer
  %i.pt = fmul <4 x float> %.sroa.097.0.sink689, %i.ps ; 4 uses
  %i.pu = fadd <4 x float> %i.ow, %i.pt           ; 2 uses
  %i.pv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pq, <4 x float> %i.pu)
  %i.pw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pr, <4 x float> %i.pu)
  %i.px = fadd <4 x float> %i.pt, %i.pe           ; 2 uses
  %i.py = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.pv, <4 x float> %i.px)
  %i.pz = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pw, <4 x float> %i.px)
  %i.qa = fadd <4 x float> %i.pt, %i.pk           ; 2 uses
  %i.qb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.py, <4 x float> %i.qa)
  %i.qc = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.pz, <4 x float> %i.qa)
  %i.qd = fadd <4 x float> %i.pt, %i.po           ; 2 uses
  %i.qe = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qb, <4 x float> %i.qd) ; 2 uses
  %i.qf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qc, <4 x float> %i.qd) ; 2 uses
  %i.qg = fcmp ugt <4 x float> %i.qe, splat (float -1.844000e+18)
  %i.qh = fcmp olt <4 x float> %i.qf, splat (float 1.844000e+18)
  %i.qi = and <4 x i1> %i.qh, %i.qg
  %i.qj = bitcast <4 x i1> %i.qi to i4
  %i.qk = and i4 %i.qj, 7
  %i.ql = icmp eq i4 %i.qk, 7
  br i1 %i.ql, label %bb.m, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !40

bb.m:                                             ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit
  %i.qm = fadd <4 x float> %i.qf, %i.qe           ; 2 uses
  %i.qn = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.014.0624, <4 x float> %i.qm)
  %i.qo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.6.0623, <4 x float> %i.qm)
  %i.qp = add i64 %.0615622, 1
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %_ZNK6embree13InstanceArray5validEm.exit, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit, %bb.m
  %.1 = phi i64 [ %i.qp, %bb.m ], [ %.0615622, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.0615622, %_ZNK6embree13InstanceArray5validEm.exit ] ; 2 uses
  %.sroa.6.1 = phi <4 x float> [ %i.qo, %bb.m ], [ %.sroa.6.0623, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.sroa.6.0623, %_ZNK6embree13InstanceArray5validEm.exit ] ; 2 uses
  %.sroa.014.1 = phi <4 x float> [ %i.qn, %bb.m ], [ %.sroa.014.0624, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.sroa.014.0624, %_ZNK6embree13InstanceArray5validEm.exit ] ; 2 uses
  %i.qq = add nuw i64 %.0625, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.qq, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1643
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6embree24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS6_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISD_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNS7_IS8_EEmSA_SH_SJ_EUlRKS5_SQ_E_EET0_S9_S9_S9_S9_RKSS_RKT1_RKT2_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair") align 16 %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 16 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7) local_unnamed_addr #12 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.embree::TaskScheduler::TaskGroupContext", align 8 ; 8 uses
  %9 = alloca %class.anon.317, align 8            ; 5 uses
  %10 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 7 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = alloca i64, align 8                      ; 2 uses
  %11 = alloca %"struct.embree::StackArray", align 64 ; 14 uses
  %12 = alloca %class.anon.316, align 8           ; 9 uses
  store i64 %2, ptr %i.b, align 8
  store i64 %3, ptr %i.c, align 8
  %i.d = tail call noundef i64 @_ZN6embree13TaskScheduler11threadCountEv()
  %i.e = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %i.d) ; 3 uses
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 512) ; 4 uses
  store i64 %i.f, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.idx.i = phi i64 [ 0, %bb.a ], [ %.add.i.4, %bb.b ] ; 6 uses
  %.ptr.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  store i64 0, ptr %.ptr.i, align 16
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 0, ptr %.ptr.i.1, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.2 = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  store i64 0, ptr %.ptr.i.2, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.3 = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i64 0, ptr %.ptr.i.3, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 %.idx.i
  %.ptr.i.4 = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  store i64 0, ptr %.ptr.i.4, align 16
  %.add.i.4 = add nuw nsw i64 %.idx.i, 240        ; 2 uses
  %i.k = icmp eq i64 %.add.i.4, 8160
  br i1 %i.k, label %bb.c, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8168
  store i64 %i.f, ptr %i.l, align 8
  %i.m = icmp ult i64 %i.e, 171
  br i1 %i.m, label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = mul nuw nsw i64 %i.f, 48
  %i.o = tail call noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.n, i64 noundef 64)
  br label %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit

_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit: ; preds = %bb.c, %bb.d
  %storemerge.i = phi ptr [ %i.o, %bb.d ], [ %11, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 8160 ; 3 uses
  store ptr %storemerge.i, ptr %i.p, align 32
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  store ptr %i.b, ptr %12, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.a, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr %6, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %.not.i12 = icmp eq i64 %i.e, 0
  br i1 %.not.i12, label %bb.m, label %bb.e

bb.e:                                             ; preds = %_ZN6embree10StackArrayISt4pairImNS_4BBoxINS_6Vec3faEEEELm8192EEC2Em.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  store ptr null, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  store ptr %12, ptr %9, align 8
  invoke void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_24parallel_reduce_internalImSt4pairImNS_4BBoxINS_6Vec3faEEEEZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS9_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISG_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEE_ZNSA_ISB_EEmSD_SK_SM_EUlRKS8_ST_E_EET0_SC_SC_SC_SC_RKSV_RKT1_RKT2_EUlmE_EEvSC_SX_EUlSQ_E_EEvSC_SC_SC_SX_PNS0_16TaskGroupContextE(i64 noundef 0, i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull %8)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  invoke void @_ZN6embree13TaskScheduler4waitEv()
          to label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit unwind label %bb.i

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.f
  %i.u = load ptr, ptr %8, align 8                ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %_ZN6embree13TaskScheduler16TaskGroupContextD2Ev.exit, label %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit

_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit: ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit
  store ptr %i.u, ptr %10, align 8
  call void @_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  invoke void @_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 %10) #19
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrC2ERKS0_.exit
  unreachable
end_hunk_0
begin_hunk_1_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEE0_clESH_:bb.a
  %i.cm = icmp ult ptr %i.cl, %i.cj
  %i.cn = or i1 %i.cm, %mul.overflow
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.yt, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load = load <2 x i32>, ptr %i.co, align 16
  %wide.load1199 = load <2 x i32>, ptr %i.cp, align 8
  %i.cq = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %wide.load1200 = load <2 x i32>, ptr %i.ct, align 16
  %wide.load1201 = load <2 x i32>, ptr %i.cu, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load1200, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cq, align 4
  %interleaved.vec1202 = shufflevector <2 x i32> %wide.load1201, <2 x i32> %wide.load1199, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec1202, ptr %i.cs, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1667

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.yt, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101, %middle.block
  %.0.i1098.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit101 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.yt, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i1098.prol = phi i64 [ %i.dc, %scalar.ph.prol ], [ %.0.i1098.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.i1098.prol
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1098.prol ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i1098.prol
  %i.db = load i32, ptr %i.da, align 4
  store i32 %i.db, ptr %i.cy, align 8
  %i.dc = add nuw nsw i64 %.0.i1098.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1668

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i1098.unr = phi i64 [ %.0.i1098.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %i.dd = sub i64 %.0.i1098.ph, %i.yt
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i1098 = phi i64 [ %i.eg, %scalar.ph ], [ %.0.i1098.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.i1098
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1098 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.dg, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.0.i1098
  %i.dk = load i32, ptr %i.dj, align 4
  store i32 %i.dk, ptr %i.dh, align 8
  %i.dl = add nuw nsw i64 %.0.i1098, 1            ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [8 x i8], ptr %i.cj, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dn, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4
  store i32 %i.dr, ptr %i.do, align 8
  %i.ds = add nuw nsw i64 %.0.i1098, 2            ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [8 x i8], ptr %i.cj, i64 %i.ds ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.du, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4
  store i32 %i.dy, ptr %i.dv, align 8
  %i.dz = add nuw nsw i64 %.0.i1098, 3            ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [8 x i8], ptr %i.cj, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dz
  %i.ef = load i32, ptr %i.ee, align 4
  store i32 %i.ef, ptr %i.ec, align 8
  %i.eg = add nuw nsw i64 %.0.i1098, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %i.yt
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1669

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %.01095 = phi i64 [ %i.f, %.lr.ph ], [ %i.yu, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ] ; 12 uses
  %i.eh = phi i64 [ 0, %.lr.ph ], [ %i.yt, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ] ; 5 uses
  %i.ei = phi i64 [ 0, %.lr.ph ], [ %i.vx, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ]
  %i.ej = load ptr, ptr %i.u, align 8, !nonnull !28, !align !29
  %i.ek = load ptr, ptr %i.ej, align 8            ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load ptr, ptr %i.el, align 8, !noalias !1682 ; 3 uses
  %.not.i.i = icmp eq ptr %i.em, null             ; 3 uses
  br i1 %.not.i.i, label %_ZNK6embree13InstanceArray5validEm.exit.i, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

_ZNK6embree13InstanceArray5validEm.exit.i:        ; preds = %bb.b
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.eo = load ptr, ptr %i.en, align 8, !noalias !1682
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !1682
  %i.er = mul i64 %i.eq, %.01095
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4, !noalias !1682
  %.not = icmp eq i32 %i.et, -1
  br i1 %.not, label %.noexc10, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

_ZNK6embree13InstanceArray5validEm.exit.i.thread: ; preds = %bb.b, %_ZNK6embree13InstanceArray5validEm.exit.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !1682
  %i.ew = and i32 %i.ev, 65280
  %i.ex = icmp eq i32 %i.ew, 256
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !28 ; 17 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !noalias !28 ; 2 uses
  br i1 %i.ex, label %bb.c, label %bb.d, !prof !31

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc214 [
    i32 37444, label %.noexc223
    i32 45057, label %.noexc225
    i32 37428, label %.noexc226
    i32 37172, label %.noexc228
  ]

.noexc223:                                        ; preds = %bb.c
  %i.fc = load ptr, ptr %i.ez, align 8, !noalias !1683
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1683
  %i.ff = mul i64 %i.fe, %.01095
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff ; 4 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = load <4 x float>, ptr %i.fi, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fl = load <4 x float>, ptr %i.fk, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fn = load <4 x float>, ptr %i.fm, align 16
  br label %.noexc214

.noexc225:                                        ; preds = %bb.c
  %i.fo = load ptr, ptr %i.ez, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = mul i64 %i.fq, %.01095
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr ; 12 uses
  %i.ft = load float, ptr %i.fs, align 16
  %.sroa.0647.0.vec.insert = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load float, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %.sroa.11650.16.vec.insert = insertelement <4 x float> %i.ga, float %i.fv, i64 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gc = load <2 x float>, ptr %i.gb, align 16
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20653.36.vec.insert = insertelement <4 x float> %i.gd, float %i.fx, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 52
  %i.gf = load <2 x float>, ptr %i.ge, align 4
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0647.8.vec.insert1203 = shufflevector <4 x float> %.sroa.0647.0.vec.insert, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 60
  %i.gi = load float, ptr %i.gh, align 4
  %.sroa.11650.24.vec.insert = insertelement <4 x float> %.sroa.11650.16.vec.insert, float %i.gi, i64 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.go = load float, ptr %i.gn, align 16         ; 3 uses
  %i.gp = load float, ptr %i.gk, align 4          ; 2 uses
  %i.gq = load <4 x float>, ptr %i.gj, align 8    ; 2 uses
  %i.gr = load float, ptr %i.gl, align 8          ; 3 uses
  %i.gs = load float, ptr %i.gm, align 4          ; 3 uses
  %i.gt = fmul float %i.gr, %i.gr
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.go, float %i.go, float %i.gv) ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.gx) ; 3 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0 ; 2 uses
  %i.ha = fmul float %i.gz, 1.500000e+00
  %i.hb = fmul float %i.gw, 5.000000e-01
  %i.hc = fmul float %i.gz, %i.hb
  %foldExtExtBinop = fmul <4 x float> %i.gy, %i.gy
  %i.hd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.he = fmul float %i.hd, %i.hc
  %i.hf = fsub float %i.ha, %i.he                 ; 4 uses
  %i.hg = insertelement <4 x float> poison, float %i.hf, i64 3
  %i.hh = fmul <4 x float> %i.gq, %i.hg
  %4 = shufflevector <4 x float> %i.gq, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hi = fmul float %i.gr, %i.hf
  %i.hj = fmul float %i.gs, %i.hf
  %i.hk = fmul float %i.go, %i.hf
  %.sroa.0647.12.vec.insert = insertelement <4 x float> %.sroa.0647.8.vec.insert1203, float %i.hi, i64 3
  %.sroa.11650.28.vec.insert = insertelement <4 x float> %.sroa.11650.24.vec.insert, float %i.hj, i64 3
  %.sroa.20653.44.vec.insert = insertelement <4 x float> %.sroa.20653.36.vec.insert, float %i.hk, i64 3
  br label %.noexc214

.noexc226:                                        ; preds = %bb.c
  %i.hl = load ptr, ptr %i.ez, align 8, !noalias !1683
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !1683
  %i.ho = mul i64 %i.hn, %.01095
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho ; 8 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load <2 x float>, ptr %i.hq, align 4
  %i.hs = load float, ptr %i.hp, align 4
  %i.ht = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.hu = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hy = load <2 x float>, ptr %i.hx, align 4
  %i.hz = load float, ptr %i.hw, align 4
  %i.ia = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hz, i64 0
  %i.ib = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ia, <4 x float> %i.ib, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  %i.if = load <2 x float>, ptr %i.ie, align 4
  %i.ig = load float, ptr %i.id, align 4
  %i.ih = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> %i.ii, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.im = load <2 x float>, ptr %i.il, align 4
  %i.in = load float, ptr %i.ik, align 4
  %i.io = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.in, i64 0
  %i.ip = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iq = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc214

.noexc228:                                        ; preds = %bb.c
  %i.ir = load ptr, ptr %i.ez, align 8, !noalias !1683
  %i.is = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.it = load i64, ptr %i.is, align 8, !noalias !1683
  %i.iu = mul i64 %i.it, %.01095
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu ; 12 uses
  %i.iw = load float, ptr %i.iv, align 4, !noalias !1683
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !noalias !1683
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !noalias !1683
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !noalias !1683
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load float, ptr %i.jd, align 4, !noalias !1683
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !noalias !1683
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !noalias !1683
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.jk = load float, ptr %i.jj, align 4, !noalias !1683
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jm = load float, ptr %i.jl, align 4, !noalias !1683
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !noalias !1683
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.jq = load float, ptr %i.jp, align 4, !noalias !1683
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.js = load float, ptr %i.jr, align 4, !noalias !1683
  %i.jt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iw, i64 0
  %i.ju = insertelement <4 x float> %i.jt, float %i.je, i64 1
  %i.jv = insertelement <4 x float> %i.ju, float %i.jm, i64 2
  %i.jw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iy, i64 0
  %i.jx = insertelement <4 x float> %i.jw, float %i.jg, i64 1
  %i.jy = insertelement <4 x float> %i.jx, float %i.jo, i64 2
  %i.jz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ja, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.ji, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jq, i64 2
  %i.kc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jc, i64 0
  %i.kd = insertelement <4 x float> %i.kc, float %i.jk, i64 1
  %i.ke = insertelement <4 x float> %i.kd, float %i.js, i64 2
  br label %.noexc214

.noexc214:                                        ; preds = %bb.c, %.noexc228, %.noexc226, %.noexc225, %.noexc223
  %.sroa.29656.0 = phi <4 x float> [ %i.fn, %.noexc223 ], [ %4, %.noexc225 ], [ %i.iq, %.noexc226 ], [ %i.ke, %.noexc228 ], [ undef, %bb.c ] ; 5 uses
  %.sroa.20653.0 = phi <4 x float> [ %i.fl, %.noexc223 ], [ %.sroa.20653.44.vec.insert, %.noexc225 ], [ %i.ij, %.noexc226 ], [ %i.kb, %.noexc228 ], [ undef, %bb.c ] ; 5 uses
  %.sroa.11650.0 = phi <4 x float> [ %i.fj, %.noexc223 ], [ %.sroa.11650.28.vec.insert, %.noexc225 ], [ %i.ic, %.noexc226 ], [ %i.jy, %.noexc228 ], [ undef, %bb.c ] ; 6 uses
  %.sroa.0647.0 = phi <4 x float> [ %i.fh, %.noexc223 ], [ %.sroa.0647.12.vec.insert, %.noexc225 ], [ %i.hv, %.noexc226 ], [ %i.jv, %.noexc228 ], [ undef, %bb.c ] ; 5 uses
  %.sroa.29656.60.vec.extract = extractelement <4 x float> %.sroa.29656.0, i64 3 ; 7 uses
  %.sroa.0647.12.vec.extract = extractelement <4 x float> %.sroa.0647.0, i64 3 ; 7 uses
  %.sroa.11650.28.vec.extract = extractelement <4 x float> %.sroa.11650.0, i64 3 ; 7 uses
  %.sroa.20653.44.vec.extract = extractelement <4 x float> %.sroa.20653.0, i64 3 ; 6 uses
  %.sroa.17797.52.vec.insert = shufflevector <4 x float> %.sroa.0647.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17797.56.vec.insert = shufflevector <4 x float> %.sroa.17797.52.vec.insert, <4 x float> %.sroa.11650.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.kf = fmul float %.sroa.0647.12.vec.extract, %.sroa.0647.12.vec.extract
  %i.kg = tail call float @llvm.fmuladd.f32(float %.sroa.29656.60.vec.extract, float %.sroa.29656.60.vec.extract, float %i.kf)
  %i.kh = fneg float %.sroa.11650.28.vec.extract  ; 3 uses
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11650.28.vec.extract, float %i.kg)
  %i.kj = fneg float %.sroa.20653.44.vec.extract  ; 3 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %.sroa.20653.44.vec.extract, float %i.ki)
  %i.kl = fmul float %.sroa.29656.60.vec.extract, %.sroa.20653.44.vec.extract
  %i.km = tail call float @llvm.fmuladd.f32(float %.sroa.0647.12.vec.extract, float %.sroa.11650.28.vec.extract, float %i.kl)
  %i.kn = fmul float %i.km, 2.000000e+00
  %i.ko = fmul float %.sroa.29656.60.vec.extract, %i.kh
  %i.kp = tail call float @llvm.fmuladd.f32(float %.sroa.0647.12.vec.extract, float %.sroa.20653.44.vec.extract, float %i.ko)
  %i.kq = fmul float %i.kp, 2.000000e+00
  %i.kr = fmul float %.sroa.29656.60.vec.extract, %i.kj
  %i.ks = tail call float @llvm.fmuladd.f32(float %.sroa.0647.12.vec.extract, float %.sroa.11650.28.vec.extract, float %i.kr)
  %i.kt = fmul float %i.ks, 2.000000e+00
  %i.ku = fneg float %.sroa.0647.12.vec.extract   ; 2 uses
  %i.kv = fmul float %.sroa.0647.12.vec.extract, %i.ku
  %i.kw = tail call float @llvm.fmuladd.f32(float %.sroa.29656.60.vec.extract, float %.sroa.29656.60.vec.extract, float %i.kv) ; 2 uses
  %i.kx = tail call float @llvm.fmuladd.f32(float %.sroa.11650.28.vec.extract, float %.sroa.11650.28.vec.extract, float %i.kw)
  %i.ky = shufflevector <4 x float> %.sroa.29656.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.kz = shufflevector <4 x float> %.sroa.0647.0, <4 x float> %.sroa.11650.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.kx, i64 0
  %i.lb = insertelement <4 x float> %i.la, float %i.ku, i64 3
  %i.lc = fmul <4 x float> %i.ky, %i.lb
  %i.ld = shufflevector <4 x float> %.sroa.11650.0, <4 x float> %.sroa.0647.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.le = insertelement <4 x float> %i.ld, float %i.kj, i64 0
  %i.lf = shufflevector <4 x float> %.sroa.20653.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lf, <4 x float> %i.lc) ; 3 uses
  %i.lh = extractelement <4 x float> %i.lg, i64 1
  %i.li = fmul float %i.lh, 2.000000e+00
  %i.lj = shufflevector <4 x float> %i.lg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lk = fmul <2 x float> %i.lj, splat (float 2.000000e+00) ; 2 uses
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11650.28.vec.extract, float %i.kw)
  %i.lm = tail call float @llvm.fmuladd.f32(float %.sroa.20653.44.vec.extract, float %.sroa.20653.44.vec.extract, float %i.ll)
  %i.ln = insertelement <4 x float> poison, float %i.kk, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lp = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.ls, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.lu = fmul <4 x float> %i.lq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lv = fadd <4 x float> %i.lu, %i.lt
  %i.lw = fmul <4 x float> %i.lo, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lx = fadd <4 x float> %i.lv, %i.lw           ; 4 uses
  %i.ly = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = insertelement <4 x float> poison, float %i.li, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = fmul <4 x float> %i.mc, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.me = fmul <4 x float> %i.ma, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mf = fadd <4 x float> %i.md, %i.me
  %i.mg = fmul <4 x float> %i.lz, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mh = fadd <4 x float> %i.mg, %i.mf           ; 4 uses
  %i.mi = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mj = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul <4 x float> %i.ml, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.mn = fmul <4 x float> %i.mj, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mo = fadd <4 x float> %i.mn, %i.mm
  %i.mp = fmul <4 x float> %i.mi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mq = fadd <4 x float> %i.mp, %i.mo           ; 3 uses
  %i.mr = fadd <4 x float> %.sroa.17797.56.vec.insert, zeroinitializer
  %i.ms = shufflevector <4 x float> %.sroa.0647.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mt = fmul <4 x float> %i.mq, zeroinitializer ; 2 uses
  %i.mu = fmul <4 x float> %i.mh, zeroinitializer
  %i.mv = fadd <4 x float> %i.mu, %i.mt
  %i.mw = fmul <4 x float> %i.ms, %i.lx
  %i.mx = fadd <4 x float> %i.mw, %i.mv           ; 2 uses
  %i.my = shufflevector <4 x float> %.sroa.11650.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = shufflevector <4 x float> %.sroa.11650.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.na = fmul <4 x float> %i.mz, %i.mh
  %i.nb = fadd <4 x float> %i.na, %i.mt
  %i.nc = fmul <4 x float> %i.my, %i.lx
  %i.nd = fadd <4 x float> %i.nc, %i.nb           ; 2 uses
  %i.ne = shufflevector <4 x float> %.sroa.20653.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = shufflevector <4 x float> %.sroa.20653.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ng = shufflevector <4 x float> %.sroa.20653.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nh = fmul <4 x float> %i.ng, %i.mq
  %i.ni = fmul <4 x float> %i.nf, %i.mh
  %i.nj = fadd <4 x float> %i.ni, %i.nh
  %i.nk = fmul <4 x float> %i.ne, %i.lx
  %i.nl = fadd <4 x float> %i.nk, %i.nj           ; 2 uses
  %i.nm = shufflevector <4 x float> %.sroa.29656.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nn = shufflevector <4 x float> %.sroa.29656.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = shufflevector <4 x float> %.sroa.29656.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.np = fmul <4 x float> %i.no, %i.mq
  %i.nq = fmul <4 x float> %i.nn, %i.mh
  %i.nr = fadd <4 x float> %i.nq, %i.np
  %i.ns = fmul <4 x float> %i.nm, %i.lx
  %i.nt = fadd <4 x float> %i.ns, %i.nr
  %i.nu = fadd <4 x float> %i.mr, %i.nt           ; 2 uses
  br i1 %.not.i.i, label %.noexc10.sink.split.sink.split, label %.noexc10.sink.split

bb.d:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc215 [
    i32 37444, label %.noexc216
    i32 45057, label %.noexc218
    i32 37428, label %.noexc219
    i32 37172, label %.noexc221
  ]

.noexc216:                                        ; preds = %bb.d
  %i.nv = load ptr, ptr %i.ez, align 8, !noalias !1684
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !1684
  %i.ny = mul i64 %i.nx, %.01095
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 16
  br label %.noexc215

.noexc218:                                        ; preds = %bb.d
  %i.oh = load ptr, ptr %i.ez, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = mul i64 %i.oj, %.01095
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ok ; 12 uses
  %i.om = load float, ptr %i.ol, align 16
  %.sroa.0575.0.vec.insert = insertelement <4 x float> poison, float %i.om, i64 0
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.oo = load float, ptr %i.on, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oq = load float, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.os = load float, ptr %i.or, align 4
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.ot, float %i.oo, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.ov = load <2 x float>, ptr %i.ou, align 16
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.ow, float %i.oq, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 52
  %i.oy = load <2 x float>, ptr %i.ox, align 4
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0575.8.vec.insert1204 = shufflevector <4 x float> %.sroa.0575.0.vec.insert, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 60
  %i.pb = load float, ptr %i.pa, align 4
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.pb, i64 2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ol, i64 44
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 48
  %i.ph = load float, ptr %i.pg, align 16         ; 3 uses
  %i.pi = load float, ptr %i.pd, align 4          ; 2 uses
  %i.pj = load <4 x float>, ptr %i.pc, align 8    ; 2 uses
  %i.pk = load float, ptr %i.pe, align 8          ; 3 uses
  %i.pl = load float, ptr %i.pf, align 4          ; 3 uses
  %i.pm = fmul float %i.pk, %i.pk
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.pi, float %i.pm)
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pl, float %i.pl, float %i.pn)
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.ph, float %i.po) ; 2 uses
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.pq) ; 3 uses
  %i.ps = extractelement <4 x float> %i.pr, i64 0 ; 2 uses
  %i.pt = fmul float %i.ps, 1.500000e+00
  %i.pu = fmul float %i.pp, 5.000000e-01
  %i.pv = fmul float %i.ps, %i.pu
  %foldExtExtBinop1207 = fmul <4 x float> %i.pr, %i.pr
  %i.pw = extractelement <4 x float> %foldExtExtBinop1207, i64 0
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> poison, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %5 = shufflevector <4 x float> %i.pj, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qb = fmul float %i.pk, %i.py
  %i.qc = fmul float %i.pl, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0575.12.vec.insert = insertelement <4 x float> %.sroa.0575.8.vec.insert1204, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc215

.noexc219:                                        ; preds = %bb.d
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1684
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1684
  %i.qh = mul i64 %i.qg, %.01095
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc215

.noexc221:                                        ; preds = %bb.d
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1684
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1684
  %i.rn = mul i64 %i.rm, %.01095
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1684
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1684
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1684
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1684
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1684
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1684
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1684
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1684
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1684
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1684
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1684
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1684
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc215

.noexc215:                                        ; preds = %bb.d, %.noexc221, %.noexc219, %.noexc218, %.noexc216
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc216 ], [ %5, %.noexc218 ], [ %i.rj, %.noexc219 ], [ %i.sx, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc216 ], [ %.sroa.18.44.vec.insert, %.noexc218 ], [ %i.rc, %.noexc219 ], [ %i.su, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc216 ], [ %.sroa.10.28.vec.insert, %.noexc218 ], [ %i.qv, %.noexc219 ], [ %i.sr, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  %.sroa.0575.0 = phi <4 x float> [ %i.oa, %.noexc216 ], [ %.sroa.0575.12.vec.insert, %.noexc218 ], [ %i.qo, %.noexc219 ], [ %i.so, %.noexc221 ], [ undef, %bb.d ] ; 2 uses
  br i1 %.not.i.i, label %.noexc10.sink.split.sink.split, label %.noexc10.sink.split

.noexc10.sink.split.sink.split:                   ; preds = %.noexc215, %.noexc214
  %.sink1174.ph = phi <4 x float> [ %i.nl, %.noexc214 ], [ %.sroa.18.0, %.noexc215 ]
  %.sink1172.ph = phi <4 x float> [ %i.nu, %.noexc214 ], [ %.sroa.26.0, %.noexc215 ]
  %.sink1170.ph = phi <4 x float> [ %i.nd, %.noexc214 ], [ %.sroa.10.0, %.noexc215 ]
  %.sink1166.ph = phi <4 x float> [ %i.mx, %.noexc214 ], [ %.sroa.0575.0, %.noexc215 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1682
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1682
  %i.tc = mul i64 %i.tb, %.01095
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1682 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1682
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1682
  br label %.noexc10.sink.split

.noexc10.sink.split:                              ; preds = %.noexc10.sink.split.sink.split, %.noexc215, %.noexc214
  %.0.i257.sink1187 = phi ptr [ %i.em, %.noexc214 ], [ %i.em, %.noexc215 ], [ %i.tk, %.noexc10.sink.split.sink.split ] ; 4 uses
  %.sink1174 = phi <4 x float> [ %i.nl, %.noexc214 ], [ %.sroa.18.0, %.noexc215 ], [ %.sink1174.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1172 = phi <4 x float> [ %i.nu, %.noexc214 ], [ %.sroa.26.0, %.noexc215 ], [ %.sink1172.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1170 = phi <4 x float> [ %i.nd, %.noexc214 ], [ %.sroa.10.0, %.noexc215 ], [ %.sink1170.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %.sink1166 = phi <4 x float> [ %i.mx, %.noexc214 ], [ %.sroa.0575.0, %.noexc215 ], [ %.sink1166.ph, %.noexc10.sink.split.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1682
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1682
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i257.sink1187, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1682
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1682
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1174, %i.tx
  %i.tz = fadd <4 x float> %.sink1172, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1170, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1166, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1174, %i.ug
  %i.ui = fadd <4 x float> %.sink1172, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1170, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1166, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi)
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi)
  %i.vl = fadd <4 x float> %i.vk, %i.vj
  br label %.noexc10

.noexc10:                                         ; preds = %.noexc10.sink.split, %_ZNK6embree13InstanceArray5validEm.exit.i
  %i.vm = phi <4 x float> [ undef, %_ZNK6embree13InstanceArray5validEm.exit.i ], [ %i.vl, %.noexc10.sink.split ]
  %i.vn = trunc i64 %.01095 to i32
  %i.vo = fsub <4 x float> %i.vm, %i.h
  %i.vp = fmul <4 x float> %i.k, %i.vo
  %i.vq = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vp) ; 3 uses
  %i.vr = extractelement <4 x i32> %i.vq, i64 0
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %i.vr, ptr %i.vs, align 4
  %.sroa.0297.4.vec.extract = extractelement <4 x i32> %i.vq, i64 1
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0297.4.vec.extract, ptr %i.vt, align 4
  %.sroa.0297.8.vec.extract = extractelement <4 x i32> %i.vq, i64 2
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %.sroa.0297.8.vec.extract, ptr %i.vu, align 4
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.eh
  store i32 %i.vn, ptr %i.vv, align 4
  %i.vw = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %i.vx = add i64 %i.ei, 1                        ; 3 uses
  %i.vy = icmp eq i64 %i.vw, 4
  br i1 %i.vy, label %.noexc15, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc15:                                         ; preds = %.noexc10
  %i.vz = load <2 x i64>, ptr %i.n, align 16, !noalias !1685 ; 2 uses
  %i.wa = load <2 x i64>, ptr %i.o, align 16, !noalias !1685 ; 2 uses
  %i.wb = load <2 x i64>, ptr %i.p, align 16, !noalias !1685 ; 2 uses
  %i.wc = bitcast <2 x i64> %i.vz to <4 x i32>
  %i.wd = shl <4 x i32> %i.wc, splat (i32 16)
  %i.we = bitcast <4 x i32> %i.wd to <2 x i64>
  %i.wf = or <2 x i64> %i.vz, %i.we
  %i.wg = and <2 x i64> %i.wf, splat (i64 216173877380776191) ; 2 uses
  %i.wh = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 8)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or disjoint <2 x i64> %i.wg, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216436729379352591) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl nuw nsw <4 x i32> %i.wm, splat (i32 4)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 219604095962198211) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 2)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 658812287886594633)
  %i.ww = bitcast <2 x i64> %i.wa to <4 x i32>
  %i.wx = shl <4 x i32> %i.ww, splat (i32 16)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or <2 x i64> %i.wa, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 216173877380776191) ; 2 uses
  %i.xb = bitcast <2 x i64> %i.xa to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 8)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or disjoint <2 x i64> %i.xa, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216436729379352591) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl nuw nsw <4 x i32> %i.xg, splat (i32 4)
  %i.xi = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xj = or disjoint <4 x i32> %i.xh, %i.xi
  %i.xk = and <4 x i32> %i.xj, splat (i32 51130563) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.wb to <4 x i32>
  %i.xm = shl <4 x i32> %i.xl, splat (i32 16)
  %i.xn = bitcast <4 x i32> %i.xm to <2 x i64>
  %i.xo = or <2 x i64> %i.wb, %i.xn
  %i.xp = and <2 x i64> %i.xo, splat (i64 216173877380776191) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.xp to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 8)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or disjoint <2 x i64> %i.xp, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216436729379352591) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl nuw nsw <4 x i32> %i.xv, splat (i32 4)
  %i.xx = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xy = or disjoint <4 x i32> %i.xw, %i.xx
  %i.xz = and <4 x i32> %i.xy, splat (i32 51130563) ; 2 uses
  %i.ya = shl nuw nsw <4 x i32> %i.xk, splat (i32 3)
  %i.yb = shl nuw nsw <4 x i32> %i.xk, splat (i32 1)
  %i.yc = or disjoint <4 x i32> %i.ya, %i.yb
  %i.yd = bitcast <4 x i32> %i.yc to <2 x i64>
  %i.ye = and <2 x i64> %i.yd, splat (i64 1317624575773189266)
  %i.yf = or disjoint <2 x i64> %i.ye, %i.wv
  %i.yg = shl nuw nsw <4 x i32> %i.xz, splat (i32 4)
  %i.yh = shl nuw nsw <4 x i32> %i.xz, splat (i32 2)
  %i.yi = or disjoint <4 x i32> %i.yg, %i.yh
  %i.yj = bitcast <4 x i32> %i.yi to <2 x i64>
  %i.yk = and <2 x i64> %i.yj, splat (i64 2635249151546378532)
  %i.yl = or disjoint <2 x i64> %i.yf, %i.yk
  %i.ym = getelementptr [8 x i8], ptr %i.g, i64 %i.vx ; 2 uses
  %i.yn = getelementptr i8, ptr %i.ym, i64 -32
  %i.yo = bitcast <2 x i64> %i.yl to <4 x float>  ; 2 uses
  %i.yp = load <4 x float>, ptr %i.q, align 16, !noalias !1686 ; 2 uses
  %i.yq = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yq, ptr %i.yn, align 1
  %i.yr = getelementptr i8, ptr %i.ym, i64 -16
  %i.ys = shufflevector <4 x float> %i.yo, <4 x float> %i.yp, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.ys, ptr %i.yr, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc15, %.noexc10
  %i.yt = phi i64 [ 0, %.noexc15 ], [ %i.vw, %.noexc10 ] ; 10 uses
  %i.yu = add nuw i64 %.01095, 1                  ; 2 uses
  %i.yv = load i64, ptr %i.r, align 8
  %i.yw = icmp ult i64 %i.yu, %i.yv
  br i1 %i.yw, label %bb.b, label %._crit_edge, !llvm.loop !1680
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree13TaskScheduler5spawnImZNS_12parallel_forImZNS_19parallel_prefix_sumImmZNS_4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS4_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorISB_Lm8EEEEERNS_20BuildProgressMonitorEEUlRKNS_5rangeImEEmE_St4plusImEEET0_RNS_22ParallelPrefixSumStateISP_EES7_S7_S7_RKSP_RKT1_RKT2_EUlmE_EEvS7_SU_EUlSL_E_EEvS7_S7_S7_SU_PNS0_16TaskGroupContextE(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.anon.324, align 8            ; 9 uses
  %i.a = sub i64 %1, %0                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
end_hunk_1
begin_hunk_2_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE_clESH_m:bb.a
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.zb, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load = load <2 x i32>, ptr %i.co, align 16
  %wide.load1230 = load <2 x i32>, ptr %i.cp, align 8
  %i.cq = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %wide.load1231 = load <2 x i32>, ptr %i.ct, align 16
  %wide.load1232 = load <2 x i32>, ptr %i.cu, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load1231, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cq, align 4
  %interleaved.vec1233 = shufflevector <2 x i32> %wide.load1232, <2 x i32> %wide.load1230, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec1233, ptr %i.cs, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106, %middle.block
  %.0.i1126.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.zb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i1126.prol = phi i64 [ %i.dc, %scalar.ph.prol ], [ %.0.i1126.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.i1126.prol
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1126.prol ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i1126.prol
  %i.db = load i32, ptr %i.da, align 4
  store i32 %i.db, ptr %i.cy, align 8
  %i.dc = add nuw nsw i64 %.0.i1126.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1692

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i1126.unr = phi i64 [ %.0.i1126.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %i.dd = sub i64 %.0.i1126.ph, %i.zb
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i1126 = phi i64 [ %i.eg, %scalar.ph ], [ %.0.i1126.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.0.i1126
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1126 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.dg, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i1126
  %i.dk = load i32, ptr %i.dj, align 4
  store i32 %i.dk, ptr %i.dh, align 8
  %i.dl = add nuw nsw i64 %.0.i1126, 1            ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [8 x i8], ptr %i.cj, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dn, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4
  store i32 %i.dr, ptr %i.do, align 8
  %i.ds = add nuw nsw i64 %.0.i1126, 2            ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [8 x i8], ptr %i.cj, i64 %i.ds ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.du, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4
  store i32 %i.dy, ptr %i.dv, align 8
  %i.dz = add nuw nsw i64 %.0.i1126, 3            ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [8 x i8], ptr %i.cj, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dz
  %i.ef = load i32, ptr %i.ee, align 4
  store i32 %i.ef, ptr %i.ec, align 8
  %i.eg = add nuw nsw i64 %.0.i1126, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %i.zb
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1693

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa1136 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa1136

_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.01123 = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.0111120 = phi i64 [ %i.f, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.zc, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 12 uses
  %i.eh = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.zb, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.ei = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.za, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ej = load ptr, ptr %i.u, align 8, !nonnull !28, !align !29
  %i.ek = load ptr, ptr %i.ej, align 8            ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %.not.i223 = icmp eq ptr %i.em, null            ; 3 uses
  br i1 %.not.i223, label %.noexc221, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

.noexc221:                                        ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = mul i64 %i.eq, %.0111120
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  %.not = icmp eq i32 %i.et, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread, !prof !39

_ZNK6embree13InstanceArray5validEm.exit.i.thread: ; preds = %.noexc221, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !1706
  %i.ew = and i32 %i.ev, 65280
  %i.ex = icmp eq i32 %i.ew, 256
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !28 ; 17 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !noalias !28 ; 2 uses
  br i1 %i.ex, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc225 [
    i32 37444, label %.noexc234
    i32 45057, label %.noexc236
    i32 37428, label %.noexc237
    i32 37172, label %.noexc239
  ]

.noexc234:                                        ; preds = %bb.b
  %i.fc = load ptr, ptr %i.ez, align 8, !noalias !1707
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1707
  %i.ff = mul i64 %i.fe, %.0111120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff ; 4 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = load <4 x float>, ptr %i.fi, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fl = load <4 x float>, ptr %i.fk, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fn = load <4 x float>, ptr %i.fm, align 16
  br label %.noexc225

.noexc236:                                        ; preds = %bb.b
  %i.fo = load ptr, ptr %i.ez, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = mul i64 %i.fq, %.0111120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr ; 12 uses
  %i.ft = load float, ptr %i.fs, align 16
  %.sroa.0666.0.vec.insert = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load float, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %.sroa.11669.16.vec.insert = insertelement <4 x float> %i.ga, float %i.fv, i64 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gc = load <2 x float>, ptr %i.gb, align 16
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20672.36.vec.insert = insertelement <4 x float> %i.gd, float %i.fx, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 52
  %i.gf = load <2 x float>, ptr %i.ge, align 4
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0666.8.vec.insert1234 = shufflevector <4 x float> %.sroa.0666.0.vec.insert, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 60
  %i.gi = load float, ptr %i.gh, align 4
  %.sroa.11669.24.vec.insert = insertelement <4 x float> %.sroa.11669.16.vec.insert, float %i.gi, i64 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.go = load float, ptr %i.gn, align 16         ; 3 uses
  %i.gp = load float, ptr %i.gk, align 4          ; 2 uses
  %i.gq = load <4 x float>, ptr %i.gj, align 8    ; 2 uses
  %i.gr = load float, ptr %i.gl, align 8          ; 3 uses
  %i.gs = load float, ptr %i.gm, align 4          ; 3 uses
  %i.gt = fmul float %i.gr, %i.gr
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.go, float %i.go, float %i.gv) ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.gx) ; 3 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0 ; 2 uses
  %i.ha = fmul float %i.gz, 1.500000e+00
  %i.hb = fmul float %i.gw, 5.000000e-01
  %i.hc = fmul float %i.gz, %i.hb
  %foldExtExtBinop = fmul <4 x float> %i.gy, %i.gy
  %i.hd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.he = fmul float %i.hd, %i.hc
  %i.hf = fsub float %i.ha, %i.he                 ; 4 uses
  %i.hg = insertelement <4 x float> poison, float %i.hf, i64 3
  %i.hh = fmul <4 x float> %i.gq, %i.hg
  %5 = shufflevector <4 x float> %i.gq, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hi = fmul float %i.gr, %i.hf
  %i.hj = fmul float %i.gs, %i.hf
  %i.hk = fmul float %i.go, %i.hf
  %.sroa.0666.12.vec.insert = insertelement <4 x float> %.sroa.0666.8.vec.insert1234, float %i.hi, i64 3
  %.sroa.11669.28.vec.insert = insertelement <4 x float> %.sroa.11669.24.vec.insert, float %i.hj, i64 3
  %.sroa.20672.44.vec.insert = insertelement <4 x float> %.sroa.20672.36.vec.insert, float %i.hk, i64 3
  br label %.noexc225

.noexc237:                                        ; preds = %bb.b
  %i.hl = load ptr, ptr %i.ez, align 8, !noalias !1707
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !1707
  %i.ho = mul i64 %i.hn, %.0111120
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho ; 8 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load <2 x float>, ptr %i.hq, align 4
  %i.hs = load float, ptr %i.hp, align 4
  %i.ht = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.hu = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hy = load <2 x float>, ptr %i.hx, align 4
  %i.hz = load float, ptr %i.hw, align 4
  %i.ia = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hz, i64 0
  %i.ib = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ia, <4 x float> %i.ib, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  %i.if = load <2 x float>, ptr %i.ie, align 4
  %i.ig = load float, ptr %i.id, align 4
  %i.ih = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> %i.ii, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.im = load <2 x float>, ptr %i.il, align 4
  %i.in = load float, ptr %i.ik, align 4
  %i.io = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.in, i64 0
  %i.ip = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iq = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc225

.noexc239:                                        ; preds = %bb.b
  %i.ir = load ptr, ptr %i.ez, align 8, !noalias !1707
  %i.is = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.it = load i64, ptr %i.is, align 8, !noalias !1707
  %i.iu = mul i64 %i.it, %.0111120
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu ; 12 uses
  %i.iw = load float, ptr %i.iv, align 4, !noalias !1707
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !noalias !1707
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !noalias !1707
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !noalias !1707
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load float, ptr %i.jd, align 4, !noalias !1707
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !noalias !1707
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !noalias !1707
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.jk = load float, ptr %i.jj, align 4, !noalias !1707
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jm = load float, ptr %i.jl, align 4, !noalias !1707
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !noalias !1707
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.jq = load float, ptr %i.jp, align 4, !noalias !1707
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.js = load float, ptr %i.jr, align 4, !noalias !1707
  %i.jt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iw, i64 0
  %i.ju = insertelement <4 x float> %i.jt, float %i.je, i64 1
  %i.jv = insertelement <4 x float> %i.ju, float %i.jm, i64 2
  %i.jw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iy, i64 0
  %i.jx = insertelement <4 x float> %i.jw, float %i.jg, i64 1
  %i.jy = insertelement <4 x float> %i.jx, float %i.jo, i64 2
  %i.jz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ja, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.ji, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jq, i64 2
  %i.kc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jc, i64 0
  %i.kd = insertelement <4 x float> %i.kc, float %i.jk, i64 1
  %i.ke = insertelement <4 x float> %i.kd, float %i.js, i64 2
  br label %.noexc225

.noexc225:                                        ; preds = %bb.b, %.noexc239, %.noexc237, %.noexc236, %.noexc234
  %.sroa.29675.0 = phi <4 x float> [ %i.fn, %.noexc234 ], [ %5, %.noexc236 ], [ %i.iq, %.noexc237 ], [ %i.ke, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.20672.0 = phi <4 x float> [ %i.fl, %.noexc234 ], [ %.sroa.20672.44.vec.insert, %.noexc236 ], [ %i.ij, %.noexc237 ], [ %i.kb, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.11669.0 = phi <4 x float> [ %i.fj, %.noexc234 ], [ %.sroa.11669.28.vec.insert, %.noexc236 ], [ %i.ic, %.noexc237 ], [ %i.jy, %.noexc239 ], [ undef, %bb.b ] ; 6 uses
  %.sroa.0666.0 = phi <4 x float> [ %i.fh, %.noexc234 ], [ %.sroa.0666.12.vec.insert, %.noexc236 ], [ %i.hv, %.noexc237 ], [ %i.jv, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.29675.60.vec.extract = extractelement <4 x float> %.sroa.29675.0, i64 3 ; 7 uses
  %.sroa.0666.12.vec.extract = extractelement <4 x float> %.sroa.0666.0, i64 3 ; 7 uses
  %.sroa.11669.28.vec.extract = extractelement <4 x float> %.sroa.11669.0, i64 3 ; 7 uses
  %.sroa.20672.44.vec.extract = extractelement <4 x float> %.sroa.20672.0, i64 3 ; 6 uses
  %.sroa.17817.52.vec.insert = shufflevector <4 x float> %.sroa.0666.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17817.56.vec.insert = shufflevector <4 x float> %.sroa.17817.52.vec.insert, <4 x float> %.sroa.11669.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.kf = fmul float %.sroa.0666.12.vec.extract, %.sroa.0666.12.vec.extract
  %i.kg = tail call float @llvm.fmuladd.f32(float %.sroa.29675.60.vec.extract, float %.sroa.29675.60.vec.extract, float %i.kf)
  %i.kh = fneg float %.sroa.11669.28.vec.extract  ; 3 uses
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11669.28.vec.extract, float %i.kg)
  %i.kj = fneg float %.sroa.20672.44.vec.extract  ; 3 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %.sroa.20672.44.vec.extract, float %i.ki)
  %i.kl = fmul float %.sroa.29675.60.vec.extract, %.sroa.20672.44.vec.extract
  %i.km = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kl)
  %i.kn = fmul float %i.km, 2.000000e+00
  %i.ko = fmul float %.sroa.29675.60.vec.extract, %i.kh
  %i.kp = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.20672.44.vec.extract, float %i.ko)
  %i.kq = fmul float %i.kp, 2.000000e+00
  %i.kr = fmul float %.sroa.29675.60.vec.extract, %i.kj
  %i.ks = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kr)
  %i.kt = fmul float %i.ks, 2.000000e+00
  %i.ku = fneg float %.sroa.0666.12.vec.extract   ; 2 uses
  %i.kv = fmul float %.sroa.0666.12.vec.extract, %i.ku
  %i.kw = tail call float @llvm.fmuladd.f32(float %.sroa.29675.60.vec.extract, float %.sroa.29675.60.vec.extract, float %i.kv) ; 2 uses
  %i.kx = tail call float @llvm.fmuladd.f32(float %.sroa.11669.28.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kw)
  %i.ky = shufflevector <4 x float> %.sroa.29675.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.kz = shufflevector <4 x float> %.sroa.0666.0, <4 x float> %.sroa.11669.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.kx, i64 0
  %i.lb = insertelement <4 x float> %i.la, float %i.ku, i64 3
  %i.lc = fmul <4 x float> %i.ky, %i.lb
  %i.ld = shufflevector <4 x float> %.sroa.11669.0, <4 x float> %.sroa.0666.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.le = insertelement <4 x float> %i.ld, float %i.kj, i64 0
  %i.lf = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lf, <4 x float> %i.lc) ; 3 uses
  %i.lh = extractelement <4 x float> %i.lg, i64 1
  %i.li = fmul float %i.lh, 2.000000e+00
  %i.lj = shufflevector <4 x float> %i.lg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lk = fmul <2 x float> %i.lj, splat (float 2.000000e+00) ; 2 uses
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11669.28.vec.extract, float %i.kw)
  %i.lm = tail call float @llvm.fmuladd.f32(float %.sroa.20672.44.vec.extract, float %.sroa.20672.44.vec.extract, float %i.ll)
  %i.ln = insertelement <4 x float> poison, float %i.kk, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lp = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.ls, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.lu = fmul <4 x float> %i.lq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lv = fadd <4 x float> %i.lu, %i.lt
  %i.lw = fmul <4 x float> %i.lo, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lx = fadd <4 x float> %i.lv, %i.lw           ; 4 uses
  %i.ly = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = insertelement <4 x float> poison, float %i.li, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = fmul <4 x float> %i.mc, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.me = fmul <4 x float> %i.ma, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mf = fadd <4 x float> %i.md, %i.me
  %i.mg = fmul <4 x float> %i.lz, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mh = fadd <4 x float> %i.mg, %i.mf           ; 4 uses
  %i.mi = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mj = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul <4 x float> %i.ml, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.mn = fmul <4 x float> %i.mj, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mo = fadd <4 x float> %i.mn, %i.mm
  %i.mp = fmul <4 x float> %i.mi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mq = fadd <4 x float> %i.mp, %i.mo           ; 3 uses
  %i.mr = fadd <4 x float> %.sroa.17817.56.vec.insert, zeroinitializer
  %i.ms = shufflevector <4 x float> %.sroa.0666.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mt = fmul <4 x float> %i.mq, zeroinitializer ; 2 uses
  %i.mu = fmul <4 x float> %i.mh, zeroinitializer
  %i.mv = fadd <4 x float> %i.mu, %i.mt
  %i.mw = fmul <4 x float> %i.ms, %i.lx
  %i.mx = fadd <4 x float> %i.mw, %i.mv           ; 2 uses
  %i.my = shufflevector <4 x float> %.sroa.11669.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = shufflevector <4 x float> %.sroa.11669.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.na = fmul <4 x float> %i.mz, %i.mh
  %i.nb = fadd <4 x float> %i.na, %i.mt
  %i.nc = fmul <4 x float> %i.my, %i.lx
  %i.nd = fadd <4 x float> %i.nc, %i.nb           ; 2 uses
  %i.ne = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ng = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nh = fmul <4 x float> %i.ng, %i.mq
  %i.ni = fmul <4 x float> %i.nf, %i.mh
  %i.nj = fadd <4 x float> %i.ni, %i.nh
  %i.nk = fmul <4 x float> %i.ne, %i.lx
  %i.nl = fadd <4 x float> %i.nk, %i.nj           ; 2 uses
  %i.nm = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nn = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.np = fmul <4 x float> %i.no, %i.mq
  %i.nq = fmul <4 x float> %i.nn, %i.mh
  %i.nr = fadd <4 x float> %i.nq, %i.np
  %i.ns = fmul <4 x float> %i.nm, %i.lx
  %i.nt = fadd <4 x float> %i.ns, %i.nr
  %i.nu = fadd <4 x float> %i.mr, %i.nt           ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc226 [
    i32 37444, label %.noexc227
    i32 45057, label %.noexc229
    i32 37428, label %.noexc230
    i32 37172, label %.noexc232
  ]

.noexc227:                                        ; preds = %bb.c
  %i.nv = load ptr, ptr %i.ez, align 8, !noalias !1708
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !1708
  %i.ny = mul i64 %i.nx, %.0111120
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 16
  br label %.noexc226

.noexc229:                                        ; preds = %bb.c
  %i.oh = load ptr, ptr %i.ez, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = mul i64 %i.oj, %.0111120
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ok ; 12 uses
  %i.om = load float, ptr %i.ol, align 16
  %.sroa.0594.0.vec.insert = insertelement <4 x float> poison, float %i.om, i64 0
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.oo = load float, ptr %i.on, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oq = load float, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.os = load float, ptr %i.or, align 4
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.ot, float %i.oo, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.ov = load <2 x float>, ptr %i.ou, align 16
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.ow, float %i.oq, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 52
  %i.oy = load <2 x float>, ptr %i.ox, align 4
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0594.8.vec.insert1235 = shufflevector <4 x float> %.sroa.0594.0.vec.insert, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 60
  %i.pb = load float, ptr %i.pa, align 4
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.pb, i64 2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ol, i64 44
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 48
  %i.ph = load float, ptr %i.pg, align 16         ; 3 uses
  %i.pi = load float, ptr %i.pd, align 4          ; 2 uses
  %i.pj = load <4 x float>, ptr %i.pc, align 8    ; 2 uses
  %i.pk = load float, ptr %i.pe, align 8          ; 3 uses
  %i.pl = load float, ptr %i.pf, align 4          ; 3 uses
  %i.pm = fmul float %i.pk, %i.pk
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.pi, float %i.pm)
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pl, float %i.pl, float %i.pn)
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.ph, float %i.po) ; 2 uses
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.pq) ; 3 uses
  %i.ps = extractelement <4 x float> %i.pr, i64 0 ; 2 uses
  %i.pt = fmul float %i.ps, 1.500000e+00
  %i.pu = fmul float %i.pp, 5.000000e-01
  %i.pv = fmul float %i.ps, %i.pu
  %foldExtExtBinop1238 = fmul <4 x float> %i.pr, %i.pr
  %i.pw = extractelement <4 x float> %foldExtExtBinop1238, i64 0
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> poison, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %6 = shufflevector <4 x float> %i.pj, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qb = fmul float %i.pk, %i.py
  %i.qc = fmul float %i.pl, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0594.12.vec.insert = insertelement <4 x float> %.sroa.0594.8.vec.insert1235, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc226

.noexc230:                                        ; preds = %bb.c
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1708
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1708
  %i.qh = mul i64 %i.qg, %.0111120
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc226

.noexc232:                                        ; preds = %bb.c
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1708
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1708
  %i.rn = mul i64 %i.rm, %.0111120
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1708
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1708
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1708
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1708
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1708
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1708
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1708
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1708
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1708
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1708
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1708
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1708
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc226

.noexc226:                                        ; preds = %bb.c, %.noexc232, %.noexc230, %.noexc229, %.noexc227
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc227 ], [ %6, %.noexc229 ], [ %i.rj, %.noexc230 ], [ %i.sx, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc227 ], [ %.sroa.18.44.vec.insert, %.noexc229 ], [ %i.rc, %.noexc230 ], [ %i.su, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc227 ], [ %.sroa.10.28.vec.insert, %.noexc229 ], [ %i.qv, %.noexc230 ], [ %i.sr, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0594.0 = phi <4 x float> [ %i.oa, %.noexc227 ], [ %.sroa.0594.12.vec.insert, %.noexc229 ], [ %i.qo, %.noexc230 ], [ %i.so, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split: ; preds = %.noexc226, %.noexc225
  %.sink1205.ph = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ]
  %.sink1203.ph = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ]
  %.sink1201.ph = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ]
  %.sink1197.ph = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1706
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1706
  %i.tc = mul i64 %i.tb, %.0111120
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1706 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1706
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1706
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, %.noexc226, %.noexc225
  %.0.i268.sink1218 = phi ptr [ %i.em, %.noexc225 ], [ %i.em, %.noexc226 ], [ %i.tk, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 4 uses
  %.sink1205 = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ], [ %.sink1205.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1203 = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ], [ %.sink1203.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1201 = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ], [ %.sink1201.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1197 = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ], [ %.sink1197.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1706
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1706
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1706
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1706
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1205, %i.tx
  %i.tz = fadd <4 x float> %.sink1203, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1201, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1197, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1205, %i.ug
  %i.ui = fadd <4 x float> %.sink1203, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1201, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1197, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi) ; 2 uses
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi) ; 2 uses
  %i.vl = fcmp ugt <4 x float> %i.vj, splat (float -1.844000e+18)
  %i.vm = fcmp olt <4 x float> %i.vk, splat (float 1.844000e+18)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = bitcast <4 x i1> %i.vn to i4
  %i.vp = and i4 %i.vo, 7
  %i.vq = icmp eq i4 %i.vp, 7
  br i1 %i.vq, label %.noexc15, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, !prof !40

.noexc15:                                         ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit
  %i.vr = trunc i64 %.0111120 to i32
  %i.vs = fadd <4 x float> %i.vk, %i.vj
  %i.vt = fsub <4 x float> %i.vs, %i.h
  %i.vu = fmul <4 x float> %i.k, %i.vt
  %i.vv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vu) ; 3 uses
  %i.vw = extractelement <4 x i32> %i.vv, i64 0
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %i.vw, ptr %i.vx, align 4
  %.sroa.0276.4.vec.extract = extractelement <4 x i32> %i.vv, i64 1
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0276.4.vec.extract, ptr %i.vy, align 4
  %.sroa.0276.8.vec.extract = extractelement <4 x i32> %i.vv, i64 2
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %.sroa.0276.8.vec.extract, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.eh
  store i32 %i.vr, ptr %i.wa, align 4
  %i.wb = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %i.wc = add i64 %i.ei, 1                        ; 2 uses
  %i.wd = icmp eq i64 %i.wb, 4
  br i1 %i.wd, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.we = load <2 x i64>, ptr %i.n, align 16, !noalias !1709 ; 2 uses
  %i.wf = load <2 x i64>, ptr %i.o, align 16, !noalias !1709 ; 2 uses
  %i.wg = load <2 x i64>, ptr %i.p, align 16, !noalias !1709 ; 2 uses
  %i.wh = bitcast <2 x i64> %i.we to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 16)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or <2 x i64> %i.we, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216173877380776191) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl <4 x i32> %i.wm, splat (i32 8)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 216436729379352591) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 4)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 219604095962198211) ; 2 uses
  %i.ww = bitcast <2 x i64> %i.wv to <4 x i32>
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 2)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or disjoint <2 x i64> %i.wv, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 658812287886594633)
  %i.xb = bitcast <2 x i64> %i.wf to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 16)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or <2 x i64> %i.wf, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216173877380776191) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl <4 x i32> %i.xg, splat (i32 8)
  %i.xi = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xj = or disjoint <2 x i64> %i.xf, %i.xi
  %i.xk = and <2 x i64> %i.xj, splat (i64 216436729379352591) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xm = shl nuw nsw <4 x i32> %i.xl, splat (i32 4)
  %i.xn = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xo = or disjoint <4 x i32> %i.xm, %i.xn
  %i.xp = and <4 x i32> %i.xo, splat (i32 51130563) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 16)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or <2 x i64> %i.wg, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216173877380776191) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl <4 x i32> %i.xv, splat (i32 8)
  %i.xx = bitcast <4 x i32> %i.xw to <2 x i64>
  %i.xy = or disjoint <2 x i64> %i.xu, %i.xx
  %i.xz = and <2 x i64> %i.xy, splat (i64 216436729379352591) ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yb = shl nuw nsw <4 x i32> %i.ya, splat (i32 4)
  %i.yc = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yd = or disjoint <4 x i32> %i.yb, %i.yc
  %i.ye = and <4 x i32> %i.yd, splat (i32 51130563) ; 2 uses
  %i.yf = shl nuw nsw <4 x i32> %i.xp, splat (i32 3)
  %i.yg = shl nuw nsw <4 x i32> %i.xp, splat (i32 1)
  %i.yh = or disjoint <4 x i32> %i.yf, %i.yg
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>
  %i.yj = and <2 x i64> %i.yi, splat (i64 1317624575773189266)
  %i.yk = or disjoint <2 x i64> %i.yj, %i.xa
  %i.yl = shl nuw nsw <4 x i32> %i.ye, splat (i32 4)
  %i.ym = shl nuw nsw <4 x i32> %i.ye, splat (i32 2)
  %i.yn = or disjoint <4 x i32> %i.yl, %i.ym
  %i.yo = bitcast <4 x i32> %i.yn to <2 x i64>
  %i.yp = and <2 x i64> %i.yo, splat (i64 2635249151546378532)
  %i.yq = or disjoint <2 x i64> %i.yk, %i.yp
  %i.yr = getelementptr [8 x i8], ptr %i.g, i64 %i.wc ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 -32
  %i.yt = bitcast <2 x i64> %i.yq to <4 x float>  ; 2 uses
  %i.yu = load <4 x float>, ptr %i.q, align 16, !noalias !1710 ; 2 uses
  %i.yv = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yv, ptr %i.ys, align 1
  %i.yw = getelementptr i8, ptr %i.yr, i64 -16
  %i.yx = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yx, ptr %i.yw, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.yy = phi i64 [ 0, %.noexc20 ], [ %i.wb, %.noexc15 ]
  %i.yz = add i64 %.01123, 1
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %.noexc221, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.za = phi i64 [ %i.wc, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.ei, %.noexc221 ] ; 2 uses
  %i.zb = phi i64 [ %i.yy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eh, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.eh, %.noexc221 ] ; 10 uses
  %.1 = phi i64 [ %i.yz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01123, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.01123, %.noexc221 ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZZN6embree4sse221createMortonCodeArrayINS_13InstanceArrayEEEmPT_RNS_8vector_tINS0_16BVHBuilderMorton9BuildPrimENS_27aligned_monitored_allocatorIS7_Lm8EEEEERNS_20BuildProgressMonitorEENKUlRKNS_5rangeImEEmE0_clESH_m:bb.a
  br i1 %i.cn, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.zb, 4611686018427387900     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %wide.load = load <2 x i32>, ptr %i.co, align 16
  %wide.load1230 = load <2 x i32>, ptr %i.cp, align 8
  %i.cq = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cr = getelementptr [8 x i8], ptr %i.cj, i64 %index
  %i.cs = getelementptr i8, ptr %i.cr, i64 16
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %wide.load1231 = load <2 x i32>, ptr %i.ct, align 16
  %wide.load1232 = load <2 x i32>, ptr %i.cu, align 8
  %interleaved.vec = shufflevector <2 x i32> %wide.load1231, <2 x i32> %wide.load, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec, ptr %i.cq, align 4
  %interleaved.vec1233 = shufflevector <2 x i32> %wide.load1232, <2 x i32> %wide.load1230, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x i32> %interleaved.vec1233, ptr %i.cs, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !1715

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106, %middle.block
  %.0.i1126.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_ZN6embree13bitInterleaveINS_9vint_implILi4EEEEET_RKS3_S5_S5_.exit106 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.zb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.0.i1126.prol = phi i64 [ %i.dc, %scalar.ph.prol ], [ %.0.i1126.ph, %scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0.i1126.prol
  %i.cx = load i32, ptr %i.cw, align 4
  %i.cy = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1126.prol ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 %i.cx, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i1126.prol
  %i.db = load i32, ptr %i.da, align 4
  store i32 %i.db, ptr %i.cy, align 8
  %i.dc = add nuw nsw i64 %.0.i1126.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1716

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.0.i1126.unr = phi i64 [ %.0.i1126.ph, %scalar.ph.preheader ], [ %i.dc, %scalar.ph.prol ]
  %i.dd = sub i64 %.0.i1126.ph, %i.zb
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %.loopexit, label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.0.i1126 = phi i64 [ %i.eg, %scalar.ph ], [ %.0.i1126.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %.0.i1126
  %i.dg = load i32, ptr %i.df, align 4
  %i.dh = getelementptr [8 x i8], ptr %i.cj, i64 %.0.i1126 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.dg, ptr %i.di, align 4
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0.i1126
  %i.dk = load i32, ptr %i.dj, align 4
  store i32 %i.dk, ptr %i.dh, align 8
  %i.dl = add nuw nsw i64 %.0.i1126, 1            ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = getelementptr [8 x i8], ptr %i.cj, i64 %i.dl ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  store i32 %i.dn, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dl
  %i.dr = load i32, ptr %i.dq, align 4
  store i32 %i.dr, ptr %i.do, align 8
  %i.ds = add nuw nsw i64 %.0.i1126, 2            ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = getelementptr [8 x i8], ptr %i.cj, i64 %i.ds ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  store i32 %i.du, ptr %i.dw, align 4
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ds
  %i.dy = load i32, ptr %i.dx, align 4
  store i32 %i.dy, ptr %i.dv, align 8
  %i.dz = add nuw nsw i64 %.0.i1126, 3            ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = getelementptr [8 x i8], ptr %i.cj, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  store i32 %i.eb, ptr %i.ed, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dz
  %i.ef = load i32, ptr %i.ee, align 4
  store i32 %i.ef, ptr %i.ec, align 8
  %i.eg = add nuw nsw i64 %.0.i1126, 4            ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.eg, %i.zb
  br i1 %exitcond.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !1717

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorD2Ev.exit: ; preds = %bb.a, %._crit_edge, %.loopexit
  %.0.lcssa1136 = phi i64 [ %.1, %.loopexit ], [ %.1, %._crit_edge ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  ret i64 %.0.lcssa1136

_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit: ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread
  %.01123 = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %.1, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %.0111120 = phi i64 [ %i.q, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.zc, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 12 uses
  %i.eh = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.zb, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 7 uses
  %i.ei = phi i64 [ 0, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit.lr.ph ], [ %i.za, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread ] ; 3 uses
  %i.ej = load ptr, ptr %i.u, align 8, !nonnull !28, !align !29
  %i.ek = load ptr, ptr %i.ej, align 8            ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load ptr, ptr %i.el, align 8            ; 3 uses
  %.not.i223 = icmp eq ptr %i.em, null            ; 3 uses
  br i1 %.not.i223, label %.noexc221, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

.noexc221:                                        ; preds = %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.eq = load i64, ptr %i.ep, align 8
  %i.er = mul i64 %i.eq, %.0111120
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  %i.et = load i32, ptr %i.es, align 4
  %.not = icmp eq i32 %i.et, -1
  br i1 %.not, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread, label %_ZNK6embree13InstanceArray5validEm.exit.i.thread

_ZNK6embree13InstanceArray5validEm.exit.i.thread: ; preds = %.noexc221, %_ZN6embree4BBoxINS_6Vec3faEEC2ENS_7EmptyTyE.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  %i.ev = load i32, ptr %i.eu, align 4, !noalias !1730
  %i.ew = and i32 %i.ev, 65280
  %i.ex = icmp eq i32 %i.ew, 256
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ek, i64 136
  %i.ez = load ptr, ptr %i.ey, align 8, !noalias !28 ; 17 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 32
  %i.fb = load i32, ptr %i.fa, align 8, !noalias !28 ; 2 uses
  br i1 %i.ex, label %bb.b, label %bb.c, !prof !31

bb.b:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc225 [
    i32 37444, label %.noexc234
    i32 45057, label %.noexc236
    i32 37428, label %.noexc237
    i32 37172, label %.noexc239
  ]

.noexc234:                                        ; preds = %bb.b
  %i.fc = load ptr, ptr %i.ez, align 8, !noalias !1731
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !noalias !1731
  %i.ff = mul i64 %i.fe, %.0111120
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ff ; 4 uses
  %i.fh = load <4 x float>, ptr %i.fg, align 16
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fj = load <4 x float>, ptr %i.fi, align 16
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fl = load <4 x float>, ptr %i.fk, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fn = load <4 x float>, ptr %i.fm, align 16
  br label %.noexc225

.noexc236:                                        ; preds = %bb.b
  %i.fo = load ptr, ptr %i.ez, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fq = load i64, ptr %i.fp, align 8
  %i.fr = mul i64 %i.fq, %.0111120
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fr ; 12 uses
  %i.ft = load float, ptr %i.fs, align 16
  %.sroa.0666.0.vec.insert = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  %i.fv = load float, ptr %i.fu, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fx = load float, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fs, i64 12
  %i.fz = load float, ptr %i.fy, align 4
  %i.ga = insertelement <4 x float> poison, float %i.fz, i64 0
  %.sroa.11669.16.vec.insert = insertelement <4 x float> %i.ga, float %i.fv, i64 1
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  %i.gc = load <2 x float>, ptr %i.gb, align 16
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.20672.36.vec.insert = insertelement <4 x float> %i.gd, float %i.fx, i64 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fs, i64 52
  %i.gf = load <2 x float>, ptr %i.ge, align 4
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0666.8.vec.insert1234 = shufflevector <4 x float> %.sroa.0666.0.vec.insert, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fs, i64 60
  %i.gi = load float, ptr %i.gh, align 4
  %.sroa.11669.24.vec.insert = insertelement <4 x float> %.sroa.11669.16.vec.insert, float %i.gi, i64 2
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fs, i64 36
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fs, i64 44
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.go = load float, ptr %i.gn, align 16         ; 3 uses
  %i.gp = load float, ptr %i.gk, align 4          ; 2 uses
  %i.gq = load <4 x float>, ptr %i.gj, align 8    ; 2 uses
  %i.gr = load float, ptr %i.gl, align 8          ; 3 uses
  %i.gs = load float, ptr %i.gm, align 4          ; 3 uses
  %i.gt = fmul float %i.gr, %i.gr
  %i.gu = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.gp, float %i.gt)
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.go, float %i.go, float %i.gv) ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.gw, i64 0
  %i.gy = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.gx) ; 3 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0 ; 2 uses
  %i.ha = fmul float %i.gz, 1.500000e+00
  %i.hb = fmul float %i.gw, 5.000000e-01
  %i.hc = fmul float %i.gz, %i.hb
  %foldExtExtBinop = fmul <4 x float> %i.gy, %i.gy
  %i.hd = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.he = fmul float %i.hd, %i.hc
  %i.hf = fsub float %i.ha, %i.he                 ; 4 uses
  %i.hg = insertelement <4 x float> poison, float %i.hf, i64 3
  %i.hh = fmul <4 x float> %i.gq, %i.hg
  %5 = shufflevector <4 x float> %i.gq, <4 x float> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.hi = fmul float %i.gr, %i.hf
  %i.hj = fmul float %i.gs, %i.hf
  %i.hk = fmul float %i.go, %i.hf
  %.sroa.0666.12.vec.insert = insertelement <4 x float> %.sroa.0666.8.vec.insert1234, float %i.hi, i64 3
  %.sroa.11669.28.vec.insert = insertelement <4 x float> %.sroa.11669.24.vec.insert, float %i.hj, i64 3
  %.sroa.20672.44.vec.insert = insertelement <4 x float> %.sroa.20672.36.vec.insert, float %i.hk, i64 3
  br label %.noexc225

.noexc237:                                        ; preds = %bb.b
  %i.hl = load ptr, ptr %i.ez, align 8, !noalias !1731
  %i.hm = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !noalias !1731
  %i.ho = mul i64 %i.hn, %.0111120
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.ho ; 8 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hr = load <2 x float>, ptr %i.hq, align 4
  %i.hs = load float, ptr %i.hp, align 4
  %i.ht = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hs, i64 0
  %i.hu = shufflevector <2 x float> %i.hr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.hv = shufflevector <4 x float> %i.ht, <4 x float> %i.hu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hp, i64 12
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hy = load <2 x float>, ptr %i.hx, align 4
  %i.hz = load float, ptr %i.hw, align 4
  %i.ia = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.hz, i64 0
  %i.ib = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ia, <4 x float> %i.ib, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.id = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hp, i64 28
  %i.if = load <2 x float>, ptr %i.ie, align 4
  %i.ig = load float, ptr %i.id, align 4
  %i.ih = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ig, i64 0
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ij = shufflevector <4 x float> %i.ih, <4 x float> %i.ii, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hp, i64 36
  %i.il = getelementptr inbounds nuw i8, ptr %i.hp, i64 40
  %i.im = load <2 x float>, ptr %i.il, align 4
  %i.in = load float, ptr %i.ik, align 4
  %i.io = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.in, i64 0
  %i.ip = shufflevector <2 x float> %i.im, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iq = shufflevector <4 x float> %i.io, <4 x float> %i.ip, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc225

.noexc239:                                        ; preds = %bb.b
  %i.ir = load ptr, ptr %i.ez, align 8, !noalias !1731
  %i.is = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.it = load i64, ptr %i.is, align 8, !noalias !1731
  %i.iu = mul i64 %i.it, %.0111120
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu ; 12 uses
  %i.iw = load float, ptr %i.iv, align 4, !noalias !1731
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.iy = load float, ptr %i.ix, align 4, !noalias !1731
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.ja = load float, ptr %i.iz, align 4, !noalias !1731
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iv, i64 12
  %i.jc = load float, ptr %i.jb, align 4, !noalias !1731
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.je = load float, ptr %i.jd, align 4, !noalias !1731
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iv, i64 20
  %i.jg = load float, ptr %i.jf, align 4, !noalias !1731
  %i.jh = getelementptr inbounds nuw i8, ptr %i.iv, i64 24
  %i.ji = load float, ptr %i.jh, align 4, !noalias !1731
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iv, i64 28
  %i.jk = load float, ptr %i.jj, align 4, !noalias !1731
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iv, i64 32
  %i.jm = load float, ptr %i.jl, align 4, !noalias !1731
  %i.jn = getelementptr inbounds nuw i8, ptr %i.iv, i64 36
  %i.jo = load float, ptr %i.jn, align 4, !noalias !1731
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.jq = load float, ptr %i.jp, align 4, !noalias !1731
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iv, i64 44
  %i.js = load float, ptr %i.jr, align 4, !noalias !1731
  %i.jt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iw, i64 0
  %i.ju = insertelement <4 x float> %i.jt, float %i.je, i64 1
  %i.jv = insertelement <4 x float> %i.ju, float %i.jm, i64 2
  %i.jw = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.iy, i64 0
  %i.jx = insertelement <4 x float> %i.jw, float %i.jg, i64 1
  %i.jy = insertelement <4 x float> %i.jx, float %i.jo, i64 2
  %i.jz = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ja, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.ji, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jq, i64 2
  %i.kc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.jc, i64 0
  %i.kd = insertelement <4 x float> %i.kc, float %i.jk, i64 1
  %i.ke = insertelement <4 x float> %i.kd, float %i.js, i64 2
  br label %.noexc225

.noexc225:                                        ; preds = %bb.b, %.noexc239, %.noexc237, %.noexc236, %.noexc234
  %.sroa.29675.0 = phi <4 x float> [ %i.fn, %.noexc234 ], [ %5, %.noexc236 ], [ %i.iq, %.noexc237 ], [ %i.ke, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.20672.0 = phi <4 x float> [ %i.fl, %.noexc234 ], [ %.sroa.20672.44.vec.insert, %.noexc236 ], [ %i.ij, %.noexc237 ], [ %i.kb, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.11669.0 = phi <4 x float> [ %i.fj, %.noexc234 ], [ %.sroa.11669.28.vec.insert, %.noexc236 ], [ %i.ic, %.noexc237 ], [ %i.jy, %.noexc239 ], [ undef, %bb.b ] ; 6 uses
  %.sroa.0666.0 = phi <4 x float> [ %i.fh, %.noexc234 ], [ %.sroa.0666.12.vec.insert, %.noexc236 ], [ %i.hv, %.noexc237 ], [ %i.jv, %.noexc239 ], [ undef, %bb.b ] ; 5 uses
  %.sroa.29675.60.vec.extract = extractelement <4 x float> %.sroa.29675.0, i64 3 ; 7 uses
  %.sroa.0666.12.vec.extract = extractelement <4 x float> %.sroa.0666.0, i64 3 ; 7 uses
  %.sroa.11669.28.vec.extract = extractelement <4 x float> %.sroa.11669.0, i64 3 ; 7 uses
  %.sroa.20672.44.vec.extract = extractelement <4 x float> %.sroa.20672.0, i64 3 ; 6 uses
  %.sroa.17817.52.vec.insert = shufflevector <4 x float> %.sroa.0666.0, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 poison, i32 7>
  %.sroa.17817.56.vec.insert = shufflevector <4 x float> %.sroa.17817.52.vec.insert, <4 x float> %.sroa.11669.0, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.kf = fmul float %.sroa.0666.12.vec.extract, %.sroa.0666.12.vec.extract
  %i.kg = tail call float @llvm.fmuladd.f32(float %.sroa.29675.60.vec.extract, float %.sroa.29675.60.vec.extract, float %i.kf)
  %i.kh = fneg float %.sroa.11669.28.vec.extract  ; 3 uses
  %i.ki = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11669.28.vec.extract, float %i.kg)
  %i.kj = fneg float %.sroa.20672.44.vec.extract  ; 3 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.kj, float %.sroa.20672.44.vec.extract, float %i.ki)
  %i.kl = fmul float %.sroa.29675.60.vec.extract, %.sroa.20672.44.vec.extract
  %i.km = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kl)
  %i.kn = fmul float %i.km, 2.000000e+00
  %i.ko = fmul float %.sroa.29675.60.vec.extract, %i.kh
  %i.kp = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.20672.44.vec.extract, float %i.ko)
  %i.kq = fmul float %i.kp, 2.000000e+00
  %i.kr = fmul float %.sroa.29675.60.vec.extract, %i.kj
  %i.ks = tail call float @llvm.fmuladd.f32(float %.sroa.0666.12.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kr)
  %i.kt = fmul float %i.ks, 2.000000e+00
  %i.ku = fneg float %.sroa.0666.12.vec.extract   ; 2 uses
  %i.kv = fmul float %.sroa.0666.12.vec.extract, %i.ku
  %i.kw = tail call float @llvm.fmuladd.f32(float %.sroa.29675.60.vec.extract, float %.sroa.29675.60.vec.extract, float %i.kv) ; 2 uses
  %i.kx = tail call float @llvm.fmuladd.f32(float %.sroa.11669.28.vec.extract, float %.sroa.11669.28.vec.extract, float %i.kw)
  %i.ky = shufflevector <4 x float> %.sroa.29675.0, <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 3, i32 3, i32 3>
  %i.kz = shufflevector <4 x float> %.sroa.0666.0, <4 x float> %.sroa.11669.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 poison>
  %i.la = insertelement <4 x float> %i.kz, float %i.kx, i64 0
  %i.lb = insertelement <4 x float> %i.la, float %i.ku, i64 3
  %i.lc = fmul <4 x float> %i.ky, %i.lb
  %i.ld = shufflevector <4 x float> %.sroa.11669.0, <4 x float> %.sroa.0666.0, <4 x i32> <i32 poison, i32 3, i32 7, i32 3>
  %i.le = insertelement <4 x float> %i.ld, float %i.kj, i64 0
  %i.lf = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.lg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.le, <4 x float> %i.lf, <4 x float> %i.lc) ; 3 uses
  %i.lh = extractelement <4 x float> %i.lg, i64 1
  %i.li = fmul float %i.lh, 2.000000e+00
  %i.lj = shufflevector <4 x float> %i.lg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.lk = fmul <2 x float> %i.lj, splat (float 2.000000e+00) ; 2 uses
  %i.ll = tail call float @llvm.fmuladd.f32(float %i.kh, float %.sroa.11669.28.vec.extract, float %i.kw)
  %i.lm = tail call float @llvm.fmuladd.f32(float %.sroa.20672.44.vec.extract, float %.sroa.20672.44.vec.extract, float %i.ll)
  %i.ln = insertelement <4 x float> poison, float %i.kk, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lp = insertelement <4 x float> poison, float %i.kn, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lr = insertelement <4 x float> poison, float %i.kq, i64 0
  %i.ls = shufflevector <4 x float> %i.lr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.lt = fmul <4 x float> %i.ls, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.lu = fmul <4 x float> %i.lq, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lv = fadd <4 x float> %i.lu, %i.lt
  %i.lw = fmul <4 x float> %i.lo, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.lx = fadd <4 x float> %i.lv, %i.lw           ; 4 uses
  %i.ly = insertelement <4 x float> poison, float %i.kt, i64 0
  %i.lz = shufflevector <4 x float> %i.ly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ma = shufflevector <4 x float> %i.lg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mb = insertelement <4 x float> poison, float %i.li, i64 0
  %i.mc = shufflevector <4 x float> %i.mb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.md = fmul <4 x float> %i.mc, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.me = fmul <4 x float> %i.ma, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mf = fadd <4 x float> %i.md, %i.me
  %i.mg = fmul <4 x float> %i.lz, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mh = fadd <4 x float> %i.mg, %i.mf           ; 4 uses
  %i.mi = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> zeroinitializer
  %i.mj = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.mk = insertelement <4 x float> poison, float %i.lm, i64 0
  %i.ml = shufflevector <4 x float> %i.mk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mm = fmul <4 x float> %i.ml, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>
  %i.mn = fmul <4 x float> %i.mj, <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mo = fadd <4 x float> %i.mn, %i.mm
  %i.mp = fmul <4 x float> %i.mi, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.mq = fadd <4 x float> %i.mp, %i.mo           ; 3 uses
  %i.mr = fadd <4 x float> %.sroa.17817.56.vec.insert, zeroinitializer
  %i.ms = shufflevector <4 x float> %.sroa.0666.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mt = fmul <4 x float> %i.mq, zeroinitializer ; 2 uses
  %i.mu = fmul <4 x float> %i.mh, zeroinitializer
  %i.mv = fadd <4 x float> %i.mu, %i.mt
  %i.mw = fmul <4 x float> %i.ms, %i.lx
  %i.mx = fadd <4 x float> %i.mw, %i.mv           ; 2 uses
  %i.my = shufflevector <4 x float> %.sroa.11669.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.mz = shufflevector <4 x float> %.sroa.11669.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.na = fmul <4 x float> %i.mz, %i.mh
  %i.nb = fadd <4 x float> %i.na, %i.mt
  %i.nc = fmul <4 x float> %i.my, %i.lx
  %i.nd = fadd <4 x float> %i.nc, %i.nb           ; 2 uses
  %i.ne = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nf = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ng = shufflevector <4 x float> %.sroa.20672.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.nh = fmul <4 x float> %i.ng, %i.mq
  %i.ni = fmul <4 x float> %i.nf, %i.mh
  %i.nj = fadd <4 x float> %i.ni, %i.nh
  %i.nk = fmul <4 x float> %i.ne, %i.lx
  %i.nl = fadd <4 x float> %i.nk, %i.nj           ; 2 uses
  %i.nm = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nn = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.no = shufflevector <4 x float> %.sroa.29675.0, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.np = fmul <4 x float> %i.no, %i.mq
  %i.nq = fmul <4 x float> %i.nn, %i.mh
  %i.nr = fadd <4 x float> %i.nq, %i.np
  %i.ns = fmul <4 x float> %i.nm, %i.lx
  %i.nt = fadd <4 x float> %i.ns, %i.nr
  %i.nu = fadd <4 x float> %i.mr, %i.nt           ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

bb.c:                                             ; preds = %_ZNK6embree13InstanceArray5validEm.exit.i.thread
  switch i32 %i.fb, label %.noexc226 [
    i32 37444, label %.noexc227
    i32 45057, label %.noexc229
    i32 37428, label %.noexc230
    i32 37172, label %.noexc232
  ]

.noexc227:                                        ; preds = %bb.c
  %i.nv = load ptr, ptr %i.ez, align 8, !noalias !1732
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.nx = load i64, ptr %i.nw, align 8, !noalias !1732
  %i.ny = mul i64 %i.nx, %.0111120
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nv, i64 %i.ny ; 4 uses
  %i.oa = load <4 x float>, ptr %i.nz, align 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = load <4 x float>, ptr %i.ob, align 16
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 32
  %i.oe = load <4 x float>, ptr %i.od, align 16
  %i.of = getelementptr inbounds nuw i8, ptr %i.nz, i64 48
  %i.og = load <4 x float>, ptr %i.of, align 16
  br label %.noexc226

.noexc229:                                        ; preds = %bb.c
  %i.oh = load ptr, ptr %i.ez, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.oj = load i64, ptr %i.oi, align 8
  %i.ok = mul i64 %i.oj, %.0111120
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 %i.ok ; 12 uses
  %i.om = load float, ptr %i.ol, align 16
  %.sroa.0594.0.vec.insert = insertelement <4 x float> poison, float %i.om, i64 0
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.oo = load float, ptr %i.on, align 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.oq = load float, ptr %i.op, align 8
  %i.or = getelementptr inbounds nuw i8, ptr %i.ol, i64 12
  %i.os = load float, ptr %i.or, align 4
  %i.ot = insertelement <4 x float> poison, float %i.os, i64 0
  %.sroa.10.16.vec.insert = insertelement <4 x float> %i.ot, float %i.oo, i64 1
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ol, i64 16
  %i.ov = load <2 x float>, ptr %i.ou, align 16
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.18.36.vec.insert = insertelement <4 x float> %i.ow, float %i.oq, i64 2
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ol, i64 52
  %i.oy = load <2 x float>, ptr %i.ox, align 4
  %i.oz = shufflevector <2 x float> %i.oy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %.sroa.0594.8.vec.insert1235 = shufflevector <4 x float> %.sroa.0594.0.vec.insert, <4 x float> %i.oz, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ol, i64 60
  %i.pb = load float, ptr %i.pa, align 4
  %.sroa.10.24.vec.insert = insertelement <4 x float> %.sroa.10.16.vec.insert, float %i.pb, i64 2
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ol, i64 36
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ol, i64 40
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ol, i64 44
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ol, i64 48
  %i.ph = load float, ptr %i.pg, align 16         ; 3 uses
  %i.pi = load float, ptr %i.pd, align 4          ; 2 uses
  %i.pj = load <4 x float>, ptr %i.pc, align 8    ; 2 uses
  %i.pk = load float, ptr %i.pe, align 8          ; 3 uses
  %i.pl = load float, ptr %i.pf, align 4          ; 3 uses
  %i.pm = fmul float %i.pk, %i.pk
  %i.pn = tail call float @llvm.fmuladd.f32(float %i.pi, float %i.pi, float %i.pm)
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pl, float %i.pl, float %i.pn)
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.ph, float %i.ph, float %i.po) ; 2 uses
  %i.pq = insertelement <4 x float> poison, float %i.pp, i64 0
  %i.pr = tail call noundef <4 x float> @llvm.x86.sse.rsqrt.ss(<4 x float> %i.pq) ; 3 uses
  %i.ps = extractelement <4 x float> %i.pr, i64 0 ; 2 uses
  %i.pt = fmul float %i.ps, 1.500000e+00
  %i.pu = fmul float %i.pp, 5.000000e-01
  %i.pv = fmul float %i.ps, %i.pu
  %foldExtExtBinop1238 = fmul <4 x float> %i.pr, %i.pr
  %i.pw = extractelement <4 x float> %foldExtExtBinop1238, i64 0
  %i.px = fmul float %i.pw, %i.pv
  %i.py = fsub float %i.pt, %i.px                 ; 4 uses
  %i.pz = insertelement <4 x float> poison, float %i.py, i64 3
  %i.qa = fmul <4 x float> %i.pj, %i.pz
  %6 = shufflevector <4 x float> %i.pj, <4 x float> %i.qa, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.qb = fmul float %i.pk, %i.py
  %i.qc = fmul float %i.pl, %i.py
  %i.qd = fmul float %i.ph, %i.py
  %.sroa.0594.12.vec.insert = insertelement <4 x float> %.sroa.0594.8.vec.insert1235, float %i.qb, i64 3
  %.sroa.10.28.vec.insert = insertelement <4 x float> %.sroa.10.24.vec.insert, float %i.qc, i64 3
  %.sroa.18.44.vec.insert = insertelement <4 x float> %.sroa.18.36.vec.insert, float %i.qd, i64 3
  br label %.noexc226

.noexc230:                                        ; preds = %bb.c
  %i.qe = load ptr, ptr %i.ez, align 8, !noalias !1732
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.qg = load i64, ptr %i.qf, align 8, !noalias !1732
  %i.qh = mul i64 %i.qg, %.0111120
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qh ; 8 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qk = load <2 x float>, ptr %i.qj, align 4
  %i.ql = load float, ptr %i.qi, align 4
  %i.qm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.ql, i64 0
  %i.qn = shufflevector <2 x float> %i.qk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qo = shufflevector <4 x float> %i.qm, <4 x float> %i.qn, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qi, i64 12
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qr = load <2 x float>, ptr %i.qq, align 4
  %i.qs = load float, ptr %i.qp, align 4
  %i.qt = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qs, i64 0
  %i.qu = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qv = shufflevector <4 x float> %i.qt, <4 x float> %i.qu, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qi, i64 24
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qi, i64 28
  %i.qy = load <2 x float>, ptr %i.qx, align 4
  %i.qz = load float, ptr %i.qw, align 4
  %i.ra = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.qz, i64 0
  %i.rb = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rc = shufflevector <4 x float> %i.ra, <4 x float> %i.rb, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qi, i64 36
  %i.re = getelementptr inbounds nuw i8, ptr %i.qi, i64 40
  %i.rf = load <2 x float>, ptr %i.re, align 4
  %i.rg = load float, ptr %i.rd, align 4
  %i.rh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rg, i64 0
  %i.ri = shufflevector <2 x float> %i.rf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rj = shufflevector <4 x float> %i.rh, <4 x float> %i.ri, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  br label %.noexc226

.noexc232:                                        ; preds = %bb.c
  %i.rk = load ptr, ptr %i.ez, align 8, !noalias !1732
  %i.rl = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.rm = load i64, ptr %i.rl, align 8, !noalias !1732
  %i.rn = mul i64 %i.rm, %.0111120
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rk, i64 %i.rn ; 12 uses
  %i.rp = load float, ptr %i.ro, align 4, !noalias !1732
  %i.rq = getelementptr inbounds nuw i8, ptr %i.ro, i64 4
  %i.rr = load float, ptr %i.rq, align 4, !noalias !1732
  %i.rs = getelementptr inbounds nuw i8, ptr %i.ro, i64 8
  %i.rt = load float, ptr %i.rs, align 4, !noalias !1732
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  %i.rv = load float, ptr %i.ru, align 4, !noalias !1732
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ro, i64 16
  %i.rx = load float, ptr %i.rw, align 4, !noalias !1732
  %i.ry = getelementptr inbounds nuw i8, ptr %i.ro, i64 20
  %i.rz = load float, ptr %i.ry, align 4, !noalias !1732
  %i.sa = getelementptr inbounds nuw i8, ptr %i.ro, i64 24
  %i.sb = load float, ptr %i.sa, align 4, !noalias !1732
  %i.sc = getelementptr inbounds nuw i8, ptr %i.ro, i64 28
  %i.sd = load float, ptr %i.sc, align 4, !noalias !1732
  %i.se = getelementptr inbounds nuw i8, ptr %i.ro, i64 32
  %i.sf = load float, ptr %i.se, align 4, !noalias !1732
  %i.sg = getelementptr inbounds nuw i8, ptr %i.ro, i64 36
  %i.sh = load float, ptr %i.sg, align 4, !noalias !1732
  %i.si = getelementptr inbounds nuw i8, ptr %i.ro, i64 40
  %i.sj = load float, ptr %i.si, align 4, !noalias !1732
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ro, i64 44
  %i.sl = load float, ptr %i.sk, align 4, !noalias !1732
  %i.sm = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rp, i64 0
  %i.sn = insertelement <4 x float> %i.sm, float %i.rx, i64 1
  %i.so = insertelement <4 x float> %i.sn, float %i.sf, i64 2
  %i.sp = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rr, i64 0
  %i.sq = insertelement <4 x float> %i.sp, float %i.rz, i64 1
  %i.sr = insertelement <4 x float> %i.sq, float %i.sh, i64 2
  %i.ss = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rt, i64 0
  %i.st = insertelement <4 x float> %i.ss, float %i.sb, i64 1
  %i.su = insertelement <4 x float> %i.st, float %i.sj, i64 2
  %i.sv = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.rv, i64 0
  %i.sw = insertelement <4 x float> %i.sv, float %i.sd, i64 1
  %i.sx = insertelement <4 x float> %i.sw, float %i.sl, i64 2
  br label %.noexc226

.noexc226:                                        ; preds = %bb.c, %.noexc232, %.noexc230, %.noexc229, %.noexc227
  %.sroa.26.0 = phi <4 x float> [ %i.og, %.noexc227 ], [ %6, %.noexc229 ], [ %i.rj, %.noexc230 ], [ %i.sx, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.18.0 = phi <4 x float> [ %i.oe, %.noexc227 ], [ %.sroa.18.44.vec.insert, %.noexc229 ], [ %i.rc, %.noexc230 ], [ %i.su, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.10.0 = phi <4 x float> [ %i.oc, %.noexc227 ], [ %.sroa.10.28.vec.insert, %.noexc229 ], [ %i.qv, %.noexc230 ], [ %i.sr, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0594.0 = phi <4 x float> [ %i.oa, %.noexc227 ], [ %.sroa.0594.12.vec.insert, %.noexc229 ], [ %i.qo, %.noexc230 ], [ %i.so, %.noexc232 ], [ undef, %bb.c ] ; 2 uses
  br i1 %.not.i223, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split: ; preds = %.noexc226, %.noexc225
  %.sink1205.ph = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ]
  %.sink1203.ph = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ]
  %.sink1201.ph = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ]
  %.sink1197.ph = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ]
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ek, i64 144
  %i.sz = load ptr, ptr %i.sy, align 8, !noalias !1730
  %i.ta = getelementptr inbounds nuw i8, ptr %i.ek, i64 160
  %i.tb = load i64, ptr %i.ta, align 8, !noalias !1730
  %i.tc = mul i64 %i.tb, %.0111120
  %i.td = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.tc
  %i.te = load i32, ptr %i.td, align 4, !noalias !1730 ; 2 uses
  %i.tf = icmp ne i32 %i.te, -1
  tail call void @llvm.assume(i1 %i.tf)
  %i.tg = getelementptr inbounds nuw i8, ptr %i.ek, i64 96
  %i.th = load ptr, ptr %i.tg, align 16, !noalias !1730
  %i.ti = zext i32 %i.te to i64
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.ti
  %i.tk = load ptr, ptr %i.tj, align 8, !noalias !1730
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit: ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split, %.noexc226, %.noexc225
  %.0.i268.sink1218 = phi ptr [ %i.em, %.noexc225 ], [ %i.em, %.noexc226 ], [ %i.tk, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 4 uses
  %.sink1205 = phi <4 x float> [ %i.nl, %.noexc225 ], [ %.sroa.18.0, %.noexc226 ], [ %.sink1205.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1203 = phi <4 x float> [ %i.nu, %.noexc225 ], [ %.sroa.26.0, %.noexc226 ], [ %.sink1203.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1201 = phi <4 x float> [ %i.nd, %.noexc225 ], [ %.sroa.10.0, %.noexc226 ], [ %.sink1201.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %.sink1197 = phi <4 x float> [ %i.mx, %.noexc225 ], [ %.sroa.0594.0, %.noexc226 ], [ %.sink1197.ph, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.sink.split ] ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 16
  %i.tm = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 48
  %i.tn = load <4 x float>, ptr %i.tl, align 16, !noalias !1730
  %i.to = load <4 x float>, ptr %i.tm, align 16, !noalias !1730
  %i.tp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.tn, <4 x float> %i.to) ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 32
  %i.tr = getelementptr inbounds nuw i8, ptr %.0.i268.sink1218, i64 64
  %i.ts = load <4 x float>, ptr %i.tq, align 16, !noalias !1730
  %i.tt = load <4 x float>, ptr %i.tr, align 16, !noalias !1730
  %i.tu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ts, <4 x float> %i.tt) ; 3 uses
  %i.tv = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.tw = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.tx = shufflevector <4 x float> %i.tp, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ty = fmul <4 x float> %.sink1205, %i.tx
  %i.tz = fadd <4 x float> %.sink1203, %i.ty      ; 2 uses
  %i.ua = fmul <4 x float> %.sink1201, %i.tw      ; 2 uses
  %i.ub = fadd <4 x float> %i.ua, %i.tz           ; 2 uses
  %i.uc = fmul <4 x float> %.sink1197, %i.tv      ; 4 uses
  %i.ud = fadd <4 x float> %i.uc, %i.ub           ; 2 uses
  %i.ue = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> splat (float +inf), <4 x float> %i.ud)
  %i.uf = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> splat (float -inf), <4 x float> %i.ud)
  %i.ug = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.uh = fmul <4 x float> %.sink1205, %i.ug
  %i.ui = fadd <4 x float> %.sink1203, %i.uh      ; 2 uses
  %i.uj = fadd <4 x float> %i.ua, %i.ui           ; 2 uses
  %i.uk = fadd <4 x float> %i.uc, %i.uj           ; 2 uses
  %i.ul = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ue, <4 x float> %i.uk)
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uf, <4 x float> %i.uk)
  %i.un = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.uo = fmul <4 x float> %.sink1201, %i.un      ; 2 uses
  %i.up = fadd <4 x float> %i.tz, %i.uo           ; 2 uses
  %i.uq = fadd <4 x float> %i.uc, %i.up           ; 2 uses
  %i.ur = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ul, <4 x float> %i.uq)
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.um, <4 x float> %i.uq)
  %i.ut = fadd <4 x float> %i.uo, %i.ui           ; 2 uses
  %i.uu = fadd <4 x float> %i.uc, %i.ut           ; 2 uses
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ur, <4 x float> %i.uu)
  %i.uw = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.us, <4 x float> %i.uu)
  %i.ux = shufflevector <4 x float> %i.tu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = fmul <4 x float> %.sink1197, %i.ux      ; 4 uses
  %i.uz = fadd <4 x float> %i.ub, %i.uy           ; 2 uses
  %i.va = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.uv, <4 x float> %i.uz)
  %i.vb = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.uw, <4 x float> %i.uz)
  %i.vc = fadd <4 x float> %i.uy, %i.uj           ; 2 uses
  %i.vd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.va, <4 x float> %i.vc)
  %i.ve = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vb, <4 x float> %i.vc)
  %i.vf = fadd <4 x float> %i.uy, %i.up           ; 2 uses
  %i.vg = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vd, <4 x float> %i.vf)
  %i.vh = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ve, <4 x float> %i.vf)
  %i.vi = fadd <4 x float> %i.uy, %i.ut           ; 2 uses
  %i.vj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.vg, <4 x float> %i.vi) ; 2 uses
  %i.vk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.vh, <4 x float> %i.vi) ; 2 uses
  %i.vl = fcmp ugt <4 x float> %i.vj, splat (float -1.844000e+18)
  %i.vm = fcmp olt <4 x float> %i.vk, splat (float 1.844000e+18)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = bitcast <4 x i1> %i.vn to i4
  %i.vp = and i4 %i.vo, 7
  %i.vq = icmp eq i4 %i.vp, 7
  br i1 %i.vq, label %.noexc15, label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

.noexc15:                                         ; preds = %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit
  %i.vr = trunc i64 %.0111120 to i32
  %i.vs = fadd <4 x float> %i.vk, %i.vj
  %i.vt = fsub <4 x float> %i.vs, %i.g
  %i.vu = fmul <4 x float> %i.j, %i.vt
  %i.vv = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.vu) ; 3 uses
  %i.vw = extractelement <4 x i32> %i.vv, i64 0
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.eh
  store i32 %i.vw, ptr %i.vx, align 4
  %.sroa.0276.4.vec.extract = extractelement <4 x i32> %i.vv, i64 1
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.eh
  store i32 %.sroa.0276.4.vec.extract, ptr %i.vy, align 4
  %.sroa.0276.8.vec.extract = extractelement <4 x i32> %i.vv, i64 2
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.eh
  store i32 %.sroa.0276.8.vec.extract, ptr %i.vz, align 4
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eh
  store i32 %i.vr, ptr %i.wa, align 4
  %i.wb = add nuw nsw i64 %i.eh, 1                ; 2 uses
  %i.wc = add i64 %i.ei, 1                        ; 2 uses
  %i.wd = icmp eq i64 %i.wb, 4
  br i1 %i.wd, label %.noexc20, label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

.noexc20:                                         ; preds = %.noexc15
  %i.we = load <2 x i64>, ptr %i.m, align 16, !noalias !1733 ; 2 uses
  %i.wf = load <2 x i64>, ptr %i.n, align 16, !noalias !1733 ; 2 uses
  %i.wg = load <2 x i64>, ptr %i.o, align 16, !noalias !1733 ; 2 uses
  %i.wh = bitcast <2 x i64> %i.we to <4 x i32>
  %i.wi = shl <4 x i32> %i.wh, splat (i32 16)
  %i.wj = bitcast <4 x i32> %i.wi to <2 x i64>
  %i.wk = or <2 x i64> %i.we, %i.wj
  %i.wl = and <2 x i64> %i.wk, splat (i64 216173877380776191) ; 2 uses
  %i.wm = bitcast <2 x i64> %i.wl to <4 x i32>
  %i.wn = shl <4 x i32> %i.wm, splat (i32 8)
  %i.wo = bitcast <4 x i32> %i.wn to <2 x i64>
  %i.wp = or disjoint <2 x i64> %i.wl, %i.wo
  %i.wq = and <2 x i64> %i.wp, splat (i64 216436729379352591) ; 2 uses
  %i.wr = bitcast <2 x i64> %i.wq to <4 x i32>
  %i.ws = shl nuw nsw <4 x i32> %i.wr, splat (i32 4)
  %i.wt = bitcast <4 x i32> %i.ws to <2 x i64>
  %i.wu = or disjoint <2 x i64> %i.wq, %i.wt
  %i.wv = and <2 x i64> %i.wu, splat (i64 219604095962198211) ; 2 uses
  %i.ww = bitcast <2 x i64> %i.wv to <4 x i32>
  %i.wx = shl nuw nsw <4 x i32> %i.ww, splat (i32 2)
  %i.wy = bitcast <4 x i32> %i.wx to <2 x i64>
  %i.wz = or disjoint <2 x i64> %i.wv, %i.wy
  %i.xa = and <2 x i64> %i.wz, splat (i64 658812287886594633)
  %i.xb = bitcast <2 x i64> %i.wf to <4 x i32>
  %i.xc = shl <4 x i32> %i.xb, splat (i32 16)
  %i.xd = bitcast <4 x i32> %i.xc to <2 x i64>
  %i.xe = or <2 x i64> %i.wf, %i.xd
  %i.xf = and <2 x i64> %i.xe, splat (i64 216173877380776191) ; 2 uses
  %i.xg = bitcast <2 x i64> %i.xf to <4 x i32>
  %i.xh = shl <4 x i32> %i.xg, splat (i32 8)
  %i.xi = bitcast <4 x i32> %i.xh to <2 x i64>
  %i.xj = or disjoint <2 x i64> %i.xf, %i.xi
  %i.xk = and <2 x i64> %i.xj, splat (i64 216436729379352591) ; 2 uses
  %i.xl = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xm = shl nuw nsw <4 x i32> %i.xl, splat (i32 4)
  %i.xn = bitcast <2 x i64> %i.xk to <4 x i32>
  %i.xo = or disjoint <4 x i32> %i.xm, %i.xn
  %i.xp = and <4 x i32> %i.xo, splat (i32 51130563) ; 2 uses
  %i.xq = bitcast <2 x i64> %i.wg to <4 x i32>
  %i.xr = shl <4 x i32> %i.xq, splat (i32 16)
  %i.xs = bitcast <4 x i32> %i.xr to <2 x i64>
  %i.xt = or <2 x i64> %i.wg, %i.xs
  %i.xu = and <2 x i64> %i.xt, splat (i64 216173877380776191) ; 2 uses
  %i.xv = bitcast <2 x i64> %i.xu to <4 x i32>
  %i.xw = shl <4 x i32> %i.xv, splat (i32 8)
  %i.xx = bitcast <4 x i32> %i.xw to <2 x i64>
  %i.xy = or disjoint <2 x i64> %i.xu, %i.xx
  %i.xz = and <2 x i64> %i.xy, splat (i64 216436729379352591) ; 2 uses
  %i.ya = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yb = shl nuw nsw <4 x i32> %i.ya, splat (i32 4)
  %i.yc = bitcast <2 x i64> %i.xz to <4 x i32>
  %i.yd = or disjoint <4 x i32> %i.yb, %i.yc
  %i.ye = and <4 x i32> %i.yd, splat (i32 51130563) ; 2 uses
  %i.yf = shl nuw nsw <4 x i32> %i.xp, splat (i32 3)
  %i.yg = shl nuw nsw <4 x i32> %i.xp, splat (i32 1)
  %i.yh = or disjoint <4 x i32> %i.yf, %i.yg
  %i.yi = bitcast <4 x i32> %i.yh to <2 x i64>
  %i.yj = and <2 x i64> %i.yi, splat (i64 1317624575773189266)
  %i.yk = or disjoint <2 x i64> %i.yj, %i.xa
  %i.yl = shl nuw nsw <4 x i32> %i.ye, splat (i32 4)
  %i.ym = shl nuw nsw <4 x i32> %i.ye, splat (i32 2)
  %i.yn = or disjoint <4 x i32> %i.yl, %i.ym
  %i.yo = bitcast <4 x i32> %i.yn to <2 x i64>
  %i.yp = and <2 x i64> %i.yo, splat (i64 2635249151546378532)
  %i.yq = or disjoint <2 x i64> %i.yk, %i.yp
  %i.yr = getelementptr [8 x i8], ptr %i.f, i64 %i.wc ; 2 uses
  %i.ys = getelementptr i8, ptr %i.yr, i64 -32
  %i.yt = bitcast <2 x i64> %i.yq to <4 x float>  ; 2 uses
  %i.yu = load <4 x float>, ptr %i.p, align 16, !noalias !1734 ; 2 uses
  %i.yv = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  store <4 x float> %i.yv, ptr %i.ys, align 1
  %i.yw = getelementptr i8, ptr %i.yr, i64 -16
  %i.yx = shufflevector <4 x float> %i.yt, <4 x float> %i.yu, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  store <4 x float> %i.yx, ptr %i.yw, align 1
  br label %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit

_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit: ; preds = %.noexc20, %.noexc15
  %i.yy = phi i64 [ 0, %.noexc20 ], [ %i.wb, %.noexc15 ]
  %i.yz = add i64 %.01123, 1
  br label %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread

_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit.thread: ; preds = %.noexc221, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit
  %i.za = phi i64 [ %i.wc, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.ei, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.ei, %.noexc221 ] ; 2 uses
  %i.zb = phi i64 [ %i.yy, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %i.eh, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %i.eh, %.noexc221 ] ; 10 uses
  %.1 = phi i64 [ %i.yz, %_ZN6embree4sse216BVHBuilderMorton19MortonCodeGeneratorclERKNS_4BBoxINS_6Vec3faEEEj.exit ], [ %.01123, %_ZNK6embree13InstanceArray11buildBoundsEmPNS_4BBoxINS_6Vec3faEEE.exit ], [ %.01123, %.noexc221 ] ; 3 uses
end_hunk_3
