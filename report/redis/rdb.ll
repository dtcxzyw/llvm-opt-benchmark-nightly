inline.NumInlined: 264
inline.NumDeleted: 16
begin_hunk_0_@rdbLoadObject:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #20
  %i.jh = call i32 @rdbLoadLenByRef(ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.ab)
  %i.ji = icmp eq i32 %i.jh, -1
  %i.jj = load i64, ptr %i.ab, align 8            ; 4 uses
  %.0.i1134 = select i1 %i.ji, i64 -1, i64 %i.jj  ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #20
  switch i64 %.0.i1134, label %bb.cl [
end_hunk_0
begin_hunk_1_@rdbLoadObject:bb.a
  br label %bb.cq

bb.cq:                                            ; preds = %.lr.ph1413, %bb.dn
  %lsr.iv2130.a = phi i64 [ %i.ju, %.lr.ph1413 ], [ %lsr.iv.next2131, %bb.dn ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai) #20
  %i.jv = call ptr @rdbGenericLoadStringObjectUsable(ptr noundef %1, i32 noundef 4, ptr noundef null, ptr noundef null) ; 4 uses
  %i.jw = icmp eq ptr %i.jv, null
end_hunk_1
begin_hunk_2_@rdbLoadObject:bb.a
  br label %.thread1222

bb.cw:                                            ; preds = %bb.ct
  %i.jz = call ptr @entryCreate(ptr noundef nonnull %i.jv, ptr noundef nonnull %i.jx, i32 noundef 2, ptr noundef nonnull %i.ai) #20 ; 17 uses
  call void @sdsfree(ptr noundef nonnull %i.jv) #20
  br i1 %.not1040, label %.critedge1071, label %bb.cx

end_hunk_2
begin_hunk_3_@rdbLoadObject:bb.a
  br i1 %.not1042, label %sdslen.exit1137.thread._crit_edge, label %bb.dn

split.a:                                          ; preds = %entryFieldLen.exit, %sdslen.exit1137
  %lsr.iv2130.lcssa2134 = phi i64 [ %lsr.iv2130.a, %entryFieldLen.exit ], [ %lsr.iv2130.a, %sdslen.exit1137 ]
  br label %bb.dj

sdslen.exit1137.thread._crit_edge:                ; preds = %sdslen.exit1137.thread
  %lsr.iv2130.lcssa2135 = phi i64 [ %lsr.iv2130.a, %sdslen.exit1137.thread ]
  br label %bb.dj

bb.dj:                                            ; preds = %split.a, %sdslen.exit1137.thread._crit_edge
  %.lcssa2121 = phi ptr [ %i.jz, %sdslen.exit1137.thread._crit_edge ], [ %i.jz, %split.a ] ; 2 uses
  %.lcssa2118 = phi i64 [ %lsr.iv2130.lcssa2135, %sdslen.exit1137.thread._crit_edge ], [ %lsr.iv2130.lcssa2134, %split.a ]
  call void @hashTypeConvert(ptr noundef null, ptr noundef nonnull %i.jk, i32 noundef 2) #20
  %i.lr = load ptr, ptr %i.jt, align 8, !tbaa !82
  %i.ls = call i32 @dictAdd(ptr noundef %i.lr, ptr noundef nonnull %.lcssa2121, ptr noundef null) #20
end_hunk_3
begin_hunk_4_@rdbLoadObject:bb.a
  %i.mi = load i64, ptr %i.jk, align 8
  %i.mj = and i64 %i.mi, 240
  %i.mk = icmp eq i64 %i.mj, 176
  %i.ml = icmp ne i64 %lsr.iv2130.a, 0
  %i.mm = select i1 %i.mk, i1 %i.ml, i1 false
  %lsr.iv.next2131 = add i64 %lsr.iv2130.a, -1
  br i1 %i.mm, label %bb.cq, label %.loopexit1306.loopexit

.loopexit1306.loopexit:                           ; preds = %bb.dn
  %.lcssa2119 = phi i64 [ %lsr.iv2130.a, %bb.dn ]
  br label %.loopexit1306

.loopexit1306:                                    ; preds = %.loopexit1306.loopexit, %bb.cp, %.thread1224
end_hunk_4
