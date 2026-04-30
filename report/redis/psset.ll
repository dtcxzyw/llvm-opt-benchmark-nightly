inline.NumInlined: 104
inline.NumDeleted: 46
begin_hunk_0_@je_psset_update_end:bb.a

bb.h:                                             ; preds = %psset_purge_list_ind.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %.val8.i, i64 72 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43 ; 3 uses
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !42
  store ptr %1, ptr %i.av, align 8, !tbaa !43
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !43
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %.val8.i, ptr %i.ay, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %1, ptr %i.az, align 8, !tbaa !42
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !42
  br label %hpdata_purge_list_append.exit.i
end_hunk_0
begin_hunk_1_@je_psset_insert:bb.a

bb.h:                                             ; preds = %psset_purge_list_ind.exit.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  store ptr %1, ptr %i.au, align 8, !tbaa !43
  %i.av = getelementptr inbounds nuw i8, ptr %.val8.i, i64 72 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !43 ; 3 uses
  store ptr %i.aw, ptr %i.at, align 8, !tbaa !42
  store ptr %1, ptr %i.av, align 8, !tbaa !43
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !43
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !43
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store ptr %.val8.i, ptr %i.ay, align 8, !tbaa !42
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  store ptr %1, ptr %i.az, align 8, !tbaa !42
  %.pre.i.i = load ptr, ptr %i.at, align 8, !tbaa !42
  br label %hpdata_purge_list_append.exit.i
end_hunk_1
