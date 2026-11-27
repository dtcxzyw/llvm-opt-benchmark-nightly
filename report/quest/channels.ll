Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/channels?download=true
inline.NumInlined: 227
inline.NumDeleted: 124
begin_hunk_0_@_Z21didAnyLocalAllocsFail8KrausMap:bb.a
  ret i1 %.0
}

declare noundef zeroext i1 @_Z15mem_isAllocatedPPPSt7complexIdExi(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z12allocSuperOpi(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.SuperOp) align 8 captures(none) initializes((0, 4), (8, 48)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  %i.a = shl nsw i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 3 uses
  %i.d = shl i64 %i.c, %i.b                       ; 2 uses
  %i.e = tail call noundef ptr @_Z14cpu_allocArrayx(i64 noundef %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %2)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %i.d)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  store i32 %1, ptr %0, align 8, !tbaa !37
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.i, align 8, !tbaa !38
  %i.j = call noundef ptr @_Z29cpu_allocAndInitMatrixWrapperPSt7complexIdEx(ptr noundef %i.e, i64 noundef %i.c)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0, ptr %i.m, align 8, !tbaa !36
  %i.n = call noundef ptr @_Z17cpu_allocHeapFlagv() ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !20
  %i.p = call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.n)
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 4, !tbaa !31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

declare noundef ptr @_Z14cpu_allocArrayx(i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z14gpu_allocArrayx(i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z29cpu_allocAndInitMatrixWrapperPSt7complexIdEx(ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z17cpu_allocHeapFlagv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @createSuperOp(ptr dead_on_unwind noalias writable sret(%struct.SuperOp) align 8 initializes((0, 4), (8, 48)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.createSuperOp)
  tail call void @_Z25validate_newSuperOpParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__.createSuperOp)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !69)
  %i.a = shl nsw i32 %1, 1
  %i.b = zext nneg i32 %i.a to i64                ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 3 uses
  %i.d = shl i64 %i.c, %i.b                       ; 2 uses
  %i.e = tail call noundef ptr @_Z14cpu_allocArrayx(i64 noundef %i.d), !noalias !69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14, !noalias !69
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %2), !noalias !69
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35, !noalias !69
  %.not.i = icmp eq i32 %i.g, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14, !noalias !69
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %i.d), !noalias !69
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  store i32 %1, ptr %0, align 8, !tbaa !37, !alias.scope !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.i, align 8, !tbaa !38, !alias.scope !69
  %i.j = call noundef ptr @_Z29cpu_allocAndInitMatrixWrapperPSt7complexIdEx(ptr noundef %i.e, i64 noundef %i.c), !noalias !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !19, !alias.scope !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.l, align 8, !tbaa !18, !alias.scope !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.0.i, ptr %i.m, align 8, !tbaa !36, !alias.scope !69
  %i.n = call noundef ptr @_Z17cpu_allocHeapFlagv(), !noalias !69 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %i.o, align 8, !tbaa !20, !alias.scope !69
  %i.p = call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.n), !noalias !69
  br i1 %i.p, label %bb.d, label %_Z12allocSuperOpi.exit

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 4, !tbaa !31, !noalias !69
  br label %_Z12allocSuperOpi.exit

_Z12allocSuperOpi.exit:                           ; preds = %bb.c, %bb.d
  call void @_Z30freeAllMemoryIfAnyAllocsFailedI7SuperOpEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %0)
  call void @_Z25validate_newSuperOpAllocs7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.createSuperOp)
  ret void
}

declare void @_Z18validate_envIsInitPKc(ptr noundef) local_unnamed_addr #3

declare void @_Z25validate_newSuperOpParamsiPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z30freeAllMemoryIfAnyAllocsFailedI7SuperOpEvRT_(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.34.0.copyload = load ptr, ptr %.sroa.34.0..sroa_idx, align 8, !tbaa !21
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !21
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !30
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.56.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z21didAnyLocalAllocsFail7SuperOp.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.34.0.copyload)
  br i1 %i.b, label %bb.c, label %_Z21didAnyLocalAllocsFail7SuperOp.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z20mem_isOuterAllocatedPPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
  br i1 %i.c, label %bb.d, label %_Z21didAnyLocalAllocsFail7SuperOp.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.45.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %i.f, label %_Z21didAnyLocalAllocsFail7SuperOp.exit.thread, label %_Z21didAnyLocalAllocsFail7SuperOp.exit

.critedge.i:                                      ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_Z21didAnyLocalAllocsFail7SuperOp.exit.thread

_Z21didAnyLocalAllocsFail7SuperOp.exit:           ; preds = %bb.a, %bb.b, %bb.c, %bb.e
  %i.g = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.g, label %.split, label %bb.f

_Z21didAnyLocalAllocsFail7SuperOp.exit.thread:    ; preds = %bb.e, %.critedge.i
  %i.h = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.h, label %.split, label %_Z7freeObjR7SuperOp.exit

.split:                                           ; preds = %_Z21didAnyLocalAllocsFail7SuperOp.exit.thread, %_Z21didAnyLocalAllocsFail7SuperOp.exit
  %.0.i8 = phi i1 [ false, %_Z21didAnyLocalAllocsFail7SuperOp.exit.thread ], [ true, %_Z21didAnyLocalAllocsFail7SuperOp.exit ]
  %i.i = call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %.0.i8)
  br i1 %i.i, label %bb.f, label %_Z7freeObjR7SuperOp.exit

