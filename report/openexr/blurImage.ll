Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/blurImage?download=true
inline.NumInlined: 127
inline.NumDeleted: 40
begin_hunk_0_@_Z9blurImageR11EnvmapImageb:bb.a
  %i.db = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.da)
          to label %_ZNSolsEPFRSoS_E.exit237 unwind label %.loopexit.split-lp421 ; 0 uses

_ZNSolsEPFRSoS_E.exit237:                         ; preds = %.noexc319, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.dc = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %_ZNSolsEPFRSoS_E.exit237
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load <4 x i32>, ptr %i.dc, align 4, !tbaa !59
  store <4 x i32> %i.de, ptr %5, align 16, !tbaa !59
  %i.df = invoke noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16) %5)
          to label %bb.ac unwind label %bb.af     ; 4 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dg = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1404.lcssa)
          to label %.preheader414 unwind label %bb.ag ; 2 uses

.preheader414:                                    ; preds = %bb.ac
  %i.dh = icmp sgt i32 %i.df, 0
  %i.di = add nsw i32 %i.df, -1                   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  br label %bb.ah

bb.ad:                                            ; preds = %._crit_edge489.split.us
  %i.dn = load <2 x i32>, ptr %i.dd, align 8, !tbaa !59
  %i.do = load <2 x i32>, ptr %5, align 16, !tbaa !59
  %i.dp = add <2 x i32> %i.dn, splat (i32 1)
  %i.dq = sub <2 x i32> %i.dp, %i.do              ; 2 uses
  %i.dr = extractelement <2 x i32> %i.dq, i64 0
  %i.ds = extractelement <2 x i32> %i.dq, i64 1
  %i.dt = mul nsw i32 %i.ds, %i.dr                ; 2 uses
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !62 ; 2 uses
  %.idx = shl nuw nsw i64 %i.du, 3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.idx
  %.not557 = icmp eq i32 %i.dt, 0
  br i1 %.not557, label %._crit_edge501, label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.ad
  %i.dx = uitofp i64 %i.du to double
  %i.dy = fdiv double %i.dx, %.1181.lcssa
  %i.dz = fptrunc double %i.dy to float           ; 4 uses
  %i.ea = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  br label %bb.ct

bb.ae:                                            ; preds = %_ZNSolsEPFRSoS_E.exit237
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.af:                                            ; preds = %bb.ab
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ag:                                            ; preds = %bb.ac
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.ah:                                            ; preds = %.preheader414, %._crit_edge489.split.us
  %.0179497 = phi i32 [ 0, %.preheader414 ], [ %i.pk, %._crit_edge489.split.us ] ; 5 uses
  %.0180496 = phi double [ 0.000000e+00, %.preheader414 ], [ %.1181.lcssa, %._crit_edge489.split.us ] ; 2 uses
  br i1 %1, label %bb.ai, label %_ZNSolsEPFRSoS_E.exit239

bb.ai:                                            ; preds = %bb.ah
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 13)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238 unwind label %.loopexit415 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238: ; preds = %bb.ai
  %i.ef = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %.0179497)
          to label %bb.aj unwind label %.loopexit415 ; 3 uses

bb.aj:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !26
  %i.eh = getelementptr i8, ptr %i.eg, i64 -24
  %i.ei = load i64, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds i8, ptr %i.ef, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 240
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !44 ; 6 uses
  %.not.i.i.i322 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i322, label %bb.ak, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZSt16__throw_bad_castv() #8
          to label %.noexc327 unwind label %.loopexit.split-lp416

.noexc327:                                        ; preds = %bb.ak
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323: ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  %i.en = load i8, ptr %i.em, align 8, !tbaa !50
  %.not.i1.i.i324 = icmp eq i8 %i.en, 0
  br i1 %.not.i1.i.i324, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 67
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !51
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325

bb.am:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i323
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.el)
          to label %.noexc328 unwind label %.loopexit415

.noexc328:                                        ; preds = %bb.am
  %i.eq = load ptr, ptr %i.el, align 8, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 48
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef signext i8 %i.es(ptr noundef nonnull align 8 dereferenceable(570) %i.el, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325 unwind label %.loopexit415, !inline_history !10

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325: ; preds = %.noexc328, %bb.al
  %.0.i.i.i326 = phi i8 [ %i.ep, %bb.al ], [ %i.et, %.noexc328 ]
  %i.eu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ef, i8 noundef signext %.0.i.i.i326)
          to label %.noexc330 unwind label %.loopexit415

