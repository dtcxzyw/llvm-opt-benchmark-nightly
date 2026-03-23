begin_hunk_0
  %11 = sext i8 %10 to i64
  %12 = getelementptr inbounds [2 x i8], ptr %9, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !36
  %.fr23.peel = freeze i16 %13
  %14 = and i16 %.fr23.peel, 2048
  %.not.not.peel = icmp eq i16 %14, 0
  br i1 %.not.not.peel, label %switch.early.test.peel, label %.critedge.thread.peel

end_hunk_0
begin_hunk_1
  %18 = sext i8 %17 to i64
  %19 = getelementptr inbounds [2 x i8], ptr %9, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !36
  %.fr23 = freeze i16 %20
  %21 = and i16 %.fr23, 2048
  %.not.not = icmp eq i16 %21, 0
  br i1 %.not.not, label %switch.early.test, label %.critedge

end_hunk_1
begin_hunk_2
  %26 = sext i8 %25 to i64
  %27 = getelementptr inbounds [2 x i8], ptr %9, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !36
  %.fr23.1 = freeze i16 %28
  %29 = and i16 %.fr23.1, 2048
  %.not.not.1 = icmp eq i16 %29, 0
  br i1 %.not.not.1, label %switch.early.test.1, label %.critedge.thread.1

end_hunk_2
begin_hunk_3
  br label %15, !llvm.loop !46

.critedge2:                                       ; preds = %switch.early.test, %switch.early.test.1, %switch.early.test.peel
  %.0.lcssa25.wide = phi i64 [ 0, %switch.early.test.peel ], [ %indvars.iv, %switch.early.test ], [ %indvars.iv.next, %switch.early.test.1 ]
  %31 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.lcssa25.wide
  store i8 0, ptr %31, align 1, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %32 = call double @strtod(ptr noundef nonnull %1, ptr noundef nonnull %2) #24
end_hunk_3
begin_hunk_4
  %163 = sext i8 %162 to i64
  %164 = getelementptr inbounds [2 x i8], ptr %79, i64 %163
  %165 = load i16, ptr %164, align 2, !tbaa !36
  %.fr13.i.i.i.i = freeze i16 %165
  %166 = and i16 %.fr13.i.i.i.i, 2048
  %.not.i.i.i.i = icmp eq i16 %166, 0
  br i1 %.not.i.i.i.i, label %switch.early.test.i.i.i.i, label %jsonIsNumberChar.exit.thread.i.i.i

end_hunk_4
begin_hunk_5
  %59 = getelementptr inbounds nuw i8, ptr %17, i64 1 ; 3 uses
  store ptr %59, ptr %0, align 8, !tbaa !48
  %60 = icmp ult ptr %59, %1
  br i1 %60, label %.lr.ph.i155, label %jsonSkipWhiteSpaces.exit158

.lr.ph.i155:                                      ; preds = %58
  %61 = tail call ptr @__ctype_b_loc() #26
  %62 = load ptr, ptr %61, align 8, !tbaa !34
  br label %63

63:                                               ; preds = %70, %.lr.ph.i155
  %64 = phi ptr [ %59, %.lr.ph.i155 ], [ %71, %70 ] ; 2 uses
  %65 = load i8, ptr %64, align 1, !tbaa !18
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds nuw [2 x i8], ptr %62, i64 %66
  %68 = load i16, ptr %67, align 2, !tbaa !36
  %69 = and i16 %68, 8192
  %.not.i156 = icmp eq i16 %69, 0
  br i1 %.not.i156, label %jsonSkipWhiteSpaces.exit158, label %70

70:                                               ; preds = %63
  %71 = getelementptr inbounds nuw i8, ptr %64, i64 1 ; 3 uses
  store ptr %71, ptr %0, align 8, !tbaa !48
  %exitcond.not.i157 = icmp eq ptr %71, %1
  br i1 %exitcond.not.i157, label %jsonSkipWhiteSpaces.exit158, label %63, !llvm.loop !61

jsonSkipWhiteSpaces.exit158:                      ; preds = %63, %70, %58
  %72 = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %73 = tail call ptr %72(i64 noundef 40) #24     ; 11 uses
  %74 = getelementptr inbounds nuw i8, ptr %73, i64 8
