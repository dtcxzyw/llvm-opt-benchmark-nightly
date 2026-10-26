Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14texture_lookupERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_:bb.a
  %i.cg = select <2 x i1> %i.ce, <2 x float> zeroinitializer, <2 x float> %i.cf ; 2 uses
  %i.ch = fcmp ogt <2 x float> %i.cg, splat (float 1.000000e+03)
  %i.ci = select <2 x i1> %i.ch, <2 x float> splat (float 1.000000e+03), <2 x float> %i.cg ; 2 uses
  %i.cj = fptrunc double %i.bs to float           ; 3 uses
  %i.ck = fptrunc double %i.bv to float
  %i.cl = tail call float @llvm.fabs.f32(float %i.ck) ; 4 uses
  %i.cm = tail call float @llvm.fabs.f32(float %i.cj) ; 4 uses
  %i.cn = fcmp ogt float %i.cm, %i.cl             ; 2 uses
  %i.co = fcmp oeq float %i.cj, 0.000000e+00
  br i1 %i.co, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.cp = fcmp oeq float %i.cl, %i.cm
  br i1 %i.cp, label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.cn, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cq = fdiv float %i.cl, %i.cm
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

bb.i:                                             ; preds = %bb.g
  %i.cr = fdiv float %i.cm, %i.cl
  br label %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit

_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.f, %bb.h, %bb.i
  %i.cs = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit ], [ 1.000000e+00, %bb.f ], [ %i.cq, %bb.h ], [ %i.cr, %bb.i ]
  %i.ct = fadd float %i.cs, -1.000000e+00
  %i.cu = fadd float %i.ct, 1.000000e+00          ; 3 uses
  %i.cv = fmul float %i.cu, %i.cu                 ; 3 uses
  %i.cw = fmul contract float %i.cv, f0x3EDC3EAD
  %i.cx = fadd contract float %i.cw, 1.000000e+00
  %i.cy = fmul float %i.cu, %i.cx
  %i.cz = fmul contract float %i.cv, 5.793550e-02
  %i.da = fadd contract float %i.cz, f0x3F43547E
  %i.db = fmul contract float %i.cv, %i.da
  %i.dc = fadd contract float %i.db, 1.000000e+00
  %i.dd = fdiv float %i.cy, %i.dc                 ; 2 uses
  %i.de = fsub float f0x3FC90FDB, %i.dd
  %.0.i.i = select i1 %i.cn, float %i.de, float %i.dd ; 2 uses
  %i.df = bitcast double %i.bv to i64
  %i.dg = fsub float f0x40490FDB, %.0.i.i
  %.not.i57.i = icmp slt i64 %i.df, 0
  %.1.i.i = select i1 %.not.i57.i, float %i.dg, float %.0.i.i
  %i.dh = tail call noundef float @llvm.copysign.f32(float %.1.i.i, float %i.cj)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.dh, float 5.000000e-01, float f0x3FC90FDB) ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dk = load <2 x float>, ptr %i.dj, align 8, !tbaa !75 ; 3 uses
  %i.dl = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.dk)
  %i.dm = fcmp une float %i.dl, 0.000000e+00
  br i1 %i.dm, label %bb.j, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit
  %i.dn = fmul float %i.di, f0x3EA2F983           ; 2 uses
  %i.do = tail call float @llvm.copysign.f32(float 5.000000e-01, float %i.dn)
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = fptosi float %i.dp to i32               ; 2 uses
  %i.dr = sitofp i32 %i.dq to float               ; 4 uses
  %i.ds = fmul nnan contract float %i.dr, f0x40490000
  %i.dt = fsub contract float %i.di, %i.ds
  %i.du = fmul nnan contract float %i.dr, f0x3A7DA000
  %i.dv = fsub contract float %i.dt, %i.du
  %i.dw = fmul nnan contract float %i.dr, f0x34222000
  %i.dx = fsub contract float %i.dv, %i.dw
  %i.dy = fmul nnan contract float %i.dr, f0x2CB4611A
  %i.dz = fsub contract float %i.dx, %i.dy
  %i.ea = fadd float %i.dz, f0xBFC90FDB
  %i.eb = fadd float %i.ea, f0x3FC90FDB           ; 4 uses
  %i.ec = fmul float %i.eb, %i.eb                 ; 9 uses
  %i.ed = and i32 %i.dq, 1
  %.not.i.i = icmp eq i32 %i.ed, 0                ; 2 uses
  %i.ee = fneg float %i.eb
  %.0.i.i202 = select i1 %.not.i.i, float %i.eb, float %i.ee ; 2 uses
  %i.ef = fmul contract float %i.ec, f0x362F0A87
  %i.eg = fadd contract float %i.ef, f0xB94FBAEB
  %i.eh = fmul contract float %i.ec, %i.eg
  %i.ei = fadd contract float %i.eh, f0x3C088777
  %i.ej = fmul contract float %i.ec, %i.ei
  %i.ek = fadd contract float %i.ej, f0xBE2AAAA6
  %i.el = fmul float %.0.i.i202, %i.ek
  %i.em = fmul contract float %i.ec, %i.el
  %i.en = fadd contract float %.0.i.i202, %i.em
  %i.eo = fmul contract float %i.ec, f0x3491ED89
  %i.ep = fsub contract float f0x37D0078B, %i.eo
  %i.eq = fmul contract float %i.ec, %i.ep
  %i.er = fadd contract float %i.eq, f0xBAB60B58
  %i.es = fmul contract float %i.ec, %i.er
  %i.et = fadd contract float %i.es, f0x3D2AAAAA
  %i.eu = fmul contract float %i.ec, %i.et
  %i.ev = fadd contract float %i.eu, -5.000000e-01
  %i.ew = fmul contract float %i.ec, %i.ev
  %i.ex = fadd contract float %i.ew, 1.000000e+00 ; 2 uses
  %i.ey = fneg float %i.ex
  %storemerge.i.i = select i1 %.not.i.i, float %i.ex, float %i.ey
  %i.ez = insertelement <2 x float> poison, float %i.en, i64 0
  %i.fa = insertelement <2 x float> %i.ez, float %storemerge.i.i, i64 1 ; 2 uses
  %i.fb = fcmp oge <2 x float> %i.fa, splat (float -1.000000e+00)
  %i.fc = select <2 x i1> %i.fb, <2 x float> %i.fa, <2 x float> splat (float -1.000000e+00) ; 2 uses
  %i.fd = fcmp ogt <2 x float> %i.fc, splat (float 1.000000e+00)
  %i.fe = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.fc)
  %i.ff = select <2 x i1> %i.fd, <2 x float> splat (float 1.000000e+00), <2 x float> %i.fe ; 2 uses
  %i.fg = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = shufflevector <2 x float> %i.ff, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fi = fmul <2 x float> %i.fg, %i.fh
  %i.fj = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fj, <2 x float> %i.ff, <2 x float> %i.fi)
  %i.fl = fadd <2 x float> %i.ci, %i.fk           ; 4 uses
  %i.fm = extractelement <2 x float> %i.fl, i64 0
  %i.fn = extractelement <2 x float> %i.fl, i64 1
  %i.fo = fcmp ogt float %i.fm, %i.fn
  br i1 %i.fo, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  %i.fp = shufflevector <2 x float> %i.fl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fq = fpext float %i.di to double
  %i.fr = fadd double %i.fq, f0x3FF921FB54442D18
  %i.fs = fptrunc double %i.fr to float
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit, %bb.j, %bb.k
  %.0308 = phi float [ %i.fs, %bb.k ], [ %i.di, %bb.j ], [ %i.di, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ]
  %i.ft = phi <2 x float> [ %i.fp, %bb.k ], [ %i.fl, %bb.j ], [ %i.ci, %_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf.exit ] ; 4 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0 ; 3 uses
  %i.fv = extractelement <2 x float> %i.ft, i64 1 ; 2 uses
  %i.fw = fdiv float %i.fv, %i.fu                 ; 2 uses
  %.inv.i203 = fcmp oge float %i.fw, 1.000000e+00
  %.0.i.i204 = select i1 %.inv.i203, float %i.fw, float 1.000000e+00 ; 2 uses
  %i.fx = fcmp ogt float %.0.i.i204, 1.000000e+06
  %.1.i.i205 = select i1 %i.fx, float 1.000000e+06, float %.0.i.i204 ; 4 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !258 ; 2 uses
  %i.ga = uitofp i16 %i.fz to float               ; 8 uses
  %i.gb = fcmp ogt float %.1.i.i205, %i.ga
  br i1 %i.gb, label %bb.l, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !259, !range !102, !noundef !103
  %i.ge = trunc nuw i8 %i.gd to i1
  br i1 %i.ge, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.fu, float %i.ga, float %i.fv)
  %i.gg = fmul float %i.gf, 5.000000e-01          ; 2 uses
  %i.gh = fdiv float %i.gg, %i.ga
  %i.gi = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.gg, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.n:                                             ; preds = %bb.l
  %i.gk = fmul float %i.fu, %i.ga
  %i.gl = insertelement <2 x float> %i.ft, float %i.gk, i64 1
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit, %bb.m, %bb.n
  %.0.i = phi float [ %i.ga, %bb.m ], [ %i.ga, %bb.n ], [ %.1.i.i205, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 5 uses
  %i.gm = phi <2 x float> [ %i.gj, %bb.m ], [ %i.gl, %bb.n ], [ %i.ft, %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.gq = sext i32 %i.go to i64
  %i.gr = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.gs = getelementptr inbounds nuw [128 x i8], ptr %i.gr, i64 %i.gq ; 4 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 96
  %i.gu = load i32, ptr %i.gt, align 8, !tbaa !342 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gs, i64 100
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !343 ; 7 uses
  %i.gx = icmp slt i32 %i.gw, %i.gu
  br i1 %i.gx, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 104
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !344
  %i.ha = sext i32 %i.gw to i64
  %i.hb = extractelement <2 x float> %i.gm, i64 0 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ha, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv.i
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !55
  %i.he = sitofp i32 %i.hd to float
  %i.hf = fmul float %i.hb, %i.he                 ; 2 uses
  %i.hg = fcmp ugt float %i.hf, 1.000000e+00
  br i1 %i.hg, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.o
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.gu, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.o, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.o
  %i.hh = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.hi = add nsw i32 %i.hh, -1                   ; 2 uses
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.hf, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i208 = fcmp oge float %i.hj, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i208, float %i.hj, float 0.000000e+00 ; 2 uses
  %i.hk = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.hk, float 1.000000e+00, float %.0.i77.i ; 5 uses
  %i.hl = fsub float 1.000000e+00, %.1.i78.i      ; 2 uses
  %i.hm = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.hm, label %.loopexit.i.thread, label %bb.p

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit, %.loopexit.i
  %i.hn = add nsw i32 %i.gu, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.p:                                             ; preds = %.loopexit.i
  %.not351 = icmp slt i32 %i.gw, %i.hh
  br i1 %.not351, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !198
  switch i8 %i.hp, label %bb.t [
    i8 1, label %bb.r
    i8 2, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  ]

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gs, i64 120
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !231 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 36
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 40
  %i.hu = load i32, ptr %i.hs, align 4, !tbaa !55
  %i.hv = load i32, ptr %i.ht, align 4, !tbaa !55
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hu, i32 %i.hv)
  %i.hx = sitofp i32 %i.hw to float               ; 2 uses
  %i.hy = fmul float %i.hb, %i.hx
  %i.hz = fcmp olt float %i.hy, 5.000000e-01
  br i1 %i.hz, label %bb.s, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.s:                                             ; preds = %bb.r
  %i.ia = extractelement <2 x float> %i.gm, i64 1
  %i.ib = fmul float %i.ia, %i.hx
  %i.ic = fmul float %i.ib, 2.000000e+00          ; 2 uses
  %.inv93.i = fcmp oge float %i.ic, 1.000000e+00
  %.0.i75.i = select i1 %.inv93.i, float %i.ic, float 1.000000e+00 ; 2 uses
  %i.id = fcmp ogt float %.0.i75.i, %i.ga
  %.1.i76.i = select i1 %i.id, float %i.ga, float %.0.i75.i
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.t:                                             ; preds = %bb.q
  br i1 %i.aa, label %bb.u, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.u:                                             ; preds = %bb.t
  %i.ie = fcmp ult float %i.t, %.1.i78.i          ; 2 uses
  %i.if = fdiv float %i.t, %.1.i78.i
  %i.ig = fsub float %i.t, %.1.i78.i
  %i.ih = fdiv float %i.ig, %i.hl
  %.sroa.10.1 = select i1 %i.ie, i32 %i.hh, i32 %i.hi ; 2 uses
  %.sink109.i = select i1 %i.ie, float %i.if, float %i.ih ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i206 = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.ii = fcmp ogt float %.0.i.i206, 1.000000e+00
  %.1.i.i207 = select i1 %i.ii, float 1.000000e+00, float %.0.i.i206 ; 2 uses
  store float %.1.i.i207, ptr %i.s, align 8, !tbaa !261
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.q, %.loopexit.i.thread, %bb.r, %bb.s, %bb.t, %bb.u
  %i.ij = phi float [ %i.t, %.loopexit.i.thread ], [ %i.t, %bb.s ], [ %i.t, %bb.r ], [ %.1.i.i207, %bb.u ], [ %i.t, %bb.t ], [ %i.t, %bb.q ]
  %.sroa.10.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hh, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
  %.sroa.0237.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.s ], [ 1.000000e+00, %bb.r ], [ 1.000000e+00, %bb.u ], [ %i.hl, %bb.t ], [ 1.000000e+00, %bb.q ] ; 2 uses
  %.sroa.9.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.s ], [ 0.000000e+00, %bb.r ], [ 0.000000e+00, %bb.u ], [ %.1.i78.i, %bb.t ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %.sroa.0241.2 = phi i32 [ %i.hn, %.loopexit.i.thread ], [ %i.gw, %bb.s ], [ %i.gw, %bb.r ], [ %.sroa.10.1, %bb.u ], [ %i.hi, %bb.t ], [ %i.hh, %bb.q ] ; 7 uses
  %.0309 = phi float [ %.0.i, %.loopexit.i.thread ], [ %.1.i76.i, %bb.s ], [ %.0.i, %bb.r ], [ %.0.i, %bb.u ], [ %.0.i, %bb.t ], [ %.0.i, %bb.q ]
  %i.ik = zext i16 %i.fz to i32
  %i.il = shl nuw nsw i32 %i.ik, 1
  %i.im = add nuw nsw i32 %i.il, 2
  %i.in = and i32 %i.im, 262140                   ; 5 uses
  %.not = icmp eq i32 %i.in, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  %i.io = shl nuw nsw i32 %i.in, 4
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = alloca i8, i64 %i.ip, align 16
  br label %bb.w

bb.w:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit, %bb.v
  %i.ir = phi ptr [ %i.iq, %bb.v ], [ null, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit ] ; 14 uses
  %i.is = zext nneg i32 %i.in to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.is ; 4 uses
  %i.iu = shl nuw nsw i32 %i.in, 1
  %i.iv = zext nneg i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iv ; 13 uses
  %i.ix = mul nuw nsw i32 %i.in, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.iy ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.ja = extractelement <2 x float> %i.gm, i64 0
  %i.jb = extractelement <2 x float> %i.gm, i64 1
  %i.jc = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0309, float noundef %.0308, float noundef %i.jb, float noundef %i.ja, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef %i.ir, ptr noundef %i.it, i1 noundef zeroext %i.ab, float noundef %i.ij) ; 16 uses
  %i.jd = load float, ptr %i.a, align 4, !tbaa !75
  %i.je = fmul float %i.jd, 5.000000e-01          ; 2 uses
  store float %i.je, ptr %i.a, align 4, !tbaa !75
  %i.jf = load float, ptr %i.b, align 4, !tbaa !75
  %i.jg = fmul float %i.jf, 5.000000e-01          ; 2 uses
  store float %i.jg, ptr %i.b, align 4, !tbaa !75
  %i.jh = icmp sgt i32 %i.jc, 0
  br i1 %i.jh, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w
  %i.ji = insertelement <4 x float> poison, float %6, i64 0
  %i.jj = shufflevector <4 x float> %i.ji, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jk = insertelement <4 x float> poison, float %i.je, i64 0
  %i.jl = shufflevector <4 x float> %i.jk, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jm = insertelement <4 x float> poison, float %7, i64 0
  %i.jn = shufflevector <4 x float> %i.jm, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jo = insertelement <4 x float> poison, float %i.jg, i64 0
  %i.jp = shufflevector <4 x float> %i.jo, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.jq = zext nneg i32 %i.jc to i64
  %i.jr = add nsw i64 %i.jq, -1                   ; 2 uses
  %i.js = lshr i64 %i.jr, 2                       ; 2 uses
  %i.jt = add nuw nsw i64 %i.js, 1                ; 2 uses
  %i.ju = icmp eq i64 %i.js, 0
  br i1 %i.ju, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.jt, 9223372036854775806
  br label %bb.x

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.x
  %i.jv = and i64 %i.jr, 4
  %lcmp.mod.not.not = icmp eq i64 %i.jv, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod356 = trunc i64 %i.jt to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.epil.init
  %i.jx = load <4 x float>, ptr %i.jw, align 16, !tbaa !83 ; 2 uses
  %i.jy = fmul <4 x float> %i.jl, %i.jx
  %i.jz = fadd <4 x float> %i.jj, %i.jy
  %i.ka = fmul <4 x float> %i.jp, %i.jx
  %i.kb = fadd <4 x float> %i.jn, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.epil.init
  store <4 x float> %i.jz, ptr %i.kc, align 16, !tbaa !83
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.epil.init
  store <4 x float> %i.kb, ptr %i.kd, align 16, !tbaa !83
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.w
  %.not168 = icmp eq ptr %13, null                ; 5 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.kf = lshr i32 %i.p, 1                        ; 2 uses
  %i.kg = lshr i32 %i.r, 1                        ; 2 uses
  %.3 = select i1 %.not168, ptr null, ptr %16     ; 8 uses
  %i.kh = select i1 %.not168, ptr null, ptr %17   ; 8 uses
  %i.ki = fcmp une float %.sroa.0237.1, 0.000000e+00
  br i1 %i.ki, label %bb.y, label %bb.ak