bb.f:                                             ; preds = %_Z21didAnyLocalAllocsFail7SuperOp.exit, %.split
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.32.0.copyload.i = load ptr, ptr %.sroa.34.0..sroa_idx, align 8, !tbaa !21
  %.sroa.43.0.copyload.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.54.0.copyload.i = load ptr, ptr %.sroa.56.0..sroa_idx, align 8, !tbaa !30
  call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.32.0.copyload.i)
  call void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef %.sroa.2.0.copyload.i)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.54.0.copyload.i)
  %i.j = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.43.0.copyload.i)
  br i1 %i.j, label %bb.g, label %_Z7freeObjR7SuperOp.exit

bb.g:                                             ; preds = %bb.f
  call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.43.0.copyload.i)
  br label %_Z7freeObjR7SuperOp.exit

_Z7freeObjR7SuperOp.exit:                         ; preds = %_Z21didAnyLocalAllocsFail7SuperOp.exit.thread, %bb.g, %bb.f, %.split
  ret void
}

declare void @_Z25validate_newSuperOpAllocs7SuperOpPKc(ptr noundef byval(%struct.SuperOp) align 8, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11comm_isInitv() local_unnamed_addr #3

declare noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @createKrausMap(ptr dead_on_unwind noalias writable sret(%struct.KrausMap) align 8 initializes((0, 28), (32, 80)) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.createKrausMap)
  tail call void @_Z26validate_newKrausMapParamsiiPKc(i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__func__.createKrausMap)
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = shl nuw i64 1, %i.a                      ; 2 uses
  %4 = zext i32 %2 to i64
  %5 = shl nuw i64 %4, 32
  %6 = or disjoint i64 %5, %i.a
  store i64 %6, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !26
  %i.d = tail call noundef ptr @_Z19cpu_allocMatrixListxi(i64 noundef %i.b, i32 noundef %2)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !25
  %i.f = shl nsw i32 %1, 1
  %i.g = zext nneg i32 %i.f to i64                ; 2 uses
  %i.h = shl nuw i64 1, %i.g                      ; 3 uses
  %i.i = shl i64 %i.h, %i.g                       ; 2 uses
  %i.j = tail call noundef ptr @_Z14cpu_allocArrayx(i64 noundef %i.i), !noalias !72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14, !noalias !72
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %3), !noalias !72
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35, !noalias !72
  %.not.i = icmp eq i32 %i.l, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14, !noalias !72
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %i.i), !noalias !72
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi ptr [ %i.m, %bb.b ], [ null, %bb.a ]
  %i.n = call noundef ptr @_Z29cpu_allocAndInitMatrixWrapperPSt7complexIdEx(ptr noundef %i.j, i64 noundef %i.h), !noalias !72
  %i.o = call noundef ptr @_Z17cpu_allocHeapFlagv(), !noalias !72 ; 3 uses
  %i.p = call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %i.o), !noalias !72
  br i1 %i.p, label %bb.d, label %_Z12allocSuperOpi.exit

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.o, align 4, !tbaa !31, !noalias !72
  br label %_Z12allocSuperOpi.exit

_Z12allocSuperOpi.exit:                           ; preds = %bb.c, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %1, ptr %i.q, align 8, !tbaa !31
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !32
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !29
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !21
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.i, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !21
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.o, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !30
  %i.r = call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv()
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !28
  call void @_Z30freeAllMemoryIfAnyAllocsFailedI8KrausMapEvRT_(ptr noundef nonnull align 8 dereferenceable(80) %0)
  call void @_Z26validate_newKrausMapAllocs8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.createKrausMap)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.t)
  ret void
}

declare void @_Z26validate_newKrausMapParamsiiPKc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z19cpu_allocMatrixListxi(i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z30freeAllMemoryIfAnyAllocsFailedI8KrausMapEvRT_(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #7 comdat {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !31
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.35.0.copyload = load i64, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !32
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !33
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8, !tbaa !29
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.79.0.copyload = load ptr, ptr %.sroa.79.0..sroa_idx, align 8, !tbaa !21
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.810.0.copyload = load ptr, ptr %.sroa.810.0..sroa_idx, align 8, !tbaa !21
  %.sroa.911.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.911.0.copyload = load ptr, ptr %.sroa.911.0..sroa_idx, align 8, !tbaa !30
  %.sroa.1012.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1012.0.copyload = load ptr, ptr %.sroa.1012.0..sroa_idx, align 8, !tbaa !30
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.1012.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPPPSt7complexIdExi(ptr noundef %.sroa.46.0.copyload, i64 noundef %.sroa.35.0.copyload, i32 noundef %.sroa.2.0.copyload)
  br i1 %i.b, label %bb.c, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.911.0.copyload)
  br i1 %i.c, label %bb.d, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.79.0.copyload)
  br i1 %i.d, label %bb.e, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_Z20mem_isOuterAllocatedPPSt7complexIdE(ptr noundef %.sroa.68.0.copyload)
  br i1 %i.e, label %bb.f, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #14
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.810.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br i1 %i.h, label %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread, label %_Z21didAnyLocalAllocsFail8KrausMap.exit

.critedge.i.i:                                    ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  br label %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread

_Z21didAnyLocalAllocsFail8KrausMap.exit:          ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.g
  %i.i = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.i, label %.split, label %bb.h

_Z21didAnyLocalAllocsFail8KrausMap.exit.thread:   ; preds = %bb.g, %.critedge.i.i
  %i.j = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.j, label %.split, label %.thread

.split:                                           ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread, %_Z21didAnyLocalAllocsFail8KrausMap.exit
  %.0.i14 = phi i1 [ false, %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread ], [ true, %_Z21didAnyLocalAllocsFail8KrausMap.exit ]
  %i.k = call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %.0.i14)
  br i1 %i.k, label %bb.h, label %.thread

