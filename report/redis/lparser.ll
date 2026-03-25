begin_hunk_0
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %121, ptr %122, align 8, !tbaa !111
  %123 = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %124 = load i16, ptr %123, align 8, !tbaa !112  ; 2 uses
  %125 = icmp sgt i16 %124, -2
  br i1 %125, label %126, label %136

126:                                              ; preds = %118
  %127 = sext i16 %124 to i64
  %128 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %129 = load ptr, ptr %128, align 8, !tbaa !71
  %130 = getelementptr inbounds nuw i8, ptr %6, i64 92
  %131 = load i32, ptr %130, align 4, !tbaa !113
  %132 = sext i32 %131 to i64
  %133 = shl nsw i64 %132, 4
  %134 = shl nsw i64 %127, 4
  %135 = tail call ptr @luaM_realloc_(ptr noundef %3, ptr noundef %129, i64 noundef %133, i64 noundef %134) #6
  br label %138

136:                                              ; preds = %118
  %137 = tail call ptr @luaM_toobig(ptr noundef %3) #6
  br label %138

138:                                              ; preds = %136, %126
  %139 = phi ptr [ %135, %126 ], [ %137, %136 ]
  %140 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %139, ptr %140, align 8, !tbaa !71
  %141 = load i16, ptr %123, align 8, !tbaa !112
  %142 = sext i16 %141 to i32
  %143 = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 %142, ptr %143, align 4, !tbaa !113
  %144 = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %145 = load i8, ptr %144, align 8, !tbaa !114
  %146 = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %147 = load ptr, ptr %146, align 8, !tbaa !115
  %148 = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %149 = load i32, ptr %148, align 8, !tbaa !116
  %150 = sext i32 %149 to i64
  %151 = shl nsw i64 %150, 3
  %152 = zext i8 %145 to i64
  %153 = shl nuw nsw i64 %152, 3
  %154 = tail call ptr @luaM_realloc_(ptr noundef %3, ptr noundef %147, i64 noundef %151, i64 noundef %153) #6
  store ptr %154, ptr %146, align 8, !tbaa !115
  %155 = load i8, ptr %144, align 8, !tbaa !114
  %156 = zext i8 %155 to i32
  store i32 %156, ptr %148, align 8, !tbaa !116
  %157 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %158 = load ptr, ptr %157, align 8, !tbaa !39
  store ptr %158, ptr %4, align 8, !tbaa !38
  %159 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %160 = load i32, ptr %159, align 8, !tbaa !56
  %.off.i = add i32 %160, -285
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %161, label %anchor_token.exit

161:                                              ; preds = %138
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %163 = load ptr, ptr %162, align 8, !tbaa !28   ; 2 uses
  %164 = getelementptr inbounds nuw i8, ptr %163, i64 24
  %165 = getelementptr inbounds nuw i8, ptr %163, i64 16
  %166 = load i64, ptr %165, align 8, !tbaa !28
  %167 = tail call ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull %164, i64 noundef %166) #6
  br label %anchor_token.exit

anchor_token.exit:                                ; preds = %138, %161
  %168 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %169 = load ptr, ptr %168, align 8, !tbaa !17
  %170 = getelementptr inbounds i8, ptr %169, i64 -32
  store ptr %170, ptr %168, align 8, !tbaa !17
  ret void
}

end_hunk_0
