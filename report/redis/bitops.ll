inline.NumInlined: 24
inline.NumDeleted: 2
begin_hunk_0_@getbitCommand:bb.a
  %i.at = zext i8 %i.as to i32
  %i.au = trunc i64 %i.o to i32
  %i.av = and i32 %i.au, 7
  %1 = lshr exact i32 128, %i.av
  %i.aw = and i32 %1, %i.at
  %.0.shrunk.fr = freeze i32 %i.aw
  %.not23 = icmp eq i32 %.0.shrunk.fr, 0
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 32), align 8
end_hunk_0
begin_hunk_1_@bitcountCommand:bb.a
bb.aa:                                            ; preds = %bb.z
  %i.bw = trunc i64 %i.bq to i16
  %i.bx = and i16 %i.bw, 7
  %1 = lshr exact i16 256, %i.bx
  %2 = zext nneg i16 %1 to i32
  %3 = sub nsw i32 0, %2
  %i.by = trunc i64 %i.bu to i8
  %i.bz = and i8 %i.by, 7
  %4 = lshr exact i8 -128, %i.bz
  %5 = add i8 %4, -1
  %i.ca = lshr i64 %i.bq, 3                       ; 2 uses
  store i64 %i.ca, ptr %i.a, align 8, !tbaa !52
  %i.cb = lshr i64 %i.bu, 3
end_hunk_1
begin_hunk_2_@bitcountCommand:bb.a
  %.sink = phi i64 [ %i.cb, %bb.aa ], [ %i.dk, %getObjectReadOnlyString.exit89 ] ; 2 uses
  %.ph113 = phi i64 [ %i.ca, %bb.aa ], [ 0, %getObjectReadOnlyString.exit89 ]
  %.059.ph = phi ptr [ %.0.ph.i94, %bb.aa ], [ %.0.ph.i87, %getObjectReadOnlyString.exit89 ]
  %.257.ph = phi i32 [ %3, %bb.aa ], [ 0, %getObjectReadOnlyString.exit89 ]
  %.2.ph = phi i8 [ %5, %bb.aa ], [ 0, %getObjectReadOnlyString.exit89 ]
  %.051.ph = phi ptr [ %i.ac, %bb.aa ], [ %i.cj, %getObjectReadOnlyString.exit89 ]
  store i64 %.sink, ptr %i.b, align 8, !tbaa !52
  br label %.thread
end_hunk_2
begin_hunk_3_@bitposCommand:bb.a
bb.x:                                             ; preds = %bb.w
  %i.bn = trunc i64 %i.bh to i16
  %i.bo = and i16 %i.bn, 7
  %1 = lshr exact i16 256, %i.bo
  %2 = trunc i16 %1 to i8
  %3 = sub i8 0, %2
  %i.bp = trunc i64 %i.bl to i8
  %i.bq = and i8 %i.bp, 7
  %4 = lshr exact i8 -128, %i.bq
  %5 = add i8 %4, -1
  %i.br = lshr i64 %i.bh, 3                       ; 2 uses
  store i64 %i.br, ptr %i.a, align 8, !tbaa !52
  %i.bs = lshr i64 %i.bl, 3                       ; 2 uses
  store i64 %i.bs, ptr %i.b, align 8, !tbaa !52
  %i.bt = zext nneg i8 %5 to i32
  br label %bb.ab

bb.y:                                             ; preds = %bb.d
end_hunk_3
begin_hunk_4_@bitposCommand:bb.a
  %i.cg = phi i64 [ 0, %bb.z ], [ %i.br, %bb.x ], [ %i.bh, %bb.w ] ; 4 uses
  %.099 = phi ptr [ %i.cb, %bb.z ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ] ; 3 uses
  %.197 = phi i1 [ false, %bb.z ], [ %i.ah, %bb.x ], [ %i.ah, %bb.w ]
  %.195 = phi i8 [ 0, %bb.z ], [ %3, %bb.x ], [ 0, %bb.w ] ; 3 uses
  %.193 = phi i32 [ 0, %bb.z ], [ %i.bt, %bb.x ], [ 0, %bb.w ] ; 6 uses
  %.0 = phi ptr [ %i.bz, %bb.z ], [ %i.an, %bb.x ], [ %i.an, %bb.w ]
  %i.ch = icmp eq ptr %.0, null
end_hunk_4
