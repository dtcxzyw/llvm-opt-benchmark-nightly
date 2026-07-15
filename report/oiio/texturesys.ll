inline.NumInlined: 5128
inline.NumDeleted: 1476
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 52
loop-unroll.NumUnrolled: 108
begin_hunk_0_@_ZN11OpenImageIO4v3_117TextureSystemImpl14sample_bicubicEiPKfS3_iRNS0_14ImageCacheFileEPNS0_23ImageCachePerThreadInfoERNS0_13TextureOpt_v2EiiS3_PNS0_4simd7vfloat4ESC_SC_:bb.a
  br label %.loopexit2192

bb.ce:                                            ; preds = %bb.n, %.critedge.jt0
  %.sroa.01536.4.jt0 = phi <4 x float> [ %.sroa.01536.2, %.critedge.jt0 ], [ %.sroa.01536.12245, %bb.n ] ; 2 uses
  %.sroa.01534.4.jt0 = phi <4 x float> [ %.sroa.01534.2, %.critedge.jt0 ], [ %.sroa.01534.12246, %bb.n ] ; 2 uses
  %.3315.jt0 = phi float [ %.1313, %.critedge.jt0 ], [ %i.mn, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #3
  %indvars.iv.next2345 = add nuw nsw i64 %indvars.iv2344, 1 ; 2 uses
  %exitcond2347.not = icmp eq i64 %indvars.iv.next2345, %wide.trip.count
  br i1 %exitcond2347.not, label %._crit_edge.loopexit, label %bb.h, !llvm.loop !534

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141
  %.pn = phi { ptr, i32 } [ %i.od, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1141 ], [ %eh.lpad-body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit1151 ]
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

._crit_edge.loopexit:                             ; preds = %bb.ce
  %.pre2376 = load <4 x i32>, ptr %22, align 16, !tbaa !34
  %i.bac = bitcast <4 x float> %.sroa.01536.4.jt0 to <4 x i32>
  %i.bad = bitcast <4 x float> %.sroa.01534.4.jt0 to <4 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit
  %i.bae = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.pre2376, %._crit_edge.loopexit ]
  %.sroa.01536.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.bac, %._crit_edge.loopexit ]
  %.sroa.01534.1.lcssa = phi <4 x i32> [ zeroinitializer, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %i.bad, %._crit_edge.loopexit ]
  %.0312.lcssa = phi float [ 0.000000e+00, %_ZN11OpenImageIO4v3_16TileIDC2ERNS0_14ImageCacheFileEiiiiiiii.exit ], [ %.3315.jt0, %._crit_edge.loopexit ]
  %i.baf = sext i32 %9 to i64
  %i.bag = getelementptr inbounds [16 x i8], ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 %i.baf
  %.sroa.01179.0.copyload2150 = load <4 x i32>, ptr %i.bag, align 16, !tbaa !34 ; 4 uses
  %i.bah = and <4 x i32> %i.bae, %.sroa.01179.0.copyload2150
  store <4 x i32> %i.bah, ptr %22, align 16
  br i1 %i.av, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %._crit_edge
  %i.bai = fsub float 1.000000e+00, %.0312.lcssa
  %i.baj = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.bak = load float, ptr %i.baj, align 8, !tbaa !259
  %i.bal = fmul float %i.bai, %i.bak
  %i.bam = insertelement <4 x float> poison, float %i.bal, i64 0
  %i.ban = xor <4 x i32> %.sroa.01179.0.copyload2150, splat (i32 -1)
  %i.bao = bitcast <4 x float> %i.bam to <4 x i32>
  %i.bap = shufflevector <4 x i32> %i.bao, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.baq = and <4 x i32> %i.bap, %i.ban
  %i.bar = load <4 x float>, ptr %22, align 16, !tbaa !34
  %i.bas = bitcast <4 x i32> %i.baq to <4 x float>
  %i.bat = fadd <4 x float> %i.bar, %i.bas
  store <4 x float> %i.bat, ptr %22, align 16, !tbaa !34
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %22, i64 16, i1 false), !tbaa.struct !518
  br i1 %.not370, label %.loopexit2192, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.bau = and <4 x i32> %.sroa.01179.0.copyload2150, %.sroa.01536.1.lcssa
  store <4 x i32> %i.bau, ptr %12, align 16
  %i.bav = and <4 x i32> %.sroa.01179.0.copyload2150, %.sroa.01534.1.lcssa
  store <4 x i32> %i.bav, ptr %13, align 16
  br label %.loopexit2192

.loopexit2192:                                    ; preds = %.loopexit2409, %bb.ch, %bb.ci
  %i.baw = phi i1 [ true, %bb.ci ], [ true, %bb.ch ], [ false, %.loopexit2409 ]
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
  ret i1 %i.baw
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #25

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7) local_unnamed_addr #23 {
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
  %i.p = fadd double %i.o, %i.n
  %i.q = fsub double %i.o, %i.n
  %i.r = insertelement <2 x double> poison, double %i.q, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.p, i64 1
  %i.t = fmul <2 x double> %i.s, splat (double 5.000000e-01) ; 2 uses
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double f0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %i.z = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.aa = extractelement <2 x float> %i.z, i64 1
  store float %i.aa, ptr %4, align 4, !tbaa !26
  %i.ab = extractelement <2 x float> %i.z, i64 0
  store float %i.ab, ptr %5, align 4, !tbaa !26
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
  store float %i.bb, ptr %6, align 4, !tbaa !26
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  %i.bc = fmul double %i.j, %i.j
  %i.bd = fmul double %i.bc, -2.500000e-01
  %i.be = tail call double @llvm.fmuladd.f64(double %i.f, double %i.l, double %i.bd) ; 2 uses
  %i.bf = fdiv double 1.000000e+00, %i.be
  %i.bg = insertelement <4 x double> poison, double %i.f, i64 0
  %i.bh = insertelement <4 x double> %i.bg, double %i.j, i64 1
  %i.bi = insertelement <4 x double> %i.bh, double %i.l, i64 2
  %i.bj = insertelement <4 x double> %i.bi, double %i.be, i64 3
  %i.bk = insertelement <4 x double> <double poison, double 1.000000e+00, double poison, double poison>, double %i.bf, i64 0
  %i.bl = shufflevector <4 x double> %i.bk, <4 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bm = fmul <4 x double> %i.bj, %i.bl
  %i.bn = fptrunc <4 x double> %i.bm to <4 x float>
  store <4 x float> %i.bn, ptr %7, align 4, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN11OpenImageIO4v3_110fast_atan2Eff.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef %7, ptr noundef %8, i1 noundef zeroext %9, float noundef %10) local_unnamed_addr #23 {
