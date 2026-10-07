Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/tablecmds?download=true
inline.NumInlined: 659
inline.NumDeleted: 154
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@PreCommit_on_commit_actions:bb.a
  %i.j = load i32, ptr %i.i, align 4
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.b, label %bb.f

.critedge:                                        ; preds = %bb.f
  %.not32 = icmp eq ptr %.227, null
  br i1 %.not32, label %bb.h, label %bb.g

bb.b:                                             ; preds = %.lr.ph53
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4
  switch i32 %i.l, label %bb.f [
    i32 3, label %bb.e
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @MyXactFlags, align 4
  %i.n = and i32 %i.m, 1
  %.not37 = icmp eq i32 %i.n, 0
  br i1 %.not37, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.h, align 4
  %i.p = tail call ptr @lappend_oid(ptr noundef %.0254052, i32 noundef %i.o) #15
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.h, align 4
  %i.r = tail call ptr @lappend_oid(ptr noundef %.04151, i32 noundef %i.q) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c, %.lr.ph53
  %.227 = phi ptr [ %.0254052, %.lr.ph53 ], [ %.0254052, %bb.b ], [ %.0254052, %bb.e ], [ %i.p, %bb.d ], [ %.0254052, %bb.c ] ; 3 uses
  %.2 = phi ptr [ %.04151, %.lr.ph53 ], [ %.04151, %bb.b ], [ %i.r, %bb.e ], [ %.04151, %bb.d ], [ %.04151, %bb.c ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.b, align 4
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %.lr.ph53, label %.critedge

bb.g:                                             ; preds = %.critedge
  tail call void @heap_truncate(ptr noundef nonnull %.227) #15
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.critedge
  %.not33 = icmp eq ptr %.2, null
  br i1 %.not33, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call ptr @new_object_addresses() #15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.2, i64 4 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %.not3555 = icmp sgt i32 %i.x, 0
  br i1 %.not3555, label %.lr.ph57, label %.critedge39

.lr.ph57:                                         ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph57, %bb.j
  %indvars.iv59 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next60, %bb.j ] ; 2 uses
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv59
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  store i32 1259, ptr %0, align 4
  %i.ad = load i32, ptr %i.ac, align 8
  store i32 %i.ad, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 4
  call void @add_exact_object_address(ptr noundef nonnull %0, ptr noundef %i.v) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %i.ae = load i32, ptr %i.w, align 4
  %i.af = sext i32 %i.ae to i64
  %.not35 = icmp slt i64 %indvars.iv.next60, %i.af
  br i1 %.not35, label %bb.j, label %.critedge39, !llvm.loop !53

.critedge39:                                      ; preds = %bb.j, %bb.i
  %i.ag = call ptr @GetTransactionSnapshot() #15
  call void @PushActiveSnapshot(ptr noundef %i.ag) #15
  call void @performMultipleDeletions(ptr noundef %i.v, i32 noundef 1, i32 noundef 5) #15
  call void @PopActiveSnapshot() #15
  br label %.thread

.thread:                                          ; preds = %bb.a, %.lr.ph, %.critedge39, %bb.h
  ret void
}

declare void @heap_truncate(ptr noundef) local_unnamed_addr #4

declare void @PushActiveSnapshot(ptr noundef) local_unnamed_addr #4

declare ptr @GetTransactionSnapshot() local_unnamed_addr #4

