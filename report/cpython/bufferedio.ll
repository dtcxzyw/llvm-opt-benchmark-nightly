inline.NumInlined: 217
inline.NumDeleted: 75
begin_hunk_0_@_io__Buffered_read
define internal ptr @_io__Buffered_read(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
end_hunk_0
begin_hunk_1_@_io__Buffered_read:bb.a
bb.z:                                             ; preds = %bb.y
  %i.bf = load ptr, ptr %i.u, align 8, !tbaa !63
  %i.bg = getelementptr i8, ptr %i.bf, i64 %i.bd
  %i.bh = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.bg, i64 noundef %i.be) #9 ; 3 uses
  store ptr %i.bh, ptr %i.b, align 8, !tbaa !11
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_bufferedreader_read_all.exit.i, label %bb.aa
end_hunk_1
begin_hunk_2_@_io__Buffered_read:bb.a
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.aa, %bb.y, %bb.x, %bb.w
  %3 = phi ptr [ null, %bb.y ], [ %i.bh, %bb.aa ], [ null, %bb.x ], [ null, %bb.w ] ; 2 uses
  %.not6197.i.i = phi i1 [ true, %bb.y ], [ false, %bb.aa ], [ true, %bb.x ], [ true, %bb.w ] ; 2 uses
  %i.bl = phi i64 [ 0, %bb.y ], [ %i.be, %bb.aa ], [ 0, %bb.x ], [ 0, %bb.w ]
  %i.bm = getelementptr i8, ptr %0, i64 36        ; 2 uses
end_hunk_2
begin_hunk_3_@_io__Buffered_read:bb.a
  br label %Py_XINCREF.exit.i.i

bb.av:                                            ; preds = %bb.as
  br i1 %.not6197.i.i, label %.thread153.i.i, label %bb.bl

.thread99.i.i:                                    ; preds = %bb.at
  br i1 %.not6197.i.i, label %bb.bl, label %bb.aw

bb.aw:                                            ; preds = %.thread99.i.i
  call void @PyBytes_Concat(ptr noundef nonnull %i.b, ptr noundef nonnull %.0.i.i.i.i) #9
  %.pre.i.i.a = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.bl

end_hunk_3
begin_hunk_4_@_io__Buffered_read:bb.a

.preheader.i.i:                                   ; preds = %bb.ax
  %i.dl = getelementptr i8, ptr %0, i64 48        ; 2 uses
  br label %bb.ay

bb.ay:                                            ; preds = %.backedge, %.preheader.i.i
  %i.dm = phi ptr [ %3, %.preheader.i.i ], [ %i.du, %.backedge ] ; 2 uses
  %.035.i.i = phi i64 [ %i.bl, %.preheader.i.i ], [ %i.ee, %.backedge ] ; 2 uses
  %.not64.i.i = icmp eq ptr %i.dm, null
  br i1 %.not64.i.i, label %Py_DECREF.exit.i.i, label %bb.az
end_hunk_4
begin_hunk_5_@_io__Buffered_read:bb.a
  br i1 %.not65.i.i, label %Py_DECREF.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !19 ; 2 uses
  %.not.i.i54.i = icmp sgt i32 %i.dq, -1
  br i1 %.not.i.i54.i, label %bb.bc, label %Py_DECREF.exit.i.i
end_hunk_5
begin_hunk_6_@_io__Buffered_read:bb.a
.backedge:                                        ; preds = %bb.bk, %bb.bj
  br label %bb.ay

bb.bl:                                            ; preds = %bb.bi, %.thread101.i.i, %bb.aw, %.thread99.i.i, %bb.av
  %.2.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ed, %bb.bi ], [ %.0.i.i.i.i, %bb.aw ], [ null, %.thread101.i.i ], [ @_Py_NoneStruct, %bb.av ] ; 2 uses
  %.037.i.i = phi ptr [ null, %.thread99.i.i ], [ %i.dj, %bb.bi ], [ null, %bb.aw ], [ %i.dj, %.thread101.i.i ], [ null, %bb.av ] ; 2 uses
  %.036.i.i = phi ptr [ %.0.i.i.i.i, %.thread99.i.i ], [ %i.ed, %bb.bi ], [ %.pre.i.i.a, %bb.aw ], [ %i.du, %.thread101.i.i ], [ %3, %bb.av ] ; 2 uses
  %.not.i84.i.i = icmp eq ptr %.036.i.i, null
  br i1 %.not.i84.i.i, label %Py_XINCREF.exit.i.i, label %.thread153.i.i

end_hunk_6