bb.h:                                             ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit, %.split
  call void @_Z7freeObjR8KrausMap(ptr noundef nonnull align 8 dereferenceable(80) %0)
  br label %.thread

.thread:                                          ; preds = %_Z21didAnyLocalAllocsFail8KrausMap.exit.thread, %.split, %bb.h
  ret void
}

declare void @_Z26validate_newKrausMapAllocs8KrausMapPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z21util_setFlagToUnknownPi(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @destroySuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.destroySuperOp)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !29
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !21
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.43.0.copyload = load ptr, ptr %.sroa.43.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.54.0.copyload = load ptr, ptr %.sroa.54.0..sroa_idx, align 8, !tbaa !30
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.32.0.copyload)
  tail call void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.54.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.43.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z11freeSuperOp7SuperOp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.43.0.copyload)
  br label %_Z11freeSuperOp7SuperOp.exit

_Z11freeSuperOp7SuperOp.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

declare void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef byval(%struct.SuperOp) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @destroyKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.destroyKrausMap)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !31
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.33.0.copyload = load i64, ptr %.sroa.33.0..sroa_idx, align 8, !tbaa !32
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !33
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.66.0.copyload = load ptr, ptr %.sroa.66.0..sroa_idx, align 8, !tbaa !29
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.77.0.copyload = load ptr, ptr %.sroa.77.0..sroa_idx, align 8, !tbaa !21
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.88.0.copyload = load ptr, ptr %.sroa.88.0..sroa_idx, align 8, !tbaa !21 ; 2 uses
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.99.0.copyload = load ptr, ptr %.sroa.99.0..sroa_idx, align 8, !tbaa !30
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.1010.0.copyload = load ptr, ptr %.sroa.1010.0..sroa_idx, align 8, !tbaa !30
  tail call void @_Z21cpu_deallocMatrixListPPPSt7complexIdExi(ptr noundef %.sroa.44.0.copyload, i64 noundef %.sroa.33.0.copyload, i32 noundef %.sroa.2.0.copyload)
  tail call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.1010.0.copyload)
  tail call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.77.0.copyload)
  tail call void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef %.sroa.66.0.copyload)
  tail call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.99.0.copyload)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.88.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z12freeKrausMap8KrausMap.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.88.0.copyload)
  br label %_Z12freeKrausMap8KrausMap.exit

_Z12freeKrausMap8KrausMap.exit:                   ; preds = %bb.a, %bb.b
  ret void
}

declare void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @syncSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !21
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.2.0.copyload)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %.sroa.32.0..sroa_idx, align 8, !tbaa !20
  store i32 1, ptr %i.b, align 4, !tbaa !31
  ret void
}

declare void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef byval(%struct.SuperOp) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @syncKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !27
  %i.h = load i32, ptr %0, align 8, !tbaa !40
  tail call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.c, ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.h)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.a, ptr noundef nonnull @__func__.syncSuperOp)
  %i.i = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.i, label %bb.b, label %syncSuperOp.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.a)
  br label %syncSuperOp.exit

syncSuperOp.exit:                                 ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.k)
  ret void
}

declare void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  tail call void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef %1, i64 noundef %i.b, ptr noundef nonnull @__func__.setSuperOp)
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.4.0.copyload5 = load ptr, ptr %.sroa.4.0..sroa_idx4, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.56.0.copyload = load ptr, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef %.sroa.4.0.copyload5, ptr noundef %1, i64 noundef %i.b)
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.56.0.copyload)
  br i1 %i.c, label %bb.b, label %_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit

_Z22setAndSyncSuperOpElemsIPPSt7complexIdEEv7SuperOpT_.exit: ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.6.0.copyload, align 4, !tbaa !31
  ret void
}

declare void @_Z33validate_matrixNewElemsPtrNotNullPPSt7complexIdExPKc(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z10setSuperOp7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector", align 8       ; 7 uses
  %3 = alloca %"class.std::vector", align 8       ; 7 uses
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !44     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !46
  %.pre23 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre23, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ null, %bb.a ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 5 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !44
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.f
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !47
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.k, ptr %i.j, ptr noundef %i.l)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.f) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.p, %bb.q, %bb.k, %bb.l, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.k ], [ %i.q, %bb.d ], [ %i.q, %bb.e ], [ %i.au, %bb.l ], [ %i.bk, %bb.q ], [ %i.bj, %bb.p ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.c
  store ptr %i.p, ptr %i.m, align 8, !tbaa !43
  invoke void @_Z29validate_superOpNewMatrixDims7SuperOpSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setSuperOp)
          to label %bb.f unwind label %bb.p

bb.f:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !44     ; 3 uses
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.r, %bb.f ] ; 3 uses
  %i.t = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !50
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.z, %i.s
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aa = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.r, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ae) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.ag = load ptr, ptr %1, align 8, !tbaa !44    ; 3 uses
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai                    ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.af, %i.ag
  br i1 %.not.i.i.i.i5, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.ak = sdiv exact i64 %i.aj, 24
  %i.al = icmp ugt i64 %i.ak, 384307168202282325
  br i1 %i.al, label %.noexc.i.i9, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, !prof !45

