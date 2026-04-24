inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@vorbis_encode_setup_init:bb.a
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i, %.critedge
  %indvars.iv70.i = phi i32 [ 1, %.critedge ], [ 2, %._crit_edge.i ] ; 2 uses
  %i.bgi = phi i1 [ %i.bga, %.critedge ], [ false, %._crit_edge.i ]
  %indvars.iv70.i.a = phi i64 [ 0, %.critedge ], [ 1, %._crit_edge.i ] ; 10 uses
  %i.bgj = tail call noalias dereferenceable_or_null(3208) ptr @calloc(i64 noundef 1, i64 noundef 3208) #75
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %indvars.iv70.i.a ; 2 uses
  store ptr %i.bgj, ptr %i.bgk, align 8
end_hunk_0
begin_hunk_1_@vorbis_encode_setup_init:bb.a
  br i1 %.not.i247, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  store i32 %indvars.iv70.i, ptr %i.bgd, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
end_hunk_1
begin_hunk_2_@vorbis_encode_setup_init:bb.a
  br i1 %.not47.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store i32 %indvars.iv70.i, ptr %i.bgf, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
end_hunk_2
begin_hunk_3_@vorbis_book_decodev_add:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %.359 = phi i32 [ %i.ai, %bb.f ], [ %.25873, %bb.e ] ; 2 uses
  %.1 = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  %4 = phi i32 [ 2, %bb.f ], [ 1, %bb.e ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %.1
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = add nsw i32 %.359, 1
  %i.aq = sext i32 %.359 to i64
end_hunk_3
