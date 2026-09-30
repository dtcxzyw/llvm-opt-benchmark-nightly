Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quest/original/matrices?download=true
inline.NumInlined: 337
inline.NumDeleted: 175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z30freeAllMemoryIfAnyAllocsFailedI8CompMatrEvT_:bb.a
bb.i:                                             ; preds = %bb.h
  call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.79.0.copyload)
  br label %_Z14freeHeapMatrixI8CompMatrEvT_.exit

_Z14freeHeapMatrixI8CompMatrEvT_.exit:            ; preds = %bb.h, %bb.i
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.2.0.copyload)
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.35.0.copyload)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.46.0.copyload)
  br label %bb.j

bb.j:                                             ; preds = %.split, %_Z14freeHeapMatrixI8CompMatrEvT_.exit, %bb.g
  ret void
}

declare void @_Z24validate_newMatrixAllocs8CompMatrPKc(ptr noundef byval(%struct.CompMatr) align 8, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z11comm_isInitv() local_unnamed_addr #3

declare noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_Z20mem_isOuterAllocatedPPSt7complexIdE(ptr noundef) local_unnamed_addr #3

declare void @_Z24cpu_deallocMatrixWrapperPPSt7complexIdE(ptr noundef) local_unnamed_addr #3

declare void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef) local_unnamed_addr #3

declare void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef) local_unnamed_addr #3

declare void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef) local_unnamed_addr #3

declare void @_Z19cpu_deallocHeapFlagPi(ptr noundef) local_unnamed_addr #3

declare void @_Z21util_setFlagToUnknownPi(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @createDiagMatr(ptr dead_on_unwind noalias nofree writable sret(%struct.DiagMatr) align 8 captures(none) initializes((0, 4), (8, 72)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  tail call void @_Z18validate_envIsInitPKc(ptr noundef nonnull @__func__.createDiagMatr)
  tail call void @_Z26validate_newDiagMatrParamsiPKc(i32 noundef %1, ptr noundef nonnull @__func__.createDiagMatr)
  %i.a = zext nneg i32 %1 to i64
  %i.b = shl nuw i64 1, %i.a                      ; 3 uses
  store i32 %1, ptr %0, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.c, align 8, !tbaa !51
  %i.d = tail call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.d, ptr %i.e, align 8, !tbaa !87
  %i.f = tail call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.g, align 8, !tbaa !88
  %i.h = tail call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.h, ptr %i.i, align 8, !tbaa !89
  %i.j = tail call noundef ptr @_Z17cpu_allocHeapFlagv() ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = tail call noundef ptr @_Z17cpu_allocHeapFlagv() ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.l, ptr %i.m, align 8, !tbaa !91
  %i.n = tail call noundef ptr @_Z14cpu_allocArrayx(i64 noundef %i.b)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.n, ptr %i.o, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %2)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %i.r, %bb.b ], [ null, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.s, ptr %i.t, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_Z30freeAllMemoryIfAnyAllocsFailedI8DiagMatrEvT_(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0)
  call void @_Z24validate_newMatrixAllocs8DiagMatrPKc(ptr noundef nonnull byval(%struct.DiagMatr) align 8 %0, ptr noundef nonnull @__func__.createDiagMatr)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.d)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.f)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.h)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.j)
  store i32 0, ptr %i.l, align 4, !tbaa !47
  ret void
}

declare void @_Z26validate_newDiagMatrParamsiPKc(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z30freeAllMemoryIfAnyAllocsFailedI8DiagMatrEvT_(ptr noundef byval(%struct.DiagMatr) align 8 %0) local_unnamed_addr #7 comdat {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.35.0.copyload = load ptr, ptr %.sroa.35.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.46.0.copyload = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.57.0.copyload = load ptr, ptr %.sroa.57.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.68.0.copyload = load ptr, ptr %.sroa.68.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.79.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.79.0.copyload = load ptr, ptr %.sroa.79.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.810.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.810.0.copyload = load ptr, ptr %.sroa.810.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.2.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.35.0.copyload)
  br i1 %i.b, label %bb.c, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.68.0.copyload)
  br i1 %i.c, label %bb.d, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.46.0.copyload)
  br i1 %i.d, label %bb.e, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.57.0.copyload)
  br i1 %i.e, label %bb.f, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.79.0.copyload)
  br i1 %i.f, label %bb.g, label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

