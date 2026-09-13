Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/environment?download=true
inline.NumInlined: 2631
inline.NumDeleted: 666
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
  %i.dc = fadd <2 x float> %4, %8                 ; 4 uses
  store <2 x float> %i.dc, ptr %18, align 8, !tbaa !136, !alias.scope !379
  %i.dd = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  store float %i.da, ptr %i.dd, align 8, !tbaa !376, !alias.scope !379
  %foldExtExtBinop535 = fmul <2 x float> %i.dc, %i.dc
  %i.de = extractelement <2 x float> %foldExtExtBinop535, i64 1
  %i.df = extractelement <2 x float> %i.dc, i64 0 ; 2 uses
  %i.dg = call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.de)
  %i.dh = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.da, float %i.dg) ; 2 uses
  %i.di = fcmp olt float %i.dh, f0x01000000
  br i1 %i.di, label %bb.u, label %bb.v, !prof !138

bb.u:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287
  %i.dj = call noundef float @_ZNK9Imath_3_14Vec3IfE10lengthTinyEv(ptr noundef nonnull align 4 dereferenceable(12) %18) #27
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288

bb.v:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit287
  %i.dk = call noundef float @llvm.sqrt.f32(float %i.dh)
  br label %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288

_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288:        ; preds = %bb.v, %bb.u
  %.0.i.i289 = phi float [ %i.dj, %bb.u ], [ %i.dk, %bb.v ] ; 3 uses
  %i.dl = fcmp une float %.0.i.i289, 0.000000e+00
  br i1 %i.dl, label %bb.w, label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290, !prof !377

bb.w:                                             ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288
  %i.dm = load <2 x float>, ptr %18, align 8, !tbaa !136
  %i.dn = insertelement <2 x float> poison, float %.0.i.i289, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x float> %i.dm, %i.do
  store <2 x float> %i.dp, ptr %18, align 8, !tbaa !136
  %i.dq = load float, ptr %i.dd, align 8, !tbaa !376
  %i.dr = fdiv float %i.dq, %.0.i.i289
  store float %i.dr, ptr %i.dd, align 8, !tbaa !376
  br label %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290

_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290:        ; preds = %_ZNK9Imath_3_14Vec3IfE6lengthEv.exit.i288, %bb.w
  %i.ds = load float, ptr %16, align 8, !tbaa !139 ; 2 uses
  %i.dt = load float, ptr %17, align 8, !tbaa !139 ; 2 uses
  %i.du = load float, ptr %i.bt, align 4, !tbaa !380 ; 2 uses
  %i.dv = load float, ptr %i.cj, align 4, !tbaa !380 ; 2 uses
  %i.dw = fmul float %i.du, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %i.ds, float %i.dt, float %i.dw)
  %i.dy = load float, ptr %i.bu, align 8, !tbaa !376 ; 2 uses
  %i.dz = load float, ptr %i.cl, align 8, !tbaa !376 ; 2 uses
  %i.ea = call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.dz, float %i.dx) ; 3 uses
  %i.eb = fcmp ugt float %i.ea, -1.000000e+00
  br i1 %i.eb, label %bb.x, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

bb.x:                                             ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290
  %i.ec = fcmp ult float %i.ea, 1.000000e+00
  br i1 %i.ec, label %bb.y, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

bb.y:                                             ; preds = %bb.x
  %i.ed = call noundef float @llvm.acos.f32(float %i.ea)
  br label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281

