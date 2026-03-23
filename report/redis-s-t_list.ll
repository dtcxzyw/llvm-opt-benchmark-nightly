begin_hunk_0
  br label %140

140:                                              ; preds = %129, %131, %117
  %.060 = phi i64 [ -1, %117 ], [ %.0.i78, %131 ], [ %.0.i78, %129 ]
  %.060.fr = freeze i64 %.060                     ; 2 uses
  %141 = load ptr, ptr %88, align 8, !tbaa !81
  %142 = load ptr, ptr %4, align 8, !tbaa !95
  %143 = getelementptr inbounds nuw i8, ptr %142, i64 8
end_hunk_0
begin_hunk_1
  %145 = getelementptr inbounds nuw i8, ptr %144, i64 8
  %146 = load ptr, ptr %145, align 8, !tbaa !14
  %147 = call i32 @getKeySlot(ptr noundef %146) #8
  call void @updateKeysizesHist(ptr noundef %141, i32 noundef %147, i32 noundef 1, i64 noundef %.0.i, i64 noundef %.060.fr) #8
  %148 = load ptr, ptr %88, align 8, !tbaa !81
  %149 = load ptr, ptr %4, align 8, !tbaa !95
  %150 = getelementptr inbounds nuw i8, ptr %149, i64 8
  %151 = load ptr, ptr %150, align 8, !tbaa !56
  %152 = icmp sgt i64 %.060.fr, 0
  %spec.select = select i1 %152, ptr %19, ptr null
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %148, ptr noundef %151, ptr noundef %spec.select, i32 noundef 1) #8
  %153 = add nsw i64 %.061, %.062
end_hunk_1
begin_hunk_2
77:                                               ; preds = %75
  %78 = load i64, ptr %3, align 8, !tbaa !17
  %.not95 = icmp eq i64 %78, -1
  br i1 %.not95, label %82, label %79

79:                                               ; preds = %77
  %80 = call ptr @addReplyDeferredLen(ptr noundef nonnull %0) #8
  %81 = freeze ptr %80
  br label %82

82:                                               ; preds = %79, %77
  %.082 = phi ptr [ %81, %79 ], [ null, %77 ]     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %.lobit = ashr i64 %57, 63                      ; 2 uses
  store ptr %63, ptr %5, align 8, !tbaa !65
  %83 = load i64, ptr %63, align 8
  %84 = trunc i64 %83 to i8
  %85 = lshr i8 %84, 4                            ; 2 uses
  %86 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 %85, ptr %86, align 8, !tbaa !69
  %87 = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %.0, ptr %87, align 1, !tbaa !70
  switch i8 %85, label %99 [
    i8 9, label %88
    i8 11, label %94
  ]

88:                                               ; preds = %82
  %.lobit109 = lshr i64 %57, 63
  %89 = trunc nuw nsw i64 %.lobit109 to i32
  %90 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %91 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %92 = load ptr, ptr %91, align 8, !tbaa !14
  %93 = call i32 @quicklistInitIteratorAtIdx(ptr noundef nonnull %90, ptr noundef %92, i32 noundef %89, i64 noundef %.lobit) #8
  br label %listTypeInitIterator.exit

94:                                               ; preds = %82
  %95 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %96 = load ptr, ptr %95, align 8, !tbaa !14
  %97 = call ptr @lpSeek(ptr noundef %96, i64 noundef %.lobit) #8
  %98 = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %97, ptr %98, align 8, !tbaa !71
  br label %listTypeInitIterator.exit

99:                                               ; preds = %82
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeInitIterator.exit:                        ; preds = %88, %94
  %100 = load i64, ptr %63, align 8
  %101 = trunc i64 %100 to i32
  %102 = lshr i32 %101, 4
  %103 = and i32 %102, 15
  switch i32 %103, label %112 [
    i32 9, label %104
    i32 11, label %108
  ]

104:                                              ; preds = %listTypeInitIterator.exit
  %105 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %106 = load ptr, ptr %105, align 8, !tbaa !14
  %107 = call i64 @quicklistCount(ptr noundef %106) #8
  br label %listTypeLength.exit

