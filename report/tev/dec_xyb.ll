Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/dec_xyb?download=true
inline.NumInlined: 626
inline.NumDeleted: 202
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3jxl18OutputEncodingInfo16SetColorEncodingERKNS_13ColorEncodingE:bb.a
  %i.ea = shufflevector <2 x double> %i.dz, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.eb = load <3 x float>, ptr %i.dc, align 4, !tbaa !38
  %i.ec = shufflevector <3 x float> %i.eb, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ed = fpext <4 x float> %i.ec to <4 x double> ; 3 uses
  %i.ee = load <3 x float>, ptr %2, align 16, !tbaa !38
  %i.ef = shufflevector <3 x float> %i.ee, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.eg = fpext <4 x float> %i.ef to <4 x double> ; 3 uses
  %i.eh = load <3 x float>, ptr %i.dd, align 8, !tbaa !38
  %i.ei = shufflevector <3 x float> %i.eh, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.ej = fpext <4 x float> %i.ei to <4 x double> ; 3 uses
  %i.ek = fmul <4 x double> %i.dx, %i.ed
  %i.el = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dr, <4 x double> %i.eg, <4 x double> %i.ek)
  %i.em = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ea, <4 x double> %i.ej, <4 x double> %i.el)
  %i.en = fptrunc <4 x double> %i.em to <4 x float>
  store <4 x float> %i.en, ptr %5, align 16, !tbaa !38
  %i.eo = extractelement <4 x double> %i.ed, i64 2
  %i.ep = extractelement <4 x double> %i.eg, i64 2
  %i.eq = extractelement <4 x double> %i.ej, i64 2
  %i.er = shufflevector <4 x double> %i.ed, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.es = shufflevector <2 x double> %i.dw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.et = insertelement <2 x double> %i.es, double %i.dk, i64 1
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ev = fmul <4 x double> %i.er, %i.eu
  %i.ew = shufflevector <2 x double> %i.dq, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ex = insertelement <2 x double> %i.ew, double %i.dh, i64 1
  %i.ey = shufflevector <2 x double> %i.ex, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ez = shufflevector <4 x double> %i.eg, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.fa = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.ey, <4 x double> %i.ez, <4 x double> %i.ev)
  %i.fb = shufflevector <2 x double> %i.dz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fc = insertelement <2 x double> %i.fb, double %i.dn, i64 1
  %i.fd = shufflevector <2 x double> %i.fc, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fe = shufflevector <4 x double> %i.ej, <4 x double> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 1>
  %i.ff = call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.fd, <4 x double> %i.fe, <4 x double> %i.fa)
  %i.fg = fptrunc <4 x double> %i.ff to <4 x float>
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.fh, ptr %gep.1.1.i.i, align 16, !tbaa !38
  %i.fi = fmul double %i.eo, %i.dk
  %i.fj = call double @llvm.fmuladd.f64(double %i.dh, double %i.ep, double %i.fi)
  %i.fk = call double @llvm.fmuladd.f64(double %i.dn, double %i.eq, double %i.fj)
  %i.fl = fptrunc double %i.fk to float
  %gep.2.2.i.i = getelementptr inbounds nuw i8, ptr %5, i64 32
  store float %i.fl, ptr %gep.2.2.i.i, align 16, !tbaa !38
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.fn = load i8, ptr %i.fm, align 4, !tbaa !105, !range !89, !noundef !49
  %i.fo = trunc nuw i8 %i.fn to i1
  br i1 %i.fo, label %bb.r, label %.critedge43

bb.r:                                             ; preds = %bb.q
  %i.fp = load i32, ptr %i.q, align 8, !tbaa !106
  %i.fq = add i32 %i.fp, -3
  %spec.select.i.i51 = icmp ult i32 %i.fq, -2
  br i1 %spec.select.i.i51, label %bb.s, label %.critedge43

