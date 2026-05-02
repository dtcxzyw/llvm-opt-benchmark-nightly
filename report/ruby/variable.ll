inline.NumInlined: 728
inline.NumDeleted: 161
begin_hunk_0_@rb_const_defined_0:bb.a
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %.not25 = icmp eq i32 %3, 0
  %5 = trunc nuw i32 %2 to i1                     ; 2 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  br i1 %.not25, label %.split42.us, label %.split42

end_hunk_0
begin_hunk_1_@rb_const_search_from:bb.a
  br i1 %.not110115, label %select.unfold, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not52 = trunc nuw i32 %4 to i1                ; 2 uses
  %.not57 = icmp eq i32 %3, 0
  br label %bb.b

end_hunk_1
begin_hunk_2_@rb_const_search_from:bb.a

.loopexit123:                                     ; preds = %rb_const_warn_if_deprecated.exit.peel, %rb_const_warn_if_deprecated.exit
  %.lcssa = phi i64 [ %i.dy, %rb_const_warn_if_deprecated.exit ], [ %i.bw, %rb_const_warn_if_deprecated.exit.peel ] ; 2 uses
  %.not53 = trunc nuw i32 %2 to i1
  %i.ea = load i64, ptr @rb_cObject, align 8
  %i.eb = icmp eq i64 %.045, %i.ea
  %or.cond = select i1 %.not53, i1 %i.eb, i1 false
end_hunk_2
begin_hunk_3_@rb_const_location_from:bb.a
.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %0, %.lr.ph.split.us ], [ %.02250, %.lr.ph.split ] ; 2 uses
  %.us-phi52 = phi ptr [ %i.c, %.lr.ph.split.us ], [ %i.d, %.lr.ph.split ] ; 3 uses
  %.not29 = trunc nuw i32 %2 to i1
  %i.e = load i64, ptr @rb_cObject, align 8
  %i.f = icmp eq i64 %.us-phi, %i.e
  %or.cond = select i1 %.not29, i1 %i.f, i1 false
end_hunk_3
