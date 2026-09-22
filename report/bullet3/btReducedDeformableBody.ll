Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btReducedDeformableBody?download=true
inline.NumInlined: 956
inline.NumDeleted: 155
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZNK23btReducedDeformableBody23computeNodeFullVelocityERK11btTransformi:bb.a
._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa54 = phi float [ %i.fn, %._crit_edge.preheader.unr-lcssa ], [ %i.fv, %.epil.preheader ] ; 2 uses
  %xtraiter59 = and i64 %wide.trip.count, 1
  %i.fw = icmp eq i64 %i.af, 0
  br i1 %i.fw, label %._crit_edge.epil.preheader, label %._crit_edge.preheader.new

._crit_edge.preheader.new:                        ; preds = %._crit_edge.preheader
  %unroll_iter65 = and i64 %wide.trip.count, 2147483646
  br label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody27computeTotalAngularMomentumEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2592
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2608
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2612
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2624
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2632
  %i.f = load float, ptr %i.e, align 8, !tbaa !142, !noalias !279 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2616
  %i.h = load float, ptr %i.g, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2628
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2600
  %i.k = load float, ptr %i.j, align 8, !tbaa !142, !noalias !279 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2376
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2380
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2384
  %i.o = load float, ptr %i.i, align 4, !tbaa !142, !noalias !279 ; 2 uses
  %i.p = load <2 x float>, ptr %i.d, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.q = load float, ptr %i.c, align 4, !tbaa !142, !noalias !279 ; 2 uses
  %i.r = load <2 x float>, ptr %i.b, align 8, !tbaa !142, !noalias !279 ; 3 uses
  %i.s = load <2 x float>, ptr %i.a, align 8, !tbaa !142, !noalias !279 ; 5 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !142 ; 2 uses
  %i.u = load float, ptr %i.l, align 8, !tbaa !142 ; 2 uses
  %i.v = load float, ptr %i.n, align 8, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2716
  %i.x = load i32, ptr %i.w, align 4, !tbaa !140  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge114

.lr.ph:                                           ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2324
  %i.aa = load float, ptr %i.z, align 4, !tbaa !142, !noalias !280
  %i.ab = fneg float %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2320
  %i.ad = load <2 x float>, ptr %i.ac, align 8, !tbaa !142, !noalias !280 ; 2 uses
  %i.ae = extractelement <2 x float> %i.ad, i64 0
  %i.af = fneg float %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2328
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !142, !noalias !280 ; 2 uses
  %i.ai = fneg float %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !132
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2484
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2496
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2500
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2504
  %i.aq = load float, ptr %i.ap, align 8, !tbaa !142 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2516
  %i.at = load <2 x float>, ptr %i.aj, align 8, !tbaa !142 ; 3 uses
  %i.au = load <2 x float>, ptr %i.an, align 8, !tbaa !142 ; 2 uses
  %i.av = load float, ptr %i.ao, align 4, !tbaa !142
  %i.aw = load <2 x float>, ptr %i.ar, align 8, !tbaa !142 ; 3 uses
  %i.ax = load <2 x float>, ptr %i.am, align 4, !tbaa !142 ; 3 uses
  %i.ay = load <2 x float>, ptr %i.as, align 4, !tbaa !142 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !139 ; 5 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2832
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !128
  %wide.trip.count128 = zext nneg i32 %i.x to i64
  %wide.trip.count = zext i32 %i.ba to i64        ; 7 uses
  %i.bg = insertelement <3 x float> <float poison, float 0.000000e+00, float poison>, float %i.ab, i64 0
  %i.bh = insertelement <3 x float> %i.bg, float %i.ah, i64 2
  %i.bi = shufflevector <2 x float> %i.ad, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bj = insertelement <3 x float> %i.bi, float 0.000000e+00, i64 0
  %i.bk = insertelement <3 x float> %i.bj, float %i.af, i64 2
  %i.bl = insertelement <3 x float> %i.bi, float 0.000000e+00, i64 2
  %i.bm = insertelement <3 x float> %i.bl, float %i.ai, i64 1
  %i.bn = extractelement <2 x float> %i.au, i64 0
  %i.bo = shufflevector <2 x float> %i.aw, <2 x float> %i.at, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.bp = shufflevector <2 x float> %i.au, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.bq = shufflevector <3 x float> %i.bo, <3 x float> %i.bp, <3 x i32> <i32 0, i32 1, i32 3>
  %i.br = shufflevector <2 x float> %i.aw, <2 x float> %i.at, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> %i.bp, <3 x i32> <i32 0, i32 1, i32 4>
  %i.bt = shufflevector <2 x float> %i.at, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bu = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <3 x i32> <i32 3, i32 1, i32 poison>
  %i.bv = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bw = shufflevector <2 x float> %i.ax, <2 x float> %i.ay, <2 x i32> <i32 0, i32 2>
  %i.bx = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %i.by = load ptr, ptr %i.bc, align 8            ; 9 uses
  %i.bz = load ptr, ptr %i.bd, align 8            ; 9 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ca = icmp eq i64 %i.bx, 0
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod146 = trunc i32 %i.ba to i1
  %xtraiter149 = and i64 %wide.trip.count, 1
  %i.cb = icmp eq i64 %i.bx, 0
  %unroll_iter155 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod152.not = icmp eq i64 %xtraiter149, 0
  %lcmp.mod154 = trunc i32 %i.ba to i1
  %xtraiter158 = and i64 %wide.trip.count, 1
  %i.cc = icmp eq i64 %i.bx, 0
  %unroll_iter164 = and i64 %wide.trip.count, 2147483646
  %lcmp.mod161.not = icmp eq i64 %xtraiter158, 0
  %lcmp.mod163 = trunc i32 %i.ba to i1
  %i.cd = insertelement <3 x float> %i.bu, float %i.aq, i64 2
  br label %bb.b

