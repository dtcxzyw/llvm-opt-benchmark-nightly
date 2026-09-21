Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/VLASizeChecker?download=true
inline.NumInlined: 1220
inline.NumDeleted: 832
begin_hunk_0_@_ZN5clang4ento5check7PreStmtINS_8DeclStmtEE10_checkStmtIN12_GLOBAL__N_114VLASizeCheckerEEEvPvPKNS_4StmtERNS0_14CheckerContextE:bb.a
  %i.ar = load ptr, ptr %9, align 8, !tbaa !190   ; 2 uses
  %.not.i.i36.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i36.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ar) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i: ; preds = %bb.j, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  %.not105.i = icmp eq ptr %i.aq, null
  br i1 %.not105.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i
  %.sroa.2.0.copyload.i.i.i = load i8, ptr %i.an, align 8, !tbaa !192 ; 2 uses
  %i.as = add i8 %.sroa.2.0.copyload.i.i.i, -5
  %spec.select.i.i.i.i = icmp ult i8 %i.as, 6
  br i1 %spec.select.i.i.i.i, label %bb.m, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.k
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.pre.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !187 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !190
  %.not106.i = icmp eq ptr %i.aq, %i.au
  br i1 %.not106.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit42.i, label %bb.l

bb.l:                                             ; preds = %.thread.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.aw, i64 48, i1 false), !tbaa.struct !195
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !196, !nonnull !19, !align !52
  store ptr %i.aq, ptr %6, align 8, !tbaa !190
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  %i.az = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.pre.i.i.i, i1 noundef zeroext false) #17 ; 0 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !190   ; 2 uses
  %.not.i.i23.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i23.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i: ; preds = %bb.l
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ba) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit42.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit42.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.sink.split.i

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit46.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit46.i: ; preds = %bb.m
  store ptr %i.aq, ptr %11, align 8, !tbaa !190
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  %i.bb = load ptr, ptr %i.m, align 8, !tbaa !187
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !36
  %i.bc = and i64 %.sroa.3.0.copyload.i.i.i, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !207
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 240
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 232
  %i.bj = tail call noundef nonnull ptr @_ZN5clang4ento16MemRegionManager12getVarRegionEPKNS_7VarDeclEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(152) %i.bi, ptr noundef nonnull %i.q, ptr noundef %i.bd) #17
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %7, align 8
  call void @_ZN5clang4ento16setDynamicExtentEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS0_9MemRegionENS0_20DefinedOrUnknownSValE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8 %10, ptr nofree noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %i.bj, ptr %.sroa.0.0.copyload.i.i.i.i, i8 %.sroa.2.0.copyload.i.i.i) #17
  %i.bk = load ptr, ptr %10, align 8, !tbaa !190  ; 4 uses
  store ptr %i.aq, ptr %10, align 8, !tbaa !190
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  %i.bl = load ptr, ptr %11, align 8, !tbaa !190  ; 2 uses
  %.not.i.i47.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i47.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit46.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bl) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48.i: ; preds = %bb.n, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit46.i
  %.not.i.i49.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i49.i, label %bb.o, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bk) #17
  br label %.thread.i52.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i: ; preds = %bb.m
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aq) #17
  br label %.thread.i52.i

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit48.i
  %i.bm = load ptr, ptr %i.m, align 8, !tbaa !187
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %.pr.i60.i = load ptr, ptr %i.bn, align 8, !tbaa !190 ; 2 uses
  %.not.i.i.i61.i = icmp eq ptr %.pr.i60.i, null
  br i1 %.not.i.i.i61.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i, label %.thread.i52.i

.thread.i52.i:                                    ; preds = %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i
  %.sroa.073.08796.i = phi ptr [ null, %bb.o ], [ %i.aq, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i ], [ %i.bk, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i ] ; 2 uses
  %.not.i.i498993.i = phi i1 [ true, %bb.o ], [ false, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i ], [ false, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i ]
  %i.bo = phi ptr [ %.pr.i60.i, %bb.o ], [ %i.aq, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.i ], [ %i.bk, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit50.thread98.i ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bo) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.pre.i.i54.i = load ptr, ptr %i.m, align 8, !tbaa !187 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.pre.i.i54.i, i64 56
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !190
  %.not108.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not108.i, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i, label %bb.p