bb.x:                                             ; preds = %bb.x, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.x ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.x ]
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv
  %i.kk = load <4 x float>, ptr %i.kj, align 16, !tbaa !83 ; 2 uses
  %i.kl = fmul <4 x float> %i.jl, %i.kk
  %i.km = fadd <4 x float> %i.jj, %i.kl
  %i.kn = fmul <4 x float> %i.jp, %i.kk
  %i.ko = fadd <4 x float> %i.jn, %i.kn
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv
  store <4 x float> %i.km, ptr %i.kp, align 16, !tbaa !83
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv
  store <4 x float> %i.ko, ptr %i.kq, align 16, !tbaa !83
  %indvars.iv.next = or disjoint i64 %indvars.iv, 4 ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.it, i64 %indvars.iv.next
  %i.ks = load <4 x float>, ptr %i.kr, align 16, !tbaa !83 ; 2 uses
  %i.kt = fmul <4 x float> %i.jl, %i.ks
  %i.ku = fadd <4 x float> %i.jj, %i.kt
  %i.kv = fmul <4 x float> %i.jp, %i.ks
  %i.kw = fadd <4 x float> %i.jn, %i.kv
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %indvars.iv.next
  store <4 x float> %i.ku, ptr %i.kx, align 16, !tbaa !83
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %indvars.iv.next
  store <4 x float> %i.kw, ptr %i.ky, align 16, !tbaa !83
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge.loopexit.unr-lcssa, label %bb.x, !llvm.loop !703