.noexc330:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325
  %i.ev = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.eu)
          to label %_ZNSolsEPFRSoS_E.exit239 unwind label %.loopexit415 ; 0 uses

.loopexit415:                                     ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit238, %bb.ai, %bb.am, %.noexc328, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i325, %.noexc330
  %lpad.loopexit417 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

.loopexit.split-lp416:                            ; preds = %bb.ak
  %lpad.loopexit.split-lp418 = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

_ZNSolsEPFRSoS_E.exit239:                         ; preds = %.noexc330, %bb.ah
  switch i32 %.0179497, label %default.unreachable [
    i32 0, label %bb.as
    i32 1, label %bb.an
    i32 2, label %bb.ao
    i32 3, label %bb.ap
    i32 4, label %bb.aq
    i32 5, label %bb.ar
  ]

bb.an:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ao:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ap:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.aq:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

bb.ar:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239
  br label %bb.as

default.unreachable:                              ; preds = %_ZNSolsEPFRSoS_E.exit239
  unreachable

bb.as:                                            ; preds = %_ZNSolsEPFRSoS_E.exit239, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an
  %.sroa.0374.0 = phi float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.aq ], [ -1.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.ap ], [ 1.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.sroa.11.0 = phi float [ 0.000000e+00, %bb.ar ], [ 0.000000e+00, %bb.aq ], [ 0.000000e+00, %bb.an ], [ 1.000000e+00, %bb.ao ], [ -1.000000e+00, %bb.ap ], [ 0.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.sroa.19.0 = phi float [ -1.000000e+00, %bb.ar ], [ 1.000000e+00, %bb.aq ], [ 0.000000e+00, %bb.an ], [ 0.000000e+00, %bb.ao ], [ 0.000000e+00, %bb.ap ], [ 0.000000e+00, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0178.sroa.phi = phi ptr [ %.sroa.17, %bb.ar ], [ %.sroa.17, %bb.aq ], [ %.sroa.0, %bb.an ], [ %.sroa.10, %bb.ao ], [ %.sroa.10, %bb.ap ], [ %.sroa.0, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0177.sroa.phi = phi ptr [ %.sroa.0, %bb.ar ], [ %.sroa.0, %bb.aq ], [ %.sroa.10, %bb.an ], [ %.sroa.0, %bb.ao ], [ %.sroa.0, %bb.ap ], [ %.sroa.10, %_ZNSolsEPFRSoS_E.exit239 ]
  %.0176.sroa.phi = phi ptr [ %.sroa.10, %bb.ar ], [ %.sroa.10, %bb.aq ], [ %.sroa.17, %bb.an ], [ %.sroa.17, %bb.ao ], [ %.sroa.17, %bb.ap ], [ %.sroa.17, %_ZNSolsEPFRSoS_E.exit239 ]
  br i1 %i.dh, label %.lr.ph482.us, label %._crit_edge489.split.us

.lr.ph482.us:                                     ; preds = %bb.as, %._crit_edge483.us
  %.0175486.us = phi i32 [ %i.ph, %._crit_edge483.us ], [ 0, %bb.as ] ; 4 uses
  %.1181485.us = phi double [ %i.pf, %._crit_edge483.us ], [ %.0180496, %bb.as ]
  %i.ew = icmp eq i32 %.0175486.us, 0
  %i.ex = icmp eq i32 %.0175486.us, %i.di
  %i.ey = select i1 %i.ew, i1 true, i1 %i.ex      ; 2 uses
  %i.ez = uitofp nneg i32 %.0175486.us to float
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph482.us, %_ZN9Imath_3_24halfmLEf.exit251.us
  %.0174480.us = phi i32 [ 0, %.lr.ph482.us ], [ %i.pg, %_ZN9Imath_3_24halfmLEf.exit251.us ] ; 4 uses
  %.2182479.us = phi double [ %.1181485.us, %.lr.ph482.us ], [ %i.pf, %_ZN9Imath_3_24halfmLEf.exit251.us ]
  %i.fa = icmp eq i32 %.0174480.us, 0
  %i.fb = icmp eq i32 %.0174480.us, %i.di
  %i.fc = select i1 %i.fa, i1 true, i1 %i.fb      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.fd = uitofp nneg i32 %.0174480.us to float
  store float %i.fd, ptr %6, align 8, !tbaa !67
  store float %i.ez, ptr %i.dj, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  invoke void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec3") align 4 %7, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.au unwind label %.split.us491

bb.au:                                            ; preds = %bb.at
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.fe = load float, ptr %7, align 4, !tbaa !71, !noalias !84 ; 6 uses
  %i.ff = load <2 x float>, ptr %i.dk, align 4, !tbaa !72, !noalias !84 ; 7 uses
  %foldExtExtBinop = fmul <2 x float> %i.ff, %i.ff
  %i.fg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fh = call float @llvm.fmuladd.f32(float %i.fe, float %i.fe, float %i.fg)
  %i.fi = extractelement <2 x float> %i.ff, i64 1 ; 2 uses
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fi, float %i.fi, float %i.fh) ; 2 uses
  %i.fk = fcmp olt float %i.fj, f0x01000000
  br i1 %i.fk, label %bb.aw, label %bb.av, !prof !73

bb.av:                                            ; preds = %bb.au
  %sqrt.i.i.us = call float @llvm.sqrt.f32(float %i.fj)
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

bb.aw:                                            ; preds = %bb.au
  %i.fl = fcmp ult float %i.fe, 0.000000e+00
  %i.fm = fneg float %i.fe
  %i.fn = select i1 %i.fl, float %i.fm, float %i.fe ; 3 uses
  %i.fo = fcmp ult <2 x float> %i.ff, zeroinitializer
  %i.fp = fneg <2 x float> %i.ff
  %i.fq = select <2 x i1> %i.fo, <2 x float> %i.fp, <2 x float> %i.ff ; 3 uses
  %i.fr = extractelement <2 x float> %i.fq, i64 0 ; 2 uses
  %i.fs = fcmp olt float %i.fn, %i.fr
  %.0.i.us = select i1 %i.fs, float %i.fr, float %i.fn ; 2 uses
  %i.ft = extractelement <2 x float> %i.fq, i64 1 ; 2 uses
  %i.fu = fcmp olt float %.0.i.us, %i.ft
  %.1.i.us = select i1 %i.fu, float %i.ft, float %.0.i.us ; 4 uses
  %i.fv = fcmp oeq float %.1.i.us, 0.000000e+00
  br i1 %i.fv, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ax, !prof !73

bb.ax:                                            ; preds = %bb.aw
  %i.fw = fdiv float %i.fn, %.1.i.us              ; 2 uses
  %i.fx = insertelement <2 x float> poison, float %.1.i.us, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = fdiv <2 x float> %i.fq, %i.fy           ; 3 uses
  %foldExtExtBinop669 = fmul <2 x float> %i.fz, %i.fz
  %i.ga = extractelement <2 x float> %foldExtExtBinop669, i64 0
  %i.gb = call float @llvm.fmuladd.f32(float %i.fw, float %i.fw, float %i.ga)
  %i.gc = extractelement <2 x float> %i.fz, i64 1 ; 2 uses
  %i.gd = call float @llvm.fmuladd.f32(float %i.gc, float %i.gc, float %i.gb)
  %sqrt.i.us = call float @llvm.sqrt.f32(float %i.gd)
  %i.ge = fmul float %.1.i.us, %sqrt.i.us
  br label %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us

_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us:        ; preds = %bb.ax, %bb.av
  %.0.i.i.us = phi float [ %sqrt.i.i.us, %bb.av ], [ %i.ge, %bb.ax ] ; 3 uses
  %i.gf = fcmp oeq float %.0.i.i.us, 0.000000e+00
  br i1 %i.gf, label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us, label %bb.ay, !prof !74

bb.ay:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us
  %i.gg = fdiv float %i.fe, %.0.i.i.us
  %i.gh = insertelement <2 x float> poison, float %.0.i.i.us, i64 0
  %i.gi = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gj = fdiv <2 x float> %i.ff, %i.gi
  br label %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us

_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us:     ; preds = %bb.ay, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us, %bb.aw
  %.sink6.i.us = phi float [ %i.gg, %bb.ay ], [ 0.000000e+00, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ 0.000000e+00, %bb.aw ] ; 2 uses
  %i.gk = phi <2 x float> [ %i.gj, %bb.ay ], [ zeroinitializer, %_ZNK9Imath_3_24Vec3IfE6lengthEv.exit.i.us ], [ zeroinitializer, %bb.aw ] ; 2 uses
  store float %.sink6.i.us, ptr %.sroa.0, align 4, !tbaa !71, !alias.scope !84
  %i.gl = extractelement <2 x float> %i.gk, i64 0 ; 2 uses
  store float %i.gl, ptr %.sroa.10, align 4, !tbaa !75, !alias.scope !84
  %i.gm = extractelement <2 x float> %i.gk, i64 1 ; 2 uses
  store float %i.gm, ptr %.sroa.17, align 4, !tbaa !76, !alias.scope !84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  %i.gn = load <2 x float>, ptr %6, align 8, !tbaa !72
  store <2 x float> %i.gn, ptr %9, align 8, !tbaa !72
  invoke void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind nonnull writable sret(%"class.Imath_3_2::Vec2.0") align 4 %8, i32 noundef %.0179497, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dead_on_return %9)
          to label %bb.az unwind label %.split493.us

bb.az:                                            ; preds = %_ZNK9Imath_3_24Vec3IfE10normalizedEv.exit.us
  %i.go = fmul float %.sroa.11.0, %i.gl
  %i.gp = call float @llvm.fmuladd.f32(float %.sink6.i.us, float %.sroa.0374.0, float %i.go)
  %i.gq = call noundef float @llvm.fmuladd.f32(float %i.gm, float %.sroa.19.0, float %i.gp)
  %i.gr = fpext float %i.gq to double
  %i.gs = load float, ptr %.0177.sroa.phi, align 4, !tbaa !72
  %i.gt = load float, ptr %.0178.sroa.phi, align 4, !tbaa !72
  %i.gu = load float, ptr %.0176.sroa.phi, align 4, !tbaa !72
  %i.gv = insertelement <2 x float> poison, float %i.gs, i64 0
  %i.gw = insertelement <2 x float> %i.gv, float %i.gu, i64 1
  %i.gx = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = fdiv <2 x float> %i.gw, %i.gy
  %i.ha = fpext <2 x float> %i.gz to <2 x double> ; 2 uses
  %i.hb = fmul <2 x double> %i.ha, %i.ha          ; 2 uses
  %shift = shufflevector <2 x double> %i.hb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop671 = fadd <2 x double> %i.hb, %shift
  %i.hc = extractelement <2 x double> %foldExtExtBinop671, i64 0
  %i.hd = fadd double %i.hc, 1.000000e+00
  %i.he = fmul double %i.hd, %i.gr                ; 3 uses
  %or.cond.us = select i1 %i.fc, i1 %i.ey, i1 false
  br i1 %or.cond.us, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %or.cond3.us = select i1 %i.fc, i1 true, i1 %i.ey
  br i1 %or.cond3.us, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.hf = fmul double %i.he, 5.000000e-01
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.hg = fdiv double %i.he, 3.000000e+00
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.ba
  %.0173.us = phi double [ %i.hg, %bb.bc ], [ %i.hf, %bb.bb ], [ %i.he, %bb.ba ] ; 2 uses
  %i.hh = load ptr, ptr %i.dl, align 8, !tbaa !62
  %i.hi = load i64, ptr %i.dm, align 8, !tbaa !77
  %i.hj = load <2 x float>, ptr %8, align 8, !tbaa !72
  %i.hk = fadd <2 x float> %i.hj, splat (float 5.000000e-01) ; 2 uses
  %i.hl = extractelement <2 x float> %i.hk, i64 1
  %i.hm = fptosi float %i.hl to i32
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul nsw i64 %i.hi, %i.hn
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.hh, i64 %i.ho
  %i.hq = extractelement <2 x float> %i.hk, i64 0
  %i.hr = fptosi float %i.hq to i32
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hs ; 5 uses
  %i.hu = fptrunc double %.0173.us to float       ; 4 uses
  %i.hv = load i16, ptr %i.ht, align 2, !tbaa !80
  %i.hw = load ptr, ptr @imath_half_to_float_table, align 8, !tbaa !64 ; 4 uses
  %i.hx = zext i16 %i.hv to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !51
  %i.ia = fmul float %i.hz, %i.hu                 ; 2 uses
  %i.ib = bitcast float %i.ia to i32
  %i.ic = call float @llvm.fabs.f32(float %i.ia)
  %i.id = bitcast float %i.ic to i32              ; 10 uses
  %i.ie = lshr i32 %i.ib, 16                      ; 3 uses
  %i.if = trunc nuw i32 %i.ie to i16
  %i.ig = and i16 %i.if, -32768                   ; 3 uses
  %i.ih = icmp samesign ugt i32 %i.id, 947912703
  br i1 %i.ih, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ii = icmp samesign ult i32 %i.id, 855638017
  br i1 %i.ii, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ij = lshr i32 %i.id, 23                      ; 2 uses
  %i.ik = sub nuw nsw i32 126, %i.ij
  %i.il = and i32 %i.id, 8388607
  %i.im = or disjoint i32 %i.il, 8388608          ; 2 uses
  %i.in = add nsw i32 %i.ij, -94
  %i.io = shl i32 %i.im, %i.in                    ; 2 uses
  %i.ip = lshr i32 %i.im, %i.ik                   ; 2 uses
  %i.iq = and i32 %i.ie, 32768
  %i.ir = or i32 %i.ip, %i.iq
  %i.is = trunc nuw i32 %i.ir to i16              ; 2 uses
  %i.it = icmp ugt i32 %i.io, -2147483648
  br i1 %i.it, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.iu = icmp ne i32 %i.io, -2147483648
  %i.iv = and i32 %i.ip, 1
  %.not.i.i.i.us = icmp eq i32 %i.iv, 0
  %or.cond.i.i.i.us = select i1 %i.iu, i1 true, i1 %.not.i.i.i.us
  br i1 %or.cond.i.i.i.us, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iw = add nuw i16 %i.is, 1
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bi:                                            ; preds = %bb.bd
  %i.ix = icmp samesign ugt i32 %i.id, 2139095039
  br i1 %i.ix, label %bb.bm, label %bb.bj, !prof !73

bb.bj:                                            ; preds = %bb.bi
  %i.iy = icmp samesign ugt i32 %i.id, 1199566847
  br i1 %i.iy, label %bb.bl, label %bb.bk, !prof !73

bb.bk:                                            ; preds = %bb.bj
  %i.iz = add nuw nsw i32 %i.id, 134221823
  %i.ja = lshr i32 %i.id, 13
  %i.jb = and i32 %i.ja, 1
  %i.jc = add nuw nsw i32 %i.iz, %i.jb
  %i.jd = lshr i32 %i.jc, 13
  %i.je = and i32 %i.ie, 32768
  %i.jf = or i32 %i.jd, %i.je
  %i.jg = trunc i32 %i.jf to i16
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bl:                                            ; preds = %bb.bj
  %i.jh = or disjoint i16 %i.ig, 31744
  br label %_ZN9Imath_3_24halfmLEf.exit.us

bb.bm:                                            ; preds = %bb.bi
  %i.ji = or disjoint i16 %i.ig, 31744            ; 2 uses
  %i.jj = icmp eq i32 %i.id, 2139095040
  br i1 %i.jj, label %_ZN9Imath_3_24halfmLEf.exit.us, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jk = lshr i32 %i.id, 13
  %i.jl = and i32 %i.jk, 1023                     ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  %i.jn = zext i1 %i.jm to i16
  %i.jo = trunc nuw nsw i32 %i.jl to i16
  %i.jp = or i16 %i.jo, %i.jn
  %i.jq = or disjoint i16 %i.jp, %i.ji
  br label %_ZN9Imath_3_24halfmLEf.exit.us

_ZN9Imath_3_24halfmLEf.exit.us:                   ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bh, %bb.bg, %bb.be
  %.033.i.i.i.us = phi i16 [ %i.ig, %bb.be ], [ %i.jq, %bb.bn ], [ %i.jh, %bb.bl ], [ %i.jg, %bb.bk ], [ %i.ji, %bb.bm ], [ %i.iw, %bb.bh ], [ %i.is, %bb.bg ]
  store i16 %.033.i.i.i.us, ptr %i.ht, align 2, !tbaa !81
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ht, i64 2 ; 2 uses
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !80
  %i.jt = zext i16 %i.js to i64
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.jt
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !51
  %i.jw = fmul float %i.jv, %i.hu                 ; 2 uses
  %i.jx = bitcast float %i.jw to i32
  %i.jy = call float @llvm.fabs.f32(float %i.jw)
  %i.jz = bitcast float %i.jy to i32              ; 10 uses
  %i.ka = lshr i32 %i.jx, 16                      ; 3 uses
  %i.kb = trunc nuw i32 %i.ka to i16
  %i.kc = and i16 %i.kb, -32768                   ; 3 uses
  %i.kd = icmp samesign ugt i32 %i.jz, 947912703
  br i1 %i.kd, label %bb.bs, label %bb.bo

bb.bo:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.ke = icmp samesign ult i32 %i.jz, 855638017
  br i1 %i.ke, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kf = lshr i32 %i.jz, 23                      ; 2 uses
  %i.kg = sub nuw nsw i32 126, %i.kf
  %i.kh = and i32 %i.jz, 8388607
  %i.ki = or disjoint i32 %i.kh, 8388608          ; 2 uses
  %i.kj = add nsw i32 %i.kf, -94
  %i.kk = shl i32 %i.ki, %i.kj                    ; 2 uses
  %i.kl = lshr i32 %i.ki, %i.kg                   ; 2 uses
  %i.km = and i32 %i.ka, 32768
  %i.kn = or i32 %i.kl, %i.km
  %i.ko = trunc nuw i32 %i.kn to i16              ; 2 uses
  %i.kp = icmp ugt i32 %i.kk, -2147483648
  br i1 %i.kp, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.kq = icmp ne i32 %i.kk, -2147483648
  %i.kr = and i32 %i.kl, 1
  %.not.i.i.i240.us = icmp eq i32 %i.kr, 0
  %or.cond.i.i.i241.us = select i1 %i.kq, i1 true, i1 %.not.i.i.i240.us
  br i1 %or.cond.i.i.i241.us, label %_ZN9Imath_3_24halfmLEf.exit243.us, label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.ks = add nuw i16 %i.ko, 1
  br label %_ZN9Imath_3_24halfmLEf.exit243.us

bb.bs:                                            ; preds = %_ZN9Imath_3_24halfmLEf.exit.us
  %i.kt = icmp samesign ugt i32 %i.jz, 2139095039
  br i1 %i.kt, label %bb.bw, label %bb.bt, !prof !73

bb.bt:                                            ; preds = %bb.bs
  %i.ku = icmp samesign ugt i32 %i.jz, 1199566847
  br i1 %i.ku, label %bb.bv, label %bb.bu, !prof !73

bb.bu:                                            ; preds = %bb.bt
  %i.kv = add nuw nsw i32 %i.jz, 134221823
  %i.kw = lshr i32 %i.jz, 13
  %i.kx = and i32 %i.kw, 1
  %i.ky = add nuw nsw i32 %i.kv, %i.kx
end_hunk_0
begin_hunk_1_@_Z9blurImageR11EnvmapImageb:bb.a
bb.hf:                                            ; preds = %bb.es
  br i1 %1, label %bb.hg, label %_ZNSolsEPFRSoS_E.exit288

bb.hg:                                            ; preds = %bb.hf
  %i.ajm = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.8, i64 noundef 11)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287 unwind label %.loopexit.split-lp421 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287: ; preds = %bb.hg
  %i.ajn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout)
          to label %_ZNSolsEPFRSoS_E.exit288 unwind label %.loopexit.split-lp421, !inline_history !24 ; 0 uses

