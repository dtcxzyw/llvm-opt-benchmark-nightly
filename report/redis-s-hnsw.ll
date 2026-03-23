begin_hunk_0
  %151 = add i32 %.1124.lcssa, 1
  %152 = zext i32 %.1124.lcssa to i64
  %153 = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %152
  %154 = load i64, ptr %153, align 8, !tbaa !13   ; 2 uses
  %155 = trunc i64 %154 to i32                    ; 2 uses
  %156 = lshr i64 %154, 32
  %157 = trunc nuw i64 %156 to i32
  %158 = getelementptr inbounds nuw i8, ptr %64, i64 20
  store i32 %155, ptr %158, align 4, !tbaa !135
end_hunk_0
