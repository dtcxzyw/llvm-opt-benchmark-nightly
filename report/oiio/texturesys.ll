Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/texturesys?download=true
inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 52
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  %i.azd = fsub float 1.000000e+00, %i.azc
  %i.aze = call float @llvm.fmuladd.f32(float %.0, float %i.azd, float %.03152177)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %.1316 = phi float [ %i.aze, %bb.ca ], [ %.03152177, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01410)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.01447)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.51448)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.thread2053
  %.33182060 = phi float [ %i.lu, %.thread2053 ], [ %.1316, %bb.cb ] ; 2 uses
  %.sroa.01536.42059 = phi <4 x float> [ %.sroa.01536.12174, %.thread2053 ], [ %.sroa.01536.2, %bb.cb ] ; 2 uses
  %.sroa.01534.42058 = phi <4 x float> [ %.sroa.01534.12173, %.thread2053 ], [ %.sroa.01534.2, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  %indvars.iv.next2271 = add nuw nsw i64 %indvars.iv2270, 1 ; 2 uses
  %exitcond2273.not = icmp eq i64 %indvars.iv.next2271, %wide.trip.count
  br i1 %exitcond2273.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !1056

bb.cd:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141
  %.pn = phi { ptr, i32 } [ %i.nh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  resume { ptr, i32 } %.pn

.loopexit2114:                                    ; preds = %bb.x, %bb.bo, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  br label %bb.ch

._crit_edge.loopexit:                             ; preds = %bb.cc
  %.pre2302 = load <4 x i32>, ptr %22, align 16, !tbaa !274
  %i.azf = bitcast <4 x float> %.sroa.01536.42059 to <4 x i32>
  %i.azg = bitcast <4 x float> %.sroa.01534.42058 to <4 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.azh = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.pre2302, %._crit_edge.loopexit ]
  %.sroa.01534.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azg, %._crit_edge.loopexit ]
  %.sroa.01536.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.azf, %._crit_edge.loopexit ]
  %.0315.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.33182060, %._crit_edge.loopexit ]
  %i.azi = sext i32 %9 to i64
  %i.azj = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.azi
  %.sroa.01179.0.copyload2072 = load <4 x i32>, ptr %i.azj, align 16, !tbaa !274 ; 4 uses
  %i.azk = and <4 x i32> %i.azh, %.sroa.01179.0.copyload2072
  store <4 x i32> %i.azk, ptr %22, align 16
  br i1 %i.av, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %._crit_edge
  %i.azl = fsub float 1.000000e+00, %.0315.lcssa
  %i.azm = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.azn = load float, ptr %i.azm, align 8, !tbaa !444
  %i.azo = fmul float %i.azl, %i.azn
  %i.azp = insertelement <4 x float> poison, float %i.azo, i64 0
  %i.azq = xor <4 x i32> %.sroa.01179.0.copyload2072, splat (i32 -1)
  %i.azr = bitcast <4 x float> %i.azp to <4 x i32>
  %i.azs = shufflevector <4 x i32> %i.azr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.azt = and <4 x i32> %i.azs, %i.azq
  %i.azu = load <4 x float>, ptr %22, align 16, !tbaa !274
  %i.azv = bitcast <4 x i32> %i.azt to <4 x float>
  %i.azw = fadd <4 x float> %i.azu, %i.azv
  store <4 x float> %i.azw, ptr %22, align 16, !tbaa !274
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !559
  br i1 %.not370, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.azx = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01536.1.lcssa
  store <4 x i32> %i.azx, ptr %12, align 16
  %i.azy = and <4 x i32> %.sroa.01179.0.copyload2072, %.sroa.01534.1.lcssa
  store <4 x i32> %i.azy, ptr %13, align 16
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %.loopexit2114
  %i.azz = phi i1 [ true, %bb.cf ], [ true, %bb.cg ], [ false, %.loopexit2114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #3
  ret i1 %i.azz
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7) local_unnamed_addr #23 !guid !1062 {
_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50:
  %i.a = fmul float %0, %0
  %i.b = fmul float %1, %1
  %i.c = fmul float %2, %2
  %i.d = fmul float %3, %3
  %i.e = fadd float %i.b, %i.d
  %i.f = fpext float %i.e to double               ; 4 uses
  %i.g = fmul float %2, %3
  %i.h = tail call float @llvm.fmuladd.f32(float %0, float %1, float %i.g)
  %i.i = fpext float %i.h to double
  %i.j = fmul double %i.i, -2.000000e+00          ; 5 uses
  %i.k = fadd float %i.a, %i.c
  %i.l = fpext float %i.k to double               ; 4 uses
  %i.m = fsub double %i.f, %i.l                   ; 3 uses
  %i.n = tail call double @hypot(double noundef %i.m, double noundef %i.j) #50 ; 2 uses
  %i.o = fadd double %i.l, %i.f                   ; 2 uses
  %i.p = fsub double %i.o, %i.n
  %i.q = fadd double %i.o, %i.n
  %i.r = insertelement <2 x double> poison, double %i.p, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.q, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double f0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  store float %i.aa, ptr %4, align 4, !tbaa !266
  %i.ab = extractelement <2 x float> %i.z, i64 0
  store float %i.ab, ptr %5, align 4, !tbaa !266
  %i.ac = fptrunc double %i.j to float            ; 3 uses
  %i.ad = fptrunc double %i.m to float
  %i.ae = tail call float @llvm.fabs.f32(float %i.ad) ; 4 uses
  %i.af = tail call float @llvm.fabs.f32(float %i.ac) ; 4 uses
  %i.ag = fcmp ogt float %i.af, %i.ae             ; 2 uses
  %i.ah = fcmp oeq float %i.ac, 0.000000e+00
  br i1 %i.ah, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.a