._crit_edge114:                                   ; preds = %.split108, %bb.a
  %.sroa.087.0.lcssa = phi float [ 0.000000e+00, %bb.a ], [ %i.hd, %.split108 ]
  %i.ce = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.he, %.split108 ]
  %i.cf = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cg = insertelement <2 x float> %i.cf, float %i.h, i64 0 ; 2 uses
  %i.ch = fneg <2 x float> %i.cg
  %i.ci = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.f, i64 0 ; 2 uses
  %i.ck = fneg <2 x float> %i.cj                  ; 2 uses
  %i.cl = fneg <2 x float> %i.p
  %i.cm = fneg float %i.o
  %i.cn = fmul float %i.h, %i.cm
  %i.co = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.f, float %i.cn) ; 2 uses
  %i.cp = fneg float %i.q
  %i.cq = fmul float %i.k, %i.cp
  %i.cr = extractelement <2 x float> %i.s, i64 1  ; 3 uses
  %i.cs = tail call noundef float @llvm.fmuladd.f32(float %i.cr, float %i.h, float %i.cq)
  %i.ct = extractelement <2 x float> %i.ck, i64 0
  %i.cu = fmul float %i.cr, %i.ct
  %i.cv = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.o, float %i.cu)
  %i.cw = fmul <2 x float> %i.r, %i.ck
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.p, <2 x float> %i.cw) ; 3 uses
  %i.cy = extractelement <2 x float> %i.cx, i64 0
  %i.cz = fmul float %i.cr, %i.cy
  %i.da = extractelement <2 x float> %i.s, i64 0
  %i.db = tail call float @llvm.fmuladd.f32(float %i.da, float %i.co, float %i.cz)
  %i.dc = extractelement <2 x float> %i.cx, i64 1
  %i.dd = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.dc, float %i.db)
  %i.de = fdiv float 1.000000e+00, %i.dd          ; 4 uses
  %i.df = fmul <2 x float> %i.s, %i.ch
  %i.dg = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dh = insertelement <2 x float> %i.dg, float %i.k, i64 0 ; 2 uses
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.r, <2 x float> %i.df)
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.dl = fmul <2 x float> %i.di, %i.dk
  %i.dm = fmul <2 x float> %i.cx, %i.dk
  %i.dn = fmul <2 x float> %i.dh, %i.cl
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.cj, <2 x float> %i.dn)
  %i.dp = fmul <2 x float> %i.do, %i.dk
  %i.dq = insertelement <2 x float> poison, float %i.t, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = fmul <2 x float> %i.dr, %i.dp
  %i.dt = insertelement <2 x float> poison, float %i.u, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.du, <2 x float> %i.ds)
  %i.dw = insertelement <2 x float> poison, float %i.v, i64 0
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dx, <2 x float> %i.dv)
  %i.dz = fmul float %i.cs, %i.de
  %i.ea = fmul float %i.co, %i.de
  %i.eb = fmul float %i.cv, %i.de
  %i.ec = fmul float %i.t, %i.eb
  %i.ed = tail call float @llvm.fmuladd.f32(float %i.ea, float %i.u, float %i.ec)
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.v, float %i.ed)
  %i.ef = fadd float %i.ee, %.sroa.087.0.lcssa
  %i.eg = fadd <2 x float> %i.dy, %i.ce           ; 2 uses
  %.sroa.0.0.vec.insert.i15 = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <2 x float> %.sroa.0.0.vec.insert.i15, <2 x float> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.ei = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.eg, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i18 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.eh, 0
  %.fca.1.insert.i19 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i18, <2 x float> %i.ei, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i19

bb.b:                                             ; preds = %.lr.ph, %.split108
  %indvars.iv125 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next126, %.split108 ] ; 4 uses
  %.sroa.087.0109 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.hd, %.split108 ]
  %i.ej = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.he, %.split108 ]
  %i.ek = getelementptr inbounds nuw [16 x i8], ptr %i.al, i64 %indvars.iv125 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.en = load float, ptr %i.el, align 4, !tbaa !142 ; 2 uses
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !142 ; 2 uses
  %i.ep = load float, ptr %i.em, align 4, !tbaa !142 ; 2 uses
  %i.eq = fmul float %i.en, %i.av
  %i.er = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.eo, float %i.eq)
  %i.es = tail call noundef float @llvm.fmuladd.f32(float %i.aq, float %i.ep, float %i.er) ; 3 uses
  %i.et = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ev = fmul <2 x float> %i.eu, %i.bw
  %i.ew = insertelement <2 x float> poison, float %i.eo, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ex, <2 x float> %i.ev)
  %i.ez = insertelement <2 x float> poison, float %i.ep, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> %i.fa, <2 x float> %i.ey) ; 6 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 1
  %i.fd = fneg float %i.fc
  %i.fe = extractelement <2 x float> %i.fb, i64 0
  %i.ff = fneg float %i.fe
  %i.fg = fneg float %i.es
  %i.fh = mul nuw nsw i64 %indvars.iv125, 3       ; 9 uses
  br i1 %i.bb, label %.split, label %.split108

.split:                                           ; preds = %bb.b
  br i1 %i.ca, label %.epil.preheader, label %.split.new

.split108.loopexit.unr-lcssa:                     ; preds = %._crit_edge.1
  br i1 %lcmp.mod161.not, label %.split108, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split108.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split108.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init160 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.iz, %.split108.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod163)
  %i.fi = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.2.epil.init
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !128
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !142
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.2.epil.init
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !142
  %i.fq = tail call float @llvm.fmuladd.f32(float %i.fn, float %i.fp, float %.epil.init160)
  br label %.split108

