inline.NumInlined: 2631
inline.NumDeleted: 666
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_13TextureOpt_v2ENS0_9Vec3ParamIfEESA_SA_iPfSB_SB_:bb.a
  %i.el = fcmp ugt float %i.ek, -1.000000e+00
  br i1 %i.el, label %bb.z, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit286
  %i.em = fcmp ult float %i.ek, 1.000000e+00
  br i1 %i.em, label %bb.aa, label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

bb.aa:                                            ; preds = %bb.z
  %i.en = call noundef float @llvm.acos.f32(float %i.ek)
  br label %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit

_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit:    ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit286, %bb.z, %bb.aa
  %.0.i = phi float [ %i.en, %bb.aa ], [ f0x40490FDB, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit286 ], [ 0.000000e+00, %bb.z ] ; 2 uses
  %i.eo = fcmp olt float %.0.i, f0x322BCC77
  %.sroa.speculated332 = select i1 %i.eo, float f0x322BCC77, float %.0.i ; 3 uses
  %i.ep = fcmp olt float %.sroa.speculated332, %.sroa.speculated340
  %.sroa.speculated336 = select i1 %i.ep, float %.sroa.speculated332, float %.sroa.speculated340
  %i.eq = fdiv float f0x40490FDB, %.sroa.speculated336
  %i.er = fptosi float %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.et = load float, ptr %i.es, align 4, !tbaa !165
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ev = load float, ptr %i.eu, align 8, !tbaa !166
  %i.ew = call float @llvm.fmuladd.f32(float %.sroa.speculated340, float %i.et, float %i.ev) ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ey = load float, ptr %i.ex, align 8, !tbaa !167
  %i.ez = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !168
  %i.fb = call float @llvm.fmuladd.f32(float %.sroa.speculated332, float %i.ey, float %i.fa) ; 3 uses
  %i.fc = fcmp ult float %i.ew, %i.fb
  br i1 %i.fc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit, %bb.ab
  %.sroa.0330.0 = phi float [ %i.ef, %bb.ab ], [ %i.dt, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.5.0 = phi float [ %i.eg, %bb.ab ], [ %i.dv, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %.sroa.8.0 = phi float [ %i.ej, %bb.ab ], [ %i.dz, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ]
  %storemerge272 = phi float [ %i.fb, %bb.ab ], [ %i.ew, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ] ; 3 uses
  %storemerge = phi float [ %i.ew, %bb.ab ], [ %i.fb, %_ZN11OpenImageIO4v3_19safe_acosIfEET_S2_.exit ] ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  %i.fe = load i8, ptr %i.fd, align 4, !tbaa !169
  switch i8 %i.fe, label %bb.ae [
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
  %i.ff = getelementptr inbounds nuw i8, ptr %i.p, i64 %.sink ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %3, i64 19 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !170 ; 2 uses
  %i.fi = and i8 %i.fh, -5
  %i.fj = icmp eq i8 %i.fi, 0
  br i1 %i.fj, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %i.fk = fdiv float %storemerge272, %storemerge  ; 2 uses
  %.inv.i = fcmp oge float %i.fk, 1.000000e+00
  %.0.i.i299 = select i1 %.inv.i, float %i.fk, float 1.000000e+00 ; 2 uses
  %i.fl = fcmp ogt float %.0.i.i299, 1.000000e+06
  %.1.i.i = select i1 %i.fl, float 1.000000e+06, float %.0.i.i299 ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !171
  %i.fo = uitofp i16 %i.fn to float               ; 5 uses
  %i.fp = fcmp ogt float %.1.i.i, %i.fo
  br i1 %i.fp, label %bb.ah, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ah:                                            ; preds = %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !172, !range !92, !noundef !93
  %i.fs = trunc nuw i8 %i.fr to i1
  br i1 %i.fs, label %bb.ai, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.ft = call float @llvm.fmuladd.f32(float %storemerge, float %i.fo, float %storemerge272)
  %i.fu = fmul float %i.ft, 5.000000e-01
  %i.fv = fdiv float %i.fu, %i.fo
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit: ; preds = %bb.ah, %bb.ag, %bb.ai
  %.0389 = phi float [ %i.fv, %bb.ai ], [ %storemerge, %bb.ag ], [ %storemerge, %bb.ah ]
  %.0.i300 = phi float [ %i.fo, %bb.ai ], [ %.1.i.i, %bb.ag ], [ %i.fo, %bb.ah ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.p, i64 296 ; 2 uses
  %i.fx = load float, ptr %i.fw, align 8, !tbaa !173
  %i.fy = fcmp ogt float %.1.i.i, %i.fx
  br i1 %i.fy, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  store float %.1.i.i, ptr %i.fw, align 8, !tbaa !173
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %_ZN11OpenImageIO4v3_117TextureSystemImpl18anisotropic_aspectERfS2_RNS0_13TextureOpt_v2ES2_.exit
  %i.fz = fadd float %.0.i300, -2.500000e-01
  %i.ga = call float @llvm.ceil.f32(float %i.fz)
  %i.gb = fptosi float %i.ga to i32
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.gb, i32 1) ; 2 uses
  %i.gc = uitofp nneg i32 %.sroa.speculated to float
  %i.gd = fdiv float 1.000000e+00, %i.gc
  br label %bb.am

bb.al:                                            ; preds = %bb.af
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 21
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !172, !range !92, !noundef !93
  %i.gg = trunc nuw i8 %i.gf to i1
  %i.gh = select i1 %i.gg, float %storemerge272, float %storemerge
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0252 = phi float [ %.0389, %bb.ak ], [ %i.gh, %bb.al ]
  %.0251 = phi i32 [ %.sroa.speculated, %bb.ak ], [ 1, %bb.al ] ; 2 uses
  %.0250 = phi float [ %i.gd, %bb.ak ], [ 1.000000e+00, %bb.al ] ; 4 uses
  %i.gi = load i32, ptr %i.aj, align 4, !tbaa !97
  %i.gj = sext i32 %i.gi to i64
  %i.gk = load ptr, ptr %i.am, align 8, !tbaa !100
  %i.gl = getelementptr inbounds nuw [128 x i8], ptr %i.gk, i64 %i.gj ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 100
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !175 ; 7 uses
  %i.go = call float @llvm.fmuladd.f32(float %.0250, float 5.000000e-01, float -5.000000e-01)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.q, i64 164
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gl, i64 120 ; 3 uses
  %i.gs = sdiv i32 %i.er, 2                       ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.p, i64 312 ; 4 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.p, i64 320 ; 4 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 2 uses
  %.not274 = icmp eq ptr %spec.select279, null    ; 4 uses
  %. = select i1 %.not274, ptr null, ptr %20      ; 2 uses
  %i.hb = select i1 %.not274, ptr null, ptr %21   ; 2 uses
  %i.hc = icmp slt i32 %10, 1                     ; 2 uses
  %i.hd = icmp ne i8 %i.fh, 1                     ; 3 uses
  %i.he = sext i32 %i.gn to i64
  %wide.trip.count = zext i32 %10 to i64          ; 14 uses
  %brmerge = or i1 %.not274, %i.hc
  %wide.trip.count442 = zext nneg i32 %10 to i64
  %wide.trip.count.1 = zext nneg i32 %10 to i64
  %brmerge.1 = or i1 %.not274, %i.hc
  %wide.trip.count442.1 = zext nneg i32 %10 to i64
  %i.hf = shl nuw nsw i64 %wide.trip.count, 2     ; 2 uses
  %scevgep = getelementptr i8, ptr %spec.select279, i64 %i.hf ; 2 uses
  %scevgep487 = getelementptr i8, ptr %spec.select278, i64 %i.hf ; 2 uses
  %min.iters.check526 = icmp ult i32 %10, 8
  %n.vec529 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n538 = icmp eq i64 %n.vec529, %wide.trip.count
  %min.iters.check511 = icmp ult i32 %10, 4
  %bound0507 = icmp ult ptr %spec.select279, %scevgep487
  %bound1508 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict509 = and i1 %bound0507, %bound1508
  %n.vec514 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n523 = icmp eq i64 %n.vec514, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.hg = add nsw i64 %wide.trip.count, -1
  %min.iters.check492 = icmp ult i32 %10, 8
  %n.vec495 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n504 = icmp eq i64 %n.vec495, %wide.trip.count
  %min.iters.check = icmp ult i32 %10, 4
  %bound0 = icmp ult ptr %spec.select279, %scevgep487
  %bound1 = icmp ult ptr %spec.select278, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter554 = and i64 %wide.trip.count, 1
  %lcmp.mod555.not = icmp eq i64 %xtraiter554, 0
  %i.hh = add nsw i64 %wide.trip.count, -1
  br label %bb.ao

bb.an:                                            ; preds = %bb.br
  %i.hi = zext nneg i32 %.0251 to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %i.p, i64 280 ; 2 uses
  %i.hk = load <2 x i64>, ptr %i.hj, align 8, !tbaa !40
  %i.hl = insertelement <2 x i64> <i64 1, i64 poison>, i64 %i.hi, i64 1
  %i.hm = add nsw <2 x i64> %i.hk, %i.hl
  store <2 x i64> %i.hm, ptr %i.hj, align 8, !tbaa !40
  %i.hn = icmp slt i32 %spec.select.i, %10
  %i.ho = load i32, ptr %3, align 8
  %i.hp = icmp eq i32 %i.ho, 0
  %or.cond281 = select i1 %i.hn, i1 %i.hp, i1 false
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.hr = load i8, ptr %i.hq, align 1, !range !92
  %i.hs = trunc nuw i8 %i.hr to i1
  %or.cond284 = select i1 %or.cond281, i1 %i.hs, i1 false
  br i1 %or.cond284, label %bb.bs, label %bb.bt

bb.ao:                                            ; preds = %bb.am, %bb.br
  %.0241423 = phi i32 [ 0, %bb.am ], [ %i.pr, %bb.br ]
  %.0242422 = phi float [ %i.go, %bb.am ], [ %i.ps, %bb.br ] ; 4 uses
  %.0243421 = phi i8 [ 1, %bb.am ], [ %.2245.1, %bb.br ] ; 2 uses
  %.sroa.0.1420 = phi i64 [ %.sroa.0.0, %bb.am ], [ %.sroa.0.4.1, %bb.br ] ; 2 uses
  %i.ht = fmul float %.sroa.0330.0, %.0242422
  %i.hu = fmul float %.sroa.5.0, %.0242422
  %i.hv = fmul float %.sroa.8.0, %.0242422
  %i.hw = load float, ptr %16, align 8, !tbaa !163, !noalias !176
  %i.hx = fadd float %i.ht, %i.hw                 ; 3 uses
  %i.hy = load float, ptr %i.bt, align 4, !tbaa !164, !noalias !176
  %i.hz = fadd float %i.hu, %i.hy                 ; 3 uses
  %i.ia = load float, ptr %i.bu, align 8, !tbaa !153, !noalias !176
  %i.ib = fadd float %i.hv, %i.ia                 ; 3 uses
  %i.ic = load i8, ptr %i.gp, align 4, !tbaa !179, !range !92, !noundef !93
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ie = fneg float %i.hx                        ; 2 uses
  %i.if = call float @llvm.atan2.f32(float %i.ie, float %i.ib)
  %i.ig = call float @hypotf(float noundef %i.ib, float noundef %i.ie) #28
  %i.ih = call float @llvm.atan2.f32(float %i.hz, float %i.ig)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

bb.aq:                                            ; preds = %bb.ao
  %i.ii = call float @llvm.atan2.f32(float %i.hz, float %i.hx)
  %i.ij = call float @hypotf(float noundef %i.hx, float noundef %i.hz) #28
  %i.ik = call float @llvm.atan2.f32(float %i.ib, float %i.ij)
  br label %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit

_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit: ; preds = %bb.aq, %bb.ap
  %.0388.in.in = phi float [ %i.if, %bb.ap ], [ %i.ii, %bb.aq ]
  %.pn.in.i = phi float [ %i.ih, %bb.ap ], [ %i.ik, %bb.aq ]
  %.0388.in = fdiv float %.0388.in.in, f0x40C90FDB
  %.0388 = fadd float %.0388.in, 5.000000e-01     ; 2 uses
  %.pn.i = fdiv float %.pn.in.i, f0x40490FDB
  %storemerge.i = fsub float 5.000000e-01, %.pn.i ; 2 uses
  %.inv = fcmp ord float %.0388, 0.000000e+00
  %.1 = select i1 %.inv, float %.0388, float 0.000000e+00 ; 2 uses
  %.inv397 = fcmp ord float %storemerge.i, 0.000000e+00
  %.0387 = select i1 %.inv397, float %storemerge.i, float 0.000000e+00 ; 2 uses
  %i.il = load ptr, ptr %i.gq, align 8, !tbaa !180
  %i.im = load ptr, ptr %i.gl, align 8, !tbaa !181 ; 3 uses
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = sub i64 %i.in, %i.io
  %i.iq = sdiv exact i64 %i.ip, 40
  %i.ir = trunc i64 %i.iq to i32                  ; 3 uses
  %i.is = icmp slt i32 %i.gn, %i.ir
  br i1 %i.is, label %.lr.ph410, label %.loopexit399.thread

.lr.ph410:                                        ; preds = %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit
  %i.it = load ptr, ptr %i.gr, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph410, %bb.as
  %indvars.iv = phi i64 [ %i.he, %.lr.ph410 ], [ %indvars.iv.next, %bb.as ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [40 x i8], ptr %i.im, i64 %indvars.iv
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !182 ; 2 uses
  %.not.i302 = icmp eq ptr %i.iv, null
  %i.iw = select i1 %.not.i302, ptr %i.it, ptr %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !192
  %i.iz = sitofp i32 %i.iy to float
  %i.ja = fmul float %.0252, %i.iz
  %i.jb = fpext float %i.ja to double
  %i.jc = fmul double %i.jb, f0x3FD45F306DC9C883  ; 2 uses
  %i.jd = fcmp ugt double %i.jc, f0x3FF0000010000000
  br i1 %i.jd, label %bb.as, label %.loopexit399

bb.as:                                            ; preds = %bb.ar
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %i.ir
  br i1 %exitcond.not, label %.loopexit399.thread, label %bb.ar, !llvm.loop !194

.loopexit399:                                     ; preds = %bb.ar
  %i.je = icmp slt i64 %indvars.iv, 0
  br i1 %i.je, label %.loopexit399.thread, label %bb.at

.loopexit399.thread:                              ; preds = %bb.as, %_ZN11OpenImageIO4v3_13pvt17vector_to_latlongERKN9Imath_3_14Vec3IfEEbRfS7_.exit, %.loopexit399
  %i.jf = add nsw i32 %i.ir, -1                   ; 2 uses
  br label %bb.av

bb.at:                                            ; preds = %.loopexit399
  %i.jg = trunc nsw i64 %indvars.iv to i32        ; 3 uses
  %i.jh = fptrunc double %i.jc to float
  %i.ji = call float @llvm.fmuladd.f32(float %i.jh, float 2.000000e+00, float -1.000000e+00) ; 2 uses
  %.inv398 = fcmp oge float %i.ji, 0.000000e+00
  %.0.i287 = select i1 %.inv398, float %i.ji, float 0.000000e+00 ; 2 uses
  %i.jj = fcmp ogt float %.0.i287, 1.000000e+00
  %.1.i288 = select i1 %i.jj, float 1.000000e+00, float %.0.i287
  %i.jk = add nsw i32 %i.jg, -1
  %.not484 = icmp slt i32 %i.gn, %i.jg
  br i1 %.not484, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %.loopexit399.thread
  %.sroa.0447.1 = phi i32 [ %i.jf, %.loopexit399.thread ], [ %i.gn, %bb.au ], [ %i.jk, %bb.at ] ; 2 uses
  %.sroa.10.1 = phi i32 [ %i.jf, %.loopexit399.thread ], [ %i.gn, %bb.au ], [ %i.jg, %bb.at ]
  %.3239 = phi float [ 0.000000e+00, %.loopexit399.thread ], [ 0.000000e+00, %bb.au ], [ %.1.i288, %bb.at ]
  %i.jl = load i8, ptr %i.fg, align 1, !tbaa !170
  %i.jm = icmp eq i8 %i.jl, 2                     ; 3 uses
  %brmerge483 = or i1 %i.jm, %i.hd
  %.sroa.0447.2 = select i1 %brmerge483, i32 %.sroa.0447.1, i32 %i.gn ; 3 uses
  %.sroa.0447.1.mux = select i1 %i.hd, i32 %.sroa.10.1, i32 %i.gn
  %.sroa.10.2 = select i1 %i.jm, i32 %.sroa.0447.1, i32 %.sroa.0447.1.mux ; 3 uses
  %i.jn = xor i1 %i.jm, true
  %i.jo = and i1 %i.hd, %i.jn
  %.4240 = select i1 %i.jo, float %.3239, float 0.000000e+00 ; 3 uses
  %i.jp = fsub float 1.000000e+00, %.4240         ; 2 uses
  %i.jq = fcmp une float %i.jp, 0.000000e+00
  br i1 %i.jq, label %bb.aw, label %bb.bg

bb.aw:                                            ; preds = %bb.av
  %i.jr = load i8, ptr %i.fd, align 4, !tbaa !169
  %i.js = icmp eq i8 %i.jr, 3
  br i1 %i.js, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.jt = icmp eq i32 %.sroa.0447.2, 0
  br i1 %i.jt, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ju = sext i32 %.sroa.0447.2 to i64
  %i.jv = getelementptr inbounds nuw [40 x i8], ptr %i.im, i64 %i.ju
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !182 ; 2 uses
  %.not.i303 = icmp eq ptr %i.jw, null
  %i.jx = load ptr, ptr %i.gr, align 8
  %i.jy = select i1 %.not.i303, ptr %i.jx, ptr %i.jw
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 40
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !192
  %i.kb = icmp slt i32 %i.ka, %i.gs
  br i1 %i.kb, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.kc = load i64, ptr %i.gu, align 8, !tbaa !195
  %i.kd = add nsw i64 %i.kc, 1
  store i64 %i.kd, ptr %i.gu, align 8, !tbaa !195
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  %i.ke = load i64, ptr %i.gt, align 8, !tbaa !196
  %i.kf = add nsw i64 %i.ke, 1
  store i64 %i.kf, ptr %i.gt, align 8, !tbaa !196
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw
  %i.kg = load i64, ptr %i.ff, align 8, !tbaa !40
  %i.kh = add nsw i64 %i.kg, 1
  store i64 %i.kh, ptr %i.ff, align 8, !tbaa !40
  br label %bb.bc

bb.bc:                                            ; preds = %bb.az, %bb.ba, %bb.bb
  %.sroa.0.3 = phi i64 [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.az ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.ba ], [ %.sroa.0.1420, %bb.bb ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float %.1, ptr %i.a, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gv, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store float %.0387, ptr %i.b, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gx, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.ki = fmul float %.0250, %i.jp
  store float %i.ki, ptr %i.c, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gz, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.kj = and i64 %.sroa.0.3, 1
  %.not273 = icmp eq i64 %i.kj, 0
  br i1 %.not273, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kk = load ptr, ptr %0, align 8, !tbaa !197
  %i.kl = getelementptr i8, ptr %i.kk, i64 %.sroa.0.3
  %i.km = getelementptr i8, ptr %i.kl, i64 -1
  %i.kn = load ptr, ptr %i.km, align 8, !nosanitize !93
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.ko = inttoptr i64 %.sroa.0.3 to ptr
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.kp = phi ptr [ %i.kn, %bb.bd ], [ %i.ko, %bb.be ]
  %i.kq = call noundef zeroext i1 %i.kp(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.0447.2, ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, ptr noundef nonnull %i.c, ptr noundef nonnull %19, ptr noundef %., ptr noundef %i.hb)
  %22 = icmp ne i8 %.0243421, 0
  %i.kr = select i1 %i.kq, i1 %22, i1 false
  %23 = zext i1 %i.kr to i8
  br i1 %i.bm, label %.lr.ph413.preheader, label %.loopexit

.lr.ph413.preheader:                              ; preds = %bb.bf
  br i1 %min.iters.check526, label %.lr.ph413.preheader548, label %vector.body530

vector.body530:                                   ; preds = %.lr.ph413.preheader, %vector.body530
  %index531 = phi i64 [ %index.next536, %vector.body530 ], [ 0, %.lr.ph413.preheader ] ; 3 uses
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %index531 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load532 = load <4 x float>, ptr %i.ks, align 16, !tbaa !152
  %wide.load533 = load <4 x float>, ptr %i.kt, align 16, !tbaa !152
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index531 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %wide.load534 = load <4 x float>, ptr %i.ku, align 4, !tbaa !152
  %wide.load535 = load <4 x float>, ptr %i.kv, align 4, !tbaa !152
  %i.kw = fadd <4 x float> %wide.load532, %wide.load534
  %i.kx = fadd <4 x float> %wide.load533, %wide.load535
  store <4 x float> %i.kw, ptr %i.ku, align 4, !tbaa !152
  store <4 x float> %i.kx, ptr %i.kv, align 4, !tbaa !152
  %index.next536 = add nuw i64 %index531, 8       ; 2 uses
  %i.ky = icmp eq i64 %index.next536, %n.vec529
  br i1 %i.ky, label %middle.block537, label %vector.body530, !llvm.loop !199

middle.block537:                                  ; preds = %vector.body530
  br i1 %cmp.n538, label %._crit_edge414, label %.lr.ph413.preheader548

.lr.ph413.preheader548:                           ; preds = %.lr.ph413.preheader, %middle.block537
  %indvars.iv435.ph = phi i64 [ 0, %.lr.ph413.preheader ], [ %n.vec529, %middle.block537 ]
  br label %.lr.ph413

._crit_edge414:                                   ; preds = %.lr.ph413, %middle.block537
  br i1 %brmerge, label %.loopexit, label %.lr.ph416.preheader

.lr.ph416.preheader:                              ; preds = %._crit_edge414
  %brmerge558 = select i1 %min.iters.check511, i1 true, i1 %found.conflict509
  br i1 %brmerge558, label %.lr.ph416.preheader547, label %vector.body515

vector.body515:                                   ; preds = %.lr.ph416.preheader, %vector.body515
  %index516 = phi i64 [ %index.next521, %vector.body515 ], [ 0, %.lr.ph416.preheader ] ; 5 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %index516
  %wide.load517 = load <4 x float>, ptr %i.kz, align 16, !tbaa !152
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %index516 ; 2 uses
  %wide.load518 = load <4 x float>, ptr %i.la, align 4, !tbaa !152, !alias.scope !202, !noalias !205
  %i.lb = fadd <4 x float> %wide.load517, %wide.load518
  store <4 x float> %i.lb, ptr %i.la, align 4, !tbaa !152, !alias.scope !202, !noalias !205
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %index516
  %wide.load519 = load <4 x float>, ptr %i.lc, align 16, !tbaa !152
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %index516 ; 2 uses
  %wide.load520 = load <4 x float>, ptr %i.ld, align 4, !tbaa !152, !alias.scope !205
  %i.le = fadd <4 x float> %wide.load519, %wide.load520
  store <4 x float> %i.le, ptr %i.ld, align 4, !tbaa !152, !alias.scope !205
  %index.next521 = add nuw i64 %index516, 4       ; 2 uses
  %i.lf = icmp eq i64 %index.next521, %n.vec514
  br i1 %i.lf, label %middle.block522, label %vector.body515, !llvm.loop !207

middle.block522:                                  ; preds = %vector.body515
  br i1 %cmp.n523, label %.loopexit, label %.lr.ph416.preheader547

.lr.ph416.preheader547:                           ; preds = %.lr.ph416.preheader, %middle.block522
  %indvars.iv439.ph = phi i64 [ %n.vec514, %middle.block522 ], [ 0, %.lr.ph416.preheader ] ; 7 uses
  br i1 %lcmp.mod.not, label %.lr.ph416.prol.loopexit, label %.lr.ph416.prol

.lr.ph416.prol:                                   ; preds = %.lr.ph416.preheader547
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv439.ph
  %i.lh = load float, ptr %i.lg, align 16, !tbaa !152
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv439.ph ; 2 uses
  %i.lj = load float, ptr %i.li, align 4, !tbaa !152
  %i.lk = fadd float %i.lh, %i.lj
  store float %i.lk, ptr %i.li, align 4, !tbaa !152
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv439.ph
  %i.lm = load float, ptr %i.ll, align 16, !tbaa !152
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv439.ph ; 2 uses
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !152
  %i.lp = fadd float %i.lm, %i.lo
  store float %i.lp, ptr %i.ln, align 4, !tbaa !152
  %indvars.iv.next440.prol = or disjoint i64 %indvars.iv439.ph, 1
  br label %.lr.ph416.prol.loopexit

.lr.ph416.prol.loopexit:                          ; preds = %.lr.ph416.prol, %.lr.ph416.preheader547
  %indvars.iv439.unr = phi i64 [ %indvars.iv439.ph, %.lr.ph416.preheader547 ], [ %indvars.iv.next440.prol, %.lr.ph416.prol ]
  %i.lq = icmp eq i64 %indvars.iv439.ph, %i.hg
  br i1 %i.lq, label %.loopexit, label %.lr.ph416

.lr.ph413:                                        ; preds = %.lr.ph413.preheader548, %.lr.ph413
  %indvars.iv435 = phi i64 [ %indvars.iv.next436, %.lr.ph413 ], [ %indvars.iv435.ph, %.lr.ph413.preheader548 ] ; 3 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv435
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !152
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv435 ; 2 uses
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !152
  %i.lv = fadd float %i.ls, %i.lu
  store float %i.lv, ptr %i.lt, align 4, !tbaa !152
  %indvars.iv.next436 = add nuw nsw i64 %indvars.iv435, 1 ; 2 uses
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, %wide.trip.count
  br i1 %exitcond438.not, label %._crit_edge414, label %.lr.ph413, !llvm.loop !208

.lr.ph416:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416
  %indvars.iv439 = phi i64 [ %indvars.iv.next440.1552, %.lr.ph416 ], [ %indvars.iv439.unr, %.lr.ph416.prol.loopexit ] ; 6 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv439
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !152
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv439 ; 2 uses
  %i.lz = load float, ptr %i.ly, align 4, !tbaa !152
  %i.ma = fadd float %i.lx, %i.lz
  store float %i.ma, ptr %i.ly, align 4, !tbaa !152
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv439
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !152
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv439 ; 2 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !152
  %i.mf = fadd float %i.mc, %i.me
  store float %i.mf, ptr %i.md, align 4, !tbaa !152
  %indvars.iv.next440 = add nuw nsw i64 %indvars.iv439, 1 ; 4 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv.next440
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !152
  %i.mi = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv.next440 ; 2 uses
  %i.mj = load float, ptr %i.mi, align 4, !tbaa !152
  %i.mk = fadd float %i.mh, %i.mj
  store float %i.mk, ptr %i.mi, align 4, !tbaa !152
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv.next440
  %i.mm = load float, ptr %i.ml, align 4, !tbaa !152
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv.next440 ; 2 uses
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !152
  %i.mp = fadd float %i.mm, %i.mo
  store float %i.mp, ptr %i.mn, align 4, !tbaa !152
  %indvars.iv.next440.1552 = add nuw nsw i64 %indvars.iv439, 2 ; 2 uses
  %exitcond443.not.1 = icmp eq i64 %indvars.iv.next440.1552, %wide.trip.count442
  br i1 %exitcond443.not.1, label %.loopexit, label %.lr.ph416, !llvm.loop !209

.loopexit:                                        ; preds = %.lr.ph416.prol.loopexit, %.lr.ph416, %middle.block522, %bb.bf, %._crit_edge414
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.bg

bb.bg:                                            ; preds = %bb.av, %.loopexit
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %.loopexit ], [ %.sroa.0.1420, %bb.av ] ; 2 uses
  %.2245 = phi i8 [ %23, %.loopexit ], [ %.0243421, %bb.av ] ; 2 uses
  %i.mq = fcmp une float %.4240, 0.000000e+00
  br i1 %i.mq, label %bb.bh, label %bb.br

bb.bh:                                            ; preds = %bb.bg
  %i.mr = load i8, ptr %i.fd, align 4, !tbaa !169
  %i.ms = icmp eq i8 %i.mr, 3
  br i1 %i.ms, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.mt = load i64, ptr %i.ff, align 8, !tbaa !40
  %i.mu = add nsw i64 %i.mt, 1
  store i64 %i.mu, ptr %i.ff, align 8, !tbaa !40
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bh
  %i.mv = icmp eq i32 %.sroa.10.2, 0
  br i1 %i.mv, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.mw = sext i32 %.sroa.10.2 to i64
  %i.mx = load ptr, ptr %i.gl, align 8, !tbaa !181
  %i.my = getelementptr inbounds nuw [40 x i8], ptr %i.mx, i64 %i.mw
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !182 ; 2 uses
  %.not.i303.1 = icmp eq ptr %i.mz, null
  %i.na = load ptr, ptr %i.gr, align 8
  %i.nb = select i1 %.not.i303.1, ptr %i.na, ptr %i.mz
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 40
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !192
  %i.ne = icmp slt i32 %i.nd, %i.gs
  br i1 %i.ne, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nf = load i64, ptr %i.gt, align 8, !tbaa !196
  %i.ng = add nsw i64 %i.nf, 1
  store i64 %i.ng, ptr %i.gt, align 8, !tbaa !196
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %i.nh = load i64, ptr %i.gu, align 8, !tbaa !195
  %i.ni = add nsw i64 %i.nh, 1
  store i64 %i.ni, ptr %i.gu, align 8, !tbaa !195
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl, %bb.bi
  %.sroa.0.3.1 = phi i64 [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.bm ], [ ptrtoint (ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl15sample_bilinearEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_ to i64), %bb.bl ], [ %.sroa.0.4, %bb.bi ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store float %.1, ptr %i.a, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gv, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gw, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store float %.0387, ptr %i.b, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gx, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.gy, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  %i.nj = fmul float %.0250, %.4240
  store float %i.nj, ptr %i.c, align 16, !tbaa !152
  store <2 x float> zeroinitializer, ptr %i.gz, align 4, !tbaa !152
  store float 0.000000e+00, ptr %i.ha, align 4, !tbaa !152
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #27
  %i.nk = and i64 %.sroa.0.3.1, 1
  %.not273.1 = icmp eq i64 %i.nk, 0
  br i1 %.not273.1, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.nl = load ptr, ptr %0, align 8, !tbaa !197
  %i.nm = getelementptr i8, ptr %i.nl, i64 %.sroa.0.3.1
  %i.nn = getelementptr i8, ptr %i.nm, i64 -1
  %i.no = load ptr, ptr %i.nn, align 8, !nosanitize !93
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.np = inttoptr i64 %.sroa.0.3.1 to ptr
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nq = phi ptr [ %i.no, %bb.bo ], [ %i.np, %bb.bp ]
  %i.nr = call noundef zeroext i1 %i.nq(ptr noundef nonnull align 8 dereferenceable(188) %0, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %.sroa.10.2, ptr noundef nonnull align 8 dereferenceable(400) %i.q, ptr noundef %i.p, ptr noundef nonnull align 8 dereferenceable(76) %3, i32 noundef %10, i32 noundef %.1.i, ptr noundef nonnull %i.c, ptr noundef nonnull %19, ptr noundef %., ptr noundef %i.hb)
  %24 = icmp ne i8 %.2245, 0
  %i.ns = select i1 %i.nr, i1 %24, i1 false
  %25 = zext i1 %i.ns to i8
  br i1 %i.bm, label %.lr.ph413.1.preheader, label %.loopexit.1

.lr.ph413.1.preheader:                            ; preds = %bb.bq
  br i1 %min.iters.check492, label %.lr.ph413.1.preheader546, label %vector.body496

vector.body496:                                   ; preds = %.lr.ph413.1.preheader, %vector.body496
  %index497 = phi i64 [ %index.next502, %vector.body496 ], [ 0, %.lr.ph413.1.preheader ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %index497 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 16
  %wide.load498 = load <4 x float>, ptr %i.nt, align 16, !tbaa !152
  %wide.load499 = load <4 x float>, ptr %i.nu, align 16, !tbaa !152
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %index497 ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 16 ; 2 uses
  %wide.load500 = load <4 x float>, ptr %i.nv, align 4, !tbaa !152
  %wide.load501 = load <4 x float>, ptr %i.nw, align 4, !tbaa !152
  %i.nx = fadd <4 x float> %wide.load498, %wide.load500
  %i.ny = fadd <4 x float> %wide.load499, %wide.load501
  store <4 x float> %i.nx, ptr %i.nv, align 4, !tbaa !152
  store <4 x float> %i.ny, ptr %i.nw, align 4, !tbaa !152
  %index.next502 = add nuw i64 %index497, 8       ; 2 uses
  %i.nz = icmp eq i64 %index.next502, %n.vec495
  br i1 %i.nz, label %middle.block503, label %vector.body496, !llvm.loop !210

middle.block503:                                  ; preds = %vector.body496
  br i1 %cmp.n504, label %._crit_edge414.1, label %.lr.ph413.1.preheader546

.lr.ph413.1.preheader546:                         ; preds = %.lr.ph413.1.preheader, %middle.block503
  %indvars.iv435.1.ph = phi i64 [ 0, %.lr.ph413.1.preheader ], [ %n.vec495, %middle.block503 ]
  br label %.lr.ph413.1

.lr.ph413.1:                                      ; preds = %.lr.ph413.1.preheader546, %.lr.ph413.1
  %indvars.iv435.1 = phi i64 [ %indvars.iv.next436.1, %.lr.ph413.1 ], [ %indvars.iv435.1.ph, %.lr.ph413.1.preheader546 ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %indvars.iv435.1
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !152
  %i.oc = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %indvars.iv435.1 ; 2 uses
  %i.od = load float, ptr %i.oc, align 4, !tbaa !152
  %i.oe = fadd float %i.ob, %i.od
  store float %i.oe, ptr %i.oc, align 4, !tbaa !152
  %indvars.iv.next436.1 = add nuw nsw i64 %indvars.iv435.1, 1 ; 2 uses
  %exitcond438.1.not = icmp eq i64 %indvars.iv.next436.1, %wide.trip.count.1
  br i1 %exitcond438.1.not, label %._crit_edge414.1, label %.lr.ph413.1, !llvm.loop !211

._crit_edge414.1:                                 ; preds = %.lr.ph413.1, %middle.block503
  br i1 %brmerge.1, label %.loopexit.1, label %.lr.ph416.1.preheader

.lr.ph416.1.preheader:                            ; preds = %._crit_edge414.1
  %brmerge559 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge559, label %.lr.ph416.1.preheader545, label %vector.body

vector.body:                                      ; preds = %.lr.ph416.1.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph416.1.preheader ] ; 5 uses
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %index
  %wide.load = load <4 x float>, ptr %i.of, align 16, !tbaa !152
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %index ; 2 uses
  %wide.load488 = load <4 x float>, ptr %i.og, align 4, !tbaa !152, !alias.scope !212, !noalias !215
  %i.oh = fadd <4 x float> %wide.load, %wide.load488
  store <4 x float> %i.oh, ptr %i.og, align 4, !tbaa !152, !alias.scope !212, !noalias !215
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %index
  %wide.load489 = load <4 x float>, ptr %i.oi, align 16, !tbaa !152
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %index ; 2 uses
  %wide.load490 = load <4 x float>, ptr %i.oj, align 4, !tbaa !152, !alias.scope !215
  %i.ok = fadd <4 x float> %wide.load489, %wide.load490
  store <4 x float> %i.ok, ptr %i.oj, align 4, !tbaa !152, !alias.scope !215
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ol = icmp eq i64 %index.next, %n.vec
  br i1 %i.ol, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit.1, label %.lr.ph416.1.preheader545

.lr.ph416.1.preheader545:                         ; preds = %.lr.ph416.1.preheader, %middle.block
  %indvars.iv439.1.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph416.1.preheader ] ; 7 uses
  br i1 %lcmp.mod555.not, label %.lr.ph416.1.prol.loopexit, label %.lr.ph416.1.prol

.lr.ph416.1.prol:                                 ; preds = %.lr.ph416.1.preheader545
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv439.1.ph
  %i.on = load float, ptr %i.om, align 16, !tbaa !152
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv439.1.ph ; 2 uses
  %i.op = load float, ptr %i.oo, align 4, !tbaa !152
  %i.oq = fadd float %i.on, %i.op
  store float %i.oq, ptr %i.oo, align 4, !tbaa !152
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv439.1.ph
  %i.os = load float, ptr %i.or, align 16, !tbaa !152
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv439.1.ph ; 2 uses
  %i.ou = load float, ptr %i.ot, align 4, !tbaa !152
  %i.ov = fadd float %i.os, %i.ou
  store float %i.ov, ptr %i.ot, align 4, !tbaa !152
  %indvars.iv.next440.1.prol = or disjoint i64 %indvars.iv439.1.ph, 1
  br label %.lr.ph416.1.prol.loopexit

.lr.ph416.1.prol.loopexit:                        ; preds = %.lr.ph416.1.prol, %.lr.ph416.1.preheader545
  %indvars.iv439.1.unr = phi i64 [ %indvars.iv439.1.ph, %.lr.ph416.1.preheader545 ], [ %indvars.iv.next440.1.prol, %.lr.ph416.1.prol ]
  %i.ow = icmp eq i64 %indvars.iv439.1.ph, %i.hh
  br i1 %i.ow, label %.loopexit.1, label %.lr.ph416.1

.lr.ph416.1:                                      ; preds = %.lr.ph416.1.prol.loopexit, %.lr.ph416.1
  %indvars.iv439.1 = phi i64 [ %indvars.iv.next440.1.1, %.lr.ph416.1 ], [ %indvars.iv439.1.unr, %.lr.ph416.1.prol.loopexit ] ; 6 uses
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv439.1
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !152
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv439.1 ; 2 uses
  %i.pa = load float, ptr %i.oz, align 4, !tbaa !152
  %i.pb = fadd float %i.oy, %i.pa
  store float %i.pb, ptr %i.oz, align 4, !tbaa !152
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv439.1
  %i.pd = load float, ptr %i.pc, align 4, !tbaa !152
  %i.pe = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv439.1 ; 2 uses
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !152
  %i.pg = fadd float %i.pd, %i.pf
  store float %i.pg, ptr %i.pe, align 4, !tbaa !152
  %indvars.iv.next440.1 = add nuw nsw i64 %indvars.iv439.1, 1 ; 4 uses
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %20, i64 %indvars.iv.next440.1
  %i.pi = load float, ptr %i.ph, align 4, !tbaa !152
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %spec.select279, i64 %indvars.iv.next440.1 ; 2 uses
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !152
  %i.pl = fadd float %i.pi, %i.pk
  store float %i.pl, ptr %i.pj, align 4, !tbaa !152
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %21, i64 %indvars.iv.next440.1
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !152
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %spec.select278, i64 %indvars.iv.next440.1 ; 2 uses
  %i.pp = load float, ptr %i.po, align 4, !tbaa !152
  %i.pq = fadd float %i.pn, %i.pp
  store float %i.pq, ptr %i.po, align 4, !tbaa !152
  %indvars.iv.next440.1.1 = add nuw nsw i64 %indvars.iv439.1, 2 ; 2 uses
  %exitcond443.1.not.1 = icmp eq i64 %indvars.iv.next440.1.1, %wide.trip.count442.1
  br i1 %exitcond443.1.not.1, label %.loopexit.1, label %.lr.ph416.1, !llvm.loop !218

.loopexit.1:                                      ; preds = %.lr.ph416.1.prol.loopexit, %.lr.ph416.1, %middle.block, %bb.bq, %._crit_edge414.1
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.br

bb.br:                                            ; preds = %.loopexit.1, %bb.bg
  %.sroa.0.4.1 = phi i64 [ %.sroa.0.3.1, %.loopexit.1 ], [ %.sroa.0.4, %bb.bg ]
  %.2245.1 = phi i8 [ %25, %.loopexit.1 ], [ %.2245, %bb.bg ] ; 2 uses
  %i.pr = add nuw nsw i32 %.0241423, 1            ; 2 uses
  %i.ps = fadd float %.0250, %.0242422
  %exitcond446.not = icmp eq i32 %i.pr, %.0251
  br i1 %exitcond446.not, label %bb.an, label %bb.ao, !llvm.loop !219

bb.bs:                                            ; preds = %bb.an
  call void @_ZN11OpenImageIO4v3_117TextureSystemImpl18fill_gray_channelsERKNS0_9ImageSpecEiPfS5_S5_S5_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.ba, i32 noundef %10, ptr noundef %11, ptr noundef %spec.select279, ptr noundef %spec.select278, ptr noundef null)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.an
  %26 = trunc nuw i8 %.2245.1 to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.k, %bb.h, %bb.m, %bb.bt, %bb.e
  %.5 = phi i1 [ true, %bb.e ], [ %26, %bb.bt ], [ %i.ai, %bb.k ], [ %i.x, %bb.h ], [ %i.aw, %bb.m ], [ false, %bb.c ]
  ret i1 %.5
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem11environmentENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_iPfS7_S7_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr %1, ptr noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, i32 noundef %7, ptr noundef writeonly captures(none) %8, ptr noundef writeonly captures(address_is_null) %9, ptr noundef writeonly captures(none) %10) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null) ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_iPfS7_S7_.exit

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.g = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.f, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_iPfS7_S7_.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_iPfS7_S7_.exit: ; preds = %bb.a, %bb.b
  %i.h = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ]
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !10
  %i.j = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.i, ptr %1, ptr noundef %i.h, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.k = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %i.j, ptr noundef %i.e, ptr noundef nonnull readonly align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef readonly %4, ptr noundef readonly %5, ptr noundef readonly %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentENS0_7ustringERNS0_18TextureOptBatch_v1EmPKfS6_S6_iPfS7_S7_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr %1, ptr noundef nonnull readonly align 64 captures(none) dereferenceable(512) %2, i64 noundef %3, ptr noundef readonly captures(none) %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, i32 noundef %7, ptr noundef writeonly captures(none) %8, ptr noundef writeonly captures(address_is_null) %9, ptr noundef writeonly captures(none) %10) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.b, ptr noundef null) ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.e = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl18get_perthread_infoEPNS0_23ImageCachePerThreadInfoE(ptr noundef nonnull align 64 dereferenceable(25240) %i.d, ptr noundef null)
  br label %_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit

_ZN11OpenImageIO4v3_117TextureSystemImpl18get_texture_handleENS0_7ustringEPNS0_13TextureSystem9PerthreadEPKNS0_13TextureOpt_v2E.exit: ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.h = tail call noundef ptr @_ZN11OpenImageIO4v3_114ImageCacheImpl9find_fileENS0_7ustringEPNS0_23ImageCachePerThreadInfoEPFPNS0_10ImageInputEvEPKNS0_9ImageSpecEb(ptr noundef nonnull align 64 dereferenceable(25240) %i.g, ptr %1, ptr noundef %i.f, ptr noundef null, ptr noundef null, i1 noundef zeroext false)
  %i.i = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %i.h, ptr noundef %i.c, ptr noundef nonnull align 64 dereferenceable(512) %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10)
  ret i1 %i.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_113TextureSystem11environmentEPNS1_13TextureHandleEPNS1_9PerthreadERNS0_18TextureOptBatch_v1EmPKfS9_S9_iPfSA_SA_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, i32 noundef %8, ptr noundef writeonly captures(none) %9, ptr noundef writeonly captures(address_is_null) %10, ptr noundef writeonly captures(none) %11) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 64 dereferenceable(512) %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11)
  ret i1 %i.c
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_117TextureSystemImpl11environmentEPNS0_13TextureSystem13TextureHandleEPNS2_9PerthreadERNS0_18TextureOptBatch_v1EmPKfSA_SA_iPfSB_SB_(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull readonly align 64 captures(none) dereferenceable(512) %3, i64 noundef %4, ptr noundef readonly captures(none) %5, ptr noundef readonly captures(none) %6, ptr noundef readonly captures(none) %7, i32 noundef %8, ptr noundef writeonly captures(none) %9, ptr noundef writeonly captures(address_is_null) %10, ptr noundef writeonly captures(none) %11) local_unnamed_addr #0 align 2 {
bb.a:
  %12 = alloca %"class.OpenImageIO::v3_1::TextureOpt_v2", align 8 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.a = getelementptr inbounds nuw i8, ptr %12, i64 20
  %i.b = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %12, i64 21
  %i.d = getelementptr inbounds nuw i8, ptr %12, i64 22
  %i.e = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %12, i64 28 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 36 ; 2 uses
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.e, align 8, !tbaa !152
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.h, align 8, !tbaa !152
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 68
  store i32 0, ptr %i.l, align 4, !tbaa !220
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !133
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 448
  %i.o = load <2 x i32>, ptr %i.n, align 64, !tbaa !3
  store <2 x i32> %i.o, ptr %12, align 8, !tbaa !3
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 456
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.r = load i64, ptr %i.p, align 8, !tbaa !98
  store i64 %i.r, ptr %i.q, align 8, !tbaa !98
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 464
  %i.t = load i32, ptr %i.s, align 16, !tbaa !221
  %i.u = trunc i32 %i.t to i8
  %i.v = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i8 %i.u, ptr %i.v, align 8, !tbaa !131
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.x = load i32, ptr %i.w, align 4, !tbaa !223
  %i.y = trunc i32 %i.x to i8
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 %i.y, ptr %i.z, align 1, !tbaa !132
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 476
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !224
  %i.ac = trunc i32 %i.ab to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 19
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !170
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 480
  %i.af = load i32, ptr %i.ae, align 32, !tbaa !225
  %i.ag = trunc i32 %i.af to i8
  store i8 %i.ag, ptr %i.a, align 4, !tbaa !169
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 484
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !226
  %i.aj = trunc i32 %i.ai to i16
  store i16 %i.aj, ptr %i.d, align 2, !tbaa !171
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 488
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !227
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.c, align 1, !tbaa !172
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 492
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !228
  store float %i.ap, ptr %i.i, align 8, !tbaa !229
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 496
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !230
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !231
  %.not = icmp eq i32 %8, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.as = mul nsw i32 %8, 48
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 2
  %i.av = alloca i8, i64 %i.au, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aw = phi ptr [ %i.av, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.ax = shl nsw i32 %8, 4
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay ; 4 uses
  %i.ba = shl nsw i32 %8, 5
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.bb ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 192 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 256 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 384 ; 2 uses
  %.not107 = icmp eq ptr %10, null
  %i.bh = icmp sgt i32 %8, 0                      ; 2 uses
  %wide.trip.count158 = zext i32 %8 to i64        ; 4 uses
  br i1 %.not107, label %.split.us.preheader, label %.split.preheader

.split.preheader:                                 ; preds = %bb.c
  %xtraiter = and i64 %wide.trip.count158, 1
  %i.bi = icmp eq i32 %8, 1
  %unroll_iter = and i64 %wide.trip.count158, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod168 = trunc i32 %8 to i1
  br label %.split

.split.us.preheader:                              ; preds = %bb.c
  %xtraiter169 = and i64 %wide.trip.count158, 3   ; 3 uses
  %i.bj = icmp ult i32 %8, 4
  %unroll_iter172 = and i64 %wide.trip.count158, 2147483644
  %lcmp.mod170.not = icmp eq i64 %xtraiter169, 0
  %lcmp.mod171 = icmp ne i64 %xtraiter169, 0
  br label %.split.us

.split.us:                                        ; preds = %.split.us.preheader, %.loopexit.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %.loopexit.us ], [ 0, %.split.us.preheader ] ; 12 uses
  %.0100147.us = phi i1 [ %.2.us, %.loopexit.us ], [ true, %.split.us.preheader ] ; 2 uses
  %.0101146.us = phi i64 [ %i.db, %.loopexit.us ], [ 1, %.split.us.preheader ] ; 2 uses
  %i.bk = and i64 %.0101146.us, %4
  %.not106.us = icmp eq i64 %i.bk, 0
  br i1 %.not106.us, label %.loopexit.us, label %bb.d

bb.d:                                             ; preds = %.split.us
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv160
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !152
  store float %i.bm, ptr %i.e, align 8, !tbaa !166
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv160
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !152
  store float %i.bo, ptr %i.f, align 4, !tbaa !168
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv160
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !152
  store float %i.bq, ptr %i.g, align 4, !tbaa !165
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv160
  %i.bs = load float, ptr %i.br, align 4, !tbaa !152
  store float %i.bs, ptr %i.h, align 8, !tbaa !167
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv160
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !152
  store float %i.bu, ptr %i.k, align 8, !tbaa !232
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv160
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !152
  %i.bx = or disjoint i64 %indvars.iv160, 16      ; 3 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.bx
  %i.bz = load float, ptr %i.by, align 4, !tbaa !152
  %i.ca = or disjoint i64 %indvars.iv160, 32      ; 3 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ca
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !152
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv160
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !152
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.bx
end_hunk_0
