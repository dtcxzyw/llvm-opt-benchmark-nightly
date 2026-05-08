inline.NumInlined: 362
inline.NumDeleted: 35
begin_hunk_0_@FT_Set_Char_Size:bb.a

; Function Attrs: nounwind uwtable
define i32 @FT_Set_Pixel_Sizes(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.FT_Size_RequestRec_, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 @llvm.umax.i32(i32 %2, i32 1) ; 2 uses
  br label %bb.a

8:                                                ; preds = %3
  %9 = icmp eq i32 %2, 0
  %spec.select = select i1 %9, i32 %1, i32 %2
  br label %bb.a

bb.a:                                             ; preds = %8, %6
  %.013 = phi i32 [ %7, %6 ], [ %1, %8 ]
  %.0 = phi i32 [ %7, %6 ], [ %spec.select, %8 ]
  %spec.store.select1 = tail call i32 @llvm.umin.i32(i32 %.013, i32 65535)
  %spec.store.select3 = tail call i32 @llvm.umin.i32(i32 %.0, i32 65535)
  store i32 0, ptr %4, align 8, !tbaa !404
  %i.a = shl nuw nsw i32 %spec.store.select1, 6
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !407
  %i.d = shl nuw nsw i32 %spec.store.select3, 6
  %i.e = zext nneg i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !409
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 0, ptr %i.g, align 8, !tbaa !406
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 0, ptr %i.h, align 4, !tbaa !408
  %i.i = call i32 @FT_Request_Size(ptr noundef %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  ret i32 %i.i
}

end_hunk_0