bb.y:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.kz = load i8, ptr %i.ke, align 4, !tbaa !257
  switch i8 %i.kz, label %bb.ah [
    i8 0, label %bb.z
    i8 1, label %bb.aa
    i8 2, label %bb.ab
    i8 3, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.la = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.0241.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  br label %bb.ah

bb.aa:                                            ; preds = %bb.y
  %i.lb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.0241.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  br label %bb.ah

bb.ab:                                            ; preds = %bb.y
  %i.lc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.0241.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  br label %bb.ah

bb.ac:                                            ; preds = %bb.y
  %i.ld = icmp eq i32 %.sroa.0241.2, 0
  br i1 %i.ld, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.le = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.lf = sext i32 %i.le to i64
  %i.lg = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.lh = getelementptr inbounds nuw [128 x i8], ptr %i.lg, i64 %i.lf ; 2 uses
  %i.li = sext i32 %.sroa.0241.2 to i64
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !263
  %i.lk = getelementptr inbounds nuw [40 x i8], ptr %i.lj, i64 %i.li
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !273 ; 2 uses
  %.not.i = icmp eq ptr %i.ll, null
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 120
  %i.ln = load ptr, ptr %i.lm, align 8
  %i.lo = select i1 %.not.i, ptr %i.ln, ptr %i.ll ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 12
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !291
  %i.lr = icmp slt i32 %i.lq, %i.kf
  br i1 %i.lr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !288
  %i.lu = icmp slt i32 %i.lt, %i.kg
  br i1 %i.lu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %i.lv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.0241.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.lw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.0241.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag, %bb.ab, %bb.aa, %bb.z, %bb.y
  %.1161 = phi i1 [ true, %bb.y ], [ %i.la, %bb.z ], [ %i.lb, %bb.aa ], [ %i.lc, %bb.ab ], [ %i.lv, %bb.af ], [ %i.lw, %bb.ag ]
  %.1156 = phi i32 [ 0, %bb.y ], [ 1, %bb.z ], [ 0, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 0, %bb.ag ]
  %.1153 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.ab ], [ 0, %bb.af ], [ 1, %bb.ag ]
  %.1150 = phi i32 [ 0, %bb.y ], [ 0, %bb.z ], [ 0, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.af ], [ 0, %bb.ag ]
  %i.lx = insertelement <4 x float> poison, float %.sroa.0237.1, i64 0
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.lz = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.ma = fmul <4 x float> %i.ly, %i.lz
  %i.mb = fadd <4 x float> %i.ma, zeroinitializer
  br i1 %.not168, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mc = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.md = fmul <4 x float> %i.ly, %i.mc
  %i.me = fadd <4 x float> %i.md, zeroinitializer
  %i.mf = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.mg = fmul <4 x float> %i.ly, %i.mf
  %i.mh = fadd <4 x float> %i.mg, zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.sroa.0219.2 = phi <4 x float> [ zeroinitializer, %bb.ah ], [ %i.me, %bb.ai ]
  %.sroa.0218.2 = phi <4 x float> [ zeroinitializer, %bb.ah ], [ %i.mh, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %bb.aj
  %.sroa.0220.1 = phi <4 x float> [ %i.mb, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 2 uses
  %.sroa.0219.3 = phi <4 x float> [ %.sroa.0219.2, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 3 uses
  %.sroa.0218.3 = phi <4 x float> [ %.sroa.0218.2, %bb.aj ], [ zeroinitializer, %._crit_edge ] ; 3 uses
  %.2162 = phi i1 [ %.1161, %bb.aj ], [ true, %._crit_edge ] ; 7 uses
  %.1159 = phi i32 [ 1, %bb.aj ], [ 0, %._crit_edge ] ; 2 uses
  %.2157 = phi i32 [ %.1156, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %.2154 = phi i32 [ %.1153, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %.2151 = phi i32 [ %.1150, %bb.aj ], [ 0, %._crit_edge ] ; 7 uses
  %i.mi = fcmp une float %.sroa.9.1, 0.000000e+00
  br i1 %i.mi, label %bb.al, label %bb.ax

bb.al:                                            ; preds = %bb.ak
  %i.mj = add nuw nsw i32 %.1159, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.mk = load i8, ptr %i.ke, align 4, !tbaa !257
  switch i8 %i.mk, label %bb.au [
    i8 0, label %bb.at
    i8 1, label %bb.as
    i8 2, label %bb.ar
    i8 3, label %bb.am
  ]

bb.am:                                            ; preds = %bb.al
  %i.ml = icmp eq i32 %.sroa.10.2, 0
  br i1 %i.ml, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mm = load i32, ptr %i.gn, align 4, !tbaa !202
  %i.mn = sext i32 %i.mm to i64
  %i.mo = load ptr, ptr %i.gp, align 8, !tbaa !203
  %i.mp = getelementptr inbounds nuw [128 x i8], ptr %i.mo, i64 %i.mn ; 2 uses
  %i.mq = sext i32 %.sroa.10.2 to i64
  %i.mr = load ptr, ptr %i.mp, align 8, !tbaa !263
  %i.ms = getelementptr inbounds nuw [40 x i8], ptr %i.mr, i64 %i.mq
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !273 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.mt, null
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 120
  %i.mv = load ptr, ptr %i.mu, align 8
  %i.mw = select i1 %.not.i.1, ptr %i.mv, ptr %i.mt ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 12
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !291
  %i.mz = icmp slt i32 %i.my, %i.kf
  br i1 %i.mz, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.na = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !288
  %i.nc = icmp slt i32 %i.nb, %i.kg
  br i1 %i.nc, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.nd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  %i.ne = and i1 %i.nd, %.2162
  %i.nf = add nuw nsw i32 %.2154, 1
  br label %bb.au

bb.aq:                                            ; preds = %bb.ao, %bb.an, %bb.am
  %i.ng = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  %i.nh = and i1 %i.ng, %.2162
  %i.ni = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.ar:                                            ; preds = %bb.al
  %i.nj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  %i.nk = and i1 %i.nj, %.2162
  %i.nl = add nuw nsw i32 %.2151, 1
  br label %bb.au

bb.as:                                            ; preds = %bb.al
  %i.nm = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef %.3, ptr noundef %i.kh)
  %i.nn = and i1 %i.nm, %.2162
  %i.no = add nuw nsw i32 %.2154, 1
  br label %bb.au

bb.at:                                            ; preds = %bb.al
  %i.np = call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %i.jc, ptr noundef %i.iw, ptr noundef %i.iz, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef %i.ir, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.nq = and i1 %i.np, %.2162
  %i.nr = add nuw nsw i32 %.2157, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %.1161.1 = phi i1 [ %.2162, %bb.al ], [ %i.nq, %bb.at ], [ %i.nn, %bb.as ], [ %i.nk, %bb.ar ], [ %i.nh, %bb.aq ], [ %i.ne, %bb.ap ]
  %.1156.1 = phi i32 [ %.2157, %bb.al ], [ %i.nr, %bb.at ], [ %.2157, %bb.as ], [ %.2157, %bb.ar ], [ %.2157, %bb.aq ], [ %.2157, %bb.ap ]
  %.1153.1 = phi i32 [ %.2154, %bb.al ], [ %.2154, %bb.at ], [ %i.no, %bb.as ], [ %.2154, %bb.ar ], [ %.2154, %bb.aq ], [ %i.nf, %bb.ap ]
  %.1150.1 = phi i32 [ %.2151, %bb.al ], [ %.2151, %bb.at ], [ %.2151, %bb.as ], [ %i.nl, %bb.ar ], [ %i.ni, %bb.aq ], [ %.2151, %bb.ap ]
  %i.ns = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.nu = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.nv = fmul <4 x float> %i.nt, %i.nu
  %i.nw = fadd <4 x float> %.sroa.0220.1, %i.nv
  br i1 %.not168, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.nx = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.ny = fmul <4 x float> %i.nt, %i.nx
  %i.nz = fadd <4 x float> %.sroa.0219.3, %i.ny
  %i.oa = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.ob = fmul <4 x float> %i.nt, %i.oa
  %i.oc = fadd <4 x float> %.sroa.0218.3, %i.ob
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.0219.2.1 = phi <4 x float> [ %.sroa.0219.3, %bb.au ], [ %i.nz, %bb.av ]
  %.sroa.0218.2.1 = phi <4 x float> [ %.sroa.0218.3, %bb.au ], [ %i.oc, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ak
  %.sroa.0220.1.1 = phi <4 x float> [ %i.nw, %bb.aw ], [ %.sroa.0220.1, %bb.ak ]
  %.sroa.0219.3.1 = phi <4 x float> [ %.sroa.0219.2.1, %bb.aw ], [ %.sroa.0219.3, %bb.ak ]
  %.sroa.0218.3.1 = phi <4 x float> [ %.sroa.0218.2.1, %bb.aw ], [ %.sroa.0218.3, %bb.ak ]
  %.2162.1 = phi i1 [ %.1161.1, %bb.aw ], [ %.2162, %bb.ak ]
  %.1159.1 = phi i32 [ %i.mj, %bb.aw ], [ %.1159, %bb.ak ] ; 2 uses
  %.2157.1 = phi i32 [ %.1156.1, %bb.aw ], [ %.2157, %bb.ak ]
  %.2154.1 = phi i32 [ %.1153.1, %bb.aw ], [ %.2154, %bb.ak ]
  %.2151.1 = phi i32 [ %.1150.1, %bb.aw ], [ %.2151, %bb.ak ]
  store <4 x float> %.sroa.0220.1.1, ptr %12, align 16, !tbaa !83
  br i1 %.not168, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  store <4 x float> %.sroa.0219.3.1, ptr %13, align 16, !tbaa !83
  store <4 x float> %.sroa.0218.3.1, ptr %14, align 16, !tbaa !83
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.od = zext nneg i32 %.1159.1 to i64
  %i.oe = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !315
  %i.og = add nsw i64 %i.of, %i.od
  store i64 %i.og, ptr %i.oe, align 8, !tbaa !315
  %i.oh = mul nsw i32 %.1159.1, %i.jc
  %i.oi = sext i32 %i.oh to i64
  %i.oj = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !316
  %i.ol = add nsw i64 %i.ok, %i.oi
  store i64 %i.ol, ptr %i.oj, align 8, !tbaa !316
  %i.om = getelementptr inbounds nuw i8, ptr %2, i64 296 ; 2 uses
  %i.on = load float, ptr %i.om, align 8, !tbaa !704
  %i.oo = fcmp ogt float %.1.i.i205, %i.on
  br i1 %i.oo, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  store float %.1.i.i205, ptr %i.om, align 8, !tbaa !704
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.op = mul nsw i32 %.2157.1, %i.jc
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.os = load i64, ptr %i.or, align 8, !tbaa !705
  %i.ot = add nsw i64 %i.os, %i.oq
  store i64 %i.ot, ptr %i.or, align 8, !tbaa !705
  %i.ou = mul nsw i32 %.2154.1, %i.jc
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 312 ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !706
  %i.oy = add nsw i64 %i.ox, %i.ov
  store i64 %i.oy, ptr %i.ow, align 8, !tbaa !706
  %i.oz = mul nsw i32 %.2151.1, %i.jc
  %i.pa = sext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !707
  %i.pd = add nsw i64 %i.pc, %i.pa
  store i64 %i.pd, ptr %i.pb, align 8, !tbaa !707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %.2162.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float %8, float %9, float %10, float %11, ptr noundef initializes((0, 16)) %12, ptr noundef %13, ptr noundef %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 6 uses
  %i.b = alloca [4 x float], align 16             ; 6 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !83
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !83
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !257
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.e
  %.unpack = load i64, ptr %i.f, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !75
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.h, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.i, align 4, !tbaa !75
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.j, align 4, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !202
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = sext i32 %i.l to i64
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !203
  %i.p = getelementptr inbounds nuw [128 x i8], ptr %i.o, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 100
  %i.r = load i32, ptr %i.q, align 4, !tbaa !343
  %i.s = inttoptr i64 %.unpack to ptr
  %i.t = call noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %i.r, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl20texture_lookup_nomipERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E6weight, ptr noundef nonnull %12, ptr noundef %13, ptr noundef %14)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !200
  %i.w = add nsw <2 x i64> %i.v, splat (i64 1)
  store <2 x i64> %i.w, ptr %i.u, align 8, !tbaa !200
  %i.x = load i8, ptr %i.c, align 4, !tbaa !257   ; 2 uses
  %i.y = icmp ult i8 %i.x, 4
  br i1 %i.y, label %switch.lookup, label %bb.d

switch.lookup:                                    ; preds = %bb.c
  %i.z = zext nneg i8 %i.x to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.z
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !200
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !200
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %switch.lookup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %i.t
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, float noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10, float noundef %11, ptr nofree noundef writeonly captures(none) initializes((0, 16)) %12, ptr nofree noundef writeonly captures(address_is_null) %13, ptr nofree noundef writeonly captures(none) %14) #11 align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 9 uses
  %i.b = alloca [4 x float], align 16             ; 9 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %15 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 16 uses
  %16 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  %17 = alloca %"class.OpenImageIO::v3_1::simd::vfloat4", align 16 ; 12 uses
  store <4 x float> zeroinitializer, ptr %12, align 16, !tbaa !83
  %.not = icmp eq ptr %13, null                   ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store <4 x float> zeroinitializer, ptr %13, align 16, !tbaa !83
  store <4 x float> zeroinitializer, ptr %14, align 16, !tbaa !83
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.e = load float, ptr %i.d, align 8, !tbaa !261 ; 4 uses
  %i.f = fcmp oge float %i.e, 0.000000e+00
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load i32, ptr %i.g, align 8
  %i.i = trunc i32 %i.h to i1
  %i.j = select i1 %i.f, i1 %i.i, i1 false
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.l = load <2 x float>, ptr %i.k, align 4, !tbaa !75 ; 2 uses
  %i.m = insertelement <2 x float> poison, float %10, i64 0
  %i.n = insertelement <2 x float> %i.m, float %8, i64 1
  %i.o = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = fmul <2 x float> %i.n, %i.o              ; 5 uses
  %i.q = insertelement <2 x float> poison, float %11, i64 0
  %i.r = insertelement <2 x float> %i.q, float %9, i64 1
  %i.s = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 5 uses
  %i.u = fmul <2 x float> %i.t, %i.t
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.p, <2 x float> %i.u) ; 3 uses
  %i.w = fcmp olt <2 x float> %i.v, splat (float 1.000000e-16) ; 3 uses
  %i.x = extractelement <2 x i1> %i.w, i64 1
  br i1 %i.x, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.y = extractelement <2 x i1> %i.w, i64 0
  br i1 %i.y, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = extractelement <2 x float> %i.v, i64 0
  %i.aa = tail call float @llvm.sqrt.f32(float %i.z)
  %i.ab = fdiv float f0x322BCC77, %i.aa           ; 2 uses
  %i.ac = extractelement <2 x float> %i.t, i64 0  ; 2 uses
  %i.ad = fmul float %i.ac, %i.ab
  %i.ae = extractelement <2 x float> %i.p, i64 0  ; 2 uses
  %i.af = fneg float %i.ae
  %i.ag = fmul float %i.ab, %i.af
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.f:                                             ; preds = %bb.c
  %i.ah = extractelement <2 x i1> %i.w, i64 0
  %i.ai = extractelement <2 x float> %i.p, i64 0
  %i.aj = extractelement <2 x float> %i.p, i64 1  ; 3 uses
  %i.ak = extractelement <2 x float> %i.t, i64 0
  %i.al = extractelement <2 x float> %i.t, i64 1  ; 3 uses
  br i1 %i.ah, label %bb.g, label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

bb.g:                                             ; preds = %bb.f
  %i.am = extractelement <2 x float> %i.v, i64 1
  %i.an = tail call float @llvm.sqrt.f32(float %i.am)
  %i.ao = fdiv float f0x322BCC77, %i.an           ; 2 uses
  %i.ap = fneg float %i.al
  %i.aq = fmul float %i.ao, %i.ap
  %i.ar = fmul float %i.aj, %i.ao
  br label %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit

_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit: ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %.0122 = phi float [ %i.ak, %bb.f ], [ %i.ac, %bb.e ], [ %i.ar, %bb.g ], [ f0x322BCC77, %bb.d ]
  %.0121 = phi float [ %i.ai, %bb.f ], [ %i.ae, %bb.e ], [ %i.aq, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0120 = phi float [ %i.al, %bb.f ], [ %i.ag, %bb.e ], [ %i.al, %bb.g ], [ 0.000000e+00, %bb.d ]
  %.0119 = phi float [ %i.aj, %bb.f ], [ %i.ad, %bb.e ], [ %i.aj, %bb.g ], [ f0x322BCC77, %bb.d ]
  %i.as = tail call float @llvm.fabs.f32(float %.0119) ; 2 uses
  %i.at = tail call float @llvm.fabs.f32(float %.0121) ; 2 uses
  %i.au = fcmp olt float %i.as, %i.at
  %.sroa.speculated92 = select i1 %i.au, float %i.at, float %i.as ; 4 uses
  %i.av = tail call float @llvm.fabs.f32(float %.0120) ; 2 uses
  %i.aw = tail call float @llvm.fabs.f32(float %.0122) ; 2 uses
  %i.ax = fcmp olt float %i.av, %i.aw
  %.sroa.speculated = select i1 %i.ax, float %i.aw, float %i.av ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !259, !range !102, !noundef !103
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = fcmp olt float %.sroa.speculated92, %.sroa.speculated
  %i.bc = fcmp olt float %.sroa.speculated, %.sroa.speculated92
  %..i75.val = select i1 %i.bb, float %.sroa.speculated, float %.sroa.speculated92
  %..i76.val = select i1 %i.bc, float %.sroa.speculated, float %.sroa.speculated92
  %i.bd = select i1 %i.ba, float %..i75.val, float %..i76.val
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bg = load float, ptr %i.be, align 8, !tbaa !75 ; 2 uses
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !75 ; 2 uses
  %i.bi = fcmp olt float %i.bg, %i.bh
  %i.bj = select i1 %i.bi, float %i.bh, float %i.bg
  %i.bk = fadd float %i.bd, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !202
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bo = sext i32 %i.bm to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !203
  %i.bq = getelementptr inbounds nuw [128 x i8], ptr %i.bp, i64 %i.bo ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !342 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 100
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !343 ; 5 uses
  %i.bv = icmp slt i32 %i.bu, %i.bs
  br i1 %i.bv, label %.lr.ph.i, label %.loopexit.i.thread

.lr.ph.i:                                         ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !344
  %i.by = sext i32 %i.bu to i64
  br label %bb.h

bb.h:                                             ; preds = %.critedge.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.by, %.lr.ph.i ], [ %indvars.iv.next.i, %.critedge.i ] ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !55
  %i.cb = sitofp i32 %i.ca to float
  %i.cc = fmul float %i.bk, %i.cb                 ; 2 uses
  %i.cd = fcmp ugt float %i.cc, 1.000000e+00
  br i1 %i.cd, label %.critedge.i, label %.loopexit.i

.critedge.i:                                      ; preds = %bb.h
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.bs, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit.i.thread, label %bb.h, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.h
  %i.ce = trunc nsw i64 %indvars.iv.i to i32      ; 6 uses
  %i.cf = add nsw i32 %i.ce, -1                   ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cc, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv.i = fcmp oge float %i.cg, 0.000000e+00
  %.0.i77.i = select i1 %.inv.i, float %i.cg, float 0.000000e+00 ; 2 uses
  %i.ch = fcmp ogt float %.0.i77.i, 1.000000e+00
  %.1.i78.i = select i1 %i.ch, float 1.000000e+00, float %.0.i77.i ; 5 uses
  %i.ci = fsub float 1.000000e+00, %.1.i78.i      ; 2 uses
  %i.cj = icmp slt i64 %indvars.iv.i, 0
  br i1 %i.cj, label %.loopexit.i.thread, label %bb.i

.loopexit.i.thread:                               ; preds = %.critedge.i, %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %.loopexit.i
  %i.ck = add nsw i32 %i.bs, -1                   ; 2 uses
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.i:                                             ; preds = %.loopexit.i
  %.not174 = icmp slt i32 %i.bu, %i.ce
  br i1 %.not174, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 19
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !198
  switch i8 %i.cm, label %bb.l [
    i8 1, label %bb.k
    i8 2, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  ]

bb.k:                                             ; preds = %bb.j, %bb.i
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.l:                                             ; preds = %bb.j
  br i1 %i.j, label %bb.m, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

bb.m:                                             ; preds = %bb.l
  %i.cn = fcmp ult float %i.e, %.1.i78.i          ; 2 uses
  %i.co = fdiv float %i.e, %.1.i78.i
  %i.cp = fsub float %i.e, %.1.i78.i
  %i.cq = fdiv float %i.cp, %i.ci
  %.sroa.11.1 = select i1 %i.cn, i32 %i.ce, i32 %i.cf ; 2 uses
  %.sink109.i = select i1 %i.cn, float %i.co, float %i.cq ; 2 uses
  %.inv91.i = fcmp oge float %.sink109.i, 0.000000e+00
  %.0.i.i = select i1 %.inv91.i, float %.sink109.i, float 0.000000e+00 ; 2 uses
  %i.cr = fcmp ogt float %.0.i.i, 1.000000e+00
  %.1.i.i = select i1 %i.cr, float 1.000000e+00, float %.0.i.i
  store float %.1.i.i, ptr %i.d, align 8, !tbaa !261
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit: ; preds = %bb.k, %bb.j, %.loopexit.i.thread, %bb.l, %bb.m
  %.sroa.9.1 = phi float [ 0.000000e+00, %.loopexit.i.thread ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.m ], [ %.1.i78.i, %bb.l ] ; 4 uses
  %.sroa.0102.1 = phi float [ 1.000000e+00, %.loopexit.i.thread ], [ 1.000000e+00, %bb.j ], [ 1.000000e+00, %bb.k ], [ 1.000000e+00, %bb.m ], [ %i.ci, %bb.l ] ; 3 uses
  %.sroa.10.2 = phi i32 [ %i.ck, %.loopexit.i.thread ], [ %i.ce, %bb.j ], [ %i.bu, %bb.k ], [ %.sroa.11.1, %bb.m ], [ %i.ce, %bb.l ] ; 2 uses
  %.sroa.0107.2 = phi i32 [ %i.ck, %.loopexit.i.thread ], [ %i.ce, %bb.j ], [ %i.bu, %bb.k ], [ %.sroa.11.1, %bb.m ], [ %i.cf, %bb.l ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 4, !tbaa !257
  %i.cu = zext i8 %i.ct to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_E16sample_functions, i64 %i.cu
  %.unpack = load i64, ptr %i.cv, align 16, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store float %6, ptr %i.a, align 16, !tbaa !75
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <2 x float> zeroinitializer, ptr %i.cw, align 4, !tbaa !75
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 0.000000e+00, ptr %i.cx, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store float %7, ptr %i.b, align 16, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store <2 x float> zeroinitializer, ptr %i.cy, align 4, !tbaa !75
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float 0.000000e+00, ptr %i.cz, align 4, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.c, ptr noundef nonnull align 16 dereferenceable(16) @__const._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_.weight, i64 16, i1 false)
  %i.da = inttoptr i64 %.unpack to ptr            ; 4 uses
  %i.db = fcmp une float %.sroa.0102.1, 0.000000e+00 ; 2 uses
  br i1 %.not, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.db, label %bb.p, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit
  br i1 %i.db, label %bb.n, label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.dc = call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0107.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.dd = zext i1 %i.dc to i8
  %i.de = insertelement <4 x float> poison, float %.sroa.0102.1, i64 0
  %i.df = shufflevector <4 x float> %i.de, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dg = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.dh = fmul <4 x float> %i.df, %i.dg
  %i.di = fadd <4 x float> %i.dh, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1: ; preds = %bb.n, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader
  %.sroa.088.1.us = phi <4 x float> [ %i.di, %bb.n ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.158.us = phi i8 [ %i.dd, %bb.n ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %.1.us = phi i64 [ 1, %bb.n ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.preheader ] ; 2 uses
  %i.dj = fcmp une float %.sroa.9.1, 0.000000e+00
  br i1 %i.dj, label %bb.o, label %.split.us.thread

bb.o:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.dk = call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef null, ptr noundef null)
  %i.dl = icmp ne i8 %.158.us, 0
  %i.dm = and i1 %i.dk, %i.dl
  %i.dn = zext i1 %i.dm to i8
  %i.do = add nuw nsw i64 %.1.us, 1
  %i.dp = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dr = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.ds = fmul <4 x float> %i.dq, %i.dr
  %i.dt = fadd <4 x float> %.sroa.088.1.us, %i.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %.split.us.thread

.split.us.thread:                                 ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1, %bb.o
  %.us-phi.ph = phi <4 x float> [ %.sroa.088.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dt, %bb.o ]
  %.us-phi138.ph = phi i8 [ %.158.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.dn, %bb.o ]
  %.us-phi139.ph = phi i64 [ %.1.us, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.us.1 ], [ %i.do, %bb.o ]
  store <4 x float> %.us-phi.ph, ptr %12, align 16, !tbaa !83
  br label %bb.s

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.du = call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0107.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %i.dv = zext i1 %i.du to i8
  %i.dw = insertelement <4 x float> poison, float %.sroa.0102.1, i64 0
  %i.dx = shufflevector <4 x float> %i.dw, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.dy = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.dz = fmul <4 x float> %i.dx, %i.dy
  %i.ea = fadd <4 x float> %i.dz, zeroinitializer
  %i.eb = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.ec = fmul <4 x float> %i.dx, %i.eb
  %i.ed = fadd <4 x float> %i.ec, zeroinitializer
  %i.ee = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.ef = fmul <4 x float> %i.dx, %i.ee
  %i.eg = fadd <4 x float> %i.ef, zeroinitializer
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1

_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader, %bb.p
  %.sroa.088.1 = phi <4 x float> [ %i.ea, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.087.3 = phi <4 x float> [ %i.ed, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.sroa.086.3 = phi <4 x float> [ %i.eg, %bb.p ], [ zeroinitializer, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.158 = phi i8 [ %i.dv, %bb.p ], [ 1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %.1 = phi i64 [ 1, %bb.p ], [ 0, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.preheader ] ; 2 uses
  %i.eh = fcmp une float %.sroa.9.1, 0.000000e+00
  br i1 %i.eh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #3
  %i.ei = call noundef zeroext i1 %i.da(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %i.c, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17)
  %i.ej = icmp ne i8 %.158, 0
  %i.ek = and i1 %i.ei, %i.ej
  %i.el = zext i1 %i.ek to i8
  %i.em = add nuw nsw i64 %.1, 1
  %i.en = insertelement <4 x float> poison, float %.sroa.9.1, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.ep = load <4 x float>, ptr %15, align 16, !tbaa !83
  %i.eq = fmul <4 x float> %i.eo, %i.ep
  %i.er = fadd <4 x float> %.sroa.088.1, %i.eq
  %i.es = load <4 x float>, ptr %16, align 16, !tbaa !83
  %i.et = fmul <4 x float> %i.eo, %i.es
  %i.eu = fadd <4 x float> %.sroa.087.3, %i.et
  %i.ev = load <4 x float>, ptr %17, align 16, !tbaa !83
  %i.ew = fmul <4 x float> %i.eo, %i.ev
  %i.ex = fadd <4 x float> %.sroa.086.3, %i.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #3
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1
  %.sroa.088.1.1 = phi <4 x float> [ %i.er, %bb.q ], [ %.sroa.088.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.087.3.1 = phi <4 x float> [ %i.eu, %bb.q ], [ %.sroa.087.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.sroa.086.3.1 = phi <4 x float> [ %i.ex, %bb.q ], [ %.sroa.086.3, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.158.1 = phi i8 [ %i.el, %bb.q ], [ %.158, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  %.1.1 = phi i64 [ %i.em, %bb.q ], [ %.1, %_ZN11OpenImageIO4v3_117compute_miplevelsERNS0_14ImageCacheFileERNS0_13TextureOpt_v2EbffRfPiPf.exit.split.1 ]
  store <4 x float> %.sroa.088.1.1, ptr %12, align 16, !tbaa !83
  store <4 x float> %.sroa.087.3.1, ptr %13, align 16, !tbaa !83
  store <4 x float> %.sroa.086.3.1, ptr %14, align 16, !tbaa !83
  br label %bb.s

bb.s:                                             ; preds = %.split.us.thread, %bb.r
  %.us-phi139168 = phi i64 [ %.us-phi139.ph, %.split.us.thread ], [ %.1.1, %bb.r ] ; 2 uses
  %.us-phi138167 = phi i8 [ %.us-phi138.ph, %.split.us.thread ], [ %.158.1, %bb.r ]
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.ez = load <2 x i64>, ptr %i.ey, align 8, !tbaa !200
  %i.fa = insertelement <2 x i64> poison, i64 %.us-phi139168, i64 0
  %i.fb = shufflevector <2 x i64> %i.fa, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.fc = add nsw <2 x i64> %i.ez, %i.fb
  store <2 x i64> %i.fc, ptr %i.ey, align 8, !tbaa !200
  %i.fd = load i8, ptr %i.cs, align 4, !tbaa !257 ; 2 uses
  %i.fe = icmp ult i8 %i.fd, 4
  br i1 %i.fe, label %switch.lookup, label %bb.t

switch.lookup:                                    ; preds = %bb.s
  %i.ff = zext nneg i8 %i.fd to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZN11OpenImageIO4v3_117TextureSystemImpl31texture_lookup_trilinear_mipmapERNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiffffffPfS8_S8_, i64 %i.ff
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %2, i64 %switch.ext ; 2 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !200
  %i.fi = add nsw i64 %i.fh, %.us-phi139168
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !200
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %switch.lookup
  %i.fj = trunc nuw i8 %.us-phi138167 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i1 %i.fj
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #25

declare noundef i32 @_ZN11OpenImageIO4v3_114ImageCacheImpl18subimage_from_nameEPNS0_14ImageCacheFileENS0_7ustringE(ptr noundef nonnull align 64 dereferenceable(25240), ptr noundef, ptr) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK11OpenImageIO4v3_117TextureSystemImpl5errorIJNS0_7ustringES3_EEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.324", align 16 ; 7 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #3
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #3, !noalias !710
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3, !noalias !710
  %i.b = load ptr, ptr %2, align 8, !tbaa !201, !noalias !710 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !192, !noalias !710
  br label %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i

_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i: ; preds = %bb.b, %bb.a
  %.0.i.i.i.i.i.i = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  store ptr %i.b, ptr %4, align 16, !tbaa !83, !noalias !710
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.0.i.i.i.i.i.i, ptr %i.e, align 8, !tbaa !83, !noalias !710
  %i.f = load ptr, ptr %3, align 8, !tbaa !201, !noalias !710 ; 3 uses
  %.not.i.i.i.i.i3.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i3.i, label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !192, !noalias !710
  br label %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit

_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit: ; preds = %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i, %bb.c
  %.0.i.i.i.i.i4.i = phi i64 [ %i.h, %bb.c ], [ 0, %_ZN3fmt3v126detail5valueINS0_7contextEEC2IN11OpenImageIO4v3_17ustringEcTnNSt9enable_ifIXntsr3std10is_pointerIT_EE5valueEiE4typeELi0EEERKSA_.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.f, ptr %i.i, align 16, !tbaa !83, !noalias !710
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %.0.i.i.i.i.i4.i, ptr %i.j, align 8, !tbaa !83, !noalias !710
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 221, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3, !noalias !710
  %i.k = load ptr, ptr %6, align 8, !tbaa !82
  store ptr %i.k, ptr %5, align 8, !tbaa !129
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !131
  store i64 %i.n, ptr %i.l, align 8, !tbaa !130
  invoke void @_ZNK11OpenImageIO4v3_117TextureSystemImpl12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.o = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.r = load i64, ptr %i.p, align 8, !tbaa !83
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  ret void

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_7ustringES8_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.e
  %i.x = load i64, ptr %i.v, align 8, !tbaa !83
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #45
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #3
  resume { ptr, i32 } %i.t
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #25

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(400) %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(76) %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readonly captures(none) %10, ptr nofree noundef writeonly captures(none) %11, ptr nofree noundef writeonly captures(address_is_null) %12, ptr nofree noundef writeonly captures(none) %13) #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %14 = alloca %"struct.OpenImageIO::v3_1::TileID", align 8 ; 15 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !202  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.f = sext i32 %i.d to i64
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !203
  %i.h = getelementptr inbounds nuw [128 x i8], ptr %i.g, i64 %i.f ; 3 uses
  %i.i = sext i32 %4 to i64
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !263
  %i.k = getelementptr inbounds nuw [40 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !273  ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = select i1 %.not.i, ptr %i.n, ptr %i.l    ; 10 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !345
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = load i8, ptr %i.r, align 8, !tbaa !250
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.x = load i8, ptr %i.w, align 1, !tbaa !251
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14wrap_functionsE, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !97
  %i.ab = load i32, ptr %7, align 8, !tbaa !197   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 60
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !275 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ag = icmp sgt i32 %i.ad, %i.af               ; 2 uses
  %i.ah = add nsw i32 %i.ab, %9
  %spec.select = select i1 %i.ag, i32 %i.ab, i32 0 ; 2 uses
  %spec.select117 = select i1 %i.ag, i32 %i.ah, i32 %i.ad ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #3
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 68
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !252
  store i32 0, ptr %14, align 8, !tbaa !277
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.ak, align 4, !tbaa !278
  %i.al = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 0, ptr %i.al, align 8, !tbaa !279
end_hunk_0
