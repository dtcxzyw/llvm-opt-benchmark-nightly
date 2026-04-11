inline.NumInlined: 275
inline.NumDeleted: 91
begin_hunk_0_@je_ecache_evict:bb.a
  br label %malloc_mutex_lock.exit

malloc_mutex_lock.exit:                           ; preds = %bb.c, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 9744
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 9768 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 19400
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 19432
  %i.r = getelementptr i8, ptr %1, i64 58384      ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 19424 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.k, %malloc_mutex_lock.exit
  %.val40 = load ptr, ptr %i.n, align 8, !tbaa !67 ; 2 uses
  %i.t = icmp eq ptr %.val40, null
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.val39 = load ptr, ptr %i.p, align 8, !tbaa !67 ; 2 uses
  %i.u = icmp eq ptr %.val39, null
  br i1 %i.u, label %.thread46, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.033 = phi ptr [ %.val39, %bb.f ], [ %.val40, %bb.e ] ; 8 uses
  %.032 = phi ptr [ %i.o, %bb.f ], [ %i.m, %bb.e ]
  %i.v = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.m) #9
  %i.w = tail call i64 @je_eset_npages_get(ptr noundef nonnull %i.o) #9
  %i.x = add i64 %i.w, %i.v
  %.not = icmp ugt i64 %i.x, %4
  br i1 %.not, label %bb.h, label %.thread46

bb.h:                                             ; preds = %bb.g
  tail call void @je_eset_remove(ptr noundef nonnull %.032, ptr noundef nonnull %.033) #9
  %i.y = load i8, ptr %i.q, align 8, !tbaa !41, !range !42, !noundef !43
  %i.z = trunc nuw i8 %i.y to i1
end_hunk_0
begin_hunk_1_@je_ecache_evict:bb.a
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  tail call void @je_eset_insert(ptr noundef nonnull %i.m, ptr noundef %i.ac) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

end_hunk_1
