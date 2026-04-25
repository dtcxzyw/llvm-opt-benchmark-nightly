inline.NumInlined: 203
inline.NumDeleted: 78
begin_hunk_0_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.c = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::StringPiece", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %13 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %14 = alloca %"class.icu_78::StringPiece", align 8 ; 6 uses
  %15 = alloca %"struct.icu_78::SingleUnitImpl", align 4 ; 7 uses
  %16 = alloca %"struct.icu_78::units::Factor", align 16 ; 28 uses
  %17 = alloca %"class.icu_78::StringPiece", align 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> splat (double 1.000000e+00), ptr %0, align 8
end_hunk_0
begin_hunk_1_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %scevgep.i15 = getelementptr inbounds nuw i8, ptr %16, i64 28 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.fca.1.gep.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.fca.1.gep.i36.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
end_hunk_1
begin_hunk_2_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %i.cm = icmp eq ptr %i.cl, null
  %spec.select.i.i = select i1 %i.cm, ptr @.str.20, ptr %i.cl
  call void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef nonnull %spec.select.i.i) #16, !noalias !14
  %i.cn = load ptr, ptr %13, align 8, !noalias !14 ; 2 uses
  %i.co = load i32, ptr %i.o, align 8, !noalias !14 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17)
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !14
  store ptr %i.cn, ptr %12, align 8, !noalias !20
end_hunk_2
begin_hunk_3_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.cq = add nsw i32 %i.co, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %wide.trip.count.i.i = zext nneg i32 %i.co to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 4 uses
  %.041.i.i = phi i32 [ 1, %.lr.ph.i.i ], [ %spec.select.i18.i, %bb.i ] ; 3 uses
  %.03039.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.131.i.i, %bb.i ] ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.i.i ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !noalias !20
  switch i8 %i.ct, label %bb.g [
end_hunk_3
begin_hunk_4_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  %.fca.1.load.i.i.i = load i32, ptr %.fca.1.gep.i.i.i, align 8, !noalias !20
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !20
  call fastcc void @_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %16, ptr %.fca.0.load.i.i.i, i32 %.fca.1.load.i.i.i, i32 noundef %.041.i.i, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.cw = add i32 %i.cu, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
end_hunk_4
begin_hunk_5_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.131.i.i = phi i32 [ %i.cw, %bb.f ], [ %.03039.i.i, %bb.h ], [ %.03039.i.i, %bb.g ]
  %i.cy = load i8, ptr %i.cs, align 1, !noalias !20
  %i.cz = icmp eq i8 %i.cy, 47
  %spec.select.i18.i = select i1 %i.cz, i32 -1, i32 %.041.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i, label %bb.e, !llvm.loop !21

_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode.exit.i: ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !14
  %i.da = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !noalias !14 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
bb.j:                                             ; preds = %.lr.ph.i21.i
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %exitcond.not.i24.i = icmp eq i64 %indvars.iv.next.i23.i, %wide.trip.count.i20.i
  br i1 %exitcond.not.i24.i, label %._crit_edge.i.i, label %.lr.ph.i21.i, !llvm.loop !22

bb.k:                                             ; preds = %.lr.ph.i21.i
  %i.dj = trunc nuw nsw i64 %indvars.iv.i22.i to i32 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN6icu_785units12_GLOBAL__N_118loadCompoundFactorERKNS_15MeasureUnitImplERKNS0_15ConversionRatesER10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !23

.loopexit:                                        ; preds = %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit, %_ZN6icu_785units12_GLOBAL__N_116loadSingleFactorENS_11StringPieceERKNS0_15ConversionRatesER10UErrorCode.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
end_hunk_7
begin_hunk_8_@_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi:bb.a
  %.121.i = phi i32 [ %.02024.i, %.lr.ph.i ], [ %i.o, %bb.c ] ; 2 uses
  %.1.i = phi i32 [ %i.j, %.lr.ph.i ], [ %.025.i, %bb.c ] ; 2 uses
  %i.t = icmp slt i32 %.121.i, %.1.i
  br i1 %i.t, label %.lr.ph.i, label %_ZN6icu_785unitsL13bsearchRangesEPdid.exit, !llvm.loop !24

_ZN6icu_785unitsL13bsearchRangesEPdid.exit:       ; preds = %bb.c, %bb.d, %bb.a, %bb.b
  %.022.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.d ], [ %i.j, %bb.c ]
end_hunk_8
begin_hunk_9_@_ZNK6icu_785units14UnitsConverter7convertEd:bb.a
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.ao, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.aj, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.at = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.at, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !24

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.au = uitofp nneg i32 %i.aj to double
end_hunk_9
begin_hunk_10_@_ZNK6icu_785units14UnitsConverter7convertEd:bb.a
  %i.bl = load double, ptr %i.bk, align 8
  %i.bm = fsub double %i.bj, %i.bl                ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !range !25, !noundef !26
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.m, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit

end_hunk_10
begin_hunk_11_@_ZNK6icu_785units14UnitsConverter14convertInverseEd:bb.a
  %.121.i.i = phi i32 [ %.02024.i.i, %.lr.ph.i.i ], [ %i.al, %bb.i ] ; 2 uses
  %.1.i.i = phi i32 [ %i.ag, %.lr.ph.i.i ], [ %.025.i.i, %bb.i ] ; 2 uses
  %i.aq = icmp slt i32 %.121.i.i, %.1.i.i
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit, !llvm.loop !24

_ZNK6icu_785units14UnitsConverter11baseToScaleEdPdi.exit.loopexit: ; preds = %bb.j, %bb.i
  %i.ar = uitofp nneg i32 %i.ag to double
end_hunk_11
begin_hunk_12_@_ZNK6icu_785units14UnitsConverter14convertInverseEd:bb.a

bb.l:                                             ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.az = load i8, ptr %i.ay, align 8, !range !25, !noundef !26
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.m, label %bb.p

end_hunk_12
begin_hunk_13_@_ZNK6icu_785units14UnitsConverter17getConversionInfoEv:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.n = load i8, ptr %i.m, align 8, !range !25, !noundef !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.n, ptr %i.o, align 8
  ret void
end_hunk_13
begin_hunk_14_@_ZN6icu_7810MemoryPoolINS_5units18ConversionRateInfoELi8EED2Ev:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.c, label %._crit_edge, !llvm.loop !27
}

; Function Attrs: nounwind
end_hunk_14
begin_hunk_15_@_ZN6icu_785units12_GLOBAL__N_116addFactorElementERNS0_6FactorENS_11StringPieceENS0_6SignumER10UErrorCode:bb.a
bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !28

bb.c:                                             ; preds = %.lr.ph
  %i.g = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
end_hunk_15
begin_hunk_16_@llvm.experimental.noalias.scope.decl
!18 = distinct !{!18, !19, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode: argument 0"}
!19 = distinct !{!19, !"_ZN6icu_785units12_GLOBAL__N_124extractFactorConversionsENS_11StringPieceER10UErrorCode"}
!20 = !{!18, !15}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
!24 = distinct !{!24, !6}
!25 = !{i8 0, i8 2}
!26 = !{}
!27 = distinct !{!27, !6}
!28 = distinct !{!28, !6}
end_hunk_16
