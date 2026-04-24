inline.NumInlined: 52
inline.NumDeleted: 18
begin_hunk_0_@req_main:bb.a

bb.dt:                                            ; preds = %bb.ds
  %i.hc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.hb, ptr noundef nonnull dereferenceable(4) @.str.151) #14
  %i.hd = icmp eq i32 %i.hc, 0
  %spec.select667.a = select i1 %i.hd, i64 4096, i64 4097
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr
  %.2396.a = phi i64 [ 4096, %bb.dr ], [ %spec.select667.a, %bb.dt ], [ 4097, %bb.ds ] ; 2 uses
  %i.he = icmp ne ptr %.0476, null                ; 4 uses
  br i1 %i.he, label %bb.dv, label %bb.dy

end_hunk_0
begin_hunk_1_@req_main:bb.a
  br i1 %.not603, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %6 = trunc nuw nsw i64 %.2396.a to i32
  %i.kw = call ptr @parse_name(ptr noundef nonnull %.0457, i32 noundef %6, i32 noundef 1, ptr noundef nonnull @.str.41) #12 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %.thread706, label %bb.fg

end_hunk_1