bb.p:                                             ; preds = %.thread.i52.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.br, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.bs, i64 48, i1 false), !tbaa.struct !195
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !196, !nonnull !19, !align !52
  store ptr %i.bo, ptr %4, align 8, !tbaa !190
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bo) #17
  %i.bv = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.pre.i.i54.i, i1 noundef zeroext false) #17 ; 0 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !190   ; 2 uses
  %.not.i.i23.i.i57.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i23.i.i57.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i59.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i58.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i58.i: ; preds = %bb.p
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bw) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i59.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i59.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i58.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i59.i, %.thread.i52.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bo) #17
  br i1 %.not.i.i498993.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.sink.split.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.sink.split.i: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit42.i
  %.sroa.073.08796.sink.i = phi ptr [ %i.aq, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit42.i ], [ %.sroa.073.08796.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i ] ; 2 uses
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.073.08796.sink.i) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.sink.split.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i, %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i
  %.sroa.073.1.i = phi ptr [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit37.i ], [ %.sroa.073.08796.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit62.i ], [ null, %bb.o ], [ %.sroa.073.08796.sink.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %.critedge.i

.critedge.i:                                      ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i, %bb.h, %bb.g, %bb.e
  %.sroa.073.2.i = phi ptr [ %i.p, %bb.e ], [ %.sroa.073.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit64.i ], [ %i.p, %bb.h ], [ %i.p, %bb.g ] ; 2 uses
  %.not.i.i65.i = icmp eq ptr %.sroa.073.2.i, null
  br i1 %.not.i.i65.i, label %_ZNK12_GLOBAL__N_114VLASizeChecker12checkPreStmtEPKN5clang8DeclStmtERNS1_4ento14CheckerContextE.exit, label %bb.q

bb.q:                                             ; preds = %.critedge.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.073.2.i) #17
  br label %_ZNK12_GLOBAL__N_114VLASizeChecker12checkPreStmtEPKN5clang8DeclStmtERNS1_4ento14CheckerContextE.exit

_ZNK12_GLOBAL__N_114VLASizeChecker12checkPreStmtEPKN5clang8DeclStmtERNS1_4ento14CheckerContextE.exit: ; preds = %bb.a, %.critedge.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5clang4ento5check7PreStmtINS_8DeclStmtEE12_handlesStmtEPKNS_4StmtE(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 8
  %i.b = and i16 %i.a, 511
  %i.c = icmp eq i16 %i.b, 255
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker8checkVLAERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_17VariableArrayTypeERNS2_4SValE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(248) %1, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly captures(none) %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(9) %5) unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %7 = alloca %"class.std::unique_ptr.827", align 8 ; 5 uses
  %8 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 7 uses
  %11 = alloca %"class.std::vector.822", align 8  ; 7 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 6 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %14 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %15 = alloca %"struct.std::pair.747", align 8   ; 5 uses
  %16 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %17 = alloca %"class.clang::ento::SVal", align 8 ; 5 uses
  %18 = alloca %"struct.std::pair.747", align 8   ; 6 uses
  %19 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %20 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %21 = alloca %"class.llvm::SmallVector.708", align 8 ; 10 uses
  %.sroa.0191 = alloca ptr, align 8               ; 9 uses
  %.sroa.0180 = alloca ptr, align 8               ; 6 uses
  %22 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %23 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  %24 = alloca %"class.clang::ento::NonLoc", align 8 ; 3 uses
  %25 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #17
  %i.a = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.a, ptr %21, align 8, !tbaa !210
  %i.b = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 5 uses
  store i32 0, ptr %i.b, align 8, !tbaa !211
  %i.c = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 2 uses
  store i32 2, ptr %i.c, align 4, !tbaa !212
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %9, i64 33
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit

_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit: ; preds = %bb.an, %bb.a
  %.0221 = phi ptr [ %4, %bb.a ], [ %i.ds, %bb.an ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0221, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 11 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !190    ; 10 uses
  store ptr %i.r, ptr %.sroa.0180, align 8, !tbaa !190
  %.not.i.i = icmp eq ptr %i.r, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !315)
  call void @llvm.lifetime.start.p0(ptr nonnull %16)
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  call void @llvm.lifetime.start.p0(ptr nonnull %19)
  call void @llvm.lifetime.start.p0(ptr nonnull %20)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !187, !noalias !315 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !36, !noalias !315
  %i.v = and i64 %.sroa.3.0.copyload.i.i.i.i, -8
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #17, !noalias !315
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %i.q, ptr noundef %i.w) #17, !noalias !315
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !207, !noalias !315
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 240
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !208, !noalias !315
  %i.ac = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(412) %i.ab) #17, !noalias !315 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #17, !noalias !315
  %.fca.0.extract36.i = extractvalue { ptr, i8 } %i.ac, 0 ; 4 uses
  %.fca.1.extract37.i = extractvalue { ptr, i8 } %i.ac, 1 ; 5 uses
  switch i8 %.fca.1.extract37.i, label %bb.e [
    i8 0, label %bb.c
    i8 1, label %26
  ]

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i, label %bb.d

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i: ; preds = %bb.c
  call fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker9reportBugENS0_12VLASize_KindEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS2_4ento12ProgramStateEEERNS8_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 0, ptr noundef %i.q, ptr null, ptr noundef nonnull align 8 dereferenceable(81) %2), !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i

bb.d:                                             ; preds = %bb.c
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #17, !noalias !315
  call fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker9reportBugENS0_12VLASize_KindEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS2_4ento12ProgramStateEEERNS8_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 0, ptr noundef %i.q, ptr nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(81) %2), !noalias !315
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i: ; preds = %bb.d, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.thread.i
  store ptr null, ptr %.sroa.0191, align 8, !tbaa !190, !alias.scope !315
  br label %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit

26:                                               ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  store ptr null, ptr %.sroa.0191, align 8, !tbaa !190, !alias.scope !315
  br label %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #17, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !315
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !207, !noalias !316
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !317, !noalias !316
  store ptr %i.r, ptr %13, align 8, !tbaa !190, !noalias !316
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.r) #17, !noalias !316
  call void @_ZN5clang4ento17ConstraintManager10assumeDualEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.747") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr nofree noundef nonnull align 8 dereferenceable(8) %13, ptr %.fca.0.extract36.i, i8 %.fca.1.extract37.i) #17, !noalias !315
  %i.ah = load ptr, ptr %13, align 8, !tbaa !190, !noalias !316 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ah) #17, !noalias !315
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !315
  %i.ai = load ptr, ptr %15, align 8, !tbaa !190, !noalias !315 ; 13 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !190, !noalias !315 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #17, !noalias !315
  %.not.i = icmp eq ptr %i.aj, null               ; 3 uses
  %.not.i.i67.i = icmp eq ptr %i.ai, null         ; 7 uses
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i
  br i1 %.not.i.i67.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.thread.i, label %.thread.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.thread.i: ; preds = %bb.g
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aj) #17, !noalias !315
  call fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker9reportBugENS0_12VLASize_KindEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS2_4ento12ProgramStateEEERNS8_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 1, ptr noundef %i.q, ptr nonnull %i.aj, ptr noundef nonnull align 8 dereferenceable(81) %2), !noalias !315
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aj) #17, !noalias !315
  store ptr null, ptr %.sroa.0191, align 8, !tbaa !190, !alias.scope !315
  br label %bb.ag

bb.h:                                             ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i
  br i1 %.not.i.i67.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70.i, label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70.i: ; preds = %.thread.i, %bb.h
  store ptr %i.ai, ptr %.sroa.0180, align 8, !tbaa !190, !noalias !315
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #17, !noalias !315
  %i.ak = load ptr, ptr %2, align 8, !tbaa !51, !noalias !315, !nonnull !19, !align !52
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 584
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !318, !noalias !315, !nonnull !19, !align !52 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !tbaa !36, !noalias !315
  %i.ao = call { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.am, i64 %.sroa.0.0.copyload.i.i) #17, !noalias !315 ; 2 uses
  %.fca.0.extract15.i = extractvalue { ptr, i8 } %i.ao, 0
  %.fca.1.extract16.i = extractvalue { ptr, i8 } %i.ao, 1
  store ptr %i.ai, ptr %16, align 8, !tbaa !190, !noalias !315
  br i1 %.not.i.i67.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit72.i, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit72.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit72.i: ; preds = %bb.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit70.i
  store ptr %.fca.0.extract15.i, ptr %17, align 8, !tbaa !10, !noalias !315
  store i8 %.fca.1.extract16.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !192, !noalias !315
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !343, !noalias !315, !nonnull !19, !align !52 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 2600
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !726, !noalias !315, !nonnull !19, !align !52
  %i.at = load i64, ptr %i.as, align 8, !noalias !315
  %i.au = and i64 %i.at, 4096
  %.not.i.i127 = icmp eq i64 %i.au, 0
  %.v.i.i = select i1 %.not.i.i127, i64 18984, i64 18904
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.v.i.i
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.av, align 8, !tbaa !36, !noalias !315
  %i.aw = call { ptr, i8 } @_ZN5clang4ento11SValBuilder9evalBinOpEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS_18BinaryOperatorKindENS0_4SValES8_NS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412) %i.am, ptr nofree noundef nonnull align 8 dereferenceable(8) %16, i32 noundef 10, ptr %.fca.0.extract36.i, i8 %.fca.1.extract37.i, ptr noundef nonnull byval(%"class.clang::ento::SVal") align 8 %17, i64 %.sroa.0.0.copyload.i.i.i) #17, !noalias !315 ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i8 } %i.aw, 0
  %.fca.1.extract.i = extractvalue { ptr, i8 } %i.aw, 1 ; 2 uses
  %i.ax = load ptr, ptr %16, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.not.i.i73.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i73.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit72.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ax) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i: ; preds = %bb.j, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit72.i
  %spec.select.i.i.i.i.i.i.i = icmp ugt i8 %.fca.1.extract.i, 1
  br i1 %spec.select.i.i.i.i.i.i.i, label %bb.k, label %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i
  %i.ay = load ptr, ptr %2, align 8, !tbaa !51, !noalias !315, !nonnull !19, !align !52
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 384
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !317, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #17, !noalias !315
  store ptr %i.ai, ptr %19, align 8, !tbaa !190, !noalias !315
  br i1 %.not.i.i67.i, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit84.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit84.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit84.i: ; preds = %bb.l, %bb.k
  call void @_ZN5clang4ento17ConstraintManager10assumeDualEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.747") align 8 %18, ptr noundef nonnull align 8 dereferenceable(56) %i.ba, ptr nofree noundef nonnull align 8 dereferenceable(8) %19, ptr %.fca.0.extract.i, i8 %.fca.1.extract.i) #17, !noalias !315
  %i.bb = load ptr, ptr %18, align 8, !tbaa !190, !noalias !315 ; 3 uses
  store ptr null, ptr %18, align 8, !tbaa !190, !noalias !315
  %i.bc = load ptr, ptr %i.f, align 8, !tbaa !190, !noalias !315 ; 7 uses
  store ptr null, ptr %i.f, align 8, !tbaa !190, !noalias !315
  %i.bd = load ptr, ptr %19, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.not.i.i85.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i85.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit84.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bd) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.i: ; preds = %bb.m, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit84.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #17, !noalias !315
  %.not189.i = icmp eq ptr %i.bb, null            ; 2 uses
  %.not.i.i91.i = icmp eq ptr %i.bc, null         ; 2 uses
  br i1 %.not189.i, label %.critedge.i, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.i
  br i1 %.not.i.i91.i, label %.critedge56.i, label %.critedge.thread.i