.split108:                                        ; preds = %._crit_edge.1.epil.preheader, %.split108.loopexit.unr-lcssa, %bb.b
  %.sroa.10.0 = phi float [ 0.000000e+00, %bb.b ], [ %i.iz, %.split108.loopexit.unr-lcssa ], [ %i.fq, %._crit_edge.1.epil.preheader ]
  %.sroa.6.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa141, %.split108.loopexit.unr-lcssa ], [ %.lcssa141, %._crit_edge.1.epil.preheader ]
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.b ], [ %.lcssa, %.split108.loopexit.unr-lcssa ], [ %.lcssa, %._crit_edge.1.epil.preheader ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv125
  %i.fs = insertelement <3 x float> poison, float %.sroa.6.0, i64 0
  %i.ft = shufflevector <3 x float> %i.fs, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fu = fmul <3 x float> %i.bs, %i.ft
  %i.fv = insertelement <3 x float> poison, float %i.es, i64 0
  %i.fw = shufflevector <3 x float> %i.fv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fx = fmul <3 x float> %i.bm, %i.fw
  %i.fy = load float, ptr %i.fr, align 4, !tbaa !142 ; 2 uses
  %i.fz = insertelement <3 x float> poison, float %.sroa.0.0, i64 0
  %i.ga = shufflevector <3 x float> %i.fz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gb = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bq, <3 x float> %i.ga, <3 x float> %i.fu)
  %i.gc = insertelement <3 x float> poison, float %.sroa.10.0, i64 0
  %i.gd = shufflevector <3 x float> %i.gc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ge = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> %i.gd, <3 x float> %i.gb)
  %i.gf = shufflevector <2 x float> %i.fb, <2 x float> poison, <3 x i32> zeroinitializer
  %i.gg = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.gf, <3 x float> %i.fx)
  %i.gh = shufflevector <2 x float> %i.fb, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.gi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.gh, <3 x float> %i.gg)
  %i.gj = fsub <3 x float> %i.ge, %i.gi           ; 6 uses
  %i.gk = extractelement <3 x float> %i.gj, i64 2
  %i.gl = fmul float %i.gk, %i.fd
  %i.gm = extractelement <3 x float> %i.gj, i64 1
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.gm, float 0.000000e+00, float %i.gl)
  %i.go = extractelement <3 x float> %i.gj, i64 0
  %i.gp = tail call noundef float @llvm.fmuladd.f32(float %i.es, float %i.go, float %i.gn)
  %1 = shufflevector <2 x float> <float 0.000000e+00, float poison>, <2 x float> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.gq = shufflevector <3 x float> %i.gj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gr = fmul <2 x float> %1, %i.gq
  %i.gs = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gt = insertelement <2 x float> %i.gs, float %i.fg, i64 1
  %i.gu = shufflevector <3 x float> %i.gj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gt, <2 x float> %i.gu, <2 x float> %i.gr)
  %i.gw = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ff, i64 0
  %i.gx = shufflevector <3 x float> %i.gj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gw, <2 x float> %i.gx, <2 x float> %i.gv)
  %i.gz = fmul float %i.fy, %i.gp
  %i.ha = insertelement <2 x float> poison, float %i.fy, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.hb, %i.gy
  %i.hd = fadd float %.sroa.087.0109, %i.gz       ; 2 uses
  %i.he = fadd <2 x float> %i.ej, %i.hc           ; 2 uses
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge114, label %bb.b, !llvm.loop !277

._crit_edge:                                      ; preds = %._crit_edge.preheader, %._crit_edge
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1.1, %._crit_edge ], [ 0, %._crit_edge.preheader ] ; 4 uses
  %i.hf = phi float [ %i.hx, %._crit_edge ], [ 0.000000e+00, %._crit_edge.preheader ]
  %niter156 = phi i64 [ %niter156.next.1, %._crit_edge ], [ 0, %._crit_edge.preheader ]
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !128
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %i.fh
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 4
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !142
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.1
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !142
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hl, float %i.hn, float %i.hf)
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv.1, 1 ; 2 uses
  %i.hp = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next.1
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !128
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.hr, i64 %i.fh
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !142
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.1
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !142
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hw, float %i.ho) ; 3 uses
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %niter156.next.1 = add i64 %niter156, 2         ; 2 uses
  %niter156.ncmp.1 = icmp eq i64 %niter156.next.1, %unroll_iter155
  br i1 %niter156.ncmp.1, label %._crit_edge.1.preheader.unr-lcssa, label %._crit_edge, !llvm.loop !278

._crit_edge.1.preheader.unr-lcssa:                ; preds = %._crit_edge
  br i1 %lcmp.mod152.not, label %._crit_edge.1.preheader, label %._crit_edge.epil.preheader

._crit_edge.epil.preheader:                       ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.preheader
  %indvars.iv.1.epil.init = phi i64 [ 0, %._crit_edge.preheader ], [ %indvars.iv.next.1.1, %._crit_edge.1.preheader.unr-lcssa ] ; 2 uses
  %.epil.init151 = phi float [ 0.000000e+00, %._crit_edge.preheader ], [ %i.hx, %._crit_edge.1.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod154)
  %i.hy = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.1.epil.init
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !128
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %i.fh
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 4
  %i.id = load float, ptr %i.ic, align 4, !tbaa !142
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.1.epil.init
  %i.if = load float, ptr %i.ie, align 4, !tbaa !142
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.id, float %i.if, float %.epil.init151)
  br label %._crit_edge.1.preheader

._crit_edge.1.preheader:                          ; preds = %._crit_edge.1.preheader.unr-lcssa, %._crit_edge.epil.preheader
  %.lcssa141 = phi float [ %i.hx, %._crit_edge.1.preheader.unr-lcssa ], [ %i.ig, %._crit_edge.epil.preheader ] ; 2 uses
  br i1 %i.cc, label %._crit_edge.1.epil.preheader, label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.1.preheader, %._crit_edge.1
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ] ; 4 uses
  %i.ih = phi float [ %i.iz, %._crit_edge.1 ], [ 0.000000e+00, %._crit_edge.1.preheader ]
  %niter165 = phi i64 [ %niter165.next.1, %._crit_edge.1 ], [ 0, %._crit_edge.1.preheader ]
  %i.ii = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.2
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !128
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ik, i64 %i.fh
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load float, ptr %i.im, align 4, !tbaa !142
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.2
  %i.ip = load float, ptr %i.io, align 4, !tbaa !142
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.in, float %i.ip, float %i.ih)
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv.2, 1 ; 2 uses
  %i.ir = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next.2
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !128
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %i.fh
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !142
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next.2
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !142
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.iy, float %i.iq) ; 3 uses
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.2, 2 ; 2 uses
  %niter165.next.1 = add i64 %niter165, 2         ; 2 uses
  %niter165.ncmp.1 = icmp eq i64 %niter165.next.1, %unroll_iter164
  br i1 %niter165.ncmp.1, label %.split108.loopexit.unr-lcssa, label %._crit_edge.1, !llvm.loop !278

