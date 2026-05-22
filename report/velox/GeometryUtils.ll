inline.NumInlined: 1539
inline.NumDeleted: 799
begin_hunk_0_@_ZN8facebook5velox9functions10geospatial18getSphericalLengthERKN4geos4geom10LineStringE:bb.a
  %i.i = icmp ugt i64 %i.d, 1
  br i1 %i.i, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.59.0.copyload = load double, ptr %.sroa.59.0..sroa_idx, align 8, !tbaa !81
  %.sroa.08.0.copyload = load double, ptr %i.h, align 8, !tbaa !81
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.o, %.lr.ph ]
  ret double %.0.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.020 = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.o, %.lr.ph ]
  %.sroa.59.019 = phi double [ %.sroa.59.0.copyload, %.lr.ph.preheader ], [ %.sroa.5.0.copyload, %.lr.ph ]
  %.sroa.08.017 = phi double [ %.sroa.08.0.copyload, %.lr.ph.preheader ], [ %.sroa.0.0.copyload, %.lr.ph ]
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %indvars.iv) ; 2 uses
  %.sroa.0.0.copyload = load double, ptr %i.m, align 8, !tbaa !81 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.5.0.copyload = load double, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !81 ; 2 uses
  %i.n = tail call noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef %.sroa.59.019, double noundef %.sroa.08.017, double noundef %.sroa.5.0.copyload, double noundef %.sroa.0.0.copyload)
  %i.o = fadd double %.020, %i.n                  ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !247
}

declare noundef double @_ZN8facebook5velox12BingTileType19greatCircleDistanceEdddd(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef double @_ZN8facebook5velox9functions10geospatial22computeSphericalExcessERKN4geos4geom7PolygonE(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  %2 = alloca %"class.std::unique_ptr.99", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  %i.a = tail call noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %1, ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.e = load ptr, ptr %1, align 8, !tbaa !248
  %i.f = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = call noundef double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !248    ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !32
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.l = call noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) ; 2 uses
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit
  %.010.lcssa = phi double [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ], [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ]
  ret double %.010.lcssa

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %1, align 8, !tbaa !248    ; 3 uses
  %.not.i15 = icmp eq ptr %i.n, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.n) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17: ; preds = %bb.c, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  br label %bb.f

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ 0, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %.01025 = phi double [ %i.y, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20 ], [ %i.g, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.r = call noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %indvars.iv) ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %i.r)
  %i.v = load ptr, ptr %2, align 8, !tbaa !248
  %i.w = invoke fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.x = call noundef double @llvm.fabs.f64(double %i.w)
  %i.y = fsub double %.01025, %i.x                ; 2 uses
  %i.z = load ptr, ptr %2, align 8, !tbaa !248    ; 3 uses
  %.not.i18 = icmp eq ptr %i.z, null
  br i1 %.not.i18, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19: ; preds = %bb.d
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.z) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit20: ; preds = %bb.d, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !251

bb.e:                                             ; preds = %.lr.ph
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load ptr, ptr %2, align 8, !tbaa !248   ; 3 uses
  %.not.i21 = icmp eq ptr %i.ae, null
  br i1 %.not.i21, label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, label %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22

_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22: ; preds = %bb.e
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ae) #26, !inline_history !250
  br label %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23

_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23: ; preds = %bb.e, %_ZNKSt14default_deleteIN4geos4geom18CoordinateSequenceEEclEPS2_.exit.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17
  %.pn = phi { ptr, i32 } [ %i.ad, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit23 ], [ %i.m, %_ZNSt10unique_ptrIN4geos4geom18CoordinateSequenceESt14default_deleteIS2_EED2Ev.exit17 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0), !inline_history !252 ; 2 uses
  %i.e = add i64 %i.d, -1                         ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.e)
  %i.j = load ptr, ptr %0, align 8, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.n = load <2 x double>, ptr %i.i, align 8
  %i.o = load <2 x double>, ptr %i.m, align 8
  %i.p = fcmp oeq <2 x double> %i.n, %i.o         ; 2 uses
  %i.q = extractelement <2 x i1> %i.p, i64 0
  %i.r = extractelement <2 x i1> %i.p, i64 1
  %.0.i.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select = select i1 %.0.i.i, i64 %i.e, i64 %i.d ; 3 uses
  %i.s = icmp ult i64 %spec.select, 3
  br i1 %i.s, label %bb.b, label %.peel.begin, !prof !110

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN12_GLOBAL__N_125SphericalExcessCalculator21excessFromCoordinatesERKN4geos4geom18CoordinateSequenceEE18veloxCheckFailArgs, ptr noundef nonnull @.str.39) #25
  unreachable