.noexc.i.i9:                                      ; preds = %bb.i
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.i
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #17
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !46
  %.pre25 = load ptr, ptr %i.a, align 8, !tbaa !46
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %i.an = phi ptr [ %i.af, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre25, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.ao = phi ptr [ %i.ag, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %.pre24, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ]
  %i.ap = phi ptr [ null, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ], [ %i.am, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i6 ] ; 5 uses
  store ptr %i.ap, ptr %3, align 8, !tbaa !44
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aj
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  %i.at = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.ao, ptr %i.an, ptr noundef %i.ap)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i7, label %common.resume, label %bb.l

end_hunk_0
begin_hunk_1_@_Z22setAndSyncSuperOpElemsISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEv7SuperOpT_:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.h
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.syncSuperOp)
  %i.aj = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.aj, label %bb.i, label %syncSuperOp.exit

bb.i:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0)
  br label %syncSuperOp.exit

syncSuperOp.exit:                                 ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.i
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  ret void

bb.j:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not16 = icmp eq ptr %0, %1
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit
  %.018 = phi ptr [ %i.r, %.loopexit ], [ %2, %bb.a ] ; 6 uses
  %.sroa.09.017 = phi ptr [ %i.q, %.loopexit ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.017, align 8, !tbaa !49 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.018, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.g, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, !prof !45

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.h, %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i ] ; 5 uses
  store ptr %i.i, ptr %.018, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %.018, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %.018, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !50
  %i.m = load ptr, ptr %.sroa.09.017, align 8, !tbaa !21 ; 2 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.m, %i.n
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc8, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i ], [ %i.i, %.noexc8 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %i.m, %.noexc8 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.09.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.04.08.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !76
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, %i.n
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !73

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc8
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %.noexc8 ], [ %i.p, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.j, align 8, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.09.017, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.018, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.q, %1
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNSt15__new_allocatorISt7complexIdEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp36 = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %lpad.loopexit.split-lp36, 0
  %i.t = tail call ptr @__cxa_begin_catch(ptr %i.s) #14 ; 0 uses
  invoke void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %2, ptr noundef nonnull %.018)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp
  invoke void @__cxa_rethrow() #16
          to label %bb.g unwind label %bb.d

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.r, %.loopexit ]
  ret ptr %.0.lcssa

bb.d:                                             ; preds = %bb.c, %.loopexit.split-lp.loopexit.split-lp
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.u

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  tail call void @__clang_call_terminate(ptr %i.w) #15
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EEEvT_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i
  %.05.i = phi ptr [ %i.g, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = getelementptr inbounds nuw i8, ptr %.05.i, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.f) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit, label %.lr.ph.i, !llvm.loop !0

_ZNSt12_Destroy_auxILb0EE9__destroyIPSt6vectorISt7complexIdESaIS4_EEEEvT_S8_.exit: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i, %bb.a
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef, ptr nofree noundef align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @setKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  tail call void @_Z23setAndSyncKrausMapElemsIPPPSt7complexIdEEv8KrausMapT_(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z23setAndSyncKrausMapElemsIPPPSt7complexIdEEv8KrausMapT_(ptr noundef byval(%struct.KrausMap) align 8 %0, ptr noundef %1) local_unnamed_addr #7 comdat {
bb.a:
  %2 = alloca %struct.KrausMap, align 8           ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !27
  %i.o = load i32, ptr %2, align 8, !tbaa !40
  tail call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.n, i32 noundef %i.o)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.h, ptr noundef nonnull @__func__.syncSuperOp)
  %i.p = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.p, label %bb.b, label %syncKrausMap.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.h)
  br label %syncKrausMap.exit

syncKrausMap.exit:                                ; preds = %._crit_edge, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !28
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  tail call void @_Z14cpu_copyMatrixPPSt7complexIdES2_x(ptr noundef %i.t, ptr noundef %i.v, i64 noundef %i.g)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !77
}

; Function Attrs: mustprogress uwtable
define void @_Z11setKrausMap8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.9", align 8     ; 9 uses
  %3 = alloca %"class.std::vector.9", align 8     ; 7 uses
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !56     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.g, align 8
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24
  %i.i = icmp ugt i64 %i.h, 384307168202282325
  br i1 %i.i, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
  %.pre = load ptr, ptr %1, align 8, !tbaa !57
  %.pre32 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.k = phi ptr [ %i.b, %bb.a ], [ %.pre32, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.l = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ]
  %i.m = phi ptr [ null, %bb.a ], [ %i.j, %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store ptr %i.o, ptr %i.p, align 8, !tbaa !58
  %i.q = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %i.l, ptr %i.k, ptr noundef %i.m)
          to label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.s to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %i.w) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.r, %bb.s, %bb.l, %bb.m, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.bk, %bb.l ], [ %i.r, %bb.d ], [ %i.r, %bb.e ], [ %i.bk, %bb.m ], [ %i.ck, %bb.s ], [ %i.cj, %bb.r ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit: ; preds = %bb.c
  store ptr %i.q, ptr %i.n, align 8, !tbaa !55
  invoke void @_Z30validate_krausMapNewMatrixDims8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull @__func__.setKrausMap)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.x = load ptr, ptr %2, align 8, !tbaa !56     ; 3 uses
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ap, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i ], [ %i.x, %bb.f ] ; 5 uses
  %i.z = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.z, %i.ab
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ah) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.aj = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ap, %i.y
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i, %bb.f
  %i.aq = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i ], [ %i.x, %bb.f ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !58
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.au) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i, %bb.i
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !55  ; 3 uses
  %i.aw = load ptr, ptr %1, align 8, !tbaa !56    ; 3 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay                    ; 4 uses
  %.not.i.i.i.i5 = icmp eq ptr %i.av, %i.aw
  br i1 %.not.i.i.i.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
  %i.ba = sdiv exact i64 %i.az, 24
  %i.bb = icmp ugt i64 %i.ba, 384307168202282325
  br i1 %i.bb, label %.noexc.i.i9, label %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6, !prof !45

