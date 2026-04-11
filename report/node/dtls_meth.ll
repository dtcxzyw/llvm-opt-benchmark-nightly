inline.NumInlined: 9
inline.NumDeleted: 8
begin_hunk_0_@dtls_get_more_records:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4172 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4104 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 4352
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4096 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4097 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4099 ; 2 uses
end_hunk_0
begin_hunk_1_@dtls_get_more_records:bb.a
  br i1 %i.dy, label %bb.u, label %.backedge.sink.split.sink.split

bb.u:                                             ; preds = %bb.t, %bb.s
  %.0.i126.ph = phi ptr [ %3, %bb.s ], [ %2, %bb.t ] ; 13 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.i126.ph, i64 8 ; 3 uses
  %i.ea = load i8, ptr %i.ab, align 1, !tbaa !43
  %i.eb = zext i8 %i.ea to i64
end_hunk_1