.split.new:                                       ; preds = %.split, %.split.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1148, %.split.new ], [ 0, %.split ] ; 4 uses
  %i.ja = phi float [ %i.jq, %.split.new ], [ 0.000000e+00, %.split ]
  %niter = phi i64 [ %niter.next.1, %.split.new ], [ 0, %.split ]
  %i.jb = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !128
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.fh
  %i.jf = load float, ptr %i.je, align 4, !tbaa !142
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !142
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.jh, float %i.ja)
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.next
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !128
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.fh
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !142
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.next
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !142
  %i.jq = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jp, float %i.ji) ; 3 uses
  %indvars.iv.next.1148 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.preheader.unr-lcssa, label %.split.new, !llvm.loop !278

._crit_edge.preheader.unr-lcssa:                  ; preds = %.split.new
  br i1 %lcmp.mod.not, label %._crit_edge.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.preheader.unr-lcssa, %.split
  %indvars.iv.epil.init = phi i64 [ 0, %.split ], [ %indvars.iv.next.1148, %._crit_edge.preheader.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.split ], [ %i.jq, %._crit_edge.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod146)
  %i.jr = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %indvars.iv.epil.init
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 16
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !128
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %i.fh
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !142
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.epil.init
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !142
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jx, float %.epil.init)
  br label %._crit_edge.preheader

