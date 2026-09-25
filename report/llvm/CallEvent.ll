Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallEvent?download=true
inline.NumInlined: 3538
inline.NumDeleted: 2157
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5clang4ento16CallEventManager6createINS0_18CXXConstructorCallEPKNS_16CXXConstructExprEPKNS0_9MemRegionEEEPT_T0_T1_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE:bb.a
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.c, align 8, !tbaa !801
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 72, i64 noundef 72, i8 3)
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = add i32 %i.b, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !177
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !22     ; 9 uses
  %.not.i.i4 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i4, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i, label %bb.f

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  %.sroa.09.0.copyload10 = load ptr, ptr %5, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload12 = load i64, ptr %.sroa.2.0..sroa_idx11, align 8, !tbaa !190
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !190
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i
  %.sroa.2.0.copyload15 = phi i64 [ %.sroa.2.0.copyload, %bb.f ], [ %.sroa.2.0.copyload12, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %.sroa.09.0.copyload13 = phi ptr [ %.sroa.09.0.copyload, %bb.f ], [ %.sroa.09.0.copyload10, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %4, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %.sroa.09.0.copyload13, ptr %i.x, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %.sroa.2.0.copyload15, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.y, align 1, !tbaa !845
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !846
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.aa, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br i1 %.not.i.i4, label %_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, label %bb.g

_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ab, align 8, !tbaa !188
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento21AnyCXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ac, align 8, !tbaa !188
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento18CXXConstructorCallC2EPKNS_16CXXConstructExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, %bb.g
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang4ento18CXXConstructorCall7cloneToEPv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %1, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.c) #21, !inline_history !1299
  br label %_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit

_ZN5clang4ento18CXXConstructorCallC2ERKS1_.exit:  ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  store ptr %i.f, ptr %i.d, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !850
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.l, align 1, !tbaa !845
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  store ptr %i.o, ptr %i.m, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !187
  store i32 %i.r, ptr %i.p, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento18CXXConstructorCallE, i64 16), ptr %1, align 8, !tbaa !89
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento18CXXConstructorCallD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5clang4ento9CallEventD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #21, !inline_history !851
  br label %_ZN5clang4ento9CallEventD2Ev.exit

_ZN5clang4ento9CallEventD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento18CXXConstructorCall7getKindEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5clang4ento18CXXConstructorCall15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.33, i64 18 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall7getDeclEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1300
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall13getOriginExprEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.e, ptr null
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento18CXXConstructorCall10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !868
  ret i32 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento18CXXConstructorCall10getArgExprEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #21 ; 2 uses
  %i.e = load i16, ptr %i.d, align 8
  %i.f = and i16 %i.e, 511
  %.not.i.i.i.i = icmp eq i16 %i.f, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %spec.select.v.i.i.i.i
  %i.h = zext i32 %1 to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !811
  ret ptr %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento16CallEventManager6createINS0_27CXXInheritedConstructorCallEPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEEEPT_T0_T1_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef align 8 dereferenceable(8) %3, ptr noundef %4, ptr noundef byval(%"class.clang::CFGBlock::ElementRefImpl") align 8 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !844, !nonnull !86, !align !87 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !801  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 72                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !802
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.c, align 8, !tbaa !801
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 72, i64 noundef 72, i8 3)
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = add i32 %i.b, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !177
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !22     ; 9 uses
  %.not.i.i4 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i4, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i, label %bb.f

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  %.sroa.09.0.copyload10 = load ptr, ptr %5, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload12 = load i64, ptr %.sroa.2.0..sroa_idx11, align 8, !tbaa !190
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  %.sroa.09.0.copyload = load ptr, ptr %5, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !190
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i
  %.sroa.2.0.copyload15 = phi i64 [ %.sroa.2.0.copyload, %bb.f ], [ %.sroa.2.0.copyload12, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %.sroa.09.0.copyload13 = phi ptr [ %.sroa.09.0.copyload, %bb.f ], [ %.sroa.09.0.copyload10, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %4, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %.sroa.09.0.copyload13, ptr %i.x, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %.sroa.2.0.copyload15, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.y, align 1, !tbaa !845
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !846
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.aa, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br i1 %.not.i.i4, label %_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, label %bb.g

_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ab, align 8, !tbaa !188
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.g:                                             ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento21AnyCXXConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  %i.ac = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %2, ptr %i.ac, align 8, !tbaa !188
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN5clang4ento27CXXInheritedConstructorCallC2EPKNS_24CXXInheritedCtorInitExprEPKNS0_9MemRegionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, %bb.g
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK5clang4ento27CXXInheritedConstructorCall7cloneToEPv(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %1, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !22
  %.not.i.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.c) #21, !inline_history !1301
  br label %_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit

_ZN5clang4ento27CXXInheritedConstructorCallC2ERKS1_.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !118
  store ptr %i.f, ptr %i.d, align 8, !tbaa !118
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8
  store i64 %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !850
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 49
  store i8 0, ptr %i.l, align 1, !tbaa !845
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  store ptr %i.o, ptr %i.m, align 8, !tbaa !188
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !187
  store i32 %i.r, ptr %i.p, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 0, ptr %i.s, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento27CXXInheritedConstructorCallE, i64 16), ptr %1, align 8, !tbaa !89
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5clang4ento27CXXInheritedConstructorCallD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento9CallEventE, i64 16), ptr %0, align 8, !tbaa !89
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN5clang4ento9CallEventD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #21, !inline_history !851
  br label %_ZN5clang4ento9CallEventD2Ev.exit

