inline.NumInlined: 203
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_7811StringPiece7compareES0_
; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode(ptr dead_on_unwind noalias nonnull writable writeonly align 8 captures(none) initializes((0, 25), (28, 88)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(112) %1, ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #4 {
bb.a:
  %4 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::double_conversion::StringToDoubleConverter", align 8 ; 8 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %16, i64 24
  %scevgep.i15.a = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.gep.i.i.i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.fca.1.gep.i36.i.i.a = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.fca.1.gep.i.i26.i.a = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.y = load i32, ptr @_ZN6icu_7811StringPiece4nposE, align 4
  %.fca.1.gep.i25.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %15, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8
end_hunk_1
begin_hunk_2_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.cb = call noundef ptr @_ZNK6icu_7814SingleUnitImpl15getSimpleUnitIDEv(ptr noundef nonnull align 4 dereferenceable(12) %15) #15
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %17, ptr noundef %i.cb) #15
  %i.cc = load ptr, ptr %17, align 8
  %i.cd = load i32, ptr %18, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !14)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
end_hunk_2
begin_hunk_3_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %spec.select.i.i = select i1 %i.ck, ptr @.str.20, ptr %i.cj
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %spec.select.i.i) #15, !noalias !14
  %i.cl = load ptr, ptr %13, align 8, !noalias !14 ; 2 uses
  %i.cm = load i32, ptr %i.m, align 8, !noalias !14 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !14
  store ptr %i.cl, ptr %12, align 8, !noalias !20
  store i32 %i.cm, ptr %i.n, align 8, !noalias !20
  store <2 x double> splat (double 1.000000e+00), ptr %16, align 16, !alias.scope !20
  store double 0.000000e+00, ptr %i.k, align 16, !alias.scope !20
  store i8 0, ptr %i.l, align 8, !alias.scope !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %scevgep.i15.a, i8 0, i64 60, i1 false), !alias.scope !20
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i

end_hunk_3
begin_hunk_4_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.ct) #15, !noalias !20
  %.fca.0.load.i.i.i = load ptr, ptr %11, align 8, !noalias !20
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i.a, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.i, i32 %.fca.1.load.i.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.cu = add i32 %i.cs, 1
end_hunk_4
begin_hunk_5_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !20
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %10, ptr noundef nonnull align 8 dereferenceable(12) %12, i32 noundef %.03039.i.i, i32 noundef %i.cm) #15, !noalias !20
  %.fca.0.load.i34.i.i = load ptr, ptr %10, align 8, !noalias !20
  %.fca.1.load.i37.i.i = load i32, ptr %.fca.1.gep.i36.i.i.a, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i34.i.i, i32 %.fca.1.load.i37.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  br label %bb.i
end_hunk_5
begin_hunk_6_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %spec.select.i19.i = select i1 %i.da, ptr @.str.20, ptr %i.cz
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %14, ptr noundef nonnull %spec.select.i19.i) #15, !noalias !14
  %i.db = load ptr, ptr %14, align 8, !noalias !14 ; 3 uses
  %i.dc = load i32, ptr %i.o, align 8, !noalias !14 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !14
  store ptr %i.db, ptr %9, align 8, !noalias !14
  store i32 %i.dc, ptr %i.p, align 8, !noalias !14
  %i.dd = icmp sgt i32 %i.dc, 0
  br i1 %i.dd, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

end_hunk_6
begin_hunk_7_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !14
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %8, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 0, i32 noundef %i.dh) #15, !noalias !14
  %.fca.0.load.i.i25.i = load ptr, ptr %8, align 8, !noalias !14
  %.fca.1.load.i.i27.i = load i32, ptr %.fca.1.gep.i.i26.i.a, align 8, !noalias !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15, !noalias !14
  store i32 0, ptr %7, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false), !noalias !14
  store ptr @.str.20, ptr %i.v, align 8, !noalias !14
  store ptr @.str.20, ptr %i.w, align 8, !noalias !14
  store i16 0, ptr %i.x, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15, !noalias !14
  %i.di = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %7, ptr noundef %.fca.0.load.i.i25.i, i32 noundef %.fca.1.load.i.i27.i, ptr noundef nonnull %i.c) #15, !noalias !14
end_hunk_7
begin_hunk_8_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !14
  call void @_ZN6icu_7811StringPieceC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(12) %6, ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef %i.dk, i32 noundef %i.y) #15, !noalias !14
  %.fca.0.load.i23.i.i = load ptr, ptr %6, align 8, !noalias !14
  %.fca.1.load.i26.i.i = load i32, ptr %.fca.1.gep.i25.i.i, align 8, !noalias !14 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15, !noalias !14
  store i32 0, ptr %5, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false), !noalias !14
  store ptr @.str.20, ptr %i.aa, align 8, !noalias !14
  store ptr @.str.20, ptr %i.ab, align 8, !noalias !14
  store i16 0, ptr %i.ac, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15, !noalias !14
  %i.dl = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %5, ptr noundef %.fca.0.load.i23.i.i, i32 noundef %.fca.1.load.i26.i.i, ptr noundef nonnull %i.b) #15, !noalias !14
end_hunk_8
begin_hunk_9_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
._crit_edge.i.i:                                  ; preds = %bb.j, %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15, !noalias !14
  store i32 0, ptr %4, align 8, !noalias !14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false), !noalias !14
  store ptr @.str.20, ptr %i.r, align 8, !noalias !14
  store ptr @.str.20, ptr %i.s, align 8, !noalias !14
  store i16 0, ptr %i.t, align 8, !noalias !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15, !noalias !14
  %i.do = call noundef double @_ZNK6icu_7817double_conversion23StringToDoubleConverter14StringToDoubleEPKciPi(ptr noundef nonnull align 8 dereferenceable(42) %4, ptr noundef %i.db, i32 noundef %i.dc, ptr noundef nonnull %i.a) #15, !noalias !14
  %i.dp = load i32, ptr %i.a, align 4, !noalias !14
end_hunk_9
begin_hunk_10_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

bb.r:                                             ; preds = %bb.p
  %i.ec = load double, ptr %19, align 8
  %i.ed = fmul double %i.dy, %i.ec
  store double %i.ed, ptr %19, align 8
  br label %_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit

_ZN6icu_785units6Factor11applyPrefixENS_14UMeasurePrefixE.exit: ; preds = %bb.o, %bb.q, %bb.r
  %i.ee = load i32, ptr %i.ae, align 4            ; 17 uses
  %i.ef = load i32, ptr %scevgep.i15.a, align 4
  %i.eg = mul nsw i32 %i.ef, %i.ee                ; 2 uses
  store i32 %i.eg, ptr %scevgep.i15.a, align 4
  %i.eh = load i32, ptr %i.af, align 16
  %i.ei = mul nsw i32 %i.eh, %i.ee                ; 2 uses
  store i32 %i.ei, ptr %i.af, align 16
end_hunk_10
begin_hunk_11_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.fm = uitofp nneg i32 %i.fl to double         ; 2 uses
  %i.fn = call noundef double @pow(double noundef %i.fk, double noundef %i.fm) #15 ; 3 uses
  store double %i.fn, ptr %16, align 16
  %i.fo = load double, ptr %19, align 8
  %i.fp = call noundef double @pow(double noundef %i.fo, double noundef %i.fm) #15 ; 2 uses
  %i.fq = select i1 %i.fj, double %i.fn, double %i.fp
  %i.fr = select i1 %i.fj, double %i.fp, double %i.fn
end_hunk_11
