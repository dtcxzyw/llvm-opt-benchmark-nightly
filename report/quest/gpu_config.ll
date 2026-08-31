Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/gpu_config?download=true
inline.NumInlined: 31
inline.NumDeleted: 8
begin_hunk_0_@_Z13getBoundGpuIdv:bb.a
}

declare void @_Z33error_gpuQueriedButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z24gpu_getComputeCapabilityv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z17gpu_isGpuCompiledv() local_unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_Z23gpu_isCuQuantumCompiledv() local_unnamed_addr #2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z24gpu_getNumberOfLocalGpusv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i32 -1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z18gpu_isGpuAvailablev() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z27gpu_isDirectGpuCommPossiblev() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z36gpu_getCurrentAvailableMemoryInBytesv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z25gpu_getTotalMemoryInBytesv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z26gpu_doesGpuSupportMemPoolsv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_Z30gpu_getMaxNumConcurrentThreadsv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i64 -1
}

; Function Attrs: mustprogress uwtable
define void @_Z15getBoundGpuUuidv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.std::array") align 1 captures(none) initializes((0, 17)) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define void @_Z24gpu_bindLocalGPUsToNodesv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_Z29gpu_areAnyNodesBoundToSameGpuv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuQueriedButGpuNotCompiledv()
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define void @_Z8gpu_syncv() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32error_gpuSyncedButGpuNotCompiledv()
  ret void
}

declare void @_Z32error_gpuSyncedButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_Z14gpu_allocArrayx(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z31error_gpuAllocButGpuNotCompiledv()
  ret ptr null
}

declare void @_Z31error_gpuAllocButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_deallocArrayPSt7complexIdE(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z33error_gpuDeallocButGpuNotCompiledv()
  ret void
}

declare void @_Z33error_gpuDeallocButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z22copyArrayIfGpuCompiledPSt7complexIdES1_x13CopyDirection(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

declare void @_Z30error_gpuCopyButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z23copyMatrixIfGpuCompiledPPSt7complexIdES1_x13CopyDirection(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z13gpu_copyArrayPSt7complexIdES1_x(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpuPSt7complexIdES1_x(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpuPSt7complexIdES1_x(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu5QuregPSt7complexIdES2_x(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z28assert_quregIsGpuAccelerated5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

declare void @_Z28assert_quregIsGpuAccelerated5Qureg(ptr noundef byval(%struct.Qureg) align 8) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpu5QuregPSt7complexIdES2_x(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z28assert_quregIsGpuAccelerated5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z28assert_quregIsGpuAccelerated5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpu5Qureg(ptr nofree noundef readonly byval(%struct.Qureg) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z28assert_quregIsGpuAccelerated5Qureg(ptr noundef nonnull byval(%struct.Qureg) align 8 %0)
  tail call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu8CompMatr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef) local_unnamed_addr #1

declare void @getQuESTEnv(ptr dead_on_unwind writable sret(%struct.QuESTEnv) align 4) local_unnamed_addr #1

declare void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpu8CompMatr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI8CompMatrEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu8DiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpu8DiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI8DiagMatrEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu7SuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyGpuToCpu7SuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI7SuperOpEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z16gpu_copyCpuToGpu17FullStateDiagMatr(ptr nofree noundef readonly byval(%struct.FullStateDiagMatr) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !9
  %2 = inttoptr i64 %.sroa.2.0.copyload to ptr
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  br i1 %i.a, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !12
  %.not.i = icmp eq i32 %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br i1 %.not.i, label %bb.c, label %_Z33assertHeapObjectGpuMemIsAllocatedI17FullStateDiagMatrEvT_.exit

.critedge.i:                                      ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.c

bb.c:                                             ; preds = %.critedge.i, %bb.b
  call void @_Z39error_gpuCopyButMatrixNotGpuAcceleratedv()
  br label %_Z33assertHeapObjectGpuMemIsAllocatedI17FullStateDiagMatrEvT_.exit

_Z33assertHeapObjectGpuMemIsAllocatedI17FullStateDiagMatrEvT_.exit: ; preds = %bb.b, %bb.c
  call void @_Z30error_gpuCopyButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress uwtable
define noalias noundef ptr @_Z18gpu_getCacheOfSizexx(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z39error_gpuCacheModifiedButGpuNotCompiledv()
  ret ptr null
}

declare void @_Z39error_gpuCacheModifiedButGpuNotCompiledv() local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_Z14gpu_clearCachev() local_unnamed_addr #0 {
bb.a:
  tail call void @_Z39error_gpuCacheModifiedButGpuNotCompiledv()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 0, -15) i64 @_Z25gpu_getCacheMemoryInBytesv() local_unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr @gpuCacheLen, align 8, !tbaa !14
  %i.b = shl i64 %i.a, 4
  ret i64 %i.b
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTSSt7complexIdE", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !6, i64 4}
!13 = !{!"_ZTS8QuESTEnv", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24}
!14 = !{!15, !15, i64 0}
!15 = !{!"long long", !7, i64 0}
end_hunk_0