bb.s:                                             ; preds = %bb.r
  %i.fr = load i32, ptr %i.bj, align 4, !tbaa !107
  switch i32 %i.fr, label %bb.w [
    i32 2, label %bb.t
    i32 1, label %.sink.split.i52
    i32 9, label %bb.u
    i32 11, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ft = load <2 x i32>, ptr %i.fs, align 4, !tbaa !94
  %i.fu = sitofp <2 x i32> %i.ft to <2 x double>
  %i.fv = fmul nnan <2 x double> %i.fu, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.fx = load <4 x i32>, ptr %i.fw, align 4, !tbaa !94
  %i.fy = sitofp <4 x i32> %i.fx to <4 x double>
  %i.fz = fmul nnan <4 x double> %i.fy, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.ga = fptrunc <2 x double> %i.fv to <2 x float> ; 2 uses
  %i.gb = fptrunc <4 x double> %i.fz to <4 x float>
  %i.gc = extractelement <2 x float> %i.ga, i64 0
  %i.gd = extractelement <2 x float> %i.ga, i64 1
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  br label %bb.w

.sink.split.i52:                                  ; preds = %bb.s
  br label %bb.w

bb.w:                                             ; preds = %.sink.split.i52, %bb.t, %bb.u, %bb.v, %bb.s
  %.sroa.17.3.ph = phi float [ f0x3EA8F717, %.sink.split.i52 ], [ 2.920000e-01, %bb.u ], [ 3.200000e-01, %bb.v ], [ %i.gd, %bb.t ], [ 0.000000e+00, %bb.s ]
  %.sroa.084.3.ph = phi float [ f0x3F23D6F4, %.sink.split.i52 ], [ 7.080000e-01, %bb.u ], [ 6.800000e-01, %bb.v ], [ %i.gc, %bb.t ], [ 0.000000e+00, %bb.s ]
  %i.ge = phi <4 x float> [ <float f0x3E999A19, float f0x3F1999D2, float f0x3E199A23, float f0x3D75BFA1>, %.sink.split.i52 ], [ <float 1.700000e-01, float f0x3F4C0831, float 1.310000e-01, float 4.600000e-02>, %bb.u ], [ <float 2.650000e-01, float f0x3F30A3D7, float 1.500000e-01, float 6.000000e-02>, %bb.v ], [ %i.gb, %bb.t ], [ zeroinitializer, %bb.s ] ; 4 uses
  %i.gf = load i32, ptr %i.f, align 8, !tbaa !108
  switch i32 %i.gf, label %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49 [
    i32 2, label %bb.x
    i32 1, label %bb.y
    i32 11, label %bb.z
    i32 10, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.gh = load <2 x i32>, ptr %i.gg, align 4, !tbaa !94
  %i.gi = sitofp <2 x i32> %i.gh to <2 x double>
  %i.gj = fmul nnan <2 x double> %i.gi, splat (double f0x3EB0C6F7A0B5ED8D)
  %i.gk = fptrunc <2 x double> %i.gj to <2 x float>
  br label %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49

bb.y:                                             ; preds = %bb.w
  br label %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49

bb.z:                                             ; preds = %bb.w
  br label %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49

bb.aa:                                            ; preds = %bb.w
  br label %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49

_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49:  ; preds = %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa
  %i.gl = phi <2 x float> [ zeroinitializer, %bb.w ], [ %i.gk, %bb.x ], [ <float 3.127000e-01, float 3.290000e-01>, %bb.y ], [ <float 3.140000e-01, float 3.510000e-01>, %bb.z ], [ splat (float f0x3EAAAAAB), %bb.aa ] ; 2 uses
  %i.gm = extractelement <2 x float> %i.gl, i64 0
  %i.gn = extractelement <2 x float> %i.gl, i64 1
  %i.go = extractelement <4 x float> %i.ge, i64 0
  %i.gp = extractelement <4 x float> %i.ge, i64 1
  %i.gq = extractelement <4 x float> %i.ge, i64 2
  %i.gr = extractelement <4 x float> %i.ge, i64 3
  %i.gs = call fastcc i32 @_ZN3jxlL14PrimariesToXYZEffffffffRNSt3__15arrayINS1_IfLm3EEELm3EEE(float noundef %.sroa.084.3.ph, float noundef %.sroa.17.3.ph, float noundef %i.go, float noundef %i.gp, float noundef %i.gq, float noundef %i.gr, float noundef %i.gm, float noundef %i.gn, ptr noundef nonnull align 4 dereferenceable(36) %6) #25
  %i.gt = icmp eq i32 %i.gs, 0
  br i1 %i.gt, label %bb.ab, label %.critedge43

bb.ab:                                            ; preds = %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bi, ptr noundef nonnull align 4 dereferenceable(12) %i.gu, i64 12, i1 false), !tbaa.struct !259
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !103, !range !89, !noundef !49
  %i.gx = trunc nuw i8 %i.gw to i1
  br i1 %i.gx, label %bb.ac, label %.sink.split

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.gy = call { double, double } @_ZNK3jxl13ColorEncoding13GetWhitePointEv(ptr noundef nonnull align 8 dereferenceable(200) %1) #25
  %i.gz = extractvalue { double, double } %i.gy, 0
  %i.ha = fptrunc double %i.gz to float
  %i.hb = call { double, double } @_ZNK3jxl13ColorEncoding13GetWhitePointEv(ptr noundef nonnull align 8 dereferenceable(200) %1) #25
  %i.hc = extractvalue { double, double } %i.hb, 1
  %i.hd = fptrunc double %i.hc to float
  %i.he = call fastcc i32 @_ZN3jxlL13AdaptToXYZD50EffRNSt3__15arrayINS1_IfLm3EEELm3EEE(float noundef %i.ha, float noundef %i.hd, ptr noundef nonnull align 4 dereferenceable(36) %7) #25
  %i.hf = icmp eq i32 %i.he, 0
  br i1 %i.hf, label %bb.ad, label %.thread137

.thread137:                                       ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.am

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) %7, ptr noundef nonnull align 4 dereferenceable(36) %6, ptr noundef nonnull align 4 dereferenceable(36) %8) #25
  %i.hg = call i32 @_ZN3jxl12Inv3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEENS_6StatusERT_(ptr noundef nonnull align 4 dereferenceable(36) %8) #25 ; 2 uses
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %.thread141, label %bb.ae