bb.g:                                             ; preds = %bb.f
  %i.g = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.810.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp eq i32 %i.i, 0
  %.not1.i = or i1 %i.g, %i.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %.0.i = xor i1 %.not1.i, true
  br label %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit

_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit:     ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i1 [ %.0.i, %bb.g ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.f ] ; 2 uses
  %i.k = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.k, label %.split, label %bb.h

.split:                                           ; preds = %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit
  %i.l = call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %.1.i)
  br i1 %i.l, label %bb.i, label %bb.k

bb.h:                                             ; preds = %_Z21didAnyLocalAllocsFailI8DiagMatrEbT_.exit
  br i1 %.1.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.split, %bb.h
  call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.79.0.copyload)
  %i.m = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.810.0.copyload)
  br i1 %i.m, label %bb.j, label %_Z14freeHeapMatrixI8DiagMatrEvT_.exit

bb.j:                                             ; preds = %bb.i
  call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.810.0.copyload)
  br label %_Z14freeHeapMatrixI8DiagMatrEvT_.exit

_Z14freeHeapMatrixI8DiagMatrEvT_.exit:            ; preds = %bb.i, %bb.j
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.2.0.copyload)
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.35.0.copyload)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.68.0.copyload)
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.46.0.copyload)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.57.0.copyload)
  br label %bb.k

bb.k:                                             ; preds = %.split, %_Z14freeHeapMatrixI8DiagMatrEvT_.exit, %bb.h
  ret void
}