declare void @PopActiveSnapshot() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @AtEOXact_on_commit_actions(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @on_commits, align 8       ; 3 uses
  %.not14 = icmp eq ptr %i.a, null
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %0, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.sroa.0.016.us = phi ptr [ %.sroa.0.1.us, %bb.e ], [ %i.a, %.lr.ph ] ; 3 uses
  %.sroa.7.015.us = phi i32 [ %.sroa.7.1.us, %bb.e ], [ 0, %.lr.ph ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.0.016.us, i64 4
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp slt i32 %.sroa.7.015.us, %i.c
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.016.us, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %.sroa.7.015.us to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %.not13.us = icmp eq i32 %i.k, 0
  br i1 %.not13.us, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @on_commits, align 8
  %i.m = tail call ptr @list_delete_nth_cell(ptr noundef %i.l, i32 noundef %.sroa.7.015.us) #15 ; 2 uses
  store ptr %i.m, ptr @on_commits, align 8
  tail call void @pfree(ptr noundef nonnull %i.i) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.n, align 4
  %i.o = add nsw i32 %.sroa.7.015.us, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.7.1.us = phi i32 [ %.sroa.7.015.us, %bb.c ], [ %i.o, %bb.d ]
  %.sroa.0.1.us = phi ptr [ %i.m, %bb.c ], [ %.sroa.0.016.us, %bb.d ] ; 2 uses
  %.not.us = icmp eq ptr %.sroa.0.1.us, null
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.us, !llvm.loop !54

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %.sroa.0.016 = phi ptr [ %.sroa.0.1, %bb.i ], [ %i.a, %.lr.ph ] ; 3 uses
  %.sroa.7.015 = phi i32 [ %.sroa.7.1, %bb.i ], [ 0, %.lr.ph ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp slt i32 %.sroa.7.015, %i.q
  br i1 %i.r, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph.split
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.016, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = sext i32 %.sroa.7.015 to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 4
  %.not12 = icmp eq i32 %i.y, 0
  br i1 %.not12, label %bb.h, label %bb.g

.critedge:                                        ; preds = %.lr.ph.split, %bb.i, %.lr.ph.split.us, %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr @on_commits, align 8
  %i.aa = tail call ptr @list_delete_nth_cell(ptr noundef %i.z, i32 noundef %.sroa.7.015) #15 ; 2 uses
  store ptr %i.aa, ptr @on_commits, align 8
  tail call void @pfree(ptr noundef nonnull %i.w) #15
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4
  %i.ac = add nsw i32 %.sroa.7.015, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.7.1 = phi i32 [ %.sroa.7.015, %bb.g ], [ %i.ac, %bb.h ]
  %.sroa.0.1 = phi ptr [ %i.aa, %bb.g ], [ %.sroa.0.016, %bb.h ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.1, null
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !54
}

declare ptr @list_delete_nth_cell(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @pfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @AtEOSubXact_on_commit_actions(i1 noundef zeroext %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @on_commits, align 8       ; 4 uses
  %.not19 = icmp eq ptr %i.a, null
  br i1 %.not19, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = select i1 %0, i32 %2, i32 0              ; 2 uses
  br i1 %0, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph24, label %.critedge

.lr.ph24:                                         ; preds = %.lr.ph.split.us.split
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph24, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.j, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = icmp eq i32 %i.n, %1
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.b, ptr %i.m, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.p = load i32, ptr %i.c, align 4
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.r, label %bb.b, label %.critedge

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.k
  %.sroa.0.021 = phi ptr [ %.sroa.0.1, %bb.k ], [ %i.a, %.lr.ph ] ; 4 uses
  %.sroa.7.020 = phi i32 [ %i.aj, %bb.k ], [ 0, %.lr.ph ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 4
  %i.t = load i32, ptr %i.s, align 4
  %i.u = icmp slt i32 %.sroa.7.020, %i.t
  br i1 %i.u, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.lr.ph.split
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.021, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = sext i32 %.sroa.7.020 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, %1
  br i1 %i.ac, label %bb.h, label %bb.i

.critedge:                                        ; preds = %.lr.ph.split, %bb.k, %bb.f, %.lr.ph.split.us.split, %bb.a
  ret void

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr @on_commits, align 8
  %i.ae = add i32 %.sroa.7.020, -1
  %i.af = tail call ptr @list_delete_nth_cell(ptr noundef %i.ad, i32 noundef %.sroa.7.020) #15 ; 2 uses
  store ptr %i.af, ptr @on_commits, align 8
  tail call void @pfree(ptr noundef nonnull %i.z) #15
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 12 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp eq i32 %i.ah, %1
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.b, ptr %i.ag, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.h
  %.sroa.7.1 = phi i32 [ %.sroa.7.020, %bb.j ], [ %.sroa.7.020, %bb.i ], [ %i.ae, %bb.h ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.021, %bb.j ], [ %.sroa.0.021, %bb.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.aj = add i32 %.sroa.7.1, 1
  %.not = icmp eq ptr %.sroa.0.1, null
  br i1 %.not, label %.critedge, label %.lr.ph.split, !llvm.loop !55
}

; Function Attrs: nounwind uwtable
define dso_local void @RangeVarCallbackMaintainsTable(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call signext i8 @get_rel_relkind(i32 noundef %1) #15
  switch i8 %i.a, label %bb.c [
    i8 0, label %bb.f
    i8 116, label %bb.d
    i8 114, label %bb.d
    i8 112, label %bb.d
    i8 109, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.c = tail call i32 @errcode(i32 noundef 151027844) #15 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.54, ptr noundef %i.e) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20158, ptr noundef nonnull @__func__.RangeVarCallbackMaintainsTable) #15
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.g = tail call i32 @GetUserId() #15
  %i.h = tail call i32 @pg_class_aclcheck(i32 noundef %1, i32 noundef %i.g, i64 noundef 16384) #15 ; 2 uses
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call signext i8 @get_rel_relkind(i32 noundef %1) #15
  %i.j = tail call i32 @get_relkind_objtype(i8 noundef signext %i.i) #15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @aclcheck_error(i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.d, %bb.e, %bb.a
  ret void
}

declare i32 @pg_class_aclcheck(i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @RangeVarCallbackOwnsRelation(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %1 to i64
  %i.b = tail call ptr @SearchSysCache1(i32 noundef 65, i64 noundef %i.a) #15 ; 3 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.d = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.23, i32 noundef %1) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20207, ptr noundef nonnull @__func__.RangeVarCallbackOwnsRelation) #15
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i32 @GetUserId() #15
  %i.f = tail call zeroext i1 @object_ownercheck(i32 noundef 1259, i32 noundef %1, i32 noundef %i.e) #15
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call signext i8 @get_rel_relkind(i32 noundef %1) #15
  %i.h = tail call i32 @get_relkind_objtype(i8 noundef signext %i.g) #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef %i.h, ptr noundef %i.j) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = load i8, ptr @allowSystemTableMods, align 1, !range !10, !noundef !11
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.b, i64 16
  %.val = load ptr, ptr %i.m, align 8             ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.o = load i8, ptr %i.n, align 2
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %i.p
  %i.r = tail call zeroext i1 @IsSystemClass(i32 noundef %1, ptr noundef %i.q) #15
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.t = tail call i32 @errcode(i32 noundef 16797828) #15 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.55, ptr noundef %i.v) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 20218, ptr noundef nonnull @__func__.RangeVarCallbackOwnsRelation) #15
  unreachable

bb.i:                                             ; preds = %bb.g, %bb.f
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.b) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i
  ret void
}

declare zeroext i1 @IsSystemClass(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @PartConstraintImpliedByRelConstraint(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.f = load i8, ptr %i.e, align 4, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.b, align 8              ; 2 uses
  %.not2729 = icmp slt i32 %i.h, 1
  br i1 %.not2729, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %.031 = phi ptr [ %.1, %bb.f ], [ null, %bb.c ] ; 3 uses
  %.02530 = phi i32 [ %i.an, %bb.f ], [ 1, %bb.c ] ; 3 uses
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = add i32 %.02530, -1
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.l = sext i32 %i.j to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 7
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 118
  br i1 %i.p, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 6
  %i.r = load i8, ptr %i.q, align 2
  %i.s = and i8 %i.r, 4
  %.not28 = icmp eq i8 %i.s, 0
  br i1 %.not28, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load i32, ptr %i.i, align 8
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3
  %i.w = getelementptr i8, ptr %i.i, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 32
  %i.y = getelementptr inbounds [100 x i8], ptr %i.x, i64 %i.l ; 3 uses
  %i.z = tail call noundef ptr @palloc0(i64 noundef 32) #15 ; 6 uses
  store i32 52, ptr %i.z, align 4
  %i.aa = trunc i32 %.02530 to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 68
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 76
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = tail call ptr @makeVar(i32 noundef 1, i16 noundef signext %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef 0) #15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i8 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i32 -1, ptr %i.al, align 8
  %i.am = tail call ptr @lappend(ptr noundef %.031, ptr noundef nonnull %i.z) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %.1 = phi ptr [ %.031, %bb.d ], [ %i.am, %bb.e ], [ %.031, %.lr.ph ] ; 2 uses
  %i.an = add i32 %.02530, 1                      ; 2 uses
  %.not27 = icmp sgt i32 %i.an, %i.h
  br i1 %.not27, label %.loopexit, label %.lr.ph, !llvm.loop !56

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.b, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.c ], [ %.1, %bb.f ]
  %i.ao = tail call fastcc zeroext i1 @ConstraintImpliedByRelConstraint(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %.2)
  ret i1 %i.ao
}
end_hunk_0
begin_hunk_1_@ATPrepCmd:bb.a
    i32 30, label %bb.al
    i32 31, label %bb.ba
    i32 32, label %bb.bb
    i32 33, label %bb.be
    i32 34, label %bb.bf
    i32 35, label %bb.bf
    i32 36, label %bb.bf
    i32 49, label %bb.bg
    i32 50, label %bb.bh
    i32 19, label %bb.bi
    i32 20, label %bb.bk
    i32 53, label %bb.bm
    i32 37, label %bb.bn
    i32 38, label %bb.bn
    i32 39, label %bb.bn
    i32 41, label %bb.bn
    i32 43, label %bb.bn
    i32 40, label %bb.bn
    i32 42, label %bb.bn
    i32 44, label %bb.bn
    i32 45, label %bb.bp
    i32 46, label %bb.bp
    i32 47, label %bb.bp
    i32 48, label %bb.bp
    i32 51, label %bb.bp
    i32 52, label %bb.bp
    i32 54, label %bb.bp
    i32 55, label %bb.bp
    i32 56, label %bb.bp
    i32 57, label %bb.bp
    i32 58, label %bb.bq
    i32 59, label %bb.br
    i32 60, label %bb.bs
    i32 61, label %bb.bt
    i32 63, label %bb.bu
    i32 62, label %bb.bu
  ]

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 0, ptr noundef nonnull %1, i32 noundef 305)
  tail call fastcc void @ATPrepAddColumn(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext false, ptr noundef nonnull %i.at, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 1, ptr noundef nonnull %1, i32 noundef 2)
  tail call fastcc void @ATPrepAddColumn(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext true, ptr noundef nonnull %i.at, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.j:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 2, ptr noundef nonnull %1, i32 noundef 291)
  tail call fastcc void @ATSimpleRecursion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not211 = icmp eq ptr %i.ax, null
  %i.ay = select i1 %.not211, i64 0, i64 10
  br label %bb.bw

bb.k:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 3, ptr noundef nonnull %1, i32 noundef 289)
  br label %bb.bw

bb.l:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 64, ptr noundef nonnull %1, i32 noundef 291)
  br i1 %3, label %bb.m, label %bb.bw

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.az, align 1
  br label %bb.bw

bb.n:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 65, ptr noundef nonnull %1, i32 noundef 291)
  br i1 %3, label %bb.o, label %bb.bw

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.ba, align 1
  br label %bb.bw

bb.p:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 66, ptr noundef nonnull %1, i32 noundef 291)
  br i1 %3, label %bb.q, label %bb.bw

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bb, align 1
  br label %bb.bw

bb.r:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 4, ptr noundef nonnull %1, i32 noundef 289)
  br i1 %3, label %bb.s, label %bb.bw

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bc, align 1
  br label %bb.bw