._crit_edge.preheader:                            ; preds = %._crit_edge.preheader.unr-lcssa, %.epil.preheader
  %.lcssa = phi float [ %i.jq, %._crit_edge.preheader.unr-lcssa ], [ %i.jy, %.epil.preheader ] ; 2 uses
  br i1 %i.cb, label %._crit_edge.epil.preheader, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK23btReducedDeformableBody32internalComputeNodeDeltaVelocityERK11btTransformi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, i32 noundef %2) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [16 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !142 ; 5 uses
  %i.o = load float, ptr %i.e, align 4, !tbaa !142
  %i.p = load float, ptr %i.f, align 4, !tbaa !142
  %i.q = load float, ptr %i.d, align 4, !tbaa !142
  %i.r = load float, ptr %i.i, align 4, !tbaa !142
  %i.s = load <2 x float>, ptr %i.j, align 4, !tbaa !142 ; 4 uses
  %i.t = load <2 x float>, ptr %i.m, align 4, !tbaa !142 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = load float, ptr %i.u, align 4, !tbaa !142 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 2712
  %i.x = load i32, ptr %i.w, align 8, !tbaa !139  ; 5 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.split, label %.split43

.split:                                           ; preds = %bb.a
  %i.z = mul nsw i32 %2, 3
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2736
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !124 ; 9 uses
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !128 ; 9 uses
  %i.ae = sext i32 %i.z to i64                    ; 9 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 7 uses
  %i.af = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %.epil.preheader, label %.split.new

.split.new:                                       ; preds = %.split
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.split43.loopexit.unr-lcssa:                      ; preds = %._crit_edge.1
  %lcmp.mod71.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod71.not, label %.split43, label %._crit_edge.1.epil.preheader

._crit_edge.1.epil.preheader:                     ; preds = %.split43.loopexit.unr-lcssa, %._crit_edge.1.preheader
  %indvars.iv.2.epil.init = phi i64 [ 0, %._crit_edge.1.preheader ], [ %indvars.iv.next.2.1, %.split43.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init70 = phi float [ 0.000000e+00, %._crit_edge.1.preheader ], [ %i.ew, %.split43.loopexit.unr-lcssa ]
  %lcmp.mod73 = trunc i32 %i.x to i1
end_hunk_0
begin_hunk_1_@_ZN23btReducedDeformableBody18applyTorqueImpulseERK9btVector3:bb.a
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = insertelement <2 x float> %i.e, float %i.i, i64 1
  %i.ah = insertelement <2 x float> poison, float %i.w, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.af)
  %i.ak = fmul float %i.u, %i.m
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.v, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.w, float %i.al)
  %i.an = load <2 x float>, ptr %i.p, align 8, !tbaa !142
  %i.ao = fmul <2 x float> %i.aj, %i.an
  %i.ap = fmul float %i.am, %i.r
  %i.aq = load <2 x float>, ptr %i.s, align 8, !tbaa !142
  %i.ar = fadd <2 x float> %i.ao, %i.aq
  store <2 x float> %i.ar, ptr %i.s, align 8, !tbaa !142
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2384 ; 2 uses
  %i.at = load float, ptr %i.as, align 8, !tbaa !142
  %i.au = fadd float %i.ap, %i.at
  store float %i.au, ptr %i.as, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody25internalApplyRigidImpulseERK9btVector3S2_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(3176) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2356 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !154 ; 2 uses
  %i.c = fcmp oeq float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 51) ; 0 uses
  %.pre = load float, ptr %i.a, align 4, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi float [ %.pre, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !142
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2408
  %i.j = load float, ptr %i.i, align 8, !tbaa !142 ; 2 uses
  %i.k = fmul float %i.h, %i.j
  %i.l = fmul float %i.e, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2240 ; 2 uses
  %i.n = load <2 x float>, ptr %1, align 4, !tbaa !142
  %i.o = load <2 x float>, ptr %i.f, align 8, !tbaa !142 ; 2 uses
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = insertelement <2 x float> poison, float %i.e, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.p, %i.r
  %i.t = load <2 x float>, ptr %i.m, align 8, !tbaa !142
  %i.u = fadd <2 x float> %i.s, %i.t
  store <2 x float> %i.u, ptr %i.m, align 8, !tbaa !142
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2248 ; 2 uses
  %i.w = load float, ptr %i.v, align 8, !tbaa !142
  %i.x = fadd float %i.l, %i.w
  store float %i.x, ptr %i.v, align 8, !tbaa !142
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 2640
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2648
  %i.aa = load float, ptr %i.z, align 8, !tbaa !142
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 2656
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2664
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !142
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2672
  %i.af = load float, ptr %i.ae, align 8, !tbaa !142
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2676
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !142
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2680
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !142
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2416
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2424
  %i.am = load float, ptr %i.al, align 8, !tbaa !142
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.ao = load <3 x float>, ptr %1, align 4, !tbaa !142
  %i.ap = shufflevector <2 x float> %i.o, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.aq = insertelement <3 x float> %i.ap, float %i.j, i64 2
  %i.ar = fmul <3 x float> %i.aq, %i.ao           ; 2 uses
  %i.as = load <3 x float>, ptr %2, align 4, !tbaa !142 ; 2 uses
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.au = fneg <3 x float> %i.ar
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.aw = fmul <3 x float> %i.as, %i.av
  %i.ax = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.at, <3 x float> %i.ar, <3 x float> %i.aw) ; 6 uses
  %i.ay = load <2 x float>, ptr %i.y, align 8, !tbaa !142 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ab, align 8, !tbaa !142 ; 2 uses
  %i.ba = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fmul <2 x float> %i.ba, %i.bb
  %i.bd = shufflevector <2 x float> %i.ay, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %i.be = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.be, <2 x float> %i.bc)
  %i.bg = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.ad, i64 1
  %i.bi = shufflevector <3 x float> %i.ax, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bh, <2 x float> %i.bi, <2 x float> %i.bf)
  %i.bk = extractelement <3 x float> %i.ax, i64 0
  %i.bl = fmul float %i.bk, %i.ah
  %i.bm = extractelement <3 x float> %i.ax, i64 2
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.af, float %i.bm, float %i.bl)
  %i.bo = extractelement <3 x float> %i.ax, i64 1
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.bo, float %i.bn)
  %i.bq = load <2 x float>, ptr %i.ak, align 8, !tbaa !142
  %i.br = fmul <2 x float> %i.bj, %i.bq
  %i.bs = fmul float %i.bp, %i.am
  %i.bt = load <2 x float>, ptr %i.an, align 8, !tbaa !142
  %i.bu = fadd <2 x float> %i.br, %i.bt
  store <2 x float> %i.bu, ptr %i.an, align 8, !tbaa !142
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !142
  %i.bx = fadd float %i.bs, %i.bw
  store float %i.bx, ptr %i.bv, align 8, !tbaa !142
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local { <2 x float>, <2 x float> } @_ZN23btReducedDeformableBody14getRelativePosEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %0, i32 noundef %1) local_unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.0.0.copyload = load float, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 76
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.9.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.c = load <4 x float>, ptr %.sroa.9.16..sroa_idx, align 8
  %i.d = shufflevector <4 x float> %i.c, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.13.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.sroa.13.32.copyload = load float, ptr %.sroa.13.32..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2224
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load <2 x float>, ptr %i.b, align 8      ; 2 uses
  %i.m = load <2 x float>, ptr %i.e, align 8      ; 2 uses
  %i.n = load float, ptr %i.j, align 4, !tbaa !142 ; 2 uses
  %i.o = load float, ptr %i.i, align 4, !tbaa !142 ; 2 uses
  %i.p = load float, ptr %i.k, align 4, !tbaa !142 ; 2 uses
  %i.q = fmul float %.sroa.4.0.copyload, %i.n
  %i.r = tail call float @llvm.fmuladd.f32(float %.sroa.0.0.copyload, float %i.o, float %i.q)
  %i.s = tail call noundef float @llvm.fmuladd.f32(float %.sroa.5.0.copyload, float %i.p, float %i.r)
  %i.t = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 1, i32 3>
  %i.u = insertelement <2 x float> poison, float %i.n, i64 0
  %i.v = shufflevector <2 x float> %i.u, <2 x float> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x float> %i.t, %i.v
  %i.x = shufflevector <2 x float> %i.l, <2 x float> %i.m, <2 x i32> <i32 0, i32 2>
  %i.y = insertelement <2 x float> poison, float %i.o, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.z, <2 x float> %i.w)
  %i.ab = insertelement <2 x float> %i.d, float %.sroa.13.32.copyload, i64 1
  %i.ac = insertelement <2 x float> poison, float %i.p, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa) ; 2 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.s, i64 0
  %i.af = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.ae, <2 x i32> <i32 0, i32 2>
  %i.ag = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.ae, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.af, 0
  %.fca.1.insert.i = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i, <2 x float> %i.ag, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN23btReducedDeformableBody16getImpulseFactorEi(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.btMatrix3x3) align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3176) %1, i32 noundef %2) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.btAlignedObjectArray.4, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.10297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.16303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.29316.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.35.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.48.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 108
  %.sroa.54.32..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = sext i32 %2 to i64                       ; 2 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load <2 x float>, ptr %i.a, align 8      ; 6 uses
  %i.k = load <2 x float>, ptr %i.b, align 8      ; 7 uses
  %i.l = load <2 x float>, ptr %i.c, align 8      ; 6 uses
  %i.m = load <2 x float>, ptr %.sroa.10297.0..sroa_idx, align 4 ; 4 uses
  %.sroa.16303.0.copyload = load float, ptr %.sroa.16303.0..sroa_idx, align 8 ; 5 uses
  %i.n = load <2 x float>, ptr %.sroa.29316.16..sroa_idx, align 4 ; 5 uses
  %.sroa.35.16.copyload = load float, ptr %.sroa.35.16..sroa_idx, align 8 ; 3 uses
  %i.o = load <2 x float>, ptr %.sroa.48.32..sroa_idx, align 4 ; 5 uses
  %.sroa.54.32.copyload = load float, ptr %.sroa.54.32..sroa_idx, align 8 ; 7 uses
  %i.p = extractelement <2 x float> %i.m, i64 0   ; 3 uses
  %i.q = extractelement <2 x float> %i.j, i64 0   ; 4 uses
  %i.r = load float, ptr %i.h, align 4, !tbaa !142 ; 2 uses
  %i.s = load float, ptr %i.g, align 4, !tbaa !142 ; 2 uses
  %i.t = load float, ptr %i.i, align 4, !tbaa !142 ; 2 uses
  %i.u = fmul float %i.p, %i.r
  %i.v = tail call float @llvm.fmuladd.f32(float %i.q, float %i.s, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16303.0.copyload, float %i.t, float %i.v) ; 5 uses
  %i.x = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = shufflevector <2 x float> %i.k, <2 x float> %i.l, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.ac = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ad, <2 x float> %i.aa)
  %i.af = insertelement <2 x float> poison, float %.sroa.35.16.copyload, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %.sroa.54.32.copyload, i64 1 ; 3 uses
  %i.ah = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.ae) ; 7 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1 ; 3 uses
  %i.al = fneg float %i.ak                        ; 4 uses
  %i.am = fneg float %i.w                         ; 5 uses
  %i.an = extractelement <2 x float> %i.aj, i64 0 ; 2 uses
  %i.ao = fneg float %i.an                        ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 3088 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !128
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.f
  %i.as = load float, ptr %i.ar, align 4, !tbaa !142
  %i.at = fcmp ogt float %i.as, 0.000000e+00
  br i1 %i.at, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 2352
  %i.av = load float, ptr %i.au, align 8, !tbaa !153
  %i.aw = fdiv float 1.000000e+00, %i.av
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ax = phi float [ %i.aw, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 2640 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 2656 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2672 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 2644 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 2660 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 2676 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 2680
  %i.bf = load float, ptr %i.bc, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.bg = load <3 x float>, ptr %i.az, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bh = fmul float %i.bf, %i.al
  %i.bi = load float, ptr %i.bb, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.bj = load <3 x float>, ptr %i.ay, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bi, float 0.000000e+00, float %i.bh)
  %i.bl = load float, ptr %i.bd, align 4, !tbaa !142, !noalias !311 ; 2 uses
  %i.bm = load <3 x float>, ptr %i.ba, align 8, !tbaa !142, !noalias !311 ; 2 uses
  %i.bn = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.an, float %i.bk) ; 2 uses
  %i.bo = fmul float %i.bf, 0.000000e+00
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bi, float %i.ak, float %i.bo)
  %i.bq = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.am, float %i.bp) ; 2 uses
  %i.br = insertelement <3 x float> poison, float %i.w, i64 0
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bt = fmul <3 x float> %i.bs, %i.bg
  %i.bu = insertelement <3 x float> poison, float %i.ao, i64 0
  %i.bv = shufflevector <3 x float> %i.bu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bj, <3 x float> %i.bv, <3 x float> %i.bt)
  %i.bx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> zeroinitializer, <3 x float> %i.bw) ; 4 uses
  %i.by = fmul float %i.ak, %i.bn
  %i.bz = shufflevector <3 x float> %i.bx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ca = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.am, i64 1
  %i.cb = fmul <2 x float> %i.bz, %i.ca
  %i.cc = insertelement <2 x float> poison, float %i.al, i64 0
  %i.cd = shufflevector <2 x float> %i.cc, <2 x float> %i.aj, <2 x i32> <i32 0, i32 2>
  %i.ce = shufflevector <3 x float> %i.bx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.ce, <2 x float> %i.cb)
  %4 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.w, i64 0
  %i.cg = shufflevector <3 x float> %i.bx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %4, <2 x float> %i.cg, <2 x float> %i.cf)
  %i.ci = shufflevector <3 x float> %i.bg, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 6, i32 7>
  %i.ck = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, float %i.al, i64 0 ; 3 uses
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> %i.ci, <4 x i32> <i32 0, i32 0, i32 2, i32 4>
  %i.cm = fmul <4 x float> %i.cj, %i.cl
  %i.cn = shufflevector <3 x float> %i.bj, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 4 uses
  %i.co = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cp = shufflevector <4 x float> %i.cn, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 poison>
  %i.cq = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 6 uses
  %i.cr = shufflevector <4 x float> %i.cp, <4 x float> %i.cq, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.cs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.co, <4 x float> %i.cr, <4 x float> %i.cm)
  %i.ct = shufflevector <3 x float> %i.bm, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 0, i32 0, i32 5, i32 0>
  %i.cv = insertelement <4 x float> %i.cq, float -0.000000e+00, i64 2
  %i.cw = insertelement <4 x float> %i.cv, float %i.am, i64 3
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3> ; 2 uses
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> %i.cx, <4 x float> %i.cs) ; 3 uses
  %i.cz = shufflevector <4 x float> %i.ci, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 6, i32 7>
  %i.da = shufflevector <4 x float> %i.ck, <4 x float> %i.ci, <4 x i32> <i32 0, i32 0, i32 poison, i32 6>
  %i.db = insertelement <4 x float> %i.da, float 1.000000e+00, i64 2
  %i.dc = fmul <4 x float> %i.cz, %i.db
  %i.dd = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x float> %i.cn, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.de = shufflevector <4 x float> %i.cn, <4 x float> %i.cq, <4 x i32> <i32 2, i32 2, i32 poison, i32 5> ; 2 uses
  %i.df = insertelement <4 x float> %i.de, float -0.000000e+00, i64 2
  %i.dg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.df, <4 x float> %i.dc)
  %i.dh = shufflevector <4 x float> %i.ct, <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 2, i32 2, i32 5, i32 2>
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> %i.cx, <4 x float> %i.dg) ; 3 uses
  %i.dj = extractelement <4 x float> %i.cy, i64 0
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float 0.000000e+00, float %i.by)
  %i.dl = extractelement <4 x float> %i.di, i64 0
  %i.dm = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.dl, float %i.dk)
  %i.dn = insertelement <4 x float> %i.de, float 0.000000e+00, i64 2
  %i.do = insertelement <4 x float> %i.dn, float %i.bn, i64 0
  %i.dp = shufflevector <4 x float> %i.do, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.dq = insertelement <4 x float> <float 0.000000e+00, float poison, float 1.000000e+00, float poison>, float %i.am, i64 1 ; 2 uses
  %i.dr = insertelement <4 x float> %i.dq, float %i.bq, i64 3
  %i.ds = fmul <4 x float> %i.dp, %i.dr
  %i.dt = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, float %i.al, i64 0
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> %i.cq, <4 x i32> <i32 0, i32 4, i32 2, i32 3> ; 2 uses
  %i.dv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.cy, <4 x float> %i.ds)
  %i.dw = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float poison>, float %i.w, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.ao, i64 3 ; 2 uses
  %i.dy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.di, <4 x float> %i.dv)
  %i.dz = fsub float %i.ax, %i.dm                 ; 2 uses
  %i.ea = fsub <4 x float> zeroinitializer, %i.dy ; 2 uses
  %i.eb = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.cq, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.ec = insertelement <4 x float> %i.eb, float %i.bq, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.ee = shufflevector <3 x float> %i.bx, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ef = shufflevector <4 x float> %i.dq, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.eg = fmul <4 x float> %i.ed, %i.ef
  %i.eh = shufflevector <4 x float> %i.cy, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = shufflevector <4 x float> %i.di, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.el, <4 x float> %i.ej)
  %i.en = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %i.ax, i64 0
  %i.eo = fsub <4 x float> %i.en, %i.em           ; 2 uses
  %i.ep = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ax, i64 1
  %i.eq = fsub <2 x float> %i.ep, %i.ch           ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 2712 ; 3 uses
  %i.es = load i32, ptr %i.er, align 8, !tbaa !139 ; 14 uses
  %i.et = icmp sgt i32 %i.es, 0                   ; 2 uses
  %i.eu = mul nsw i32 %2, 3                       ; 2 uses
  br i1 %i.et, label %.split352, label %.split353

