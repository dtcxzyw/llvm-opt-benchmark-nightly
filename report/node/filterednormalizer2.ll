inline.NumInlined: 69
inline.NumDeleted: 27
begin_hunk_0_@_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode:bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ab = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %i.ab, 0                      ; 2 uses
  %5 = icmp eq i32 %i.aa, 0
  %or.cond.peel = or i1 %5, %4
  %6 = icmp ne i32 %i.aa, 2
  %7 = or i1 %6, %4
  %spec.select.peel.a = select i1 %7, i32 1, i32 2
  br i1 %or.cond.peel, label %.loopexit, label %.outer

.outer:                                           ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59
  %.036.ph = phi i32 [ %i.bf, %.loopexit59 ], [ %i.v, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode:bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.bm = load i32, ptr %2, align 4
  %8 = icmp sgt i32 %i.bm, 0                      ; 2 uses
  %9 = icmp eq i32 %i.bl, 0
  %or.cond = or i1 %9, %8
  %10 = icmp ne i32 %i.bl, 2
  %11 = or i1 %10, %8
  %spec.select = select i1 %11, i32 %.027.ph, i32 2
  br i1 %or.cond, label %.loopexit, label %.outer, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, %.outer, %bb.c, %bb.a
  %.6 = phi i32 [ 2, %bb.c ], [ 2, %bb.a ], [ 1, %.preheader ], [ %i.aa, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ], [ %i.bl, %.loopexit59 ], [ %.027.ph, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel ], [ %.027.ph, %.outer ]
end_hunk_1