bb.t:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 5, ptr noundef nonnull %1, i32 noundef 289)
  br i1 %3, label %bb.u, label %bb.bw

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bd, align 1
  br label %bb.bw

bb.v:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 6, ptr noundef nonnull %1, i32 noundef 289)
  tail call fastcc void @ATSimpleRecursion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.w:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 7, ptr noundef nonnull %1, i32 noundef 289)
  tail call fastcc void @ATSimpleRecursion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  tail call fastcc void @ATPrepDropExpression(ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i1 noundef zeroext %4, i32 noundef %5)
  br label %bb.bw

bb.x:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 8, ptr noundef nonnull %1, i32 noundef 365)
  tail call fastcc void @ATSimpleRecursion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.y:                                             ; preds = %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 293)
  br label %bb.bw

bb.z:                                             ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 11, ptr noundef nonnull %1, i32 noundef 293)
  tail call fastcc void @ATSimpleRecursion(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.aa:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 12, ptr noundef nonnull %1, i32 noundef 261)
  br label %bb.bw

bb.ab:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 13, ptr noundef nonnull %1, i32 noundef 305)
  tail call fastcc void @ATPrepDropColumn(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull %i.at, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.ac:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 14, ptr noundef nonnull %1, i32 noundef 257)
  br label %bb.bw