.split352:                                        ; preds = %bb.c
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 2128
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 2096
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 2736
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !124 ; 25 uses
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !124 ; 25 uses
  %i.fa = load ptr, ptr %i.ev, align 8, !tbaa !124 ; 25 uses
  %i.fb = sext i32 %i.eu to i64                   ; 29 uses
  %wide.trip.count = zext nneg i32 %i.es to i64   ; 18 uses
  %i.fc = add nsw i64 %wide.trip.count, -1        ; 8 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.fd = icmp eq i64 %i.fc, 0
  br i1 %i.fd, label %.epil.preheader, label %.split352.new

.split352.new:                                    ; preds = %.split352
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

.split353.loopexit:                               ; preds = %._crit_edge.1.2
  %i.fe = insertelement <3 x float> poison, float %.lcssa501, i64 0
  %i.ff = insertelement <3 x float> %i.fe, float %.lcssa503, i64 1
  %i.fg = insertelement <3 x float> %i.ff, float %.lcssa502, i64 2
  %i.fh = insertelement <3 x float> poison, float %.lcssa504, i64 0
  %i.fi = insertelement <3 x float> %i.fh, float %.lcssa506, i64 1
  %i.fj = insertelement <3 x float> %i.fi, float %.lcssa505, i64 2
  br label %.split353

