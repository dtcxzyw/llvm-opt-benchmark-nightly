inline.NumInlined: 51
inline.NumDeleted: 15
begin_hunk_0_@date_strftime_with_tmx:bb.a
  %i.beo = icmp ult i32 %i.ben, 36000             ; 2 uses
  %.01034 = select i1 %i.beo, i32 1, i32 2        ; 3 uses
  %i.bep = trunc i32 %.01102 to i1
  %or.cond47 = and i1 %i.beo, %i.bep
  %spec.store.select = select i1 %or.cond47, i32 1, i32 2 ; 12 uses
  switch i64 %.01055, label %.loopexit [
    i64 0, label %bb.ff
    i64 1, label %bb.fh
end_hunk_0
begin_hunk_1_@date_strftime_with_tmx:bb.a
  br i1 %.not1271, label %bb.fg, label %.thread1503

bb.fg:                                            ; preds = %bb.ff
  %4 = add nuw nsw i32 %spec.store.select, 3
  %.not1270 = icmp sgt i32 %.01057, %4
  %i.beq = add nsw i32 %.01057, -3
  %i.ber = select i1 %.not1270, i32 %i.beq, i32 %spec.store.select ; 2 uses
end_hunk_1
begin_hunk_2_@date_strftime_with_tmx:bb.a
  br i1 %.not1268, label %bb.fi, label %.thread1503

bb.fi:                                            ; preds = %bb.fh
  %5 = or disjoint i32 %spec.store.select, 4
  %.not1267 = icmp sgt i32 %.01057, %5
  %i.bew = add nsw i32 %.01057, -4
  %i.bex = select i1 %.not1267, i32 %i.bew, i32 %spec.store.select ; 2 uses
end_hunk_2
begin_hunk_3_@date_strftime_with_tmx:bb.a
  br i1 %.not1265, label %bb.fk, label %.thread1503

bb.fk:                                            ; preds = %bb.fj
  %6 = add nuw nsw i32 %spec.store.select, 7
  %.not1264 = icmp sgt i32 %.01057, %6
  %i.bfc = add nsw i32 %.01057, -7
  %i.bfd = select i1 %.not1264, i32 %i.bfc, i32 %spec.store.select ; 2 uses
end_hunk_3
begin_hunk_4_@date_strftime_with_tmx:bb.a
  br i1 %.not1262, label %bb.fn, label %.thread1503

bb.fn:                                            ; preds = %bb.fm
  %7 = add nuw nsw i32 %spec.store.select, 1
  %.not1261 = icmp sgt i32 %.01057, %7
  %i.bfk = add nsw i32 %.01057, -1
  %i.bfl = select i1 %.not1261, i32 %i.bfk, i32 %spec.store.select ; 2 uses
end_hunk_4
begin_hunk_5_@date_strftime_with_tmx:bb.a
  br i1 %.not1259, label %bb.fq, label %.thread1503

bb.fq:                                            ; preds = %bb.fp
  %8 = or disjoint i32 %spec.store.select, 4
  %.not1258 = icmp sgt i32 %.01057, %8
  %i.bfs = add nsw i32 %.01057, -4
  %i.bft = select i1 %.not1258, i32 %i.bfs, i32 %spec.store.select ; 2 uses
end_hunk_5
begin_hunk_6_@date_strftime_with_tmx:bb.a
  br i1 %.not1259, label %bb.fs, label %.thread1503

bb.fs:                                            ; preds = %bb.fr
  %9 = add nuw nsw i32 %spec.store.select, 7
  %.not1255 = icmp sgt i32 %.01057, %9
  %i.bfy = add nsw i32 %.01057, -7
  %i.bfz = select i1 %.not1255, i32 %i.bfy, i32 %spec.store.select ; 2 uses
end_hunk_6
