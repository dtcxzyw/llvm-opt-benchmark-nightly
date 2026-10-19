Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/raw_ostream?download=true
inline.NumInlined: 916
inline.NumDeleted: 464
begin_hunk_0_@_ZNK4llvm14raw_fd_ostream21preferred_buffer_sizeEv:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = call i32 @fstat(i32 noundef %i.b, ptr noundef nonnull %1) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !190
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 8192
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(96) %0) #27
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.m = load i64, ptr %i.l, align 8, !tbaa !191
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i64 [ %i.m, %bb.d ], [ 0, %bb.a ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14raw_fd_ostream12is_displayedEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call noundef zeroext i1 @_ZN4llvm3sys7Process25FileDescriptorIsDisplayedEi(i32 noundef %i.b) #27
  ret i1 %i.c
}

declare noundef zeroext i1 @_ZN4llvm3sys7Process25FileDescriptorIsDisplayedEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm14raw_fd_ostream10has_colorsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 55 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i8, ptr %i.b, align 8, !tbaa !80, !range !52, !noundef !53
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = load i8, ptr %i.a, align 1, !tbaa !192, !range !52
  %i.e = trunc nuw i8 %.pre to i1
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8, !tbaa !76
  %i.h = tail call noundef zeroext i1 @_ZN4llvm3sys7Process23FileDescriptorHasColorsEi(i32 noundef %i.g) #27 ; 2 uses
  %.sroa.0.0.insert.ext = zext i1 %i.h to i16
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.0.0.insert.ext, 256
  store i16 %.sroa.0.0.insert.insert, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.i = phi i1 [ %i.e, %._crit_edge ], [ %i.h, %bb.b ]
  ret i1 %i.i
}

declare noundef zeroext i1 @_ZN4llvm3sys7Process23FileDescriptorHasColorsEi(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14raw_fd_ostream4lockEv(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %2 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call { i32, ptr } @_ZN4llvm3sys2fs8lockFileEiNS1_8LockKindE(i32 noundef %i.b, i32 noundef 0) #27 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0        ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN4llvm3sys2fs10FileLockerD2Ev.exit, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm3sys2fs10FileLockerD2Ev.exit:             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 8
  store i32 %i.e, ptr %0, align 8, !tbaa !96
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.i = extractvalue { i32, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %2, i32 %i.d, ptr %i.i) #27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !195)
  %i.m = load ptr, ptr %2, align 8, !tbaa !99, !noalias !195
  store ptr %i.m, ptr %0, align 8, !tbaa !100, !alias.scope !195
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm3sys2fs10FileLockerD2Ev.exit
  ret void
}

declare { i32, ptr } @_ZN4llvm3sys2fs8lockFileEiNS1_8LockKindE(i32 noundef, i32 noundef) local_unnamed_addr #6

declare void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, i32, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm14raw_fd_ostream10tryLockForERKNS_8DurationE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected") align 8 captures(none) initializes((0, 4)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %3 = alloca %"class.llvm::Error", align 8       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !tbaa !50
  %i.c = tail call { i32, ptr } @_ZN4llvm3sys2fs11tryLockFileEiNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS1_8LockKindE(i32 noundef %i.b, i64 %.sroa.0.0.copyload.i, i32 noundef 0) #27 ; 2 uses
  %i.d = extractvalue { i32, ptr } %i.c, 0        ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_ZN4llvm3sys2fs10FileLockerD2Ev.exit, label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm3sys2fs10FileLockerD2Ev.exit:             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 8, !tbaa !76
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = and i8 %i.g, -2
  store i8 %i.h, ptr %i.f, align 8
  store i32 %i.e, ptr %0, align 8, !tbaa !96
  br label %bb.b

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %bb.a
  %i.i = extractvalue { i32, ptr } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %3, i32 %i.d, ptr %i.i) #27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = or i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !198)
  %i.m = load ptr, ptr %3, align 8, !tbaa !99, !noalias !198
  store ptr %i.m, ptr %0, align 8, !tbaa !100, !alias.scope !198
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit, %_ZN4llvm3sys2fs10FileLockerD2Ev.exit
  ret void
}