.noexc.i.i9:                                      ; preds = %bb.j
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6: ; preds = %bb.j
  %i.bc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #17
  %.pre33 = load ptr, ptr %1, align 8, !tbaa !57
  %.pre34 = load ptr, ptr %i.a, align 8, !tbaa !57
  br label %bb.k

bb.k:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEE8allocateEmPKv.exit.i.i.i.i6, %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit
end_hunk_1
begin_hunk_2_@_Z11setKrausMap8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE:bb.a
bb.n:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10
  %i.bl = load ptr, ptr %3, align 8, !tbaa !56    ; 3 uses
  %i.bm = load ptr, ptr %i.bg, align 8, !tbaa !55 ; 2 uses
  %.not4.i.i.i11 = icmp eq ptr %i.bl, %i.bm
  br i1 %.not4.i.i.i11, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28, label %.lr.ph.i.i.i12

.lr.ph.i.i.i12:                                   ; preds = %bb.n, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24
  %.05.i.i.i13 = phi ptr [ %i.cd, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24 ], [ %i.bl, %bb.n ] ; 5 uses
  %i.bn = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !44 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !43 ; 2 uses
  %.not4.i.i.i.i.i.i.i14 = icmp eq ptr %i.bn, %i.bp
  br i1 %.not4.i.i.i.i.i.i.i14, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22, label %.lr.ph.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i15:                           ; preds = %.lr.ph.i.i.i12, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18
  %.05.i.i.i.i.i.i.i16 = phi ptr [ %i.bw, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18 ], [ %i.bn, %.lr.ph.i.i.i12 ] ; 3 uses
  %i.bq = load ptr, ptr %.05.i.i.i.i.i.i.i16, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i17, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i15
  %i.br = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i16, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !50
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18: ; preds = %bb.o, %.lr.ph.i.i.i.i.i.i.i15
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i19 = icmp eq ptr %i.bw, %i.bp
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20, label %.lr.ph.i.i.i.i.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i.i18
  %.pr.i.i.i.i.i21 = load ptr, ptr %.05.i.i.i13, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20, %.lr.ph.i.i.i12
  %i.bx = phi ptr [ %.pr.i.i.i.i.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i.i20 ], [ %i.bn, %.lr.ph.i.i.i12 ] ; 3 uses
  %.not.i.i1.i.i.i.i.i23 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i.i.i.i.i23, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24, label %bb.p

bb.p:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22
  %i.by = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24: ; preds = %bb.p, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i.i22
  %i.cd = getelementptr inbounds nuw i8, ptr %.05.i.i.i13, i64 24 ; 2 uses
  %.not.i.i.i25 = icmp eq ptr %i.cd, %i.bm
  br i1 %.not.i.i.i25, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26, label %.lr.ph.i.i.i12, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i.i24
  %.pr.i27 = load ptr, ptr %3, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26, %bb.n
  %i.ce = phi ptr [ %.pr.i27, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split.i26 ], [ %i.bl, %bb.n ] ; 3 uses
  %.not.i.i1.i29 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i1.i29, label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31, label %bb.q

bb.q:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28
  %i.cf = load ptr, ptr %i.bi, align 8, !tbaa !58
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = ptrtoint ptr %i.ce to i64
  %i.ci = sub i64 %i.cg, %i.ch
  call void @_ZdlPvm(ptr noundef nonnull %i.ce, i64 noundef %i.ci) #18
  br label %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31

_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev.exit31: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit.i28, %bb.q
  ret void

bb.r:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #14
  br label %common.resume

bb.s:                                             ; preds = %_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EEC2ERKS7_.exit10
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume
}

declare void @_Z30validate_krausMapNewMatrixDims8KrausMapSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !56     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !44 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i.i.i.i
  %.pr.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i, %.lr.ph.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #18
  br label %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i: ; preds = %bb.c, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !56
  br label %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !58
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #18
  br label %_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EES6_EvT_S8_RSaIT0_E.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z23setAndSyncKrausMapElemsISt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EEEv8KrausMapT_(ptr noundef byval(%struct.KrausMap) align 8 %0, ptr nofree noundef align 8 dereferenceable(24) %1) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %struct.KrausMap, align 8           ; 11 uses
  %3 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !27   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.syncKrausMap)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !27
  %i.q = load i32, ptr %2, align 8, !tbaa !40
  call void @_Z21util_setSuperoperatorPPSt7complexIdEPS2_ii(ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.p, i32 noundef %i.q)
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.j, ptr noundef nonnull @__func__.syncSuperOp)
  %i.r = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.3.0.copyload)
  br i1 %i.r, label %bb.b, label %syncKrausMap.exit

bb.b:                                             ; preds = %._crit_edge
  call void @_Z16gpu_copyCpuToGpu7SuperOp(ptr noundef nonnull byval(%struct.SuperOp) align 8 %i.j)
  br label %syncKrausMap.exit

syncKrausMap.exit:                                ; preds = %._crit_edge, %bb.b
  store i32 1, ptr %.sroa.4.0.copyload, align 4, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !28
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit ] ; 3 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !29
  %i.w = load ptr, ptr %1, align 8, !tbaa !56
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.w, i64 %indvars.iv ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !44  ; 2 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = icmp ugt i64 %i.ae, 384307168202282325
  br i1 %i.af, label %.noexc.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, !prof !45