bb.a:
  %11 = tail call noundef float @llvm.sin.f32(float %1)
  store float %11, ptr %5, align 4, !tbaa !26
  %12 = tail call noundef float @llvm.cos.f32(float %1)
  %i.a = fsub float %2, %3
  %i.b = fmul float %i.a, 2.000000e+00            ; 3 uses
  %i.c = fmul float %12, %i.b
  store float %i.c, ptr %4, align 4, !tbaa !26
  %i.d = load float, ptr %5, align 4, !tbaa !26
  %i.e = fmul float %i.b, %i.d
  store float %i.e, ptr %5, align 4, !tbaa !26
  br i1 %9, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %7, align 4, !tbaa !26
  store float 1.000000e+00, ptr %6, align 4, !tbaa !26
  %i.f = tail call float @llvm.fmuladd.f32(float %10, float 2.000000e+00, float -1.000000e+00)
  %i.g = fmul float %i.f, f0x3F2EC4BC             ; 2 uses
  %i.h = tail call float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.i = fcmp ogt float %i.h, f0x3F7FFFFF
  %.041.i = select i1 %i.i, float f0x3F7FFFFF, float %i.h ; 2 uses
  %i.j = fsub float 1.000000e+00, %.041.i
  %i.k = fadd float %.041.i, 1.000000e+00
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
  store float %i.ca, ptr %8, align 4, !tbaa !26
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  %i.cb = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float -1.000000e+00)
  %i.cc = fptosi float %i.cb to i32               ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1) ; 5 uses
  %i.cd = uitofp nneg i32 %.sroa.speculated to float
  %i.ce = fdiv float 1.000000e+00, %i.cd
  store float %i.ce, ptr %6, align 4, !tbaa !26
  switch i32 %.sroa.speculated, label %bb.h [
    i32 1, label %bb.f
    i32 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  store float 1.000000e+00, ptr %7, align 4, !tbaa !26
  store float 0.000000e+00, ptr %8, align 4, !tbaa !26
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  store <2 x float> splat (float 5.000000e-01), ptr %7, align 4, !tbaa !26
  store <2 x float> <float -5.000000e-01, float 5.000000e-01>, ptr %8, align 4, !tbaa !26
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
  %wide.load = load <4 x float>, ptr %i.cg, align 4, !tbaa !26
  %i.ch = fdiv <4 x float> %wide.load, %broadcast.splat
  store <4 x float> %i.ch, ptr %i.cg, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !535

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.i:                                             ; preds = %bb.h, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.h ], [ %indvars.iv.next, %bb.i ] ; 4 uses
  %.05272 = phi float [ 0.000000e+00, %bb.h ], [ %i.do, %bb.i ]
  %i.cj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ck = uitofp nneg i32 %i.cj to float
  %i.cl = fadd nnan float %i.ck, 5.000000e-01
  %i.cm = fmul nnan float %i.cl, 2.000000e+00
  %i.cn = load float, ptr %6, align 4, !tbaa !26
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
  %i.df = fmul contract float %i.cy, %i.de
  %i.dg = fadd contract float %i.df, f0x3F3171F1
  %i.dh = fmul contract float %i.cy, %i.dg
  %i.di = fadd contract float %i.dh, 1.000000e+00
  %i.dj = bitcast float %i.di to i32
  %i.dk = shl i32 %i.cu, 23
  %i.dl = add i32 %i.dk, %i.dj                    ; 2 uses
  %i.dm = bitcast i32 %i.dl to float
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv
  store i32 %i.dl, ptr %i.dn, align 4, !tbaa !26
  %i.do = fadd float %.05272, %i.dm               ; 3 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv
  store float %i.co, ptr %i.dp, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %bb.i, !llvm.loop !536

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffff:bb.a
  %i.eh = fadd <2 x float> %i.eg, %i.ee           ; 2 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 0 ; 3 uses
  store float %i.ei, ptr %i.d, align 4, !tbaa !26
  %i.ej = extractelement <2 x float> %i.eh, i64 1 ; 3 uses
  store float %i.ej, ptr %i.e, align 4, !tbaa !26
  %i.ek = fcmp ogt float %i.ej, %i.ei
  br i1 %i.ek, label %bb.k, label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

bb.k:                                             ; preds = %bb.j
  store float %i.ei, ptr %i.e, align 4, !tbaa !26
  store float %i.ej, ptr %i.d, align 4, !tbaa !26
  %i.el = fpext float %i.cc to double
  %i.em = fadd double %i.el, f0x3FF921FB54442D18
  %i.en = fptrunc double %i.em to float
  store float %i.en, ptr %i.f, align 4, !tbaa !26
  br label %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit

_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit: ; preds = %_ZN11OpenImageIO4v3_112adjust_widthERfS1_S1_S1_ff.exit, %bb.j, %bb.k
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.65, i64 noundef 7) ; 0 uses
  %i.ep = fpext float %6 to double
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, double noundef %i.ep) ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 32, ptr %i.a, align 1, !tbaa !34
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.es = getelementptr i8, ptr %i.er, i64 -24
  %i.et = load i64, ptr %i.es, align 8
  %i.eu = getelementptr inbounds i8, ptr %i.eq, i64 %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !582
  %.not.i125 = icmp eq i64 %i.ew, 0
  br i1 %.not.i125, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ex = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull %i.a, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_111adjust_blurERfS1_S1_ff.exit
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, i8 noundef signext 32) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127: ; preds = %bb.l, %bb.m
  %.0.i126 = phi ptr [ %i.ex, %bb.l ], [ %i.eq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ez = fpext float %7 to double
  %i.fa = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %.0.i126, double noundef %i.ez) ; 2 uses
  %i.fb = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, ptr noundef nonnull @.str.66, i64 noundef 13) ; 0 uses
  %i.fc = load float, ptr %i.d, align 4, !tbaa !26
  %i.fd = fpext float %i.fc to double
  %i.fe = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, double noundef %i.fd) ; 2 uses
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef nonnull @.str.63, i64 noundef 8) ; 0 uses
  %i.fg = load float, ptr %i.e, align 4, !tbaa !26
  %i.fh = fpext float %i.fg to double
  %i.fi = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, double noundef %i.fh)
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fi, ptr noundef nonnull @.str.42, i64 noundef 2) ; 0 uses
  %i.fk = load float, ptr %i.d, align 4, !tbaa !26 ; 3 uses
  %i.fl = load float, ptr %i.e, align 4, !tbaa !26 ; 3 uses
  %i.fm = fdiv float %i.fk, %i.fl                 ; 2 uses
  %.inv.i128 = fcmp oge float %i.fm, 1.000000e+00
  %.0.i.i129 = select i1 %.inv.i128, float %i.fm, float 1.000000e+00 ; 2 uses
  %i.fn = fcmp ogt float %.0.i.i129, 1.000000e+06
  %.1.i.i = select i1 %i.fn, float 1.000000e+06, float %.0.i.i129 ; 2 uses
  %i.fo = fcmp ogt float %.1.i.i, 3.200000e+01
  br i1 %i.fo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127
  %i.fp = call float @llvm.fmuladd.f32(float %i.fl, float 3.200000e+01, float %i.fk)
  %i.fq = fmul float %i.fp, 5.000000e-01          ; 3 uses
  store float %i.fq, ptr %i.d, align 4, !tbaa !26
  %i.fr = fmul float %i.fq, 3.125000e-02          ; 2 uses
  store float %i.fr, ptr %i.e, align 4, !tbaa !26
  br label %bb.o

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127, %bb.n
  %i.fs = phi float [ %i.fr, %bb.n ], [ %i.fl, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127 ]
  %i.ft = phi float [ %i.fq, %bb.n ], [ %i.fk, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127 ]
  %.0.i130 = phi float [ 3.200000e+01, %bb.n ], [ %.1.i.i, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit127 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !114
  %i.fw = and i32 %i.fv, 2
  %i.fx = icmp ne i32 %i.fw, 0
  %i.fy = alloca [1024 x i8], align 16            ; 8 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 256 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #3
  %i.ga = load float, ptr %i.f, align 4, !tbaa !26
  %i.gb = call noundef i32 @_ZN11OpenImageIO4v3_124compute_ellipse_samplingEffffRfS1_S1_PfS2_bf(float noundef %.0.i130, float noundef %i.ga, float noundef %i.ft, float noundef %i.fs, ptr noundef nonnull align 4 dereferenceable(4) %i.h, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull %i.fy, ptr noundef nonnull %i.fz, i1 noundef zeroext %i.fx, float noundef 5.000000e-01) ; 4 uses
  %i.gc = load float, ptr %i.h, align 4, !tbaa !26
  %i.gd = fmul float %i.gc, 5.000000e-01
  store float %i.gd, ptr %i.h, align 4, !tbaa !26
  %i.ge = load float, ptr %i.i, align 4, !tbaa !26
  %i.gf = fmul float %i.ge, 5.000000e-01
  store float %i.gf, ptr %i.i, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #3
  call void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 256, i32 noundef 256, i32 noundef 3, i64 258) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  invoke void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(160) %8, i32 noundef 1)
          to label %bb.p unwind label %bb.r

bb.p:                                             ; preds = %bb.o
  store i32 -2147483648, ptr %10, align 8, !tbaa !332
  %i.gg = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gg, i8 0, i64 28, i1 false)
  %i.gh = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4fillERNS0_8ImageBufENS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE4grey, i64 3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %10, i32 noundef 0)
          to label %.preheader unwind label %bb.s ; 0 uses

.preheader:                                       ; preds = %bb.p
  %i.gi = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.gj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.t

bb.q:                                             ; preds = %bb.u
  %i.gk = fmul float %.0163, 1.000000e+02
  %i.gl = fptosi float %i.gk to i32
  %i.gm = add nsw i32 %i.gl, 128
  %i.gn = fmul float %.0164, 1.000000e+02
  %i.go = fptosi float %i.gn to i32
  %i.gp = sub nsw i32 128, %i.go
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE3red, ptr %11, align 8, !tbaa !589
  %i.gq = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 3, ptr %i.gq, align 8, !tbaa !591
  store i32 -2147483648, ptr %12, align 8, !tbaa !332
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.gr, i8 0, i64 28, i1 false)
  %i.gs = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.gm, i32 noundef %i.gp, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %11, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %12, i32 noundef 0)
          to label %bb.y unwind label %bb.ac      ; 0 uses

bb.r:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.s:                                             ; preds = %bb.p
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.t:                                             ; preds = %.preheader, %bb.u
  %.0111168 = phi i32 [ 0, %.preheader ], [ %i.gz, %bb.u ] ; 3 uses
  %i.gv = add nsw i32 %.0111168, -128
  %i.gw = sitofp i32 %i.gv to float
  %i.gx = fdiv float %i.gw, 1.000000e+02          ; 3 uses
  %i.gy = sub nuw nsw i32 255, %.0111168
  br label %bb.v

bb.u:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %i.gz = add nuw nsw i32 %.0111168, 1            ; 2 uses
  %exitcond175.not = icmp eq i32 %i.gz, 256
  br i1 %exitcond175.not, label %bb.q, label %bb.t, !llvm.loop !592

bb.v:                                             ; preds = %bb.t, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit
  %.0112167 = phi i32 [ 0, %bb.t ], [ %i.ho, %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit ] ; 3 uses
  %i.ha = add nsw i32 %.0112167, -128
  %i.hb = sitofp i32 %i.ha to float
  %i.hc = fdiv float %i.hb, 1.000000e+02          ; 3 uses
  %i.hd = load float, ptr %i.g, align 16, !tbaa !26
  %i.he = fmul float %i.hc, %i.hd
  %i.hf = load float, ptr %i.gi, align 4, !tbaa !26
  %i.hg = fmul float %i.hc, %i.hf
  %i.hh = fmul float %i.gx, %i.hg
  %i.hi = call float @llvm.fmuladd.f32(float %i.he, float %i.hc, float %i.hh)
  %i.hj = load float, ptr %i.gj, align 8, !tbaa !26
  %i.hk = fmul float %i.gx, %i.hj
  %i.hl = call float @llvm.fmuladd.f32(float %i.hk, float %i.gx, float %i.hi)
  %i.hm = fcmp olt float %i.hl, 1.000000e+00
  br i1 %i.hm, label %bb.w, label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiiNS0_4spanIKfLm18446744073709551615EEE(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %.0112167, i32 noundef %i.gy, i32 noundef 0, ptr nonnull @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE4dark, i64 3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN11OpenImageIO4v3_18ImageBuf8setpixelEiiNS0_4spanIKfLm18446744073709551615EEE.exit: ; preds = %bb.w, %bb.v
  %i.ho = add nuw nsw i32 %.0112167, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ho, 256
  br i1 %exitcond.not, label %bb.u, label %bb.v, !llvm.loop !593

bb.y:                                             ; preds = %bb.q
  %i.hp = fmul float %.0165, 1.000000e+02
  %i.hq = fptosi float %i.hp to i32
  %i.hr = add nsw i32 %i.hq, 128
  %i.hs = fmul float %.0166.a, 1.000000e+02
  %i.ht = fptosi float %i.hs to i32
  %i.hu = sub nsw i32 128, %i.ht
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE5green, ptr %13, align 8, !tbaa !589
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 3, ptr %i.hv, align 8, !tbaa !591
  store i32 -2147483648, ptr %14, align 8, !tbaa !332
  %i.hw = getelementptr inbounds nuw i8, ptr %14, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.hw, i8 0, i64 28, i1 false)
  %i.hx = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.hr, i32 noundef %i.hu, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %13, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %14, i32 noundef 0)
          to label %bb.z unwind label %bb.ad      ; 0 uses

