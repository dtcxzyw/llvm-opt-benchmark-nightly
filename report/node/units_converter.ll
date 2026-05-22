inline.NumInlined: 203
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.jz = phi double [ %i.jq, %bb.cd ], [ %i.jq, %bb.cf ], [ %i.jy, %bb.cg ]
  %i.ka = phi double [ %i.jr, %bb.cd ], [ %i.jx, %bb.cf ], [ %i.jr, %bb.cg ]
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.ka, ptr %i.kb, align 8
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.jz, ptr %i.kc, align 8
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN6icu_785units6Factor19substituteConstantsEv.exit79, %bb.v, %.critedge, %bb.o, %bb.w, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_785units14UnitsConverter15compareTwoUnitsERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %5 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %6 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8
  %i.d = icmp eq i32 %i.c, 2
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 2
  %or.cond42 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond42, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 65804, ptr %3, align 4
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN6icu_785units21extractConvertibilityERKNS_15MeasureUnitImplES3_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.g, 1
  %or.cond = icmp eq i32 %i.j, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 65804, ptr %3, align 4
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.k = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %.fca.0.extract7 = extractvalue { ptr, i32 } %i.k, 0
  %.fca.1.extract8 = extractvalue { ptr, i32 } %i.k, 1 ; 2 uses
  store ptr %.fca.0.extract7, ptr %4, align 8
  %.sroa.210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %.fca.1.extract8, ptr %.sroa.210.0..sroa_idx, align 8
  %i.l = tail call fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.l, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.l, 1 ; 2 uses
  %.not = icmp eq i32 %.fca.1.extract8, 0
  %.not45 = icmp eq i32 %.fca.1.extract, 0        ; 2 uses
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not45, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.g
  br i1 %.not45, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract, i32 %.fca.1.extract) #15
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %6)
  %i.n = load double, ptr %5, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load double, ptr %i.o, align 8
  %i.q = fdiv double %i.n, %i.p
  %i.r = load double, ptr %6, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load double, ptr %i.s, align 8
  %i.u = fdiv double %i.r, %i.t
  %i.v = fsub double %i.q, %i.u                   ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  %i.x = fcmp olt double %i.v, 0.000000e+00
  %. = sext i1 %i.x to i32
  %.0 = select i1 %i.w, i32 1, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.j
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.m, %bb.j ], [ 1, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.d, %bb.a, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.1, %bb.l ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %4 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 4 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %.val = load i32, ptr %2, align 4
  %i.a = icmp slt i32 %.val, 1
  %i.b = load i32, ptr %0, align 8
  %.not6.i = icmp eq i32 %i.b, 0
  %or.cond7.i = select i1 %i.a, i1 %.not6.i, i1 false
  br i1 %or.cond7.i, label %bb.b, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre17 = load ptr, ptr %.pre, align 8          ; 3 uses
  br i1 %i.e, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit: ; preds = %bb.b
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre17, i64 4
  %.sroa.3.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pre17, i64 8
  %.sroa.4.0.copyload.i = load i32, ptr %.sroa.4.0..sroa_idx.i, align 4
  %i.f = icmp ne i32 %.sroa.4.0.copyload.i, 1
  %i.g = icmp ne i32 %.sroa.3.0.copyload.i, 30
  %or.cond.not.i.not = select i1 %i.f, i1 true, i1 %i.g
  br i1 %or.cond.not.i.not, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12: ; preds = %bb.b, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.pre17, i64 12, i1 false)
  %i.h = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %4) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.h) #15
  %i.i = load ptr, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.i, i32 %i.k, ptr noundef nonnull align 4 dereferenceable(4) %2) #15 ; 2 uses
  %i.m = load i32, ptr %2, align 4
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 5, ptr %2, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %spec.select.i = select i1 %i.r, ptr @.str.20, ptr %i.q
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %spec.select.i) #15
  %.fca.0.load.pre.pre = load ptr, ptr %3, align 8
  %.fca.1.gep.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.pre.pre = load i32, ptr %.fca.1.gep.phi.trans.insert.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12, %bb.e, %bb.d
  %.fca.1.load.pre = phi i32 [ %.fca.1.load.pre.pre, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  %.fca.0.load.pre = phi ptr [ %.fca.0.load.pre.pre, %bb.e ], [ null, %bb.d ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread: ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit, %bb.a, %bb.f
  %.fca.1.load = phi i32 [ %.fca.1.load.pre, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.load = phi ptr [ %.fca.0.load.pre, %bb.f ], [ null, %bb.a ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.fca.0.load, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.fca.1.load, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 25), (28, 88)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 9 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 9 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 8 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %15 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 7 uses
  %16 = alloca %"struct.icu_78::units::Factor", align 16 ; 30 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double 0.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.f, align 8
  %scevgep.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 0, i64 60, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %16, i64 24
  %scevgep.i15 = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %.fca.1.gep.i36.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.fca.1.gep.i.i26.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4
  %.fca.1.gep.i25.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %16, i64 36 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %16, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 44 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %16, i64 48 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 52 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 60 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %16, i64 64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %16, i64 68 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 72 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %16, i64 76 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %16, i64 80 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %16, i64 84 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit
  %i.bg = phi double [ 0.000000e+00, %.lr.ph ], [ %i.gk, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ] ; 2 uses
  %i.bh = phi i32 [ 0, %.lr.ph ], [ %i.gi, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bi = phi i32 [ 0, %.lr.ph ], [ %i.gh, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bj = phi i32 [ 0, %.lr.ph ], [ %i.gg, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bk = phi i32 [ 0, %.lr.ph ], [ %i.gf, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bl = phi i32 [ 0, %.lr.ph ], [ %i.ge, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bm = phi i32 [ 0, %.lr.ph ], [ %i.gd, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bn = phi i32 [ 0, %.lr.ph ], [ %i.gc, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bo = phi i32 [ 0, %.lr.ph ], [ %i.gb, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.ga, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bq = phi i32 [ 0, %.lr.ph ], [ %i.fz, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.br = phi i32 [ 0, %.lr.ph ], [ %i.fy, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bs = phi i32 [ 0, %.lr.ph ], [ %i.fx, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bt = phi i32 [ 0, %.lr.ph ], [ %i.fw, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bu = phi i32 [ 0, %.lr.ph ], [ %i.fv, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bv = phi i32 [ 0, %.lr.ph ], [ %i.fu, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ] ; 2 uses
  %i.bw = phi <2 x double> [ splat (double 1.000000e+00), %.lr.ph ], [ %i.ft, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %i.bx = load ptr, ptr %i.j, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %i.ca = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %15) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef %i.ca) #15
  %i.cb = load ptr, ptr %17, align 8
  %i.cc = load i32, ptr %i.k, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.cd = call noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %i.cb, i32 %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %3) #15, !noalias !14 ; 3 uses
  %i.ce = load i32, ptr %3, align 4, !noalias !14
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.c, label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.cg = icmp eq ptr %i.cd, null
  br i1 %i.cg, label %.loopexit.loopexit.i, label %bb.d

.loopexit.loopexit.i:                             ; preds = %bb.c
  store i32 5, ptr %3, align 4, !noalias !14
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !14 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  %spec.select.i.i = select i1 %i.cj, ptr @.str.20, ptr %i.ci
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %spec.select.i.i) #15, !noalias !14
  %i.ck = load ptr, ptr %13, align 8, !noalias !14 ; 3 uses
  %i.cl = load i32, ptr %i.o, align 8, !noalias !14 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !14
  store ptr %i.ck, ptr %12, align 8, !noalias !20
  store i32 %i.cl, ptr %i.p, align 8, !noalias !20
  store <2 x double> splat (double 1.000000e+00), ptr %16, align 16, !alias.scope !20
  store double 0.000000e+00, ptr %i.m, align 16, !alias.scope !20
  store i8 0, ptr %i.n, align 8, !alias.scope !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i15, i8 0, i64 60, i1 false), !alias.scope !20
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cn = add nsw i32 %i.cl, -1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %.not.i = icmp eq i32 %i.cl, 1
  br i1 %.not.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, label %.lr.ph.i.split.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cl to i64
  %18 = add nsw i64 %wide.trip.count.i.i, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.split.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.split.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 5 uses
  %.041.i.i = phi i32 [ 1, %.lr.ph.i.split.i ], [ %spec.select.i18.i, %bb.i ] ; 3 uses
  %.03039.i.i = phi i32 [ 0, %.lr.ph.i.split.i ], [ %.131.i.i, %bb.i ] ; 5 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !noalias !20
  switch i8 %i.cq, label %bb.g [
    i8 42, label %bb.f
    i8 47, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.cr = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.cs = sub nsw i32 %i.cr, %.03039.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.cs) #15, !noalias !20
  %.fca.0.load.i.i.i = load ptr, ptr %11, align 8, !noalias !20
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.i, i32 %.fca.1.load.i.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.ct = add nuw i32 %i.cr, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.cu = icmp eq i64 %indvars.iv.i.i, %i.co
  br i1 %i.cu, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.cl) #15, !noalias !20
  %.fca.0.load.i34.i.i = load ptr, ptr %10, align 8, !noalias !20
  %.fca.1.load.i37.i.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.i, i32 %.fca.1.load.i37.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.131.i.i = phi i32 [ %i.ct, %bb.f ], [ %.03039.i.i, %bb.h ], [ %.03039.i.i, %bb.g ] ; 2 uses
  %i.cv = load i8, ptr %i.cp, align 1, !noalias !20
  %i.cw = icmp eq i8 %i.cv, 47
  %spec.select.i18.i = select i1 %i.cw, i32 -1, i32 %.041.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %18
  br i1 %exitcond.not.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, label %bb.e, !llvm.loop !21

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i: ; preds = %bb.i, %.lr.ph.i.i
  %19 = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 3 uses
  %20 = phi i32 [ 1, %.lr.ph.i.i ], [ %spec.select.i18.i, %bb.i ] ; 2 uses
  %21 = phi i32 [ 0, %.lr.ph.i.i ], [ %.131.i.i, %bb.i ] ; 3 uses
  %22 = getelementptr inbounds nuw i8, ptr %i.ck, i64 %19
  %23 = load i8, ptr %22, align 1, !noalias !20
  switch i8 %23, label %27 [
    i8 42, label %24
    i8 47, label %24
  ]

24:                                               ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %25 = trunc nuw nsw i64 %19 to i32
  %26 = sub nsw i32 %25, %21
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %21, i32 noundef %26) #15, !noalias !20
  %.fca.0.load.i.i.peel.i = load ptr, ptr %11, align 8, !noalias !20
  %.fca.1.load.i.i.peel.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.peel.i, i32 %.fca.1.load.i.i.peel.i, i32 noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

27:                                               ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %28 = icmp eq i64 %19, %i.co
  br i1 %28, label %29, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %21, i32 noundef %i.cl) #15, !noalias !20
  %.fca.0.load.i34.i.peel.i = load ptr, ptr %10, align 8, !noalias !20
  %.fca.1.load.i37.i.peel.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.peel.i, i32 %.fca.1.load.i37.i.peel.i, i32 noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i: ; preds = %29, %27, %24, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !14
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !14 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %spec.select.i19.i = select i1 %i.cz, ptr @.str.20, ptr %i.cy
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull %spec.select.i19.i) #15, !noalias !14
  %i.da = load ptr, ptr %14, align 8, !noalias !14 ; 3 uses
  %i.db = load i32, ptr %i.q, align 8, !noalias !14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !14
  store ptr %i.da, ptr %9, align 8, !noalias !14
  store i32 %i.db, ptr %i.r, align 8, !noalias !14
  %i.dc = icmp sgt i32 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  %wide.trip.count.i20.i = zext nneg i32 %i.db to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.j, %.lr.ph.preheader.i.i
  %indvars.iv.i22.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i23.i, %bb.j ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.i22.i
  %i.de = load i8, ptr %i.dd, align 1, !noalias !14
  %i.df = icmp eq i8 %i.de, 47
  br i1 %i.df, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i21.i
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %indvars.iv.next.i23.i, %wide.trip.count.i20.i
  br i1 %exitcond.not.i24.i, label %._crit_edge.i.i, label %.lr.ph.i21.i, !llvm.loop !23

bb.k:                                             ; preds = %.lr.ph.i21.i
  %i.dg = trunc nuw nsw i64 %indvars.iv.i22.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !14
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 0, i32 noundef %i.dg) #15, !noalias !14
  %.fca.0.load.i.i25.i = load ptr, ptr %8, align 8, !noalias !14
  %.fca.1.load.i.i27.i = load i32, ptr %.fca.1.gep.i.i26.i, align 8, !noalias !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !14
  store i32 0, ptr %7, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !14
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.w, align 8, !noalias !14
  store i16 0, ptr %i.x, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !14
  %i.dh = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %7, ptr noundef %.fca.0.load.i.i25.i, i32 noundef %.fca.1.load.i.i27.i, ptr noundef nonnull %i.c) #15, !noalias !14
  %i.di = load i32, ptr %i.c, align 4, !noalias !14
  %.not.i.i.i = icmp eq i32 %i.di, %.fca.1.load.i.i27.i
  br i1 %.not.i.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 3, ptr %3, align 4, !noalias !14
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15, !noalias !14
  %i.dj = add nuw nsw i32 %i.dg, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !14
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.dj, i32 noundef %i.y) #15, !noalias !14
  %.fca.0.load.i23.i.i = load ptr, ptr %6, align 8, !noalias !14
  %.fca.1.load.i26.i.i = load i32, ptr %.fca.1.gep.i25.i.i, align 8, !noalias !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !14
  store i32 0, ptr %5, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !14
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.aa, align 8, !noalias !14
  store i16 0, ptr %i.ab, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !14
  %i.dk = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i23.i.i, i32 noundef %.fca.1.load.i26.i.i, ptr noundef nonnull %i.b) #15, !noalias !14
  %i.dl = load i32, ptr %i.b, align 4, !noalias !14
  %.not.i28.i.i = icmp eq i32 %i.dl, %.fca.1.load.i26.i.i
  br i1 %.not.i28.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  store i32 3, ptr %3, align 4, !noalias !14
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i: ; preds = %bb.m, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15, !noalias !14
  %i.dm = fdiv double %i.dh, %i.dk
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

._crit_edge.i.i:                                  ; preds = %bb.j, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !14
  store i32 0, ptr %4, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !14
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.t, align 8, !noalias !14
  store i16 0, ptr %i.u, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !14
  %i.dn = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef %i.da, i32 noundef %i.db, ptr noundef nonnull %i.a) #15, !noalias !14
  %i.do = load i32, ptr %i.a, align 4, !noalias !14
  %.not.i30.i.i = icmp eq i32 %i.do, %i.db
  br i1 %.not.i30.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i.i
  store i32 3, ptr %3, align 4, !noalias !14
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i: ; preds = %bb.n, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15, !noalias !14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15, !noalias !14
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread: ; preds = %bb.b, %.loopexit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i
  %.0.i.i = phi double [ %i.dm, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i ], [ %i.dn, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !14
  %.pre = load i32, ptr %3, align 4
  %i.dp = icmp slt i32 %.pre, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.dp, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit
  %i.dq = load i32, ptr %i.ac, align 4            ; 3 uses
  %i.dr = icmp eq i32 %i.dq, 30
  br i1 %i.dr, label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = call i32 @umeas_getPrefixPower_78(i32 noundef %i.dq) #15 ; 2 uses
  %i.dt = call i32 @umeas_getPrefixBase_78(i32 noundef %i.dq) #15
  %i.du = sitofp i32 %i.dt to double
  %i.dv = call i32 @llvm.abs.i32(i32 %i.ds, i1 true)
  %i.dw = uitofp nneg i32 %i.dv to double
  %i.dx = call double @pow(double noundef %i.du, double noundef %i.dw) #15 ; 2 uses
  %i.dy = icmp sgt i32 %i.ds, -1
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dz = load double, ptr %16, align 16
  %i.ea = fmul double %i.dx, %i.dz
  store double %i.ea, ptr %16, align 16
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

bb.r:                                             ; preds = %bb.p
  %i.eb = load double, ptr %i.l, align 8
  %i.ec = fmul double %i.dx, %i.eb
  store double %i.ec, ptr %i.l, align 8
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit: ; preds = %bb.o, %bb.q, %bb.r
  %i.ed = load i32, ptr %i.ad, align 4            ; 17 uses
  %i.ee = load i32, ptr %scevgep.i15, align 4
  %i.ef = mul nsw i32 %i.ee, %i.ed                ; 2 uses
  store i32 %i.ef, ptr %scevgep.i15, align 4
  %i.eg = load i32, ptr %i.ae, align 16
  %i.eh = mul nsw i32 %i.eg, %i.ed                ; 2 uses
  store i32 %i.eh, ptr %i.ae, align 16
  %i.ei = load i32, ptr %i.af, align 4
  %i.ej = mul nsw i32 %i.ei, %i.ed                ; 2 uses
  store i32 %i.ej, ptr %i.af, align 4
  %i.ek = load i32, ptr %i.ag, align 8
  %i.el = mul nsw i32 %i.ek, %i.ed                ; 2 uses
  store i32 %i.el, ptr %i.ag, align 8
  %i.em = load i32, ptr %i.ah, align 4
  %i.en = mul nsw i32 %i.em, %i.ed                ; 2 uses
  store i32 %i.en, ptr %i.ah, align 4
  %i.eo = load i32, ptr %i.ai, align 16
  %i.ep = mul nsw i32 %i.eo, %i.ed                ; 2 uses
  store i32 %i.ep, ptr %i.ai, align 16
  %i.eq = load i32, ptr %i.aj, align 4
  %i.er = mul nsw i32 %i.eq, %i.ed                ; 2 uses
  store i32 %i.er, ptr %i.aj, align 4
  %i.es = load i32, ptr %i.ak, align 8
  %i.et = mul nsw i32 %i.es, %i.ed                ; 2 uses
  store i32 %i.et, ptr %i.ak, align 8
  %i.eu = load i32, ptr %i.al, align 4
  %i.ev = mul nsw i32 %i.eu, %i.ed                ; 2 uses
  store i32 %i.ev, ptr %i.al, align 4
  %i.ew = load i32, ptr %i.am, align 16
  %i.ex = mul nsw i32 %i.ew, %i.ed                ; 2 uses
  store i32 %i.ex, ptr %i.am, align 16
  %i.ey = load i32, ptr %i.an, align 4
  %i.ez = mul nsw i32 %i.ey, %i.ed                ; 2 uses
  store i32 %i.ez, ptr %i.an, align 4
  %i.fa = load i32, ptr %i.ao, align 8
  %i.fb = mul nsw i32 %i.fa, %i.ed                ; 2 uses
  store i32 %i.fb, ptr %i.ao, align 8
  %i.fc = load i32, ptr %i.ap, align 4
  %i.fd = mul nsw i32 %i.fc, %i.ed                ; 2 uses
  store i32 %i.fd, ptr %i.ap, align 4
  %i.fe = load i32, ptr %i.aq, align 16
  %i.ff = mul nsw i32 %i.fe, %i.ed                ; 2 uses
  store i32 %i.ff, ptr %i.aq, align 16
  %i.fg = load i32, ptr %i.ar, align 4
  %i.fh = mul nsw i32 %i.fg, %i.ed                ; 2 uses
  store i32 %i.fh, ptr %i.ar, align 4
  %i.fi = icmp slt i32 %i.ed, 0                   ; 2 uses
  %i.fj = load double, ptr %16, align 16
  %i.fk = call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.fl = uitofp nneg i32 %i.fk to double         ; 2 uses
  %i.fm = call noundef double @pow(double noundef %i.fj, double noundef %i.fl) #15 ; 3 uses
  store double %i.fm, ptr %16, align 16
  %i.fn = load double, ptr %i.l, align 8
  %i.fo = call noundef double @pow(double noundef %i.fn, double noundef %i.fl) #15 ; 2 uses
  %i.fp = select i1 %i.fi, double %i.fm, double %i.fo
  %i.fq = select i1 %i.fi, double %i.fo, double %i.fm
  %i.fr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fs = insertelement <2 x double> %i.fr, double %i.fp, i64 1
  %i.ft = fmul <2 x double> %i.fs, %i.bw          ; 3 uses
  store <2 x double> %i.ft, ptr %0, align 8
  %i.fu = add nsw i32 %i.bv, %i.ef                ; 2 uses
  store i32 %i.fu, ptr %scevgep.i, align 4
  %i.fv = add nsw i32 %i.bu, %i.eh                ; 2 uses
  store i32 %i.fv, ptr %i.as, align 8
  %i.fw = add nsw i32 %i.bt, %i.ej                ; 2 uses
  store i32 %i.fw, ptr %i.at, align 4
  %i.fx = add nsw i32 %i.bs, %i.el                ; 2 uses
  store i32 %i.fx, ptr %i.au, align 8
  %i.fy = add nsw i32 %i.br, %i.en                ; 2 uses
  store i32 %i.fy, ptr %i.av, align 4
  %i.fz = add nsw i32 %i.bq, %i.ep                ; 2 uses
  store i32 %i.fz, ptr %i.aw, align 8
  %i.ga = add nsw i32 %i.bp, %i.er                ; 2 uses
  store i32 %i.ga, ptr %i.ax, align 4
  %i.gb = add nsw i32 %i.bo, %i.et                ; 2 uses
  store i32 %i.gb, ptr %i.ay, align 8
  %i.gc = add nsw i32 %i.bn, %i.ev                ; 2 uses
  store i32 %i.gc, ptr %i.az, align 4
  %i.gd = add nsw i32 %i.bm, %i.ex                ; 2 uses
  store i32 %i.gd, ptr %i.ba, align 8
  %i.ge = add nsw i32 %i.bl, %i.ez                ; 2 uses
  store i32 %i.ge, ptr %i.bb, align 4
  %i.gf = add nsw i32 %i.bk, %i.fb                ; 2 uses
  store i32 %i.gf, ptr %i.bc, align 8
  %i.gg = add nsw i32 %i.bj, %i.fd                ; 2 uses
  store i32 %i.gg, ptr %i.bd, align 4
  %i.gh = add nsw i32 %i.bi, %i.ff                ; 2 uses
  store i32 %i.gh, ptr %i.be, align 8
  %i.gi = add nsw i32 %i.bh, %i.fh                ; 2 uses
  store i32 %i.gi, ptr %i.bf, align 4
  %i.gj = fcmp olt double %.0.i.i, %i.bg
  %i.gk = select i1 %i.gj, double %i.bg, double %.0.i.i ; 2 uses
  store double %i.gk, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !24

.loopexit:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit, %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.t

._crit_edge.loopexit:                             ; preds = %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit
  %i.gl = extractelement <2 x double> %i.ft, i64 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.gm = phi double [ 1.000000e+00, %bb.a ], [ %i.gl, %._crit_edge.loopexit ]
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  %.not14 = icmp eq i64 %i.go, 0
  br i1 %.not14, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.gp = uitofp i64 %i.go to double
  %i.gq = fmul double %i.gm, %i.gp
  store double %i.gq, ptr %i.d, align 8
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %._crit_edge, %bb.s
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK6icu_785units14UnitsConverter11scaleToBaseEdPdi(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1
  %i.c = fadd double %.0, 5.000000e-01            ; 2 uses
  %i.d = sitofp i32 %3 to double                  ; 2 uses
  %i.e = fcmp ogt double %i.c, %i.d
  %.1 = select i1 %i.e, double %i.d, double %i.c
  %i.f = fptosi double %.1 to i32
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %2, i64 %i.g ; 2 uses
  %i.i = load double, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = fadd double %i.i, %i.k
  %i.m = fmul double %i.l, 5.000000e-01
  ret double %i.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef double @_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(296) %0, double noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = fcmp olt double %1, 0.000000e+00
  %i.b = fneg double %1
  %.0 = select i1 %i.a, double %i.b, double %1    ; 3 uses
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %2, i64 %i.c
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp ult double %.0, %i.e
  br i1 %i.f, label %bb.b, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.b:                                             ; preds = %bb.a
  %i.g = icmp sgt i32 %3, -1
  br i1 %i.g, label %.lr.ph.preheader.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.h = add nuw nsw i32 %3, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.025.i = phi i32 [ %.1.i, %bb.d ], [ %i.h, %.lr.ph.preheader.i ] ; 2 uses
  %.02024.i = phi i32 [ %.121.i, %bb.d ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %i.i = add nuw nsw i32 %.02024.i, %.025.i
  %i.j = lshr i32 %i.i, 1                         ; 5 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.k
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp olt double %.0, %i.m
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = add nuw nsw i32 %i.j, 1                  ; 2 uses
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.p
  %i.r = load double, ptr %i.q, align 8
  %i.s = fcmp ogt double %.0, %i.r
  br i1 %i.s, label %bb.d, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.121.i = phi i32 [ %.02024.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.025.i, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.121.i, %.1.i
  br i1 %i.t, label %.lr.ph.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit, !llvm.loop !25

_ZN6icu_785unitsL13bsearchRangesEPdid.exit:       ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.022.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
  %i.u = sitofp i32 %.022.i to double
  ret double %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_785units14UnitsConverter7convertEd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.l, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.19) #17
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp olt double %1, 0.000000e+00
  %i.j = fneg double %1
  %.0.i = select i1 %i.i, double %i.j, double %1
  %i.k = fadd double %.0.i, 5.000000e-01          ; 2 uses
  %i.l = fcmp ogt double %i.k, 1.700000e+01
  %.1.i = select i1 %i.l, double 1.700000e+01, double %i.k
  %i.m = fptosi double %.1.i to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.n ; 2 uses
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = fadd double %i.p, %i.r
  %i.t = fmul double %i.s, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %1, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load double, ptr %i.x, align 8
  %i.z = fdiv double %i.w, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi double [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %1, %bb.c ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(9) @.str.19) #17
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.h:                                             ; preds = %bb.g
  %i.af = fcmp olt double %.0, 0.000000e+00
  %i.ag = fneg double %.0
  %.0.i21 = select i1 %i.af, double %i.ag, double %.0 ; 3 uses
  %i.ah = fcmp ult double %.0.i21, 5.580000e+01
  br i1 %i.ah, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.025.i.i = phi i32 [ %.1.i.i, %bb.j ], [ 18, %bb.h ] ; 2 uses
  %.02024.i.i = phi i32 [ %.121.i.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.ai = add nuw nsw i32 %.02024.i.i, %.025.i.i
  %i.aj = lshr i32 %i.ai, 1                       ; 4 uses
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8
  %i.an = fcmp olt double %.0.i21, %i.am
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.ao = add nuw nsw i32 %i.aj, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fcmp ogt double %.0.i21, %i.ar
  br i1 %i.as, label %bb.j, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.at = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.at, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !25

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.au = uitofp nneg i32 %i.aj to double
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.k:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fmul double %.0, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.az = load double, ptr %i.ay, align 8
  %i.ba = fdiv double %i.ax, %i.az
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.l:                                             ; preds = %bb.b
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bc = load double, ptr %i.bb, align 8
  %i.bd = fadd double %1, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bh = load double, ptr %i.bg, align 8
  %i.bi = fdiv double %i.bf, %i.bh
  %i.bj = fmul double %i.bd, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = fsub double %i.bj, %i.bl                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !range !26, !noundef !27
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = fcmp oeq double %i.bm, 0.000000e+00
  br i1 %i.bq, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.br = tail call double @uprv_getInfinity_78() #15
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.o:                                             ; preds = %bb.m
  %i.bs = fdiv double 1.000000e+00, %i.bm
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit: ; preds = %bb.h, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, %bb.l, %bb.o, %bb.k, %bb.g, %bb.n
  %.018 = phi double [ %i.br, %bb.n ], [ %.0, %bb.g ], [ %i.ba, %bb.k ], [ %i.bm, %bb.l ], [ %i.bs, %bb.o ], [ 1.700000e+01, %bb.h ], [ %i.au, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit ]
  ret double %.018
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare double @uprv_getInfinity_78() local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef double @_ZNK6icu_785units14UnitsConverter14convertInverseEd(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0, double noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(9) @.str.19) #17
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp olt double %1, 0.000000e+00
  %i.j = fneg double %1
  %.0.i = select i1 %i.i, double %i.j, double %1
  %i.k = fadd double %.0.i, 5.000000e-01          ; 2 uses
  %i.l = fcmp ogt double %i.k, 1.700000e+01
  %.1.i = select i1 %i.l, double 1.700000e+01, double %i.k
  %i.m = fptosi double %.1.i to i32
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.n ; 2 uses
  %i.p = load double, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %i.r = load double, ptr %i.q, align 8
  %i.s = fadd double %i.p, %i.r
  %i.t = fmul double %i.s, 5.000000e-01
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.v = load double, ptr %i.u, align 8
  %i.w = fmul double %1, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.y = load double, ptr %i.x, align 8
  %i.z = fdiv double %i.w, %i.y
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.0 = phi double [ %i.z, %bb.e ], [ %i.t, %bb.d ], [ %1, %bb.c ] ; 5 uses
  br i1 %i.c, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(9) @.str.19) #17
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp olt double %.0, 0.000000e+00
  %i.ad = fneg double %.0
  %.0.i21 = select i1 %i.ac, double %i.ad, double %.0 ; 3 uses
  %i.ae = fcmp ult double %.0.i21, 5.580000e+01
  br i1 %i.ae, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

.lr.ph.i.i:                                       ; preds = %bb.h, %bb.j
  %.025.i.i = phi i32 [ %.1.i.i, %bb.j ], [ 18, %bb.h ] ; 2 uses
  %.02024.i.i = phi i32 [ %.121.i.i, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.af = add nuw nsw i32 %.02024.i.i, %.025.i.i
  %i.ag = lshr i32 %i.af, 1                       ; 4 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fcmp olt double %.0.i21, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.al = add nuw nsw i32 %i.ag, 1                ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN6icu_785unitsL26minMetersPerSecForBeaufortE, i64 %i.am
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = fcmp ogt double %.0.i21, %i.ao
  br i1 %i.ap, label %bb.j, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ag, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.aq = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !25

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.ar = uitofp nneg i32 %i.ag to double
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.k:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.at = load double, ptr %i.as, align 8
  %i.au = fmul double %.0, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aw = load double, ptr %i.av, align 8
  %i.ax = fdiv double %i.au, %i.aw
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.l:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.az = load i8, ptr %i.ay, align 8, !range !26, !noundef !27
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = fcmp oeq double %1, 0.000000e+00
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bc = tail call double @uprv_getInfinity_78() #15
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

bb.o:                                             ; preds = %bb.m
  %i.bd = fdiv double 1.000000e+00, %1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.1 = phi double [ %i.bd, %bb.o ], [ %1, %bb.l ]
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fadd double %.1, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bi = load double, ptr %i.bh, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fdiv double %i.bi, %i.bk
  %i.bm = fmul double %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = fsub double %i.bm, %i.bo
  br label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit: ; preds = %bb.h, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, %bb.k, %bb.g, %bb.p, %bb.n
  %.018 = phi double [ %i.bc, %bb.n ], [ %i.bp, %bb.p ], [ %i.ax, %bb.k ], [ %.0, %bb.g ], [ 1.700000e+01, %bb.h ], [ %i.ar, %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit ]
  ret double %.018
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK6icu_785units14UnitsConverter17getConversionInfoEv(ptr dead_on_unwind noalias writable writeonly sret(%"struct.icu_78::units::ConversionInfo") align 8 captures(none) initializes((0, 17)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(296) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.b = load double, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.d = load double, ptr %i.c, align 8
  %i.e = fdiv double %i.b, %i.d                   ; 2 uses
  store double %i.e, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.g = load double, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.i = load double, ptr %i.h, align 8
  %i.j = fneg double %i.i
  %i.k = tail call double @llvm.fmuladd.f64(double %i.g, double %i.e, double %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.n = load i8, ptr %i.m, align 8, !range !26, !noundef !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.n, ptr %i.o, align 8
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #10

declare noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42), ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydaEPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #11

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #11

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare void @_ZN6icu_785units21getAllConversionRatesERNS_16MaybeStackVectorINS0_18ConversionRateInfoELi8EEER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i8, ptr %i.d, align 4
  %.not.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.i.i, label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @uprv_free_78(ptr noundef %i.g) #15
  br label %_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit

_ZN6icu_7815MaybeStackArrayIPNS_5units18ConversionRateInfoELi8EED2Ev.exit: ; preds = %._crit_edge, %bb.b
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.h = phi i32 [ %i.a, %.lr.ph ], [ %i.y, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8              ; 8 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.n) #15
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.p = load ptr, ptr %i.o, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.p) #15
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.r = load ptr, ptr %i.q, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.r) #15
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.t) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.v) #15
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef %i.x) #15
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.k) #15
  %.pre = load i32, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.y = phi i32 [ %i.h, %bb.c ], [ %.pre, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge, !llvm.loop !28
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr %1, i32 %2, i32 noundef range(i32 -1, 2) %3, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) unnamed_addr #4 {
bb.a:
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 4 uses
  store ptr %1, ptr %8, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %2, ptr %i.b, align 8
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 94
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !29

bb.c:                                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef 0, i32 noundef %i.g) #15
  %.fca.0.load.i = load ptr, ptr %7, align 8
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load.i = load i32, ptr %.fca.1.gep.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.h = add nuw nsw i32 %i.g, 1
  %i.i = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %8, i32 noundef %i.h, i32 noundef %i.i) #15
  %.fca.0.load.i27 = load ptr, ptr %6, align 8
  %.fca.1.gep.i29 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i30 = load i32, ptr %.fca.1.gep.i29, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store i32 0, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  store ptr @.str.20, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr @.str.20, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i16 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.n = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i27, i32 noundef %.fca.1.load.i30, ptr noundef nonnull %i.a) #15
  %i.o = load i32, ptr %i.a, align 4
  %.not.i = icmp eq i32 %i.o, %.fca.1.load.i30
  br i1 %.not.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 3, ptr %4, align 4
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %i.p = fptosi double %i.n to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit
  %.sroa.032.0 = phi ptr [ %.fca.0.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %1, %bb.a ], [ %1, %bb.b ]
  %.sroa.633.0 = phi i32 [ %.fca.1.load.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ %2, %bb.a ], [ %2, %bb.b ]
  %.0 = phi i32 [ %i.p, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit ], [ 1, %bb.a ], [ 1, %bb.b ]
  call void @_ZN6icu_785units23addSingleFactorConstantENS_11StringPieceEiNS0_6SignumERNS0_6FactorER10UErrorCode(ptr %.sroa.032.0, i32 %.sroa.633.0, i32 noundef %.0, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  ret void
}

declare void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12), i32 noundef, i32 noundef) unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind memory(argmem: readwrite, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode: argument 0"}
!16 = distinct !{!16, !"_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode: argument 0"}
!19 = distinct !{!19, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode"}
!20 = !{!18, !15}
!21 = distinct !{!21, !6, !22}
!22 = !{!"llvm.loop.peeled.count", i32 1}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = distinct !{!25, !6}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = distinct !{!28, !6}
!29 = distinct !{!29, !6}
end_hunk_0