.critedge56.i:                                    ; preds = %bb.n
  br i1 %.not.i.i67.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88.thread.i, label %bb.o

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88.thread.i: ; preds = %.critedge56.i
  call fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker9reportBugENS0_12VLASize_KindEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS2_4ento12ProgramStateEEERNS8_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 2, ptr noundef nonnull %i.q, ptr null, ptr noundef nonnull align 8 dereferenceable(81) %2), !noalias !315
  br label %.thread180.i

bb.o:                                             ; preds = %.critedge56.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  call fastcc void @_ZNK12_GLOBAL__N_114VLASizeChecker9reportBugENS0_12VLASize_KindEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS2_4ento12ProgramStateEEERNS8_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(248) %1, i32 noundef 2, ptr noundef nonnull %i.q, ptr nonnull %i.ai, ptr noundef nonnull align 8 dereferenceable(81) %2), !noalias !315
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %.thread180.i

.thread180.i:                                     ; preds = %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit88.thread.i
  store ptr null, ptr %.sroa.0191, align 8, !tbaa !190, !alias.scope !315
  br label %27

.critedge.i:                                      ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit86.i
  br i1 %.not.i.i91.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92.i, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %.critedge.i, %bb.n
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bc) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92.i: ; preds = %.critedge.thread.i, %.critedge.i
  store ptr %i.bc, ptr %.sroa.0180, align 8, !tbaa !190, !noalias !315
  br i1 %.not.i.i67.i, label %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i

_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i: ; preds = %bb.p, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit92.i
  br i1 %.not189.i, label %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i, label %bb.q

_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i
  %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184239 = phi ptr [ %i.bc, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i ], [ %i.ai, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i ]
  %.sroa.0148.0162.i = phi ptr [ %i.bc, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit74.i ] ; 2 uses
  br i1 %.not.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i, label %bb.q

bb.q:                                             ; preds = %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i
  %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184 = phi ptr [ %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184239, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i ], [ %i.bc, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i ] ; 13 uses
  %.sroa.0144.0164.i = phi ptr [ null, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i ], [ %i.bb, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i ] ; 4 uses
  %.sroa.0148.0161.i = phi ptr [ %.sroa.0148.0162.i, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i ], [ %i.bc, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.i ] ; 4 uses
  store ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184, ptr %20, align 8, !tbaa !190, !noalias !315
  %.not.i.i95.i = icmp eq ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184, null ; 5 uses
  br i1 %.not.i.i95.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.be = call noundef zeroext i1 @_ZN5clang4ento5taint9isTaintedEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValEj(ptr nofree noundef nonnull align 8 dereferenceable(8) %20, ptr %.fca.0.extract36.i, i8 %.fca.1.extract37.i, i32 noundef 0) #17, !noalias !315 ; 2 uses
  %i.bf = load ptr, ptr %20, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.not.i.i97.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i97.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i, label %.split.i

.split.i:                                         ; preds = %bb.s
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bf) #17, !noalias !315
  br i1 %i.be, label %bb.t, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i: ; preds = %bb.s
  br i1 %i.be, label %bb.t, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i, %.split.i
  br i1 %.not.i.i95.i, label %bb.u, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.t
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !315
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !187, !noalias !315
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !noalias !315
  %i.bh = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bi = inttoptr i64 %i.bh to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !315
  store ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184, ptr %10, align 8, !tbaa !190, !noalias !315
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !315
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !187, !noalias !315 ; 3 uses
  %.0.copyload.i.i.i.i.i35.i.i = load i64, ptr %i.g, align 8, !noalias !315
  %i.bk = and i64 %.0.copyload.i.i.i.i.i35.i.i, -8
  %i.bl = inttoptr i64 %i.bk to ptr               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !315
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %.pr.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !190, !noalias !315 ; 3 uses
  store ptr %.pr.i.i.i.i, ptr %10, align 8, !tbaa !190, !noalias !315
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u, %.thread.i.i.i.i
  %i.bn = phi ptr [ %i.bi, %.thread.i.i.i.i ], [ %i.bl, %bb.u ]
  %i.bo = phi ptr [ %i.bg, %.thread.i.i.i.i ], [ %i.bj, %bb.u ]
  %i.bp = phi ptr [ %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184, %.thread.i.i.i.i ], [ %.pr.i.i.i.i, %bb.u ]
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bp) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i: ; preds = %bb.v, %bb.u
  %i.bq = phi ptr [ %i.bn, %bb.v ], [ %i.bl, %bb.u ]
  %i.br = phi ptr [ %i.bo, %bb.v ], [ %i.bj, %bb.u ]
  %i.bs = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %10, i1 noundef zeroext true, ptr noundef %i.br, ptr noundef %i.bq), !noalias !315 ; 3 uses
  %i.bt = load ptr, ptr %10, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i3.i.i.i.i, label %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i.i.i, label %bb.w

