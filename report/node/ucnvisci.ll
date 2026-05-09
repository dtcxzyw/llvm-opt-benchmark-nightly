inline.NumInlined: 14
inline.NumDeleted: 4
begin_hunk_0_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ax = icmp eq i8 %i.ab, -65
  %2 = select i1 %i.ax, i32 2416, i32 2386        ; 2 uses
  %3 = and i32 %2, 114
  %4 = zext nneg i32 %3 to i64
  %i.ay = getelementptr inbounds nuw i8, ptr @_ZL13validityTable, i64 %4
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = zext i8 %i.az to i32
  %i.bb = load i32, ptr %i.v, align 4
end_hunk_0
begin_hunk_1_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
bb.r:                                             ; preds = %bb.q, %bb.l
  %.2 = phi ptr [ %.1608, %bb.q ], [ %.0607.ph897, %bb.l ] ; 4 uses
  %i.bx = load i16, ptr %i.t, align 4
  %i.by = load ptr, ptr %i.e, align 8
  %i.bz = icmp ult ptr %.2, %i.by
  %5 = trunc nuw nsw i32 %2 to i16
  %6 = add i16 %i.bx, %5                          ; 2 uses
  br i1 %i.bz, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %.2, i64 2 ; 2 uses
  store i16 %6, ptr %.2, align 2
  %i.cb = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not742 = icmp eq ptr %i.cb, null
  br i1 %.not742, label %.outer.backedge, label %bb.t
end_hunk_1
begin_hunk_2_@_ZL40UConverter_toUnicode_ISCII_OFFSETS_LOGICP23UConverterToUnicodeArgsP10UErrorCode:bb.a
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = sext i8 %i.cm to i64
  %i.cp = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.co
  store i16 %6, ptr %i.cp, align 2
  store i32 15, ptr %1, align 4
  br label %.outer.backedge

end_hunk_2