.peel.begin:                                      ; preds = %bb.a
  %i.t = add i64 %spec.select, -1
  %i.u = load ptr, ptr %0, align 8, !tbaa !32
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.t)
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !81
  %i.z = fmul <2 x double> %i.y, splat (double f0x400921FB54442D18)
  %i.aa = fdiv <2 x double> %i.z, splat (double 1.800000e+02) ; 3 uses
  %i.ab = extractelement <2 x double> %i.aa, i64 1 ; 3 uses
  %i.ac = tail call double @sin(double noundef %i.ab) #26, !tbaa !3
  %i.ad = tail call double @cos(double noundef %i.ab) #26, !tbaa !3 ; 2 uses
  %i.ae = fmul double %i.ab, 5.000000e-01
  %i.af = tail call double @tan(double noundef %i.ae) #26, !tbaa !3 ; 2 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 0)
  %i.ak = load <2 x double>, ptr %i.aj, align 8
  %i.al = fmul <2 x double> %i.ak, splat (double f0x400921FB54442D18)
  %i.am = fdiv <2 x double> %i.al, splat (double 1.800000e+02) ; 4 uses
  %i.an = extractelement <2 x double> %i.am, i64 1 ; 3 uses
  %i.ao = fmul double %i.an, 5.000000e-01
  %i.ap = tail call double @tan(double noundef %i.ao) #26, !tbaa !3 ; 3 uses
  %1 = fcmp oeq <2 x double> %i.am, %i.aa         ; 2 uses
  %shift = shufflevector <2 x i1> %1, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = and <2 x i1> %1, %shift
  %2 = extractelement <2 x i1> %foldExtExtBinop, i64 0
  br i1 %2, label %.loopexit, label %.peel.next, !prof !110

.peel.next:                                       ; preds = %.peel.begin
  %foldExtExtBinop50 = fsub <2 x double> %i.am, %i.aa
  %i.aq = extractelement <2 x double> %foldExtExtBinop50, i64 0 ; 3 uses
  %i.ar = fmul double %i.aq, 5.000000e-01
  %i.as = tail call double @tan(double noundef %i.ar) #26, !tbaa !3
  %i.at = fadd double %i.af, %i.ap
  %i.au = fmul double %i.at, %i.as
  %i.av = fmul double %i.af, %i.ap
  %i.aw = fadd double %i.av, 1.000000e+00
  %i.ax = tail call double @atan2(double noundef %i.au, double noundef %i.aw) #26, !tbaa !3
  %i.ay = fmul double %i.ax, 2.000000e+00
  %i.az = fadd double %i.ay, 0.000000e+00
  %i.ba = tail call double @cos(double noundef %i.an) #26, !tbaa !3 ; 3 uses
  %i.bb = tail call double @sin(double noundef %i.an) #26, !tbaa !3 ; 2 uses
  %i.bc = tail call double @sin(double noundef %i.aq) #26, !tbaa !3 ; 2 uses
  %i.bd = tail call double @cos(double noundef %i.aq) #26, !tbaa !3 ; 2 uses
  %i.be = fmul double %i.ba, %i.bc
  %i.bf = fmul double %i.ad, %i.bb                ; 2 uses
  %i.bg = fmul double %i.ac, %i.ba                ; 2 uses
  %i.bh = fmul double %i.bg, %i.bd
  %i.bi = fsub double %i.bf, %i.bh
  %i.bj = tail call double @atan2(double noundef %i.be, double noundef %i.bi) #26, !tbaa !3
  %i.bk = fadd double %i.bj, f0x401921FB54442D18
  %i.bl = tail call double @fmod(double noundef %i.bk, double noundef f0x401921FB54442D18) #26, !tbaa !3 ; 2 uses
  %i.bm = fneg double %i.bc
  %i.bn = fmul double %i.ad, %i.bm
  %i.bo = fmul double %i.bf, %i.bd
  %i.bp = fsub double %i.bg, %i.bo
  %i.bq = tail call double @atan2(double noundef %i.bn, double noundef %i.bp) #26, !tbaa !3
  %i.br = fadd double %i.bq, f0x400921FB54442D18
  %i.bs = tail call double @fmod(double noundef %i.br, double noundef f0x401921FB54442D18) #26, !tbaa !3 ; 2 uses
  %i.bt = fsub double %i.bs, %i.bl
  %i.bu = fadd double %i.bt, f0x4022D97C7F3321D2
  %i.bv = tail call double @fmod(double noundef %i.bu, double noundef f0x401921FB54442D18) #26, !tbaa !3
  %i.bw = fadd double %i.bv, f0xC00921FB54442D18
  br label %bb.c