bb.ad:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 16, ptr noundef nonnull %1, i32 noundef 289)
  tail call fastcc void @ATPrepAddPrimaryKey(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef %5, ptr noundef %6)
  br i1 %3, label %bb.ae, label %bb.bw

bb.ae:                                            ; preds = %bb.ad
  %i.be = load i32, ptr %i.a, align 8
  %i.bf = tail call ptr @find_all_inheritors(i32 noundef %i.be, i32 noundef %5, ptr noundef null) #15 ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bg, align 1
  br label %bb.bw

bb.af:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 21, ptr noundef nonnull %1, i32 noundef 257)
  br label %bb.bw

bb.ag:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 22, ptr noundef nonnull %1, i32 noundef 289)
  tail call fastcc void @ATCheckPartitionsNotInUse(ptr noundef nonnull %1, i32 noundef %5)
  br i1 %3, label %bb.ah, label %bb.bw

bb.ah:                                            ; preds = %bb.ag
  %i.bh = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.bh, align 1
  br label %bb.bw

bb.ai:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 24, ptr noundef nonnull %1, i32 noundef 305)
  %i.bi = tail call fastcc ptr @ATParseTransformCmd(ptr noundef nonnull %.1.i, ptr noundef nonnull %1, ptr noundef nonnull %i.at, i1 noundef zeroext %3, i32 noundef -1, ptr noundef %6) ; 2 uses
  tail call fastcc void @ATPrepAlterColumnType(ptr noundef %0, ptr noundef nonnull %.1.i, ptr noundef nonnull %1, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %i.bi, i32 noundef %5, ptr noundef %6)
  br label %bb.bw

