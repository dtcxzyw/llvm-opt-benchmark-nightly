inline.NumInlined: 218
inline.NumDeleted: 78
begin_hunk_0_@features_index_add_single_callback:bb.a
  br label %RARRAY_AREF.exit47.us75

RARRAY_AREF.exit47.us75:                          ; preds = %rb_darray_size.exit.us80, %.lr.ph.split.us
  %.0427274.us = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ca, %rb_darray_size.exit.us80 ] ; 4 uses
  %i.bd = shl i64 %.0427274.us, 3
  %scevgep176 = getelementptr i8, ptr %i.aw, i64 %i.bd
  %i.be = load i64, ptr %scevgep176, align 8, !tbaa !20
end_hunk_0
begin_hunk_1_@features_index_add_single_callback:bb.a
  br i1 %exitcond98.not, label %.critedge.loopexit, label %RARRAY_AREF.exit47.us75

RARRAY_AREF.exit47:                               ; preds = %RARRAY_AREF.exit47.preheader, %rb_darray_size.exit
  %.0427274 = phi i64 [ %i.cy, %rb_darray_size.exit ], [ 0, %RARRAY_AREF.exit47.preheader ] ; 4 uses
  %i.cb = shl i64 %.0427274, 3
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.cb
  %i.cc = load i64, ptr %scevgep, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@features_index_add_single_callback:bb.a
  br label %rb_darray_size.exit.i.loopexit

is_rbext_path.exit51.us79.rb_darray_size.exit.i.loopexit_crit_edge: ; preds = %is_rbext_path.exit51.us79
  %.0427274.us.lcssa178.a = phi i64 [ %.0427274.us, %is_rbext_path.exit51.us79 ]
  br label %rb_darray_size.exit.i.loopexit

rb_darray_size.exit.i.loopexit:                   ; preds = %rb_darray_size.exit.i.loopexitsplit, %is_rbext_path.exit51.us79.rb_darray_size.exit.i.loopexit_crit_edge
  %.0427274.us.lcssa166 = phi i64 [ %.0427274.us.lcssa178.a, %is_rbext_path.exit51.us79.rb_darray_size.exit.i.loopexit_crit_edge ], [ %.0427274.us.lcssa177, %rb_darray_size.exit.i.loopexitsplit ]
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i.loopexit162split:           ; preds = %is_rbext_path.exit51
end_hunk_2
begin_hunk_3_@features_index_add_single_callback:bb.a
  br label %rb_darray_size.exit.i.loopexit162

Check_Type.exit.rb_darray_size.exit.i.loopexit162_crit_edge: ; preds = %Check_Type.exit
  %.0427274.lcssa173.a = phi i64 [ %.0427274, %Check_Type.exit ]
  br label %rb_darray_size.exit.i.loopexit162

rb_darray_size.exit.i.loopexit162:                ; preds = %rb_darray_size.exit.i.loopexit162split, %Check_Type.exit.rb_darray_size.exit.i.loopexit162_crit_edge
  %.0427274.lcssa171 = phi i64 [ %.0427274.lcssa173.a, %Check_Type.exit.rb_darray_size.exit.i.loopexit162_crit_edge ], [ %.0427274.lcssa174, %rb_darray_size.exit.i.loopexit162split ]
  br label %rb_darray_size.exit.i

rb_darray_size.exit.i:                            ; preds = %rb_darray_size.exit.i.loopexit162, %rb_darray_size.exit.i.loopexit, %.critedge.rb_darray_size.exit.i_crit_edge
end_hunk_3