bb.z:                                             ; preds = %bb.y
  %i.hy = load float, ptr %i.d, align 4, !tbaa !26
  %i.hz = fmul float %i.hy, 1.000000e+02          ; 2 uses
  %i.ia = load float, ptr %i.f, align 4, !tbaa !26 ; 2 uses
  %25 = call float @llvm.cos.f32(float %i.ia)
  %i.ib = fmul float %i.hz, %25
  %i.ic = fptosi float %i.ib to i32
  %i.id = add nsw i32 %i.ic, 128
  %26 = call float @llvm.sin.f32(float %i.ia)
  %i.ie = fmul float %i.hz, %26
  %i.if = fptosi float %i.ie to i32
  %i.ig = sub nsw i32 128, %i.if
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #3
  store <2 x float> splat (float 1.000000e+00), ptr %i.k, align 8, !tbaa !26
  %i.ih = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store float 0.000000e+00, ptr %i.ih, align 8, !tbaa !26
  store ptr %i.k, ptr %15, align 8, !tbaa !589
  %i.ii = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 3, ptr %i.ii, align 8, !tbaa !591
  store i32 -2147483648, ptr %16, align 8, !tbaa !332
  %i.ij = getelementptr inbounds nuw i8, ptr %16, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ij, i8 0, i64 28, i1 false)
  %i.ik = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.id, i32 noundef %i.ig, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %15, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %16, i32 noundef 0)
          to label %bb.aa unwind label %bb.ae     ; 0 uses

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  %i.il = load float, ptr %i.e, align 4, !tbaa !26
  %i.im = fmul float %i.il, 1.000000e+02          ; 2 uses
  %i.in = load float, ptr %i.f, align 4, !tbaa !26 ; 2 uses
  %27 = call float @llvm.sin.f32(float %i.in)
  %i.io = fneg float %27
  %i.ip = fmul float %i.im, %i.io
  %i.iq = fptosi float %i.ip to i32
  %i.ir = add nsw i32 %i.iq, 128
  %28 = call float @llvm.cos.f32(float %i.in)
  %i.is = fmul float %i.im, %28
  %i.it = fptosi float %i.is to i32
  %i.iu = sub nsw i32 128, %i.it
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #3
  store <2 x float> zeroinitializer, ptr %i.l, align 8, !tbaa !26
  %i.iv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store float 1.000000e+00, ptr %i.iv, align 8, !tbaa !26
  store ptr %i.l, ptr %17, align 8, !tbaa !589
  %i.iw = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i64 3, ptr %i.iw, align 8, !tbaa !591
  store i32 -2147483648, ptr %18, align 8, !tbaa !332
  %i.ix = getelementptr inbounds nuw i8, ptr %18, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.ix, i8 0, i64 28, i1 false)
  %i.iy = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef 128, i32 noundef 128, i32 noundef %i.ir, i32 noundef %i.iu, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %17, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %18, i32 noundef 0)
          to label %bb.ab unwind label %bb.af     ; 0 uses

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  %i.iz = icmp sgt i32 %i.gb, 0
  br i1 %i.iz, label %.lr.ph.preheader, label %._crit_edge174

.lr.ph.preheader:                                 ; preds = %bb.ab
  %wide.trip.count = zext nneg i32 %i.gb to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ja = icmp ult i32 %i.gb, 4
  br i1 %i.ja, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.lr.ph173.unr-lcssa:                              ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph173, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.lr.ph173.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.lr.ph173.unr-lcssa ]
  %.0169.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %.sroa.speculated.3, %.lr.ph173.unr-lcssa ]
  %lcmp.mod204 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod204)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.0169.epil = phi float [ %.0169.epil.init, %.lr.ph.epil.preheader ], [ %.sroa.speculated.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv.epil
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !26 ; 2 uses
  %i.jd = fcmp olt float %i.jc, %.0169.epil
  %.sroa.speculated.epil = select i1 %i.jd, float %.0169.epil, float %i.jc ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph173, label %.lr.ph.epil, !llvm.loop !594

.lr.ph173:                                        ; preds = %.lr.ph.epil, %.lr.ph173.unr-lcssa
  %.sroa.speculated.lcssa = phi float [ %.sroa.speculated.3, %.lr.ph173.unr-lcssa ], [ %.sroa.speculated.epil, %.lr.ph.epil ]
  %i.je = load float, ptr %i.e, align 4, !tbaa !26
  %i.jf = fmul float %i.je, 1.000000e+02
  %i.jg = fptosi float %i.jf to i32               ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.m, ptr %19, align 8, !tbaa !589
  %i.ji = getelementptr inbounds nuw i8, ptr %19, i64 8
  store i64 3, ptr %i.ji, align 8, !tbaa !591
  store i32 -2147483648, ptr %20, align 8, !tbaa !332
  %i.jj = getelementptr inbounds nuw i8, ptr %20, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jj, i8 0, i64 28, i1 false)
  %i.jk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.jl = getelementptr inbounds nuw i8, ptr %22, i64 4
  %wide.trip.count181 = zext nneg i32 %i.gb to i64
  br label %bb.ag

bb.ac:                                            ; preds = %bb.q
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ad:                                            ; preds = %bb.y
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ae:                                            ; preds = %bb.z
  %i.jo = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #3
  br label %bb.aq

