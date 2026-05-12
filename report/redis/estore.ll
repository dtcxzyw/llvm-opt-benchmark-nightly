inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@estoreCreate:bb.a
  store ptr %0, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %1, ptr %i.d, align 8, !tbaa !22
  %i.e = shl nuw nsw i32 1, %1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  store i32 %i.e, ptr %i.f, align 4, !tbaa !23
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @fwTreeCreate(i32 noundef %1) #6
  %.pre = load i32, ptr %i.f, align 4, !tbaa !23
  %2 = sext i32 %.pre to i64
  %3 = shl nsw i64 %2, 3
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %4 = phi i64 [ %3, %bb.d ], [ 8, %bb.c ]
  %i.h = phi ptr [ %i.g, %bb.d ], [ null, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.h, ptr %i.i, align 8, !tbaa !24
  %i.j = tail call noalias ptr @zcalloc(i64 noundef %4) #8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !13
  %5 = load i32, ptr %i.f, align 4, !tbaa !23     ; 2 uses
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %7 = zext nneg i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %8, i1 false), !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.e
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 0, ptr %9, align 8, !tbaa !26
  ret ptr %i.b
}

end_hunk_0