.thread141:                                       ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) %8, ptr noundef nonnull align 4 dereferenceable(36) %5, ptr noundef nonnull align 4 dereferenceable(36) %9) #25
  call void @_ZN3jxl12Mul3x3MatrixINSt3__15arrayINS2_IfLm3EEELm3EEEEEvRKT_S7_RS5_(ptr noundef nonnull align 4 dereferenceable(36) %9, ptr noundef nonnull align 4 dereferenceable(36) %i.bh, ptr noundef nonnull align 4 dereferenceable(36) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.sink.split

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.am

.sink.split:                                      ; preds = %bb.ab, %.thread141
  %.6.ph.ph = phi i8 [ 0, %.thread141 ], [ %i.bg, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %bb.c
  %.6.ph = phi i8 [ %i.bg, %bb.c ], [ %.6.ph.ph, %.sink.split ] ; 2 uses
  %.pr = load i32, ptr %i.q, align 8, !tbaa !91
  %i.hi = icmp eq i32 %.pr, 1
  br i1 %i.hi, label %..thread143_crit_edge, label %bb.ag

..thread143_crit_edge:                            ; preds = %bb.af
  %i.hj = load <2 x float>, ptr %i.bi, align 4
  %.sroa.9.0..sroa_idx.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 860
  %.sroa.9.0.copyload.pre = load float, ptr %.sroa.9.0..sroa_idx.phi.trans.insert, align 4, !tbaa !36
  %i.hk = fpext <2 x float> %i.hj to <2 x double>
  %i.hl = fpext float %.sroa.9.0.copyload.pre to double
  br label %.thread143

.thread143:                                       ; preds = %..thread143_crit_edge, %bb.d
  %.sroa.9.0.copyload = phi double [ %i.hl, %..thread143_crit_edge ], [ f0x3FB27BB300000000, %bb.d ] ; 3 uses
  %.6146 = phi i8 [ %.6.ph, %..thread143_crit_edge ], [ %i.bg, %bb.d ]
  %i.hm = phi <2 x double> [ %i.hk, %..thread143_crit_edge ], [ <double f0x3FCB367A00000000, double f0x3FE6E2EB20000000>, %bb.d ] ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.5.0.copyload = load float, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %.sroa.8.0.copyload = load float, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.979.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.979.0.copyload = load float, ptr %.sroa.979.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %.sroa.10.0.copyload = load float, ptr %.sroa.10.0..sroa_idx, align 4
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !36
  %10 = fpext float %.sroa.979.0.copyload to double
  %i.hn = extractelement <2 x double> %i.hm, i64 1
  %i.ho = extractelement <2 x double> %i.hm, i64 0
  %11 = fpext float %.sroa.10.0.copyload to double
  %i.hp = load <2 x float>, ptr %4, align 8
  %i.hq = load <2 x float>, ptr %.sroa.678.0..sroa_idx, align 4
  %i.hr = fpext <2 x float> %i.hp to <2 x double>
  %i.hs = fpext <2 x float> %i.hq to <2 x double>
  %i.ht = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = fmul <2 x double> %i.ht, %i.hs
  %i.hv = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hv, <2 x double> %i.hr, <2 x double> %i.hu) ; 2 uses
  %12 = extractelement <2 x double> %i.hw, i64 0
  %13 = call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %10, double %12)
  %i.hx = fptrunc double %13 to float             ; 3 uses
  store float %i.hx, ptr %4, align 8, !tbaa !38
  store float %i.hx, ptr %.sroa.678.0..sroa_idx, align 4, !tbaa !38
  store float %i.hx, ptr %.sroa.979.0..sroa_idx, align 8, !tbaa !38
  %i.hy = extractelement <2 x double> %i.hw, i64 1
  %14 = call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %11, double %i.hy)
  %i.hz = fptrunc double %14 to float             ; 3 uses
  store float %i.hz, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  store float %i.hz, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !38
  store float %i.hz, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !38
  %i.ia = fpext float %.sroa.5.0.copyload to double
  %i.ib = fpext float %.sroa.8.0.copyload to double
  %i.ic = fpext float %.sroa.11.0.copyload to double
  %i.id = fmul double %i.hn, %i.ib
  %i.ie = call double @llvm.fmuladd.f64(double %i.ho, double %i.ia, double %i.id)
  %i.if = call double @llvm.fmuladd.f64(double %.sroa.9.0.copyload, double %i.ic, double %i.ie)
  %i.ig = fptrunc double %i.if to float           ; 3 uses
  store float %i.ig, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !38
  store float %i.ig, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !38
  store float %i.ig, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !38
  br label %bb.ag