bb.hh:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.ew, %bb.he, %bb.ex, %bb.ev
  %.pn213.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yh, %bb.ev ], [ %i.yi, %bb.ew ], [ %i.yj, %bb.ex ], [ %.pn213.pn.pn, %bb.he ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  br label %bb.hi

bb.hi:                                            ; preds = %bb.eu, %bb.hh, %bb.et
  %.pn213.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.yf, %bb.et ], [ %.pn213.pn.pn.pn.pn.pn.pn, %bb.hh ], [ %i.yg, %bb.eu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  br label %bb.hs

_ZNSolsEPFRSoS_E.exit288:                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit287, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #9
  %i.ajo = invoke noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.hj unwind label %bb.hn

bb.hj:                                            ; preds = %_ZNSolsEPFRSoS_E.exit288
  %i.ajp = load <4 x i32>, ptr %i.ajo, align 4, !tbaa !59
  store <4 x i32> %i.ajp, ptr %20, align 16, !tbaa !59
  invoke void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(16) %20)
          to label %bb.hk unwind label %bb.hn

bb.hk:                                            ; preds = %bb.hj
  %i.ajq = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.ajr = load <2 x i32>, ptr %i.ajq, align 8, !tbaa !59
  %i.ajs = load <2 x i32>, ptr %20, align 16, !tbaa !59
  %i.ajt = add <2 x i32> %i.ajr, splat (i32 1)
  %i.aju = sub <2 x i32> %i.ajt, %i.ajs           ; 2 uses
  %i.ajv = extractelement <2 x i32> %i.aju, i64 0
  %i.ajw = extractelement <2 x i32> %i.aju, i64 1
  %i.ajx = mul nsw i32 %i.ajw, %i.ajv
  %i.ajy = sext i32 %i.ajx to i64
  %i.ajz = shl nsw i64 %i.ajy, 3
  %i.aka = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.hl unwind label %bb.ho