declare void @_Z24validate_newMatrixAllocs8DiagMatrPKc(ptr noundef byval(%struct.DiagMatr) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_Z40validateAndCreateCustomFullStateDiagMatriiiiPKc(ptr dead_on_unwind noalias nofree writable sret(%struct.FullStateDiagMatr) align 8 captures(none) initializes((0, 4), (8, 28), (32, 96)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  %6 = alloca %struct.QuESTEnv, align 8           ; 5 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !47
  store i32 %3, ptr %i.b, align 4, !tbaa !47
  store i32 %4, ptr %i.c, align 4, !tbaa !47
  tail call void @_Z18validate_envIsInitPKc(ptr noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %6)
  call void @_Z35validate_newFullStateDiagMatrParamsiiiiPKc(i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5)
  call void @_Z41autodep_chooseFullStateDiagMatrDeploymentiRiS_S_8QuESTEnv(i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull byval(%struct.QuESTEnv) align 8 %6)
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl nuw i64 1, %i.d                      ; 2 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !47
  %.not = icmp ne i32 %i.f, 0                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = select i1 %.not, i32 %i.h, i32 1
  %i.j = sext i32 %i.i to i64
  %i.k = sdiv i64 %i.e, %i.j                      ; 3 uses
  store i32 %1, ptr %0, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %i.l, align 8, !tbaa !93
  %i.m = load i32, ptr %i.b, align 4, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.m, ptr %i.n, align 8, !tbaa !94
  %i.o = load i32, ptr %i.c, align 4, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.o, ptr %i.p, align 4, !tbaa !95
  %i.q = icmp sgt i32 %i.h, 1
  %i.r = select i1 %.not, i1 %i.q, i1 false
  %i.s = zext i1 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.s, ptr %i.t, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.k, ptr %i.u, align 8, !tbaa !97
  %i.v = call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.v, ptr %i.w, align 8, !tbaa !98
  %i.x = call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.x, ptr %i.y, align 8, !tbaa !99
  %i.z = call noundef ptr @_Z34util_allocEpsilonSensitiveHeapFlagv() ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !100
  %i.ab = call noundef ptr @_Z17cpu_allocHeapFlagv() ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !101
  %i.ad = call noundef ptr @_Z17cpu_allocHeapFlagv() ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !102
  %i.af = call noundef ptr @_Z14cpu_allocArrayx(i64 noundef %i.k)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !103
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !47
  %.not10 = icmp eq i32 %i.ah, 0
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = call noundef ptr @_Z14gpu_allocArrayx(i64 noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.aj = phi ptr [ %i.ai, %bb.b ], [ null, %bb.a ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !104
  call void @_Z30freeAllMemoryIfAnyAllocsFailedI17FullStateDiagMatrEvT_(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0)
  call void @_Z24validate_newMatrixAllocs17FullStateDiagMatrPKc(ptr noundef nonnull byval(%struct.FullStateDiagMatr) align 8 %0, ptr noundef nonnull @__func__._Z40validateAndCreateCustomFullStateDiagMatriiiiPKc)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.v)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.x)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.z)
  call void @_Z21util_setFlagToUnknownPi(ptr noundef %i.ab)
  store i32 0, ptr %i.ad, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  ret void
}

declare void @_Z35validate_newFullStateDiagMatrParamsiiiiPKc(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z41autodep_chooseFullStateDiagMatrDeploymentiRiS_S_8QuESTEnv(i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef byval(%struct.QuESTEnv) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_Z30freeAllMemoryIfAnyAllocsFailedI17FullStateDiagMatrEvT_(ptr noundef byval(%struct.FullStateDiagMatr) align 8 %0) local_unnamed_addr #7 comdat {
bb.a:
  %1 = alloca %struct.QuESTEnv, align 4           ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !47
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.47.0.copyload = load ptr, ptr %.sroa.47.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.58.0.copyload = load ptr, ptr %.sroa.58.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.69.0.copyload = load ptr, ptr %.sroa.69.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.710.0.copyload = load ptr, ptr %.sroa.710.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.811.0.copyload = load ptr, ptr %.sroa.811.0..sroa_idx, align 8, !tbaa !48 ; 2 uses
  %.sroa.912.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.912.0.copyload = load ptr, ptr %.sroa.912.0..sroa_idx, align 8, !tbaa !25 ; 2 uses
  %.sroa.1013.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.1013.0.copyload = load ptr, ptr %.sroa.1013.0..sroa_idx, align 8, !tbaa !25 ; 3 uses
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.47.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.58.0.copyload)
  br i1 %i.b, label %bb.c, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.811.0.copyload)
  br i1 %i.c, label %bb.d, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.69.0.copyload)
  br i1 %i.d, label %bb.e, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_Z15mem_isAllocatedPi(ptr noundef %.sroa.710.0.copyload)
  br i1 %i.e, label %bb.f, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.912.0.copyload)
  br i1 %i.f, label %bb.g, label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

bb.g:                                             ; preds = %bb.f
  %i.g = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.1013.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  call void @getQuESTEnv(ptr dead_on_unwind nonnull writable sret(%struct.QuESTEnv) align 4 %1)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39
  %i.j = icmp ne i32 %i.i, 0
  %i.k = xor i1 %i.g, true
  %i.l = and i1 %i.j, %i.k
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.m = icmp ne i32 %.sroa.2.0.copyload, 0
  %or.cond.i = select i1 %i.l, i1 %i.m, i1 false
  br label %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit

_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.1.i = phi i1 [ %or.cond.i, %bb.g ], [ true, %bb.e ], [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.f ] ; 2 uses
  %i.n = call noundef zeroext i1 @_Z11comm_isInitv()
  br i1 %i.n, label %.split, label %bb.h

.split:                                           ; preds = %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit
  %i.o = call noundef zeroext i1 @_Z21comm_isTrueOnAllNodesb(i1 noundef zeroext %.1.i)
  br i1 %i.o, label %bb.i, label %bb.k