bb.ag:                                            ; preds = %.thread143, %bb.af
  %.6145 = phi i8 [ %.6146, %.thread143 ], [ %.6.ph, %bb.af ]
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !103, !range !89, !noundef !49
  %i.ij = trunc nuw i8 %i.ii to i1
  br i1 %i.ij, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.im = load float, ptr %i.il, align 8, !tbaa !100
  call void @_ZN3jxl21InitSIMDInverseMatrixERKNSt3__15arrayINS1_IfLm3EEELm3EEEPff(ptr noundef nonnull align 4 dereferenceable(36) %4, ptr noundef nonnull %i.ik, float noundef %i.im) #23
  %i.in = load float, ptr %i.il, align 8, !tbaa !100
  %i.io = fpext float %i.in to double
  %i.ip = fadd double %i.io, -2.550000e+02
  %i.iq = call noundef double @llvm.fabs.f64(double %i.ip)
  %i.ir = fcmp ole double %i.iq, f0x3FB99999A0000000
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.it = select i1 %i.ir, i8 %.6145, i8 0
  store i8 %i.it, ptr %i.is, align 4, !tbaa !262
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.iv = load i8, ptr %i.iu, align 8, !tbaa !90, !range !89, !noundef !49
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.iy = load i32, ptr %i.ix, align 4
  %i.iz = uitofp i32 %i.iy to double
  %i.ja = fmul nnan double %i.iz, f0x3E7AD7F29ABCAF48
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.jc = load i32, ptr %i.jb, align 8
  %i.jd = icmp eq i32 %i.jc, 17
  %i.je = select i1 %i.jd, double f0x3FD89D89E0000000, double 1.000000e+00
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jf = phi double [ %i.ja, %bb.aj ], [ %i.je, %bb.ak ]
  %i.jg = fptrunc double %i.jf to float
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 848
  store float %i.jg, ptr %i.jh, align 8, !tbaa !263
  br label %bb.am

