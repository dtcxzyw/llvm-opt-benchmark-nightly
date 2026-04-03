begin_hunk_0

.lr.ph481:                                        ; preds = %bb.u, %bb.as
  %i.bf = phi i32 [ %i.dm, %bb.as ], [ %i.ah, %bb.u ]
  %.1254479 = phi i32 [ %.7260, %bb.as ], [ %i.bd, %bb.u ] ; 4 uses
  %.0280478 = phi i32 [ %.2282, %bb.as ], [ 10, %bb.u ] ; 3 uses
  %.0284477 = phi i32 [ %.2286, %bb.as ], [ 1, %bb.u ] ; 3 uses
  %.0288476 = phi ptr [ %.5293, %bb.as ], [ null, %bb.u ] ; 9 uses
end_hunk_0
begin_hunk_1
.thread:                                          ; preds = %bb.w
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !63
  %i.br = trunc i64 %i.bq to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.as

end_hunk_1
begin_hunk_2
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bx = mul nsw i64 %i.bw, 1000
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !63
  br label %bb.as

.critedge:                                        ; preds = %bb.y
end_hunk_2
begin_hunk_3
.thread369:                                       ; preds = %bb.ac
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !63
  %i.cd = trunc i64 %i.cc to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.as

end_hunk_3
begin_hunk_4
.critedge354:                                     ; preds = %.lr.ph473, %.critedge355.thread
  %.1289.lcssa = phi ptr [ null, %.critedge355.thread ], [ %i.dk, %.lr.ph473 ]
  call void @zfree(ptr noundef %i.cs) #13
  %i.dl = add nsw i32 %i.cn, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.as
end_hunk_4
begin_hunk_5
  call void @slotRangeArrayFree(ptr noundef %.0288476) #13
  br label %.critedge357.a

bb.as:                                            ; preds = %.critedge354, %.thread369, %.thread, %bb.ab
  %.5293 = phi ptr [ %.1289.lcssa, %.critedge354 ], [ %.0288476, %.thread369 ], [ %.0288476, %bb.ab ], [ %.0288476, %.thread ] ; 2 uses
  %.2286 = phi i32 [ %.0284477, %.critedge354 ], [ %i.cd, %.thread369 ], [ %.0284477, %bb.ab ], [ %.0284477, %.thread ] ; 2 uses
  %.2282 = phi i32 [ %.0280478, %.critedge354 ], [ %.0280478, %.thread369 ], [ %.0280478, %bb.ab ], [ %i.br, %.thread ] ; 2 uses
  %.pn = phi i32 [ %i.dl, %.critedge354 ], [ 2, %.thread369 ], [ 2, %bb.ab ], [ 2, %.thread ]
  %.7260 = add nsw i32 %.pn, %.1254479            ; 2 uses
  %i.dm = load i32, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %.not381 = icmp slt i32 %.7260, %i.dm
  br i1 %.not381, label %.lr.ph481, label %._crit_edge482.loopexit, !llvm.loop !112

._crit_edge482.loopexit:                          ; preds = %bb.as
end_hunk_5
begin_hunk_6
  call void @addReply(ptr noundef nonnull %0, ptr noundef %i.dr) #13
  br label %.critedge357.a

.critedge357.a:                                   ; preds = %.critedge354.thread, %bb.ad, %bb.x, %.critedge350, %bb.ah, %bb.af, %bb.aa, %._crit_edge482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
end_hunk_6