bb.a:                                             ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50
  %i.ai = fcmp oeq float %i.ae, %i.af
  br i1 %i.ai, label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = fdiv float %i.ae, %i.af
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

bb.d:                                             ; preds = %bb.b
  %i.ak = fdiv float %i.af, %i.ae
  br label %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit

_ZN11OpenImageIO4v3_110fast_atan2Eff.exit:        ; preds = %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50, %bb.a, %bb.c, %bb.d
  %i.al = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50 ], [ 1.000000e+00, %bb.a ], [ %i.aj, %bb.c ], [ %i.ak, %bb.d ]
  %i.am = fadd float %i.al, -1.000000e+00
  %i.an = fadd float %i.am, 1.000000e+00          ; 3 uses
  %i.ao = fmul float %i.an, %i.an                 ; 3 uses
  %i.ap = fmul contract float %i.ao, f0x3EDC3EAD
  %i.aq = fadd contract float %i.ap, 1.000000e+00
  %i.ar = fmul float %i.an, %i.aq
  %i.as = fmul contract float %i.ao, 5.793550e-02
  %i.at = fadd contract float %i.as, f0x3F43547E
  %i.au = fmul contract float %i.ao, %i.at
  %i.av = fadd contract float %i.au, 1.000000e+00
  %i.aw = fdiv float %i.ar, %i.av                 ; 2 uses
  %i.ax = fsub float f0x3FC90FDB, %i.aw
  %.0.i = select i1 %i.ag, float %i.ax, float %i.aw ; 2 uses
  %i.ay = bitcast double %i.m to i64
  %i.az = fsub float f0x40490FDB, %.0.i
  %.not.i57 = icmp slt i64 %i.ay, 0
  %.1.i = select i1 %.not.i57, float %i.az, float %.0.i
  %i.ba = tail call noundef float @llvm.copysign.f32(float %.1.i, float %i.ac)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float 5.000000e-01, float f0x3FC90FDB)
  store float %i.bb, ptr %6, align 4, !tbaa !266
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  %i.bc = fmul double %i.j, %i.j
  %i.bd = fmul double %i.bc, -2.500000e-01
  %i.be = tail call double @llvm.fmuladd.f64(double %i.f, double %i.l, double %i.bd) ; 2 uses
  %i.bf = fdiv double 1.000000e+00, %i.be         ; 3 uses
  %8 = fmul double %i.bf, %i.f
  %9 = fmul double %i.j, %i.bf
  %10 = fmul double %i.bf, %i.l
  %i.bg = insertelement <4 x double> poison, double %8, i64 0
  %i.bh = insertelement <4 x double> %i.bg, double %9, i64 1
  %11 = insertelement <4 x double> %i.bh, double %10, i64 2
  %12 = insertelement <4 x double> %11, double %i.be, i64 3
  %i.bi = fptrunc <4 x double> %12 to <4 x float>
  store <4 x float> %i.bi, ptr %7, align 4, !tbaa !266
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9, float noundef %10) local_unnamed_addr #23 !guid !1066 {
bb.a:
  %sincos.i = tail call { float, float } @llvm.sincos.f32(float %1) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  store float %sin.i, ptr %5, align 4, !tbaa !266
  %i.a = fsub float %2, %3
  %i.b = fmul float %i.a, 2.000000e+00            ; 3 uses
  %i.c = fmul float %cos.i, %i.b
  store float %i.c, ptr %4, align 4, !tbaa !266
  %i.d = load float, ptr %5, align 4, !tbaa !266
  %i.e = fmul float %i.b, %i.d
  store float %i.e, ptr %5, align 4, !tbaa !266
  br i1 %9, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %7, align 4, !tbaa !266
  store float 1.000000e+00, ptr %6, align 4, !tbaa !266
  %i.f = tail call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float -1.000000e+00)
  %i.g = fmul float %i.f, f0x3F2EC4BC             ; 2 uses
  %i.h = tail call float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.i = fcmp ogt float %i.h, f0x3F7FFFFF
  %spec.store.select.i = select i1 %i.i, float f0x3F7FFFFF, float %i.h ; 2 uses
  %i.j = fsub float 1.000000e+00, %spec.store.select.i
  %i.k = fadd float %spec.store.select.i, 1.000000e+00
  %i.l = fmul float %i.j, %i.k                    ; 2 uses
  %.inv70 = fcmp oge float %i.l, f0x00800000
  %.0.i.i = select i1 %.inv70, float %i.l, float f0x00800000 ; 2 uses
  %i.m = fcmp ogt float %.0.i.i, f0x7F7FFFFF
  %i.n = bitcast float %.0.i.i to i32
  %i.o = select i1 %i.m, i32 2139095039, i32 %i.n ; 2 uses
  %i.p = lshr i32 %i.o, 23
  %i.q = add nsw i32 %i.p, -127
  %i.r = and i32 %i.o, 8388607
  %i.s = or disjoint i32 %i.r, 1065353216
  %i.t = bitcast i32 %i.s to float
  %i.u = fadd float %i.t, -1.000000e+00           ; 9 uses
  %i.v = fmul float %i.u, %i.u                    ; 2 uses
  %i.w = fmul float %i.v, %i.v
  %i.x = fmul nnan contract float %i.u, f0x3C188B0D
  %i.y = fsub nnan contract float f0x3D5541C9, %i.x
  %i.z = fmul nnan contract float %i.u, f0x3EF5162D
  %i.aa = fadd nnan contract float %i.z, f0xBF389E54
  %i.ab = fmul contract float %i.u, %i.y
  %i.ac = fadd contract float %i.ab, f0xBE0CD4FD
  %i.ad = fmul contract float %i.u, %i.ac
  %i.ae = fadd contract float %i.ad, f0x3E77ADBD
  %i.af = fmul contract float %i.u, %i.ae
  %i.ag = fadd contract float %i.af, f0xBEB1D206
  %i.ah = fmul contract float %i.u, %i.aa
  %i.ai = fadd contract float %i.ah, f0x3FB8AA10
  %i.aj = fmul float %i.u, %i.ai
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ag, float %i.aj)
  %i.al = sitofp i32 %i.q to float
  %i.am = fadd float %i.ak, %i.al
  %i.an = fmul float %i.am, f0x3F317218           ; 3 uses
  %i.ao = fcmp ogt float %i.an, -5.000000e+00
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = fsub float -2.500000e+00, %i.an         ; 8 uses
  %i.aq = fmul nnan contract float %i.ap, f0x32F16588
  %i.ar = fadd nnan contract float %i.aq, f0x34B84B36
  %i.as = fmul contract float %i.ap, %i.ar
  %i.at = fadd contract float %i.as, f0xB66C7357
  %i.au = fmul contract float %i.ap, %i.at
  %i.av = fadd contract float %i.au, f0xB6935AC1
  %i.aw = fmul contract float %i.ap, %i.av
  %i.ax = fadd contract float %i.aw, f0x396532DB
  %i.ay = fmul contract float %i.ap, %i.ax
  %i.az = fadd contract float %i.ay, f0xBAA45408
  %i.ba = fmul contract float %i.ap, %i.az
  %i.bb = fadd contract float %i.ba, f0xBB88E4EF
  %i.bc = fmul contract float %i.ap, %i.bb
  %i.bd = fadd contract float %i.bc, f0x3E7C8F63
  %i.be = fmul contract float %i.ap, %i.bd
  %i.bf = fadd contract float %i.be, f0x3FC02E2F
  br label %_ZN11OpenImageIO4v3_19fast_ierfEf.exit

