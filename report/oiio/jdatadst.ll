begin_hunk_0_@jpeg_mem_dest:bb.a
  br i1 %i.ab, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ac = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #9 ; 4 uses
  store ptr %i.ac, ptr %1, align 8, !tbaa !56
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !55
  %i.ad = icmp eq ptr %i.ac, null
end_hunk_0
begin_hunk_1_@jpeg_mem_dest:bb.a
  %i.ah = load ptr, ptr %0, align 8, !tbaa !33
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !38
  tail call void %i.ai(ptr noundef nonnull %0) #8
  %.pre39.pre = load ptr, ptr %1, align 8, !tbaa !56
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre39 = phi ptr [ %.pre39.pre, %bb.j ], [ %i.ac, %bb.i ]
  store i64 4096, ptr %2, align 8, !tbaa !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
end_hunk_1