_ZN12_GLOBAL__N_125SphericalExcessCalculator22computeSphericalExcessEv.exit: ; preds = %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit
  %i.bx = fsub double %i.bl, %i.dw
  %i.by = fadd double %i.bx, f0x4022D97C7F3321D2
  %i.bz = tail call double @fmod(double noundef %i.by, double noundef f0x401921FB54442D18) #26, !tbaa !3
  %i.ca = fadd double %i.bz, f0xC00921FB54442D18
  %i.cb = fadd double %i.eg, %i.ca
  %i.cc = tail call noundef double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp olt double %i.cc, f0x3FE921FB54442D18
  %i.ce = tail call double @llvm.fabs.f64(double %i.dd)
  %i.cf = fadd double %i.ce, f0xC01921FB54442D18
  %.sroa.0.1 = select i1 %i.cd, double %i.cf, double %i.dd
  ret double %.sroa.0.1

bb.c:                                             ; preds = %.peel.next, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit
  %indvars.iv = phi i64 [ 1, %.peel.next ], [ %indvars.iv.next, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.8.040 = phi double [ %i.bw, %.peel.next ], [ %i.eg, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.0.038 = phi double [ %i.az, %.peel.next ], [ %i.dd, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.31.035 = phi double [ %i.ap, %.peel.next ], [ %i.cq, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.28.034 = phi double [ %i.bb, %.peel.next ], [ %i.df, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %.sroa.25.033 = phi double [ %i.ba, %.peel.next ], [ %i.de, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 2 uses
  %.sroa.19.031 = phi double [ %i.bs, %.peel.next ], [ %i.dw, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ]
  %i.cg = phi <2 x double> [ %i.am, %.peel.next ], [ %i.cn, %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit ] ; 3 uses
  %i.ch = load ptr, ptr %0, align 8, !tbaa !32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %indvars.iv)
  %i.cl = load <2 x double>, ptr %i.ck, align 8
  %i.cm = fmul <2 x double> %i.cl, splat (double f0x400921FB54442D18)
  %i.cn = fdiv <2 x double> %i.cm, splat (double 1.800000e+02) ; 5 uses
  %i.co = extractelement <2 x double> %i.cn, i64 1 ; 3 uses
  %i.cp = fmul double %i.co, 5.000000e-01
  %i.cq = tail call double @tan(double noundef %i.cp) #26, !tbaa !3 ; 3 uses
  %i.cr = fcmp oeq <2 x double> %i.cn, %i.cg
  %i.cs = fcmp oeq <2 x double> %i.cn, %i.cg
  %shift52 = shufflevector <2 x i1> %i.cs, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop53 = and <2 x i1> %i.cr, %shift52
  %i.ct = extractelement <2 x i1> %foldExtExtBinop53, i64 0
  br i1 %i.ct, label %.loopexit, label %_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit, !prof !110

.loopexit:                                        ; preds = %bb.c, %.peel.begin
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateEE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.44) #25
  unreachable

_ZN12_GLOBAL__N_125SphericalExcessCalculator3addERKN4geos4geom10CoordinateE.exit: ; preds = %bb.c
  %foldExtExtBinop55 = fsub <2 x double> %i.cn, %i.cg
  %i.cu = extractelement <2 x double> %foldExtExtBinop55, i64 0 ; 3 uses
  %i.cv = fmul double %i.cu, 5.000000e-01
  %i.cw = tail call double @tan(double noundef %i.cv) #26, !tbaa !3
  %i.cx = fadd double %.sroa.31.035, %i.cq
  %i.cy = fmul double %i.cx, %i.cw
  %i.cz = fmul double %.sroa.31.035, %i.cq
  %i.da = fadd double %i.cz, 1.000000e+00
  %i.db = tail call double @atan2(double noundef %i.cy, double noundef %i.da) #26, !tbaa !3
  %i.dc = fmul double %i.db, 2.000000e+00
  %i.dd = fadd double %.sroa.0.038, %i.dc         ; 3 uses
  %i.de = tail call double @cos(double noundef %i.co) #26, !tbaa !3 ; 3 uses
  %i.df = tail call double @sin(double noundef %i.co) #26, !tbaa !3 ; 2 uses
  %i.dg = tail call double @sin(double noundef %i.cu) #26, !tbaa !3 ; 2 uses
  %i.dh = tail call double @cos(double noundef %i.cu) #26, !tbaa !3 ; 2 uses
  %i.di = fmul double %i.de, %i.dg
  %i.dj = fmul double %.sroa.25.033, %i.df        ; 2 uses
  %i.dk = fmul double %.sroa.28.034, %i.de        ; 2 uses
  %i.dl = fmul double %i.dk, %i.dh
  %i.dm = fsub double %i.dj, %i.dl
  %i.dn = tail call double @atan2(double noundef %i.di, double noundef %i.dm) #26, !tbaa !3
  %i.do = fadd double %i.dn, f0x401921FB54442D18
  %i.dp = tail call double @fmod(double noundef %i.do, double noundef f0x401921FB54442D18) #26, !tbaa !3 ; 2 uses
  %i.dq = fneg double %i.dg
  %i.dr = fmul double %.sroa.25.033, %i.dq
  %i.ds = fmul double %i.dj, %i.dh
  %i.dt = fsub double %i.dk, %i.ds
  %i.du = tail call double @atan2(double noundef %i.dr, double noundef %i.dt) #26, !tbaa !3
  %i.dv = fadd double %i.du, f0x400921FB54442D18
  %i.dw = tail call double @fmod(double noundef %i.dv, double noundef f0x401921FB54442D18) #26, !tbaa !3 ; 3 uses
  %i.dx = fsub double %i.dp, %.sroa.19.031
  %i.dy = fadd double %i.dx, f0x4022D97C7F3321D2
  %i.dz = tail call double @fmod(double noundef %i.dy, double noundef f0x401921FB54442D18) #26, !tbaa !3
  %i.ea = fadd double %i.dz, f0xC00921FB54442D18
  %i.eb = fadd double %.sroa.8.040, %i.ea
  %i.ec = fsub double %i.dw, %i.dp
  %i.ed = fadd double %i.ec, f0x4022D97C7F3321D2
  %i.ee = tail call double @fmod(double noundef %i.ed, double noundef f0x401921FB54442D18) #26, !tbaa !3
  %i.ef = fadd double %i.ee, f0xC00921FB54442D18
  %i.eg = fadd double %i.eb, %i.ef                ; 2 uses
  %indvars.iv.next = add nuw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %spec.select
  br i1 %exitcond.not, label %_ZN12_GLOBAL__N_125SphericalExcessCalculator22computeSphericalExcessEv.exit, label %bb.c, !llvm.loop !253
}

declare noundef ptr @_ZNK4geos4geom7Polygon15getExteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef i64 @_ZNK4geos4geom7Polygon18getNumInteriorRingEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare noundef ptr @_ZNK4geos4geom7Polygon16getInteriorRingNEm(ptr noundef nonnull align 8 dereferenceable(72), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit:
  %i.a = lshr i64 %1, 6                           ; 2 uses
  %i.b = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !25
  %i.e = shl nuw nsw i64 %.sroa.speculated, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #28 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = sub nsw i64 %.sroa.speculated, %i.b
  %i.h = lshr i64 %i.g, 1
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h ; 6 uses
  %.idx = shl nuw nsw i64 %i.b, 3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.l, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i ], [ %i.i, %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #28
          to label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i unwind label %bb.a

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.k, ptr %.011.i, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.j
  br i1 %i.m, label %.lr.ph.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE15_M_create_nodesEPPS4_S8_.exit, !llvm.loop !255

bb.a:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = tail call ptr @__cxa_begin_catch(ptr %i.o) #26 ; 0 uses
  %i.q = icmp ult ptr %i.i, %.011.i
  br i1 %i.q, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.i, %bb.a ] ; 2 uses
  %i.r = load ptr, ptr %.06.i.i, align 8, !tbaa !22
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef 512) #27
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.t = icmp ult ptr %i.s, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i, !llvm.loop !23

_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i: ; preds = %.lr.ph.i.i, %bb.a
  invoke void @__cxa_rethrow() #25
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt11_Deque_baseIPKN4geos4geom8GeometryESaIS4_EE16_M_destroy_nodesEPPS4_S8_.exit.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #29
end_hunk_0