108:                                              ; preds = %listTypeInitIterator.exit
  %109 = getelementptr inbounds nuw i8, ptr %63, i64 8
  %110 = load ptr, ptr %109, align 8, !tbaa !14
  %111 = call i64 @lpLength(ptr noundef %110) #8
  br label %listTypeLength.exit

112:                                              ; preds = %listTypeInitIterator.exit
  call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str, i32 noundef 211, ptr noundef nonnull @.str.1) #8
  call void @abort() #9
  unreachable

listTypeLength.exit:                              ; preds = %104, %108
  %.0.i = phi i64 [ %107, %104 ], [ %111, %108 ]  ; 2 uses
  %113 = getelementptr inbounds nuw i8, ptr %12, i64 8
  %114 = load ptr, ptr %113, align 8, !tbaa !14   ; 5 uses
  %115 = getelementptr i8, ptr %114, i64 -1
  %.val.i = load i8, ptr %115, align 1, !tbaa !58 ; 2 uses
  %116 = and i8 %.val.i, 7
  switch i8 %116, label %sdslen.exit [
    i8 0, label %117
    i8 1, label %120
    i8 2, label %124
    i8 3, label %128
    i8 4, label %132
  ]

117:                                              ; preds = %listTypeLength.exit
  %118 = lshr i8 %.val.i, 3
  %119 = zext nneg i8 %118 to i64
  br label %sdslen.exit

120:                                              ; preds = %listTypeLength.exit
  %121 = getelementptr inbounds i8, ptr %114, i64 -3
  %122 = load i8, ptr %121, align 1, !tbaa !58
  %123 = zext i8 %122 to i64
  br label %sdslen.exit

124:                                              ; preds = %listTypeLength.exit
  %125 = getelementptr inbounds i8, ptr %114, i64 -5
  %126 = load i16, ptr %125, align 1, !tbaa !59
  %127 = zext i16 %126 to i64
  br label %sdslen.exit

128:                                              ; preds = %listTypeLength.exit
  %129 = getelementptr inbounds i8, ptr %114, i64 -9
  %130 = load i32, ptr %129, align 1, !tbaa !9
  %131 = zext i32 %130 to i64
  br label %sdslen.exit

