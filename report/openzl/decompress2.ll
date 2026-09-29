Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/decompress2?download=true
inline.NumInlined: 332
inline.NumDeleted: 57
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 13
begin_hunk_0_@ZL_OC_init

declare void @ZL_OC_startOperation(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ALLOC_StackArena_create() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @ZL_DCtx_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 1456       ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !38
  tail call void @ALLOC_Arena_freeAll(ptr noundef %.val) #16
  tail call void @DTM_destroy(ptr noundef nonnull %0) #16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1128
  tail call void @ZL_DecoderFusionState_destroy(ptr noundef nonnull %i.c) #16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1216
  tail call void @DFH_destroy(ptr noundef nonnull %i.d) #16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !39
  tail call void @ALLOC_Arena_freeArena(ptr noundef %i.f) #16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40
  tail call void @ALLOC_Arena_freeArena(ptr noundef %i.h) #16
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !38
  tail call void @ALLOC_Arena_freeArena(ptr noundef %i.i) #16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  tail call void @ALLOC_Arena_freeArena(ptr noundef %i.k) #16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1464
  tail call void @ZL_OC_destroy(ptr noundef nonnull %i.l) #16
  tail call void @ZL_free(ptr noundef nonnull %0) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare ptr @ALLOC_HeapArena_create() local_unnamed_addr #2

declare { i32, i64 } @DTM_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @ZL_DCtx_getOperationContext(ptr nofree noundef readnone captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0 = select i1 %i.a, ptr null, ptr %i.b
  ret ptr %.0
}

declare { i32, i64 } @ZL_DecoderFusionState_init(ptr noundef) local_unnamed_addr #2

declare void @DFH_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_setStreamArena(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  switch i32 %1, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @ALLOC_HeapArena_create() #16
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @ALLOC_StackArena_create() #16
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DCtx_setStreamArena.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 159, i32 noundef 21, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #16 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.5) #16
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.c
  %.013 = phi ptr [ %i.d, %bb.b ], [ %i.e, %bb.c ] ; 2 uses
  %.not = icmp eq ptr %.013, null
  br i1 %.not, label %.thread, label %bb.f, !prof !45

.thread:                                          ; preds = %bb.e
  %i.j = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DCtx_setStreamArena.__zl_static_error_info.6, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 161, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.k = extractvalue { i32, ptr } %i.j, 0        ; 2 uses
  %i.l = extractvalue { i32, ptr } %i.j, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.k, ptr %i.l, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  %i.m = ptrtoint ptr %i.l to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1456 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38
  tail call void @ALLOC_Arena_freeArena(ptr noundef %i.o) #16
  store ptr %.013, ptr %i.n, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.d
  %.sroa.012.1 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.f ], [ %i.k, %.thread ]
  %.sroa.6.1 = phi i64 [ %i.i, %bb.d ], [ 0, %bb.f ], [ %i.m, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.012.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.6.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare { i32, ptr } @ZL_E_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @ZL_E_appendToMessage(i32, ptr, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @ALLOC_Arena_freeArena(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @DCTX_preserveStreams(ptr nofree noundef writeonly captures(none) initializes((1424, 1425)) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i8 1, ptr %i.a, align 8, !tbaa !46
  ret void
}

declare void @DTM_destroy(ptr noundef) local_unnamed_addr #2

declare void @ZL_DecoderFusionState_destroy(ptr noundef) local_unnamed_addr #2

declare void @DFH_destroy(ptr noundef) local_unnamed_addr #2

declare void @ZL_OC_destroy(ptr noundef) local_unnamed_addr #2

declare void @ZL_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @DCTX_registerDecoderFusion(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.b = tail call { i32, i64 } @ZL_DecoderFusionState_registerFusion(ptr noundef nonnull %i.a, ptr noundef %1) #16
  ret { i32, i64 } %i.b
}

declare { i32, i64 } @ZL_DecoderFusionState_registerFusion(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define void @DCTX_clearDecoderFusions(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1128
  tail call void @ZL_DecoderFusionState_clearFusions(ptr noundef nonnull %i.a) #16
  ret void
}

declare void @ZL_DecoderFusionState_clearFusions(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @ZL_DCtx_refDictLoader(ptr nofree noundef writeonly captures(none) initializes((1784, 1792)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1784
  store ptr %1, ptr %i.a, align 8, !tbaa !47
  ret void
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_setParameter(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.b = tail call { i32, i64 } @GDParams_setParameter(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef %2) #16
  ret { i32, i64 } %i.b
}

declare { i32, i64 } @GDParams_setParameter(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @ZL_DCtx_getParameter(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1752
  %i.b = tail call i32 @GDParams_getParameter(ptr noundef nonnull %i.a, i32 noundef %1) #16
  ret i32 %i.b
}

declare i32 @GDParams_getParameter(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef { i32, i64 } @ZL_DCtx_resetParameters(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1752
  tail call void @ZL_zeroes(ptr noundef nonnull %i.a, i64 noundef 16) #16
  ret { i32, i64 } zeroinitializer
}

declare void @ZL_zeroes(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @DCtx_setAppliedParameters(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !49
  tail call void @GDParams_applyDefaults(ptr noundef nonnull %i.a, ptr noundef nonnull @GDParams_default) #16
  %i.c = tail call { i32, i64 } @GDParams_finalize(ptr noundef nonnull %i.a) #16
  ret { i32, i64 } %i.c
}

declare void @GDParams_applyDefaults(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @GDParams_finalize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @DCtx_getAppliedGParam(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1768
  %i.b = tail call i32 @GDParams_getParameter(ptr noundef nonnull %i.a, i32 noundef %1) #16
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @ZL_DCtx_getFrameFormatVersion(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.b = load i32, ptr %i.a, align 8, !tbaa !50
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @ZL_DCtx_getNumStreams(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @ZL_DCtx_getConstStream(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.c = load i64, ptr %i.b, align 8, !tbaa !51
  %.not = icmp ugt i64 %i.c, %i.a
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %i.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @DCTX_getStreamProducerNodeIdx(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = zext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.g = load i64, ptr %i.f, align 8, !tbaa !51
  %.not = icmp ugt i64 %i.g, %i.e
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load i32, ptr %i.i, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_registerPipeDecoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  %i.d = tail call { i64, ptr } @DTM_registerDPipeTransform(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %.sroa.07.0.extract.trunc = trunc i64 %i.e to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.07.0.extract.trunc, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %.sroa.07.0.extract.trunc, ptr %i.f, ptr nonnull @ZL_DCtx_registerPipeDecoder.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, i32 noundef 291, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0
  %i.i = extractvalue { i32, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i64, ptr } @DTM_registerDPipeTransform(ptr noundef, ptr noundef) local_unnamed_addr #2

declare { i32, ptr } @ZL_E_addFrame(ptr noundef, i32, ptr, ptr, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_registerSplitDecoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  %i.d = tail call { i64, ptr } @DTM_registerDSplitTransform(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %.sroa.07.0.extract.trunc = trunc i64 %i.e to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.07.0.extract.trunc, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %.sroa.07.0.extract.trunc, ptr %i.f, ptr nonnull @ZL_DCtx_registerSplitDecoder.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.17, i32 noundef 302, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0
  %i.i = extractvalue { i32, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.07.0, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.7.0, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i64, ptr } @DTM_registerDSplitTransform(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_registerTypedDecoder(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  %i.d = tail call { i64, ptr } @DTM_registerDTypedTransform(ptr noundef %0, ptr noundef %1) #16 ; 2 uses
  %i.e = extractvalue { i64, ptr } %i.d, 0
  %.sroa.07.0.extract.trunc = trunc i64 %i.e to i32 ; 2 uses
  %.not = icmp eq i32 %.sroa.07.0.extract.trunc, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.f = extractvalue { i64, ptr } %i.d, 1
  %i.g = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %.sroa.07.0.extract.trunc, ptr %i.f, ptr nonnull @ZL_DCtx_registerTypedDecoder.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.18, i32 noundef 314, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.g, 0
  %i.i = extractvalue { i32, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.07.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.sroa.7.0 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ]
end_hunk_0
begin_hunk_1_@DCTX_runDecoder:bb.a
  %scevgep526 = getelementptr i8, ptr %i.cc, i64 %i.cs
  %scevgep527 = getelementptr i8, ptr %i.cc, i64 -16
  %i.ct = add nuw nsw i64 %wide.trip.count.i.i, %i.cr
  %i.cu = mul nuw nsw i64 %i.ct, 24
  %scevgep528 = getelementptr i8, ptr %scevgep527, i64 %i.cu
  %bound0 = icmp ult ptr %scevgep523, %scevgep528
  %bound1 = icmp ult ptr %scevgep526, %scevgep525
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.cv = and i64 %wide.trip.count.i.i, 3         ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  %i.cx = select i1 %i.cw, i64 4, i64 %i.cv
  %n.vec = sub nsw i64 %wide.trip.count.i.i, %i.cx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cy = trunc i64 %index to i32                 ; 5 uses
  %i.cz = or disjoint i32 %i.cy, 1
  %i.da = or disjoint i32 %i.cy, 2
  %i.db = or disjoint i32 %i.cy, 3
  %i.dc = add i32 %i.cb, %i.cy
  %i.dd = add i32 %i.cb, %i.cz
  %i.de = add i32 %i.cb, %i.da
  %i.df = add i32 %i.cb, %i.db
  %i.dg = xor i32 %i.cy, -1
  %i.dh = add i32 %i.bz, %i.dg
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.dc to i64
  %i.dk = zext i32 %i.dd to i64
  %i.dl = zext i32 %i.de to i64
  %i.dm = zext i32 %i.df to i64
  %i.dn = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dj
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dk
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dl
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.dm
  %i.dr = load ptr, ptr %i.dn, align 8, !tbaa !56, !alias.scope !147
  %i.ds = load ptr, ptr %i.do, align 8, !tbaa !56, !alias.scope !147
  %i.dt = insertelement <2 x ptr> poison, ptr %i.ds, i64 0
  %reverse = insertelement <2 x ptr> %i.dt, ptr %i.dr, i64 1
  %i.du = load ptr, ptr %i.dp, align 8, !tbaa !56, !alias.scope !147
  %i.dv = load ptr, ptr %i.dq, align 8, !tbaa !56, !alias.scope !147
  %i.dw = insertelement <2 x ptr> poison, ptr %i.dv, i64 0
  %reverse529 = insertelement <2 x ptr> %i.dw, ptr %i.du, i64 1
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.di ; 2 uses
  %i.dy = getelementptr inbounds i8, ptr %i.dx, i64 -8
  %i.dz = getelementptr inbounds i8, ptr %i.dx, i64 -24
  store <2 x ptr> %reverse, ptr %i.dy, align 8, !tbaa !63, !alias.scope !148, !noalias !147
  store <2 x ptr> %reverse529, ptr %i.dz, align 8, !tbaa !63, !alias.scope !148, !noalias !147
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %scalar.ph.preheader, label %vector.body, !llvm.loop !112

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %vector.scevcheck, %.lr.ph.i.i
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %vector.body ] ; 5 uses
  %i.eb = sub nsw i64 %wide.trip.count.i.i, %indvars.iv.i.i.ph
  %xtraiter = and i64 %i.eb, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ec = trunc nuw i64 %indvars.iv.i.i.ph to i32 ; 2 uses
  %i.ed = add i32 %i.cb, %i.ec
  %i.ee = xor i32 %i.ec, -1
  %i.ef = add i32 %i.bz, %i.ee
  %i.eg = zext i32 %i.ef to i64
  %i.eh = zext i32 %i.ed to i64
  %i.ei = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !56
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.eg
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !63
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.prol, %scalar.ph.prol ]
  %i.el = add nsw i64 %wide.trip.count.i.i, -1
  %i.em = icmp eq i64 %indvars.iv.i.i.ph, %i.el
  br i1 %i.em, label %.critedge288.i, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i32 1, %i.cb
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.i.i.unr, %scalar.ph.preheader.new ], [ %indvars.iv.next.i.i.1, %scalar.ph ] ; 3 uses
  %i.en = trunc nuw i64 %indvars.iv.i.i to i32    ; 2 uses
  %i.eo = add i32 %i.cb, %i.en
  %i.ep = xor i32 %i.en, -1
  %i.eq = add i32 %i.bz, %i.ep
  %i.er = zext i32 %i.eq to i64
  %i.es = zext i32 %i.eo to i64
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.es
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !56
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.er
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !63
  %i.ew = trunc i64 %indvars.iv.i.i to i32        ; 2 uses
  %.reass = add i32 %i.ew, %invariant.op
  %reass.sub = sub i32 %i.bz, %i.ew
  %i.ex = add i32 %reass.sub, -2
  %i.ey = zext i32 %i.ex to i64
  %i.ez = zext i32 %.reass to i64
  %i.fa = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.ez
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !56
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.ey
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !63
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %.critedge288.i, label %scalar.ph, !llvm.loop !113

bb.m:                                             ; preds = %bb.l
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0257335.i
  store ptr null, ptr %i.fd, align 8, !tbaa !149
  %i.fe = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.167, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1349, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.ff = extractvalue { i32, ptr } %i.fe, 0      ; 2 uses
  %i.fg = extractvalue { i32, ptr } %i.fe, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.ff, ptr %i.fg, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %runFusedDecoder.exit

.critedge288.i:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %.preheader.i.i
  %.pre-phi.i = phi i64 [ 0, %.preheader.i.i ], [ %wide.trip.count.i.i, %scalar.ph ], [ %wide.trip.count.i.i, %scalar.ph.prol.loopexit ]
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.0257335.i
  store ptr %i.bx, ptr %i.fh, align 8, !tbaa !149
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.0257335.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !146
  %i.fk = tail call fastcc { i32, i64 } @DCTX_validateNodeInputs(ptr noundef nonnull %0, ptr noundef %i.fj, ptr noundef nonnull %i.bx, i64 noundef %.pre-phi.i) ; 2 uses
  %i.fl = extractvalue { i32, i64 } %i.fk, 0      ; 2 uses
  %.not268.i = icmp eq i32 %i.fl, 0
  br i1 %.not268.i, label %.critedge286.i, label %bb.n, !prof !58

bb.n:                                             ; preds = %.critedge288.i
  %i.fm = extractvalue { i32, i64 } %i.fk, 1
  %i.fn = inttoptr i64 %i.fm to ptr
  %i.fo = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.fl, ptr %i.fn, ptr nonnull @runFusedDecoder.__zl_static_error_info.170, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1356, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.fp = extractvalue { i32, ptr } %i.fo, 0
  %i.fq = extractvalue { i32, ptr } %i.fo, 1
  br label %runFusedDecoder.exit

.critedge286.i:                                   ; preds = %.critedge288.i
  %i.fr = add nuw nsw i64 %.0257335.i, 1          ; 2 uses
  %exitcond352.not.i = icmp eq i64 %i.fr, %i.ad
  br i1 %exitcond352.not.i, label %.critedge291.i, label %bb.l, !llvm.loop !114

.critedge291.i:                                   ; preds = %.critedge286.i, %.critedge286.preheader.i
  %i.fs = load i32, ptr %i.d, align 8, !tbaa !50
  %i.ft = load i64, ptr %1, align 8
  %i.fu = tail call { i32, ptr } @DTM_getTransform(ptr noundef nonnull %0, i64 %i.ft, i32 noundef %i.fs) #16 ; 2 uses
  %i.fv = extractvalue { i32, ptr } %i.fu, 0      ; 2 uses
  %i.fw = extractvalue { i32, ptr } %i.fu, 1      ; 2 uses
  %.sroa.483.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %.not270.i = icmp eq i32 %i.fv, 0
  br i1 %.not270.i, label %bb.p, label %bb.o, !prof !58

bb.o:                                             ; preds = %.critedge291.i
  %i.fx = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.fv, ptr %i.fw, ptr nonnull @runFusedDecoder.__zl_static_error_info.171, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1367, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.fy = extractvalue { i32, ptr } %i.fx, 0
  %i.fz = extractvalue { i32, ptr } %i.fx, 1
  br label %runFusedDecoder.exit

bb.p:                                             ; preds = %.critedge291.i
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ad ; 2 uses
  store ptr %i.fw, ptr %i.ga, align 8, !tbaa !146
  %i.gb = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.gc = load i32, ptr %i.s, align 4, !tbaa !76
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 3
  %i.gf = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.gb, i64 noundef %i.ge) #16 ; 9 uses
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.q, label %.preheader.i303

.preheader.i303:                                  ; preds = %bb.p
  %i.gh = load i32, ptr %i.s, align 4, !tbaa !76  ; 9 uses
  %.not.i304 = icmp eq i32 %i.gh, 0
  br i1 %.not.i304, label %.critedge293.i, label %.lr.ph.i305

.lr.ph.i305:                                      ; preds = %.preheader.i303
  %i.gi = load i32, ptr %i.q, align 8, !tbaa !75  ; 9 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !52 ; 9 uses
  %wide.trip.count.i306 = zext i32 %i.gh to i64   ; 10 uses
  %min.iters.check540 = icmp ult i32 %i.gh, 39
  br i1 %min.iters.check540, label %scalar.ph539.preheader, label %vector.scevcheck530

vector.scevcheck530:                              ; preds = %.lr.ph.i305
  %i.gl = add nsw i64 %wide.trip.count.i306, -1   ; 2 uses
  %i.gm = add i32 %i.gh, -1
  %i.gn = trunc i64 %i.gl to i32                  ; 2 uses
  %i.go = icmp ult i32 %i.gm, %i.gn
  %i.gp = xor i32 %i.gi, -1
  %i.gq = icmp ult i32 %i.gp, %i.gn
  %i.gr = icmp ugt i64 %i.gl, 4294967295
  %i.gs = or i1 %i.gq, %i.gr
  %i.gt = or i1 %i.go, %i.gs
  br i1 %i.gt, label %scalar.ph539.preheader, label %vector.memcheck531

vector.memcheck531:                               ; preds = %vector.scevcheck530
  %i.gu = add i32 %i.gh, -1
  %i.gv = zext i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = shl nuw nsw i64 %wide.trip.count.i306, 3
  %16 = add nuw nsw i64 %i.gw, 8                  ; 2 uses
  %17 = sub nsw i64 %16, %i.gx
  %i.gy = getelementptr i8, ptr %i.gf, i64 %17
  %scevgep533 = getelementptr i8, ptr %i.gf, i64 %16
  %i.gz = zext i32 %i.gi to i64                   ; 2 uses
  %i.ha = mul nuw nsw i64 %i.gz, 24
  %scevgep534 = getelementptr i8, ptr %i.gk, i64 %i.ha
  %i.hb = add nuw nsw i64 %i.gz, %wide.trip.count.i306
  %i.hc = mul nuw nsw i64 %i.hb, 24
  %i.hd = getelementptr i8, ptr %i.gk, i64 %i.hc
  %scevgep535 = getelementptr i8, ptr %i.hd, i64 -16
  %bound0536 = icmp ult ptr %i.gy, %scevgep535
  %bound1537 = icmp ult ptr %scevgep534, %scevgep533
  %found.conflict538 = and i1 %bound0536, %bound1537
  br i1 %found.conflict538, label %scalar.ph539.preheader, label %vector.ph541

vector.ph541:                                     ; preds = %vector.memcheck531
  %i.he = and i64 %wide.trip.count.i306, 3        ; 2 uses
  %i.hf = icmp eq i64 %i.he, 0
  %i.hg = select i1 %i.hf, i64 4, i64 %i.he
  %n.vec542 = sub nsw i64 %wide.trip.count.i306, %i.hg ; 2 uses
  br label %vector.body543

vector.body543:                                   ; preds = %vector.body543, %vector.ph541
  %index544 = phi i64 [ 0, %vector.ph541 ], [ %index.next547, %vector.body543 ] ; 2 uses
  %i.hh = trunc i64 %index544 to i32              ; 5 uses
  %i.hi = or disjoint i32 %i.hh, 1
  %i.hj = or disjoint i32 %i.hh, 2
  %i.hk = or disjoint i32 %i.hh, 3
  %i.hl = add i32 %i.gi, %i.hh
  %i.hm = add i32 %i.gi, %i.hi
  %i.hn = add i32 %i.gi, %i.hj
  %i.ho = add i32 %i.gi, %i.hk
  %i.hp = xor i32 %i.hh, -1
  %i.hq = add i32 %i.gh, %i.hp
  %i.hr = zext i32 %i.hq to i64
  %i.hs = zext i32 %i.hl to i64
  %i.ht = zext i32 %i.hm to i64
  %i.hu = zext i32 %i.hn to i64
  %i.hv = zext i32 %i.ho to i64
  %i.hw = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.hs
  %i.hx = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.ht
  %i.hy = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.hu
  %i.hz = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.hv
  %i.ia = load ptr, ptr %i.hw, align 8, !tbaa !56, !alias.scope !150
  %i.ib = load ptr, ptr %i.hx, align 8, !tbaa !56, !alias.scope !150
  %i.ic = insertelement <2 x ptr> poison, ptr %i.ib, i64 0
  %reverse545 = insertelement <2 x ptr> %i.ic, ptr %i.ia, i64 1
  %i.id = load ptr, ptr %i.hy, align 8, !tbaa !56, !alias.scope !150
  %i.ie = load ptr, ptr %i.hz, align 8, !tbaa !56, !alias.scope !150
  %i.if = insertelement <2 x ptr> poison, ptr %i.ie, i64 0
  %reverse546 = insertelement <2 x ptr> %i.if, ptr %i.id, i64 1
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.hr ; 2 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 -8
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 -24
  store <2 x ptr> %reverse545, ptr %i.ih, align 8, !tbaa !63, !alias.scope !151, !noalias !150
  store <2 x ptr> %reverse546, ptr %i.ii, align 8, !tbaa !63, !alias.scope !151, !noalias !150
  %index.next547 = add nuw i64 %index544, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next547, %n.vec542
  br i1 %i.ij, label %scalar.ph539.preheader, label %vector.body543, !llvm.loop !118

scalar.ph539.preheader:                           ; preds = %vector.body543, %vector.memcheck531, %vector.scevcheck530, %.lr.ph.i305
  %indvars.iv.i307.ph = phi i64 [ 0, %vector.memcheck531 ], [ 0, %vector.scevcheck530 ], [ 0, %.lr.ph.i305 ], [ %n.vec542, %vector.body543 ] ; 5 uses
  %i.ik = sub nsw i64 %wide.trip.count.i306, %indvars.iv.i307.ph
  %xtraiter587 = and i64 %i.ik, 1
  %lcmp.mod588.not = icmp eq i64 %xtraiter587, 0
  br i1 %lcmp.mod588.not, label %scalar.ph539.prol.loopexit, label %scalar.ph539.prol

scalar.ph539.prol:                                ; preds = %scalar.ph539.preheader
  %i.il = trunc nuw i64 %indvars.iv.i307.ph to i32 ; 2 uses
  %i.im = add i32 %i.gi, %i.il
  %i.in = xor i32 %i.il, -1
  %i.io = add i32 %i.gh, %i.in
  %i.ip = zext i32 %i.io to i64
  %i.iq = zext i32 %i.im to i64
  %i.ir = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !56
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ip
  store ptr %i.is, ptr %i.it, align 8, !tbaa !63
  %indvars.iv.next.i308.prol = add nuw nsw i64 %indvars.iv.i307.ph, 1
  br label %scalar.ph539.prol.loopexit

scalar.ph539.prol.loopexit:                       ; preds = %scalar.ph539.prol, %scalar.ph539.preheader
  %indvars.iv.i307.unr = phi i64 [ %indvars.iv.i307.ph, %scalar.ph539.preheader ], [ %indvars.iv.next.i308.prol, %scalar.ph539.prol ]
  %i.iu = add nsw i64 %wide.trip.count.i306, -1
  %i.iv = icmp eq i64 %indvars.iv.i307.ph, %i.iu
  br i1 %i.iv, label %.critedge293.i, label %scalar.ph539.preheader.new

scalar.ph539.preheader.new:                       ; preds = %scalar.ph539.prol.loopexit
  %invariant.op625 = add i32 1, %i.gi
  br label %scalar.ph539

scalar.ph539:                                     ; preds = %scalar.ph539, %scalar.ph539.preheader.new
  %indvars.iv.i307 = phi i64 [ %indvars.iv.i307.unr, %scalar.ph539.preheader.new ], [ %indvars.iv.next.i308.1, %scalar.ph539 ] ; 3 uses
  %i.iw = trunc nuw i64 %indvars.iv.i307 to i32   ; 2 uses
  %i.ix = add i32 %i.gi, %i.iw
  %i.iy = xor i32 %i.iw, -1
  %i.iz = add i32 %i.gh, %i.iy
  %i.ja = zext i32 %i.iz to i64
  %i.jb = zext i32 %i.ix to i64
  %i.jc = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.jb
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !56
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.ja
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !63
  %i.jf = trunc i64 %indvars.iv.i307 to i32       ; 2 uses
  %.reass626 = add i32 %i.jf, %invariant.op625
  %reass.sub603 = sub i32 %i.gh, %i.jf
  %i.jg = add i32 %reass.sub603, -2
  %i.jh = zext i32 %i.jg to i64
  %i.ji = zext i32 %.reass626 to i64
  %i.jj = getelementptr inbounds nuw [24 x i8], ptr %i.gk, i64 %i.ji
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !56
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %i.jh
  store ptr %i.jk, ptr %i.jl, align 8, !tbaa !63
  %indvars.iv.next.i308.1 = add nuw nsw i64 %indvars.iv.i307, 2 ; 2 uses
  %exitcond.not.i309.1 = icmp eq i64 %indvars.iv.next.i308.1, %wide.trip.count.i306
  br i1 %exitcond.not.i309.1, label %.critedge293.i, label %scalar.ph539, !llvm.loop !119

bb.q:                                             ; preds = %bb.p
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ad
  store ptr null, ptr %i.jm, align 8, !tbaa !149
  %i.jn = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.172, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1370, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.jo = extractvalue { i32, ptr } %i.jn, 0      ; 2 uses
  %i.jp = extractvalue { i32, ptr } %i.jn, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.jo, ptr %i.jp, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  br label %runFusedDecoder.exit

.critedge293.i:                                   ; preds = %scalar.ph539.prol.loopexit, %scalar.ph539, %.preheader.i303
  %.pre-phi418 = phi i64 [ 0, %.preheader.i303 ], [ %wide.trip.count.i306, %scalar.ph539 ], [ %wide.trip.count.i306, %scalar.ph539.prol.loopexit ]
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.ad
  store ptr %i.gf, ptr %i.jq, align 8, !tbaa !149
  %i.jr = load ptr, ptr %i.ga, align 8, !tbaa !146
  %i.js = tail call fastcc { i32, i64 } @DCTX_validateNodeInputs(ptr noundef nonnull %0, ptr noundef %i.jr, ptr noundef nonnull %i.gf, i64 noundef %.pre-phi418) ; 2 uses
  %i.jt = extractvalue { i32, i64 } %i.js, 0      ; 2 uses
  %.not272.i = icmp eq i32 %i.jt, 0
  br i1 %.not272.i, label %bb.s, label %bb.r, !prof !58

bb.r:                                             ; preds = %.critedge293.i
  %i.ju = extractvalue { i32, i64 } %i.js, 1
  %i.jv = inttoptr i64 %i.ju to ptr
  %i.jw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %10, i32 %i.jt, ptr %i.jv, ptr nonnull @runFusedDecoder.__zl_static_error_info.175, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1377, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.jx = extractvalue { i32, ptr } %i.jw, 0
  %i.jy = extractvalue { i32, ptr } %i.jw, 1
  br label %runFusedDecoder.exit

bb.s:                                             ; preds = %.critedge293.i
  %i.jz = shl nuw nsw i64 %i.ae, 4                ; 2 uses
  %i.ka = load ptr, ptr %i.ag, align 8, !tbaa !40
  %i.kb = tail call ptr @ALLOC_Arena_malloc(ptr noundef %i.ka, i64 noundef %i.jz) #16 ; 4 uses
  %.not273.i = icmp eq ptr %i.kb, null
  br i1 %.not273.i, label %bb.t, label %.critedge295.preheader.i, !prof !45

.critedge295.preheader.i:                         ; preds = %bb.s
  br i1 %.not265332.not.i, label %.critedge297.i, label %.lr.ph339.i

.lr.ph339.i:                                      ; preds = %.critedge295.preheader.i
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %.sroa.6.0..sroa_idx317.i = getelementptr inbounds nuw i8, ptr %9, i64 4 ; 2 uses
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ke = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @runFusedDecoder.__zl_static_error_info.179, ptr noundef nonnull %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.147, i32 noundef 1381, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.kf = extractvalue { i32, ptr } %i.ke, 0      ; 2 uses
  %i.kg = extractvalue { i32, ptr } %i.ke, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kf, ptr %i.kg, ptr noundef nonnull @.str.152, i64 noundef %i.jz, ptr noundef nonnull @.str.153) #16
  br label %runFusedDecoder.exit

bb.u:                                             ; preds = %.critedge295.i, %.lr.ph339.i
  %.0256338.i = phi i64 [ 0, %.lr.ph339.i ], [ %i.kw, %.critedge295.i ] ; 3 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %.0256338.i
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !79 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !152 ; 4 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 16
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !153 ; 2 uses
  %i.kn = load ptr, ptr %i.kc, align 8
  %i.ko = load i64, ptr %i.kd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16, !noalias !154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false), !noalias !154
  %i.kp = add i64 %i.km, %i.kk                    ; 4 uses
  %.not.i301.i = icmp ult i64 %i.kp, %i.kk
  br i1 %.not.i301.i, label %bb.v, label %.critedge.i.i, !prof !45

bb.v:                                             ; preds = %bb.u
  %i.kq = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_RBuffer_slice.__zl_static_error_info, ptr noundef nonnull %8, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 94, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.207, i64 noundef %i.kp, i64 noundef %i.kk) #16, !noalias !154
  br label %ZL_RBuffer_slice.exit.i

.critedge.i.i:                                    ; preds = %bb.u
  %.not32.i.i = icmp ugt i64 %i.kp, %i.ko
  br i1 %.not32.i.i, label %bb.w, label %ZL_RBuffer_slice.exit.thread.i, !prof !45

bb.w:                                             ; preds = %.critedge.i.i
  %i.kr = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_RBuffer_slice.__zl_static_error_info.208, ptr noundef nonnull %8, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 95, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.210, i64 noundef %i.kp, i64 noundef %i.ko) #16, !noalias !154
  br label %ZL_RBuffer_slice.exit.i

ZL_RBuffer_slice.exit.thread.i:                   ; preds = %.critedge.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kn, i64 %i.kk ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !154
  store i32 0, ptr %9, align 8, !tbaa !48
  store i32 0, ptr %.sroa.6.0..sroa_idx317.i, align 4
  store ptr %i.ks, ptr %.sroa.483.0..sroa_idx.i, align 8, !tbaa !71
  br label %.critedge295.i

ZL_RBuffer_slice.exit.i:                          ; preds = %bb.w, %bb.v
  %.sink396.i = phi { i32, ptr } [ %i.kq, %bb.v ], [ %i.kr, %bb.w ] ; 2 uses
  %i.kt = extractvalue { i32, ptr } %.sink396.i, 0 ; 4 uses
  %i.ku = extractvalue { i32, ptr } %.sink396.i, 1 ; 4 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.kt, ptr %i.ku, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16, !noalias !154
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16, !noalias !154
  store i32 %i.kt, ptr %9, align 8, !tbaa !48
  store i32 0, ptr %.sroa.6.0..sroa_idx317.i, align 4
end_hunk_1
begin_hunk_2_@DCTX_runDecoder:bb.a
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !84
  %i.qg = icmp eq i32 %i.qf, 1
  br i1 %i.qg, label %bb.at, label %.critedge236

bb.at:                                            ; preds = %bb.as
  %i.qh = zext i32 %i.r to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !85
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !48
  %i.ql = zext i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !52
  %i.qo = getelementptr inbounds nuw [24 x i8], ptr %i.qn, i64 %i.qh
  %i.qp = getelementptr inbounds nuw [24 x i8], ptr %i.qo, i64 %i.u
  %i.qq = getelementptr inbounds nuw [24 x i8], ptr %i.qp, i64 %i.ql ; 5 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 3 uses
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !64
  %.not217 = icmp eq ptr %i.qs, null
  br i1 %.not217, label %.critedge236, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.qt = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qt, i8 0, i64 24, i1 false)
  %i.qu = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #17
  store ptr %i.qu, ptr %7, align 8, !tbaa !44
  %i.qv = load ptr, ptr %i.qr, align 8, !tbaa !64 ; 6 uses
  %i.qw = tail call fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInputs(ptr noundef %i.qv) ; 2 uses
  %i.qx = extractvalue { i32, i64 } %i.qw, 0      ; 2 uses
  %.not.i253 = icmp eq i32 %i.qx, 0
  br i1 %.not.i253, label %bb.aw, label %bb.av, !prof !58

bb.av:                                            ; preds = %bb.au
  %i.qy = extractvalue { i32, i64 } %i.qw, 1
  %i.qz = inttoptr i64 %i.qy to ptr
  %i.ra = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.qx, ptr %i.qz, ptr nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 563, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.rb = extractvalue { i32, ptr } %i.ra, 0
  %i.rc = extractvalue { i32, ptr } %i.ra, 1
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.aw:                                            ; preds = %bb.au
  %i.rd = load ptr, ptr %i.qr, align 8, !tbaa !64
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 32
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !88
  %i.rg = icmp eq ptr %i.qq, %i.rf
  br i1 %i.rg, label %bb.ax, label %ZL_AppendToOutputOptimization_preTransformHook.exit.thread

bb.ax:                                            ; preds = %bb.aw
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.ri = load i64, ptr %i.rh, align 8, !tbaa !68 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qv, i64 16
  %i.rk = load i64, ptr %i.rj, align 8, !tbaa !89 ; 2 uses
  %.not57.i = icmp eq i64 %i.ri, %i.rk
  br i1 %.not57.i, label %bb.az, label %bb.ay, !prof !58

bb.ay:                                            ; preds = %bb.ax
  %i.rl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info.188, ptr noundef nonnull %7, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 570, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.191, i64 noundef %i.ri, i64 noundef %i.rk) #16 ; 2 uses
  %i.rm = extractvalue { i32, ptr } %i.rl, 0      ; 2 uses
  %i.rn = extractvalue { i32, ptr } %i.rl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.rm, ptr %i.rn, ptr noundef nonnull @.str.192) #16
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.az:                                            ; preds = %bb.ax
  %i.ro = load ptr, ptr %i.qq, align 8, !tbaa !56
  %i.rp = tail call ptr @ZL_Data_wPtr(ptr noundef %i.ro) #16 ; 2 uses
  %i.rq = load ptr, ptr %i.qq, align 8, !tbaa !56
  %i.rr = tail call i64 @STREAM_byteCapacity(ptr noundef %i.rq) #16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rp, i64 %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qv, i64 48 ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !69 ; 3 uses
  %i.rv = ptrtoint ptr %i.rs to i64
  %i.rw = ptrtoint ptr %i.ru to i64               ; 2 uses
  %i.rx = sub i64 %i.rv, %i.rw                    ; 3 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %i.qv, i64 40 ; 4 uses
  %i.rz = load ptr, ptr %i.ry, align 8, !tbaa !70 ; 4 uses
  %i.sa = icmp ugt ptr %i.ru, %i.rz
  br i1 %i.sa, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %i.sb = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !48
  %i.sc = icmp sgt i32 %i.sb, 63
  br i1 %i.sc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.sd = ptrtoint ptr %i.rz to i64
  %i.se = sub i64 %i.rw, %i.sd
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 580, ptr noundef nonnull @.str.193, i64 noundef %i.rx, i64 noundef %i.se) #16
  %.pre.i256 = load ptr, ptr %i.ry, align 8, !tbaa !70
  %.pre61.i = load ptr, ptr %i.rt, align 8, !tbaa !69
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.sf = phi ptr [ %i.ru, %bb.ba ], [ %.pre61.i, %bb.bb ]
  %i.sg = phi ptr [ %i.rz, %bb.ba ], [ %.pre.i256, %bb.bb ]
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.sg, ptr align 1 %i.sf, i64 %i.rx, i1 false)
  %.pre62.i = load ptr, ptr %i.ry, align 8, !tbaa !70
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.az
  %i.sh = phi ptr [ %.pre62.i, %bb.bc ], [ %i.rz, %bb.az ]
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 %i.rx ; 2 uses
  store ptr %i.si, ptr %i.ry, align 8, !tbaa !70
  %i.sj = ptrtoint ptr %i.si to i64
  %i.sk = ptrtoint ptr %i.rp to i64
  %i.sl = sub i64 %i.sj, %i.sk                    ; 2 uses
  %i.sm = load ptr, ptr %i.qq, align 8, !tbaa !56
  %i.sn = tail call { i32, i64 } @ZL_Data_commit(ptr noundef %i.sm, i64 noundef %i.sl) #16 ; 2 uses
  %i.so = extractvalue { i32, i64 } %i.sn, 0      ; 2 uses
  %.not58.i = icmp eq i32 %i.so, 0
  br i1 %.not58.i, label %bb.bf, label %bb.be, !prof !58

bb.be:                                            ; preds = %bb.bd
  %i.sp = extractvalue { i32, i64 } %i.sn, 1
  %i.sq = inttoptr i64 %i.sp to ptr
  %i.sr = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %7, i32 %i.so, ptr %i.sq, ptr nonnull @ZL_AppendToOutputOptimization_preTransformHook.__zl_static_error_info.194, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 586, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.ss = extractvalue { i32, ptr } %i.sr, 0
  %i.st = extractvalue { i32, ptr } %i.sr, 1
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit

bb.bf:                                            ; preds = %bb.bd
  %i.su = load i32, ptr @ZL_g_logLevel, align 4, !tbaa !48
  %i.sv = icmp sgt i32 %i.su, 63
  br i1 %i.sv, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  tail call void (ptr, ptr, i32, ptr, ...) @ZL_LOG_func(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.187, i32 noundef 589, ptr noundef nonnull @.str.195, i64 noundef %i.sl) #16
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.qv, i8 0, i64 56, i1 false)
  br label %ZL_AppendToOutputOptimization_preTransformHook.exit.thread

ZL_AppendToOutputOptimization_preTransformHook.exit.thread: ; preds = %bb.bh, %bb.aw
  %.sroa.17.2.i.ph = phi i64 [ 0, %bb.aw ], [ 1, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %bb.bj

ZL_AppendToOutputOptimization_preTransformHook.exit: ; preds = %bb.av, %bb.ay, %bb.be
  %.sroa.045.2.i = phi i32 [ %i.rb, %bb.av ], [ %i.ss, %bb.be ], [ %i.rm, %bb.ay ] ; 2 uses
  %.sroa.17.2.i.in = phi ptr [ %i.rc, %bb.av ], [ %i.st, %bb.be ], [ %i.rn, %bb.ay ] ; 2 uses
  %.sroa.17.2.i = ptrtoint ptr %.sroa.17.2.i.in to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not218 = icmp eq i32 %.sroa.045.2.i, 0
  br i1 %.not218, label %bb.bj, label %bb.bi, !prof !175

bb.bi:                                            ; preds = %ZL_AppendToOutputOptimization_preTransformHook.exit
  %i.sw = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %.sroa.045.2.i, ptr %.sroa.17.2.i.in, ptr nonnull @DCTX_runDecoder.__zl_static_error_info.23, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1484, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.sx = extractvalue { i32, ptr } %i.sw, 0
  %i.sy = extractvalue { i32, ptr } %i.sw, 1
  %i.sz = ptrtoint ptr %i.sy to i64
  br label %.critedge

bb.bj:                                            ; preds = %ZL_AppendToOutputOptimization_preTransformHook.exit, %ZL_AppendToOutputOptimization_preTransformHook.exit.thread
  %.sroa.17.2.i338 = phi i64 [ %.sroa.17.2.i.ph, %ZL_AppendToOutputOptimization_preTransformHook.exit.thread ], [ %.sroa.17.2.i, %ZL_AppendToOutputOptimization_preTransformHook.exit ]
  %i.ta = icmp eq i64 %.sroa.17.2.i338, 0
  br i1 %i.ta, label %..critedge236_crit_edge, label %.critedge

..critedge236_crit_edge:                          ; preds = %bb.bj
  %.pre = load i32, ptr %i.s, align 4, !tbaa !76
  %.pre416 = zext i32 %.pre to i64
  br label %.critedge236

.critedge236:                                     ; preds = %..critedge236_crit_edge, %bb.at, %bb.as
  %.pre-phi = phi i64 [ %.pre416, %..critedge236_crit_edge ], [ %i.u, %bb.at ], [ %i.u, %bb.as ]
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 1440 ; 4 uses
  %i.tc = load ptr, ptr %i.tb, align 8, !tbaa !39
  %i.td = shl nuw nsw i64 %.pre-phi, 3
  %i.te = call ptr @ALLOC_Arena_malloc(ptr noundef %i.tc, i64 noundef %i.td) #16 ; 10 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %DCTX_getNodeInputs.exit, label %.preheader.i258

.preheader.i258:                                  ; preds = %.critedge236
  %i.tg = load i32, ptr %i.s, align 4, !tbaa !76  ; 9 uses
  %.not.i259 = icmp eq i32 %i.tg, 0
  br i1 %.not.i259, label %.critedge238, label %.lr.ph.i260

.lr.ph.i260:                                      ; preds = %.preheader.i258
  %i.th = load i32, ptr %i.q, align 8, !tbaa !75  ; 9 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %0, i64 1360
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !52 ; 9 uses
  %wide.trip.count.i = zext i32 %i.tg to i64      ; 8 uses
  %min.iters.check560 = icmp ult i32 %i.tg, 39
  br i1 %min.iters.check560, label %scalar.ph559.preheader, label %vector.scevcheck550

vector.scevcheck550:                              ; preds = %.lr.ph.i260
  %i.tk = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %i.tl = add i32 %i.tg, -1
  %i.tm = trunc i64 %i.tk to i32                  ; 2 uses
  %i.tn = icmp ult i32 %i.tl, %i.tm
  %i.to = xor i32 %i.th, -1
  %i.tp = icmp ult i32 %i.to, %i.tm
  %i.tq = icmp ugt i64 %i.tk, 4294967295
  %i.tr = or i1 %i.tp, %i.tq
  %i.ts = or i1 %i.tn, %i.tr
  br i1 %i.ts, label %scalar.ph559.preheader, label %vector.memcheck551

vector.memcheck551:                               ; preds = %vector.scevcheck550
  %i.tt = add i32 %i.tg, -1
  %i.tu = zext i32 %i.tt to i64
  %i.tv = shl nuw nsw i64 %i.tu, 3
  %i.tw = shl nuw nsw i64 %wide.trip.count.i, 3
  %18 = add nuw nsw i64 %i.tv, 8                  ; 2 uses
  %19 = sub nsw i64 %18, %i.tw
  %i.tx = getelementptr i8, ptr %i.te, i64 %19
  %scevgep553 = getelementptr i8, ptr %i.te, i64 %18
  %i.ty = zext i32 %i.th to i64                   ; 2 uses
  %i.tz = mul nuw nsw i64 %i.ty, 24
  %scevgep554 = getelementptr i8, ptr %i.tj, i64 %i.tz
  %i.ua = add nuw nsw i64 %i.ty, %wide.trip.count.i
  %i.ub = mul nuw nsw i64 %i.ua, 24
  %i.uc = getelementptr i8, ptr %i.tj, i64 %i.ub
  %scevgep555 = getelementptr i8, ptr %i.uc, i64 -16
  %bound0556 = icmp ult ptr %i.tx, %scevgep555
  %bound1557 = icmp ult ptr %scevgep554, %scevgep553
  %found.conflict558 = and i1 %bound0556, %bound1557
  br i1 %found.conflict558, label %scalar.ph559.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %vector.memcheck551
  %i.ud = and i64 %wide.trip.count.i, 3           ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 0
  %i.uf = select i1 %i.ue, i64 4, i64 %i.ud
  %n.vec562 = sub nsw i64 %wide.trip.count.i, %i.uf ; 2 uses
  br label %vector.body563

vector.body563:                                   ; preds = %vector.body563, %vector.ph561
  %index564 = phi i64 [ 0, %vector.ph561 ], [ %index.next567, %vector.body563 ] ; 2 uses
  %i.ug = trunc i64 %index564 to i32              ; 5 uses
  %i.uh = or disjoint i32 %i.ug, 1
  %i.ui = or disjoint i32 %i.ug, 2
  %i.uj = or disjoint i32 %i.ug, 3
  %i.uk = add i32 %i.th, %i.ug
  %i.ul = add i32 %i.th, %i.uh
  %i.um = add i32 %i.th, %i.ui
  %i.un = add i32 %i.th, %i.uj
  %i.uo = xor i32 %i.ug, -1
  %i.up = add i32 %i.tg, %i.uo
  %i.uq = zext i32 %i.up to i64
  %i.ur = zext i32 %i.uk to i64
  %i.us = zext i32 %i.ul to i64
  %i.ut = zext i32 %i.um to i64
  %i.uu = zext i32 %i.un to i64
  %i.uv = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.ur
  %i.uw = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.us
  %i.ux = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.ut
  %i.uy = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.uu
  %i.uz = load ptr, ptr %i.uv, align 8, !tbaa !56, !alias.scope !176
  %i.va = load ptr, ptr %i.uw, align 8, !tbaa !56, !alias.scope !176
  %i.vb = insertelement <2 x ptr> poison, ptr %i.va, i64 0
  %reverse565 = insertelement <2 x ptr> %i.vb, ptr %i.uz, i64 1
  %i.vc = load ptr, ptr %i.ux, align 8, !tbaa !56, !alias.scope !176
  %i.vd = load ptr, ptr %i.uy, align 8, !tbaa !56, !alias.scope !176
  %i.ve = insertelement <2 x ptr> poison, ptr %i.vd, i64 0
  %reverse566 = insertelement <2 x ptr> %i.ve, ptr %i.vc, i64 1
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.uq ; 2 uses
  %i.vg = getelementptr inbounds i8, ptr %i.vf, i64 -8
  %i.vh = getelementptr inbounds i8, ptr %i.vf, i64 -24
  store <2 x ptr> %reverse565, ptr %i.vg, align 8, !tbaa !63, !alias.scope !177, !noalias !176
  store <2 x ptr> %reverse566, ptr %i.vh, align 8, !tbaa !63, !alias.scope !177, !noalias !176
  %index.next567 = add nuw i64 %index564, 4       ; 2 uses
  %i.vi = icmp eq i64 %index.next567, %n.vec562
  br i1 %i.vi, label %scalar.ph559.preheader, label %vector.body563, !llvm.loop !134

scalar.ph559.preheader:                           ; preds = %vector.body563, %vector.memcheck551, %vector.scevcheck550, %.lr.ph.i260
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck551 ], [ 0, %vector.scevcheck550 ], [ 0, %.lr.ph.i260 ], [ %n.vec562, %vector.body563 ] ; 5 uses
  %i.vj = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter593 = and i64 %i.vj, 1
  %lcmp.mod594.not = icmp eq i64 %xtraiter593, 0
  br i1 %lcmp.mod594.not, label %scalar.ph559.prol.loopexit, label %scalar.ph559.prol

scalar.ph559.prol:                                ; preds = %scalar.ph559.preheader
  %i.vk = trunc nuw i64 %indvars.iv.i.ph to i32   ; 2 uses
  %i.vl = add i32 %i.th, %i.vk
  %i.vm = xor i32 %i.vk, -1
  %i.vn = add i32 %i.tg, %i.vm
  %i.vo = zext i32 %i.vn to i64
  %i.vp = zext i32 %i.vl to i64
  %i.vq = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.vp
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !56
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.vo
  store ptr %i.vr, ptr %i.vs, align 8, !tbaa !63
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.ph, 1
  br label %scalar.ph559.prol.loopexit

scalar.ph559.prol.loopexit:                       ; preds = %scalar.ph559.prol, %scalar.ph559.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph559.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph559.prol ]
  %i.vt = add nsw i64 %wide.trip.count.i, -1
  %i.vu = icmp eq i64 %indvars.iv.i.ph, %i.vt
  br i1 %i.vu, label %.critedge238, label %scalar.ph559.preheader.new

scalar.ph559.preheader.new:                       ; preds = %scalar.ph559.prol.loopexit
  %invariant.op627 = add i32 1, %i.th
  br label %scalar.ph559

scalar.ph559:                                     ; preds = %scalar.ph559, %scalar.ph559.preheader.new
  %indvars.iv.i = phi i64 [ %indvars.iv.i.unr, %scalar.ph559.preheader.new ], [ %indvars.iv.next.i.1, %scalar.ph559 ] ; 3 uses
  %i.vv = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  %i.vw = add i32 %i.th, %i.vv
  %i.vx = xor i32 %i.vv, -1
  %i.vy = add i32 %i.tg, %i.vx
  %i.vz = zext i32 %i.vy to i64
  %i.wa = zext i32 %i.vw to i64
  %i.wb = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.wa
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !56
  %i.wd = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.vz
  store ptr %i.wc, ptr %i.wd, align 8, !tbaa !63
  %i.we = trunc i64 %indvars.iv.i to i32          ; 2 uses
  %.reass628 = add i32 %i.we, %invariant.op627
  %reass.sub604 = sub i32 %i.tg, %i.we
  %i.wf = add i32 %reass.sub604, -2
  %i.wg = zext i32 %i.wf to i64
  %i.wh = zext i32 %.reass628 to i64
  %i.wi = getelementptr inbounds nuw [24 x i8], ptr %i.tj, i64 %i.wh
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !56
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %i.wg
  store ptr %i.wj, ptr %i.wk, align 8, !tbaa !63
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i261.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i261.1, label %.critedge238, label %scalar.ph559, !llvm.loop !135

DCTX_getNodeInputs.exit:                          ; preds = %.critedge236
  %i.wl = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DCTX_runDecoder.__zl_static_error_info.24, ptr noundef nonnull %13, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1507, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.wm = extractvalue { i32, ptr } %i.wl, 0      ; 2 uses
  %i.wn = extractvalue { i32, ptr } %i.wl, 1      ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.wm, ptr %i.wn, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  %i.wo = ptrtoint ptr %i.wn to i64
  br label %.critedge

.critedge238:                                     ; preds = %scalar.ph559.prol.loopexit, %scalar.ph559, %.preheader.i258
  %i.wp = call fastcc { i32, i64 } @DCTX_validateNodeInputs(ptr noundef nonnull %0, ptr noundef %i.h, ptr noundef nonnull %i.te, i64 noundef %i.u) ; 2 uses
  %i.wq = extractvalue { i32, i64 } %i.wp, 0      ; 2 uses
  %.not221 = icmp eq i32 %i.wq, 0
  br i1 %.not221, label %bb.bl, label %bb.bk, !prof !58

bb.bk:                                            ; preds = %.critedge238
  %i.wr = extractvalue { i32, i64 } %i.wp, 1
  %i.ws = inttoptr i64 %i.wr to ptr
  %i.wt = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.wq, ptr %i.ws, ptr nonnull @DCTX_runDecoder.__zl_static_error_info.27, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1516, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.wu = extractvalue { i32, ptr } %i.wt, 0
  %i.wv = extractvalue { i32, ptr } %i.wt, 1
  %i.ww = ptrtoint ptr %i.wv to i64
  br label %.critedge

bb.bl:                                            ; preds = %.critedge238
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.wy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !152 ; 4 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !153 ; 2 uses
  %i.xc = load ptr, ptr %i.wx, align 8
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 1400
  %i.xe = load i64, ptr %i.xd, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16, !noalias !178
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, i8 0, i64 32, i1 false), !noalias !178
  %i.xf = add i64 %i.xb, %i.wz                    ; 4 uses
  %.not.i262 = icmp ult i64 %i.xf, %i.wz
  br i1 %.not.i262, label %bb.bm, label %.critedge.i, !prof !45

bb.bm:                                            ; preds = %bb.bl
  %i.xg = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_RBuffer_slice.__zl_static_error_info, ptr noundef nonnull %6, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 94, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.207, i64 noundef %i.xf, i64 noundef %i.wz) #16, !noalias !178
  br label %ZL_RBuffer_slice.exit

.critedge.i:                                      ; preds = %bb.bl
  %.not32.i = icmp ugt i64 %i.xf, %i.xe
  br i1 %.not32.i, label %bb.bn, label %ZL_RBuffer_slice.exit.thread, !prof !45

bb.bn:                                            ; preds = %.critedge.i
  %i.xh = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_RBuffer_slice.__zl_static_error_info.208, ptr noundef nonnull %6, ptr noundef nonnull @.str.204, ptr noundef nonnull @.str.205, i32 noundef 95, i32 noundef 12, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.210, i64 noundef %i.xf, i64 noundef %i.xe) #16, !noalias !178
  br label %ZL_RBuffer_slice.exit

ZL_RBuffer_slice.exit.thread:                     ; preds = %.critedge.i
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xc, i64 %i.wz
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !178
  %.sroa.6.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx347, align 4
  br label %bb.bp

ZL_RBuffer_slice.exit:                            ; preds = %bb.bm, %bb.bn
  %.sink505 = phi { i32, ptr } [ %i.xg, %bb.bm ], [ %i.xh, %bb.bn ] ; 2 uses
  %i.xj = extractvalue { i32, ptr } %.sink505, 0  ; 3 uses
  %i.xk = extractvalue { i32, ptr } %.sink505, 1  ; 3 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.xj, ptr %i.xk, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16, !noalias !178
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx, align 4
  %.not222 = icmp eq i32 %i.xj, 0
  br i1 %.not222, label %bb.bp, label %bb.bo, !prof !155

bb.bo:                                            ; preds = %ZL_RBuffer_slice.exit
  %i.xl = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %13, i32 %i.xj, ptr %i.xk, ptr nonnull @DCTX_runDecoder.__zl_static_error_info.28, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, i32 noundef 1523, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.xm = extractvalue { i32, ptr } %i.xl, 0
  %i.xn = extractvalue { i32, ptr } %i.xl, 1
  %i.xo = ptrtoint ptr %i.xn to i64
  br label %.critedge

bb.bp:                                            ; preds = %ZL_RBuffer_slice.exit.thread, %ZL_RBuffer_slice.exit
  %.sink.i350.ph = phi i64 [ 0, %ZL_RBuffer_slice.exit ], [ %i.xb, %ZL_RBuffer_slice.exit.thread ]
  %.sroa.0311.0.ph = phi ptr [ %i.xk, %ZL_RBuffer_slice.exit ], [ %i.xi, %ZL_RBuffer_slice.exit.thread ]
  %i.xp = load ptr, ptr %i.tb, align 8, !tbaa !39
  %i.xq = load i32, ptr %i.qe, align 4, !tbaa !84
  %i.xr = zext i32 %i.xq to i64
  %i.xs = shl nuw nsw i64 %i.xr, 2
  %i.xt = call ptr @ALLOC_Arena_malloc(ptr noundef %i.xp, i64 noundef %i.xs) #16 ; 9 uses
  %i.xu = icmp eq ptr %i.xt, null
  br i1 %i.xu, label %DCTX_getRegeneratedStreamIDs.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.xv = load i32, ptr %i.q, align 8, !tbaa !75
  %i.xw = load i32, ptr %i.s, align 4, !tbaa !76
  %i.xx = add i32 %i.xw, %i.xv
  %i.xy = load i32, ptr %i.qe, align 4, !tbaa !84
  %.not.i263 = icmp eq i32 %i.xy, 0
  br i1 %.not.i263, label %.critedge240, label %.lr.ph.i264

end_hunk_2
begin_hunk_3_@ZL_decompress:bb.a
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !39
  call void @ALLOC_Arena_freeArena(ptr noundef %i.z) #16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 1448
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !40
  call void @ALLOC_Arena_freeArena(ptr noundef %i.ab) #16
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !38
  call void @ALLOC_Arena_freeArena(ptr noundef %i.ac) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 1432
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !37
  call void @ALLOC_Arena_freeArena(ptr noundef %i.ae) #16
  call void @ZL_OC_destroy(ptr noundef nonnull %i.i) #16
  call void @ZL_free(ptr noundef nonnull %i.c) #16
  %.fca.0.load.pre = load i32, ptr %6, align 8
  %.fca.1.load.pre = load i64, ptr %i.t, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.fca.1.load = phi i64 [ %i.g, %bb.b ], [ %.fca.1.load.pre, %bb.d ]
  %.fca.0.load = phi i32 [ %i.e, %bb.b ], [ %.fca.0.load.pre, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.fca.0.load, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.fca.1.load, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @ZL_NULL_getOperationContext(ptr noundef) local_unnamed_addr #8

declare void @ZL_E_clearInfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ZL_DCtx_getErrorContextString(ptr noundef %0, i32 %1, i64 %2) local_unnamed_addr #0 {
bb.a:
  %.not3 = icmp eq i32 %1, 0
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.b = inttoptr i64 %2 to ptr
  %i.c = tail call ptr @ZL_OC_getErrorContextString(ptr noundef nonnull %i.a, i32 %1, ptr %i.b) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @ZL_OC_getErrorContextString(ptr noundef, i32, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define ptr @ZL_DCtx_getErrorContextString_fromError(ptr noundef %0, i32 %1, ptr %2) local_unnamed_addr #0 {
bb.a:
  %.not4 = icmp eq i32 %1, 0
  br i1 %.not4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.b = tail call ptr @ZL_OC_getErrorContextString(ptr noundef nonnull %i.a, i32 %1, ptr %2) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define { ptr, i64 } @ZL_DCtx_getWarnings(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.b = tail call { ptr, i64 } @ZL_OC_getWarnings(ptr noundef nonnull %i.a) #16
  ret { ptr, i64 } %i.b
}

declare { ptr, i64 } @ZL_OC_getWarnings(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @DCtx_getFrameHeader(ptr nofree noundef readnone captures(ret: address, provenance) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1216
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @DCtx_getNbInputStreams(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #17
  store ptr %i.b, ptr %2, align 8, !tbaa !44
  %i.c = zext i32 %1 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.val = load i32, ptr %i.d, align 8, !tbaa !106 ; 2 uses
  %.not = icmp ugt i32 %.val, %1
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.e = zext i32 %.val to i64
  %i.f = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @DCtx_getNbInputStreams.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.111, i32 noundef 2399, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i64 noundef %i.c, i64 noundef %i.e) #16 ; 2 uses
  %i.g = extractvalue { i32, ptr } %i.f, 0        ; 2 uses
  %i.h = extractvalue { i32, ptr } %i.f, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.g, ptr %i.h, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  %i.i = ptrtoint ptr %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !71
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.k, i64 %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76
  %i.o = zext i32 %i.n to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.09.1 = phi i32 [ 0, %bb.c ], [ %i.g, %bb.b ]
  %.sroa.4.1 = phi i64 [ %i.o, %bb.c ], [ %i.i, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define ptr @DCTX_getTrName(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %.val = load i32, ptr %i.a, align 8, !tbaa !106
  %.not = icmp ugt i32 %.val, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !71
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.g = load i32, ptr %i.f, align 8, !tbaa !50
  %i.h = load i64, ptr %i.e, align 4
  %i.i = tail call ptr @DTM_getTransformName(ptr noundef nonnull %0, i64 %i.h, i32 noundef %i.g) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare ptr @DTM_getTransformName(ptr noundef, i64, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i64 @DCTX_streamMemory(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1456
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.c = tail call i64 @ALLOC_Arena_memAllocated(ptr noundef %i.b) #16
  ret i64 %i.c
}

declare i64 @ALLOC_Arena_memAllocated(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define { i32, i64 } @ZL_DCtx_attachDecompressIntrospectionHooks(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.thread, label %bb.b, !prof !45

.thread:                                          ; preds = %bb.a
  %i.d = call { i32, ptr } (ptr, ptr, ptr, ptr, i32, i32, ptr, ...) @ZL_E_create(ptr noundef nonnull @ZL_DCtx_attachDecompressIntrospectionHooks.__zl_static_error_info, ptr noundef nonnull %2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.116, i32 noundef 2426, i32 noundef 70, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef null, ptr noundef null) #16 ; 2 uses
  %i.e = extractvalue { i32, ptr } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, ptr } %i.d, 1        ; 2 uses
  call void (i32, ptr, ptr, ...) @ZL_E_appendToMessage(i32 %i.e, ptr %i.f, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13) #16
  %i.g = ptrtoint ptr %i.f to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1680
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false), !tbaa.struct !252
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1745
  store i8 1, ptr %i.i, align 1, !tbaa !91
  br label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %.sroa.09.1 = phi i32 [ 0, %bb.b ], [ %i.e, %.thread ]
  %.sroa.4.1 = phi i64 [ 0, %bb.b ], [ %i.g, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.09.1, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.4.1, 1
  ret { i32, i64 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define noundef { i32, i64 } @ZL_DCtx_detachAllDecompressIntrospectionHooks(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1680
  tail call void @ZL_zeroes(ptr noundef nonnull %i.a, i64 noundef 64) #16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1745
  store i8 0, ptr %i.b, align 1, !tbaa !91
  ret { i32, i64 } zeroinitializer
}

; Function Attrs: nounwind uwtable
define { i32, i64 } @DCTX_initFromFrameInfo(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = icmp eq ptr %0, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %.0.i = select i1 %i.b, ptr null, ptr %i.c      ; 2 uses
  store ptr %.0.i, ptr %2, align 8, !tbaa !44
  %i.d = tail call { i32, i64 } @ZL_FrameInfo_getNumOutputs(ptr noundef %1) #16 ; 2 uses
  %i.e = extractvalue { i32, i64 } %i.d, 0        ; 2 uses
  %i.f = extractvalue { i32, i64 } %i.d, 1        ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.e, ptr %i.g, ptr nonnull @DCTX_initFromFrameInfo.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.118, i32 noundef 2450, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.i = extractvalue { i32, ptr } %i.h, 0
  %i.j = extractvalue { i32, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = insertvalue { i32, i64 } poison, i32 %i.i, 0
  %i.m = insertvalue { i32, i64 } %i.l, i64 %i.k, 1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1216
  %i.o = tail call { i32, i64 } @DFH_setFrameInfo(ptr noundef nonnull %i.n, ptr noundef %1, ptr noundef %.0.i) #16 ; 2 uses
  %i.p = extractvalue { i32, i64 } %i.o, 0        ; 2 uses
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %bb.e, label %bb.d, !prof !58

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { i32, i64 } %i.o, 1
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %2, i32 %i.p, ptr %i.r, ptr nonnull @DCTX_initFromFrameInfo.__zl_static_error_info.119, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.118, i32 noundef 2452, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0
  %i.u = extractvalue { i32, ptr } %i.s, 1
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = insertvalue { i32, i64 } poison, i32 %i.t, 0
  %i.x = insertvalue { i32, i64 } %i.w, i64 %i.v, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i64 %i.f, ptr %i.y, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1752
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !49
  tail call void @GDParams_applyDefaults(ptr noundef nonnull %i.z, ptr noundef nonnull @GDParams_default) #16
  %i.ab = tail call { i32, i64 } @GDParams_finalize(ptr noundef nonnull %i.z) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d
  %.fca.1.insert.merged = phi { i32, i64 } [ %i.x, %bb.d ], [ %i.ab, %bb.e ], [ %i.m, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret { i32, i64 } %.fca.1.insert.merged
}

declare { i32, i64 } @ZL_FrameInfo_getNumOutputs(ptr noundef) local_unnamed_addr #2

declare { i32, i64 } @DFH_setFrameInfo(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

declare void @ZL_LOG_func(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInputs(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ZL_ErrorContext, align 8    ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #17
  store ptr %i.b, ptr %1, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load i64, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8, !tbaa !89
  %i.g = icmp ult i64 %i.e, %i.f
  br i1 %i.g, label %.lr.ph, label %.critedge80

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %i.h = phi i64 [ %i.p, %.backedge ], [ %i.e, %bb.a ]
  %i.i = tail call fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInput(ptr noundef nonnull %0, i64 noundef %i.h) ; 2 uses
  %i.j = extractvalue { i32, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { i32, i64 } %i.i, 1        ; 2 uses
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.b, label %.thread52, !prof !58

bb.b:                                             ; preds = %.lr.ph
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.c, align 8, !tbaa !68
  %i.n = add i64 %i.m, 1                          ; 2 uses
  store i64 %i.n, ptr %i.c, align 8, !tbaa !68
  %.pre94 = load i64, ptr %i.d, align 8, !tbaa !89
  br label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.e
  %i.o = phi i64 [ %.pre94, %bb.c ], [ %i.ad, %bb.e ]
  %i.p = phi i64 [ %i.n, %bb.c ], [ %.pre, %bb.e ] ; 2 uses
  %i.q = icmp ult i64 %i.p, %i.o
  br i1 %i.q, label %.lr.ph, label %.critedge80

.thread52:                                        ; preds = %.lr.ph
  %i.r = inttoptr i64 %i.k to ptr
  %i.s = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.j, ptr %i.r, ptr nonnull @ZL_AppendToOutputOptimization_commitInputs.__zl_static_error_info, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.136, i32 noundef 524, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.t = extractvalue { i32, ptr } %i.s, 0
  %i.u = extractvalue { i32, ptr } %i.s, 1
  %i.v = ptrtoint ptr %i.u to i64
  br label %.critedge80

.critedge:                                        ; preds = %bb.b
  %i.w = load i64, ptr %i.d, align 8, !tbaa !89
  %i.x = add i64 %i.w, -1
  %i.y = tail call fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInput(ptr noundef nonnull %0, i64 noundef %i.x) ; 2 uses
  %i.z = extractvalue { i32, i64 } %i.y, 0        ; 2 uses
  %i.aa = extractvalue { i32, i64 } %i.y, 1       ; 2 uses
  %.not40 = icmp eq i32 %i.z, 0
  br i1 %.not40, label %bb.d, label %.thread70, !prof !58

bb.d:                                             ; preds = %.critedge
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.critedge80, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !89
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !89
  %.pre = load i64, ptr %i.c, align 8, !tbaa !68
  br label %.backedge

.thread70:                                        ; preds = %.critedge
  %i.ae = inttoptr i64 %i.aa to ptr
  %i.af = call { i32, ptr } (ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ...) @ZL_E_addFrame(ptr noundef nonnull %1, i32 %i.z, ptr %i.ae, ptr nonnull @ZL_AppendToOutputOptimization_commitInputs.__zl_static_error_info.137, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.136, i32 noundef 536, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.13) #16 ; 2 uses
  %i.ag = extractvalue { i32, ptr } %i.af, 0
  %i.ah = extractvalue { i32, ptr } %i.af, 1
  %i.ai = ptrtoint ptr %i.ah to i64
  br label %.critedge80

.critedge80:                                      ; preds = %.backedge, %bb.d, %bb.a, %.thread70, %.thread52
  %.sroa.026.2 = phi i32 [ %i.ag, %.thread70 ], [ %i.t, %.thread52 ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %.backedge ]
  %.sroa.14.2 = phi i64 [ %i.ai, %.thread70 ], [ %i.v, %.thread52 ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %.backedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  %.fca.0.insert = insertvalue { i32, i64 } poison, i32 %.sroa.026.2, 0
  %.fca.1.insert = insertvalue { i32, i64 } %.fca.0.insert, i64 %.sroa.14.2, 1
  ret { i32, i64 } %.fca.1.insert
}

declare { i32, i64 } @STREAM_attachWritableBuffer(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc { i32, i64 } @ZL_AppendToOutputOptimization_commitInput(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ZL_ErrorContext, align 8    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = tail call ptr @ZL_NULL_getOperationContext(ptr noundef null) #17
  store ptr %i.b, ptr %2, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !68
  %i.e = icmp eq i64 %1, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !66
  %.neg = xor i64 %1, -1
  %i.h = load ptr, ptr %0, align 8, !tbaa !67
  %i.i = getelementptr [24 x i8], ptr %i.h, i64 %i.g
  %i.j = getelementptr [24 x i8], ptr %i.i, i64 %.neg ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !56   ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call i32 @STREAM_isCommitted(ptr noundef nonnull %i.k) #16
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @ZL_Data_rPtr(ptr noundef nonnull %i.k) #16 ; 3 uses
  %i.o = tail call i64 @STREAM_byteSize(ptr noundef nonnull %i.k) #16 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !70
end_hunk_3
