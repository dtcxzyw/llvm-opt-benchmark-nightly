inline.NumInlined: 203
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(281) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %2, i32 noundef range(i32 3, 2) %3, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) unnamed_addr #4 {
bb.a:
  %6 = alloca %"struct.icu_78::units::Factor", align 16 ; 11 uses
  %7 = alloca %"struct.icu_78::units::Factor", align 8 ; 12 uses
  %8 = alloca %"struct.icu_78::units::Factor", align 8 ; 19 uses
  %9 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
  %10 = alloca %"struct.icu_78::units::Factor", align 16 ; 19 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ab = load double, ptr %7, align 8            ; 2 uses
  %11 = load double, ptr %6, align 16
  %12 = fmul double %i.ab, %11
  %13 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %14 = load double, ptr %13, align 8             ; 2 uses
  %i.ac = load double, ptr %i.aa, align 8
  %i.ad = fmul double %14, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.af = load <4 x i32>, ptr %i.ae, align 4
  %i.ag = load <4 x i32>, ptr %scevgep.i, align 4
end_hunk_1
begin_hunk_2_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add nsw i32 %i.ba, %i.ay                ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %15 = load double, ptr %i.bc, align 8
  switch i32 %3, label %bb.o [
    i32 1, label %bb.m
    i32 0, label %bb.n
end_hunk_2
begin_hunk_3_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.co = phi double [ %i.bx, %bb.n ], [ %i.be, %bb.m ]
  %.pn = phi double [ %i.bx, %bb.n ], [ %i.bf, %bb.m ]
  %.pn146 = phi double [ %i.bv, %bb.n ], [ %i.be, %bb.m ]
  %.promoted.i = fmul double %12, %.pn146
  %.promoted13.i = fmul double %i.ad, %.pn
  store i32 %.sink, ptr %i.az, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %8, i64 16
end_hunk_3
begin_hunk_4_@_ZN6icu_785units12_GLOBAL__N_118loadConversionRateERNS0_14ConversionRateERKNS_15MeasureUnitImplES6_NS0_14ConvertibilityERKNS0_15ConversionRatesER10UErrorCode:bb.a
  br i1 %or.cond.not.i70.not, label %.critedge, label %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92

_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92: ; preds = %bb.u, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72
  %16 = fmul double %14, %15
  %17 = fdiv double %16, %i.ab
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %17, ptr %18, align 8
  %19 = fmul double %i.cq, %i.co
  %20 = fdiv double %19, %i.cn
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double %20, ptr %21, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit.thread87, %_ZN6icu_785units6Factor19substituteConstantsEv.exit, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72.thread92, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit72, %_ZN6icu_785units12_GLOBAL__N_115checkSimpleUnitERKNS_15MeasureUnitImplER10UErrorCode.exit
end_hunk_4
