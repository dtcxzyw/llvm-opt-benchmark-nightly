inline.NumInlined: 640
inline.NumDeleted: 202
begin_hunk_0_@_ZNK6icu_786number4impl24MixedUnitLongNameHandler20getMixedUnitModifierERNS1_15DecimalQuantityERNS1_10MicroPropsER10UErrorCode:bb.a
  %i.bq = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %17, ptr noundef nonnull align 8 dereferenceable(64) %16, i32 noundef 0, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %3) #17 ; 0 uses
  %i.br = load i32, ptr %3, align 4
  %i.bs = icmp slt i32 %i.br, 1
  br i1 %i.bs, label %bb.x, label %.thread

bb.h:                                             ; preds = %.lr.ph, %bb.w
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.w ] ; 8 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_786number4impl24MixedUnitLongNameHandler20getMixedUnitModifierERNS1_15DecimalQuantityERNS1_10MicroPropsER10UErrorCode:bb.a
  %i.dt = icmp slt i64 %indvars.iv.next, %i.ds
  br i1 %i.dt, label %bb.h, label %._crit_edge, !llvm.loop !77

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_1
begin_hunk_2_@_ZNK6icu_786number4impl24MixedUnitLongNameHandler20getMixedUnitModifierERNS1_15DecimalQuantityERNS1_10MicroPropsER10UErrorCode:bb.a
  %i.dw = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dx = load i64, ptr %i.dw, align 8
  call void @_ZN6icu_786number4impl14SimpleModifierC1ERKNS_15SimpleFormatterENS_22FormattedStringBuilder5FieldEbNS1_8Modifier10ParametersE(ptr noundef nonnull align 8 dereferenceable(104) %18, ptr noundef nonnull align 8 dereferenceable(72) %17, i8 0, i1 noundef zeroext false, ptr %i.dv, i64 %i.dx) #17
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 320
  %i.dz = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ea = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dy, ptr noundef nonnull align 8 dereferenceable(64) %i.dz) #17 ; 0 uses
end_hunk_2
begin_hunk_3_@_ZNK6icu_786number4impl24MixedUnitLongNameHandler20getMixedUnitModifierERNS1_15DecimalQuantityERNS1_10MicroPropsER10UErrorCode:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17
  br label %.thread

.thread:                                          ; preds = %bb.x, %._crit_edge
  %.pn = phi i64 [ 312, %bb.x ], [ 240, %._crit_edge ]
  %.0 = getelementptr inbounds nuw i8, ptr %2, i64 %.pn
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %17) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #17
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %16) #17
end_hunk_3