bb.hl:                                            ; preds = %bb.hk
  %i.akb = getelementptr inbounds nuw i8, ptr %i.aka, i64 16
  %i.akc = load ptr, ptr %i.akb, align 8, !tbaa !62
  %i.akd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48) %.1406.lcssa)
          to label %bb.hm unwind label %bb.ho

bb.hm:                                            ; preds = %bb.hl
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 16
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !62
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.akc, ptr align 2 %i.akf, i64 %i.ajz, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  br label %bb.hq

bb.hn:                                            ; preds = %bb.hj, %_ZNSolsEPFRSoS_E.exit288
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.ho:                                            ; preds = %bb.hl, %bb.hk
  %i.akh = landingpad { ptr, i32 }
          cleanup
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn
  %.pn = phi { ptr, i32 } [ %i.akh, %bb.ho ], [ %i.akg, %bb.hn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #9
  br label %bb.hs

bb.hq:                                            ; preds = %bb.hm, %bb.es
  %i.aki = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.akj = load ptr, ptr %i.aki, align 8, !tbaa !62 ; 2 uses
  %i.akk = icmp eq ptr %i.akj, null
  br i1 %i.akk, label %_ZN11EnvmapImageD2Ev.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @_ZdaPv(ptr noundef nonnull %i.akj) #10
  br label %_ZN11EnvmapImageD2Ev.exit

_ZN11EnvmapImageD2Ev.exit:                        ; preds = %bb.hq, %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void

bb.hs:                                            ; preds = %.loopexit420.split.us, %.loopexit.split-lp421, %bb.p, %bb.x, %bb.el, %bb.hi, %bb.hp, %bb.n
  %.pn229.pn = phi { ptr, i32 } [ %i.ar, %bb.n ], [ %.us-phi476, %bb.x ], [ %i.az, %bb.p ], [ %.pn223.pn.pn.pn.pn, %bb.el ], [ %.pn213.pn.pn.pn.pn.pn.pn.pn.pn, %bb.hi ], [ %.pn, %bb.hp ], [ %lpad.loopexit422.us, %.loopexit420.split.us ], [ %lpad.loopexit.split-lp423, %.loopexit.split-lp421 ]
  %i.akl = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.akm = load ptr, ptr %i.akl, align 8, !tbaa !62 ; 2 uses
  %i.akn = icmp eq ptr %i.akm, null
  br i1 %i.akn, label %_ZN11EnvmapImageD2Ev.exit289, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  call void @_ZdaPv(ptr noundef nonnull %i.akm) #10
  br label %_ZN11EnvmapImageD2Ev.exit289

_ZN11EnvmapImageD2Ev.exit289:                     ; preds = %bb.hs, %bb.ht
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  resume { ptr, i32 } %.pn229.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11EnvmapImageC1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZNK11EnvmapImage10dataWindowEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare noundef i32 @_ZNK11EnvmapImage4typeEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_Z10resizeCubeRK11EnvmapImageRS_RKN9Imath_3_23BoxINS3_4Vec2IiEEEEfi(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 4 dereferenceable(16), float noundef, i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN7Imf_3_47CubeMap10sizeOfFaceERKN9Imath_3_23BoxINS1_4Vec2IiEEEE(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN11EnvmapImage6pixelsEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

declare void @_ZN7Imf_3_47CubeMap9directionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEERKNS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec3") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN7Imf_3_47CubeMap13pixelPositionENS_11CubeMapFaceERKN9Imath_3_23BoxINS2_4Vec2IiEEEENS4_IfEE(ptr dead_on_unwind writable sret(%"class.Imath_3_2::Vec2.0") align 4, i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef align 4 dead_on_return) local_unnamed_addr #3

declare void @_ZN11EnvmapImage6resizeEN7Imf_3_46EnvmapERKN9Imath_3_23BoxINS2_4Vec2IiEEEE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZN11EnvmapImage5clearEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!10 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null}
!11 = distinct !{!11, !58}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !58}
!16 = distinct !{!16, !58}
!17 = distinct !{!17, !58}
!18 = distinct !{!18, !58}
!19 = distinct !{!19, !58}
!20 = distinct !{!20, !58}
!21 = distinct !{!21, !58}
!22 = distinct !{!22, !58}
!23 = distinct !{!23, !58}
!24 = distinct !{null}
!25 = !{!"vtable pointer", !4, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"long", !5, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!30 = !{!"any pointer", !5, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !27, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = !{!"_ZTSSt6locale", !34, i64 0}
!36 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !31, i64 40, !32, i64 48, !5, i64 64, !6, i64 192, !33, i64 200, !35, i64 208}
!37 = !{!"p1 _ZTSSo", !30, i64 0}
!38 = !{!"bool", !5, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!43 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !37, i64 216, !5, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!44 = !{!43, !40, i64 240}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!47 = !{!"p1 int", !30, i64 0}
!48 = !{!"p1 short", !30, i64 0}
!49 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !5, i64 56, !5, i64 57, !5, i64 313, !5, i64 569}
!50 = !{!49, !5, i64 56}
!51 = !{!5, !5, i64 0}
!52 = !{!"_ZTSN9Imath_3_24Vec2IiEE", !6, i64 0, !6, i64 4}
!53 = !{!"_ZTSN9Imath_3_23BoxINS_4Vec2IiEEEE", !52, i64 0, !52, i64 8}
!54 = !{!53, !6, i64 8}
!55 = !{!53, !6, i64 0}
!56 = !{!52, !6, i64 0}
!57 = !{!52, !6, i64 4}
!58 = !{!"llvm.loop.mustprogress"}
!59 = !{!6, !6, i64 0}
!60 = !{!"p1 _ZTSN7Imf_3_44RgbaE", !30, i64 0}
!61 = !{!"_ZTSN7Imf_3_47Array2DINS_4RgbaEEE", !27, i64 0, !27, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 16}
!63 = !{!"p1 _ZTS14imath_half_uif", !30, i64 0}
!64 = !{!63, !63, i64 0}
!65 = !{!"float", !5, i64 0}
!66 = !{!"_ZTSN9Imath_3_24Vec2IfEE", !65, i64 0, !65, i64 4}
!67 = !{!66, !65, i64 0}
!68 = !{!66, !65, i64 4}
!70 = !{!"_ZTSN9Imath_3_24Vec3IfEE", !65, i64 0, !65, i64 4, !65, i64 8}
!71 = !{!70, !65, i64 0}
!72 = !{!65, !65, i64 0}
!73 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!74 = !{!"branch_weights", !"expected", i32 1072669, i32 2146410979}
!75 = !{!70, !65, i64 4}
!76 = !{!70, !65, i64 8}
!77 = !{!61, !27, i64 8}
!78 = !{!"short", !5, i64 0}
!79 = !{!"_ZTSN9Imath_3_24halfE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!78, !78, i64 0}
!82 = distinct !{!82, i1 false, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv"}
!83 = distinct !{!83, !82, !"_ZNK9Imath_3_24Vec3IfE10normalizedEv: argument 0"}
!84 = !{!83}
end_hunk_1
