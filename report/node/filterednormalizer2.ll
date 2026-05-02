inline.NumInlined: 69
inline.NumDeleted: 27
begin_hunk_0_@_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode:bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ab = load i32, ptr %2, align 4
  %4 = icmp slt i32 %i.ab, 1
  %5 = icmp ne i32 %i.aa, 0
  %or.cond.not.peel = and i1 %5, %4
  %6 = icmp eq i32 %i.aa, 2
  %spec.select.peel.a = select i1 %6, i32 2, i32 1
  br i1 %or.cond.not.peel, label %.outer, label %.loopexit

.outer:                                           ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59
  %.036.ph = phi i32 [ %i.bf, %.loopexit59 ], [ %i.v, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode:bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.bm = load i32, ptr %2, align 4
  %7 = icmp slt i32 %i.bm, 1
  %8 = icmp ne i32 %i.bl, 0
  %or.cond.not = and i1 %8, %7
  %9 = icmp eq i32 %i.bl, 2
  %spec.select = select i1 %9, i32 2, i32 %.027.ph
  br i1 %or.cond.not, label %.outer, label %.loopexit, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, %.outer, %bb.c, %bb.a
  %.6 = phi i32 [ 2, %bb.c ], [ 2, %bb.a ], [ 1, %.preheader ], [ %i.aa, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ], [ %i.bl, %.loopexit59 ], [ %.027.ph, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel ], [ %.027.ph, %.outer ]
end_hunk_1
