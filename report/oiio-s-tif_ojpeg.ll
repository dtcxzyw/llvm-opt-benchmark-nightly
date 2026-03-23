begin_hunk_0
  %26 = load i32, ptr %25, align 4, !tbaa !81
  %27 = getelementptr inbounds nuw i8, ptr %0, i64 104
  %28 = load i32, ptr %27, align 8, !tbaa !82     ; 3 uses
  %29 = add i32 %28, %19
  %.fr73.i = freeze i32 %29
  %30 = add i32 %.fr73.i, -1                      ; 2 uses
  %31 = urem i32 %30, %28
  %32 = sub nuw i32 %30, %31
  br label %37

33:                                               ; preds = %13
end_hunk_0
begin_hunk_1
  %281 = load i32, ptr %280, align 8, !tbaa !84
  %282 = shl nuw nsw i32 %273, 3                  ; 2 uses
  %283 = add nsw i32 %282, -1
  %284 = add i32 %283, %281
  %.fr.i = freeze i32 %284                        ; 2 uses
  %285 = urem i32 %.fr.i, %282
  %286 = sub nuw i32 %.fr.i, %285                 ; 3 uses
  %287 = getelementptr inbounds nuw i8, ptr %232, i64 1500 ; 2 uses
  store i32 %286, ptr %287, align 4, !tbaa !125
  %288 = zext i8 %277 to i32
end_hunk_1