_ZN5clang4ento9CallEventD2Ev.exit:                ; preds = %bb.a, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento27CXXInheritedConstructorCall7getKindEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 6
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i64 } @_ZNK5clang4ento27CXXInheritedConstructorCall15getKindAsStringEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret { ptr, i64 } { ptr @.str.34, i64 27 }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall7getDeclEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !89
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0) #21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1303
  ret ptr %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall13getOriginExprEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.a, align 8 ; 2 uses
  %i.b = and i64 %.sroa.0.0.copyload.i.i.i.i.i, 2
  %i.c = icmp eq i64 %i.b, 0
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -3
  %i.e = inttoptr i64 %i.d to ptr
  %.0.i.i.i.i.i = select i1 %i.c, ptr %i.e, ptr null
  ret ptr %.0.i.i.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5clang4ento27CXXInheritedConstructorCall10getNumArgsEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn.i.i = phi ptr [ %0, %bb.a ], [ %.0.i.i, %bb.b ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !823 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511
  %i.e = icmp eq i16 %i.d, 110
  br i1 %i.e, label %bb.b, label %_ZNK5clang4ento27CXXInheritedConstructorCall24getInheritingConstructorEv.exit, !llvm.loop !7

_ZNK5clang4ento27CXXInheritedConstructorCall24getInheritingConstructorEv.exit: ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !868
  ret i32 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNK5clang4ento27CXXInheritedConstructorCall10getArgSValEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22, !noalias !1306 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNK5clang4ento9CallEvent8getStateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #21, !noalias !1306
  br label %_ZNK5clang4ento9CallEvent8getStateEv.exit

_ZNK5clang4ento9CallEvent8getStateEv.exit:        ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !89
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) #21
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZNK5clang4ento9CallEvent8getStateEv.exit
  %.pn.i = phi ptr [ %0, %_ZNK5clang4ento9CallEvent8getStateEv.exit ], [ %.0.i, %bb.c ]
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 16
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !823 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !227
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  %i.k = icmp eq i16 %i.j, 110
  br i1 %i.k, label %bb.c, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, !llvm.loop !7

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !221
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.f, ptr noundef %i.m) #21
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36
  %i.s = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(412) %i.r) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.b) #21
  ret { ptr, i8 } %i.s
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK5clang4ento27CXXInheritedConstructorCall10getArgExprEj(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.pn.i.i = phi ptr [ %0, %bb.a ], [ %.0.i.i, %bb.b ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !823 ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 2 uses
  %i.c = load i16, ptr %i.b, align 8
  %i.d = and i16 %i.c, 511                        ; 2 uses
  %i.e = icmp eq i16 %i.d, 110
  br i1 %i.e, label %bb.b, label %_ZNK5clang4ento27CXXInheritedConstructorCall24getInheritingConstructorEv.exit, !llvm.loop !7

_ZNK5clang4ento27CXXInheritedConstructorCall24getInheritingConstructorEv.exit: ; preds = %bb.b
  %.not.i.i.i.i = icmp eq i16 %i.d, 118
  %spec.select.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 48, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 %spec.select.v.i.i.i.i
  %i.g = zext i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !811
  ret ptr %i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento16CallEventManager6createINS0_17CXXDestructorCallEPKNS_17CXXDestructorDeclEPKNS_4StmtEPKNS0_9MemRegionEbEEPT_T0_T1_T2_T3_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4, ptr nofree noundef align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef byval(%"class.clang::CFGBlock::ElementRefImpl") align 8 %7) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !844, !nonnull !86, !align !87 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !801  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 72                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !802
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.c, align 8, !tbaa !801
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 72, i64 noundef 72, i8 3)
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = add i32 %i.b, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !177
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 15 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !22     ; 9 uses
  %.not.i.i5 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i5, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, label %bb.f

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  %.sroa.010.0.copyload11 = load ptr, ptr %7, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload13 = load i64, ptr %.sroa.2.0..sroa_idx12, align 8, !tbaa !190
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4DeclEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  %.sroa.010.0.copyload = load ptr, ptr %7, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !190
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4DeclEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4DeclEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i: ; preds = %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i
  %.sroa.2.0.copyload16 = phi i64 [ %.sroa.2.0.copyload, %bb.f ], [ %.sroa.2.0.copyload13, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i ]
  %.sroa.010.0.copyload14 = phi ptr [ %.sroa.010.0.copyload, %bb.f ], [ %.sroa.010.0.copyload11, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %6, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  %i.x = or i64 %i.w, 2
  store i64 %i.x, ptr %i.v, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %.sroa.010.0.copyload14, ptr %i.y, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %.sroa.2.0.copyload16, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !190
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.z, align 1, !tbaa !845
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 64 ; 3 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !846
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.ab, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br i1 %.not.i.i5, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.critedge, label %_ZN5clang4ento17CXXDestructorCallC2EPKNS_17CXXDestructorDeclEPKNS_4StmtEPKNS0_9MemRegionEbN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit

_ZN5clang4ento17CXXDestructorCallC2EPKNS_17CXXDestructorDeclEPKNS_4StmtEPKNS0_9MemRegionEbN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4DeclEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN5clang4ento15CXXInstanceCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN5clang4ento17CXXDestructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  %i.ac = ptrtoint ptr %3 to i64
  %i.ad = and i64 %i.ac, -5
  %i.ae = select i1 %4, i64 4, i64 0
  %i.af = or disjoint i64 %i.ae, %i.ad
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !188
  %i.ai = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store i32 %i.ai, ptr %i.aa, align 8, !tbaa !187
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.critedge: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4DeclEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 168) (i8, ptr @_ZTVN5clang4ento17CXXDestructorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  %i.aj = ptrtoint ptr %3 to i64
  %i.ak = and i64 %i.aj, -5
  %i.al = select i1 %4, i64 4, i64 0
  %i.am = or disjoint i64 %i.al, %i.ak
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !188
  %i.ap = tail call i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22
  store i32 %i.ap, ptr %i.aa, align 8, !tbaa !187
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.critedge, %_ZN5clang4ento17CXXDestructorCallC2EPKNS_17CXXDestructorDeclEPKNS_4StmtEPKNS0_9MemRegionEbN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit
  ret ptr %.0.i
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @_ZNK5clang4Stmt9getEndLocEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN5clang4ento16CallEventManager6createINS0_16CXXAllocatorCallEPKNS_10CXXNewExprEEEPT_T0_N4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr nofree noundef align 8 dereferenceable(8) %2, ptr noundef %3, ptr %4, i64 %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !177  ; 3 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !844, !nonnull !86, !align !87 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !801  ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, 72                         ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !802
  %i.i = icmp ult i64 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %bb.d, !prof !192

bb.c:                                             ; preds = %bb.b
  %i.j = inttoptr i64 %i.f to ptr
  store ptr %i.j, ptr %i.c, align 8, !tbaa !801
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 noundef 72, i64 noundef 72, i8 3)
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !176
  %i.n = zext i32 %i.b to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.n
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !201
  %i.r = add i32 %i.b, -1
  store i32 %i.r, ptr %i.a, align 8, !tbaa !177
  br label %_ZN5clang4ento16CallEventManager8allocateEv.exit