declare { i32, ptr } @_ZN4llvm3sys2fs11tryLockFileEiNSt6chrono8durationIlSt5ratioILl1ELl1000EEEENS1_8LockKindE(i32 noundef, i64, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4llvm14raw_fd_ostream6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4outsEv() local_unnamed_addr #4 {
bb.a:
  %0 = alloca %"class.std::error_code", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #27
  store i32 0, ptr %0, align 8, !tbaa !82
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !83
  %i.c = load atomic i8, ptr @_ZGVZN4llvm4outsEvE3EC1 acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4outsEvE3EC1) #27
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm4outsEvE3EC1, i64 8), align 8
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4outsEvE3EC1) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load atomic i8, ptr @_ZGVZN4llvm4outsEvE1S acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.g, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4outsEvE1S) #27
  %.not1 = icmp eq i32 %i.h, 0
  br i1 %.not1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm14raw_fd_ostreamC1ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN4llvm4outsEvE1S, ptr nonnull @.str.1, i64 1, ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef 0) #27
  %i.i = call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm14raw_fd_ostreamD1Ev, ptr nonnull @_ZZN4llvm4outsEvE1S, ptr nonnull @__dso_handle) #27 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4outsEvE1S) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #27
  ret ptr @_ZZN4llvm4outsEvE1S
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvm4errsEvE2EC acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4errsEvE2EC) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4errsEvE2EC) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.d = load atomic i8, ptr @_ZGVZN4llvm4errsEvE1S acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.e, label %bb.g, !prof !101

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm4errsEvE1S) #27
  %.not1 = icmp eq i32 %i.f, 0
  br i1 %.not1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvm14raw_fd_ostreamC1EibbNS_11raw_ostream11OStreamKindE(ptr noundef nonnull align 8 dereferenceable(96) @_ZZN4llvm4errsEvE1S, i32 noundef 2, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 0) #27
  %i.g = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm14raw_fd_ostreamD1Ev, ptr nonnull @_ZZN4llvm4errsEvE1S, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm4errsEvE1S) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  ret ptr @_ZZN4llvm4errsEvE1S
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm5nullsEv() local_unnamed_addr #4 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4llvm5nullsEvE1S acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !101

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4llvm5nullsEvE1S) #27
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm5nullsEvE1S, i64 8), align 8, !tbaa !59
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4llvm5nullsEvE1S, i64 44), align 4, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) getelementptr inbounds nuw (i8, ptr @_ZZN4llvm5nullsEvE1S, i64 16), i8 0, i64 25, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm16raw_null_ostreamE, i64 16), ptr @_ZZN4llvm5nullsEvE1S, align 8, !tbaa !19
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN4llvm16raw_null_ostreamD1Ev, ptr nonnull @_ZZN4llvm5nullsEvE1S, ptr nonnull @__dso_handle) #27 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4llvm5nullsEvE1S) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret ptr @_ZZN4llvm5nullsEvE1S
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13raw_fd_streamC2ENS_9StringRefERSt10error_code(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((0, 12), (16, 41), (44, 55), (56, 57), (64, 76), (80, 96)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3) unnamed_addr #4 align 2 {
bb.a:
  %4 = alloca %"class.llvm::sys::fs::file_status", align 8 ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %.not.i.i = icmp eq i64 %2, 1
  br i1 %.not.i.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i

_ZN4llvmeqENS_9StringRefES0_.exit.i:              ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1
  %i.b = icmp eq i8 %lhsc.i, 45
  br i1 %i.b, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i

_ZN4llvmeqENS_9StringRefES0_.exit.thread.i:       ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i
  %i.c = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31 ; 2 uses
  store i32 0, ptr %3, align 8, !tbaa !58
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.c, ptr %.sroa.424.0..sroa_idx.i, align 8, !tbaa !90
  %i.d = tail call { i32, ptr } @_ZN4llvm3sys16ChangeStdoutModeENS0_2fs9OpenFlagsE(i32 noundef 0) #27 ; 0 uses
  br label %_ZL5getFDN4llvm9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i:     ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.e, align 8, !tbaa !93
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.f, align 1, !tbaa !94
  store ptr %1, ptr %5, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %2, ptr %i.g, align 8, !tbaa !35
  %i.h = call { i32, ptr } @_ZN4llvm3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef 0, i32 noundef 3, i32 noundef 0, i32 noundef 438) #27 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  %.sink.i = extractvalue { i32, ptr } %i.h, 1
  %.sink30.i = extractvalue { i32, ptr } %i.h, 0  ; 2 uses
  store i32 %.sink30.i, ptr %3, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink.i, ptr %i.i, align 8, !tbaa !90
  %.not29.i = icmp eq i32 %.sink30.i, 0
  %i.j = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %.pre = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #31
  %spec.select = select i1 %.not29.i, i32 %i.j, i32 -1
  br label %_ZL5getFDN4llvm9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZL5getFDN4llvm9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit: ; preds = %_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i
  %.pre-phi = phi ptr [ %.pre, %_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i ], [ %i.c, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ]
  %.1.i = phi i32 [ %spec.select, %_ZN4llvmeqENS_9StringRefES0_.exit.thread27.i ], [ 1, %_ZN4llvmeqENS_9StringRefES0_.exit.thread.i ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.k, align 8, !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store i8 0, ptr %i.l, align 8, !tbaa !60
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.m, align 4, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i32 %.1.i, ptr %i.o, align 8, !tbaa !76
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  store i8 1, ptr %i.p, align 4, !tbaa !77
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  store i8 0, ptr %i.q, align 1, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  store i8 0, ptr %i.r, align 2, !tbaa !79
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 0, ptr %i.s, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.t, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.u, align 8, !tbaa !82
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.pre-phi, ptr %i.v, align 8, !tbaa !83
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !84
  %i.x = icmp slt i32 %.1.i, 0
  br i1 %i.x, label %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZL5getFDN4llvm9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  store i8 1, ptr %i.l, align 8, !tbaa !60
  %i.y = icmp samesign ult i32 %.1.i, 3
  br i1 %i.y, label %bb.c, label %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.p, align 4, !tbaa !77
  br label %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit

_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit: ; preds = %bb.b, %bb.c
  %i.z = call i64 @lseek(i32 noundef %.1.i, i64 noundef 0, i32 noundef 1) #27 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 44
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, i8 0, i64 44, i1 false)
  store i32 65535, ptr %i.aa, align 4, !tbaa !88
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i8 0, i64 24, i1 false)
  %i.ac = load i32, ptr %i.o, align 8, !tbaa !76
  %i.ad = call { i32, ptr } @_ZN4llvm3sys2fs6statusEiRNS1_11file_statusE(i32 noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(72) %4) #27
  %i.ae = extractvalue { i32, ptr } %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !89
  %i.ah = icmp eq i32 %i.ag, 2                    ; 2 uses
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.r, align 2, !tbaa !79
  %.not.i = icmp eq i32 %i.ae, 0
  %i.aj = icmp ne i64 %i.z, -1
  %i.ak = select i1 %.not.i, i1 %i.aj, i1 false   ; 2 uses
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.q, align 1, !tbaa !78
  %..i = select i1 %i.ak, i64 %i.z, i64 0
  store i64 %..i, ptr %i.w, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm13raw_fd_streamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.am = load i32, ptr %3, align 8, !tbaa !82
  %.not = icmp ne i32 %i.am, 0
  %brmerge = select i1 %.not, i1 true, i1 %i.ah
  br i1 %brmerge, label %bb.d, label %.thread