bb.h:                                             ; preds = %_Z21didAnyLocalAllocsFailI17FullStateDiagMatrEbT_.exit
  br i1 %.1.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.split, %bb.h
  call void @_Z16cpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.912.0.copyload)
  %i.p = call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.1013.0.copyload)
  br i1 %i.p, label %bb.j, label %_Z14freeHeapMatrixI17FullStateDiagMatrEvT_.exit

bb.j:                                             ; preds = %bb.i
  call void @_Z16gpu_deallocArrayPSt7complexIdE(ptr noundef %.sroa.1013.0.copyload)
  br label %_Z14freeHeapMatrixI17FullStateDiagMatrEvT_.exit

_Z14freeHeapMatrixI17FullStateDiagMatrEvT_.exit:  ; preds = %bb.i, %bb.j
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.47.0.copyload)
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.58.0.copyload)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.811.0.copyload)
  call void @_Z36util_deallocEpsilonSensitiveHeapFlagPi(ptr noundef %.sroa.69.0.copyload)
  call void @_Z19cpu_deallocHeapFlagPi(ptr noundef %.sroa.710.0.copyload)
  br label %bb.k

bb.k:                                             ; preds = %.split, %_Z14freeHeapMatrixI17FullStateDiagMatrEvT_.exit, %bb.h
  ret void
}

declare void @_Z24validate_newMatrixAllocs17FullStateDiagMatrPKc(ptr noundef byval(%struct.FullStateDiagMatr) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @createCustomFullStateDiagMatr(ptr dead_on_unwind noalias nofree writable sret(%struct.FullStateDiagMatr) align 8 captures(none) initializes((0, 4), (8, 28), (32, 96)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 {
bb.a:
  tail call void @_Z40validateAndCreateCustomFullStateDiagMatriiiiPKc(ptr dead_on_unwind writable sret(%struct.FullStateDiagMatr) align 8 %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull @__func__.createCustomFullStateDiagMatr)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @createFullStateDiagMatr(ptr dead_on_unwind noalias nofree writable sret(%struct.FullStateDiagMatr) align 8 captures(none) initializes((0, 4), (8, 28), (32, 96)) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr @_ZN8modeflag8USE_AUTOE, align 4, !tbaa !47 ; 3 uses
  tail call void @_Z40validateAndCreateCustomFullStateDiagMatriiiiPKc(ptr dead_on_unwind writable sret(%struct.FullStateDiagMatr) align 8 %0, i32 noundef %1, i32 noundef %i.a, i32 noundef %i.a, i32 noundef %i.a, ptr noundef nonnull @__func__.createFullStateDiagMatr)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @syncCompMatr(ptr nofree noundef readonly byval(%struct.CompMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.61.0.copyload = load ptr, ptr %.sroa.61.0..sroa_idx, align 8
  tail call void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0, ptr noundef nonnull @__func__.syncCompMatr)
  %i.a = tail call noundef zeroext i1 @_Z15mem_isAllocatedPSt7complexIdE(ptr noundef %.sroa.61.0.copyload)
  br i1 %i.a, label %bb.b, label %_Z21validateAndSyncMatrixI8CompMatrEvT_PKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_Z16gpu_copyCpuToGpu8CompMatr(ptr noundef nonnull byval(%struct.CompMatr) align 8 %0)
  br label %_Z21validateAndSyncMatrixI8CompMatrEvT_PKc.exit

_Z21validateAndSyncMatrixI8CompMatrEvT_PKc.exit:  ; preds = %bb.a, %bb.b
  store i32 1, ptr %.sroa.5.0.copyload, align 4, !tbaa !47
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.3.0.copyload)
  tail call void @_Z21util_setFlagToUnknownPi(ptr noundef %.sroa.4.0.copyload)
  ret void
}

declare void @_Z21validate_matrixFields8CompMatrPKc(ptr noundef byval(%struct.CompMatr) align 8, ptr noundef) local_unnamed_addr #3

declare void @_Z16gpu_copyCpuToGpu8CompMatr(ptr noundef byval(%struct.CompMatr) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @syncDiagMatr(ptr nofree noundef readonly byval(%struct.DiagMatr) align 8 captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
end_hunk_0