bb.aj:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 25, ptr noundef nonnull %1, i32 noundef 32)
  br label %bb.bw

bb.ak:                                            ; preds = %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 5)
  br label %bb.bw

bb.al:                                            ; preds = %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 129)
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i, i64 164 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 4, !range !10, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.bm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.bn = tail call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.161) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5223, ptr noundef nonnull @__func__.ATPrepCmd) #15
  unreachable

bb.an:                                            ; preds = %bb.al
  %i.bp = load i32, ptr %i.au, align 4
  %i.bq = icmp eq i32 %i.bp, 29                   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.br = load ptr, ptr %i.ae, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 118
  %i.bt = load i8, ptr %i.bs, align 2
  switch i8 %i.bt, label %bb.ar [
    i8 116, label %bb.ao
    i8 112, label %bb.ap
    i8 117, label %bb.aq
  ]

bb.ao:                                            ; preds = %bb.an
  %i.bu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.bv = tail call i32 @errcode(i32 noundef 101056644) #15 ; 0 uses
  %i.bw = load ptr, ptr %i.ae, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.251, ptr noundef nonnull %i.bx) #15 ; 0 uses
  %i.bz = tail call i32 @errtable(ptr noundef nonnull %1) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 19482, ptr noundef nonnull @__func__.ATPrepChangePersistence) #15
  unreachable

bb.ap:                                            ; preds = %bb.an
  br i1 %i.bq, label %ATPrepChangePersistence.exit, label %.critedge45.i

bb.aq:                                            ; preds = %bb.an
  br i1 %i.bq, label %.critedge.i, label %ATPrepChangePersistence.exit

bb.ar:                                            ; preds = %bb.an
  br i1 %i.bq, label %.critedge.i, label %.critedge45.i

.critedge45.i:                                    ; preds = %bb.ar, %bb.ap
  %i.ca = load i32, ptr %i.a, align 8
  %i.cb = tail call ptr @GetRelationIncludedPublications(i32 noundef %i.ca) #15
  %.not.i215 = icmp eq ptr %i.cb, null
  br i1 %.not.i215, label %.critedge.i, label %bb.as

bb.as:                                            ; preds = %.critedge45.i
  %i.cc = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.cd = tail call i32 @errcode(i32 noundef 325) #15 ; 0 uses
  %i.ce = load ptr, ptr %i.ae, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.252, ptr noundef nonnull %i.cf) #15 ; 0 uses
  %i.ch = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.253) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 19506, ptr noundef nonnull @__func__.ATPrepChangePersistence) #15
  unreachable

.critedge.i:                                      ; preds = %.critedge45.i, %bb.ar, %bb.aq
  %i.ci = phi i32 [ 0, %.critedge45.i ], [ 2665, %bb.ar ], [ 2665, %bb.aq ]
  %i.cj = phi i16 [ 13, %.critedge45.i ], [ 9, %bb.ar ], [ 9, %bb.aq ]
  %i.ck = tail call ptr @table_open(i32 noundef 2606, i32 noundef 1) #15 ; 2 uses
  %i.cl = load i32, ptr %i.a, align 8
  %i.cm = zext i32 %i.cl to i64
  call void @ScanKeyInit(ptr noundef nonnull %7, i16 noundef signext %i.cj, i16 noundef zeroext 3, i32 noundef 184, i64 noundef %i.cm) #15
  %i.cn = call ptr @systable_beginscan(ptr noundef %i.ck, i32 noundef %i.ci, i1 noundef zeroext true, ptr noundef null, i32 noundef 1, ptr noundef nonnull %7) #15 ; 4 uses
  %i.co = call ptr @systable_getnext(ptr noundef %i.cn) #15 ; 3 uses
  %.not4252.i = icmp eq ptr %i.co, null
  br i1 %.not4252.i, label %._crit_edge.i214, label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.critedge.i
  %.in.v.i = select i1 %i.bq, i64 96, i64 80      ; 2 uses
  br i1 %i.bq, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i213, %.critedge47.us.i
  %i.cp = phi ptr [ %i.dg, %.critedge47.us.i ], [ %i.co, %.lr.ph.i213 ]
  %i.cq = getelementptr i8, ptr %i.cp, i64 16
  %.val.us.i = load ptr, ptr %i.cq, align 8       ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 22
  %i.cs = load i8, ptr %i.cr, align 2
  %i.ct = zext i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.us.i, i64 %i.ct ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 72
  %i.cw = load i8, ptr %i.cv, align 4
  %i.cx = icmp eq i8 %i.cw, 102
  br i1 %i.cx, label %bb.at, label %.critedge47.us.i