_ZN5clang4ento16CallEventManager8allocateEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.c ], [ %i.k, %bb.d ] ; 12 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !22     ; 7 uses
  %.not.i.i5 = icmp eq ptr %i.s, null             ; 2 uses
  br i1 %.not.i.i5, label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #21
  br label %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i

_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i: ; preds = %_ZN5clang4ento16CallEventManager8allocateEv.exit, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %3, ptr %i.u, align 8, !tbaa !118
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.w = ptrtoint ptr %1 to i64
  store i64 %i.w, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i, i64 32
  store ptr %4, ptr %i.x, align 8, !tbaa !189
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 40
  store i64 %5, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !190
  %i.y = getelementptr inbounds nuw i8, ptr %.0.i, i64 49
  store i8 0, ptr %i.y, align 1, !tbaa !845
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i, i64 64
  store i32 0, ptr %i.z, align 8, !tbaa !846
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i, i64 68
  store i32 0, ptr %i.aa, align 4, !tbaa !229
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento15AnyFunctionCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br i1 %.not.i.i5, label %_ZN5clang4ento16CXXAllocatorCallC2EPKNS_10CXXNewExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread, label %bb.g

_ZN5clang4ento16CXXAllocatorCallC2EPKNS_10CXXNewExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.thread: ; preds = %_ZN5clang4ento15AnyFunctionCallC2EPKNS_4ExprEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_10StackFrameENS_8CFGBlock14ElementRefImplILb1EEE.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 152) (i8, ptr @_ZTVN5clang4ento16CXXAllocatorCallE, i64 16), ptr %.0.i, align 8, !tbaa !89
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

end_hunk_0