bb.d:                                             ; preds = %bb.b
  %i.bg = fneg float %i.an
  %i.bh = tail call float @llvm.sqrt.f32(float %i.bg)
  %i.bi = fadd float %i.bh, -3.000000e+00         ; 8 uses
  %i.bj = fmul contract float %i.bi, f0x3951F09B
  %i.bk = fsub contract float f0x38D3B56B, %i.bj
  %i.bl = fmul contract float %i.bi, %i.bk
  %i.bm = fadd contract float %i.bl, f0x3AB0DC72
  %i.bn = fmul contract float %i.bi, %i.bm
  %i.bo = fadd contract float %i.bn, f0xBB70BDE7
  %i.bp = fmul contract float %i.bi, %i.bo
  %i.bq = fadd contract float %i.bp, f0x3BBC127B
  %i.br = fmul contract float %i.bi, %i.bq
  %i.bs = fadd contract float %i.br, f0xBBF9C5D7
  %i.bt = fmul contract float %i.bi, %i.bs
  %i.bu = fadd contract float %i.bt, f0x3C1AA57E
  %i.bv = fmul contract float %i.bi, %i.bu
  %i.bw = fadd contract float %i.bv, f0x3F8036DB
  %i.bx = fmul contract float %i.bi, %i.bw
  %i.by = fadd contract float %i.bx, f0x40354F7E
  br label %_ZN11OpenImageIO4v3_19fast_ierfEf.exit