end_hunk_5
begin_hunk_6
  %79 = icmp ult ptr %78, %1
  br i1 %79, label %80, label %85

80:                                               ; preds = %jsonSkipWhiteSpaces.exit158
  %81 = load i8, ptr %78, align 1, !tbaa !18
  %82 = icmp eq i8 %81, 93
  br i1 %82, label %83, label %85
end_hunk_6
begin_hunk_7
  store ptr %84, ptr %0, align 8, !tbaa !48
  br label %jsonParseStringToken.exit

85:                                               ; preds = %80, %jsonSkipWhiteSpaces.exit158
  %86 = tail call fastcc ptr @jsonParseValueToken(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %.not63.i88 = icmp eq ptr %86, null
  br i1 %.not63.i88, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %jsonSkipWhiteSpaces.exit56, %85
  tail call void @exprTokenRelease(ptr noundef nonnull %73)
  br label %jsonParseStringToken.exit

.lr.ph:                                           ; preds = %85, %jsonSkipWhiteSpaces.exit56
  %87 = phi ptr [ %136, %jsonSkipWhiteSpaces.exit56 ], [ %86, %85 ] ; 2 uses
  %.049.i89 = phi i64 [ %.251.i, %jsonSkipWhiteSpaces.exit56 ], [ 0, %85 ] ; 5 uses
  %88 = load i64, ptr %77, align 8, !tbaa !18     ; 2 uses
  %89 = icmp eq i64 %88, %.049.i89
  br i1 %89, label %90, label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph
end_hunk_7
begin_hunk_8
  br label %98

90:                                               ; preds = %.lr.ph
  %.not64.i = icmp eq i64 %.049.i89, 0
  %91 = shl i64 %.049.i89, 1
  %92 = select i1 %.not64.i, i64 4, i64 %91       ; 3 uses
  %.not65.i = icmp ult i64 %92, %.049.i89
  br i1 %.not65.i, label %.thread, label %93

.thread:                                          ; preds = %90
end_hunk_8
begin_hunk_9
  %96 = shl i64 %92, 3
  %97 = tail call ptr %94(ptr noundef %95, i64 noundef %96) #24 ; 2 uses
  store ptr %97, ptr %76, align 8, !tbaa !18
  %.pre109 = load i64, ptr %77, align 8, !tbaa !18
  br label %98

98:                                               ; preds = %.lr.ph._crit_edge, %93
  %99 = phi i64 [ %.pre109, %93 ], [ %88, %.lr.ph._crit_edge ] ; 2 uses
  %100 = phi ptr [ %97, %93 ], [ %.pre, %.lr.ph._crit_edge ]
  %.251.i = phi i64 [ %92, %93 ], [ %.049.i89, %.lr.ph._crit_edge ]
  %101 = add i64 %99, 1
  store i64 %101, ptr %77, align 8, !tbaa !18
  %102 = getelementptr inbounds nuw [8 x i8], ptr %100, i64 %99
  store ptr %87, ptr %102, align 8, !tbaa !19
  %.promoted.i57 = load ptr, ptr %0, align 8, !tbaa !48 ; 3 uses
  %103 = icmp ult ptr %.promoted.i57, %1
  br i1 %103, label %.lr.ph.i59, label %jsonSkipWhiteSpaces.exit62

.lr.ph.i59:                                       ; preds = %98
  %104 = tail call ptr @__ctype_b_loc() #26
  %105 = load ptr, ptr %104, align 8, !tbaa !34
  br label %106

106:                                              ; preds = %113, %.lr.ph.i59
  %107 = phi ptr [ %.promoted.i57, %.lr.ph.i59 ], [ %114, %113 ] ; 3 uses
  %108 = load i8, ptr %107, align 1, !tbaa !18
  %109 = zext i8 %108 to i64
  %110 = getelementptr inbounds nuw [2 x i8], ptr %105, i64 %109
  %111 = load i16, ptr %110, align 2, !tbaa !36
  %112 = and i16 %111, 8192
  %.not.i60 = icmp eq i16 %112, 0
  br i1 %.not.i60, label %jsonSkipWhiteSpaces.exit62, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds nuw i8, ptr %107, i64 1 ; 4 uses
  store ptr %114, ptr %0, align 8, !tbaa !48
  %exitcond.not.i61 = icmp eq ptr %114, %1
  br i1 %exitcond.not.i61, label %jsonSkipWhiteSpaces.exit62, label %106, !llvm.loop !61

jsonSkipWhiteSpaces.exit62:                       ; preds = %106, %113, %98
  %115 = phi ptr [ %.promoted.i57, %98 ], [ %114, %113 ], [ %107, %106 ] ; 4 uses
  %.not66.i30 = icmp ult ptr %115, %1
  br i1 %.not66.i30, label %117, label %116

116:                                              ; preds = %jsonSkipWhiteSpaces.exit62
  tail call void @exprTokenRelease(ptr noundef nonnull %73)
  br label %jsonParseStringToken.exit

117:                                              ; preds = %jsonSkipWhiteSpaces.exit62
  %118 = load i8, ptr %115, align 1, !tbaa !18
  switch i8 %118, label %135 [
    i8 44, label %119
end_hunk_9
begin_hunk_10
  %120 = getelementptr inbounds nuw i8, ptr %115, i64 1 ; 3 uses
  store ptr %120, ptr %0, align 8, !tbaa !48
  %121 = icmp ult ptr %120, %1
  br i1 %121, label %.lr.ph.i53, label %jsonSkipWhiteSpaces.exit56

.lr.ph.i53:                                       ; preds = %119
  %122 = tail call ptr @__ctype_b_loc() #26
  %123 = load ptr, ptr %122, align 8, !tbaa !34
  br label %124

124:                                              ; preds = %131, %.lr.ph.i53
  %125 = phi ptr [ %120, %.lr.ph.i53 ], [ %132, %131 ] ; 2 uses
  %126 = load i8, ptr %125, align 1, !tbaa !18
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds nuw [2 x i8], ptr %123, i64 %127
  %129 = load i16, ptr %128, align 2, !tbaa !36
  %130 = and i16 %129, 8192
  %.not.i54 = icmp eq i16 %130, 0
  br i1 %.not.i54, label %jsonSkipWhiteSpaces.exit56, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds nuw i8, ptr %125, i64 1 ; 3 uses
  store ptr %132, ptr %0, align 8, !tbaa !48
  %exitcond.not.i55 = icmp eq ptr %132, %1
  br i1 %exitcond.not.i55, label %jsonSkipWhiteSpaces.exit56, label %124, !llvm.loop !61

133:                                              ; preds = %117
  %134 = getelementptr inbounds nuw i8, ptr %115, i64 1
end_hunk_10
begin_hunk_11
  tail call void @exprTokenRelease(ptr noundef nonnull %73)
  br label %jsonParseStringToken.exit

jsonSkipWhiteSpaces.exit56:                       ; preds = %131, %124, %119
  %136 = tail call fastcc ptr @jsonParseValueToken(ptr noundef nonnull %0, ptr noundef nonnull %1) ; 2 uses
  %.not63.i = icmp eq ptr %136, null
  br i1 %.not63.i, label %._crit_edge, label %.lr.ph
end_hunk_11
begin_hunk_12
  %147 = zext i8 %144 to i64
  %148 = getelementptr inbounds nuw [2 x i8], ptr %146, i64 %147
  %149 = load i16, ptr %148, align 2, !tbaa !36
  %.fr38.i = freeze i16 %149
  %150 = and i16 %.fr38.i, 8192
  %.not39.i = icmp eq i16 %150, 0
  br i1 %.not39.i, label %switch.early.test37.i, label %151

switch.early.test37.i:                            ; preds = %switch.early.test.i
  switch i8 %144, label %jsonParseStringToken.exit [
end_hunk_12
begin_hunk_13
  %167 = zext i8 %164 to i64
  %168 = getelementptr inbounds nuw [2 x i8], ptr %166, i64 %167
  %169 = load i16, ptr %168, align 2, !tbaa !36
  %.fr38.i37 = freeze i16 %169
  %170 = and i16 %.fr38.i37, 8192
  %.not39.i38 = icmp eq i16 %170, 0
  br i1 %.not39.i38, label %switch.early.test37.i39, label %171

switch.early.test37.i39:                          ; preds = %switch.early.test.i36
  switch i8 %164, label %jsonParseStringToken.exit [
    i8 125, label %171
    i8 93, label %171
    i8 44, label %171
  ]

171:                                              ; preds = %switch.early.test37.i39, %switch.early.test37.i39, %switch.early.test37.i39, %switch.early.test.i36, %162
  store ptr %158, ptr %0, align 8, !tbaa !48
  %172 = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %173 = tail call ptr %172(i64 noundef 40) #24   ; 4 uses
end_hunk_13
begin_hunk_14

179:                                              ; preds = %176
  %180 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(5) @.str.24, i64 noundef 4) #27
  %.not.i41 = icmp eq i32 %180, 0
  br i1 %.not.i41, label %181, label %jsonParseStringToken.exit

181:                                              ; preds = %179
  %182 = icmp ult ptr %177, %1
  br i1 %182, label %switch.early.test.i43, label %190

switch.early.test.i43:                            ; preds = %181
  %183 = load i8, ptr %177, align 1, !tbaa !18    ; 2 uses
  %184 = tail call ptr @__ctype_b_loc() #26
  %185 = load ptr, ptr %184, align 8, !tbaa !34
  %186 = zext i8 %183 to i64
  %187 = getelementptr inbounds nuw [2 x i8], ptr %185, i64 %186
  %188 = load i16, ptr %187, align 2, !tbaa !36
  %.fr38.i44 = freeze i16 %188
  %189 = and i16 %.fr38.i44, 8192
  %.not39.i45 = icmp eq i16 %189, 0
  br i1 %.not39.i45, label %switch.early.test37.i46, label %190

switch.early.test37.i46:                          ; preds = %switch.early.test.i43
  switch i8 %183, label %jsonParseStringToken.exit [
    i8 125, label %190
    i8 93, label %190
    i8 44, label %190
  ]

190:                                              ; preds = %switch.early.test37.i46, %switch.early.test37.i46, %switch.early.test37.i46, %switch.early.test.i43, %181
  store ptr %177, ptr %0, align 8, !tbaa !48
  %191 = load ptr, ptr @RedisModule_Alloc, align 8, !tbaa !13
  %192 = tail call ptr %191(i64 noundef 40) #24   ; 4 uses
end_hunk_14
begin_hunk_15
  %198 = zext i8 %19 to i64
  %199 = getelementptr inbounds nuw [2 x i8], ptr %197, i64 %198
  %200 = load i16, ptr %199, align 2, !tbaa !36
  %.fr68 = freeze i16 %200
  %201 = and i16 %.fr68, 2048
  %.not24.not = icmp eq i16 %201, 0
  br i1 %.not24.not, label %switch.early.test, label %.lr.ph.i49

switch.early.test:                                ; preds = %195
  switch i8 %19, label %jsonParseStringToken.exit [
    i8 45, label %.lr.ph.i49
    i8 43, label %.lr.ph.i49
  ]

.lr.ph.i49:                                       ; preds = %195, %switch.early.test, %switch.early.test
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  br label %202

202:                                              ; preds = %jsonIsNumberChar.exit.thread.i, %.lr.ph.i49
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i, %jsonIsNumberChar.exit.thread.i ] ; 4 uses
  %203 = phi ptr [ %17, %.lr.ph.i49 ], [ %210, %jsonIsNumberChar.exit.thread.i ] ; 2 uses
  %204 = load i8, ptr %203, align 1, !tbaa !18    ; 3 uses
  %205 = sext i8 %204 to i64
  %206 = getelementptr inbounds [2 x i8], ptr %197, i64 %205
  %207 = load i16, ptr %206, align 2, !tbaa !36
  %.fr13.i.i = freeze i16 %207
  %208 = and i16 %.fr13.i.i, 2048
  %.not.i.i = icmp eq i16 %208, 0
  br i1 %.not.i.i, label %switch.early.test.i.i, label %jsonIsNumberChar.exit.thread.i

end_hunk_15
begin_hunk_16
  br label %227

227:                                              ; preds = %221, %220
  %.0.i50 = phi ptr [ null, %220 ], [ %223, %221 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %jsonParseNumberToken.exit

jsonParseNumberToken.exit:                        ; preds = %.critedge.i, %227
  %.1.i48 = phi ptr [ %.0.i50, %227 ], [ null, %.critedge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %jsonParseStringToken.exit

jsonParseStringToken.exit:                        ; preds = %26, %.outer68.outer.i, %.outer68.i, %.thread, %135, %133, %._crit_edge, %116, %190, %switch.early.test37.i46, %179, %176, %171, %switch.early.test37.i39, %160, %157, %151, %switch.early.test37.i, %140, %137, %83, %56, %20, %switch.early.test, %18, %jsonSkipWhiteSpaces.exit, %jsonParseNumberToken.exit
  %.0 = phi ptr [ null, %160 ], [ %.1.i48, %jsonParseNumberToken.exit ], [ null, %18 ], [ null, %switch.early.test ], [ null, %20 ], [ null, %jsonSkipWhiteSpaces.exit ], [ %73, %83 ], [ null, %140 ], [ null, %._crit_edge ], [ null, %.outer68.i ], [ %32, %56 ], [ null, %116 ], [ null, %179 ], [ null, %switch.early.test37.i ], [ null, %137 ], [ %153, %151 ], [ null, %switch.early.test37.i39 ], [ null, %157 ], [ %173, %171 ], [ null, %switch.early.test37.i46 ], [ null, %176 ], [ %192, %190 ], [ null, %.thread ], [ null, %135 ], [ %73, %133 ], [ null, %.outer68.outer.i ], [ null, %26 ]
  ret ptr %.0
}

end_hunk_16
begin_hunk_17
  %.084 = phi i32 [ %28, %24 ], [ %34, %33 ], [ %37, %35 ] ; 2 uses
  %39 = load ptr, ptr @RedisModule_GetContextFlags, align 8, !tbaa !13
  %40 = tail call i32 %39(ptr noundef %0) #24
  %.fr = freeze i32 %40
  %41 = and i32 %.fr, 4194304
  %42 = icmp ne i32 %41, 0                        ; 2 uses
  %43 = or i64 %6, %5
  %44 = icmp ne i64 %43, 0
end_hunk_17
begin_hunk_18
  %53 = add i64 %3, -1
  %54 = add i32 %.084, -1
  %55 = zext i32 %54 to i64
  %umin129 = tail call i64 @llvm.umin.i64(i64 %53, i64 %55) ; 4 uses
  %56 = add nuw nsw i64 %umin129, 1               ; 3 uses
  br i1 %52, label %.lr.ph.split.us, label %.lr.ph.split.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %89
end_hunk_18
begin_hunk_19
  br label %89

89:                                               ; preds = %86, %83
  %exitcond130.not = icmp eq i64 %.08696.us, %umin129
  br i1 %exitcond130.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !117

.lr.ph.split.split:                               ; preds = %.lr.ph
  br i1 %51, label %.lr.ph.split.split.split.us, label %.lr.ph.split.split.split
end_hunk_19
begin_hunk_20
  %106 = fmul double %105, 5.000000e-01
  %107 = fsub double 1.000000e+00, %106
  %108 = tail call i32 %103(ptr noundef %0, double noundef %107) #24
  %exitcond124.not = icmp eq i64 %.08696.us109, %umin129
  br i1 %exitcond124.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !117

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split, %113
  %.08696 = phi i64 [ %121, %113 ], [ 0, %.lr.ph.split.split ] ; 5 uses
end_hunk_20
begin_hunk_21
  %119 = load ptr, ptr %117, align 8, !tbaa !93
  %120 = tail call i32 %118(ptr noundef %0, ptr noundef %119) #24
  %121 = add nuw nsw i64 %.08696, 1
  %exitcond.not = icmp eq i64 %.08696, %umin129
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split.split.split, !llvm.loop !117

._crit_edge:                                      ; preds = %113, %.lr.ph.split.split.split, %94, %.lr.ph.split.split.split.us, %89, %.lr.ph.split.us, %38
end_hunk_21
