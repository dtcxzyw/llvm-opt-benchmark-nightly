inline.NumInlined: 18
inline.NumDeleted: 11
begin_hunk_0_@OSSL_HTTP_open:bb.a
  %.162105 = phi ptr [ %i.u, %bb.u ], [ %5, %bb.t ], [ %5, %.thread121 ] ; 4 uses
  %.266102 = phi ptr [ %.064, %bb.u ], [ %1, %bb.t ], [ %1, %.thread121 ] ; 2 uses
  %.168100 = phi ptr [ %i.l, %bb.u ], [ null, %bb.t ], [ null, %.thread121 ] ; 2 uses
  %.not778699 = phi i32 [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %.thread121 ] ; 2 uses
  %.not778699.a = phi i1 [ true, %bb.u ], [ false, %bb.t ], [ false, %.thread121 ]
  br i1 %i.e, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.ag = select i1 %.not, ptr %.162105, ptr %6
  %i.ah = call fastcc ptr @http_req_ctx_new(i32 noundef %.not778699, ptr noundef nonnull %.162105, ptr noundef %i.ag, ptr noundef null, ptr noundef %8, i32 noundef %4, ptr noundef %.168100, ptr noundef %0, ptr noundef %.266102, i32 noundef %9, i32 noundef %10)
  br label %bb.y

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@OSSL_HTTP_open:bb.a
  br i1 %.not778699.a, label %.thread110.sink.split, label %.thread110

.split69:                                         ; preds = %bb.w
  %i.al = select i1 %.not, ptr %i.aj, ptr %6
  %i.am = call fastcc ptr @http_req_ctx_new(i32 noundef %.not778699, ptr noundef nonnull %i.aj, ptr noundef nonnull %i.al, ptr noundef nonnull %7, ptr noundef %8, i32 noundef %4, ptr noundef %.168100, ptr noundef %0, ptr noundef %.266102, i32 noundef %9, i32 noundef %10)
  br label %bb.y

bb.y:                                             ; preds = %.split, %.split69
end_hunk_1