.critedge.sink.split:                             ; preds = %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit, %_ZN3jxlL17PrimariesToXYZD50EffffffffRNSt3__15arrayINS1_IfLm3EEELm3EEE.exit
  %.sroa.091.2.ph = phi i32 [ 1, %_ZN3jxlL17PrimariesToXYZD50EffffffffRNSt3__15arrayINS1_IfLm3EEELm3EEE.exit ], [ %i.cy, %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.e, %bb.f
  %.sroa.091.2 = phi i32 [ 1, %bb.e ], [ 1, %bb.f ], [ %.sroa.091.2.ph, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.am

.critedge43:                                      ; preds = %_ZNK3jxl13ColorEncoding13GetWhitePointEv.exit49, %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.ae, %.thread137, %.critedge43, %.critedge, %bb.al
  %.sroa.091.4 = phi i32 [ 0, %bb.al ], [ %i.hg, %bb.ae ], [ 1, %.critedge43 ], [ %.sroa.091.2, %.critedge ], [ 1, %.thread137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i32 %.sroa.091.4
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding10LinearSRGBEb(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden i32 @_ZN3jxl18OutputEncodingInfo21MaybeSetColorEncodingERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !91   ; 2 uses
  %i.c = icmp eq i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.e = load i32, ptr %i.d, align 8, !tbaa !91
  %i.f = icmp ne i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.h = load i32, ptr %i.g, align 4
  %.not = icmp eq i32 %i.h, 1
  %or.cond = select i1 %i.f, i1 true, i1 %.not
  br i1 %or.cond, label %bb.c, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.j = load i8, ptr %i.i, align 8, !tbaa !90, !range !89, !noundef !49
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp ne i32 %i.m, 16
  %.not7 = select i1 %i.k, i1 true, i1 %i.n
  br i1 %.not7, label %bb.d, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 241
  %i.p = load i8, ptr %i.o, align 1, !tbaa !103, !range !89, !noundef !49
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.s = load i8, ptr %i.r, align 4, !tbaa !88, !range !89, !noundef !49
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i8, ptr %i.u, align 8, !tbaa !90, !range !89, !noundef !49
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.y = load i32, ptr %i.x, align 8
  switch i32 %i.y, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread [
    i32 18, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
    i32 17, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
    i32 16, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
    i32 13, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
    i32 8, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
    i32 1, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit
  ]

_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit: ; preds = %bb.f, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i
  %i.z = icmp ne i32 %i.b, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i32, ptr %i.aa, align 8
  %.not.i = icmp eq i32 %i.ab, 1
  %or.cond23.i = select i1 %i.z, i1 true, i1 %.not.i
  br i1 %or.cond23.i, label %bb.g, label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread

bb.g:                                             ; preds = %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit, %bb.d
  %i.ac = tail call i32 @_ZN3jxl18OutputEncodingInfo16SetColorEncodingERKNS_13ColorEncodingE(ptr noundef nonnull align 8 dereferenceable(936) %0, ptr noundef nonnull align 8 dereferenceable(200) %1) #25
  br label %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread

_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit.thread: ; preds = %bb.b, %switch.early.test.i, %bb.e, %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit, %bb.c, %bb.g
  %.sroa.0.0 = phi i32 [ 1, %bb.b ], [ %i.ac, %bb.g ], [ 1, %bb.c ], [ 1, %_ZN3jxl24CanOutputToColorEncodingERKNS_13ColorEncodingE.exit ], [ 1, %bb.e ], [ 1, %switch.early.test.i ]
  ret i32 %.sroa.0.0
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN3jxl13ColorEncoding4SRGBEb(i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { double, double } @_ZNK3jxl13ColorEncoding13GetWhitePointEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i8, ptr %i.a, align 4, !tbaa !105, !range !89, !noundef !49
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !108
  switch i32 %i.e, label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit [
    i32 2, label %bb.c
    i32 1, label %bb.d
    i32 11, label %bb.e
    i32 10, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.g = load <2 x i32>, ptr %i.f, align 4, !tbaa !94
  %i.h = sitofp <2 x i32> %i.g to <2 x double>
  %i.i = fmul nnan <2 x double> %i.h, splat (double f0x3EB0C6F7A0B5ED8D)
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.d:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.e:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

bb.f:                                             ; preds = %bb.b
  br label %_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit

_ZNK3jxl3cms13ColorEncoding13GetWhitePointEv.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %i.j = phi <2 x double> [ zeroinitializer, %bb.b ], [ %i.i, %bb.c ], [ <double 3.127000e-01, double 3.290000e-01>, %bb.d ], [ <double 3.140000e-01, double 3.510000e-01>, %bb.e ], [ splat (double f0x3FD5555555555555), %bb.f ], [ zeroinitializer, %bb.a ] ; 2 uses
end_hunk_0
