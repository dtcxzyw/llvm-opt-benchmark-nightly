inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
  store <2 x ptr> %i.dj, ptr %i.dg, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 218
  %.val233 = load i8, ptr %i.dl, align 2, !range !208, !noundef !12
  %3 = trunc nuw i8 %.val233 to i1
  br i1 %3, label %bb.e, label %bb.aa

bb.e:                                             ; preds = %bb.d
  %i.dm = load atomic i64, ptr @_RNvNtCs2y6mmZ7bjoM_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
end_hunk_0
begin_hunk_1_@_RNCNvMs0_NtNtCs14kWLkQVSKO_14deltalake_core10operations6vacuumNtB7_13VacuumBuilder18create_vacuum_plan0Bb_:bb.a
  %i.akd = load ptr, ptr %i.akc, align 8, !nonnull !12, !align !209, !noundef !12 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 218
  %.val232 = load i8, ptr %i.ake, align 2, !range !208, !noundef !12
  %4 = trunc nuw i8 %.val232 to i1
  br i1 %4, label %bb.li, label %bb.sb

bb.li:                                            ; preds = %._crit_edge
  %i.akf = getelementptr inbounds nuw i8, ptr %i.akd, i64 168
end_hunk_1
