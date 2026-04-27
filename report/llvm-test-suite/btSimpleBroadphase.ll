inline.NumInlined: 79
inline.NumDeleted: 36
begin_hunk_0_@_ZN18btSimpleBroadphase25calculateOverlappingPairsEP12btDispatcher:bb.a
  %.sroa.076.094 = phi ptr [ null, %.lr.ph96 ], [ %i.fk, %bb.ab ]
  %.sroa.677.093 = phi ptr [ null, %.lr.ph96 ], [ %i.fn, %bb.ab ]
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw [32 x i8], ptr %i.fi, i64 %indvars.iv103 ; 4 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !58 ; 8 uses
  %i.fl = icmp eq ptr %i.fk, %.sroa.076.094
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
end_hunk_0