bb.at:                                            ; preds = %.lr.ph.split.us.i
  %.in.us.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.in.v.i
  %i.cy = load i32, ptr %.in.us.i, align 4        ; 2 uses
  %i.cz = load i32, ptr %i.a, align 8
  %.not43.us.i = icmp eq i32 %i.cz, %i.cy
  br i1 %.not43.us.i, label %.critedge47.us.i, label %bb.au, !llvm.loop !59

bb.au:                                            ; preds = %bb.at
  %i.da = call ptr @relation_open(i32 noundef %i.cy, i32 noundef 1) #15 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 118
  %i.de = load i8, ptr %i.dd, align 2
  %i.df = icmp eq i8 %i.de, 112
  br i1 %i.df, label %bb.av, label %.split.us.i

bb.av:                                            ; preds = %bb.au
  call void @relation_close(ptr noundef nonnull %i.da, i32 noundef 1) #15
  br label %.critedge47.us.i

.critedge47.us.i:                                 ; preds = %bb.av, %bb.at, %.lr.ph.split.us.i
  %i.dg = call ptr @systable_getnext(ptr noundef %i.cn) #15 ; 2 uses
  %.not42.us.i = icmp eq ptr %i.dg, null
  br i1 %.not42.us.i, label %._crit_edge.i214, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i213, %.critedge47.i
  %i.dh = phi ptr [ %i.es, %.critedge47.i ], [ %i.co, %.lr.ph.i213 ]
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  %.val.i = load ptr, ptr %i.di, align 8          ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.val.i, i64 22
  %i.dk = load i8, ptr %i.dj, align 2
  %i.dl = zext i8 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dl ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = icmp eq i8 %i.do, 102
  br i1 %i.dp, label %bb.aw, label %.critedge47.i

bb.aw:                                            ; preds = %.lr.ph.split.i
  %.in.i = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.in.v.i
  %i.dq = load i32, ptr %.in.i, align 4           ; 2 uses
  %i.dr = load i32, ptr %i.a, align 8
  %.not43.i = icmp eq i32 %i.dr, %i.dq
  br i1 %.not43.i, label %.critedge47.i, label %bb.ax, !llvm.loop !59

bb.ax:                                            ; preds = %bb.aw
  %i.ds = call ptr @relation_open(i32 noundef %i.dq, i32 noundef 1) #15 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 118
  %i.dw = load i8, ptr %i.dv, align 2
  %i.dx = icmp eq i8 %i.dw, 112
  br i1 %i.dx, label %bb.ay, label %bb.az

.split.us.i:                                      ; preds = %bb.au
  %i.dy = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.ea = call i32 @errcode(i32 noundef 101056644) #15 ; 0 uses
  %i.eb = load ptr, ptr %i.ae, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = load ptr, ptr %i.dy, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.254, ptr noundef nonnull %i.ec, ptr noundef nonnull %i.ee) #15 ; 0 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.eh = call i32 @errtableconstraint(ptr noundef nonnull %1, ptr noundef nonnull %i.eg) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 19554, ptr noundef nonnull @__func__.ATPrepChangePersistence) #15
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  %i.ej = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.ek = call i32 @errcode(i32 noundef 101056644) #15 ; 0 uses
  %i.el = load ptr, ptr %i.ae, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.en = load ptr, ptr %i.ei, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.255, ptr noundef nonnull %i.em, ptr noundef nonnull %i.eo) #15 ; 0 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.er = call i32 @errtableconstraint(ptr noundef nonnull %1, ptr noundef nonnull %i.eq) #15 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 19564, ptr noundef nonnull @__func__.ATPrepChangePersistence) #15
  unreachable

bb.az:                                            ; preds = %bb.ax
  call void @relation_close(ptr noundef nonnull %i.ds, i32 noundef 1) #15
  br label %.critedge47.i

.critedge47.i:                                    ; preds = %bb.az, %bb.aw, %.lr.ph.split.i
  %i.es = call ptr @systable_getnext(ptr noundef %i.cn) #15 ; 2 uses
  %.not42.i = icmp eq ptr %i.es, null
  br i1 %.not42.i, label %._crit_edge.i214, label %.lr.ph.split.i