bb.af:                                            ; preds = %bb.aa
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #3
  br label %bb.aq

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.0169 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %.sroa.speculated.3, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.jr = load float, ptr %i.jq, align 16, !tbaa !26 ; 2 uses
  %i.js = fcmp olt float %i.jr, %.0169
  %.sroa.speculated = select i1 %i.js, float %.0169, float %i.jr ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 4
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !26 ; 2 uses
  %i.jw = fcmp olt float %i.jv, %.sroa.speculated
  %.sroa.speculated.1 = select i1 %i.jw, float %.sroa.speculated, float %i.jv ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load float, ptr %i.jy, align 8, !tbaa !26 ; 2 uses
  %i.ka = fcmp olt float %i.jz, %.sroa.speculated.1
  %.sroa.speculated.2 = select i1 %i.ka, float %.sroa.speculated.1, float %i.jz ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kd = load float, ptr %i.kc, align 4, !tbaa !26 ; 2 uses
  %i.ke = fcmp olt float %i.kd, %.sroa.speculated.2
  %.sroa.speculated.3 = select i1 %i.ke, float %.sroa.speculated.2, float %i.kd ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph173.unr-lcssa, label %.lr.ph, !llvm.loop !595

._crit_edge174:                                   ; preds = %bb.ai, %bb.ab
  %i.kf = load ptr, ptr %1, align 8, !tbaa !30
  store ptr %i.kf, ptr %23, align 8, !tbaa !104
  %i.kg = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.kh = load i64, ptr %i.o, align 8, !tbaa !107
  store i64 %i.kh, ptr %i.kg, align 8, !tbaa !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %24, i8 0, i64 16, i1 false)
  %i.ki = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf5writeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescES5_PFbPvfES7_(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull dead_on_return %23, i64 256, ptr noundef nonnull dead_on_return %24, ptr noundef null, ptr noundef null)
          to label %bb.al unwind label %bb.ap     ; 0 uses

bb.ag:                                            ; preds = %.lr.ph173, %bb.ai
  %indvars.iv178 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next179, %bb.ai ] ; 3 uses
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %indvars.iv178
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !26 ; 2 uses
  %i.kl = load float, ptr %i.h, align 4, !tbaa !26
  %i.km = fmul float %i.kk, %i.kl
  %i.kn = load float, ptr %i.i, align 4, !tbaa !26
  %i.ko = fmul float %i.kk, %i.kn
  %i.kp = fmul float %i.km, 1.000000e+02
  %i.kq = fptosi float %i.kp to i32
  %i.kr = add nsw i32 %i.kq, 128                  ; 4 uses
  %i.ks = fmul float %i.ko, 1.000000e+02
  %i.kt = fptosi float %i.ks to i32
  %i.ku = sub nsw i32 128, %i.kt                  ; 4 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %indvars.iv178
  %i.kw = load float, ptr %i.kv, align 4, !tbaa !26
  %i.kx = sub nsw i32 %i.kr, %i.jg
  %i.ky = sub nsw i32 %i.ku, %i.jg
  %i.kz = add nsw i32 %i.kr, %i.jg
  %i.la = add nsw i32 %i.ku, %i.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #3
  store <2 x float> splat (float 6.500000e-01), ptr %i.m, align 8, !tbaa !26
  store float 6.500000e-01, ptr %i.jh, align 8, !tbaa !26
  %i.lb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.kx, i32 noundef %i.ky, i32 noundef %i.kz, i32 noundef %i.la, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %19, i1 noundef zeroext false, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %20, i32 noundef 0)
          to label %bb.ah unwind label %bb.aj     ; 0 uses

bb.ah:                                            ; preds = %bb.ag
  %i.lc = fmul float %i.kw, 5.000000e+00
  %i.ld = fdiv float %i.lc, %.sroa.speculated.lcssa
  %i.le = fptosi float %i.ld to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  %i.lf = sdiv i32 %i.le, 2                       ; 4 uses
  %i.lg = sub nsw i32 %i.kr, %i.lf
  %i.lh = sub nsw i32 %i.ku, %i.lf
  %i.li = add nsw i32 %i.lf, %i.kr
  %i.lj = add nsw i32 %i.lf, %i.ku
  store ptr @_ZZN11OpenImageIO4v3_117TextureSystemImpl17visualize_ellipseERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEffffffE5white, ptr %21, align 8, !tbaa !589
  store i64 3, ptr %i.jk, align 8, !tbaa !591
  store i32 -2147483648, ptr %22, align 8, !tbaa !332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.jl, i8 0, i64 28, i1 false)
  %i.lk = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %i.lg, i32 noundef %i.lh, i32 noundef %i.li, i32 noundef %i.lj, ptr noundef nonnull byval(%"class.OpenImageIO::v3_1::span.195") align 8 %21, i1 noundef zeroext true, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %22, i32 noundef 0)
          to label %bb.ai unwind label %bb.ak     ; 0 uses

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178, 1 ; 2 uses
  %exitcond182.not = icmp eq i64 %indvars.iv.next179, %wide.trip.count181
  br i1 %exitcond182.not, label %._crit_edge174, label %bb.ag, !llvm.loop !596

bb.aj:                                            ; preds = %bb.ag
  %i.ll = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #3
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ah
  %i.lm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.al:                                            ; preds = %._crit_edge174
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  %i.ln = getelementptr inbounds nuw i8, ptr %8, i64 136 ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !597 ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !598 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.lo, %i.lq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.al, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.lr, %.lr.ph.i.i.i.i ], [ %i.lo, %bb.al ] ; 2 uses
  call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i) #3
  %i.lr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.lr, %i.lq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !599

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.ln, align 8, !tbaa !597
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i, %bb.al
  %i.ls = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lo, %bb.al ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ls, null
  br i1 %.not.i.i1.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, label %bb.am

bb.am:                                            ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.lt = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !600
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.ls to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef %i.lx) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i: ; preds = %bb.am, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %8, i64 96 ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !601 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !602 ; 2 uses
  %.not4.i.i.i1.i = icmp eq ptr %i.lz, %i.mb
  br i1 %.not4.i.i.i1.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i2.i