132:                                              ; preds = %listTypeLength.exit
  %133 = getelementptr inbounds i8, ptr %114, i64 -17
  %134 = load i64, ptr %133, align 1, !tbaa !17
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %listTypeLength.exit, %117, %120, %124, %128, %132
  %.0.i108 = phi i64 [ %134, %132 ], [ %119, %117 ], [ %123, %120 ], [ %127, %124 ], [ %131, %128 ], [ 0, %listTypeLength.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  store i64 0, ptr %7, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  store i32 0, ptr %8, align 4, !tbaa !9
  %135 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not96113 = icmp eq i32 %135, 0
  br i1 %.not96113, label %.critedge, label %.lr.ph117

.lr.ph117:                                        ; preds = %sdslen.exit
  %.not99 = icmp eq ptr %.082, null
  br i1 %.not99, label %.lr.ph117.split.us, label %.lr.ph117.split

.lr.ph117.split.us:                               ; preds = %.lr.ph117, %148
  %.076115.us = phi i64 [ %.177.us, %148 ], [ 0, %.lr.ph117 ] ; 2 uses
  %.078114.us = phi i64 [ %149, %148 ], [ 0, %.lr.ph117 ] ; 4 uses
  %136 = load i64, ptr %4, align 8, !tbaa !17     ; 2 uses
  %137 = icmp eq i64 %136, 0
  %138 = icmp slt i64 %.078114.us, %136
  %139 = select i1 %137, i1 true, i1 %138
  br i1 %139, label %140, label %.critedge

140:                                              ; preds = %.lr.ph117.split.us
  %141 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %.not97.us = icmp eq i32 %141, 0
  br i1 %.not97.us, label %148, label %142

142:                                              ; preds = %140
  %143 = add nsw i64 %.076115.us, 1               ; 2 uses
  %144 = load i64, ptr %2, align 8, !tbaa !17
  %.not98.us = icmp slt i64 %143, %144
  br i1 %.not98.us, label %148, label %..critedge_crit_edge119.split.us

..critedge_crit_edge119.split.us:                 ; preds = %142
  %145 = xor i64 %.078114.us, -1
  %146 = add i64 %.0.i, %145
  %147 = select i1 %56, i64 %146, i64 %.078114.us
  br label %.critedge

148:                                              ; preds = %142, %140
  %.177.us = phi i64 [ %143, %142 ], [ %.076115.us, %140 ]
  %149 = add nuw nsw i64 %.078114.us, 1
  %150 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not96.us = icmp eq i32 %150, 0
  br i1 %.not96.us, label %.critedge, label %.lr.ph117.split.us, !llvm.loop !120

.lr.ph117.split:                                  ; preds = %.lr.ph117
  br i1 %56, label %.lr.ph117.split.split.us, label %.lr.ph117.split.split

.lr.ph117.split.split.us:                         ; preds = %.lr.ph117.split, %169
  %.073116.us135 = phi i64 [ %.1.us140, %169 ], [ 0, %.lr.ph117.split ] ; 4 uses
  %.076115.us136 = phi i64 [ %.177.us139, %169 ], [ 0, %.lr.ph117.split ] ; 3 uses
  %.078114.us137 = phi i64 [ %170, %169 ], [ 0, %.lr.ph117.split ] ; 3 uses
  %151 = load i64, ptr %4, align 8, !tbaa !17     ; 2 uses
  %152 = icmp eq i64 %151, 0
  %153 = icmp slt i64 %.078114.us137, %151
  %154 = select i1 %152, i1 true, i1 %153
  br i1 %154, label %155, label %.critedge

155:                                              ; preds = %.lr.ph117.split.split.us
  %156 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %.not97.us138 = icmp eq i32 %156, 0
  br i1 %.not97.us138, label %169, label %157

157:                                              ; preds = %155
  %158 = add nsw i64 %.076115.us136, 1            ; 4 uses
  %159 = xor i64 %.078114.us137, -1
  %160 = add i64 %.0.i, %159                      ; 2 uses
  %161 = load i64, ptr %2, align 8, !tbaa !17
  %.not98.us142 = icmp slt i64 %158, %161
  br i1 %.not98.us142, label %169, label %162

162:                                              ; preds = %157
  %163 = add nsw i64 %.073116.us135, 1            ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %160) #8
  %164 = load i64, ptr %3, align 8, !tbaa !17     ; 2 uses
  %.not100.us = icmp eq i64 %164, 0
  br i1 %.not100.us, label %169, label %165

165:                                              ; preds = %162
  %166 = load i64, ptr %2, align 8, !tbaa !17
  %167 = add i64 %.076115.us136, 2
  %168 = sub i64 %167, %166
  %.not101.us = icmp slt i64 %168, %164
  br i1 %.not101.us, label %169, label %.critedge

169:                                              ; preds = %157, %165, %162, %155
  %.177.us139 = phi i64 [ %158, %165 ], [ %158, %162 ], [ %158, %157 ], [ %.076115.us136, %155 ]
  %.1.us140 = phi i64 [ %163, %165 ], [ %163, %162 ], [ %.073116.us135, %157 ], [ %.073116.us135, %155 ] ; 2 uses
  %170 = add nuw nsw i64 %.078114.us137, 1
  %171 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not96.us141 = icmp eq i32 %171, 0
  br i1 %.not96.us141, label %.critedge, label %.lr.ph117.split.split.us, !llvm.loop !120

.lr.ph117.split.split:                            ; preds = %.lr.ph117.split, %188
  %.073116 = phi i64 [ %.1, %188 ], [ 0, %.lr.ph117.split ] ; 4 uses
  %.076115 = phi i64 [ %.177, %188 ], [ 0, %.lr.ph117.split ] ; 3 uses
  %.078114 = phi i64 [ %189, %188 ], [ 0, %.lr.ph117.split ] ; 4 uses
  %172 = load i64, ptr %4, align 8, !tbaa !17     ; 2 uses
  %173 = icmp eq i64 %172, 0
  %174 = icmp slt i64 %.078114, %172
  %175 = select i1 %173, i1 true, i1 %174
  br i1 %175, label %176, label %.critedge

176:                                              ; preds = %.lr.ph117.split.split
  %177 = call i32 @listTypeEqual(ptr noundef nonnull %6, ptr noundef %12, i64 noundef %.0.i108, ptr noundef nonnull %7, ptr noundef nonnull %8)
  %.not97 = icmp eq i32 %177, 0
  br i1 %.not97, label %188, label %178