._crit_edge.i214:                                 ; preds = %.critedge47.i, %.critedge47.us.i, %.critedge.i
  call void @systable_endscan(ptr noundef %i.cn) #15
  call void @table_close(ptr noundef %i.ck, i32 noundef 1) #15
  %i.et = getelementptr inbounds nuw i8, ptr %.1.i, i64 148 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = or i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4
  %spec.select.i = select i1 %i.bq, i8 112, i8 117
  %i.ew = getelementptr inbounds nuw i8, ptr %.1.i, i64 165
  store i8 %spec.select.i, ptr %i.ew, align 1
  store i8 1, ptr %i.bj, align 4
  br label %ATPrepChangePersistence.exit

ATPrepChangePersistence.exit:                     ; preds = %bb.ap, %bb.aq, %._crit_edge.i214
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.bw

bb.ba:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 31, ptr noundef nonnull %1, i32 noundef 289)
  br label %bb.bw

bb.bb:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 32, ptr noundef nonnull %1, i32 noundef 261)
  %i.ex = getelementptr inbounds nuw i8, ptr %.1.i, i64 152
  %i.ey = load i8, ptr %i.ex, align 8, !range !10, !noundef !11
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fa = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.fb = tail call i32 @errcode(i32 noundef 1088) #15 ; 0 uses
  %i.fc = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.162) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5240, ptr noundef nonnull @__func__.ATPrepCmd) #15
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  tail call fastcc void @ATPrepSetAccessMethod(ptr noundef nonnull %.1.i, ptr noundef nonnull %1, ptr noundef %i.fe)
  br label %bb.bw

bb.be:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 33, ptr noundef nonnull %1, i32 noundef 333)
  %i.ff = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.fg = load ptr, ptr %i.ff, align 8
  tail call fastcc void @ATPrepSetTableSpace(ptr noundef nonnull %.1.i, ptr noundef %i.fg)
  br label %bb.bw

bb.bf:                                            ; preds = %bb.g, %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 271)
  br label %bb.bw

bb.bg:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 49, ptr noundef nonnull %1, i32 noundef 33)
  %.val212 = load ptr, ptr %i.ae, align 8
  tail call fastcc void @ATPrepChangeInherit(ptr %.val212)
  br label %bb.bw

bb.bh:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 50, ptr noundef nonnull %1, i32 noundef 33)
  %.val = load ptr, ptr %i.ae, align 8
  tail call fastcc void @ATPrepChangeInherit(ptr %.val)
  br label %bb.bw

bb.bi:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 19, ptr noundef nonnull %1, i32 noundef 257)
  br i1 %3, label %bb.bj, label %bb.bw

bb.bj:                                            ; preds = %bb.bi
  %i.fh = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.fh, align 1
  br label %bb.bw

bb.bk:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 20, ptr noundef nonnull %1, i32 noundef 289)
  br i1 %3, label %bb.bl, label %bb.bw

bb.bl:                                            ; preds = %bb.bk
  %i.fi = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.fi, align 1
  br label %bb.bw

bb.bm:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 53, ptr noundef nonnull %1, i32 noundef 261)
  br label %bb.bw

bb.bn:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 289)
  br i1 %3, label %bb.bo, label %bb.bw

bb.bo:                                            ; preds = %bb.bn
  %i.fj = getelementptr inbounds nuw i8, ptr %i.at, i64 45
  store i8 1, ptr %i.fj, align 1
  br label %bb.bw

bb.bp:                                            ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 257)
  br label %bb.bw

bb.bq:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 58, ptr noundef nonnull %1, i32 noundef 32)
  br label %bb.bw

bb.br:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 59, ptr noundef nonnull %1, i32 noundef 320)
  br label %bb.bw

bb.bs:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 60, ptr noundef nonnull %1, i32 noundef 256)
  br label %bb.bw

bb.bt:                                            ; preds = %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef 61, ptr noundef nonnull %1, i32 noundef 256)
  br label %bb.bw

bb.bu:                                            ; preds = %bb.g, %bb.g
  tail call fastcc void @ATSimplePermissions(i32 noundef %i.av, ptr noundef nonnull %1, i32 noundef 256)
  br label %bb.bw

bb.bv:                                            ; preds = %bb.g
  %i.fk = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #16 ; 0 uses
  %i.fl = load i32, ptr %i.au, align 4
  %i.fm = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.31, i32 noundef %i.fl) #15 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 5360, ptr noundef nonnull @__func__.ATPrepCmd) #15
  unreachable