.lr.ph.i.i.i2.i:                                  ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i3.i = phi ptr [ %i.mh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.lz, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %i.mc = load ptr, ptr %.05.i.i.i3.i, align 8, !tbaa !30 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 16 ; 2 uses
  %i.me = icmp eq ptr %i.mc, %i.md
  br i1 %i.me, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i
  %i.mf = load i64, ptr %i.md, align 8, !tbaa !34
  %i.mg = add i64 %i.mf, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mg) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i2.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mh = getelementptr inbounds nuw i8, ptr %.05.i.i.i3.i, i64 32 ; 2 uses
  %.not.i.i.i4.i = icmp eq ptr %i.mh, %i.mb
  br i1 %.not.i.i.i4.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i2.i, !llvm.loop !603

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i5.i = load ptr, ptr %i.ly, align 8, !tbaa !601
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i
  %i.mi = phi ptr [ %.pr.i5.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lz, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i6.i = icmp eq ptr %i.mi, null
  br i1 %.not.i.i1.i6.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, label %bb.an

bb.an:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.mj = getelementptr inbounds nuw i8, ptr %8, i64 112
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !604
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mi to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %i.mi, i64 noundef %i.mn) #45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i: ; preds = %bb.an, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !605 ; 3 uses
  %.not.i.i.i7.i = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i7.i, label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i
  %i.mq = getelementptr inbounds nuw i8, ptr %8, i64 88
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !606
  %i.ms = ptrtoint ptr %i.mr to i64
  %i.mt = ptrtoint ptr %i.mp to i64
  %i.mu = sub i64 %i.ms, %i.mt
  call void @_ZdlPvm(ptr noundef nonnull %i.mp, i64 noundef %i.mu) #45
  br label %_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit

_ZN11OpenImageIO4v3_19ImageSpecD2Ev.exit:         ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  ret void

bb.ap:                                            ; preds = %._crit_edge174
  %i.mv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ak, %bb.aj, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.x, %bb.s
  %.pn119 = phi { ptr, i32 } [ %i.hn, %bb.x ], [ %i.gu, %bb.s ], [ %i.jp, %bb.af ], [ %i.jo, %bb.ae ], [ %i.jn, %bb.ad ], [ %i.jm, %bb.ac ], [ %i.mv, %bb.ap ], [ %i.lm, %bb.ak ], [ %i.ll, %bb.aj ]
  call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %9) #3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.r
  %.pn119.pn = phi { ptr, i32 } [ %.pn119, %bb.aq ], [ %i.gt, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  resume { ptr, i32 } %.pn119.pn
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i64) unnamed_addr #22

declare void @_ZN11OpenImageIO4v3_18ImageBufC1ERKNS0_9ImageSpecENS0_16InitializePixelsE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(160), i32 noundef) unnamed_addr #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo4fillERNS0_8ImageBufENS0_4spanIKfLm18446744073709551615EEENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo11render_lineERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.195") align 8, i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.cos.f32(float) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sin.f32(float) #25

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo10render_boxERNS0_8ImageBufEiiiiNS0_4spanIKfLm18446744073709551615EEEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef byval(%"class.OpenImageIO::v3_1::span.195") align 8, i1 noundef zeroext, ptr noundef byval(%"struct.OpenImageIO::v3_1::ROI") align 8, i32 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf5writeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescES5_PFbPvfES7_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef dead_on_return, i64, ptr noundef dead_on_return, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_19ImageSpecD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !597  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !598  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i) #3
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !599

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !597
  br label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !600
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !601  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !602  ; 2 uses
  %.not4.i.i.i1 = icmp eq ptr %i.m, %i.o
  br i1 %.not4.i.i.i1, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i2

.lr.ph.i.i.i2:                                    ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i3 = phi ptr [ %i.u, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %i.p = load ptr, ptr %.05.i.i.i3, align 8, !tbaa !30 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i2
  %i.s = load i64, ptr %i.q, align 8, !tbaa !34
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #45
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i3, i64 32 ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.u, %i.o
  br i1 %.not.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i2, !llvm.loop !603

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i5 = load ptr, ptr %i.l, align 8, !tbaa !601
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit
  %i.v = phi ptr [ %.pr.i5, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.m, %_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i6 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1.i6, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !604
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #45
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !605 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !606
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #45
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_113TextureSystem14unit_test_hashEv() local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
.noexc105:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.218", align 16 ; 3 uses
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.330", align 16 ; 5 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.307", align 16 ; 4 uses
  %8 = alloca %"struct.fmt::v12::detail::format_arg_store.329", align 16 ; 4 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.327", align 16 ; 8 uses
  %10 = alloca %"class.std::shared_ptr.1", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %11 = alloca %"class.OpenImageIO::v3_1::intrusive_ptr.204", align 8 ; 9 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #47 ; 20 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i8 0, i64 128, i1 false), !tbaa !110
  %i.c = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader unwind label %bb.c ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i106.preheader:            ; preds = %.noexc105
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.c, i8 0, i64 2048, i1 false), !tbaa !110
  %i.d = invoke noalias noundef nonnull dereferenceable(524288) ptr @_Znwm(i64 noundef 524288) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader unwind label %bb.d ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i111.preheader:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(524288) %i.d, i8 0, i64 524288, i1 false), !tbaa !110
  %i.e = invoke noalias noundef nonnull dereferenceable(2048) ptr @_Znwm(i64 noundef 2048) #47
          to label %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader unwind label %bb.e ; 8 uses