bb.w:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bt) #17, !noalias !315
  br label %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i.i.i

_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i.i.i: ; preds = %bb.w, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !315
  br i1 %.not.i.i95.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i102.i, label %bb.x

bb.x:                                             ; preds = %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i102.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i102.i: ; preds = %bb.x, %_ZN5clang4ento14CheckerContext12generateSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE.exit.i.i.i
  %.not.i103.i = icmp eq ptr %i.bs, null
  br i1 %.not.i103.i, label %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i102.i
  %i.bu = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #18, !noalias !727 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17, !noalias !727
  store i8 1, ptr %i.i, align 1, !tbaa !239, !noalias !727
  store ptr @.str.2, ptr %9, align 8, !tbaa !36, !noalias !727
  store i8 3, ptr %i.j, align 8, !tbaa !240, !noalias !727
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, i8 0, i64 64, i1 false), !noalias !727
  store i32 1, ptr %8, align 8, !tbaa !247, !noalias !727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.k, i8 0, i64 28, i1 false), !noalias !727
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.l, i8 0, i64 17, i1 false), !noalias !727
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.bu, ptr noundef nonnull align 8 dereferenceable(97) %i.h, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull align 8 dereferenceable(34) %9, ptr noundef nonnull %i.bs, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %8, ptr noundef null) #17, !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !727
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17, !noalias !727
  %i.bv = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #21, !noalias !315 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 88 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 96 ; 3 uses
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !211, !noalias !315 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 100
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !212, !noalias !315
  %.not.i.i15.i.i = icmp ult i32 %i.by, %i.ca
  br i1 %.not.i.i15.i.i, label %bb.aa, label %bb.z, !prof !28

bb.z:                                             ; preds = %bb.y
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i64 %i.bv), !noalias !315
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cb = zext i32 %i.by to i64
  %i.cc = load ptr, ptr %i.bw, align 8, !tbaa !210, !noalias !315
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.cb
  store i64 %i.bv, ptr %i.cd, align 1, !noalias !315
  %i.ce = load i32, ptr %i.bx, align 8, !tbaa !211, !noalias !315
  %i.cf = add i32 %i.ce, 1
  store i32 %i.cf, ptr %i.bx, align 8, !tbaa !211, !noalias !315
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i: ; preds = %bb.aa, %bb.z
  %i.cg = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.bs, ptr noundef nonnull %i.q, ptr noundef nonnull align 8 dereferenceable(1000) %i.bu, i64 4294967296) #17, !noalias !315 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17, !noalias !315
  store ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184, ptr %12, align 8, !tbaa !190, !noalias !315
  br i1 %.not.i.i95.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17.i.i, label %bb.ab

bb.ab:                                            ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17.i.i: ; preds = %bb.ab, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i
  call void @_ZN5clang4ento5taint17getTaintedSymbolsEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_4SValEj(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.822") align 8 %11, ptr nofree noundef nonnull align 8 dereferenceable(8) %12, ptr %.fca.0.extract36.i, i8 %.fca.1.extract37.i, i32 noundef 0) #17, !noalias !315
  %i.ch = load ptr, ptr %12, align 8, !tbaa !190, !noalias !315 ; 2 uses
  %.not.i.i18.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i18.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i, label %bb.ac

bb.ac:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ch) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i: ; preds = %bb.ac, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit17.i.i
  %i.ci = load ptr, ptr %11, align 8, !tbaa !729, !noalias !315 ; 3 uses
  %i.cj = load ptr, ptr %i.m, align 8, !tbaa !729, !noalias !315 ; 2 uses
  %.not3637.i.i = icmp eq ptr %i.ci, %i.cj
  br i1 %.not3637.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre.i.i = load ptr, ptr %11, align 8, !tbaa !731, !noalias !315
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i
  %i.ck = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.ci, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i ] ; 3 uses
  %.not.i.i.i20.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i20.i.i, label %_ZNSt6vectorIPKN5clang4ento7SymExprESaIS4_EED2Ev.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i.i
  %i.cl = load ptr, ptr %i.n, align 8, !tbaa !732, !noalias !315
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #20, !noalias !315
  br label %_ZNSt6vectorIPKN5clang4ento7SymExprESaIS4_EED2Ev.exit.i.i