bb.bw:                                            ; preds = %bb.bn, %bb.bo, %bb.bk, %bb.bl, %bb.bi, %bb.bj, %bb.g, %bb.ag, %bb.ah, %bb.ad, %bb.ae, %bb.t, %bb.u, %bb.r, %bb.s, %bb.p, %bb.q, %bb.n, %bb.o, %bb.l, %bb.m, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bm, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.ba, %ATPrepChangePersistence.exit, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.k, %bb.j, %bb.i, %bb.h
  %.0209 = phi ptr [ %i.at, %bb.h ], [ %i.at, %bb.i ], [ %i.at, %bb.j ], [ %i.at, %bb.k ], [ %i.at, %bb.bu ], [ %i.at, %bb.l ], [ %i.at, %bb.n ], [ %i.at, %bb.p ], [ %i.at, %bb.r ], [ %i.at, %bb.v ], [ %i.at, %bb.w ], [ %i.at, %bb.x ], [ %i.at, %bb.y ], [ %i.at, %bb.z ], [ %i.at, %bb.aa ], [ %i.at, %bb.ab ], [ %i.at, %bb.ac ], [ %i.at, %bb.t ], [ %i.at, %bb.af ], [ %i.at, %bb.ad ], [ %i.bi, %bb.ai ], [ %i.at, %bb.aj ], [ %i.at, %bb.ag ], [ %i.at, %bb.ak ], [ %i.at, %ATPrepChangePersistence.exit ], [ %i.at, %bb.ba ], [ %i.at, %bb.bd ], [ %i.at, %bb.be ], [ %i.at, %bb.bf ], [ %i.at, %bb.bg ], [ %i.at, %bb.bh ], [ %i.at, %bb.g ], [ %i.at, %bb.bi ], [ %i.at, %bb.bm ], [ %i.at, %bb.bk ], [ %i.at, %bb.bp ], [ %i.at, %bb.bq ], [ %i.at, %bb.br ], [ %i.at, %bb.bs ], [ %i.at, %bb.bt ], [ %i.at, %bb.m ], [ %i.at, %bb.o ], [ %i.at, %bb.q ], [ %i.at, %bb.s ], [ %i.at, %bb.u ], [ %i.at, %bb.ae ], [ %i.at, %bb.ah ], [ %i.at, %bb.bj ], [ %i.at, %bb.bl ], [ %i.at, %bb.bo ], [ %i.at, %bb.bn ]
  %.0 = phi i64 [ 2, %bb.h ], [ 2, %bb.i ], [ %i.ay, %bb.j ], [ 10, %bb.k ], [ 11, %bb.bu ], [ 10, %bb.l ], [ 11, %bb.n ], [ 0, %bb.p ], [ 0, %bb.r ], [ 3, %bb.v ], [ 0, %bb.w ], [ 11, %bb.x ], [ 11, %bb.y ], [ 11, %bb.z ], [ 11, %bb.aa ], [ 0, %bb.ab ], [ 9, %bb.ac ], [ 7, %bb.t ], [ 8, %bb.af ], [ 6, %bb.ad ], [ 1, %bb.ai ], [ 11, %bb.aj ], [ 0, %bb.ag ], [ 11, %bb.ak ], [ 11, %ATPrepChangePersistence.exit ], [ 0, %bb.ba ], [ 11, %bb.bd ], [ 11, %bb.be ], [ 11, %bb.bf ], [ 11, %bb.bg ], [ 11, %bb.bh ], [ 11, %bb.g ], [ 11, %bb.bi ], [ 11, %bb.bm ], [ 11, %bb.bk ], [ 11, %bb.bp ], [ 11, %bb.bq ], [ 11, %bb.br ], [ 11, %bb.bs ], [ 11, %bb.bt ], [ 10, %bb.m ], [ 11, %bb.o ], [ 0, %bb.q ], [ 0, %bb.s ], [ 7, %bb.u ], [ 6, %bb.ae ], [ 0, %bb.ah ], [ 11, %bb.bj ], [ 11, %bb.bl ], [ 11, %bb.bo ], [ 11, %bb.bn ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %.0 ; 2 uses
  %i.fp = load ptr, ptr %i.fo, align 8
  %i.fq = call ptr @lappend(ptr noundef %i.fp, ptr noundef %.0209) #15
  store ptr %i.fq, ptr %i.fo, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ATRewriteCatalogs(ptr noundef nonnull %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca [3 x %struct.ScanKeyData], align 16 ; 6 uses
  %4 = alloca [3 x %struct.ScanKeyData], align 16 ; 6 uses
  %5 = alloca [2 x %struct.ScanKeyData], align 16 ; 6 uses
  %6 = alloca %struct.ObjectAddress, align 4      ; 7 uses
  %7 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  %8 = alloca %struct.ObjectAddress, align 4      ; 7 uses
  %9 = alloca %struct.ObjectAddress, align 4      ; 6 uses
  %10 = alloca %struct.ScanKeyData, align 8       ; 6 uses
  %i.a = alloca i8, align 1                       ; 14 uses
end_hunk_1
