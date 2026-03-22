begin_hunk_0
  %151 = add i32 %.1124.lcssa, 1                  ; [#uses=1 type=i32]
  %152 = zext i32 %.1124.lcssa to i64             ; [#uses=1 type=i64]
  %153 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %152 ; [#uses=1 type=ptr]
  %154 = load i64, ptr %153, align 8, !tbaa !13   ; [#uses=1 type=i64]
  %.fr = freeze i64 %154                          ; [#uses=2 type=i64]
  %155 = trunc i64 %.fr to i32                    ; [#uses=2 type=i32]
  %156 = lshr i64 %.fr, 32                        ; [#uses=1 type=i64]
  %157 = trunc nuw i64 %156 to i32                ; [#uses=1 type=i32]
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 20 ; [#uses=1 type=ptr]
  store i32 %155, ptr %158, align 4, !tbaa !135
end_hunk_0