_ZNSt6vectorIPKN5clang4ento7SymExprESaIS4_EED2Ev.exit.i.i: ; preds = %bb.ad, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17, !noalias !315
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !315
  store i8 1, ptr %i.o, align 8, !tbaa !193, !noalias !315
  %i.cp = load ptr, ptr %2, align 8, !tbaa !51, !noalias !315, !nonnull !19, !align !52
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 672 ; 2 uses
  %i.cr = ptrtoint ptr %i.bu to i64
  store i64 %i.cr, ptr %7, align 8, !tbaa !249, !noalias !315
  %i.cs = load ptr, ptr %i.cq, align 8, !tbaa !14, !noalias !315
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !315
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, ptr nofree noundef nonnull align 8 dereferenceable(8) %7) #17, !noalias !315, !inline_history !308
  %i.cv = load ptr, ptr %7, align 8, !tbaa !249, !noalias !315 ; 3 uses
  %.not.i.i21.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i21.i.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i: ; preds = %_ZNSt6vectorIPKN5clang4ento7SymExprESaIS4_EED2Ev.exit.i.i
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !14, !noalias !315
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !315
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(488) %i.cv) #17, !noalias !315, !inline_history !309
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i, %_ZNSt6vectorIPKN5clang4ento7SymExprESaIS4_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !315
  br label %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i, %.lr.ph.i.i
  %.sroa.024.038.i.i = phi ptr [ %i.da, %.lr.ph.i.i ], [ %i.ci, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit19.i.i ] ; 2 uses
  %i.cz = load ptr, ptr %.sroa.024.038.i.i, align 8, !tbaa !734, !noalias !315
  call void @_ZN5clang4ento22PathSensitiveBugReport15markInterestingEPKNS0_7SymExprENS0_11bugreporter12TrackingKindE(ptr noundef nonnull align 8 dereferenceable(1000) %i.bu, ptr noundef %i.cz, i32 noundef 0) #17, !noalias !315
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.024.038.i.i, i64 8 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.da, %i.cj
  br i1 %.not36.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i: ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !315
  br i1 %.not.i.i95.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0.184) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i, %.split.i, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i
  %.sroa.0144.0163170177.i = phi ptr [ %.sroa.0144.0164.i, %.split.i ], [ %.sroa.0144.0164.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i ], [ null, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i ]
  %.sroa.0148.0160172176.i = phi ptr [ %.sroa.0148.0161.i, %.split.i ], [ %.sroa.0148.0161.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.i ], [ %.sroa.0148.0162.i, %_ZNK5clang4ento4SVal5getAsINS0_11DefinedSValEEESt8optionalIT_Ev.exit.thread157.i ]
  %.sroa.0180.0..sroa.0180.0..sroa.0180.0..sroa.0180.0.185 = load ptr, ptr %.sroa.0180, align 8, !tbaa !190, !noalias !315
  store ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0..sroa.0180.0.185, ptr %.sroa.0191, align 8, !tbaa !190, !alias.scope !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i, %bb.ae, %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i
  %.sink.i = phi ptr [ %.sroa.0180, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i ], [ %.sroa.0191, %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i ], [ %.sroa.0191, %bb.ae ]
  %.sroa.0148.1.i = phi ptr [ %.sroa.0148.0160172176.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i ], [ %.sroa.0148.0161.i, %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i ], [ %.sroa.0148.0161.i, %bb.ae ] ; 2 uses
  %.sroa.0144.1.i = phi ptr [ %.sroa.0144.0163170177.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit98.thread.i ], [ %.sroa.0144.0164.i, %_ZNK12_GLOBAL__N_114VLASizeChecker14reportTaintBugEPKN5clang4ExprEN4llvm18IntrusiveRefCntPtrIKNS1_4ento12ProgramStateEEERNS7_14CheckerContextENS7_4SValE.exit.i ], [ %.sroa.0144.0164.i, %bb.ae ] ; 2 uses
  store ptr null, ptr %.sink.i, align 8, !tbaa !190
  %.not.i.i106.i = icmp eq ptr %.sroa.0144.1.i, null
  br i1 %.not.i.i106.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i, label %27

27:                                               ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i, %.thread180.i
  %.sroa.0144.1186.i = phi ptr [ %i.bb, %.thread180.i ], [ %.sroa.0144.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i ]
  %.sroa.0148.1184.i = phi ptr [ null, %.thread180.i ], [ %.sroa.0148.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0144.1186.i) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i: ; preds = %27, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i
  %.sroa.0148.1185.i = phi ptr [ %.sroa.0148.1.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit105.i ], [ %.sroa.0148.1184.i, %27 ] ; 2 uses
  %.not.i.i108.i = icmp eq ptr %.sroa.0148.1185.i, null
  br i1 %.not.i.i108.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.i, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0148.1185.i) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.i: ; preds = %bb.af, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i
  br i1 %.not.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit111.i, label %bb.ag

bb.ag:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.thread.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aj) #17, !noalias !315
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit111.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit111.i: ; preds = %bb.ag, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.i
  br i1 %.not.i.i67.i, label %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit111.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ai) #17, !noalias !315
  br label %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit

