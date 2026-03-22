begin_hunk_0
  br label %140

140:                                              ; preds = %129, %131, %117
  %.060 = phi i64 [ -1, %117 ], [ %.0.i78, %131 ], [ %.0.i78, %129 ] ; [#uses=2 type=i64]
  %141 = load ptr, ptr %88, align 8, !tbaa !81    ; [#uses=1 type=ptr]
  %142 = load ptr, ptr %4, align 8, !tbaa !95     ; [#uses=1 type=ptr]
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 8 ; [#uses=1 type=ptr]
end_hunk_0
begin_hunk_1
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 8 ; [#uses=1 type=ptr]
  %146 = load ptr, ptr %145, align 8, !tbaa !14   ; [#uses=1 type=ptr]
  %147 = call i32 @getKeySlot(ptr noundef %146) #8 ; [#uses=1 type=i32]
  call void @updateKeysizesHist(ptr noundef %141, i32 noundef %147, i32 noundef 1, i64 noundef %.0.i, i64 noundef %.060) #8
  %148 = load ptr, ptr %88, align 8, !tbaa !81    ; [#uses=1 type=ptr]
  %149 = load ptr, ptr %4, align 8, !tbaa !95     ; [#uses=1 type=ptr]
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 8 ; [#uses=1 type=ptr]
  %151 = load ptr, ptr %150, align 8, !tbaa !56   ; [#uses=1 type=ptr]
  %152 = icmp sgt i64 %.060, 0                    ; [#uses=1 type=i1]
  %spec.select = select i1 %152, ptr %19, ptr null ; [#uses=1 type=ptr]
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %148, ptr noundef %151, ptr noundef %spec.select, i32 noundef 1) #8
  %153 = add nsw i64 %.061, %.062                 ; [#uses=1 type=i64]
end_hunk_1
begin_hunk_2
77:                                               ; preds = %75
  %78 = load i64, ptr %3, align 8, !tbaa !17      ; [#uses=1 type=i64]
  %.not95 = icmp eq i64 %78, -1                   ; [#uses=1 type=i1]
  br i1 %.not95, label %81, label %79

79:                                               ; preds = %77
  %80 = call ptr @addReplyDeferredLen(ptr noundef nonnull %0) #8 ; [#uses=1 type=ptr]
  br label %81

81:                                               ; preds = %79, %77
  %.082 = phi ptr [ %80, %79 ], [ null, %77 ]     ; [#uses=3 type=ptr]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %.lobit = ashr i64 %57, 63                      ; [#uses=2 type=i64]
  store ptr %63, ptr %5, align 8, !tbaa !65
  %82 = load i64, ptr %63, align 8                ; [#uses=1 type=i64]
  %83 = trunc i64 %82 to i8                       ; [#uses=1 type=i8]
  %84 = lshr i8 %83, 4                            ; [#uses=2 type=i8]
  %85 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; [#uses=2 type=ptr]
  store i8 %84, ptr %85, align 8, !tbaa !69
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 9 ; [#uses=1 type=ptr]
  store i8 %.0, ptr %86, align 1, !tbaa !70
  switch i8 %84, label %98 [
    i8 9, label %87
    i8 11, label %93
  ]

87:                                               ; preds = %81
  %.lobit109 = lshr i64 %57, 63                   ; [#uses=1 type=i64]
  %88 = trunc nuw nsw i64 %.lobit109 to i32       ; [#uses=1 type=i32]
  %89 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; [#uses=1 type=ptr]
  %90 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; [#uses=1 type=ptr]
  %91 = load ptr, ptr %90, align 8, !tbaa !14     ; [#uses=1 type=ptr]
  %92 = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %89, ptr noundef %91, i32 noundef %88, i64 noundef %.lobit) #8 ; [#uses=0 type=i32]
  br label %listTypeInitIterator.exit

93:                                               ; preds = %81
  %94 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; [#uses=1 type=ptr]
  %95 = load ptr, ptr %94, align 8, !tbaa !14     ; [#uses=1 type=ptr]
  %96 = call ptr @lpSeek(ptr noundef %95, i64 noundef %.lobit) #8 ; [#uses=1 type=ptr]
  %97 = getelementptr inbounds nuw i8, ptr %5, i64 16 ; [#uses=1 type=ptr]
  store ptr %96, ptr %97, align 8, !tbaa !71
  br label %listTypeInitIterator.exit

98:                                               ; preds = %81
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %87, %93
  %99 = load i64, ptr %63, align 8                ; [#uses=1 type=i64]
  %100 = trunc i64 %99 to i32                     ; [#uses=1 type=i32]
  %101 = lshr i32 %100, 4                         ; [#uses=1 type=i32]
  %102 = and i32 %101, 15                         ; [#uses=1 type=i32]
  switch i32 %102, label %111 [
    i32 9, label %103
    i32 11, label %107
  ]

103:                                              ; preds = %listTypeInitIterator.exit
  %104 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; [#uses=1 type=ptr]
  %105 = load ptr, ptr %104, align 8, !tbaa !14   ; [#uses=1 type=ptr]
  %106 = call i64 @quicklistCount(ptr noundef %105) #8 ; [#uses=1 type=i64]
  br label %listTypeLength.exit

107:                                              ; preds = %listTypeInitIterator.exit
  %108 = getelementptr inbounds nuw i8, ptr %63, i64 8 ; [#uses=1 type=ptr]
  %109 = load ptr, ptr %108, align 8, !tbaa !14   ; [#uses=1 type=ptr]
  %110 = call i64 @lpLength(ptr noundef %109) #8  ; [#uses=1 type=i64]
  br label %listTypeLength.exit

111:                                              ; preds = %listTypeInitIterator.exit
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %103, %107
  %.0.i = phi i64 [ %106, %103 ], [ %110, %107 ]  ; [#uses=2 type=i64]
  %112 = getelementptr inbounds nuw i8, ptr %12, i64 8 ; [#uses=1 type=ptr]
  %113 = load ptr, ptr %112, align 8, !tbaa !14   ; [#uses=5 type=ptr]
  %114 = getelementptr i8, ptr %113, i64 -1       ; [#uses=1 type=ptr]
  %.val.i = load i8, ptr %114, align 1, !tbaa !58 ; [#uses=2 type=i8]
  %115 = and i8 %.val.i, 7                        ; [#uses=1 type=i8]
  switch i8 %115, label %sdslen.exit [
    i8 0, label %116
    i8 1, label %119
    i8 2, label %123
    i8 3, label %127
    i8 4, label %131
  ]

116:                                              ; preds = %listTypeLength.exit
  %117 = lshr i8 %.val.i, 3                       ; [#uses=1 type=i8]
  %118 = zext nneg i8 %117 to i64                 ; [#uses=1 type=i64]
  br label %sdslen.exit

119:                                              ; preds = %listTypeLength.exit
  %120 = getelementptr inbounds i8, ptr %113, i64 -3 ; [#uses=1 type=ptr]
  %121 = load i8, ptr %120, align 1, !tbaa !58    ; [#uses=1 type=i8]
  %122 = zext i8 %121 to i64                      ; [#uses=1 type=i64]
  br label %sdslen.exit

123:                                              ; preds = %listTypeLength.exit
  %124 = getelementptr inbounds i8, ptr %113, i64 -5 ; [#uses=1 type=ptr]
  %125 = load i16, ptr %124, align 1, !tbaa !59   ; [#uses=1 type=i16]
  %126 = zext i16 %125 to i64                     ; [#uses=1 type=i64]
  br label %sdslen.exit

127:                                              ; preds = %listTypeLength.exit
  %128 = getelementptr inbounds i8, ptr %113, i64 -9 ; [#uses=1 type=ptr]
  %129 = load i32, ptr %128, align 1, !tbaa !9    ; [#uses=1 type=i32]
  %130 = zext i32 %129 to i64                     ; [#uses=1 type=i64]
  br label %sdslen.exit

131:                                              ; preds = %listTypeLength.exit
  %132 = getelementptr inbounds i8, ptr %113, i64 -17 ; [#uses=1 type=ptr]
  %133 = load i64, ptr %132, align 1, !tbaa !17   ; [#uses=1 type=i64]
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %listTypeLength.exit, %116, %119, %123, %127, %131
  %.0.i108 = phi i64 [ %133, %131 ], [ %118, %116 ], [ %122, %119 ], [ %126, %123 ], [ %130, %127 ], [ 0, %listTypeLength.exit ] ; [#uses=3 type=i64]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !9
  %134 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6) ; [#uses=1 type=i32]
  %.not96113 = icmp eq i32 %134, 0                ; [#uses=1 type=i1]
  br i1 %.not96113, label %.critedge, label %.lr.ph117

.lr.ph117:                                        ; preds = %sdslen.exit
  %.not99 = icmp eq ptr %.082, null               ; [#uses=1 type=i1]
  br i1 %.not99, label %.lr.ph117.split.us, label %.lr.ph117.split

.lr.ph117.split.us:                               ; preds = %.lr.ph117, %147
  %.076115.us = phi i64 [ %.177.us, %147 ], [ 0, %.lr.ph117 ] ; [#uses=2 type=i64]
  %.078114.us = phi i64 [ %148, %147 ], [ 0, %.lr.ph117 ] ; [#uses=4 type=i64]
  %135 = load i64, ptr %4, align 8, !tbaa !17     ; [#uses=2 type=i64]
  %136 = icmp eq i64 %135, 0                      ; [#uses=1 type=i1]
  %137 = icmp slt i64 %.078114.us, %135           ; [#uses=1 type=i1]
  %138 = select i1 %136, i1 true, i1 %137         ; [#uses=1 type=i1]
  br i1 %138, label %139, label %.critedge

139:                                              ; preds = %.lr.ph117.split.us
  %140 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8) ; [#uses=1 type=i32]
  %.not97.us = icmp eq i32 %140, 0                ; [#uses=1 type=i1]
  br i1 %.not97.us, label %147, label %141

141:                                              ; preds = %139
  %142 = add nsw i64 %.076115.us, 1               ; [#uses=2 type=i64]
  %143 = load i64, ptr %2, align 8, !tbaa !17     ; [#uses=1 type=i64]
  %.not98.us = icmp slt i64 %142, %143            ; [#uses=1 type=i1]
  br i1 %.not98.us, label %147, label %..critedge_crit_edge119.split.us

..critedge_crit_edge119.split.us:                 ; preds = %141
  %144 = xor i64 %.078114.us, -1                  ; [#uses=1 type=i64]
  %145 = add i64 %.0.i, %144                      ; [#uses=1 type=i64]
  %146 = select i1 %56, i64 %145, i64 %.078114.us ; [#uses=1 type=i64]
  br label %.critedge

147:                                              ; preds = %141, %139
  %.177.us = phi i64 [ %142, %141 ], [ %.076115.us, %139 ] ; [#uses=1 type=i64]
  %148 = add nuw nsw i64 %.078114.us, 1           ; [#uses=1 type=i64]
  %149 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6) ; [#uses=1 type=i32]
  %.not96.us = icmp eq i32 %149, 0                ; [#uses=1 type=i1]
  br i1 %.not96.us, label %.critedge, label %.lr.ph117.split.us, !llvm.loop !120

.lr.ph117.split:                                  ; preds = %.lr.ph117
  br i1 %56, label %.lr.ph117.split.split.us, label %.lr.ph117.split.split

.lr.ph117.split.split.us:                         ; preds = %.lr.ph117.split, %168
  %.073116.us135 = phi i64 [ %.1.us140, %168 ], [ 0, %.lr.ph117.split ] ; [#uses=4 type=i64]
  %.076115.us136 = phi i64 [ %.177.us139, %168 ], [ 0, %.lr.ph117.split ] ; [#uses=3 type=i64]
  %.078114.us137 = phi i64 [ %169, %168 ], [ 0, %.lr.ph117.split ] ; [#uses=3 type=i64]
  %150 = load i64, ptr %4, align 8, !tbaa !17     ; [#uses=2 type=i64]
  %151 = icmp eq i64 %150, 0                      ; [#uses=1 type=i1]
  %152 = icmp slt i64 %.078114.us137, %150        ; [#uses=1 type=i1]
  %153 = select i1 %151, i1 true, i1 %152         ; [#uses=1 type=i1]
  br i1 %153, label %154, label %.critedge

154:                                              ; preds = %.lr.ph117.split.split.us
  %155 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8) ; [#uses=1 type=i32]
  %.not97.us138 = icmp eq i32 %155, 0             ; [#uses=1 type=i1]
  br i1 %.not97.us138, label %168, label %156

156:                                              ; preds = %154
  %157 = add nsw i64 %.076115.us136, 1            ; [#uses=4 type=i64]
  %158 = xor i64 %.078114.us137, -1               ; [#uses=1 type=i64]
  %159 = add i64 %.0.i, %158                      ; [#uses=2 type=i64]
  %160 = load i64, ptr %2, align 8, !tbaa !17     ; [#uses=1 type=i64]
  %.not98.us142 = icmp slt i64 %157, %160         ; [#uses=1 type=i1]
  br i1 %.not98.us142, label %168, label %161

161:                                              ; preds = %156
  %162 = add nsw i64 %.073116.us135, 1            ; [#uses=3 type=i64]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %159) #8
  %163 = load i64, ptr %3, align 8, !tbaa !17     ; [#uses=2 type=i64]
  %.not100.us = icmp eq i64 %163, 0               ; [#uses=1 type=i1]
  br i1 %.not100.us, label %168, label %164

164:                                              ; preds = %161
  %165 = load i64, ptr %2, align 8, !tbaa !17     ; [#uses=1 type=i64]
  %166 = add i64 %.076115.us136, 2                ; [#uses=1 type=i64]
  %167 = sub i64 %166, %165                       ; [#uses=1 type=i64]
  %.not101.us = icmp slt i64 %167, %163           ; [#uses=1 type=i1]
  br i1 %.not101.us, label %168, label %.critedge

168:                                              ; preds = %156, %164, %161, %154
  %.177.us139 = phi i64 [ %157, %164 ], [ %157, %161 ], [ %157, %156 ], [ %.076115.us136, %154 ] ; [#uses=1 type=i64]
  %.1.us140 = phi i64 [ %162, %164 ], [ %162, %161 ], [ %.073116.us135, %156 ], [ %.073116.us135, %154 ] ; [#uses=2 type=i64]
  %169 = add nuw nsw i64 %.078114.us137, 1        ; [#uses=1 type=i64]
  %170 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6) ; [#uses=1 type=i32]
  %.not96.us141 = icmp eq i32 %170, 0             ; [#uses=1 type=i1]
  br i1 %.not96.us141, label %.critedge, label %.lr.ph117.split.split.us, !llvm.loop !120

.lr.ph117.split.split:                            ; preds = %.lr.ph117.split, %187
  %.073116 = phi i64 [ %.1, %187 ], [ 0, %.lr.ph117.split ] ; [#uses=4 type=i64]
  %.076115 = phi i64 [ %.177, %187 ], [ 0, %.lr.ph117.split ] ; [#uses=3 type=i64]
  %.078114 = phi i64 [ %188, %187 ], [ 0, %.lr.ph117.split ] ; [#uses=4 type=i64]
  %171 = load i64, ptr %4, align 8, !tbaa !17     ; [#uses=2 type=i64]
  %172 = icmp eq i64 %171, 0                      ; [#uses=1 type=i1]
  %173 = icmp slt i64 %.078114, %171              ; [#uses=1 type=i1]
  %174 = select i1 %172, i1 true, i1 %173         ; [#uses=1 type=i1]
  br i1 %174, label %175, label %.critedge

175:                                              ; preds = %.lr.ph117.split.split
  %176 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8) ; [#uses=1 type=i32]
  %.not97 = icmp eq i32 %176, 0                   ; [#uses=1 type=i1]
  br i1 %.not97, label %187, label %177

177:                                              ; preds = %175
  %178 = add nsw i64 %.076115, 1                  ; [#uses=4 type=i64]
  %179 = load i64, ptr %2, align 8, !tbaa !17     ; [#uses=1 type=i64]
  %.not98 = icmp slt i64 %178, %179               ; [#uses=1 type=i1]
  br i1 %.not98, label %187, label %180

180:                                              ; preds = %177
  %181 = add nsw i64 %.073116, 1                  ; [#uses=3 type=i64]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.078114) #8
  %182 = load i64, ptr %3, align 8, !tbaa !17     ; [#uses=2 type=i64]
  %.not100 = icmp eq i64 %182, 0                  ; [#uses=1 type=i1]
  br i1 %.not100, label %187, label %183

183:                                              ; preds = %180
  %184 = load i64, ptr %2, align 8, !tbaa !17     ; [#uses=1 type=i64]
  %185 = add i64 %.076115, 2                      ; [#uses=1 type=i64]
  %186 = sub i64 %185, %184                       ; [#uses=1 type=i64]
  %.not101 = icmp slt i64 %186, %182              ; [#uses=1 type=i1]
  br i1 %.not101, label %187, label %.critedge

187:                                              ; preds = %177, %180, %183, %175
  %.177 = phi i64 [ %178, %183 ], [ %178, %180 ], [ %178, %177 ], [ %.076115, %175 ] ; [#uses=1 type=i64]
  %.1 = phi i64 [ %181, %183 ], [ %181, %180 ], [ %.073116, %177 ], [ %.073116, %175 ] ; [#uses=2 type=i64]
  %188 = add nuw nsw i64 %.078114, 1              ; [#uses=1 type=i64]
  %189 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6) ; [#uses=1 type=i32]
  %.not96 = icmp eq i32 %189, 0                   ; [#uses=1 type=i1]
  br i1 %.not96, label %.critedge, label %.lr.ph117.split.split, !llvm.loop !120

.critedge:                                        ; preds = %.lr.ph117.split.split, %183, %187, %.lr.ph117.split.split.us, %164, %168, %.lr.ph117.split.us, %147, %..critedge_crit_edge119.split.us, %sdslen.exit
  %.175 = phi i64 [ -1, %.lr.ph117.split.split.us ], [ %146, %..critedge_crit_edge119.split.us ], [ -1, %.lr.ph117.split.us ], [ -1, %sdslen.exit ], [ -1, %147 ], [ -1, %168 ], [ %159, %164 ], [ -1, %.lr.ph117.split.split ], [ -1, %187 ], [ %.078114, %183 ] ; [#uses=2 type=i64]
  %.2 = phi i64 [ %.073116.us135, %.lr.ph117.split.split.us ], [ 0, %..critedge_crit_edge119.split.us ], [ 0, %.lr.ph117.split.us ], [ 0, %sdslen.exit ], [ 0, %147 ], [ %.1.us140, %168 ], [ %162, %164 ], [ %.073116, %.lr.ph117.split.split ], [ %.1, %187 ], [ %181, %183 ] ; [#uses=1 type=i64]
  %190 = load i8, ptr %85, align 8, !tbaa !69     ; [#uses=1 type=i8]
  %191 = icmp eq i8 %190, 9                       ; [#uses=1 type=i1]
  br i1 %191, label %192, label %listTypeResetIterator.exit

192:                                              ; preds = %.critedge
  %193 = getelementptr inbounds nuw i8, ptr %5, i64 24 ; [#uses=1 type=ptr]
  call void @quicklistResetIterator(ptr noundef nonnull %193) #8
  br label %listTypeResetIterator.exit

listTypeResetIterator.exit:                       ; preds = %.critedge, %192
  %.not102 = icmp eq ptr %.082, null              ; [#uses=1 type=i1]
  br i1 %.not102, label %195, label %194

194:                                              ; preds = %listTypeResetIterator.exit
  call void @setDeferredArrayLen(ptr noundef nonnull %0, ptr noundef nonnull %.082, i64 noundef %.2) #8
  br label %203

195:                                              ; preds = %listTypeResetIterator.exit
  %.not103 = icmp eq i64 %.175, -1                ; [#uses=1 type=i1]
  br i1 %.not103, label %197, label %196

196:                                              ; preds = %195
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.175) #8
  br label %203

197:                                              ; preds = %195
  %198 = getelementptr inbounds nuw i8, ptr %0, i64 28 ; [#uses=1 type=ptr]
  %199 = load i32, ptr %198, align 4, !tbaa !107  ; [#uses=1 type=i32]
  %200 = sext i32 %199 to i64                     ; [#uses=1 type=i64]
  %201 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %200 ; [#uses=1 type=ptr]
  %202 = load ptr, ptr %201, align 8, !tbaa !56   ; [#uses=1 type=ptr]
  call void @addReply(ptr noundef nonnull %0, ptr noundef %202) #8
  br label %203

203:                                              ; preds = %196, %197, %194
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.critedge106

.critedge106:                                     ; preds = %44, %37, %26, %33, %48, %203, %69, %67, %75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
end_hunk_2