.noexc.i.i:                                       ; preds = %bb.d
  call void @_ZSt28__throw_bad_array_new_lengthv() #16
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.d
  %i.ag = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #17
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i, %bb.c
  %i.ah = phi ptr [ null, %bb.c ], [ %i.ag, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i ] ; 4 uses
  store ptr %i.ah, ptr %3, align 8, !tbaa !44
  store ptr %i.ah, ptr %i.f, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ad
  store ptr %i.ai, ptr %i.g, align 8, !tbaa !47
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !46
  %i.al = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.aj, ptr %i.ak, ptr noundef %i.ah)
          to label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = sub i64 %i.ap, %i.aq
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef %i.ar) #18
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %bb.g, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.bg, %bb.k ], [ %i.am, %bb.g ], [ %i.am, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit: ; preds = %bb.e
  store ptr %i.al, ptr %i.f, align 8, !tbaa !43
  invoke void @_Z14cpu_copyMatrixPPSt7complexIdESt6vectorIS3_IS0_SaIS0_EESaIS5_EEx(ptr noundef %i.v, ptr nofree noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.i)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.as = load ptr, ptr %3, align 8, !tbaa !44    ; 3 uses
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !43  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ba, %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i ], [ %i.as, %bb.h ] ; 3 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !49 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !50
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i: ; preds = %bb.i, %.lr.ph.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ba, %i.at
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i, %bb.h
  %i.bb = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i ], [ %i.as, %bb.h ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.bb to i64
  %i.bf = sub i64 %i.bd, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bf) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !78

bb.k:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorIS2_ISt7complexIdESaIS4_EESaIS6_EES2_IS8_SaIS8_EEEEPS8_ET0_T_SG_SF_(ptr %0, ptr %1, ptr noundef %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not18 = icmp eq ptr %0, %1
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.020 = phi ptr [ %i.y, %bb.e ], [ %2, %bb.a ]  ; 8 uses
  %.sroa.09.019 = phi ptr [ %i.x, %bb.e ], [ %0, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.09.019, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !43   ; 2 uses
  %i.c = load ptr, ptr %.sroa.09.019, align 8, !tbaa !44 ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.020, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i.i, label %.noexc8, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = sdiv exact i64 %i.f, 24
  %i.h = icmp ugt i64 %i.g, 384307168202282325
  br i1 %i.h, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, !prof !45

.noexc.i.i.i:                                     ; preds = %bb.b
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #16
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.b
  %i.i = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #17
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i, %.lr.ph
  %i.j = phi ptr [ null, %.lr.ph ], [ %i.i, %_ZNSt15__new_allocatorISt6vectorISt7complexIdESaIS2_EEE8allocateEmPKv.exit.i.i.i.i.i ] ; 4 uses
  store ptr %i.j, ptr %.020, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %.020, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !43
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.f
  %i.m = getelementptr inbounds nuw i8, ptr %.020, i64 16
  store ptr %i.l, ptr %i.m, align 8, !tbaa !47
  %i.n = load ptr, ptr %.sroa.09.019, align 8, !tbaa !46
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.p = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt6vectorISt7complexIdESaIS4_EES2_IS6_SaIS6_EEEEPS6_ET0_T_SE_SD_(ptr %i.n, ptr %i.o, ptr noundef %i.j)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %.noexc8
  %i.q = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.r = load ptr, ptr %.020, align 8, !tbaa !44  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.020, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !47
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
end_hunk_2
begin_hunk_3_@_Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE:bb.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ax to i64
  %i.bc = sub i64 %i.ba, %i.bb
  call void @_ZdlPvm(ptr noundef nonnull %i.ax, i64 noundef %i.bc) #18
  br label %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18

_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18: ; preds = %bb.n, %.lr.ph.i.i.i15
  %i.bd = getelementptr inbounds nuw i8, ptr %.05.i.i.i16, i64 24 ; 2 uses
  %.not.i.i.i19 = icmp eq ptr %i.bd, %i.aw
  br i1 %.not.i.i.i19, label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, label %.lr.ph.i.i.i15, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20: ; preds = %_ZSt8_DestroyISt6vectorISt7complexIdESaIS2_EEEvPT_.exit.i.i.i18
  %.pr.i21 = load ptr, ptr %5, align 8, !tbaa !44
  br label %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22

_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20, %bb.m
  %i.be = phi ptr [ %.pr.i21, %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i20 ], [ %i.av, %bb.m ] ; 3 uses
  %.not.i.i1.i23 = icmp eq ptr %i.be, null
  br i1 %.not.i.i1.i23, label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22
  %i.bf = load ptr, ptr %i.as, align 8, !tbaa !47
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = sub i64 %i.bg, %i.bh
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bi) #18
  br label %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25

_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev.exit25: ; preds = %_ZSt8_DestroyIPSt6vectorISt7complexIdESaIS2_EES4_EvT_S6_RSaIT0_E.exit.i22, %bb.o
  ret void

bb.p:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #14
  br label %common.resume

bb.q:                                             ; preds = %_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEC2ERKS5_.exit13
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #14
  br label %common.resume
}