_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i, %26, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit111.i, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %19)
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  %.sroa.0191.0..sroa.0191.0..sroa.0191.0..sroa.0191.0. = load ptr, ptr %.sroa.0191, align 8, !tbaa !190
  %i.db = load ptr, ptr %3, align 8, !tbaa !190   ; 3 uses
  store ptr %i.db, ptr %.sroa.0191, align 8, !tbaa !190
  store ptr %.sroa.0191.0..sroa.0191.0..sroa.0191.0..sroa.0191.0., ptr %3, align 8, !tbaa !190
  %.not.i.i128 = icmp eq ptr %i.db, null
  br i1 %.not.i.i128, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.db) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZNK12_GLOBAL__N_114VLASizeChecker17checkVLAIndexSizeERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEEPKNS1_4ExprE.exit, %bb.ai
  %.sroa.0180.0..sroa.0180.0..sroa.0180.0..sroa.0180.0.190 = load ptr, ptr %.sroa.0180, align 8, !tbaa !190 ; 2 uses
  %.not.i.i129 = icmp eq ptr %.sroa.0180.0..sroa.0180.0..sroa.0180.0..sroa.0180.0.190, null
  br i1 %.not.i.i129, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit130, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0180.0..sroa.0180.0..sroa.0180.0..sroa.0180.0.190) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit130

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit130: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.aj
  %i.dc = load ptr, ptr %3, align 8, !tbaa !190
  %.not211 = icmp eq ptr %i.dc, null
  br i1 %.not211, label %.critedge.thread, label %bb.ak

bb.ak:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit130
  %i.dd = load i32, ptr %i.b, align 8, !tbaa !211 ; 2 uses
  %i.de = load i32, ptr %i.c, align 4, !tbaa !212
  %.not.i131 = icmp ult i32 %i.dd, %i.de
  br i1 %.not.i131, label %bb.am, label %bb.al, !prof !28

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE15growAndPushBackES4_(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef %i.q)
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

bb.am:                                            ; preds = %bb.ak
  %i.df = zext i32 %i.dd to i64
  %i.dg = load ptr, ptr %21, align 8, !tbaa !210
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.df
  store ptr %i.q, ptr %i.dh, align 1
  %i.di = load i32, ptr %i.b, align 8, !tbaa !211
  %i.dj = add i32 %i.di, 1
  store i32 %i.dj, ptr %i.b, align 8, !tbaa !211
  br label %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit

_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit: ; preds = %bb.al, %bb.am
  %i.dk = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !19, !align !52
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !186, !nonnull !19, !align !52 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !14
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef nonnull align 8 dereferenceable(23904) ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(272) %i.dm) #17, !inline_history !310
  %i.dr = getelementptr inbounds nuw i8, ptr %.0221, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.dr, align 16, !tbaa !36
  %i.ds = call noundef ptr @_ZNK5clang10ASTContext14getAsArrayTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.dq, i64 %.sroa.0.0.copyload.i) #17 ; 3 uses
  %.not.i.i.i132 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i132, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load i8, ptr %i.dt, align 16
  %i.dv = icmp eq i8 %i.du, 6
  br i1 %i.dv, label %_ZNK5clang10ASTContext22getAsVariableArrayTypeENS_8QualTypeE.exit, label %bb.ao, !llvm.loop !311

bb.ao:                                            ; preds = %_ZN4llvm23SmallVectorTemplateBaseIPKN5clang4ExprELb1EE9push_backES4_.exit, %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %.0221, i64 32
  %i.dx = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !19, !align !52
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !186, !nonnull !19, !align !52 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !14
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef nonnull align 8 dereferenceable(23904) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(272) %i.dz) #17, !inline_history !310 ; 2 uses
  %i.ee = load ptr, ptr %2, align 8, !tbaa !51, !nonnull !19, !align !52
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 584
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !318, !nonnull !19, !align !52 ; 8 uses
  %i.eh = call i64 @_ZNK5clang10ASTContext11getSizeTypeEv(ptr noundef nonnull align 8 dereferenceable(23904) %i.ed) #17 ; 5 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 3 uses
  %i.ej = call i64 @_ZNK5clang4ento17BasicValueFactory13getAPSIntTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ei, i64 %i.eh)
  %.sroa.01.0.insert.ext.i = and i64 %i.ej, 1099511627775
  %i.ek = call ptr @_ZN5clang4ento17BasicValueFactory11getMaxValueENS0_10APSIntTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ei, i64 %.sroa.01.0.insert.ext.i) ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !251
  %i.en = icmp ult i32 %i.em, 65
  %i.eo = load ptr, ptr %i.ek, align 8
  %spec.select.i = select i1 %i.en, ptr %i.ek, ptr %i.eo
  %.0.i = load i64, ptr %spec.select.i, align 8, !tbaa !36
  %.sroa.0.0.copyload.i133 = load i64, ptr %i.dw, align 16, !tbaa !36
  %i.ep = call i64 @_ZNK5clang10ASTContext18getTypeSizeInCharsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ed, i64 %.sroa.0.0.copyload.i133) #17
  %i.eq = and i64 %i.eh, -16
  %i.er = inttoptr i64 %i.eq to ptr
  %i.es = load ptr, ptr %i.er, align 16, !tbaa !252
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.et, align 8, !tbaa !36
  %i.eu = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, -16
  %i.ev = inttoptr i64 %i.eu to ptr
  %i.ew = load ptr, ptr %i.ev, align 16, !tbaa !252
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 16            ; 3 uses
  switch i8 %i.ey, label %bb.ap [
    i8 40, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 31, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
    i8 11, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ez = and i8 %i.ey, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.ez, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fa = icmp eq i8 %i.ey, 13
  br i1 %i.fa, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i: ; preds = %bb.aq
  %i.fb = load i32, ptr %i.ex, align 16
  %i.fc = and i32 %i.fb, 536346624
  %i.fd = icmp eq i32 %i.fc, 264765440
  br i1 %i.fd, label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %bb.aq
  br label %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit

_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit: ; preds = %bb.ao, %bb.ao, %bb.ao, %bb.ap, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i
  %.sroa.3.0.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i ], [ 2, %bb.ao ], [ 2, %bb.ao ], [ 2, %bb.ao ], [ 2, %bb.ap ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i ] ; 3 uses
  %i.fe = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ei, i64 noundef %i.ep, i64 %i.eh) #17 ; 3 uses
  %i.ff = load ptr, ptr %3, align 8, !tbaa !190   ; 3 uses
  store ptr %i.ff, ptr %22, align 8, !tbaa !190
  %.not.i.i135 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i135, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit136, label %bb.ar

