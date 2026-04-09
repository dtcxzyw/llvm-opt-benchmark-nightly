inline.NumInlined: 622
inline.NumDeleted: 240
begin_hunk_0_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 9 uses
  %i.b = alloca [34 x i8], align 16               ; 7 uses
  %i.c = alloca [171 x i8], align 16              ; 10 uses
  %i.d = alloca [4 x i8], align 1                 ; 9 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %3 = alloca %"struct.absl::lts_20250512::str_format_internal::(anonymous namespace)::Decomposed", align 16 ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.al = extractvalue { x86_fp80, i32 } %i.ak, 1 ; 7 uses
  %i.am = extractvalue { x86_fp80, i32 } %i.ak, 0
  %i.an = call noundef x86_fp80 @ldexpl(x86_fp80 noundef %i.am, i32 noundef 64) #19, !tbaa !3, !noalias !16
  %i.ao = add nsw i32 %i.al, -64                  ; 7 uses
  call void @_ZN4absl12lts_202505127uint128C1Ee(ptr noundef nonnull align 16 dereferenceable(16) %3, x86_fp80 noundef %i.an)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %i.ao, ptr %i.ap, align 16, !tbaa !19, !alias.scope !16
end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i: ; preds = %bb.l
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.212.0.copyload.i, i1 true)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %7 = sub nsw i32 %i.ao, %i.ax
  %8 = add i32 %7, 128                            ; 2 uses
  %i.ay = icmp sgt i32 %8, 128
  br i1 %i.ay, label %bb.m, label %bb.p, !prof !32

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i: ; preds = %bb.l
  %i.az = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sroa.011.0.copyload.i, i1 false)
  %i.ba = trunc nuw nsw i64 %i.az to i32          ; 2 uses
  %reass.sub40.i.i = sub nsw i32 %i.ao, %i.ba
  %i.bb = icmp sgt i32 %reass.sub40.i.i, 64
  br i1 %i.bb, label %bb.m, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a, !prof !32

bb.m:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFPositiveExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %5)
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  call fastcc void @_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_122FormatFNegativeExpSlowENS0_7uint128EiRKNS2_11FormatStateE(i64 %.sroa.011.0.copyload.i, i64 %.sroa.212.0.copyload.i, i32 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(32) %5)
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_17FormatFINS0_7uint128EEEvT_iRKNS2_11FormatStateE.exit.i

bb.p:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %9 = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  store i8 46, ptr %9, align 2, !tbaa !12
  %10 = getelementptr inbounds nuw i8, ptr %i.c, i64 43
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 2 uses
  store i8 46, ptr %i.be, align 2, !tbaa !12
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 43
  %.pre47.i.i = sub nuw nsw i32 %i.al, %i.ba
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a, %bb.p
  %.pre-phi48.i.i = phi i32 [ %.pre47.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a ], [ %8, %bb.p ]
  %11 = phi ptr [ %i.bf, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a ], [ %10, %bb.p ] ; 4 uses
  %12 = phi ptr [ %i.be, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i.a ], [ %9, %bb.p ] ; 3 uses
  %13 = icmp slt i32 %.pre-phi48.i.i, 65
  br i1 %13, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.bg = zext nneg i32 %i.ao to i64
  %i.bh = shl i64 %.sroa.011.0.copyload.i, %i.bg
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.03.i.i.i.i = phi i64 [ %i.bh, %bb.q ], [ %i.bj, %bb.r ] ; 3 uses
  %.0.i.i.i.i = phi ptr [ %12, %bb.q ], [ %i.bl, %bb.r ]
  %i.bi = urem i64 %.03.i.i.i.i, 10
  %i.bj = udiv i64 %.03.i.i.i.i, 10
  %.lhs.trunc.i.i.i.i.i = trunc nuw nsw i64 %i.bi to i8
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.not.i50.i.i.i = icmp ult i64 %.03.i.i.i.i, 10
  br i1 %.not.i50.i.i.i, label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i, label %bb.r, !llvm.loop !33

bb.s:                                             ; preds = %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_112LeadingZerosENS0_7uint128E.exit.i.i.i
  %i.bm = zext i64 %.sroa.212.0.copyload.i to i128
  %i.bn = shl nuw i128 %i.bm, 64
  %i.bo = zext i64 %.sroa.011.0.copyload.i to i128
end_hunk_4
begin_hunk_5_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i ], [ %12, %.lr.ph.i.preheader.i.i.i ]
  %.0913.i.i.i.i = phi i64 [ %i.ce, %.lr.ph.i.i.i.i ], [ %i.bs, %.lr.ph.i.preheader.i.i.i ] ; 2 uses
  %.01012.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.i.i.i ], [ %i.bu, %.lr.ph.i.preheader.i.i.i ] ; 3 uses
  %i.bv = urem i64 %.01012.i.i.i.i, 10            ; 2 uses
end_hunk_5
begin_hunk_6_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a

.preheader.i.i.i.i.preheader:                     ; preds = %.lr.ph.i.i.i.i, %bb.s
  %.03.i.i.i.i.i.ph = phi i64 [ %i.bs, %bb.s ], [ %i.ce, %.lr.ph.i.i.i.i ]
  %.0.i.i.i.i.i.ph = phi ptr [ %12, %bb.s ], [ %i.ch, %.lr.ph.i.i.i.i ]
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %.preheader.i.i.i.i
end_hunk_6
begin_hunk_7_@_ZN4absl12lts_2025051219str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  br label %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i

_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastEmPc.exit.i.i.i: ; preds = %.preheader.i.i.i.i, %bb.r, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i
  %i.dt = phi ptr [ %i.cn, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %11, %bb.r ], [ %11, %.preheader.i.i.i.i ]
  %.042.i.i.i = phi ptr [ %i.dr, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %11, %bb.r ], [ %11, %.preheader.i.i.i.i ]
  %.041.i.i.i = phi ptr [ %spec.select.i.i.i, %_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_132PrintIntegralDigitsFromRightFastENS0_7uint128EPc.exit69.i.i.i ], [ %i.bl, %bb.r ], [ %i.cl, %.preheader.i.i.i.i ] ; 2 uses
  %i.du = ptrtoint ptr %.042.i.i.i to i64         ; 2 uses
  %i.dv = ptrtoint ptr %.041.i.i.i to i64
end_hunk_7
begin_hunk_8_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.al = call double @frexp(double noundef %.06395, ptr noundef nonnull %i.d) #19
  %i.am = call double @ldexp(double noundef %i.al, i32 noundef 53) #19, !tbaa !3
  %i.an = load i32, ptr %i.d, align 4, !tbaa !3   ; 9 uses
  %i.ao = add nsw i32 %i.an, -53                  ; 6 uses
  %i.ap = fptoui double %i.am to i64              ; 14 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
end_hunk_8
begin_hunk_9_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
bb.l:                                             ; preds = %bb.k
  %i.aw = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ap, i1 false)
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %6 = sub nsw i32 %i.ao, %i.ax
  %7 = add i32 %6, 64                             ; 2 uses
  %i.ay = icmp sgt i32 %7, 128
  br i1 %i.ay, label %bb.m, label %bb.p, !prof !32

bb.m:                                             ; preds = %bb.l
end_hunk_9
begin_hunk_10_@_ZN4absl12lts_2025051219str_format_internal12_GLOBAL__N_111FloatToSinkIdEEbT_RKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 42 ; 4 uses
  store i8 46, ptr %i.bb, align 2, !tbaa !12
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 43 ; 4 uses
  %i.bd = icmp slt i32 %7, 65
  br i1 %i.bd, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
end_hunk_10
