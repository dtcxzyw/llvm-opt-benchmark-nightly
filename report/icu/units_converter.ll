Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/units_converter?download=true
inline.NumInlined: 208
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.kb = phi double [ %i.js, %bb.cd ], [ %i.js, %bb.cf ], [ %i.ka, %bb.cg ]
  %i.kc = phi double [ %i.jt, %bb.cd ], [ %i.jz, %bb.cf ], [ %i.jt, %bb.cg ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.kc, ptr %i.kd, align 8, !tbaa !81
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.kb, ptr %i.ke, align 8, !tbaa !82
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN6icu_785units6Factor19substituteConstantsEv.exit79, %bb.v, %.critedge, %bb.o, %bb.w, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_785units14UnitsConverter15compareTwoUnitsERKNS_15MeasureUnitImplES4_RKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %5 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %6 = alloca %"struct.icu_78::units::Factor", align 8 ; 6 uses
  %i.a = load i32, ptr %3, align 4, !tbaa !26
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %0, align 8, !tbaa !28
  %i.d = icmp eq i32 %i.c, 2
  %i.e = load i32, ptr %1, align 8
  %i.f = icmp eq i32 %i.e, 2
  %or.cond44 = select i1 %i.d, i1 true, i1 %i.f
  br i1 %or.cond44, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 65804, ptr %3, align 4, !tbaa !26
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i32 @_ZN6icu_785units21extractConvertibilityERKNS_15MeasureUnitImplES3_RKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.h = load i32, ptr %3, align 4, !tbaa !26
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.j = and i32 %i.g, 1
  %or.cond = icmp eq i32 %i.j, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 65804, ptr %3, align 4, !tbaa !26
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
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
  %i.m = call noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %5)
  call void @_ZN6icu_785units6Factor19substituteConstantsEv(ptr noundef nonnull align 8 dereferenceable(88) %6)
  %i.n = load double, ptr %5, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !15
  %i.q = fdiv double %i.n, %i.p
  %i.r = load double, ptr %6, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = load double, ptr %i.s, align 8, !tbaa !15
  %i.u = fdiv double %i.r, %i.t
  %i.v = fsub double %i.q, %i.u                   ; 2 uses
  %i.w = fcmp ogt double %i.v, 0.000000e+00
  %i.x = fcmp olt double %i.v, 0.000000e+00
  %. = sext i1 %i.x to i32
  %.0 = select i1 %i.w, i32 1, i32 %.
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.i, %bb.k, %bb.j
  %.1 = phi i32 [ %.0, %bb.k ], [ %i.m, %bb.j ], [ 1, %bb.i ], [ -1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %bb.d, %bb.a, %bb.c
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ %.1, %bb.l ], [ 0, %bb.f ], [ 0, %bb.d ]
  ret i32 %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc { ptr, i32 } @_ZN6icu_785units12_GLOBAL__N_121getSpecialMappingNameERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #4 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %4 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 4 uses
  %5 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %.val = load i32, ptr %2, align 4, !tbaa !26
  %i.a = icmp slt i32 %.val, 1
  %i.b = load i32, ptr %0, align 8
  %.not6.i = icmp eq i32 %i.b, 0
  %or.cond1.i = select i1 %i.a, i1 %.not6.i, i1 false
  br i1 %or.cond1.i, label %bb.b, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !38
  %i.e = icmp eq i32 %i.d, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !39
  %.pre17 = load ptr, ptr %.pre, align 8, !tbaa !43 ; 3 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %.pre17, i64 12, i1 false)
  %i.h = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %4)
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef %i.h)
  %i.i = load ptr, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %1, ptr %i.i, i32 %i.k, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 2 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !26
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12
  %i.o = icmp eq ptr %i.l, null
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 5, ptr %2, align 4, !tbaa !26
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %spec.select.i = select i1 %i.r, ptr @.str.20, ptr %i.q
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull %spec.select.i)
  %.fca.0.load.pre.pre = load ptr, ptr %3, align 8
  %.fca.1.gep.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.pre.pre = load i32, ptr %.fca.1.gep.phi.trans.insert.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12, %bb.e, %bb.d
  %.fca.1.load.pre = phi i32 [ %.fca.1.load.pre.pre, %bb.e ], [ 0, %bb.d ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  %.fca.0.load.pre = phi ptr [ %.fca.0.load.pre.pre, %bb.e ], [ null, %bb.d ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread12 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread: ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit, %bb.a, %bb.f
  %.fca.1.load = phi i32 [ %.fca.1.load.pre, %bb.f ], [ 0, %bb.a ], [ 0, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.load = phi ptr [ %.fca.0.load.pre, %bb.f ], [ null, %bb.a ], [ null, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.fca.0.load, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.fca.1.load, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr noundef nonnull align 8 dereferenceable(12), ptr, i32) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 25), (28, 88)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 {
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
  store <2 x double> splat (double 1.000000e+00), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.f, align 8, !tbaa !84
  %scevgep.i = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i, i8 0, i64 60, i1 false), !tbaa !10
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !38   ; 2 uses
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
  %i.bg = phi double [ 0.000000e+00, %.lr.ph ], [ %i.gr, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ] ; 2 uses
  %i.bh = phi i32 [ 0, %.lr.ph ], [ %i.gp, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bi = phi i32 [ 0, %.lr.ph ], [ %i.go, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bj = phi i32 [ 0, %.lr.ph ], [ %i.gn, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bk = phi i32 [ 0, %.lr.ph ], [ %i.gm, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bl = phi i32 [ 0, %.lr.ph ], [ %i.gl, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bm = phi i32 [ 0, %.lr.ph ], [ %i.gk, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bn = phi i32 [ 0, %.lr.ph ], [ %i.gj, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bo = phi i32 [ 0, %.lr.ph ], [ %i.gi, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bp = phi i32 [ 0, %.lr.ph ], [ %i.gh, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bq = phi i32 [ 0, %.lr.ph ], [ %i.gg, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.br = phi i32 [ 0, %.lr.ph ], [ %i.gf, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bs = phi i32 [ 0, %.lr.ph ], [ %i.ge, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bt = phi i32 [ 0, %.lr.ph ], [ %i.gd, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bu = phi i32 [ 0, %.lr.ph ], [ %i.gc, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %i.bv = phi i32 [ 0, %.lr.ph ], [ %i.gb, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ] ; 2 uses
  %i.bw = phi <2 x double> [ splat (double 1.000000e+00), %.lr.ph ], [ %i.ga, %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !39
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %15, ptr noundef nonnull align 4 dereferenceable(12) %i.bz, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  %i.ca = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %15)
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %17, align 8
  %i.cc = load i32, ptr %i.k, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !85)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.cd = call noundef ptr @_ZNK6icu_785units15ConversionRates21extractConversionInfoENS_11StringPieceER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr %i.cb, i32 %i.cc, ptr noundef nonnull align 4 dereferenceable(4) %3), !noalias !85 ; 3 uses
  %i.ce = load i32, ptr %3, align 4, !tbaa !26, !noalias !85
  %i.cf = icmp slt i32 %i.ce, 1
  br i1 %i.cf, label %bb.c, label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.cg = icmp eq ptr %i.cd, null
  br i1 %i.cg, label %.loopexit.loopexit.i, label %bb.d

.loopexit.loopexit.i:                             ; preds = %bb.c
  store i32 5, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !45, !noalias !85 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  %spec.select.i.i = select i1 %i.cj, ptr @.str.20, ptr %i.ci
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %spec.select.i.i), !noalias !85
  %i.ck = load ptr, ptr %13, align 8, !noalias !85 ; 3 uses
  %i.cl = load i32, ptr %i.o, align 8, !noalias !85 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !85
  store ptr %i.ck, ptr %12, align 8, !noalias !91
  store i32 %i.cl, ptr %i.p, align 8, !noalias !91
  store <2 x double> splat (double 1.000000e+00), ptr %16, align 16, !tbaa !8, !alias.scope !91
  store double 0.000000e+00, ptr %i.m, align 16, !tbaa !11, !alias.scope !91
  store i8 0, ptr %i.n, align 8, !tbaa !84, !alias.scope !91
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i15, i8 0, i64 60, i1 false), !tbaa !10, !alias.scope !91
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cn = add nsw i32 %i.cl, -1
  %i.co = zext nneg i32 %i.cn to i64              ; 2 uses
  %.not.i = icmp eq i32 %i.cl, 1
  br i1 %.not.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, label %.lr.ph.i.split.i

.lr.ph.i.split.i:                                 ; preds = %.lr.ph.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.cl to i64
  %i.cp = add nsw i64 %wide.trip.count.i.i, -2
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph.i.split.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.split.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 5 uses
  %.041.i.i = phi i32 [ 1, %.lr.ph.i.split.i ], [ %spec.select.i18.i, %bb.g ] ; 3 uses
  %.03039.i.i = phi i32 [ 0, %.lr.ph.i.split.i ], [ %.131.i.i, %bb.g ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %indvars.iv.i.i ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !80, !noalias !91
  switch i8 %i.cr, label %18 [
    i8 42, label %bb.f
    i8 47, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.cs = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.ct = sub nsw i32 %i.cs, %.03039.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.ct), !noalias !91
  %.fca.0.load.i.i.i = load ptr, ptr %11, align 8, !noalias !91
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.i, i32 %.fca.1.load.i.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.cu = add nuw nsw i32 %i.cs, 1
  br label %bb.g

18:                                               ; preds = %bb.e
  %19 = icmp eq i64 %indvars.iv.i.i, %i.co
  br i1 %19, label %20, label %bb.g

20:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.cl), !noalias !91
  %.fca.0.load.i34.i.i = load ptr, ptr %10, align 8, !noalias !91
  %.fca.1.load.i37.i.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.i, i32 %.fca.1.load.i37.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.g

bb.g:                                             ; preds = %20, %18, %bb.f
  %.131.i.i = phi i32 [ %i.cu, %bb.f ], [ %.03039.i.i, %20 ], [ %.03039.i.i, %18 ] ; 2 uses
  %21 = load i8, ptr %i.cq, align 1, !tbaa !80, !noalias !91
  %i.cv = icmp eq i8 %21, 47
  %spec.select.i18.i = select i1 %i.cv, i32 -1, i32 %.041.i.i ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.i.i, %i.cp
  br i1 %exitcond.not.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, label %bb.e, !llvm.loop !92

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i: ; preds = %bb.g, %.lr.ph.i.i
  %i.cw = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.cx = phi i32 [ 1, %.lr.ph.i.i ], [ %spec.select.i18.i, %bb.g ] ; 2 uses
  %i.cy = phi i32 [ 0, %.lr.ph.i.i ], [ %.131.i.i, %bb.g ] ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cw
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !80, !noalias !91
  switch i8 %i.da, label %bb.i [
    i8 42, label %bb.h
    i8 47, label %bb.h
  ]

bb.h:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %i.db = trunc nuw nsw i64 %i.cw to i32
  %i.dc = sub nsw i32 %i.db, %i.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.cy, i32 noundef %i.dc), !noalias !91
  %.fca.0.load.i.i.peel.i = load ptr, ptr %11, align 8, !noalias !91
  %.fca.1.load.i.i.peel.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.peel.i, i32 %.fca.1.load.i.i.peel.i, i32 noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

bb.i:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.loopexit.peel.begin.i
  %i.dd = icmp eq i64 %i.cw, %i.co
  br i1 %i.dd, label %bb.j, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !91
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %i.cy, i32 noundef %i.cl), !noalias !91
  %.fca.0.load.i34.i.peel.i = load ptr, ptr %10, align 8, !noalias !91
  %.fca.1.load.i37.i.peel.i = load i32, ptr %.fca.1.gep.i36.i.i, align 8, !noalias !91
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !91
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.peel.i, i32 %.fca.1.load.i37.i.peel.i, i32 noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !85
  %i.de = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !45, !noalias !85 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  %spec.select.i19.i = select i1 %i.dg, ptr @.str.20, ptr %i.df
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull %spec.select.i19.i), !noalias !85
  %i.dh = load ptr, ptr %14, align 8, !noalias !85 ; 3 uses
  %i.di = load i32, ptr %i.q, align 8, !noalias !85 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !85
  store ptr %i.dh, ptr %9, align 8, !noalias !85
  store i32 %i.di, ptr %i.r, align 8, !noalias !85
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  %wide.trip.count.i20.i = zext nneg i32 %i.di to i64
  br label %.lr.ph.i21.i

.lr.ph.i21.i:                                     ; preds = %bb.k, %.lr.ph.preheader.i.i
  %indvars.iv.i22.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i23.i, %bb.k ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv.i22.i
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !80, !noalias !85
  %i.dm = icmp eq i8 %i.dl, 47
  br i1 %i.dm, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i21.i
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %indvars.iv.next.i23.i, %wide.trip.count.i20.i
  br i1 %exitcond.not.i24.i, label %._crit_edge.i.i, label %.lr.ph.i21.i, !llvm.loop !94

bb.l:                                             ; preds = %.lr.ph.i21.i
  %i.dn = trunc nuw nsw i64 %indvars.iv.i22.i to i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !85
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 0, i32 noundef %i.dn), !noalias !85
  %.fca.0.load.i.i25.i = load ptr, ptr %8, align 8, !noalias !85
  %.fca.1.load.i.i27.i = load i32, ptr %.fca.1.gep.i.i26.i, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19, !noalias !85
  store i32 0, ptr %7, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.w, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.x, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19, !noalias !85
  %i.do = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %7, ptr noundef %.fca.0.load.i.i25.i, i32 noundef %.fca.1.load.i.i27.i, ptr noundef nonnull %i.c), !noalias !85
  %i.dp = load i32, ptr %i.c, align 4, !tbaa !10, !noalias !85
  %.not.i.i.i = icmp eq i32 %i.dp, %.fca.1.load.i.i27.i
  br i1 %.not.i.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19, !noalias !85
  %i.dq = add nuw nsw i32 %i.dn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !85
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.dq, i32 noundef %i.y), !noalias !85
  %.fca.0.load.i23.i.i = load ptr, ptr %6, align 8, !noalias !85
  %.fca.1.load.i26.i.i = load i32, ptr %.fca.1.gep.i25.i.i, align 8, !noalias !85 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !85
  store i32 0, ptr %5, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.aa, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.ab, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !85
  %i.dr = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i23.i.i, i32 noundef %.fca.1.load.i26.i.i, ptr noundef nonnull %i.b), !noalias !85
  %i.ds = load i32, ptr %i.b, align 4, !tbaa !10, !noalias !85
  %.not.i28.i.i = icmp eq i32 %i.ds, %.fca.1.load.i26.i.i
  br i1 %.not.i28.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, label %bb.n

bb.n:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i: ; preds = %bb.n, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19, !noalias !85
  %i.dt = fdiv double %i.do, %i.dr
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

._crit_edge.i.i:                                  ; preds = %bb.k, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19, !noalias !85
  store i32 0, ptr %4, align 8, !tbaa !18, !noalias !85
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !85
  store <2 x ptr> <ptr @.str.20, ptr @.str.20>, ptr %i.t, align 8, !tbaa !67, !noalias !85
  store i16 0, ptr %i.u, align 8, !tbaa !25, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !85
  %i.du = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef %i.dh, i32 noundef %i.di, ptr noundef nonnull %i.a), !noalias !85
  %i.dv = load i32, ptr %i.a, align 4, !tbaa !10, !noalias !85
  %.not.i30.i.i = icmp eq i32 %i.dv, %i.di
  br i1 %.not.i30.i.i, label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i, label %bb.o

bb.o:                                             ; preds = %._crit_edge.i.i
  store i32 3, ptr %3, align 4, !tbaa !26, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i

_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i: ; preds = %bb.o, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !85
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19, !noalias !85
  br label %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread: ; preds = %bb.b, %.loopexit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br label %.loopexit

_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit: ; preds = %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i
  %.0.i.i = phi double [ %i.dt, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit29.i.i ], [ %i.du, %_ZN6icu_785units12_GLOBAL__N_111strToDoubleENS_11StringPieceER10UErrorCode.exit31.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !85
  %.pre.a = load i32, ptr %3, align 4, !tbaa !26
  %i.dw = icmp slt i32 %.pre.a, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  br i1 %i.dw, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit
  %i.dx = load i32, ptr %i.ac, align 4, !tbaa !95 ; 3 uses
  %i.dy = icmp eq i32 %i.dx, 30
  br i1 %i.dy, label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = call i32 @umeas_getPrefixPower_78(i32 noundef %i.dx) ; 2 uses
  %i.ea = call i32 @umeas_getPrefixBase_78(i32 noundef %i.dx)
  %i.eb = sitofp i32 %i.ea to double
  %i.ec = call i32 @llvm.abs.i32(i32 %i.dz, i1 true)
  %i.ed = uitofp nneg i32 %i.ec to double
  %i.ee = call double @pow(double noundef %i.eb, double noundef %i.ed) #19 ; 2 uses
  %i.ef = icmp sgt i32 %i.dz, -1
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eg = load double, ptr %16, align 16, !tbaa !14
  %i.eh = fmul double %i.ee, %i.eg
  store double %i.eh, ptr %16, align 16, !tbaa !14
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

bb.s:                                             ; preds = %bb.q
  %i.ei = load double, ptr %i.l, align 8, !tbaa !15
  %i.ej = fmul double %i.ee, %i.ei
  store double %i.ej, ptr %i.l, align 8, !tbaa !15
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit: ; preds = %bb.p, %bb.r, %bb.s
  %i.ek = load i32, ptr %i.ad, align 4, !tbaa !48 ; 17 uses
  %i.el = load i32, ptr %scevgep.i15, align 4, !tbaa !10
  %i.em = mul nsw i32 %i.el, %i.ek                ; 2 uses
  store i32 %i.em, ptr %scevgep.i15, align 4, !tbaa !10
  %i.en = load i32, ptr %i.ae, align 16, !tbaa !10
  %i.eo = mul nsw i32 %i.en, %i.ek                ; 2 uses
  store i32 %i.eo, ptr %i.ae, align 16, !tbaa !10
  %i.ep = load i32, ptr %i.af, align 4, !tbaa !10
  %i.eq = mul nsw i32 %i.ep, %i.ek                ; 2 uses
  store i32 %i.eq, ptr %i.af, align 4, !tbaa !10
  %i.er = load i32, ptr %i.ag, align 8, !tbaa !10
  %i.es = mul nsw i32 %i.er, %i.ek                ; 2 uses
  store i32 %i.es, ptr %i.ag, align 8, !tbaa !10
  %i.et = load i32, ptr %i.ah, align 4, !tbaa !10
end_hunk_0
