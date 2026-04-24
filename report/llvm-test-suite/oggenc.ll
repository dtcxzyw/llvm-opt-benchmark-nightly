inline.NumInlined: 676
inline.NumDeleted: 90
begin_hunk_0_@vorbis_encode_setup_init:bb.a
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge.i, %.critedge
  %i.bgi = phi i1 [ %i.bga, %.critedge ], [ false, %._crit_edge.i ]
  %indvars.iv70.i.a = phi i64 [ 0, %.critedge ], [ 1, %._crit_edge.i ] ; 12 uses
  %i.bgj = tail call noalias dereferenceable_or_null(3208) ptr @calloc(i64 noundef 1, i64 noundef 3208) #75
  %i.bgk = getelementptr inbounds nuw [8 x i8], ptr %i.bgb, i64 %indvars.iv70.i.a ; 2 uses
  store ptr %i.bgj, ptr %i.bgk, align 8
end_hunk_0
begin_hunk_1_@vorbis_encode_setup_init:bb.a
  br i1 %.not.i247, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %1 = trunc nuw nsw i64 %indvars.iv70.i.a to i32
  %2 = add nuw nsw i32 %1, 1
  store i32 %2, ptr %i.bgd, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
end_hunk_1
begin_hunk_2_@vorbis_encode_setup_init:bb.a
  br i1 %.not47.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %3 = trunc nuw nsw i64 %indvars.iv70.i.a to i32
  %4 = add nuw nsw i32 %3, 1
  store i32 %4, ptr %i.bgf, align 4
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
end_hunk_2
begin_hunk_3_@vorbis_book_decodev_add:bb.a

bb.g:                                             ; preds = %bb.f, %bb.e
  %.359 = phi i32 [ %i.ai, %bb.f ], [ %.25873, %bb.e ] ; 2 uses
  %.1 = phi i32 [ 1, %bb.f ], [ 0, %bb.e ]        ; 2 uses
  %4 = add nuw nsw i32 %.1, 1
  %5 = zext nneg i32 %.1 to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %5
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = add nsw i32 %.359, 1
  %i.aq = sext i32 %.359 to i64
end_hunk_3
