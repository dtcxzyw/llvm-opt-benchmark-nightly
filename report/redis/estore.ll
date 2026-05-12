inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@estoreCreate:bb.a
  store ptr %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %1, ptr %i.d, align 8, !tbaa !22
  %i.e = shl nuw nsw i32 1, %1                    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %i.e, ptr %i.f, align 4, !tbaa !23
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @fwTreeCreate(i32 noundef %1) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.h, ptr %i.i, align 8, !tbaa !24
  %2 = zext nneg i32 %i.e to i64
  %3 = shl nuw nsw i64 %2, 3                      ; 2 uses
  %i.j = tail call noalias ptr @zcalloc(i64 noundef %3) #8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.j, i8 0, i64 %3, i1 false), !tbaa !25
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %4, align 8, !tbaa !26
  ret ptr %i.b
}

end_hunk_0