declare void @_Z42validate_newInlineSuperOpDimMatchesVectorsiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EEPKc(i32 noundef, ptr nofree noundef align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetKrausMapFromArr(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.setKrausMap)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetSuperOpFromArr(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.setSuperOp)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  tail call void @_Z40validate_krausMapFieldsMatchPassedParams8KrausMapiiPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @__func__._Z17setInlineKrausMap8KrausMapiiSt6vectorIS0_IS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToSetInlineSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  tail call void @_Z39validate_superOpFieldsMatchPassedParams7SuperOpiPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i32 noundef %1, ptr noundef nonnull @__func__._Z16setInlineSuperOp7SuperOpiSt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineKrausMap(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  tail call void @_Z26validate_newKrausMapParamsiiPKc(i32 noundef %0, i32 noundef %1, ptr noundef nonnull @__func__._Z20createInlineKrausMapiiSt6vectorIS_IS_ISt7complexIdESaIS1_EESaIS3_EESaIS5_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_validateParamsToCreateInlineSuperOp(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  tail call void @_Z25validate_newSuperOpParamsiPKc(i32 noundef %0, ptr noundef nonnull @__func__._Z19createInlineSuperOpiSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @reportSuperOp(ptr nofree noundef readonly byval(%struct.SuperOp) align 8 captures(none) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z22validate_superOpFields7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.reportSuperOp)
  tail call void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef nonnull @__func__.reportSuperOp)
  tail call void @_Z24validate_superOpIsSynced7SuperOpPKc(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr noundef nonnull @__func__.reportSuperOp)
  %i.b = load i32, ptr %0, align 8, !tbaa !37
  %i.c = tail call noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef %i.b)
  %i.d = add i64 %i.c, 48
  tail call void @_Z12print_header7SuperOpm(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, i64 noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.e, ptr %1, align 8, !tbaa !61
  %i.f = load ptr, ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !64 ; 2 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.g, ptr %i.a, align 8, !tbaa !66
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %1, align 8, !tbaa !64
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.j, ptr %i.e, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.f, align 1, !tbaa !52
  store i8 %i.l, ptr %i.k, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.f, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !65
  %i.o = load ptr, ptr %1, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_Z11print_elems7SuperOpNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.SuperOp) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.q = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.s = load i64, ptr %i.e, align 8, !tbaa !52
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_Z22print_oneFewerNewlinesv()
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.e
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.e
  %i.x = load i64, ptr %i.e, align 8, !tbaa !52
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.u
}

declare void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef) local_unnamed_addr #3

declare void @_Z24validate_superOpIsSynced7SuperOpPKc(ptr noundef byval(%struct.SuperOp) align 8, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef) local_unnamed_addr #3

declare void @_Z12print_header7SuperOpm(ptr noundef byval(%struct.SuperOp) align 8, i64 noundef) local_unnamed_addr #3

declare void @_Z11print_elems7SuperOpNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.SuperOp) align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_Z22print_oneFewerNewlinesv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @reportKrausMap(ptr nofree noundef readonly byval(%struct.KrausMap) align 8 captures(none) %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  tail call void @_Z23validate_krausMapFields8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.reportKrausMap)
  tail call void @_Z37validate_numReportedNewlinesAboveZeroPKc(ptr noundef nonnull @__func__.reportKrausMap)
  tail call void @_Z25validate_krausMapIsSynced8KrausMapPKc(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr noundef nonnull @__func__.reportKrausMap)
  %i.b = load i32, ptr %0, align 8, !tbaa !40
  %i.c = tail call noundef i64 @_Z32mem_getLocalMatrixMemoryRequiredibi(i32 noundef %i.b, i1 noundef zeroext true, i32 noundef 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = sext i32 %i.e to i64
  %i.g = mul i64 %i.c, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !82
  %i.j = tail call noundef i64 @_Z33mem_getLocalSuperOpMemoryRequiredi(i32 noundef %i.i)
  %i.k = add i64 %i.j, 80
  %i.l = add i64 %i.k, %i.g
  tail call void @_Z12print_header8KrausMapm(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.m, ptr %1, align 8, !tbaa !61
  %i.n = load ptr, ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !64 ; 2 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !65 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 %i.o, ptr %i.a, align 8, !tbaa !66
  %i.p = icmp ugt i64 %i.o, 15
  br i1 %i.p, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.q = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.q, ptr %1, align 8, !tbaa !64
  %i.r = load i64, ptr %i.a, align 8, !tbaa !66
  store i64 %i.r, ptr %i.m, align 8, !tbaa !52
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.s = phi ptr [ %i.q, %.noexc.i ], [ %i.m, %bb.a ] ; 2 uses
  switch i64 %i.o, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.t = load i8, ptr %i.n, align 1, !tbaa !52
  store i8 %i.t, ptr %i.s, align 1, !tbaa !52
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %i.n, i64 %i.o, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.u = load i64, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !65
  %i.w = load ptr, ptr %1, align 8, !tbaa !64
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  invoke void @_Z11print_elems8KrausMapNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull byval(%struct.KrausMap) align 8 %0, ptr nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.y = load ptr, ptr %1, align 8, !tbaa !64     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.m
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !52
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @_Z22print_oneFewerNewlinesv()
  ret void

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.m
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.af = load i64, ptr %i.m, align 8, !tbaa !52
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  resume { ptr, i32 } %i.ac
}

declare void @_Z25validate_krausMapIsSynced8KrausMapPKc(ptr noundef byval(%struct.KrausMap) align 8, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_Z32mem_getLocalMatrixMemoryRequiredibi(i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare void @_Z12print_header8KrausMapm(ptr noundef byval(%struct.KrausMap) align 8, i64 noundef) local_unnamed_addr #3

declare void @_Z11print_elems8KrausMapNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef byval(%struct.KrausMap) align 8, ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_channels.cpp() #11 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), ptr @_ZL17defaultMatrIndentB5cxx11, align 8, !tbaa !61
  store i32 538976288, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 8), align 8, !tbaa !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL17defaultMatrIndentB5cxx11, i64 20), align 4, !tbaa !52
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL17defaultMatrIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 16), ptr @_ZL18defaultQuregIndentB5cxx11, align 8, !tbaa !61
  store i32 538976288, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 16), align 8
  store i64 4, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 8), align 8, !tbaa !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultQuregIndentB5cxx11, i64 20), align 4, !tbaa !52
  %i.b = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultQuregIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 16), ptr @_ZL18defaultKrausIndentB5cxx11, align 8, !tbaa !61
  store i16 8224, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 8), align 8, !tbaa !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultKrausIndentB5cxx11, i64 18), align 2, !tbaa !52
  %i.c = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultKrausIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 16), ptr @_ZL18defaultTableIndentB5cxx11, align 8, !tbaa !61
  store i16 8224, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 16), align 8
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 8), align 8, !tbaa !65
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL18defaultTableIndentB5cxx11, i64 18), align 2, !tbaa !52
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev, ptr nonnull @_ZL18defaultTableIndentB5cxx11, ptr nonnull @__dso_handle) #14 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !51}
!1 = distinct !{!1, !51}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long long", !7, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"any p2 pointer", !12, i64 0}
!14 = !{!"p2 _ZTSSt7complexIdE", !13, i64 0}
!15 = !{!"p1 _ZTSSt7complexIdE", !12, i64 0}
!16 = !{!"p1 int", !12, i64 0}
!17 = !{!"_ZTS7SuperOp", !8, i64 0, !11, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !16, i64 40}
!18 = !{!17, !15, i64 24}
!19 = !{!17, !14, i64 16}
!20 = !{!17, !16, i64 40}
!21 = !{!15, !15, i64 0}
!22 = !{!"any p3 pointer", !13, i64 0}
!23 = !{!"p3 _ZTSSt7complexIdE", !22, i64 0}
!24 = !{!"_ZTS8KrausMap", !8, i64 0, !8, i64 4, !11, i64 8, !23, i64 16, !17, i64 24, !16, i64 72}
!25 = !{!24, !23, i64 16}
!26 = !{!24, !11, i64 8}
!27 = !{!24, !8, i64 4}
!28 = !{!24, !16, i64 72}
!29 = !{!14, !14, i64 0}
!30 = !{!16, !16, i64 0}
!31 = !{!8, !8, i64 0}
!32 = !{!11, !11, i64 0}
!33 = !{!23, !23, i64 0}
!34 = !{!"_ZTS8QuESTEnv", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24}
!35 = !{!34, !8, i64 4}
!36 = !{!17, !15, i64 32}
!37 = !{!17, !8, i64 0}
!38 = !{!17, !11, i64 8}
!39 = !{!24, !14, i64 40}
!40 = !{!24, !8, i64 0}
!41 = !{!"p1 _ZTSSt6vectorISt7complexIdESaIS1_EE", !12, i64 0}
!42 = !{!"_ZTSNSt12_Vector_baseISt6vectorISt7complexIdESaIS2_EESaIS4_EE17_Vector_impl_dataE", !41, i64 0, !41, i64 8, !41, i64 16}
!43 = !{!42, !41, i64 8}
!44 = !{!42, !41, i64 0}
!45 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!46 = !{!41, !41, i64 0}
!47 = !{!42, !41, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseISt7complexIdESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!49 = !{!48, !15, i64 0}
!50 = !{!48, !15, i64 16}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!7, !7, i64 0}
!53 = !{!"p1 _ZTSSt6vectorIS_ISt7complexIdESaIS1_EESaIS3_EE", !12, i64 0}
!54 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ISt7complexIdESaIS2_EESaIS4_EESaIS6_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!54, !53, i64 8}
!56 = !{!54, !53, i64 0}
!57 = !{!53, !53, i64 0}
!58 = !{!54, !53, i64 16}
!59 = !{!"p1 omnipotent char", !12, i64 0}
!60 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !59, i64 0}
!61 = !{!60, !59, i64 0}
!62 = !{!"long", !7, i64 0}
!63 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !60, i64 0, !62, i64 8, !7, i64 16}
!64 = !{!63, !59, i64 0}
!65 = !{!63, !62, i64 8}
!66 = !{!62, !62, i64 0}
!67 = distinct !{!67, i1 true, !"_Z12allocSuperOpi"}
!68 = distinct !{!68, !67, !"_Z12allocSuperOpi: argument 0"}
!69 = !{!68}
!70 = distinct !{!70, i1 true, !"_Z12allocSuperOpi"}
!71 = distinct !{!71, !70, !"_Z12allocSuperOpi: argument 0"}
!72 = !{!71}
!73 = distinct !{!73, !51}
!74 = distinct !{!74, !51}
!75 = !{!48, !15, i64 8}
!76 = !{i64 0, i64 16, !52}
!77 = distinct !{!77, !51}
!78 = distinct !{!78, !51}
!79 = distinct !{!79, !51}
!80 = !{i64 0, i64 4, !31, i64 4, i64 4, !31, i64 8, i64 8, !32, i64 16, i64 8, !33, i64 24, i64 4, !31, i64 32, i64 8, !32, i64 40, i64 8, !29, i64 48, i64 8, !21, i64 56, i64 8, !21, i64 64, i64 8, !30, i64 72, i64 8, !30}
!81 = !{i64 0, i64 4, !31, i64 8, i64 8, !32, i64 16, i64 8, !29, i64 24, i64 8, !21, i64 32, i64 8, !21, i64 40, i64 8, !30}
!82 = !{!24, !8, i64 24}
end_hunk_3
