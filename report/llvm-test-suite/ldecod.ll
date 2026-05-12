inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@AllocPartition:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.f = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #22 ; 3 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !95
  %i.g = icmp eq ptr %i.f, null
end_hunk_0
begin_hunk_1_@AllocPartition:bb.a
bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(55) @errortext, ptr noundef nonnull align 1 dereferenceable(55) @.str.69, i64 55, i1 false)
  tail call void @error(ptr noundef nonnull @errortext, i32 noundef 100) #20
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !95
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %1 = phi ptr [ %.pre, %bb.d ], [ %i.f, %.lr.ph ]
  %i.h = tail call noalias dereferenceable_or_null(8000000) ptr @calloc(i64 noundef 8000000, i64 noundef 1) #22 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !98
  %i.j = icmp eq ptr %i.h, null
  br i1 %i.j, label %bb.f, label %bb.g
end_hunk_1