_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281: ; preds = %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290, %bb.x, %bb.y
  %.0.i280 = phi float [ %i.ed, %bb.y ], [ f0x40490FDB, %_ZN9Imath_3_14Vec3IfE9normalizeEv.exit290 ], [ 0.000000e+00, %bb.x ] ; 2 uses
  %i.ee = fcmp olt float %.0.i280, f0x322BCC77
  %.sroa.speculated335 = select i1 %i.ee, float f0x322BCC77, float %.0.i280 ; 3 uses
  %i.ef = load float, ptr %18, align 8, !tbaa !139 ; 2 uses
  %i.eg = load float, ptr %i.db, align 4, !tbaa !380 ; 2 uses
  %i.eh = fmul float %i.du, %i.eg
  %i.ei = call float @llvm.fmuladd.f32(float %i.ds, float %i.ef, float %i.eh)
  %i.ej = load float, ptr %i.dd, align 8, !tbaa !376 ; 2 uses
  %i.ek = call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.ej, float %i.ei) ; 3 uses
  %i.el = fcmp ugt float %i.ek, -1.000000e+00
  br i1 %i.el, label %bb.z, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281
  %i.em = fcmp ult float %i.ek, 1.000000e+00
  br i1 %i.em, label %bb.aa, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.en = call noundef float @llvm.acos.f32(float %i.ek)
  br label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit:    ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281, %bb.z, %bb.aa
  %.0.i = phi float [ %i.en, %bb.aa ], [ f0x40490FDB, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit281 ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.eo = fcmp olt float %.0.i, f0x322BCC77
  %.sroa.speculated327 = select i1 %i.eo, float f0x322BCC77, float %.0.i ; 3 uses
  %i.ep = fcmp olt float %.sroa.speculated327, %.sroa.speculated335
  %.sroa.speculated331 = select i1 %i.ep, float %.sroa.speculated327, float %.sroa.speculated335
  %i.eq = fdiv float f0x40490FDB, %.sroa.speculated331
  %i.er = fptosi float %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load <2 x float>, ptr %i.es, align 4, !tbaa !136
  %i.ev = load <2 x float>, ptr %i.et, align 8, !tbaa !136
  %i.ew = insertelement <2 x float> poison, float %.sroa.speculated335, i64 0
  %i.ex = insertelement <2 x float> %i.ew, float %.sroa.speculated327, i64 1
  %i.ey = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.eu, <2 x float> %i.ev) ; 4 uses
  %i.ez = extractelement <2 x float> %i.ey, i64 0
  %i.fa = extractelement <2 x float> %i.ey, i64 1
  %i.fb = fcmp ult float %i.ez, %i.fa
  %i.fc = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br i1 %i.fb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit, %bb.ab
  %.sroa.0325.0 = phi float [ %i.ef, %bb.ab ], [ %i.dt, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.5.0 = phi float [ %i.eg, %bb.ab ], [ %i.dv, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.8.0 = phi float [ %i.ej, %bb.ab ], [ %i.dz, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %i.fd = phi <2 x float> [ %i.ey, %bb.ab ], [ %i.fc, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ] ; 4 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.ff = load i8, ptr %i.fe, align 4, !tbaa !140
  switch i8 %i.ff, label %bb.ae [
    i8 0, label %bb.af
    i8 2, label %bb.ad
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.sink = phi i64 [ 312, %bb.ae ], [ 320, %bb.ad ], [ 304, %bb.ac ]
  %.sroa.0.0 = phi i64 [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ae ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ad ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_closestEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ac ]
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %3, i64 19 ; 2 uses
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !141 ; 2 uses
  %i.fj = and i8 %i.fi, -5
  %i.fk = icmp eq i8 %i.fj, 0
  br i1 %i.fk, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fl = extractelement <2 x float> %i.fd, i64 0 ; 4 uses
  %i.fm = extractelement <2 x float> %i.fd, i64 1 ; 2 uses
  %i.fn = fdiv float %i.fm, %i.fl                 ; 2 uses
  %.inv.i = fcmp oge float %i.fn, 1.000000e+00
  %.0.i.i294 = select i1 %.inv.i, float %i.fn, float 1.000000e+00 ; 2 uses
  %i.fo = fcmp ogt float %.0.i.i294, 1.000000e+06
  %.1.i.i = select i1 %i.fo, float 1.000000e+06, float %.0.i.i294 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !142
  %i.fr = uitofp i16 %i.fq to float               ; 5 uses
  %i.fs = fcmp ogt float %.1.i.i, %i.fr
  br i1 %i.fs, label %bb.ah, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !143, !range !126, !noundef !127
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %bb.ai, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.fw = call float @llvm.fmuladd.f32(float %i.fl, float %i.fr, float %i.fm)
  %i.fx = fmul float %i.fw, 5.000000e-01
  %i.fy = fdiv float %i.fx, %i.fr
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  %.0385 = phi float [ %i.fy, %bb.ai ], [ %i.fl, %bb.ag ], [ %i.fl, %bb.ah ]
  %.0.i295 = phi float [ %i.fr, %bb.ai ], [ %.1.i.i, %bb.ag ], [ %i.fr, %bb.ah ]
  %i.fz = getelementptr inbounds nuw i8, ptr %i.p, i64 296 ; 2 uses
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !382
  %i.gb = fcmp ogt float %.1.i.i, %i.ga
  br i1 %i.gb, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  store float %.1.i.i, ptr %i.fz, align 8, !tbaa !382
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.gc = fadd float %.0.i295, -2.500000e-01
  %i.gd = call float @llvm.ceil.f32(float %i.gc)
  %i.ge = fptosi float %i.gd to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.ge, i32 1) ; 2 uses
  %i.gf = uitofp nneg i32 %.sroa.speculated to float
  %i.gg = fdiv float 1.000000e+00, %i.gf
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !143, !range !126, !noundef !127
  %i.gj = trunc nuw i8 %i.gi to i1
  %i.gk = extractelement <2 x float> %i.fd, i64 0
  %i.gl = extractelement <2 x float> %i.fd, i64 1
  %i.gm = select i1 %i.gj, float %i.gl, float %i.gk
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0233 = phi float [ %.0385, %bb.ak ], [ %i.gm, %bb.al ]
  %.0232 = phi i32 [ %.sroa.speculated, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.0231 = phi float [ %i.gg, %bb.ak ], [ 1.000000e+00, %bb.al ] ; 4 uses
  %i.gn = load i32, ptr %i.aj, align 4, !tbaa !326
  %i.go = sext i32 %i.gn to i64
  %i.gp = load ptr, ptr %i.am, align 8, !tbaa !328
  %i.gq = getelementptr inbounds nuw [128 x i8], ptr %i.gp, i64 %i.go ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 100
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !383 ; 7 uses
  %i.gt = call float @llvm.fmuladd.f32(float %.0231, float 5.000000e-01, float -5.000000e-01)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 120 ; 3 uses
  %22 = sdiv i32 %i.er, 2                         ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.p, i64 312 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.p, i64 320 ; 4 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.not274 = icmp eq ptr %spec.select279, null    ; 4 uses
  %. = select i1 %.not274, ptr null, ptr %20      ; 2 uses
  %i.hf = select i1 %.not274, ptr null, ptr %21   ; 2 uses
  %i.hg = icmp slt i32 %10, 1                     ; 2 uses
  %i.hh = icmp ne i8 %i.fi, 1                     ; 3 uses
  %i.hi = sext i32 %i.gs to i64
  %wide.trip.count = zext i32 %10 to i64          ; 14 uses
  %brmerge = or i1 %.not274, %i.hg
  %wide.trip.count438 = zext nneg i32 %10 to i64
  %wide.trip.count.1 = zext nneg i32 %10 to i64
  %brmerge.1 = or i1 %.not274, %i.hg
  %wide.trip.count438.1 = zext nneg i32 %10 to i64
  %i.hj = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %spec.select279, i64 %i.hj ; 2 uses
  %scevgep482 = getelementptr i8, ptr %spec.select278, i64 %i.hj ; 2 uses
  %min.iters.check519 = icmp ult i32 %10, 8
  %n.vec521 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n530 = icmp eq i64 %n.vec521, %wide.trip.count
  %min.iters.check505 = icmp ult i32 %10, 4
  %bound0501 = icmp ult ptr %spec.select279, %scevgep482
  %bound1502 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict503 = and i1 %bound0501, %bound1502
  %n.vec507 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n516 = icmp eq i64 %n.vec507, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hk = add nsw i64 %wide.trip.count, -1
  %min.iters.check487 = icmp ult i32 %10, 8
  %n.vec489 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n498 = icmp eq i64 %n.vec489, %wide.trip.count
  %min.iters.check = icmp ult i32 %10, 4
  %bound0 = icmp ult ptr %spec.select279, %scevgep482
  %bound1 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter546 = and i64 %wide.trip.count, 1
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  %i.hl = add nsw i64 %wide.trip.count, -1
  br label %bb.ao

bb.an:                                            ; preds = %bb.br
  %i.hm = zext nneg i32 %.0232 to i64
  %i.hn = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  %i.ho = load <2 x i64>, ptr %i.hn, align 8, !tbaa !75
  %i.hp = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.hm, i64 1
  %i.hq = add nsw <2 x i64> %i.ho, %i.hp
  store <2 x i64> %i.hq, ptr %i.hn, align 8, !tbaa !75
  %i.hr = icmp slt i32 %spec.select.i, %10
  br i1 %i.hr, label %bb.bs, label %bb.bv

bb.ao:                                            ; preds = %bb.am, %bb.br
  %.0226419 = phi i32 [ 0, %bb.am ], [ %i.pu, %bb.br ]
  %.0227418 = phi float [ %i.gt, %bb.am ], [ %i.pv, %bb.br ] ; 4 uses
  %.0228417 = phi i8 [ 1, %bb.am ], [ %.2230.1, %bb.br ] ; 2 uses
  %.sroa.0.1416 = phi i64 [ %.sroa.0.0, %bb.am ], [ %.sroa.0.4.1, %bb.br ] ; 2 uses
  %i.hs = fmul float %.sroa.0325.0, %.0227418
  %i.ht = fmul float %.sroa.5.0, %.0227418
  %i.hu = fmul float %.sroa.8.0, %.0227418
  %i.hv = load float, ptr %16, align 8, !tbaa !139, !noalias !384
  %i.hw = fadd float %i.hs, %i.hv                 ; 3 uses
  %i.hx = load float, ptr %i.bt, align 4, !tbaa !380, !noalias !384
  %i.hy = fadd float %i.ht, %i.hx                 ; 3 uses
  %i.hz = load float, ptr %i.bu, align 8, !tbaa !376, !noalias !384
  %i.ia = fadd float %i.hu, %i.hz                 ; 3 uses
  %i.ib = load i8, ptr %i.gu, align 4, !tbaa !385, !range !126, !noundef !127
  %i.ic = trunc nuw i8 %i.ib to i1
  br i1 %i.ic, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.id = fneg float %i.hw                        ; 2 uses
  %i.ie = call float @llvm.atan2.f32(float %i.id, float %i.ia)
  %i.if = call float @hypotf(float noundef %i.ia, float noundef %i.id) #28
  %i.ig = call float @llvm.atan2.f32(float %i.hy, float %i.if)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ih = call float @llvm.atan2.f32(float %i.hy, float %i.hw)
  %i.ii = call float @hypotf(float noundef %i.hw, float noundef %i.hy) #28
  %i.ij = call float @llvm.atan2.f32(float %i.ia, float %i.ii)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit: ; preds = %bb.aq, %bb.ap
  %.0383.in.in = phi float [ %i.ie, %bb.ap ], [ %i.ih, %bb.aq ]
  %.pn.in.i = phi float [ %i.ig, %bb.ap ], [ %i.ij, %bb.aq ]
  %.0383.in = fdiv float %.0383.in.in, f0x40C90FDB
  %.0383 = fadd float %.0383.in, 5.000000e-01     ; 2 uses
  %.pn.i = fdiv float %.pn.in.i, f0x40490FDB
  %storemerge.i = fsub float 5.000000e-01, %.pn.i ; 2 uses
  %.inv = fcmp ord float %.0383, 0.000000e+00
  %.1384 = select i1 %.inv, float %.0383, float 0.000000e+00 ; 2 uses
  %.inv393 = fcmp ord float %storemerge.i, 0.000000e+00
  %.0382 = select i1 %.inv393, float %storemerge.i, float 0.000000e+00 ; 2 uses
  %i.ik = load ptr, ptr %i.gv, align 8, !tbaa !386
  %i.il = load ptr, ptr %i.gq, align 8, !tbaa !387 ; 3 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %i.ip = sdiv exact i64 %i.io, 40
  %i.iq = trunc i64 %i.ip to i32                  ; 3 uses
  %i.ir = icmp slt i32 %i.gs, %i.iq
  br i1 %i.ir, label %.lr.ph406, label %.loopexit395.thread

.lr.ph406:                                        ; preds = %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit
  %i.is = load ptr, ptr %i.gw, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph406, %bb.as
  %indvars.iv = phi i64 [ %i.hi, %.lr.ph406 ], [ %indvars.iv.next, %bb.as ] ; 4 uses
  %i.it = getelementptr inbounds nuw [40 x i8], ptr %i.il, i64 %indvars.iv
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !397 ; 2 uses
  %.not.i297 = icmp eq ptr %i.iu, null
  %i.iv = select i1 %.not.i297, ptr %i.is, ptr %i.iu
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 40
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !399
  %i.iy = sitofp i32 %i.ix to float
  %i.iz = fmul float %.0233, %i.iy
  %i.ja = fpext float %i.iz to double
  %i.jb = fmul double %i.ja, f0x3FD45F306DC9C883  ; 2 uses
  %i.jc = fcmp ugt double %i.jb, f0x3FF0000010000000
  br i1 %i.jc, label %bb.as, label %.loopexit395

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.iq
  br i1 %exitcond.not, label %.loopexit395.thread, label %bb.ar, !llvm.loop !309

.loopexit395:                                     ; preds = %bb.ar
  %i.jd = icmp slt i64 %indvars.iv, 0
  br i1 %i.jd, label %.loopexit395.thread, label %bb.at

.loopexit395.thread:                              ; preds = %bb.as, %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit, %.loopexit395
  %i.je = add nsw i32 %i.iq, -1                   ; 2 uses
  br label %bb.av

bb.at:                                            ; preds = %.loopexit395
  %i.jf = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.jg = fptrunc double %i.jb to float
  %i.jh = call float @llvm.fmuladd.f32(float %i.jg, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv394 = fcmp oge float %i.jh, 0.000000e+00
  %.0.i282 = select i1 %.inv394, float %i.jh, float 0.000000e+00 ; 2 uses
  %i.ji = fcmp ogt float %.0.i282, 1.000000e+00
  %.1.i283 = select i1 %i.ji, float 1.000000e+00, float %.0.i282
  %i.jj = add nsw i32 %i.jf, -1
  %.not479 = icmp slt i32 %i.gs, %i.jf
  br i1 %.not479, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %.loopexit395.thread
  %.sroa.10.1 = phi i32 [ %i.je, %.loopexit395.thread ], [ %i.gs, %bb.au ], [ %i.jf, %bb.at ]
  %.sroa.0443.1 = phi i32 [ %i.je, %.loopexit395.thread ], [ %i.gs, %bb.au ], [ %i.jj, %bb.at ] ; 2 uses
  %.3 = phi float [ 0.000000e+00, %.loopexit395.thread ], [ 0.000000e+00, %bb.au ], [ %.1.i283, %bb.at ]
  %i.jk = load i8, ptr %i.fh, align 1, !tbaa !141
  %i.jl = icmp eq i8 %i.jk, 2                     ; 3 uses
  %brmerge478 = or i1 %i.jl, %i.hh
  %.sroa.0443.1.mux = select i1 %i.hh, i32 %.sroa.10.1, i32 %i.gs
  %.sroa.10.2 = select i1 %i.jl, i32 %.sroa.0443.1, i32 %.sroa.0443.1.mux ; 3 uses
  %.sroa.0443.2 = select i1 %brmerge478, i32 %.sroa.0443.1, i32 %i.gs ; 3 uses
  %i.jm = xor i1 %i.jl, true
  %i.jn = and i1 %i.hh, %i.jm
  %.4 = select i1 %i.jn, float %.3, float 0.000000e+00 ; 3 uses
  %i.jo = fsub float 1.000000e+00, %.4            ; 2 uses
  %i.jp = fcmp une float %i.jo, 0.000000e+00
  br i1 %i.jp, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.jq = load i8, ptr %i.fe, align 4, !tbaa !140
  %i.jr = icmp eq i8 %i.jq, 3
  br i1 %i.jr, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.js = icmp eq i32 %.sroa.0443.2, 0
  br i1 %i.js, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jt = sext i32 %.sroa.0443.2 to i64
  %i.ju = getelementptr inbounds nuw [40 x i8], ptr %i.il, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !397 ; 2 uses
  %.not.i298 = icmp eq ptr %i.jv, null
  %i.jw = load ptr, ptr %i.gw, align 8
  %i.jx = select i1 %.not.i298, ptr %i.jw, ptr %i.jv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 40
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !399
  %i.ka = icmp slt i32 %i.jz, %22
  br i1 %i.ka, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kb = load i64, ptr %i.gy, align 8, !tbaa !400
  %i.kc = add nsw i64 %i.kb, 1
end_hunk_0