.lr.ph.i.i.i.i.i.i.i.i.i116.preheader:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.e, i8 0, i64 2048, i1 false), !tbaa !110
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #3
  store i32 244, ptr %9, align 16, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 4096, ptr %i.f, align 16, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 4096, ptr %i.g, align 16, !tbaa !34
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 48
  store i32 64, ptr %i.h, align 16, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 64
  store i32 64, ptr %i.i, align 16, !tbaa !34
  %i.j = load ptr, ptr @stdout, align 8, !tbaa !96
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.j, ptr nonnull @.str.75, i64 56, i64 69905, ptr nonnull %9)
          to label %bb.a unwind label %bb.f

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #3
  invoke void @_ZN11OpenImageIO4v3_110ImageCache6createEb(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.1") align 8 %10, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store i32 0, ptr %i.a, align 4, !tbaa !3
  br label %bb.h

bb.c:                                             ; preds = %.noexc105
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit177

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i106.preheader
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit175

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i111.preheader
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i116.preheader
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit171

bb.g:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit169

bb.h:                                             ; preds = %bb.b, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit
  %.sroa.0231.0372 = phi ptr [ null, %bb.b ], [ %.sroa.0231.1330, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 12 uses
  %.sroa.12.0371 = phi ptr [ null, %bb.b ], [ %.sroa.12.1329, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 8 uses
  %.sroa.18.0370 = phi ptr [ null, %bb.b ], [ %.sroa.18.1328, %_ZN11OpenImageIO4v3_113intrusive_ptrINS0_14ImageCacheFileEED2Ev.exit ] ; 5 uses
  %i.p = invoke ptr @_ZN11OpenImageIO4v3_17ustring9fmtformatIJiEEES1_PKcDpRKT_(ptr noundef nonnull @.str.76, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #3
  %i.q = invoke noalias noundef nonnull dereferenceable(400) ptr @_Znwm(i64 noundef 400) #47
          to label %bb.j unwind label %bb.r       ; 4 uses

end_hunk_1
begin_hunk_2_@_ZN3tsl17detail_robin_hash10robin_hashISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapIlS8_St4hashIlESt8equal_toIlESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E11rehash_implEm:bb.a
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !107
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !107
  store ptr %i.bs, ptr %i.bg, align 8, !tbaa !30
  store i64 0, ptr %i.cg, align 8, !tbaa !107
  store i8 0, ptr %i.bs, align 8, !tbaa !34
  store i16 %.011.i, ptr %i.bj, align 8, !tbaa !8
  br label %bb.l

bb.l:                                             ; preds = %_ZN3tsl17detail_robin_hash10robin_hashISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapIlS8_St4hashIlESt8equal_toIlESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E22insert_value_on_rehashEmsjOS9_.exit, %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 48 ; 2 uses
  %.not = icmp eq ptr %i.cj, %i.i
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d
}

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.ceil.f32(float) #25

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3tsl17detail_robin_hash10robin_hashISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapIlS8_St4hashIlESt8equal_toIlESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_E17insert_value_implEmsjRS9_(ptr noundef nonnull align 8 dereferenceable(74) %0, i64 noundef %1, i16 noundef signext %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(40) %4) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %1 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i64, ptr %4, align 8, !tbaa !110
  %i.f = load i64, ptr %i.d, align 8, !tbaa !110
  store i64 %i.f, ptr %4, align 8, !tbaa !110
  store i64 %i.e, ptr %i.d, align 8, !tbaa !110
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.h) #3
  %i.i = load i16, ptr %i.c, align 8, !tbaa !489
  store i16 %2, ptr %i.c, align 8, !tbaa !489
  %i.j = add i64 %1, 1
  %i.k = load i64, ptr %0, align 8, !tbaa !347    ; 2 uses
  %i.l = and i64 %i.k, %i.j                       ; 2 uses
  %storemerge17 = add i16 %i.i, 1                 ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.m, i64 %i.l ; 3 uses
  %i.o = load i16, ptr %i.n, align 8, !tbaa !8    ; 2 uses
  %i.p = icmp eq i16 %i.o, -1
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.r = phi ptr [ %i.m, %.lr.ph ], [ %i.ac, %bb.f ]
  %i.s = phi i64 [ %i.k, %.lr.ph ], [ %i.ad, %bb.f ]
  %i.t = phi i16 [ %i.o, %.lr.ph ], [ %i.ah, %bb.f ]
  %i.u = phi ptr [ %i.n, %.lr.ph ], [ %i.ag, %bb.f ] ; 4 uses
  %storemerge19 = phi i16 [ %storemerge17, %.lr.ph ], [ %storemerge, %bb.f ] ; 4 uses
  %.018 = phi i64 [ %i.l, %.lr.ph ], [ %i.af, %bb.f ]
  %i.v = icmp sgt i16 %storemerge19, %i.t
  br i1 %i.v, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = icmp sgt i16 %storemerge19, 8192
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.q, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.y = load i64, ptr %4, align 8, !tbaa !110
  %i.z = load i64, ptr %i.x, align 8, !tbaa !110
  store i64 %i.z, ptr %4, align 8, !tbaa !110
  store i64 %i.y, ptr %i.x, align 8, !tbaa !110
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.aa) #3
  %i.ab = load i16, ptr %i.u, align 8, !tbaa !489
  store i16 %storemerge19, ptr %i.u, align 8, !tbaa !489
  %.pre = load i64, ptr %0, align 8, !tbaa !347
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.ac = phi ptr [ %.pre23, %bb.e ], [ %i.r, %bb.b ] ; 2 uses
  %i.ad = phi i64 [ %.pre, %bb.e ], [ %i.s, %bb.b ] ; 2 uses
  %.1 = phi i16 [ %i.ab, %bb.e ], [ %storemerge19, %bb.b ]
  %i.ae = add i64 %.018, 1
  %i.af = and i64 %i.ad, %i.ae                    ; 2 uses
  %storemerge = add i16 %.1, 1                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.ac, i64 %i.af ; 3 uses
  %i.ah = load i16, ptr %i.ag, align 8, !tbaa !8  ; 2 uses
  %i.ai = icmp eq i16 %i.ah, -1
  br i1 %i.ai, label %._crit_edge, label %bb.b, !llvm.loop !1294

._crit_edge:                                      ; preds = %bb.f, %bb.a
  %storemerge.lcssa = phi i16 [ %storemerge17, %bb.a ], [ %storemerge, %bb.f ]
  %.lcssa = phi ptr [ %i.n, %bb.a ], [ %i.ag, %bb.f ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  %i.ak = load i64, ptr %4, align 8, !tbaa !1287
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !1287
  %i.al = getelementptr inbounds nuw i8, ptr %.lcssa, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.lcssa, i64 32 ; 3 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !109
  %i.an = load ptr, ptr %i.g, align 8, !tbaa !30  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.g:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !107 ; 2 uses
  %i.as = icmp ult i64 %i.ar, 16
  tail call void @llvm.assume(i1 %i.as)
  %i.at = add nuw nsw i64 %i.ar, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.am, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.at, i1 false)
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %._crit_edge
  store ptr %i.an, ptr %i.al, align 8, !tbaa !30
  %i.au = load i64, ptr %i.ao, align 8, !tbaa !34
  store i64 %i.au, ptr %i.am, align 8, !tbaa !34
  br label %_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit

_ZN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EE25set_value_of_empty_bucketIJS9_EEEvsjDpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !107
  %i.ax = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !107
  store ptr %i.ao, ptr %i.g, align 8, !tbaa !30
  store i64 0, ptr %i.av, align 8, !tbaa !107
  store i8 0, ptr %i.ao, align 8, !tbaa !34
  store i16 %storemerge.lcssa, ptr %.lcssa, align 8, !tbaa !8
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #25

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_114ImageCacheFileD1Ev(ptr noundef nonnull align 8 dereferenceable(400)) unnamed_addr #22

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_texturesys.cpp() #42 section ".text.startup" personality ptr @__gxx_personality_v0 {
vector.ph:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt12__shared_ptrIN11OpenImageIO4v3_113TextureSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_117shared_texturesysE, ptr nonnull @__dso_handle) #3 ; 0 uses
  store i8 0, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_123shared_texturesys_mutexE, align 1, !tbaa !538
  store <4 x float> splat (float f0x3B808081), ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_17u8scaleE.0, align 16, !tbaa !34
  store <4 x float> splat (float f0x37800080), ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_18u16scaleE.0, align 16, !tbaa !34
  store <4 x i32> zeroinitializer, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, align 16, !tbaa !34
  store <4 x i32> <i32 -1, i32 0, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 16), align 16, !tbaa !34
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 32), align 16, !tbaa !34
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 48), align 16, !tbaa !34
  store <4 x i32> splat (i32 -1), ptr getelementptr inbounds nuw (i8, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE, i64 64), align 16, !tbaa !34
  %i.b = tail call ptr @llvm.invariant.start.p0(i64 80, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_113channel_masksE) ; 0 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next.1, %vector.body ] ; 5 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.c = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.d = uitofp nneg <4 x i32> %step.add to <4 x float>
  %i.e = fmul nnan <4 x float> %i.c, splat (float f0x3B808081)
  %i.f = fmul nnan <4 x float> %i.d, splat (float f0x3B808081)
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x float> %i.e, ptr %i.g, align 4, !tbaa !26
  store <4 x float> %i.f, ptr %i.h, align 4, !tbaa !26
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %step.add.1 = add <4 x i32> %vec.ind, splat (i32 12)
  %i.i = uitofp nneg <4 x i32> %vec.ind.next to <4 x float>
  %i.j = uitofp nneg <4 x i32> %step.add.1 to <4 x float>
  %i.k = fmul nnan <4 x float> %i.i, splat (float f0x3B808081)
  %i.l = fmul nnan <4 x float> %i.j, splat (float f0x3B808081)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_117TextureSystemImpl11uchar2floatE, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store <4 x float> %i.k, ptr %i.n, align 4, !tbaa !26
  store <4 x float> %i.l, ptr %i.o, align 4, !tbaa !26
  %index.next.1 = add nuw nsw i64 %index, 16      ; 2 uses
  %vec.ind.next.1 = add <4 x i32> %vec.ind, splat (i32 16)
  %i.p = icmp eq i64 %index.next.1, 256
  br i1 %i.p, label %__cxx_global_var_init.7.exit, label %vector.body, !llvm.loop !1295