bb.ar:                                            ; preds = %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ff) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit136

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit136: ; preds = %_ZN5clang4ento11SValBuilder10makeIntValEmNS_8QualTypeE.exit, %bb.ar
  %i.fg = load ptr, ptr %i.eg, align 8, !tbaa !14
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 48
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = call noundef ptr %i.fi(ptr noundef nonnull align 8 dereferenceable(412) %i.eg, ptr nofree noundef nonnull align 8 dereferenceable(8) %22, ptr %i.fe, i8 %.sroa.3.0.i) #17 ; 4 uses
  %i.fk = load ptr, ptr %22, align 8, !tbaa !190  ; 2 uses
  %.not.i.i137 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i137, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit136
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fk) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit136, %bb.as
  %.not123 = icmp eq ptr %i.fj, null
  br i1 %.not123, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !251
  %i.fn = icmp ult i32 %i.fm, 65
  %i.fo = load ptr, ptr %i.fj, align 8
  %spec.select.i139 = select i1 %i.fn, ptr %i.fj, ptr %i.fo
  %.0.i140 = load i64, ptr %spec.select.i139, align 8, !tbaa !36
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138
  %.0113 = phi i64 [ %.0.i140, %bb.at ], [ 0, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit138 ]
  %i.fp = load ptr, ptr %21, align 8, !tbaa !210  ; 2 uses
  %i.fq = load i32, ptr %i.b, align 8, !tbaa !211 ; 2 uses
  %i.fr = zext i32 %i.fq to i64
  %.idx = shl nuw nsw i64 %i.fr, 3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx
  %.not124222 = icmp eq i32 %i.fq, 0
  br i1 %.not124222, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.au
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph, %bb.bh
  %.sroa.767.0226 = phi i8 [ %.sroa.3.0.i, %.lr.ph ], [ %.fca.1.extract, %bb.bh ]
  %.sroa.065.0225 = phi ptr [ %i.fe, %.lr.ph ], [ %.fca.0.extract, %bb.bh ]
  %.1114224 = phi i64 [ %.0113, %.lr.ph ], [ %.5118, %bb.bh ] ; 2 uses
  %.0119223 = phi ptr [ %i.fp, %.lr.ph ], [ %i.hc, %bb.bh ] ; 2 uses
  %i.ft = load ptr, ptr %.0119223, align 8, !tbaa !736 ; 4 uses
  %i.fu = load ptr, ptr %i.d, align 8, !tbaa !187 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !190 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %.sroa.3.0.copyload.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !tbaa !36
  %i.fx = and i64 %.sroa.3.0.copyload.i.i.i, -8
  %i.fy = inttoptr i64 %i.fx to ptr
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %i.ft, ptr noundef %i.fy) #17
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !207
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 240
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !208
  %i.ge = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.fz, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(412) %i.gd) #17 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %.fca.0.extract35 = extractvalue { ptr, i8 } %i.ge, 0
  %.fca.1.extract36 = extractvalue { ptr, i8 } %i.ge, 1
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.sroa.0.0.copyload.i146 = load i64, ptr %i.gf, align 8, !tbaa !36
  %i.gg = call { ptr, i8 } @_ZN5clang4ento11SValBuilder8evalCastENS0_4SValENS_8QualTypeES3_(ptr noundef nonnull align 8 dereferenceable(412) %i.eg, ptr %.fca.0.extract35, i8 %.fca.1.extract36, i64 %i.eh, i64 %.sroa.0.0.copyload.i146) #17 ; 2 uses
  %.fca.0.extract21 = extractvalue { ptr, i8 } %i.gg, 0 ; 2 uses
  %.fca.1.extract22 = extractvalue { ptr, i8 } %i.gg, 1 ; 2 uses
  %i.gh = load ptr, ptr %3, align 8, !tbaa !190   ; 3 uses
  store ptr %i.gh, ptr %23, align 8, !tbaa !190
  %.not.i.i152 = icmp eq ptr %i.gh, null
  br i1 %.not.i.i152, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit153, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.gh) #17
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit153

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit153: ; preds = %bb.av, %bb.aw
  store ptr %.fca.0.extract21, ptr %24, align 8
  store i8 %.fca.1.extract22, ptr %.sroa.5.0..sroa_idx, align 8
  %i.gi = load ptr, ptr %i.eg, align 8, !tbaa !14
end_hunk_0
