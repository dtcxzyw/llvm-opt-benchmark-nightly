inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@hotkeysGetMemoryUsage:bb.a
  %i.j = load i32, ptr %i.i, align 4, !tbaa !9
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 2
  %i.m = add i64 %.1, 4
  %i.n = add i64 %i.m, %i.l
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
end_hunk_0
begin_hunk_1_@hotkeysCommand:bb.a

.lr.ph485:                                        ; preds = %bb.u, %bb.as
  %i.bf = phi i32 [ %i.di, %bb.as ], [ %i.ah, %bb.u ]
  %.1254483 = phi i32 [ %.8261.a, %bb.as ], [ %i.bd, %bb.u ] ; 7 uses
  %.0280482 = phi i32 [ %.3283, %bb.as ], [ 10, %bb.u ] ; 3 uses
  %.0284481 = phi i32 [ %.3287, %bb.as ], [ 1, %bb.u ] ; 3 uses
  %.0288480 = phi ptr [ %.6294, %bb.as ], [ null, %bb.u ] ; 9 uses
end_hunk_1
begin_hunk_2_@hotkeysCommand:bb.a
.thread:                                          ; preds = %bb.w
  %i.bq = load i64, ptr %i.e, align 8, !tbaa !63
  %i.br = trunc i64 %i.bq to i32
  %2 = add nsw i32 %.1254483, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %bb.as

end_hunk_2
begin_hunk_3_@hotkeysCommand:bb.a
  %i.bw = load i64, ptr %i.d, align 8, !tbaa !63
  %i.bx = mul nsw i64 %i.bw, 1000
  store i64 %i.bx, ptr %i.d, align 8, !tbaa !63
  %3 = add nsw i32 %.1254483, 2
  br label %bb.as

.critedge:                                        ; preds = %bb.y
end_hunk_3
begin_hunk_4_@hotkeysCommand:bb.a
.thread367:                                       ; preds = %bb.ac
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !63
  %i.cd = trunc i64 %i.cc to i32
  %4 = add nsw i32 %.1254483, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %bb.as

end_hunk_4
begin_hunk_5_@hotkeysCommand:bb.a

.lr.ph474:                                        ; preds = %bb.al
  %wide.trip.count546 = and i64 %i.cm, 2147483647
  %5 = sext i32 %.1254483 to i64
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph474, %.critedge352
  %indvars.iv543 = phi i64 [ 0, %.lr.ph474 ], [ %indvars.iv.next544, %.critedge352 ] ; 5 uses
  %i.ct = load ptr, ptr %i.l, align 8, !tbaa !79
  %6 = getelementptr [8 x i8], ptr %i.ct, i64 %indvars.iv543
  %7 = getelementptr [8 x i8], ptr %6, i64 %5
  %8 = getelementptr i8, ptr %7, i64 16
  %i.cu = load ptr, ptr %8, align 8, !tbaa !97
  %i.cv = call i32 @getSlotOrReply(ptr noundef nonnull %0, ptr noundef %i.cu) #13 ; 5 uses
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.an, label %bb.ao
end_hunk_5
begin_hunk_6_@hotkeysCommand:bb.a
.critedge354:                                     ; preds = %.lr.ph477, %.critedge355.thread
  %.1289.lcssa = phi ptr [ null, %.critedge355.thread ], [ %i.dg, %.lr.ph477 ]
  call void @zfree(ptr noundef %i.cs) #13
  %9 = add i32 %.1254483, 2
  %i.dh = add i32 %9, %i.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  br label %bb.as
end_hunk_6
begin_hunk_7_@hotkeysCommand:bb.a
  %.6294 = phi ptr [ %.0288480, %.thread367 ], [ %.0288480, %bb.ab ], [ %.0288480, %.thread ], [ %.1289.lcssa, %.critedge354 ] ; 2 uses
  %.3287 = phi i32 [ %i.cd, %.thread367 ], [ %.0284481, %bb.ab ], [ %.0284481, %.thread ], [ %.0284481, %.critedge354 ] ; 2 uses
  %.3283 = phi i32 [ %.0280482, %.thread367 ], [ %.0280482, %bb.ab ], [ %i.br, %.thread ], [ %.0280482, %.critedge354 ] ; 2 uses
  %.8261.a = phi i32 [ %4, %.thread367 ], [ %3, %bb.ab ], [ %2, %.thread ], [ %i.dh, %.critedge354 ] ; 2 uses
  %i.di = load i32, ptr %i.i, align 8, !tbaa !105 ; 2 uses
  %.not385 = icmp slt i32 %.8261.a, %i.di
  br i1 %.not385, label %.lr.ph485, label %._crit_edge486.loopexit, !llvm.loop !112

._crit_edge486.loopexit:                          ; preds = %bb.as
end_hunk_7