_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit.thread: ; preds = %_ZL5getFDN4llvm9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  store i8 0, ptr %i.p, align 4, !tbaa !77
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm13raw_fd_streamE, i64 16), ptr %0, align 8, !tbaa !19
  %i.an = load i32, ptr %3, align 8, !tbaa !82
  %.not8 = icmp eq i32 %i.an, 0
  br i1 %.not8, label %.thread, label %bb.d

.thread:                                          ; preds = %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit, %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit.thread
  %i.ao = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  store i32 22, ptr %3, align 8, !tbaa !58
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ao, ptr %.sroa.41.0..sroa_idx, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit, %_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE.exit.thread, %.thread
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm13raw_fd_streamC2Eib(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((0, 12), (16, 41), (44, 55), (56, 57), (64, 76), (80, 96)) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvm14raw_fd_ostreamC2EibbNS_11raw_ostream11OStreamKindE(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext false, i32 noundef 1)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm13raw_fd_streamE, i64 16), ptr %0, align 8, !tbaa !19
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i64 @_ZN4llvm13raw_fd_stream4readEPcm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call i64 @read(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #27 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !84
  %i.g = add i64 %i.f, %i.c
  store i64 %i.g, ptr %i.e, align 8, !tbaa !84
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = tail call ptr @__errno_location() #31
  %i.i = load i32, ptr %i.h, align 4, !tbaa !58
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.i, ptr %i.k, align 8, !tbaa !58
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.j, ptr %.sroa.21.0..sroa_idx.i, align 8, !tbaa !90
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret i64 %i.c
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4llvm13raw_fd_stream7classofEPKNS_11raw_ostreamE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %i.c = icmp eq i32 %i.b, 1
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm18raw_string_ostream10write_implEPKcm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104, !nonnull !53, !align !105 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !108
end_hunk_0
