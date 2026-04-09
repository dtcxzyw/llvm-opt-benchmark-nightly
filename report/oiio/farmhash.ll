inline.NumInlined: 326
inline.NumDeleted: 64
begin_hunk_0_@_ZN11OpenImageIO4v3_18farmhash10farmhashcc19CityHash128WithSeedEPKcmSt4pairImmE:bb.a
  %.0154 = phi i64 [ %i.c, %bb.c ], [ %i.cm, %bb.d ]
  %.070 = phi i64 [ %3, %bb.c ], [ %i.cq, %bb.d ] ; 2 uses
  %.068 = phi i64 [ %1, %bb.c ], [ %i.ec, %bb.d ] ; 2 uses
  %.0 = phi ptr [ %0, %bb.c ], [ %i.eb, %bb.d ]   ; 17 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.x = load i64, ptr %i.w, align 1              ; 2 uses
  %i.y = add i64 %.0156, %.sroa.0131.0
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18farmhash10farmhashcc19CityHash128WithSeedEPKcmSt4pairImmE:bb.a
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %4 = and i64 %1, -128
  %5 = getelementptr i8, ptr %0, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 -128
  %i.ep = getelementptr i8, ptr %scevgep, i64 %.068
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
end_hunk_1