__cxx_global_var_init.7.exit:                     ; preds = %vector.body
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #43

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #44

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #31

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #25

attributes #0 = { nofree nounwind }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn }
attributes #22 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { cold noreturn }
attributes #35 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #36 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #41 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { nofree nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #44 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #45 = { builtin nounwind }
attributes #46 = { noreturn nounwind }
attributes #47 = { builtin allocsize(0) }
attributes #48 = { cold nounwind }
attributes #49 = { noreturn }
attributes #50 = { nounwind willreturn memory(none) }
attributes #51 = { nounwind willreturn memory(read) }
attributes #52 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !10, i64 0, !11, i64 2, !5, i64 8}
!10 = !{!"short", !5, i64 0}
!11 = !{!"bool", !5, i64 0}
!12 = !{!9, !11, i64 2}
!13 = !{!14, !21, i64 32}
!14 = !{!"_ZTSN3tsl17detail_robin_hash10robin_hashISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENS_9robin_mapIlS8_St4hashIlESt8equal_toIlESaIS9_ELb0ENS_2rh26power_of_two_growth_policyILm2EEEE9KeySelectENSJ_11ValueSelectESC_SE_SF_Lb0ESI_EE", !15, i64 0, !17, i64 8, !21, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !23, i64 64, !23, i64 68, !11, i64 72, !11, i64 73}
!15 = !{!"_ZTSN3tsl2rh26power_of_two_growth_policyILm2EEE", !16, i64 0}
!16 = !{!"long", !5, i64 0}
!17 = !{!"_ZTSSt6vectorIN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !18, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE", !19, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE12_Vector_implE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEESaISB_EE17_Vector_impl_dataE", !21, i64 0, !21, i64 8, !21, i64 16}
!21 = !{!"p1 _ZTSN3tsl17detail_robin_hash12bucket_entryISt4pairIlNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEELb0EEE", !22, i64 0}
!22 = !{!"any pointer", !5, i64 0}
!23 = !{!"float", !5, i64 0}
!24 = !{!14, !11, i64 72}
!25 = !{!14, !11, i64 73}
!26 = !{!23, !23, i64 0}
!27 = !{!14, !16, i64 56}
!28 = !{!20, !21, i64 0}
!29 = !{!20, !21, i64 8}
!30 = !{!31, !33, i64 0}
!31 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !32, i64 0, !16, i64 8, !5, i64 16}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !33, i64 0}
!33 = !{!"p1 omnipotent char", !22, i64 0}
!34 = !{!5, !5, i64 0}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!20, !21, i64 16}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTSN11OpenImageIO4v3_18Filter1DE", !22, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !6, i64 0}
!42 = distinct !{ptr @_ZN11OpenImageIO4v3_117TextureSystemImplD2Ev, null, null}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0}
!45 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!46 = !{!47, !4, i64 8}
!47 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!48 = !{!47, !4, i64 12}
!49 = distinct !{ptr @_ZN11OpenImageIO4v3_117TextureSystemImplD2Ev, ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!50 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!51 = !{!22, !22, i64 0}
!52 = !{!53, !22, i64 0}
!53 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_117TextureSystemImplEELb0EE", !22, i64 0}
!54 = !{!55, !56, i64 0}
!55 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_117TextureSystemImplELb0EE", !56, i64 0}
!56 = !{!"p1 _ZTSN11OpenImageIO4v3_117TextureSystemImplE", !22, i64 0}
!57 = distinct !{ptr @_ZNSt12__shared_ptrIN11OpenImageIO4v3_110ImageCacheELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!58 = !{!56, !56, i64 0}
!59 = !{i64 13515232}
!60 = distinct !{!60, !36}
end_hunk_2