178:                                              ; preds = %176
  %179 = add nsw i64 %.076115, 1                  ; 4 uses
  %180 = load i64, ptr %2, align 8, !tbaa !17
  %.not98 = icmp slt i64 %179, %180
  br i1 %.not98, label %188, label %181

181:                                              ; preds = %178
  %182 = add nsw i64 %.073116, 1                  ; 3 uses
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.078114) #8
  %183 = load i64, ptr %3, align 8, !tbaa !17     ; 2 uses
  %.not100 = icmp eq i64 %183, 0
  br i1 %.not100, label %188, label %184

184:                                              ; preds = %181
  %185 = load i64, ptr %2, align 8, !tbaa !17
  %186 = add i64 %.076115, 2
  %187 = sub i64 %186, %185
  %.not101 = icmp slt i64 %187, %183
  br i1 %.not101, label %188, label %.critedge

188:                                              ; preds = %178, %181, %184, %176
  %.177 = phi i64 [ %179, %184 ], [ %179, %181 ], [ %179, %178 ], [ %.076115, %176 ]
  %.1 = phi i64 [ %182, %184 ], [ %182, %181 ], [ %.073116, %178 ], [ %.073116, %176 ] ; 2 uses
  %189 = add nuw nsw i64 %.078114, 1
  %190 = call i32 @listTypeNext(ptr noundef nonnull %5, ptr noundef nonnull %6)
  %.not96 = icmp eq i32 %190, 0
  br i1 %.not96, label %.critedge, label %.lr.ph117.split.split, !llvm.loop !120

.critedge:                                        ; preds = %.lr.ph117.split.split, %184, %188, %.lr.ph117.split.split.us, %165, %169, %.lr.ph117.split.us, %148, %..critedge_crit_edge119.split.us, %sdslen.exit
  %.175 = phi i64 [ -1, %.lr.ph117.split.split.us ], [ %147, %..critedge_crit_edge119.split.us ], [ -1, %.lr.ph117.split.us ], [ -1, %sdslen.exit ], [ -1, %148 ], [ -1, %169 ], [ %160, %165 ], [ -1, %.lr.ph117.split.split ], [ -1, %188 ], [ %.078114, %184 ] ; 2 uses
  %.2 = phi i64 [ %.073116.us135, %.lr.ph117.split.split.us ], [ 0, %..critedge_crit_edge119.split.us ], [ 0, %.lr.ph117.split.us ], [ 0, %sdslen.exit ], [ 0, %148 ], [ %.1.us140, %169 ], [ %163, %165 ], [ %.073116, %.lr.ph117.split.split ], [ %.1, %188 ], [ %182, %184 ]
  %191 = load i8, ptr %86, align 8, !tbaa !69
  %192 = icmp eq i8 %191, 9
  br i1 %192, label %193, label %listTypeResetIterator.exit

193:                                              ; preds = %.critedge
  %194 = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @quicklistResetIterator(ptr noundef nonnull %194) #8
  br label %listTypeResetIterator.exit

listTypeResetIterator.exit:                       ; preds = %.critedge, %193
  %.not102 = icmp eq ptr %.082, null
  br i1 %.not102, label %196, label %195

195:                                              ; preds = %listTypeResetIterator.exit
  call void @setDeferredArrayLen(ptr noundef nonnull %0, ptr noundef nonnull %.082, i64 noundef %.2) #8
  br label %204

196:                                              ; preds = %listTypeResetIterator.exit
  %.not103 = icmp eq i64 %.175, -1
  br i1 %.not103, label %198, label %197

197:                                              ; preds = %196
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.175) #8
  br label %204

198:                                              ; preds = %196
  %199 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %200 = load i32, ptr %199, align 4, !tbaa !107
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [8 x i8], ptr getelementptr inbounds nuw (i8, ptr @shared, i64 64), i64 %201
  %203 = load ptr, ptr %202, align 8, !tbaa !56
  call void @addReply(ptr noundef nonnull %0, ptr noundef %203) #8
  br label %204

204:                                              ; preds = %197, %198, %195
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %.critedge106

.critedge106:                                     ; preds = %44, %37, %26, %33, %48, %204, %69, %67, %75
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
end_hunk_2
