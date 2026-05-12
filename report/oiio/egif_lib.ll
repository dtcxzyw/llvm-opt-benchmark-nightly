inline.NumInlined: 44
inline.NumDeleted: 3
begin_hunk_0_@EGifPutExtension:bb.a

bb.e:                                             ; preds = %bb.d
  %i.l = call i32 %i.k(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #14, !inline_history !49 ; 0 uses
  br label %InternalWrite.exit

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@EGifPutExtension:bb.a
  br label %InternalWrite.exit

InternalWrite.exit:                               ; preds = %bb.i, %bb.h, %bb.f, %bb.e
  %4 = load i32, ptr %i.a, align 4, !tbaa !3      ; 2 uses
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !14   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !24   ; 2 uses
end_hunk_1
