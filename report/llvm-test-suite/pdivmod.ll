begin_hunk_0_@pdivmod:bb.a

bb.ac:                                            ; preds = %bb.ab
  %.ptr = getelementptr inbounds nuw i8, ptr %i.df, i64 %.4.add ; 2 uses
  %4 = xor i32 %i.es, 65535
  %5 = load i16, ptr %.ptr, align 2, !tbaa !13
  %6 = zext i16 %5 to i32
  %i.fc = add nuw nsw i32 %i.ez, %4
  %i.fd = add nuw nsw i32 %i.fc, %6               ; 2 uses
  %i.fe = trunc i32 %i.fd to i16
  store i16 %i.fe, ptr %.ptr, align 2, !tbaa !13
  %.add = add nsw i64 %.4.add, %.neg              ; 2 uses
end_hunk_0