_ZN11OpenImageIO4v3_19fast_ierfEf.exit:           ; preds = %bb.c, %bb.d
  %.0.i = phi float [ %i.bf, %bb.c ], [ %i.by, %bb.d ]
  %i.bz = fmul float %i.g, %.0.i
  %i.ca = fmul float %i.bz, f0x3FB504F3
  store float %i.ca, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.cb = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float -1.000000e+00)
  %i.cc = fptosi float %i.cb to i32               ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 5 uses
  %i.cd = uitofp nneg i32 %.sroa.speculated to float
  %i.ce = fdiv float 1.000000e+00, %i.cd
  store float %i.ce, ptr %6, align 4, !tbaa !266
  switch i32 %.sroa.speculated, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store float 1.000000e+00, ptr %7, align 4, !tbaa !266
  store float 0.000000e+00, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  store <2 x float> splat (float 5.000000e-01), ptr %7, align 4, !tbaa !266
  store <2 x float> <float -5.000000e-01, float 5.000000e-01>, ptr %8, align 4, !tbaa !266
  br label %.loopexit

bb.h:                                             ; preds = %bb.e
  %i.cf = fdiv float %2, %i.b
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  br label %bb.i

.preheader:                                       ; preds = %bb.i
  %min.iters.check = icmp slt i32 %i.cc, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.do, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.cg, align 4, !tbaa !266
  %i.ch = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.ch, ptr %i.cg, align 4, !tbaa !266
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !1063

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.05371 = phi float [ 0.000000e+00, %bb.h ], [ %i.do, %bb.i ]
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fadd nnan float %i.ck, 5.000000e-01
  %i.cm = fmul nnan float %i.cl, 2.000000e+00
  %i.cn = load float, ptr %6, align 4, !tbaa !266
  %i.co = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.cn, float -1.000000e+00) ; 2 uses
  %i.cp = fmul float %i.cf, %i.co                 ; 2 uses
  %i.cq = fmul float %i.cp, -2.000000e+00
  %i.cr = fmul float %i.cp, %i.cq
  %i.cs = fmul float %i.cr, f0x3FB8AA3B           ; 2 uses
  %.inv = fcmp oge float %i.cs, -1.260000e+02
  %.0.i.i55 = select i1 %.inv, float %i.cs, float -1.260000e+02 ; 2 uses
  %i.ct = fcmp ogt float %.0.i.i55, 1.260000e+02
  %.1.i.i56 = select i1 %i.ct, float 1.260000e+02, float %.0.i.i55 ; 2 uses
  %i.cu = fptosi float %.1.i.i56 to i32           ; 2 uses
  %i.cv = sitofp i32 %i.cu to float
  %i.cw = fsub float %i.cv, %.1.i.i56
  %i.cx = fadd float %i.cw, 1.000000e+00
  %i.cy = fsub float 1.000000e+00, %i.cx          ; 5 uses
  %i.cz = fmul contract float %i.cy, f0x3AAEC44E
  %i.da = fadd contract float %i.cz, f0x3C20BB9A
  %i.db = fmul contract float %i.cy, %i.da
  %i.dc = fadd contract float %i.db, f0x3D636733
  %i.dd = fmul contract float %i.cy, %i.dc
  %i.de = fadd contract float %i.dd, f0x3E75F192
end_hunk_0
