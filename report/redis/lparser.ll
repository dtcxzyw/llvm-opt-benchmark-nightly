begin_hunk_0
  %122 = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i32 %121, ptr %122, align 8, !tbaa !111
  %123 = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  %124 = load i16, ptr %123, align 8, !tbaa !112
  %125 = sext i16 %124 to i64                     ; 2 uses
  %126 = add nsw i64 %125, 1
  %127 = icmp ult i64 %126, 1152921504606846976
  br i1 %127, label %128, label %137

128:                                              ; preds = %118
  %129 = getelementptr inbounds nuw i8, ptr %6, i64 48
  %130 = load ptr, ptr %129, align 8, !tbaa !71
  %131 = getelementptr inbounds nuw i8, ptr %6, i64 92
  %132 = load i32, ptr %131, align 4, !tbaa !113
  %133 = sext i32 %132 to i64
  %134 = shl nsw i64 %133, 4
  %135 = shl nsw i64 %125, 4
  %136 = tail call ptr @luaM_realloc_(ptr noundef %3, ptr noundef %130, i64 noundef %134, i64 noundef %135) #6
  br label %139

137:                                              ; preds = %118
  %138 = tail call ptr @luaM_toobig(ptr noundef %3) #6
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi ptr [ %136, %128 ], [ %138, %137 ]
  %141 = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %140, ptr %141, align 8, !tbaa !71
  %142 = load i16, ptr %123, align 8, !tbaa !112
  %143 = sext i16 %142 to i32
  %144 = getelementptr inbounds nuw i8, ptr %6, i64 92
  store i32 %143, ptr %144, align 4, !tbaa !113
  %145 = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  %146 = load i8, ptr %145, align 8, !tbaa !114
  %147 = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  %148 = load ptr, ptr %147, align 8, !tbaa !115
  %149 = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %150 = load i32, ptr %149, align 8, !tbaa !116
  %151 = sext i32 %150 to i64
  %152 = shl nsw i64 %151, 3
  %153 = zext i8 %146 to i64
  %154 = shl nuw nsw i64 %153, 3
  %155 = tail call ptr @luaM_realloc_(ptr noundef %3, ptr noundef %148, i64 noundef %152, i64 noundef %154) #6
  store ptr %155, ptr %147, align 8, !tbaa !115
  %156 = load i8, ptr %145, align 8, !tbaa !114
  %157 = zext i8 %156 to i32
  store i32 %157, ptr %149, align 8, !tbaa !116
  %158 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %159 = load ptr, ptr %158, align 8, !tbaa !39
  store ptr %159, ptr %4, align 8, !tbaa !38
  %160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %161 = load i32, ptr %160, align 8, !tbaa !56
  %.off.i = add i32 %161, -285
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %162, label %anchor_token.exit

162:                                              ; preds = %139
  %163 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %164 = load ptr, ptr %163, align 8, !tbaa !28   ; 2 uses
  %165 = getelementptr inbounds nuw i8, ptr %164, i64 24
  %166 = getelementptr inbounds nuw i8, ptr %164, i64 16
  %167 = load i64, ptr %166, align 8, !tbaa !28
  %168 = tail call ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull %165, i64 noundef %167) #6
  br label %anchor_token.exit

anchor_token.exit:                                ; preds = %139, %162
  %169 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %170 = load ptr, ptr %169, align 8, !tbaa !17
  %171 = getelementptr inbounds i8, ptr %170, i64 -32
  store ptr %171, ptr %169, align 8, !tbaa !17
  ret void
}

end_hunk_0
