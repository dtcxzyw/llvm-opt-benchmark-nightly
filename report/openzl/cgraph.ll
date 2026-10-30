Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/cgraph?download=true
inline.NumInlined: 105
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ZL_Compressor_registerParameterizedGraph:bb.a
  store ptr %i.k, ptr %i.v, align 8, !tbaa !112
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !33
  %i.y = call { i64, ptr } @GM_registerParameterizedGraph(ptr noundef %i.x, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.z = extractvalue { i64, ptr } %i.y, 0        ; 2 uses
  %i.aa = and i64 %i.z, 4294967295
  %.not = icmp eq i64 %i.aa, 0
  %.sroa.0.4.extract.shift = lshr exact i64 %i.z, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.sroa.09.0 = select i1 %.not, i32 %.sroa.0.4.extract.trunc, i32 0
  ret i32 %.sroa.09.0
}

; Function Attrs: nounwind uwtable
define { i64, ptr } @ZL_Compressor_registerSegmenter2(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call { i64, ptr } @GM_registerSegmenter(ptr noundef %i.b, ptr noundef %1) #10
  ret { i64, ptr } %i.c
}

declare { i64, ptr } @GM_registerSegmenter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_registerSegmenter(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call { i64, ptr } @GM_registerSegmenter(ptr noundef %i.b, ptr noundef %1) #10
  %i.d = extractvalue { i64, ptr } %i.c, 0        ; 2 uses
  %i.e = and i64 %i.d, 4294967295
  %.not = icmp eq i64 %i.e, 0
  %.sroa.0.4.extract.shift = lshr exact i64 %i.d, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %.sroa.02.0 = select i1 %.not, i32 %.sroa.0.4.extract.trunc, i32 0
  ret i32 %.sroa.02.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define range(i32 0, 2) i32 @ZL_GraphID_isValid(i32 %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ne i32 %0, 0
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_getGraph(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call i32 @GM_getGraphByName(ptr noundef %i.b, ptr noundef %1) #10
  ret i32 %i.c
}

declare i32 @GM_getGraphByName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_getNode(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @NM_getNodeByName(ptr noundef %0, ptr noundef %1) #10
  ret i32 %i.a
}

declare i32 @NM_getNodeByName(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @CGRAPH_graphType(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call i32 @GM_graphType(ptr noundef %i.b, i32 %1) #10
  ret i32 %i.c
}

declare i32 @GM_graphType(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @CGRAPH_getStartingGraphID(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = tail call i32 @GM_getLastRegisteredGraph(ptr noundef %i.d) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  ret i32 %.sroa.0.0
}

declare i32 @GM_getLastRegisteredGraph(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @CGRAPH_getCNode(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @NM_getCNode(ptr noundef %0, i32 %1) #10
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define i32 @CGRAPH_getNodeType(ptr noundef %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @NM_getCNode(ptr noundef %0, i32 %1) #10
  %i.b = load i32, ptr %i.a, align 8, !tbaa !54
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define ptr @CGRAPH_getMultiInputGraphDesc(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call ptr @GM_getMultiInputGraphDesc(ptr noundef %i.b, i32 %1) #10
  ret ptr %i.c
}

declare ptr @GM_getMultiInputGraphDesc(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @CGRAPH_getSegmenterDesc(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call ptr @GM_getSegmenterDesc(ptr noundef %i.b, i32 %1) #10
  ret ptr %i.c
}

declare ptr @GM_getSegmenterDesc(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @CGRAPH_getGraphMParamObj(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call ptr @GM_getGraphMParamObj(ptr noundef %i.b, i32 %1) #10
  ret ptr %i.c
}

declare ptr @GM_getGraphMParamObj(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @CGRAPH_graphPrivateParam(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call ptr @GM_getPrivateParam(ptr noundef %i.b, i32 %1) #10
  ret ptr %i.c
}

declare ptr @GM_getPrivateParam(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Compressor_forEachGraph(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call { i32, i64 } @GM_forEachGraph(ptr noundef %i.b, ptr noundef %1, ptr noundef %2, ptr noundef %0) #10
  ret { i32, i64 } %i.c
}

declare { i32, i64 } @GM_forEachGraph(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Compressor_forEachNode(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, i64 } @NM_forEachNode(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %0) #10
  ret { i32, i64 } %i.a
}

declare { i32, i64 } @NM_forEachNode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_Compressor_forEachParam(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = tail call { i32, i64 } @GCParams_forEachParam(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %2) #10
  ret { i32, i64 } %i.b
}

declare { i32, i64 } @GCParams_forEachParam(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define zeroext i1 @ZL_Compressor_getStartingGraphID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.b, label %CGRAPH_getStartingGraphID.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !33
  %i.e = tail call i32 @GM_getLastRegisteredGraph(ptr noundef %i.d) #10 ; 2 uses
  %2 = icmp ne i32 %i.e, 0
  br label %CGRAPH_getStartingGraphID.exit

CGRAPH_getStartingGraphID.exit:                   ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %2, %bb.b ], [ true, %bb.a ]
  %.sroa.0.0.i.a = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.a ]
  store i32 %.sroa.0.0.i.a, ptr %1, align 4, !tbaa !34
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind uwtable
define ptr @ZL_Compressor_Graph_getName(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = tail call ptr @GM_getGraphName(ptr noundef %i.c, i32 %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @GM_getGraphName(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_getGraphType(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = load i32, ptr %2, align 8, !tbaa !115
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %i.c
}

declare void @GM_getGraphMetadata(ptr dead_on_unwind writable sret(%struct.GM_GraphMetadata) align 8, ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_Graph_getInput0Mask(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = tail call i32 @GM_getGraphInput0Mask(ptr noundef %i.b, i32 %1) #10
  ret i32 %i.c
}

declare i32 @GM_getGraphInput0Mask(ptr noundef, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_Graph_getInputMask(ptr nofree noundef readonly captures(none) %0, i32 %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %3, ptr noundef %i.b, i32 %1) #10
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !162
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %2
  %i.f = load i32, ptr %i.e, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %i.f
}

; Function Attrs: nounwind uwtable
define i64 @ZL_Compressor_Graph_getNumInputs(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.d = load i64, ptr %i.c, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.d
}

; Function Attrs: nounwind uwtable
define zeroext i1 @ZL_Compressor_Graph_isVariableInput(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !164
  %i.e = icmp ne i32 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i1 %i.e
}

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_Graph_getHeadNode(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = load i32, ptr %2, align 8, !tbaa !115
  %i.d = icmp eq i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !165
  %.sroa.01.0.copyload = load i32, ptr %i.f, align 4, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.01.0 = phi i32 [ %.sroa.01.0.copyload, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.sroa.01.0
}

; Function Attrs: nounwind uwtable
define i32 @ZL_Compressor_Graph_getBaseGraphID(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.sroa.01.0.copyload = load i32, ptr %i.c, align 4, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i32 %.sroa.01.0.copyload
}

; Function Attrs: nounwind uwtable
define { ptr, i64 } @ZL_Compressor_Graph_getSuccessors(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = load i32, ptr %2, align 8, !tbaa !115
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.01.0 = select i1 %i.d, ptr %i.f, ptr null
  %.sroa.3.0 = select i1 %i.d, i64 %i.h, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { ptr, i64 } @ZL_Compressor_Graph_getCustomNodes(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = load i32, ptr %2, align 8, !tbaa !115
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.01.0 = select i1 %i.d, ptr null, ptr %i.f
  %.sroa.3.0 = select i1 %i.d, i64 0, i64 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define { ptr, i64 } @ZL_Compressor_Graph_getCustomGraphs(ptr nofree noundef readonly captures(none) %0, i32 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.GM_GraphMetadata, align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  call void @GM_getGraphMetadata(ptr dead_on_unwind nonnull writable sret(%struct.GM_GraphMetadata) align 8 %2, ptr noundef %i.b, i32 %1) #10
  %i.c = load i32, ptr %2, align 8, !tbaa !115
  %i.d = icmp eq i32 %i.c, 1                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load i64, ptr %i.g, align 8
  %.sroa.01.0 = select i1 %i.d, ptr null, ptr %i.f
  %.sroa.3.0 = select i1 %i.d, i64 0, i64 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @ZL_Compressor_Graph_getLocalParams(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.ZL_LocalParams) align 8 captures(none) initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, i32 %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.GM_GraphMetadata, align 8   ; 4 uses
end_hunk_0