.split353:                                        ; preds = %.split353.loopexit, %bb.c
  %.sroa.22441.0 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa500, %.split353.loopexit ] ; 2 uses
  %.sroa.25.0 = phi float [ 0.000000e+00, %bb.c ], [ %.lcssa499, %.split353.loopexit ] ; 2 uses
  %.sroa.28.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.yr, %.split353.loopexit ] ; 2 uses
  %i.fk = phi <3 x float> [ zeroinitializer, %bb.c ], [ %i.fj, %.split353.loopexit ] ; 2 uses
  %i.fl = phi <3 x float> [ zeroinitializer, %bb.c ], [ %i.fg, %.split353.loopexit ] ; 2 uses
  %i.fm = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 1, i32 1, i32 poison, i32 3> ; 3 uses
  %i.fn = insertelement <4 x float> %i.fm, float -0.000000e+00, i64 2 ; 2 uses
  %i.fo = shufflevector <3 x float> %i.fl, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.fp = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.fq = fmul <4 x float> %i.fn, %i.fp
  %i.fr = shufflevector <3 x float> %i.fk, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.fs = shufflevector <4 x float> %i.fr, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 1, i32 1, i32 6, i32 1>
  %i.ft = shufflevector <2 x float> %i.j, <2 x float> %i.k, <4 x i32> <i32 0, i32 0, i32 poison, i32 2> ; 2 uses
  %i.fu = insertelement <4 x float> %i.ft, float -0.000000e+00, i64 2 ; 3 uses
  %i.fv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fs, <4 x float> %i.fu, <4 x float> %i.fq)
  %i.fw = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.22441.0, i64 0
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.fy = shufflevector <2 x float> %i.m, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0> ; 5 uses
  %i.fz = shufflevector <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x float> %i.fy, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.ga = shufflevector <2 x float> %i.n, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %i.gb = shufflevector <4 x float> %i.fz, <4 x float> %i.ga, <4 x i32> <i32 0, i32 0, i32 2, i32 5> ; 3 uses
  %i.gc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.gb, <4 x float> %i.fv) ; 3 uses
  %i.gd = shufflevector <4 x float> %i.fm, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 3>
  %i.ge = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.gf = fmul <4 x float> %i.gd, %i.ge
  %i.gg = shufflevector <4 x float> %i.fr, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 2, i32 2, i32 6, i32 2>
  %i.gh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fu, <4 x float> %i.gf)
  %i.gi = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.25.0, i64 0
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gj, <4 x float> %i.gb, <4 x float> %i.gh) ; 3 uses
  %i.gl = shufflevector <4 x float> %i.fo, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.gm = fmul <4 x float> %i.fn, %i.gl
  %i.gn = shufflevector <4 x float> %i.fr, <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x i32> <i32 0, i32 0, i32 6, i32 0>
  %i.go = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gn, <4 x float> %i.fu, <4 x float> %i.gm)
  %i.gp = insertelement <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, float %.sroa.28.0, i64 0
  %i.gq = shufflevector <4 x float> %i.gp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0>
  %i.gr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> %i.gb, <4 x float> %i.go) ; 3 uses
  %i.gs = extractelement <4 x float> %i.gk, i64 0
  %i.gt = fmul float %i.p, %i.gs
  %i.gu = extractelement <4 x float> %i.gc, i64 0
  %i.gv = tail call float @llvm.fmuladd.f32(float %i.q, float %i.gu, float %i.gt)
  %i.gw = extractelement <4 x float> %i.gr, i64 0
  %i.gx = tail call noundef float @llvm.fmuladd.f32(float %.sroa.16303.0.copyload, float %i.gw, float %i.gv)
  %i.gy = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.gz = shufflevector <4 x float> %i.fm, <4 x float> %i.gy, <4 x i32> <i32 3, i32 5, i32 poison, i32 0>
  %i.ha = insertelement <4 x float> %i.gz, float -0.000000e+00, i64 2 ; 2 uses
  %i.hb = fmul <4 x float> %i.ha, %i.gk
  %i.hc = shufflevector <4 x float> %i.ft, <4 x float> %i.gy, <4 x i32> <i32 3, i32 4, i32 poison, i32 0>
  %i.hd = insertelement <4 x float> %i.hc, float 0.000000e+00, i64 2 ; 2 uses
  %i.he = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hd, <4 x float> %i.gc, <4 x float> %i.hb)
  %i.hf = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.fy, <4 x i32> <i32 poison, i32 poison, i32 2, i32 5>
  %i.hg = shufflevector <4 x float> %i.hf, <4 x float> %i.ga, <4 x i32> <i32 5, i32 poison, i32 2, i32 3>
  %i.hh = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %i.hi = shufflevector <4 x float> %i.hg, <4 x float> %i.hh, <4 x i32> <i32 0, i32 5, i32 2, i32 3> ; 2 uses
  %i.hj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hi, <4 x float> %i.gr, <4 x float> %i.he)
  %i.hk = insertelement <4 x float> %i.ga, float -0.000000e+00, i64 2
  %i.hl = shufflevector <4 x float> %i.hk, <4 x float> %i.hh, <4 x i32> <i32 0, i32 4, i32 2, i32 poison>
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 4> ; 2 uses
  %i.hn = shufflevector <4 x float> %i.gk, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ho = shufflevector <2 x float> %i.k, <2 x float> %i.l, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.hp = insertelement <4 x float> %i.ho, float 0.000000e+00, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.q, i64 3 ; 2 uses
  %i.hr = shufflevector <4 x float> %i.gc, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hs = shufflevector <4 x float> <float poison, float poison, float 0.000000e+00, float poison>, <4 x float> %i.ga, <4 x i32> <i32 5, i32 poison, i32 2, i32 poison>
  %i.ht = shufflevector <4 x float> %i.hs, <4 x float> %i.hh, <4 x i32> <i32 0, i32 5, i32 2, i32 poison>
  %i.hu = shufflevector <4 x float> %i.ht, <4 x float> %i.fy, <4 x i32> <i32 0, i32 1, i32 2, i32 5> ; 2 uses
  %i.hv = shufflevector <4 x float> %i.gr, <4 x float> <float poison, float poison, float -0.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.hw = shufflevector <2 x float> %i.o, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hx = fmul <3 x float> %i.hw, %i.fl
  %i.hy = shufflevector <2 x float> %i.l, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fk, <3 x float> %i.hy, <3 x float> %i.hx)
  %i.ia = insertelement <3 x float> poison, float %.sroa.28.0, i64 0
  %i.ib = insertelement <3 x float> %i.ia, float %.sroa.22441.0, i64 1
  %i.ic = insertelement <3 x float> %i.ib, float %.sroa.25.0, i64 2
  %i.id = insertelement <3 x float> poison, float %.sroa.54.32.copyload, i64 0
  %i.ie = shufflevector <3 x float> %i.id, <3 x float> poison, <3 x i32> zeroinitializer
  %i.if = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ic, <3 x float> %i.ie, <3 x float> %i.hz) ; 4 uses
  %i.ig = shufflevector <3 x float> %i.if, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 3 uses
  %i.ih = shufflevector <4 x float> %i.hn, <4 x float> %i.ig, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %i.ii = fmul <4 x float> %i.hm, %i.ih
  %i.ij = shufflevector <4 x float> %i.hr, <4 x float> %i.ig, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hq, <4 x float> %i.ij, <4 x float> %i.ii)
  %i.il = shufflevector <4 x float> %i.hv, <4 x float> %i.ig, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.im = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hu, <4 x float> %i.il, <4 x float> %i.ik)
  %i.in = shufflevector <3 x float> %i.if, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.io = fmul <2 x float> %i.x, %i.in
  %i.ip = shufflevector <3 x float> %i.if, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ab, <2 x float> %i.ip, <2 x float> %i.io)
  %i.ir = shufflevector <3 x float> %i.if, <3 x float> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ir, <2 x float> %i.iq)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.it = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store i8 1, ptr %i.it, align 8, !tbaa !131
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr null, ptr %i.iu, align 8, !tbaa !132
  %i.iv = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 0, ptr %i.iv, align 4, !tbaa !133
  %i.iw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.iw, align 8, !tbaa !134
  br i1 %i.et, label %bb.d, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.split353
  store i32 %i.es, ptr %i.iv, align 4, !tbaa !133
end_hunk_1
