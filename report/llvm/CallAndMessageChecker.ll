Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CallAndMessageChecker?download=true
inline.NumInlined: 1867
inline.NumDeleted: 1030
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN5clang4ento5check14ObjCMessageNil17_checkObjCMessageIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_14ObjCMethodCallERNS0_14CheckerContextE:bb.a
bb.ao:                                            ; preds = %bb.an
  %i.jt = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 56
  %.pr.i90.i.i = load ptr, ptr %i.ju, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i91.i.i = icmp eq ptr %.pr.i90.i.i, null
  br i1 %.not.i.i.i91.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.i, label %.thread.i82.i.i

.thread.i82.i.i:                                  ; preds = %bb.ao, %bb.an
  %i.jv = phi ptr [ %.pr.i90.i.i, %bb.ao ], [ %i.js, %bb.an ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.jv) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %.pre.i.i84.i.i = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %.pre.i.i84.i.i, i64 56
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !98
  %.not128.i.i = icmp eq ptr %i.jv, %i.jx
  br i1 %.not128.i.i, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i, label %bb.ap

bb.ap:                                            ; preds = %.thread.i82.i.i
  %i.jy = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.jy, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.jz, i64 48, i1 false), !tbaa.struct !136
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !137, !nonnull !26, !align !41
  store ptr %i.jv, ptr %6, align 8, !tbaa !98
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.jv) #18
  %i.kc = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.kb, ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %.pre.i.i84.i.i, i1 noundef zeroext false) #18 ; 0 uses
  %i.kd = load ptr, ptr %6, align 8, !tbaa !98    ; 2 uses
  %.not.i.i23.i.i87.i.i = icmp eq ptr %i.kd, null
  br i1 %.not.i.i23.i.i87.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i89.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i88.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i88.i.i: ; preds = %bb.ap
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kd) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i89.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i89.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i88.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i89.i.i, %.thread.i82.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.jv) #18
  %.pre.i.i = load ptr, ptr %21, align 8, !tbaa !98 ; 2 uses
  %.not.i.i93.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i93.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.sink.split.i

bb.aq:                                            ; preds = %bb.g, %bb.f
  br i1 %.not.i.i.i, label %bb.ar, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit96.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit96.i.i: ; preds = %bb.aq
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  br label %.thread.i98.i.i

bb.ar:                                            ; preds = %bb.aq
  %i.ke = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 56
  %.pr.i106.i.i = load ptr, ptr %i.kf, align 8, !tbaa !98 ; 2 uses
  %.not.i.i.i107.i.i = icmp eq ptr %.pr.i106.i.i, null
  br i1 %.not.i.i.i107.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread11.i, label %.thread.i98.i.i

.thread.i98.i.i:                                  ; preds = %bb.ar, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit96.i.i
  %i.kg = phi ptr [ %.pr.i106.i.i, %bb.ar ], [ %i.d, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit96.i.i ] ; 5 uses
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kg) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.pre.i.i100.i.i = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.pre.i.i100.i.i, i64 56
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !98
  %.not127.i.i = icmp eq ptr %i.kg, %i.ki
  br i1 %.not127.i.i, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i, label %bb.as

bb.as:                                            ; preds = %.thread.i98.i.i
  %i.kj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.kj, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.kk = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.kk, i64 48, i1 false), !tbaa.struct !136
  %i.kl = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !137, !nonnull !26, !align !41
  store ptr %i.kg, ptr %4, align 8, !tbaa !98
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kg) #18
  %i.kn = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.km, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.pre.i.i100.i.i, i1 noundef zeroext false) #18 ; 0 uses
  %i.ko = load ptr, ptr %4, align 8, !tbaa !98    ; 2 uses
  %.not.i.i23.i.i103.i.i = icmp eq ptr %i.ko, null
  br i1 %.not.i.i23.i.i103.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i105.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i104.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i104.i.i: ; preds = %bb.as
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ko) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i105.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i105.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i104.i.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i105.i.i, %.thread.i98.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.kg) #18
  br i1 %.not.i.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread11.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.sink.split.i

_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.sink.split.i: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i.i
  %.pre133.i.sink.i = phi ptr [ %.pre.i.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i ], [ %.pre133.i.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i.i ], [ %i.d, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.pre133.i.sink.i) #18
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.i

_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.i: ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.sink.split.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit92.i.i, %bb.ao, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %bb.at

_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread11.i: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit108.i.i, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker19checkObjCMessageNilERKN5clang4ento14ObjCMethodCallERNS2_14CheckerContextE.exit

_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.i: ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker18emitNilReceiverBugERN5clang4ento14CheckerContextERKNS2_14ObjCMethodCallEPNS2_12ExplodedNodeE.exit.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit77.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20)
  call void @llvm.lifetime.end.p0(ptr nonnull %21)
  br i1 %.not.i.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker19checkObjCMessageNilERKN5clang4ento14ObjCMethodCallERNS2_14CheckerContextE.exit, label %bb.at

bb.at:                                            ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.i, %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker19checkObjCMessageNilERKN5clang4ento14ObjCMethodCallERNS2_14CheckerContextE.exit

_ZNK12_GLOBAL__N_121CallAndMessageChecker19checkObjCMessageNilERKN5clang4ento14ObjCMethodCallERNS2_14CheckerContextE.exit: ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.thread11.i, %_ZNK12_GLOBAL__N_121CallAndMessageChecker17HandleNilReceiverERN5clang4ento14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEERKNS2_14ObjCMethodCallE.exit.i, %bb.at
  ret void
}

declare i64 @_ZNK5clang4ento9CallEvent13getResultTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

declare { ptr, i8 } @_ZN5clang4ento11SValBuilder11makeZeroValENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(412), i64) local_unnamed_addr #2

declare void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind writable sret(%"class.llvm::IntrusiveRefCntPtr") align 8, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr, i8, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type22isStructureOrClassTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5clang19AnalysisDeclContext12getParentMapEv(ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang9ParentMap14isConsumedExprEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare { i64, i64 } @_ZNK5clang10ASTContext11getTypeInfoEPKNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(23904), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm6Triple17isMacOSXVersionLTEjjj(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @_ZNK5clang15ObjCMessageExpr11getSelectorEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

declare void @_ZNK5clang8Selector5printERN4llvm11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare void @_ZNK5clang8QualType5printERN4llvm11raw_ostreamERKNS_14PrintingPolicyERKNS1_5TwineEj(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #2

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

declare void @_ZN5clang4ento14CheckerManager19_registerForPreCallENS0_9CheckerFnIFvRKNS0_9CallEventERNS0_14CheckerContextEEEE(ptr noundef nonnull align 8 dereferenceable(1864), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(81) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %4 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %5 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %6 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %7 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %9 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %10 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %13 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %14 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %15 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %16 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %17 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %18 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %19 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %20 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %22 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %23 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %24 = alloca %"class.clang::ento::SVal", align 8 ; 6 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %26 = alloca %"class.llvm::formatv_object.928", align 8 ; 18 uses
  %27 = alloca %"class.(anonymous namespace)::FindUninitializedField", align 8 ; 15 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %29 = alloca %"class.llvm::formatv_object.940", align 8 ; 21 uses
  %30 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 6 uses
  %31 = alloca %"class.llvm::SmallString", align 8 ; 8 uses
  %32 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 20 uses
  %33 = alloca %"class.(anonymous namespace)::FindUninitializedField", align 8 ; 15 uses
  %34 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 6 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %36 = alloca %"class.llvm::formatv_object", align 8 ; 11 uses
  %37 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %38 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %40 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %41 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %42 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 6 uses
  %43 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %44 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %45 = alloca %"struct.std::pair.864", align 8   ; 6 uses
  %46 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %47 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %48 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %49 = alloca %"class.llvm::Twine", align 8      ; 8 uses
  %50 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %51 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 6 uses
  %52 = alloca %"class.llvm::SmallString.881", align 8 ; 8 uses
  %53 = alloca %"class.llvm::raw_svector_ostream", align 8 ; 20 uses
  %54 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %55 = alloca %"class.clang::ento::EnvironmentEntry", align 8 ; 4 uses
  %56 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %57 = alloca %"struct.std::pair.864", align 8   ; 7 uses
  %58 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98   ; 17 uses
  %.not.i.i.i = icmp eq ptr %i.d, null            ; 2 uses
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i: ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !inline_history !915 ; 3 uses
  %.not.i.i25.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i25.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  %i.i = load i16, ptr %i.h, align 8
  %i.j = and i16 %i.i, 511
  %i.k = add nsw i16 %i.j, -91
  %spec.select.i.i.i.i.i.i.i.i.i.i = icmp ult i16 %i.k, 5
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i: ; preds = %bb.c
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27.i: ; preds = %bb.d, %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.i
  %i.l = getelementptr i8, ptr %i.h, i64 32
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !988
  call void @llvm.lifetime.start.p0(ptr nonnull %56)
  call void @llvm.lifetime.start.p0(ptr nonnull %58)
  %i.m = tail call noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16) %.val.i) #22, !noalias !989 ; 3 uses
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !989
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.3.0.copyload.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !tbaa !73, !noalias !989
  %i.o = and i64 %.sroa.3.0.copyload.i.i.i.i, -8
  %i.p = inttoptr i64 %i.o to ptr
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #18, !noalias !989
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef %i.m, ptr noundef %i.p) #18, !noalias !989
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !999, !noalias !989
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 240
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1000, !noalias !989
  %i.v = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %55, ptr noundef nonnull align 8 dereferenceable(412) %i.u) #18, !noalias !989 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #18, !noalias !989
  %.fca.0.extract3.i.i = extractvalue { ptr, i8 } %i.v, 0
  %.fca.1.extract4.i.i = extractvalue { ptr, i8 } %i.v, 1 ; 3 uses
  %i.w = icmp eq i8 %.fca.1.extract4.i.i, 0
  br i1 %i.w, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.y = load i8, ptr %i.x, align 8, !tbaa !42, !range !25, !noalias !989, !noundef !26
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i: ; preds = %bb.e
  store ptr %i.d, ptr %56, align 8, !tbaa !98, !noalias !989
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18, !noalias !989
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %56, ptr noundef null), !noalias !989
  %i.aa = load ptr, ptr %56, align 8, !tbaa !98, !noalias !989 ; 2 uses
  %.not.i.i16.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i16.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aa) #18, !noalias !989
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i

bb.g:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144
  call fastcc void @_ZN12_GLOBAL__N_121CallAndMessageChecker11emitBadCallERKN5clang4ento7BugTypeERNS2_14CheckerContextEPKNS1_4ExprE(ptr noundef nonnull align 8 dereferenceable(97) %i.ab, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %i.m), !noalias !989
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #18, !noalias !989
  call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  call void @llvm.lifetime.start.p0(ptr nonnull %54), !noalias !989
  %i.ac = icmp eq i8 %.fca.1.extract4.i.i, 1
  br i1 %i.ac, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i.i, label %bb.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i.i: ; preds = %bb.h
  store ptr %i.d, ptr %57, align 8, !tbaa !98, !alias.scope !1001, !noalias !989
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #18, !noalias !1002
  %i.ad = getelementptr inbounds nuw i8, ptr %57, i64 8
  store ptr %i.d, ptr %i.ad, align 8, !tbaa !98, !alias.scope !1001, !noalias !989
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #18, !noalias !1002
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !999, !noalias !1002
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1003, !noalias !1002
  store ptr %i.d, ptr %54, align 8, !tbaa !98, !noalias !1002
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.d) #18, !noalias !1002
  call void @_ZN5clang4ento17ConstraintManager10assumeDualEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.864") align 8 %57, ptr noundef nonnull align 8 dereferenceable(56) %i.ag, ptr nofree noundef nonnull align 8 dereferenceable(8) %54, ptr %.fca.0.extract3.i.i, i8 %.fca.1.extract4.i.i) #18, !noalias !989
  %i.ah = load ptr, ptr %54, align 8, !tbaa !98, !noalias !1002 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ah) #18, !noalias !989
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i: ; preds = %bb.j, %bb.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %54), !noalias !989
  %i.ai = load ptr, ptr %57, align 8, !tbaa !98, !noalias !989 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %57, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !98, !noalias !989 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %57) #18, !noalias !989
  %.not.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i
  %.not17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not17.i.i, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1288
  %i.am = load i8, ptr %i.al, align 8, !tbaa !42, !range !25, !noalias !989, !noundef !26
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.n, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit21.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit21.i.i: ; preds = %bb.l
  store ptr %i.ak, ptr %58, align 8, !tbaa !98, !noalias !989
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ak) #18, !noalias !989
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %58, ptr noundef null), !noalias !989
  %i.ao = load ptr, ptr %58, align 8, !tbaa !98, !noalias !989 ; 2 uses
  %.not.i.i22.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i22.i.i, label %.thread.i.i, label %bb.m

bb.m:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit21.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ao) #18, !noalias !989
  br label %.thread.i.i

bb.n:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40
  call fastcc void @_ZN12_GLOBAL__N_121CallAndMessageChecker11emitBadCallERKN5clang4ento7BugTypeERNS2_14CheckerContextEPKNS1_4ExprE(ptr noundef nonnull align 8 dereferenceable(97) %i.ap, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %i.m), !noalias !989
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n, %bb.m, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit21.i.i, %bb.k
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ak) #18, !noalias !989
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i: ; preds = %.thread.i.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i, %bb.g, %bb.f, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  %.sroa.0134.0.i = phi ptr [ null, %bb.g ], [ %i.ai, %.thread.i.i ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i ], [ null, %bb.f ], [ %i.ai, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56)
  call void @llvm.lifetime.end.p0(ptr nonnull %58)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #18
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i

_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i, %bb.c, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i
  %.sroa.0136.0.i = phi ptr [ %.sroa.0134.0.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit30.i ], [ %i.d, %bb.c ], [ %i.d, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i ] ; 20 uses
  %.not.i = icmp eq ptr %.sroa.0136.0.i, null
  br i1 %.not.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !inline_history !915
  %.not22.i = icmp eq ptr %i.at, null
  br i1 %.not22.i, label %bb.am, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.i: ; preds = %bb.o
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %51)
  %i.au = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1004
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !1004
  %i.ax = call { ptr, i64 } %i.aw(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1004, !inline_history !922
  %i.ay = extractvalue { ptr, i64 } %i.ax, 1      ; 2 uses
  %i.az = trunc i64 %i.ay to i32                  ; 2 uses
  %i.ba = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1004
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 72
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1004
  %i.bd = call noundef i32 %i.bc(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1004, !inline_history !922
  %.not.i33.i = icmp ult i32 %i.bd, %i.az
  br i1 %.not.i33.i, label %bb.p, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit38.i

bb.p:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1289
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !42, !range !25, !noalias !1004, !noundef !26
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.r, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i35.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i35.i: ; preds = %bb.p
  store ptr %.sroa.0136.0.i, ptr %51, align 8, !tbaa !98, !noalias !1004
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18, !noalias !1004
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %51, ptr noundef null), !noalias !1004
  %i.bh = load ptr, ptr %51, align 8, !tbaa !98, !noalias !1004 ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i11.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i35.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bh) #18, !noalias !1004
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i

bb.r:                                             ; preds = %bb.p
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1004 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bj, align 8, !noalias !1004
  %i.bk = and i64 %.0.copyload.i.i.i.i.i.i.i, -8
  %i.bl = inttoptr i64 %i.bk to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %50), !noalias !1004
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  %.pr.i.i.i.i = load ptr, ptr %i.bm, align 8, !tbaa !98, !noalias !1004 ; 3 uses
  store ptr %.pr.i.i.i.i, ptr %50, align 8, !tbaa !98, !noalias !1004
  %.not.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i.i.i) #18, !noalias !1004
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i: ; preds = %bb.s, %bb.r
  %i.bn = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %50, i1 noundef zeroext true, ptr noundef nonnull %i.bi, ptr noundef %i.bl), !noalias !1004 ; 2 uses
  %i.bo = load ptr, ptr %50, align 8, !tbaa !98, !noalias !1004 ; 2 uses
  %.not.i.i3.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i3.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i.i, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bo) #18, !noalias !1004
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i.i: ; preds = %bb.t, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %50), !noalias !1004
  %.not10.i.i = icmp eq ptr %i.bn, null
  br i1 %.not10.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i, label %bb.u

bb.u:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #18, !noalias !1004
  %i.bp = getelementptr inbounds nuw i8, ptr %52, i64 24 ; 2 uses
  store ptr %i.bp, ptr %52, align 8, !tbaa !286, !noalias !1004
  %i.bq = getelementptr inbounds nuw i8, ptr %52, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !287, !noalias !1004
  %i.br = getelementptr inbounds nuw i8, ptr %52, i64 16
  store i64 512, ptr %i.br, align 8, !tbaa !288, !noalias !1004
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #18, !noalias !1004
  %i.bs = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i32 2, ptr %i.bs, align 8, !tbaa !292, !noalias !1004
  %i.bt = getelementptr inbounds nuw i8, ptr %53, i64 40
  store i8 0, ptr %i.bt, align 8, !tbaa !293, !noalias !1004
  %i.bu = getelementptr inbounds nuw i8, ptr %53, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !294, !noalias !1004
  %i.bv = getelementptr inbounds nuw i8, ptr %53, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !1004
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %53, align 8, !tbaa !18, !noalias !1004
  %i.bw = getelementptr inbounds nuw i8, ptr %53, i64 48 ; 2 uses
  store ptr %52, ptr %i.bw, align 8, !tbaa !296, !noalias !1004
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %53, ptr noundef null, i64 noundef 0, i32 noundef 0) #18, !noalias !1004
  %i.bx = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1004
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !1004
  %i.ca = call noundef i32 %i.bz(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1004, !inline_history !923
  %i.cb = icmp sgt i32 %i.ca, -1
  br i1 %i.cb, label %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.i.i, label %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.thread.i.i

_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.i.i: ; preds = %bb.u
  %i.cc = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1004
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1004
  %i.cf = call noundef i32 %i.ce(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1004, !inline_history !923
  %i.cg = icmp slt i32 %i.cf, 9
  br i1 %i.cg, label %bb.v, label %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.thread.i.i

bb.v:                                             ; preds = %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !297, !noalias !1004
  %i.cj = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !298, !noalias !1004 ; 2 uses
  %i.cl = ptrtoint ptr %i.ci to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = icmp ult i64 %i.cn, 9
  br i1 %i.co, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull @.str.44, i64 noundef 9) #18, !noalias !1004 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.x:                                             ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.ck, ptr noundef nonnull align 1 dereferenceable(9) @.str.44, i64 9, i1 false), !noalias !1004
  %i.cq = load ptr, ptr %i.cj, align 8, !tbaa !298, !noalias !1004
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 9
  store ptr %i.cr, ptr %i.cj, align 8, !tbaa !298, !noalias !1004
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.thread.i.i: ; preds = %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.i.i, %bb.u
  %i.cs = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !297, !noalias !1004
  %i.cu = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !298, !noalias !1004 ; 2 uses
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = icmp ult i64 %i.cy, 6
  br i1 %i.cz, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.thread.i.i
  %i.da = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull @.str.45, i64 noundef 6) #18, !noalias !1004 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

bb.z:                                             ; preds = %_ZN4llvm3isaIJN5clang4ento15AnyFunctionCallEENS2_9CallEventEEEbRKT0_.exit.thread.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.cv, ptr noundef nonnull align 1 dereferenceable(6) @.str.45, i64 6, i1 false), !noalias !1004
  %i.db = load ptr, ptr %i.cu, align 8, !tbaa !298, !noalias !1004
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  store ptr %i.dc, ptr %i.cu, align 8, !tbaa !298, !noalias !1004
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit.i.i:             ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  %i.dd = getelementptr inbounds nuw i8, ptr %53, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !297, !noalias !1004
  %i.df = getelementptr inbounds nuw i8, ptr %53, i64 32 ; 3 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !298, !noalias !1004 ; 2 uses
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = icmp ult i64 %i.dj, 7
  br i1 %i.dk, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  %i.dl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %53, ptr noundef nonnull @.str.46, i64 noundef 7) #18, !noalias !1004
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.dg, ptr noundef nonnull align 1 dereferenceable(7) @.str.46, i64 7, i1 false), !noalias !1004
  %i.dm = load ptr, ptr %i.df, align 8, !tbaa !298, !noalias !1004
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 7
  store ptr %i.dn, ptr %i.df, align 8, !tbaa !298, !noalias !1004
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i

_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i:           ; preds = %bb.ab, %bb.aa
  %.0.i.i18.i.i = phi ptr [ %i.dl, %bb.aa ], [ %53, %bb.ab ]
  %i.do = and i64 %i.ay, 4294967295
  %i.dp = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i18.i.i, i64 noundef %i.do) #18, !noalias !1004 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !297, !noalias !1004
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 3 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !298, !noalias !1004 ; 2 uses
  %i.du = ptrtoint ptr %i.dr to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = icmp ult i64 %i.dw, 9
  br i1 %i.dx, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i
  %i.dy = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.dp, ptr noundef nonnull @.str.47, i64 noundef 9) #18, !noalias !1004 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !298, !noalias !1004
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit22.i.i

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit19.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.dt, ptr noundef nonnull align 1 dereferenceable(9) @.str.47, i64 9, i1 false), !noalias !1004
  %i.dz = load ptr, ptr %i.ds, align 8, !tbaa !298, !noalias !1004
end_hunk_0
begin_hunk_1_@_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE:bb.a
  %i.fw = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 %i.fs, ptr %i.fw, align 8, !tbaa !73, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %48), !noalias !1005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %48, i8 0, i64 64, i1 false), !noalias !1005
  store i32 1, ptr %48, align 8, !tbaa !126, !noalias !1005
  %i.fx = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %48, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.fx, i8 0, i64 28, i1 false), !noalias !1005
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.fy, i8 0, i64 17, i1 false), !noalias !1005
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.ft, ptr noundef nonnull align 8 dereferenceable(97) %i.fo, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr noundef nonnull align 8 dereferenceable(34) %49, ptr noundef nonnull %i.bn, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %48, ptr noundef null) #18, !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %48), !noalias !1005
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #18, !noalias !1005
  call void @llvm.lifetime.start.p0(ptr nonnull %47), !noalias !1004
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.fz, align 8, !tbaa !131, !noalias !1004
  %i.ga = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1004, !nonnull !26, !align !41
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 672 ; 2 uses
  %i.gc = ptrtoint ptr %i.ft to i64
  store i64 %i.gc, ptr %47, align 8, !tbaa !134, !noalias !1004
  %i.gd = load ptr, ptr %i.gb, align 8, !tbaa !18, !noalias !1004
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !noalias !1004
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(120) %i.gb, ptr nofree noundef nonnull align 8 dereferenceable(8) %47) #18, !noalias !1004, !inline_history !926
  %i.gg = load ptr, ptr %47, align 8, !tbaa !134, !noalias !1004 ; 3 uses
  %.not.i.i33.i.i = icmp eq ptr %i.gg, null
  br i1 %.not.i.i33.i.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit32.i.i
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !18, !noalias !1004
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !1004
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(488) %i.gg) #18, !noalias !1004, !inline_history !927
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %47), !noalias !1004
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %53) #18, !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #18, !noalias !1004
  %i.gk = load ptr, ptr %52, align 8, !tbaa !286, !noalias !1004 ; 2 uses
  %i.gl = icmp eq ptr %i.gk, %i.bp
  br i1 %i.gl, label %_ZN4llvm11SmallVectorIcLj512EED2Ev.exit.i.i, label %bb.al

bb.al:                                            ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i
  call void @free(ptr noundef %i.gk) #18, !noalias !1004
  br label %_ZN4llvm11SmallVectorIcLj512EED2Ev.exit.i.i

_ZN4llvm11SmallVectorIcLj512EED2Ev.exit.i.i:      ; preds = %bb.al, %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %52) #18, !noalias !1004
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit38.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18
  br label %bb.am

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i: ; preds = %_ZN4llvm11SmallVectorIcLj512EED2Ev.exit.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i.i, %bb.q, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i35.i
  call void @llvm.lifetime.end.p0(ptr nonnull %51)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a

bb.am:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit38.i, %bb.o
  %i.gm = load ptr, ptr %1, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.go = load ptr, ptr %i.gn, align 8
  %i.gp = call noundef i32 %i.go(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !inline_history !928
  %i.gq = icmp sgt i32 %i.gp, 1
  br i1 %i.gq, label %_ZN4llvm14CastIsPossibleIN5clang4ento15CXXInstanceCallEPKNS2_9CallEventEvE10isPossibleERKS6_.exit.i.i.i, label %.thread.i

_ZN4llvm14CastIsPossibleIN5clang4ento15CXXInstanceCallEPKNS2_9CallEventEvE10isPossibleERKS6_.exit.i.i.i: ; preds = %bb.am
  %i.gr = load ptr, ptr %1, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = call noundef i32 %i.gt(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !inline_history !928
  %i.gv = icmp slt i32 %i.gu, 5
  br i1 %i.gv, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit43.i, label %.thread.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit43.i: ; preds = %_ZN4llvm14CastIsPossibleIN5clang4ento15CXXInstanceCallEPKNS2_9CallEventEvE10isPossibleERKS6_.exit.i.i.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %44)
  call void @llvm.lifetime.start.p0(ptr nonnull %46)
  %i.gw = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1006
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8, !noalias !1006
  %i.gz = call { ptr, i8 } %i.gy(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1006, !inline_history !931 ; 2 uses
  %.fca.0.extract3.i44.i = extractvalue { ptr, i8 } %i.gz, 0
  %.fca.1.extract4.i45.i = extractvalue { ptr, i8 } %i.gz, 1 ; 3 uses
  %i.ha = icmp eq i8 %.fca.1.extract4.i45.i, 0
  br i1 %i.ha, label %bb.an, label %bb.aq

bb.an:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit43.i
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1290
  %i.hc = load i8, ptr %i.hb, align 2, !tbaa !42, !range !25, !noalias !1006, !noundef !26
  %i.hd = trunc nuw i8 %i.hc to i1
  br i1 %i.hd, label %bb.ap, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i53.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i53.i: ; preds = %bb.an
  store ptr %.sroa.0136.0.i, ptr %44, align 8, !tbaa !98, !noalias !1006
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18, !noalias !1006
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %44, ptr noundef null), !noalias !1006
  %i.he = load ptr, ptr %44, align 8, !tbaa !98, !noalias !1006 ; 2 uses
  %.not.i.i14.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i14.i.i, label %bb.ax, label %bb.ao

bb.ao:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i53.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.he) #18, !noalias !1006
  br label %bb.ax

bb.ap:                                            ; preds = %bb.an
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.hg = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1006
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 152
  %i.hi = load ptr, ptr %i.hh, align 8, !noalias !1006
  %i.hj = call noundef ptr %i.hi(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1006, !inline_history !931
  call fastcc void @_ZN12_GLOBAL__N_121CallAndMessageChecker11emitBadCallERKN5clang4ento7BugTypeERNS2_14CheckerContextEPKNS1_4ExprE(ptr noundef nonnull align 8 dereferenceable(97) %i.hf, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %i.hj), !noalias !1006
  br label %bb.ax

bb.aq:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit43.i
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #18, !noalias !1006
  call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  call void @llvm.lifetime.start.p0(ptr nonnull %43), !noalias !1006
  %i.hk = icmp eq i8 %.fca.1.extract4.i45.i, 1
  br i1 %i.hk, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i51.i, label %bb.ar

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i51.i: ; preds = %bb.aq
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0136.0.i) #18, !noalias !1008
  %i.hl = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr %.sroa.0136.0.i, ptr %i.hl, align 8, !tbaa !98, !alias.scope !1007, !noalias !1006
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0136.0.i) #18, !noalias !1008
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i

bb.ar:                                            ; preds = %bb.aq
  %i.hm = getelementptr inbounds nuw i8, ptr %.sroa.0136.0.i, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !999, !noalias !1008
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 104
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !1003, !noalias !1008
  store ptr %.sroa.0136.0.i, ptr %43, align 8, !tbaa !98, !noalias !1008
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0136.0.i) #18, !noalias !1008
  call void @_ZN5clang4ento17ConstraintManager10assumeDualEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValE(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.864") align 8 %45, ptr noundef nonnull align 8 dereferenceable(56) %i.hp, ptr nofree noundef nonnull align 8 dereferenceable(8) %43, ptr %.fca.0.extract3.i44.i, i8 %.fca.1.extract4.i45.i) #18, !noalias !1006
  %i.hq = load ptr, ptr %43, align 8, !tbaa !98, !noalias !1008 ; 2 uses
  %.not.i.i.i.i46.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i46.i, label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exitthread-pre-split.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hq) #18, !noalias !1006
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exitthread-pre-split.i.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exitthread-pre-split.i.i: ; preds = %bb.as, %bb.ar
  %.pr.i.i = load ptr, ptr %45, align 8, !tbaa !98, !noalias !1006
  br label %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i

_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i: ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exitthread-pre-split.i.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i51.i
  %i.hr = phi ptr [ %.pr.i.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exitthread-pre-split.i.i ], [ %.sroa.0136.0.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_EC2IPS5_S9_TnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISB_SC_EEclsr6_PCCFPISB_SC_EE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOS_ISB_SC_E.exit.i.i51.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %43), !noalias !1006
  %i.hs = getelementptr inbounds nuw i8, ptr %45, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !98, !noalias !1006 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #18, !noalias !1006
  %.not.i48.i = icmp eq ptr %i.ht, null
  br i1 %.not.i48.i, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i
  %.not42.i.i = icmp eq ptr %i.hr, null
  br i1 %.not42.i.i, label %bb.au, label %.thread.i49.i

bb.au:                                            ; preds = %bb.at
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 1290
  %i.hv = load i8, ptr %i.hu, align 2, !tbaa !42, !range !25, !noalias !1006, !noundef !26
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.aw, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19.i.i: ; preds = %bb.au
  store ptr %i.ht, ptr %46, align 8, !tbaa !98, !noalias !1006
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ht) #18, !noalias !1006
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %46, ptr noundef null), !noalias !1006
  %i.hx = load ptr, ptr %46, align 8, !tbaa !98, !noalias !1006 ; 2 uses
  %.not.i.i20.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i20.i.i, label %.thread.i49.i, label %bb.av

bb.av:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.hx) #18, !noalias !1006
  br label %.thread.i49.i

bb.aw:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hz = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1006
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 152
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !1006
  %i.ic = call noundef ptr %i.ib(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1006, !inline_history !931
  call fastcc void @_ZN12_GLOBAL__N_121CallAndMessageChecker11emitBadCallERKN5clang4ento7BugTypeERNS2_14CheckerContextEPKNS1_4ExprE(ptr noundef nonnull align 8 dereferenceable(97) %i.hy, ptr noundef nonnull align 8 dereferenceable(81) %2, ptr noundef %i.ic), !noalias !1006
  br label %.thread.i49.i

.thread.i49.i:                                    ; preds = %bb.aw, %bb.av, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit19.i.i, %bb.at
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ht) #18, !noalias !1006
  br label %bb.ax

bb.ax:                                            ; preds = %.thread.i49.i, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i, %bb.ap, %bb.ao, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i53.i
  %.sroa.0123.0.i = phi ptr [ null, %bb.ap ], [ %i.hr, %.thread.i49.i ], [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i53.i ], [ null, %bb.ao ], [ %i.hr, %_ZNSt4pairIN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEES6_ED2Ev.exit.i47.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %44)
  call void @llvm.lifetime.end.p0(ptr nonnull %46)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.0.i) #18
  %.not172.i = icmp eq ptr %.sroa.0123.0.i, null
  br i1 %.not172.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.ax, %_ZN4llvm14CastIsPossibleIN5clang4ento15CXXInstanceCallEPKNS2_9CallEventEvE10isPossibleERKS6_.exit.i.i.i, %bb.am
  %.sroa.0136.2167.i = phi ptr [ %.sroa.0123.0.i, %bb.ax ], [ %.sroa.0136.0.i, %_ZN4llvm14CastIsPossibleIN5clang4ento15CXXInstanceCallEPKNS2_9CallEventEvE10isPossibleERKS6_.exit.i.i.i ], [ %.sroa.0136.0.i, %bb.am ] ; 12 uses
  %i.id = load ptr, ptr %1, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = call noundef i32 %i.if(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !inline_history !934
  %.not173.i = icmp eq i32 %i.ig, 8
  br i1 %.not173.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61.i: ; preds = %.thread.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %42)
  %i.ih = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1009
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 64
  %i.ij = load ptr, ptr %i.ii, align 8, !noalias !1009
  %i.ik = call noundef ptr %i.ij(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1009, !inline_history !937 ; 3 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !1014, !noalias !1009
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1009 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 56
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !98, !noalias !1009 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  %.sroa.3.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !73, !noalias !1009
  %i.iq = and i64 %.sroa.3.0.copyload.i.i.i.i.i, -8
  %i.ir = inttoptr i64 %i.iq to ptr
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #18, !noalias !1009
  call void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef %i.im, ptr noundef %i.ir) #18, !noalias !1009
  %i.it = getelementptr inbounds nuw i8, ptr %i.ip, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !999, !noalias !1009
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 240
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !1000, !noalias !1009
  %i.ix = call { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8) %i.is, ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef nonnull align 8 dereferenceable(412) %i.iw) #18, !noalias !1009
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #18, !noalias !1009
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.ix, 1
  %i.iy = icmp eq i8 %.fca.1.extract.i.i, 0
  br i1 %i.iy, label %bb.ay, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit78.i

bb.ay:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61.i
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 1291
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !42, !range !25, !noalias !1009, !noundef !26
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ba, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65.i: ; preds = %bb.ay
  store ptr %.sroa.0136.2167.i, ptr %42, align 8, !tbaa !98, !noalias !1009
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18, !noalias !1009
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %42, ptr noundef null), !noalias !1009
  %i.jc = load ptr, ptr %42, align 8, !tbaa !98, !noalias !1009 ; 2 uses
  %.not.i.i11.i66.i = icmp eq ptr %i.jc, null
  br i1 %.not.i.i11.i66.i, label %bb.be, label %bb.az

bb.az:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.jc) #18, !noalias !1009
  br label %bb.be

bb.ba:                                            ; preds = %bb.ay
  %i.jd = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1009 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.0.copyload.i.i.i.i.i.i67.i = load i64, ptr %i.je, align 8, !noalias !1009
  %i.jf = and i64 %.0.copyload.i.i.i.i.i.i67.i, -8
  %i.jg = inttoptr i64 %i.jf to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %40), !noalias !1009
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jd, i64 56
  %.pr.i.i.i68.i = load ptr, ptr %i.jh, align 8, !tbaa !98, !noalias !1009 ; 3 uses
  store ptr %.pr.i.i.i68.i, ptr %40, align 8, !tbaa !98, !noalias !1009
  %.not.i.i.i.i.i69.i = icmp eq ptr %.pr.i.i.i68.i, null
  br i1 %.not.i.i.i.i.i69.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i70.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i.i68.i) #18, !noalias !1009
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i70.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i70.i: ; preds = %bb.bb, %bb.ba
  %i.ji = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %40, i1 noundef zeroext true, ptr noundef nonnull %i.jd, ptr noundef %i.jg), !noalias !1009 ; 3 uses
  %i.jj = load ptr, ptr %40, align 8, !tbaa !98, !noalias !1009 ; 2 uses
  %.not.i.i3.i.i.i71.i = icmp eq ptr %i.jj, null
  br i1 %.not.i.i3.i.i.i71.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i72.i, label %bb.bc

bb.bc:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i70.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.jj) #18, !noalias !1009
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i72.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i72.i: ; preds = %bb.bc, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i70.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40), !noalias !1009
  %.not.i73.i = icmp eq ptr %i.ji, null
  br i1 %.not.i73.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i72.i
  %i.jk = load i32, ptr %i.ik, align 8, !noalias !1009
  %i.jl = and i32 %i.jk, 2097152
  %.not27.i.i = icmp eq i32 %i.jl, 0              ; 2 uses
  %..i.i = select i1 %.not27.i.i, i64 37, i64 39
  %.str.53..str.52.i.i = select i1 %.not27.i.i, ptr @.str.53, ptr @.str.52
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.jn = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #19, !noalias !1015 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #18, !noalias !1015
  %i.jo = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i8 5, ptr %i.jo, align 8, !tbaa !115, !noalias !1015
  %i.jp = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 1, ptr %i.jp, align 1, !tbaa !116, !noalias !1015
  store ptr %.str.53..str.52.i.i, ptr %39, align 8, !tbaa !73, !noalias !1015
  %i.jq = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %..i.i, ptr %i.jq, align 8, !tbaa !73, !noalias !1015
  call void @llvm.lifetime.start.p0(ptr nonnull %38), !noalias !1015
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %38, i8 0, i64 64, i1 false), !noalias !1015
  store i32 1, ptr %38, align 8, !tbaa !126, !noalias !1015
  %i.jr = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.js = getelementptr inbounds nuw i8, ptr %38, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.jr, i8 0, i64 28, i1 false), !noalias !1015
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.js, i8 0, i64 17, i1 false), !noalias !1015
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.jn, ptr noundef nonnull align 8 dereferenceable(97) %i.jm, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull %i.ji, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %38, ptr noundef null) #18, !noalias !1015
  call void @llvm.lifetime.end.p0(ptr nonnull %38), !noalias !1015
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #18, !noalias !1015
  %i.jt = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.ji, ptr noundef nonnull %i.ik, ptr noundef nonnull align 8 dereferenceable(1000) %i.jn, i64 4294967296) #18, !noalias !1009 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %37), !noalias !1009
  %i.ju = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.ju, align 8, !tbaa !131, !noalias !1009
  %i.jv = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1009, !nonnull !26, !align !41
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 672 ; 2 uses
  %i.jx = ptrtoint ptr %i.jn to i64
  store i64 %i.jx, ptr %37, align 8, !tbaa !134, !noalias !1009
  %i.jy = load ptr, ptr %i.jw, align 8, !tbaa !18, !noalias !1009
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !1009
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(120) %i.jw, ptr nofree noundef nonnull align 8 dereferenceable(8) %37) #18, !noalias !1009, !inline_history !940
  %i.kb = load ptr, ptr %37, align 8, !tbaa !134, !noalias !1009 ; 3 uses
  %.not.i.i14.i74.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i14.i74.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i76.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i75.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i75.i: ; preds = %bb.bd
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !18, !noalias !1009
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !noalias !1009
  call void %i.ke(ptr noundef nonnull align 8 dereferenceable(488) %i.kb) #18, !noalias !1009, !inline_history !941
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i76.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i76.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i75.i, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %37), !noalias !1009
  br label %bb.be

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit78.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit61.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i

bb.be:                                            ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i76.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit13.i72.i, %bb.az, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i65.i
  call void @llvm.lifetime.end.p0(ptr nonnull %42)
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit78.i, %.thread.i
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  %i.kf = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 48
  %i.kh = load ptr, ptr %i.kg, align 8, !noalias !1016
  %i.ki = call noundef ptr %i.kh(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016, !inline_history !944 ; 6 uses
  %i.kj = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1016, !nonnull !26, !align !41
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !270, !noalias !1016, !nonnull !26, !align !41
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 264
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1046, !noalias !1016, !nonnull !26, !align !41
  %i.ko = call noundef i32 @_ZNK5clang15AnalyzerOptions10getIPAModeEv(ptr noundef nonnull align 8 dereferenceable(504) %i.kn) #18, !noalias !1016
  %i.kp = icmp ne i32 %i.ko, 1
  %i.kq = icmp ne ptr %i.ki, null
  %or.cond.i.i = and i1 %i.kq, %i.kp
  br i1 %or.cond.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i
  %i.kr = load ptr, ptr %i.ki, align 8, !tbaa !18, !noalias !1016
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 64
  %i.kt = load ptr, ptr %i.ks, align 8, !noalias !1016
  %i.ku = call noundef ptr %i.kt(ptr noundef nonnull align 8 dereferenceable(33) %i.ki) #18, !noalias !1016, !inline_history !944
  %i.kv = icmp eq ptr %i.ku, null
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i
  %i.kw = phi i1 [ true, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit82.i ], [ %i.kv, %bb.bf ]
  %i.kx = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8, !noalias !1016
  %i.la = call noundef i32 %i.kz(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016, !inline_history !945
  %i.lb = icmp eq i32 %i.la, 10
  %.v.i.i = select i1 %i.lb, i64 976, i64 456
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 %.v.i.i ; 4 uses
  %.not.i.i.i83.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i83.i, label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ki, i64 28
  %i.le = load i32, ptr %i.ld, align 4, !noalias !1016
  %i.lf = and i32 %i.le, 127
  %i.lg = add nsw i32 %i.lf, -35
  %i.lh = icmp ult i32 %i.lg, 6
  %spec.select.i.i.i.i.i = select i1 %i.lh, ptr %i.ki, ptr null
  br label %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i.i

_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.bh ], [ null, %bb.bg ] ; 3 uses
  %i.li = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 72
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !1016
  %i.ll = call noundef i32 %i.lk(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016, !inline_history !944 ; 2 uses
  %.not84.i.i = icmp eq i32 %i.ll, 0
  br i1 %.not84.i.i, label %.critedge40.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i.i
  %.not38.i.i = icmp eq ptr %.0.i.i.i.i, null
  %i.lm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 120
  %i.ln = getelementptr inbounds nuw i8, ptr %24, i64 8
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1293
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.lq = getelementptr inbounds nuw i8, ptr %0, i64 1304
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.ls = getelementptr inbounds nuw i8, ptr %27, i64 16 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %27, i64 12
  %i.lv = getelementptr inbounds nuw i8, ptr %27, i64 96
  %i.lw = getelementptr inbounds nuw i8, ptr %27, i64 104
  %i.lx = getelementptr inbounds nuw i8, ptr %27, i64 112
  %i.ly = getelementptr inbounds nuw i8, ptr %27, i64 120
  %i.lz = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.mb = getelementptr inbounds nuw i8, ptr %33, i64 12
  %i.mc = getelementptr inbounds nuw i8, ptr %33, i64 96
  %i.md = getelementptr inbounds nuw i8, ptr %33, i64 104
  %i.me = getelementptr inbounds nuw i8, ptr %33, i64 112
  %i.mf = getelementptr inbounds nuw i8, ptr %33, i64 120
  %i.mg = zext i32 %i.ll to i64
  br label %bb.bi

bb.bi:                                            ; preds = %.critedge.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.critedge.i.i ] ; 6 uses
  br i1 %.not38.i.i, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mh = call noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168) %.0.i.i.i.i) #18, !noalias !1016
  %i.mi = zext i32 %i.mh to i64
  %i.mj = icmp samesign ult i64 %indvars.iv.i.i, %i.mi
  br i1 %i.mj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mk = load ptr, ptr %i.lm, align 8, !tbaa !1080, !noalias !1016
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mk, i64 %indvars.iv.i.i
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !1082, !noalias !1016
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.034.i.i = phi ptr [ %i.mm, %bb.bk ], [ null, %bb.bj ], [ null, %bb.bi ] ; 2 uses
  %i.mn = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 88
  %i.mp = load ptr, ptr %i.mo, align 8, !noalias !1016
  %i.mq = trunc nuw i64 %indvars.iv.i.i to i32    ; 11 uses
  %i.mr = call { ptr, i8 } %i.mp(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.mq) #18, !noalias !1016, !inline_history !944 ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.mr, 0 ; 3 uses
  %.fca.1.extract.i84.i = extractvalue { ptr, i8 } %i.mr, 1 ; 3 uses
  %i.ms = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 104
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !1016
  %i.mv = call i64 %i.mu(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.mq) #18, !noalias !1016, !inline_history !944 ; 4 uses
  %i.mw = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 96
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !1016
  %i.mz = call noundef ptr %i.my(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.mq) #18, !noalias !1016, !inline_history !944 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %30), !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %34), !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %24), !noalias !1016
  store ptr %.fca.0.extract.i.i, ptr %24, align 8, !noalias !1016
  store i8 %.fca.1.extract.i84.i, ptr %i.ln, align 8, !noalias !1016
  %i.na = load i8, ptr %i.lo, align 1, !tbaa !42, !range !25, !noalias !1016, !noundef !26
  %i.nb = trunc nuw i8 %i.na to i1
  %.not.i.i41.i.i = icmp ne ptr %.034.i.i, null
  %or.cond.not.i.i.i.i = and i1 %.not.i.i41.i.i, %i.nb
  br i1 %or.cond.not.i.i.i.i, label %bb.bm, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.nc = getelementptr inbounds nuw i8, ptr %.034.i.i, i64 48
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.nc, align 8, !tbaa !73, !noalias !1016
  %i.nd = and i64 %.sroa.0.0.copyload.i.i.i.i.i, -16
  %i.ne = inttoptr i64 %i.nd to ptr               ; 3 uses
  %i.nf = load ptr, ptr %i.ne, align 16, !tbaa !276, !noalias !1016 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ng, align 8, !tbaa !73, !noalias !1016
  %i.nh = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i, -16
  %i.ni = inttoptr i64 %i.nh to ptr
  %i.nj = load ptr, ptr %i.ni, align 16, !tbaa !276, !noalias !1016
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.nl = load i8, ptr %i.nk, align 16, !noalias !1016
  switch i8 %i.nl, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i [
    i8 43, label %bb.bn
    i8 42, label %bb.bn
    i8 40, label %bb.bn
  ]

bb.bn:                                            ; preds = %bb.bm, %bb.bm, %bb.bm
  %i.nm = load i8, ptr %i.lp, align 8, !tbaa !66, !range !25, !noalias !1016, !noundef !26 ; 2 uses
  %i.nn = call i64 @_ZNK5clang4Type14getPointeeTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.nf) #18, !noalias !1016 ; 5 uses
  %i.no = trunc i64 %i.nn to i1
  br i1 %i.no, label %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i, label %_ZNK5clang8QualType16isConstQualifiedEv.exit.i.i.i.i

_ZNK5clang8QualType16isConstQualifiedEv.exit.i.i.i.i: ; preds = %bb.bn
  %i.np = and i64 %i.nn, -16
  %i.nq = inttoptr i64 %i.np to ptr
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 8
  %.0.copyload.i.i.i.i.i1.i.i.i.i.i = load i64, ptr %i.nr, align 8, !noalias !1016
  %i.ns = trunc i64 %.0.copyload.i.i.i.i.i1.i.i.i.i.i to i1
  br i1 %i.ns, label %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %_ZNK5clang8QualType16isConstQualifiedEv.exit.i.i.i.i
  %i.nt = load ptr, ptr %i.lq, align 8, !tbaa !1083, !noalias !1016 ; 2 uses
  %i.nu = load ptr, ptr %i.lr, align 8, !tbaa !1083, !noalias !1016 ; 2 uses
  %.not17.i.i.i.i.i = icmp eq ptr %i.nt, %i.nu
  br i1 %.not17.i.i.i.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bo, %bb.bp
  %.sroa.010.018.i.i.i.i.i = phi ptr [ %i.nw, %bb.bp ], [ %i.nt, %bb.bo ] ; 3 uses
  %i.nv = call noundef zeroext i1 @_ZNK5clang4ento15CallDescription7matchesERKNS0_9CallEventE(ptr noundef nonnull align 8 dereferenceable(60) %.sroa.010.018.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016
  br i1 %i.nv, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i.i91.i = icmp eq ptr %i.nw, %i.nu
  br i1 %.not.i.i.i.i91.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i, label %.lr.ph.i.i.i.i.i

bb.bq:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i.i.i.i, i64 64
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !90, !noalias !1016
  %i.nz = zext i32 %i.ny to i64
  %.not63.i.i.i.i = icmp eq i64 %indvars.iv.i.i, %i.nz
  br i1 %.not63.i.i.i.i, label %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i

_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i: ; preds = %bb.bq, %_ZNK5clang8QualType16isConstQualifiedEv.exit.i.i.i.i, %bb.bn
  %.158.i.i.i.i = phi i8 [ %i.nm, %_ZNK5clang8QualType16isConstQualifiedEv.exit.i.i.i.i ], [ 1, %bb.bq ], [ %i.nm, %bb.bn ]
  %i.oa = call noundef ptr @_ZNK5clang4ento4SVal11getAsRegionEv(ptr noundef nonnull align 8 dereferenceable(9) %24) #18, !noalias !1016 ; 2 uses
  %.not64.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not64.i.i.i.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i, label %bb.br

bb.br:                                            ; preds = %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i
  %i.ob = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1016
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 56
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !98, !noalias !1016 ; 6 uses
  %.not.i.i.i.i.i92.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i.i92.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i93.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.od) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i93.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i93.i: ; preds = %bb.bs, %bb.br
  %i.oe = and i64 %i.nn, -16
  %i.of = inttoptr i64 %i.oe to ptr
  %i.og = load ptr, ptr %i.of, align 16, !tbaa !276, !noalias !1016
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 8
end_hunk_1
begin_hunk_2_@_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE:bb.a
  %i.tj = zext nneg i32 %switch.tableidx168 to i64
  %switch.gep170 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE.11, i64 %i.tj
  %switch.load171 = load ptr, ptr %switch.gep170, align 8
  br label %_ZN4llvm16getOrdinalSuffixEj.exit93.i.i.i.i

_ZN4llvm16getOrdinalSuffixEj.exit93.i.i.i.i:      ; preds = %bb.ci, %switch.lookup169, %bb.ch
  %.sroa.0.0.i90.i.i.i.i = phi ptr [ %switch.load171, %switch.lookup169 ], [ @.str.71, %bb.ch ], [ @.str.71, %bb.ci ]
  %i.tk = load ptr, ptr %i.ne, align 8, !tbaa !276, !noalias !1016
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %.sroa.0.0.copyload.i.i.i.i95.i.i.i.i = load i64, ptr %i.tl, align 8, !tbaa !73, !noalias !1016
  %i.tm = and i64 %.sroa.0.0.copyload.i.i.i.i95.i.i.i.i, -16
  %i.tn = inttoptr i64 %i.tm to ptr
  %i.to = load ptr, ptr %i.tn, align 16, !tbaa !276, !noalias !1016
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load i8, ptr %i.tp, align 16, !noalias !1016
  %i.tr = icmp eq i8 %i.tq, 40
  %i.ts = select i1 %i.tr, i64 ptrtoint (ptr @.str.59 to i64), i64 ptrtoint (ptr @.str.60 to i64)
  %i.tt = ptrtoint ptr %27 to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %29, i64 80 ; 2 uses
  store ptr @.str.58, ptr %29, align 8, !tbaa !20, !alias.scope !1103, !noalias !1016
  %.sroa.22.0..sroa_idx.i.i.i.i96.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 8
  store i64 59, ptr %.sroa.22.0..sroa_idx.i.i.i.i96.i.i.i.i, align 8, !tbaa !22, !alias.scope !1103, !noalias !1016
  %i.tv = getelementptr inbounds nuw i8, ptr %29, i64 16
  store ptr %i.tu, ptr %i.tv, align 8, !tbaa !1088, !alias.scope !1103, !noalias !1016
  %.sroa.2.0..sroa_idx.i.i.i.i97.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 24
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i97.i.i.i.i, align 8, !tbaa !22, !alias.scope !1103, !noalias !1016
  %i.tw = getelementptr inbounds nuw i8, ptr %29, i64 32
  store i8 1, ptr %i.tw, align 8, !tbaa !1091, !alias.scope !1103, !noalias !1016
  %i.tx = getelementptr inbounds nuw i8, ptr %29, i64 40 ; 2 uses
  store i64 %i.tt, ptr %i.tx, align 8, !tbaa !1104, !alias.scope !1103, !noalias !1016
  %i.ty = getelementptr inbounds nuw i8, ptr %29, i64 48 ; 2 uses
  store i64 %i.ts, ptr %i.ty, align 8, !tbaa !20, !alias.scope !1103, !noalias !1016
  %i.tz = getelementptr inbounds nuw i8, ptr %29, i64 56 ; 2 uses
  store ptr %.sroa.0.0.i90.i.i.i.i, ptr %i.tz, align 8, !noalias !1016
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 64
  store i64 2, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1016
  %i.ua = getelementptr inbounds nuw i8, ptr %29, i64 72 ; 2 uses
  store i32 %i.tf, ptr %i.ua, align 8, !tbaa !90, !alias.scope !1103, !noalias !1016
  %.ptr.1.i.i.i.i98.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 96
  %.ptr.2.i.i.i.i99.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 112
  %.ptr.3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 128
  %i.ub = ptrtoint ptr %i.ua to i64
  %i.uc = ptrtoint ptr %i.tz to i64
  %i.ud = ptrtoint ptr %i.ty to i64
  %i.ue = ptrtoint ptr %i.tx to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIiEEEEvlS2_S3_, ptr %i.tu, align 8, !alias.scope !1103, !noalias !1016
  %.sroa.4.0..sroa_idx.i.i.i100.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 88
  store i64 %i.ub, ptr %.sroa.4.0..sroa_idx.i.i.i100.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i98.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  %.sroa.6.0..sroa_idx.i.i.i101.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 104
  store i64 %i.uc, ptr %.sroa.6.0..sroa_idx.i.i.i101.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i99.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  %.sroa.8.0..sroa_idx.i.i.i102.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 120
  store i64 %i.ud, ptr %.sroa.8.0..sroa_idx.i.i.i102.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_11SmallVectorIPKN5clang9FieldDeclELj10EEEEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i.i.i.i.i, align 8, !alias.scope !1103, !noalias !1016
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 136
  store i64 %i.ue, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !73, !alias.scope !1103, !noalias !1016
  call void @llvm.experimental.noalias.scope.decl(metadata !1105)
  call void @llvm.experimental.noalias.scope.decl(metadata !1106)
  %i.uf = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  store ptr %i.uf, ptr %28, align 8, !tbaa !71, !alias.scope !1107, !noalias !1016
  %i.ug = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 0, ptr %i.ug, align 8, !tbaa !74, !alias.scope !1107, !noalias !1016
  store i8 0, ptr %i.uf, align 8, !tbaa !73, !alias.scope !1107, !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !1108
  %i.uh = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.uh, align 8, !tbaa !292, !noalias !1108
  %i.ui = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i8 0, ptr %i.ui, align 8, !tbaa !293, !noalias !1108
  %i.uj = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 1, ptr %i.uj, align 4, !tbaa !294, !noalias !1108
  %i.uk = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.uk, i8 0, i64 24, i1 false), !noalias !1108
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %5, align 8, !tbaa !18, !noalias !1108
  %i.ul = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %28, ptr %i.ul, align 8, !tbaa !81, !noalias !1108
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef null, i64 noundef 0, i32 noundef 0) #18, !noalias !1016
  %i.um = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(33) %29) #18, !noalias !1016 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %5) #18, !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1108
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #18, !noalias !1016
  %i.un = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #19, !noalias !1109 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18, !noalias !1109
  %i.uo = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i8 4, ptr %i.uo, align 8, !tbaa !115, !noalias !1109
  %i.up = getelementptr inbounds nuw i8, ptr %7, i64 33
  store i8 1, ptr %i.up, align 1, !tbaa !116, !noalias !1109
  store ptr %28, ptr %7, align 8, !tbaa !73, !noalias !1109
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false), !noalias !1109
  store i32 1, ptr %6, align 8, !tbaa !126, !noalias !1109
  %i.uq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ur = getelementptr inbounds nuw i8, ptr %6, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.uq, i8 0, i64 28, i1 false), !noalias !1109
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.ur, i8 0, i64 17, i1 false), !noalias !1109
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.un, ptr noundef nonnull align 8 dereferenceable(97) %i.lc, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull align 8 dereferenceable(34) %7, ptr noundef nonnull %i.td, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %6, ptr noundef null) #18, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18, !noalias !1109
  %i.us = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 104
  %i.uu = load ptr, ptr %i.ut, align 8, !noalias !1016
  %i.uv = call i64 %i.uu(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef %i.mq) #18, !noalias !1016, !inline_history !948 ; 2 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %i.un, i64 88 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.un, i64 96 ; 3 uses
  %i.uy = load i32, ptr %i.ux, align 8, !tbaa !128, !noalias !1016 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.un, i64 100
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !129, !noalias !1016
  %.not.i.i46.i.i = icmp ult i32 %i.uy, %i.va
  br i1 %.not.i.i46.i.i, label %bb.ck, label %bb.cj, !prof !92

bb.cj:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit93.i.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.uw, i64 %i.uv), !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit47.i.i

bb.ck:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit93.i.i.i.i
  %i.vb = zext i32 %i.uy to i64
  %i.vc = load ptr, ptr %i.uw, align 8, !tbaa !130, !noalias !1016
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vc, i64 %i.vb
  store i64 %i.uv, ptr %i.vd, align 1, !noalias !1016
  %i.ve = load i32, ptr %i.ux, align 8, !tbaa !128, !noalias !1016
  %i.vf = add i32 %i.ve, 1
  store i32 %i.vf, ptr %i.ux, align 8, !tbaa !128, !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit47.i.i

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit47.i.i: ; preds = %bb.ck, %bb.cj
  %.not66.i.i.i.i = icmp eq ptr %i.pm, null
  br i1 %.not66.i.i.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit47.i.i
  %i.vg = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.td, ptr noundef nonnull %i.pm, ptr noundef nonnull align 8 dereferenceable(1000) %i.un, i64 4294967296) #18, !noalias !1016 ; 0 uses
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit47.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %18), !noalias !1016
  %i.vh = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.vh, align 8, !tbaa !131, !noalias !1016
  %i.vi = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1016, !nonnull !26, !align !41
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 672 ; 2 uses
  %i.vk = ptrtoint ptr %i.un to i64
  store i64 %i.vk, ptr %18, align 8, !tbaa !134, !noalias !1016
  %i.vl = load ptr, ptr %i.vj, align 8, !tbaa !18, !noalias !1016
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 16
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !1016
  call void %i.vn(ptr noundef nonnull align 8 dereferenceable(120) %i.vj, ptr nofree noundef nonnull align 8 dereferenceable(8) %18) #18, !noalias !1016, !inline_history !959
  %i.vo = load ptr, ptr %18, align 8, !tbaa !134, !noalias !1016 ; 3 uses
  %.not.i.i103.i.i.i.i = icmp eq ptr %i.vo, null
  br i1 %.not.i.i103.i.i.i.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit111.i.i.i.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i104.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i104.i.i.i.i: ; preds = %bb.cm
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !18, !noalias !1016
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !1016
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(488) %i.vo) #18, !noalias !1016, !inline_history !960
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit111.i.i.i.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit111.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i104.i.i.i.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %18), !noalias !1016
  %i.vs = load ptr, ptr %28, align 8, !tbaa !72, !noalias !1016 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, %i.uf
  br i1 %i.vt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit111.i.i.i.i
  %i.vu = load i64, ptr %i.uf, align 8, !tbaa !73, !noalias !1016
  %i.vv = add i64 %i.vu, 1
  call void @_ZdlPvm(ptr noundef %i.vs, i64 noundef %i.vv) #21, !noalias !1016
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit111.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i112.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #18, !noalias !1016
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit114.i.i.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit87.i.i.i.i
  %i.vw = load ptr, ptr %27, align 8, !tbaa !130, !noalias !1016 ; 2 uses
  %i.vx = icmp eq ptr %i.vw, %i.ls
  br i1 %i.vx, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  call void @free(ptr noundef %i.vw) #18, !noalias !1016
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.i

.critedge71.i.i.i.i:                              ; preds = %bb.cd
  %i.vy = load ptr, ptr %27, align 8, !tbaa !130, !noalias !1016 ; 2 uses
  %i.vz = icmp eq ptr %i.vy, %i.ls
  br i1 %i.vz, label %_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit115.i.i.i.i, label %bb.cp

bb.cp:                                            ; preds = %.critedge71.i.i.i.i
  call void @free(ptr noundef %i.vy) #18, !noalias !1016
  br label %_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit115.i.i.i.i

_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit115.i.i.i.i: ; preds = %bb.cp, %.critedge71.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18, !noalias !1016
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.i.i.i

_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.i: ; preds = %bb.co, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #18, !noalias !1016
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread104.i.i.i

_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread104.i.i.i: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.od) #18, !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i

_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.i.i.i: ; preds = %_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit115.i.i.i.i, %_ZNK5clang4Type10isVoidTypeEv.exit.thread.i.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.od) #18, !noalias !1016
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i

_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i: ; preds = %bb.bp, %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.i.i.i, %_ZNK5clang8QualType16isConstQualifiedEv.exit.thread.i.i.i.i, %bb.bq, %bb.bo, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %24), !noalias !1016
  %i.wa = icmp eq i8 %.fca.1.extract.i84.i, 0
  br i1 %i.wa, label %bb.cq, label %bb.eg

bb.cq:                                            ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.wc = load i8, ptr %i.wb, align 4, !tbaa !42, !range !25, !noalias !1016, !noundef !26
  %i.wd = trunc nuw i8 %i.wc to i1
  br i1 %i.wd, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  store ptr null, ptr %30, align 8, !tbaa !98, !noalias !1016
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %30, ptr noundef null), !noalias !1016
  %i.we = load ptr, ptr %30, align 8, !tbaa !98, !noalias !1016 ; 2 uses
  %.not.i.i45.i.i.i = icmp eq ptr %i.we, null
  br i1 %.not.i.i45.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.we) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i

bb.ct:                                            ; preds = %bb.cq
  %i.wf = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1016 ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.wg, align 8, !noalias !1016
  %i.wh = and i64 %.0.copyload.i.i.i.i.i.i.i.i, -8
  %i.wi = inttoptr i64 %i.wh to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %17), !noalias !1016
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wf, i64 56
  %.pr.i.i.i.i.i = load ptr, ptr %i.wj, align 8, !tbaa !98, !noalias !1016 ; 3 uses
  store ptr %.pr.i.i.i.i.i, ptr %17, align 8, !tbaa !98, !noalias !1016
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.pr.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i.i.i.i) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct
  %i.wk = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %17, i1 noundef zeroext true, ptr noundef nonnull %i.wf, ptr noundef %i.wi), !noalias !1016 ; 3 uses
  %i.wl = load ptr, ptr %17, align 8, !tbaa !98, !noalias !1016 ; 2 uses
  %.not.i.i3.i.i.i.i.i = icmp eq ptr %i.wl, null
  br i1 %.not.i.i3.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit50.i.i.i, label %bb.cv

bb.cv:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.wl) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit50.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit50.i.i.i: ; preds = %bb.cv, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17), !noalias !1016
  %.not43.i.i.i = icmp eq ptr %i.wk, null
  br i1 %.not43.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i, label %bb.cw

bb.cw:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit50.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #18, !noalias !1016
  %i.wm = getelementptr inbounds nuw i8, ptr %31, i64 24 ; 2 uses
  store ptr %i.wm, ptr %31, align 8, !tbaa !286, !noalias !1016
  %i.wn = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 0, ptr %i.wn, align 8, !tbaa !287, !noalias !1016
  %i.wo = getelementptr inbounds nuw i8, ptr %31, i64 16
  store i64 200, ptr %i.wo, align 8, !tbaa !288, !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #18, !noalias !1016
  %i.wp = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i32 2, ptr %i.wp, align 8, !tbaa !292, !noalias !1016
  %i.wq = getelementptr inbounds nuw i8, ptr %32, i64 40
  store i8 0, ptr %i.wq, align 8, !tbaa !293, !noalias !1016
  %i.wr = getelementptr inbounds nuw i8, ptr %32, i64 44
  store i32 1, ptr %i.wr, align 4, !tbaa !294, !noalias !1016
  %i.ws = getelementptr inbounds nuw i8, ptr %32, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ws, i8 0, i64 24, i1 false), !noalias !1016
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4llvm19raw_svector_ostreamE, i64 16), ptr %32, align 8, !tbaa !18, !noalias !1016
  %i.wt = getelementptr inbounds nuw i8, ptr %32, i64 48 ; 2 uses
  store ptr %31, ptr %i.wt, align 8, !tbaa !296, !noalias !1016
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef null, i64 noundef 0, i32 noundef 0) #18, !noalias !1016
  %i.wu = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 32
  %i.ww = load ptr, ptr %i.wv, align 8, !noalias !1016
  %i.wx = call noundef i32 %i.ww(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016, !inline_history !971
  switch i32 %i.wx, label %bb.dv [
    i32 10, label %bb.cx
    i32 9, label %bb.dp
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.wy = call noundef i32 @_ZNK5clang4ento14ObjCMethodCall14getMessageKindEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016
  switch i32 %i.wy, label %bb.do [
    i32 2, label %bb.cy
    i32 0, label %bb.de
    i32 1, label %bb.dh
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.wz = add nsw i32 %i.mq, 1                    ; 3 uses
  %i.xa = sext i32 %i.wz to i64
  %i.xb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(56) %32, i64 noundef %i.xa) #18, !noalias !1016 ; 4 uses
  %i.xc = urem i32 %i.wz, 100
  %.off.i.i51.i.i.i = add nsw i32 %i.xc, -11
  %switch.i.i52.i.i.i = icmp ult i32 %.off.i.i51.i.i.i, 3
  br i1 %switch.i.i52.i.i.i, label %_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.xd = urem i32 %i.wz, 10
  %switch.tableidx172 = add nsw i32 %i.xd, -1     ; 2 uses
  %i.xe = icmp ult i32 %switch.tableidx172, 3
  br i1 %i.xe, label %switch.lookup173, label %_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i

switch.lookup173:                                 ; preds = %bb.cz
  %i.xf = zext nneg i32 %switch.tableidx172 to i64
  %switch.gep174 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE.11, i64 %i.xf
  %switch.load175 = load ptr, ptr %switch.gep174, align 8
  br label %_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i

_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i:      ; preds = %bb.cz, %switch.lookup173, %bb.cy
  %.sroa.0.0.i.i54.i.i.i = phi ptr [ %switch.load175, %switch.lookup173 ], [ @.str.71, %bb.cy ], [ @.str.71, %bb.cz ] ; 2 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xb, i64 24
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !297, !noalias !1016
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xb, i64 32 ; 3 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !298, !noalias !1016 ; 2 uses
  %i.xk = ptrtoint ptr %i.xh to i64
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = icmp ult i64 %i.xm, 2
  br i1 %i.xn, label %bb.da, label %bb.db

bb.da:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i
  %i.xo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.xb, ptr noundef nonnull %.sroa.0.0.i.i54.i.i.i, i64 noundef 2) #18, !noalias !1016 ; 2 uses
  %.phi.trans.insert55.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.xo, i64 32
  %.pre56.i.i.i.i = load ptr, ptr %.phi.trans.insert55.i.i.i.i, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i.i.i

bb.db:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit.i53.i.i.i
  %i.xp = load i16, ptr %.sroa.0.0.i.i54.i.i.i, align 1, !noalias !1016
  store i16 %i.xp, ptr %i.xj, align 1, !noalias !1016
  %i.xq = load ptr, ptr %i.xi, align 8, !tbaa !298, !noalias !1016
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 2 ; 2 uses
  store ptr %i.xr, ptr %i.xi, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i.i.i: ; preds = %bb.db, %bb.da
  %i.xs = phi ptr [ %.pre56.i.i.i.i, %bb.da ], [ %i.xr, %bb.db ] ; 2 uses
  %.0.i.i.i.i.i = phi ptr [ %i.xo, %bb.da ], [ %i.xb, %bb.db ] ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !297, !noalias !1016
  %i.xv = ptrtoint ptr %i.xu to i64
  %i.xw = ptrtoint ptr %i.xs to i64
  %i.xx = sub i64 %i.xv, %i.xw
  %i.xy = icmp ult i64 %i.xx, 57
  br i1 %i.xy, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i.i.i
  %i.xz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i.i.i.i, ptr noundef nonnull @.str.79, i64 noundef 57) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dd:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit.i.i.i.i
  %i.ya = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(57) %i.xs, ptr noundef nonnull align 1 dereferenceable(57) @.str.79, i64 57, i1 false), !noalias !1016
  %i.yb = load ptr, ptr %i.ya, align 8, !tbaa !298, !noalias !1016
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 57
  store ptr %i.yc, ptr %i.ya, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.de:                                            ; preds = %bb.cx
  %i.yd = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !297, !noalias !1016
  %i.yf = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 3 uses
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !298, !noalias !1016 ; 2 uses
  %i.yh = ptrtoint ptr %i.ye to i64
  %i.yi = ptrtoint ptr %i.yg to i64
  %i.yj = sub i64 %i.yh, %i.yi
  %i.yk = icmp ult i64 %i.yj, 54
  br i1 %i.yk, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.yl = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull @.str.80, i64 noundef 54) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dg:                                            ; preds = %bb.de
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(54) %i.yg, ptr noundef nonnull align 1 dereferenceable(54) @.str.80, i64 54, i1 false), !noalias !1016
  %i.ym = load ptr, ptr %i.yf, align 8, !tbaa !298, !noalias !1016
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 54
  store ptr %i.yn, ptr %i.yf, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dh:                                            ; preds = %bb.cx
  %i.yo = call noundef i32 @_ZNK5clang4ento14ObjCMethodCall14getMessageKindEv(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016
  %i.yp = icmp eq i32 %i.yo, 1
  %i.yq = load ptr, ptr %1, align 8, !tbaa !18, !noalias !1016
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 72
  %i.ys = load ptr, ptr %i.yr, align 8, !noalias !1016
  %i.yt = call noundef i32 %i.ys(ptr noundef nonnull align 8 dereferenceable(72) %1) #18, !noalias !1016, !inline_history !972 ; 2 uses
  %i.yu = icmp ugt i32 %i.yt, 1
  %i.yv = icmp ne i32 %i.yt, 0
  %.0.i24.i.i.i.i = select i1 %i.yp, i1 %i.yu, i1 %i.yv
  %i.yw = icmp eq i64 %indvars.iv.i.i, 0
  %or.cond.i.i.i.i = and i1 %i.yw, %.0.i24.i.i.i.i
  %i.yx = getelementptr inbounds nuw i8, ptr %32, i64 24
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !297, !noalias !1016
  %i.yz = getelementptr inbounds nuw i8, ptr %32, i64 32 ; 5 uses
  %i.za = load ptr, ptr %i.yz, align 8, !tbaa !298, !noalias !1016 ; 3 uses
  %i.zb = ptrtoint ptr %i.yy to i64
  %i.zc = ptrtoint ptr %i.za to i64
  %i.zd = sub i64 %i.zb, %i.zc                    ; 2 uses
  br i1 %or.cond.i.i.i.i, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.ze = icmp ult i64 %i.zd, 55
  br i1 %i.ze, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.zf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull @.str.81, i64 noundef 55) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dk:                                            ; preds = %bb.di
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.za, ptr noundef nonnull align 1 dereferenceable(55) @.str.81, i64 55, i1 false), !noalias !1016
  %i.zg = load ptr, ptr %i.yz, align 8, !tbaa !298, !noalias !1016
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 55
  store ptr %i.zh, ptr %i.yz, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dl:                                            ; preds = %bb.dh
  %i.zi = icmp ult i64 %i.zd, 41
  br i1 %i.zi, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.zj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(56) %32, ptr noundef nonnull @.str.82, i64 noundef 41) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dn:                                            ; preds = %bb.dl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(41) %i.za, ptr noundef nonnull align 1 dereferenceable(41) @.str.82, i64 41, i1 false), !noalias !1016
  %i.zk = load ptr, ptr %i.yz, align 8, !tbaa !298, !noalias !1016
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 41
  store ptr %i.zl, ptr %i.yz, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.do:                                            ; preds = %bb.cx
  unreachable

bb.dp:                                            ; preds = %bb.cw
  %i.zm = add nsw i32 %i.mq, 1                    ; 3 uses
  %i.zn = sext i32 %i.zm to i64
  %i.zo = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(56) %32, i64 noundef %i.zn) #18, !noalias !1016 ; 4 uses
  %i.zp = urem i32 %i.zm, 100
  %.off.i31.i.i.i.i = add nsw i32 %i.zp, -11
  %switch.i32.i.i.i.i = icmp ult i32 %.off.i31.i.i.i.i, 3
  br i1 %switch.i32.i.i.i.i, label %_ZN4llvm16getOrdinalSuffixEj.exit36.i.i.i.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.zq = urem i32 %i.zm, 10
  %switch.tableidx176 = add nsw i32 %i.zq, -1     ; 2 uses
  %i.zr = icmp ult i32 %switch.tableidx176, 3
  br i1 %i.zr, label %switch.lookup177, label %_ZN4llvm16getOrdinalSuffixEj.exit36.i.i.i.i

end_hunk_2
begin_hunk_3_@_ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE:bb.a
  br i1 %i.aaa, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit36.i.i.i.i
  %i.aab = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.zo, ptr noundef nonnull %.sroa.0.0.i33.i.i.i.i, i64 noundef 2) #18, !noalias !1016 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aab, i64 32
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit39.i.i.i.i

bb.ds:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit36.i.i.i.i
  %i.aac = load i16, ptr %.sroa.0.0.i33.i.i.i.i, align 1, !noalias !1016
  store i16 %i.aac, ptr %i.zw, align 1, !noalias !1016
  %i.aad = load ptr, ptr %i.zv, align 8, !tbaa !298, !noalias !1016
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 2 ; 2 uses
  store ptr %i.aae, ptr %i.zv, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit39.i.i.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit39.i.i.i.i: ; preds = %bb.ds, %bb.dr
  %i.aaf = phi ptr [ %.pre.i.i.i.i, %bb.dr ], [ %i.aae, %bb.ds ] ; 2 uses
  %.0.i38.i.i.i.i = phi ptr [ %i.aab, %bb.dr ], [ %i.zo, %bb.ds ] ; 3 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %.0.i38.i.i.i.i, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !297, !noalias !1016
  %i.aai = ptrtoint ptr %i.aah to i64
  %i.aaj = ptrtoint ptr %i.aaf to i64
  %i.aak = sub i64 %i.aai, %i.aaj
  %i.aal = icmp ult i64 %i.aak, 46
  br i1 %i.aal, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit39.i.i.i.i
  %i.aam = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i38.i.i.i.i, ptr noundef nonnull @.str.83, i64 noundef 46) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.du:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit39.i.i.i.i
  %i.aan = getelementptr inbounds nuw i8, ptr %.0.i38.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(46) %i.aaf, ptr noundef nonnull align 1 dereferenceable(46) @.str.83, i64 46, i1 false), !noalias !1016
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !298, !noalias !1016
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 46
  store ptr %i.aap, ptr %i.aan, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.dv:                                            ; preds = %bb.cw
  %i.aaq = add nsw i32 %i.mq, 1                   ; 3 uses
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(56) %32, i64 noundef %i.aar) #18, !noalias !1016 ; 4 uses
  %i.aat = urem i32 %i.aaq, 100
  %.off.i43.i.i.i.i = add nsw i32 %i.aat, -11
  %switch.i44.i.i.i.i = icmp ult i32 %.off.i43.i.i.i.i, 3
  br i1 %switch.i44.i.i.i.i, label %_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.aau = urem i32 %i.aaq, 10
  %switch.tableidx180 = add nsw i32 %i.aau, -1    ; 2 uses
  %i.aav = icmp ult i32 %switch.tableidx180, 3
  br i1 %i.aav, label %switch.lookup181, label %_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i

switch.lookup181:                                 ; preds = %bb.dw
  %i.aaw = zext nneg i32 %switch.tableidx180 to i64
  %switch.gep182 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5clang4ento5check7PreCall10_checkCallIN12_GLOBAL__N_121CallAndMessageCheckerEEEvPvRKNS0_9CallEventERNS0_14CheckerContextE.11, i64 %i.aaw
  %switch.load183 = load ptr, ptr %switch.gep182, align 8
  br label %_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i

_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i:      ; preds = %bb.dw, %switch.lookup181, %bb.dv
  %.sroa.0.0.i45.i.i.i.i = phi ptr [ %switch.load183, %switch.lookup181 ], [ @.str.71, %bb.dv ], [ @.str.71, %bb.dw ] ; 2 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !297, !noalias !1016
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aas, i64 32 ; 3 uses
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !298, !noalias !1016 ; 2 uses
  %i.abb = ptrtoint ptr %i.aay to i64
  %i.abc = ptrtoint ptr %i.aba to i64
  %i.abd = sub i64 %i.abb, %i.abc
  %i.abe = icmp ult i64 %i.abd, 2
  br i1 %i.abe, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i
  %i.abf = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.aas, ptr noundef nonnull %.sroa.0.0.i45.i.i.i.i, i64 noundef 2) #18, !noalias !1016 ; 2 uses
  %.phi.trans.insert57.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.abf, i64 32
  %.pre58.i.i.i.i = load ptr, ptr %.phi.trans.insert57.i.i.i.i, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit51.i.i.i.i

bb.dy:                                            ; preds = %_ZN4llvm16getOrdinalSuffixEj.exit48.i.i.i.i
  %i.abg = load i16, ptr %.sroa.0.0.i45.i.i.i.i, align 1, !noalias !1016
  store i16 %i.abg, ptr %i.aba, align 1, !noalias !1016
  %i.abh = load ptr, ptr %i.aaz, align 8, !tbaa !298, !noalias !1016
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 2 ; 2 uses
  store ptr %i.abi, ptr %i.aaz, align 8, !tbaa !298, !noalias !1016
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit51.i.i.i.i

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit51.i.i.i.i: ; preds = %bb.dy, %bb.dx
  %i.abj = phi ptr [ %.pre58.i.i.i.i, %bb.dx ], [ %i.abi, %bb.dy ] ; 2 uses
  %.0.i50.i.i.i.i = phi ptr [ %i.abf, %bb.dx ], [ %i.aas, %bb.dy ] ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %.0.i50.i.i.i.i, i64 24
  %i.abl = load ptr, ptr %i.abk, align 8, !tbaa !297, !noalias !1016
  %i.abm = ptrtoint ptr %i.abl to i64
  %i.abn = ptrtoint ptr %i.abj to i64
  %i.abo = sub i64 %i.abm, %i.abn
  %i.abp = icmp ult i64 %i.abo, 49
  br i1 %i.abp, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit51.i.i.i.i
  %i.abq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i50.i.i.i.i, ptr noundef nonnull @.str.84, i64 noundef 49) #18, !noalias !1016 ; 0 uses
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

bb.ea:                                            ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit51.i.i.i.i
  %i.abr = getelementptr inbounds nuw i8, ptr %.0.i50.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.abj, ptr noundef nonnull align 1 dereferenceable(49) @.str.84, i64 49, i1 false), !noalias !1016
  %i.abs = load ptr, ptr %i.abr, align 8, !tbaa !298, !noalias !1016
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 49
  store ptr %i.abt, ptr %i.abr, align 8, !tbaa !298, !noalias !1016
  br label %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i

_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i: ; preds = %bb.ea, %bb.dz, %bb.du, %bb.dt, %bb.dn, %bb.dm, %bb.dk, %bb.dj, %bb.dg, %bb.df, %bb.dd, %bb.dc
  %i.abu = load ptr, ptr %i.wt, align 8, !tbaa !301, !noalias !1016, !nonnull !26, !align !41 ; 2 uses
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !286, !noalias !1016
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !287, !noalias !1016
  %i.aby = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #19, !noalias !1110 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #18, !noalias !1110
  %i.abz = getelementptr inbounds nuw i8, ptr %16, i64 32
  store i8 5, ptr %i.abz, align 8, !tbaa !115, !noalias !1110
  %i.aca = getelementptr inbounds nuw i8, ptr %16, i64 33
  store i8 1, ptr %i.aca, align 1, !tbaa !116, !noalias !1110
  store ptr %i.abv, ptr %16, align 8, !tbaa !73, !noalias !1110
  %i.acb = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i64 %i.abx, ptr %i.acb, align 8, !tbaa !73, !noalias !1110
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !1110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %15, i8 0, i64 64, i1 false), !noalias !1110
  store i32 1, ptr %15, align 8, !tbaa !126, !noalias !1110
  %i.acc = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.acd = getelementptr inbounds nuw i8, ptr %15, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.acc, i8 0, i64 28, i1 false), !noalias !1110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.acd, i8 0, i64 17, i1 false), !noalias !1110
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.aby, ptr noundef nonnull align 8 dereferenceable(97) %i.lc, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef nonnull align 8 dereferenceable(34) %16, ptr noundef nonnull %i.wk, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %15, ptr noundef null) #18, !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !1110
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #18, !noalias !1110
  %i.ace = getelementptr inbounds nuw i8, ptr %i.aby, i64 88 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.aby, i64 96 ; 3 uses
  %i.acg = load i32, ptr %i.acf, align 8, !tbaa !128, !noalias !1016 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.aby, i64 100
  %i.aci = load i32, ptr %i.ach, align 4, !tbaa !129, !noalias !1016
  %.not.i.i55.i.i.i = icmp ult i32 %i.acg, %i.aci
  br i1 %.not.i.i55.i.i.i, label %bb.ec, label %bb.eb, !prof !92

bb.eb:                                            ; preds = %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.ace, i64 %i.mv), !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i.i

bb.ec:                                            ; preds = %_ZL35describeUninitializedArgumentInCallRKN5clang4ento9CallEventEiRN4llvm19raw_svector_ostreamE.exit.i.i.i
  %i.acj = zext i32 %i.acg to i64
  %i.ack = load ptr, ptr %i.ace, align 8, !tbaa !130, !noalias !1016
  %i.acl = getelementptr inbounds nuw [8 x i8], ptr %i.ack, i64 %i.acj
  store i64 %i.mv, ptr %i.acl, align 1, !noalias !1016
  %i.acm = load i32, ptr %i.acf, align 8, !tbaa !128, !noalias !1016
  %i.acn = add i32 %i.acm, 1
  store i32 %i.acn, ptr %i.acf, align 8, !tbaa !128, !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i.i

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i.i: ; preds = %bb.ec, %bb.eb
  %.not44.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not44.i.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i.i
  %i.aco = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.wk, ptr noundef nonnull %i.mz, ptr noundef nonnull align 8 dereferenceable(1000) %i.aby, i64 4294967296) #18, !noalias !1016 ; 0 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !1016
  %i.acp = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.acp, align 8, !tbaa !131, !noalias !1016
  %i.acq = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1016, !nonnull !26, !align !41
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acq, i64 672 ; 2 uses
  %i.acs = ptrtoint ptr %i.aby to i64
  store i64 %i.acs, ptr %14, align 8, !tbaa !134, !noalias !1016
  %i.act = load ptr, ptr %i.acr, align 8, !tbaa !18, !noalias !1016
  %i.acu = getelementptr inbounds nuw i8, ptr %i.act, i64 16
  %i.acv = load ptr, ptr %i.acu, align 8, !noalias !1016
  call void %i.acv(ptr noundef nonnull align 8 dereferenceable(120) %i.acr, ptr nofree noundef nonnull align 8 dereferenceable(8) %14) #18, !noalias !1016, !inline_history !975
  %i.acw = load ptr, ptr %14, align 8, !tbaa !134, !noalias !1016 ; 3 uses
  %.not.i.i56.i.i.i = icmp eq ptr %i.acw, null
  br i1 %.not.i.i56.i.i.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.ee
  %i.acx = load ptr, ptr %i.acw, align 8, !tbaa !18, !noalias !1016
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 8
  %i.acz = load ptr, ptr %i.acy, align 8, !noalias !1016
  call void %i.acz(ptr noundef nonnull align 8 dereferenceable(488) %i.acw) #18, !noalias !1016, !inline_history !976
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i.i.i, %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %14), !noalias !1016
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %32) #18, !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #18, !noalias !1016
  %i.ada = load ptr, ptr %31, align 8, !tbaa !286, !noalias !1016 ; 2 uses
  %i.adb = icmp eq ptr %i.ada, %i.wm
  br i1 %i.adb, label %_ZN4llvm11SmallVectorIcLj200EED2Ev.exit.i.i.i, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i.i
  call void @free(ptr noundef %i.ada) #18, !noalias !1016
  br label %_ZN4llvm11SmallVectorIcLj200EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorIcLj200EED2Ev.exit.i.i.i:    ; preds = %bb.ef, %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i

bb.eg:                                            ; preds = %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread.i.i.i
  %i.adc = icmp eq i8 %.fca.1.extract.i84.i, 7
  %or.cond.i.i.i = select i1 %i.kw, i1 %i.adc, i1 false
  br i1 %or.cond.i.i.i, label %bb.eh, label %.critedge.i.i

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #18, !noalias !1016
  %i.add = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1016
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 56
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !98, !noalias !1016
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 8
  %i.adh = load ptr, ptr %i.adg, align 8, !tbaa !999, !noalias !1016
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 96
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !1084, !noalias !1016
  %i.adk = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1016, !nonnull !26, !align !41
  %i.adl = getelementptr inbounds nuw i8, ptr %i.adk, i64 584
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !277, !noalias !1016, !nonnull !26, !align !41
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adm, i64 232
  %i.ado = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %i.adp = load ptr, ptr %i.ado, align 8, !tbaa !1098, !noalias !1016
  store ptr %i.lz, ptr %33, align 8, !tbaa !130, !noalias !1016
  store i32 0, ptr %i.ma, align 8, !tbaa !128, !noalias !1016
  store i32 10, ptr %i.mb, align 4, !tbaa !129, !noalias !1016
  store ptr %i.adj, ptr %i.mc, align 8, !tbaa !1084, !noalias !1016
  store ptr %i.adn, ptr %i.md, align 8, !tbaa !1099, !noalias !1016
  store ptr %i.adp, ptr %i.me, align 8, !tbaa !305, !noalias !1016
  store i8 0, ptr %i.mf, align 8, !tbaa !306, !noalias !1016
  %i.adq = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 24
  %i.adr = load ptr, ptr %i.adq, align 8, !tbaa !1102, !noalias !1016
  %i.ads = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122FindUninitializedField4FindEPKN5clang4ento16TypedValueRegionE(ptr noundef nonnull align 8 dereferenceable(121) %33, ptr noundef nonnull %i.adr), !noalias !1016
  br i1 %i.ads, label %bb.ei, label %.critedge.i.i.i

bb.ei:                                            ; preds = %bb.eh
  %i.adt = getelementptr inbounds nuw i8, ptr %0, i64 1292
  %i.adu = load i8, ptr %i.adt, align 4, !tbaa !42, !range !25, !noalias !1016, !noundef !26
  %i.adv = trunc nuw i8 %i.adu to i1
  br i1 %i.adv, label %bb.el, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  store ptr null, ptr %34, align 8, !tbaa !98, !noalias !1016
  call void @_ZN5clang4ento14CheckerContext7addSinkEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %34, ptr noundef null), !noalias !1016
  %i.adw = load ptr, ptr %34, align 8, !tbaa !98, !noalias !1016 ; 2 uses
  %.not.i.i59.i.i.i = icmp eq ptr %i.adw, null
  br i1 %.not.i.i59.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.adw) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i

bb.el:                                            ; preds = %bb.ei
  %i.adx = load ptr, ptr %i.a, align 8, !tbaa !112, !noalias !1016 ; 2 uses
  %i.ady = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.0.copyload.i.i.i.i.i.i87.i = load i64, ptr %i.ady, align 8, !noalias !1016
  %i.adz = and i64 %.0.copyload.i.i.i.i.i.i87.i, -8
  %i.aea = inttoptr i64 %i.adz to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %8), !noalias !1016
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.adx, i64 56
  %.pr.i.i.i88.i = load ptr, ptr %i.aeb, align 8, !tbaa !98, !noalias !1016 ; 3 uses
  store ptr %.pr.i.i.i88.i, ptr %8, align 8, !tbaa !98, !noalias !1016
  %.not.i.i.i.i45.i.i = icmp eq ptr %.pr.i.i.i88.i, null
  br i1 %.not.i.i.i.i45.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i44.i.i, label %bb.em

bb.em:                                            ; preds = %bb.el
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i.i88.i) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i44.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i44.i.i: ; preds = %bb.em, %bb.el
  %i.aec = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %2, ptr nofree noundef nonnull align 8 dereferenceable(8) %8, i1 noundef zeroext true, ptr noundef nonnull %i.adx, ptr noundef %i.aea), !noalias !1016 ; 3 uses
  %i.aed = load ptr, ptr %8, align 8, !tbaa !98, !noalias !1016 ; 2 uses
  %.not.i.i3.i.i.i89.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i3.i.i.i89.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit62.i.i.i, label %bb.en

bb.en:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i44.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aed) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit62.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit62.i.i.i: ; preds = %bb.en, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i44.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8), !noalias !1016
  %.not.i.i90.i = icmp eq ptr %i.aec, null
  br i1 %.not.i.i90.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i, label %bb.eo

bb.eo:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit62.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #18, !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #18, !noalias !1016
  %i.aee = ptrtoint ptr %33 to i64
  %i.aef = getelementptr inbounds nuw i8, ptr %36, i64 48 ; 2 uses
  store ptr @.str.54, ptr %36, align 8, !tbaa !20, !alias.scope !1111, !noalias !1016
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 8
  store i64 62, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !22, !alias.scope !1111, !noalias !1016
  %i.aeg = getelementptr inbounds nuw i8, ptr %36, i64 16
  store ptr %i.aef, ptr %i.aeg, align 8, !tbaa !1088, !alias.scope !1111, !noalias !1016
  %.sroa.2.0..sroa_idx.i.i.i.i63.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i63.i.i.i, align 8, !tbaa !22, !alias.scope !1111, !noalias !1016
  %i.aeh = getelementptr inbounds nuw i8, ptr %36, i64 32
  store i8 1, ptr %i.aeh, align 8, !tbaa !1091, !alias.scope !1111, !noalias !1016
  %i.aei = getelementptr inbounds nuw i8, ptr %36, i64 40 ; 2 uses
  store i64 %i.aee, ptr %i.aei, align 8, !tbaa !1104, !alias.scope !1111, !noalias !1016
  %i.aej = ptrtoint ptr %i.aei to i64
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRNS_11SmallVectorIPKN5clang9FieldDeclELj10EEEEEEEvlS2_S3_, ptr %i.aef, align 8, !alias.scope !1111, !noalias !1016
  %.sroa.4.0..sroa_idx.i.i.i64.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 56
  store i64 %i.aej, ptr %.sroa.4.0..sroa_idx.i.i.i64.i.i.i, align 8, !tbaa !73, !alias.scope !1111, !noalias !1016
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  %i.aek = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 4 uses
  store ptr %i.aek, ptr %35, align 8, !tbaa !71, !alias.scope !1114, !noalias !1016
  %i.ael = getelementptr inbounds nuw i8, ptr %35, i64 8
  store i64 0, ptr %i.ael, align 8, !tbaa !74, !alias.scope !1114, !noalias !1016
  store i8 0, ptr %i.aek, align 8, !tbaa !73, !alias.scope !1114, !noalias !1016
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18, !noalias !1115
  %i.aem = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 0, ptr %i.aem, align 8, !tbaa !292, !noalias !1115
  %i.aen = getelementptr inbounds nuw i8, ptr %9, i64 40
  store i8 0, ptr %i.aen, align 8, !tbaa !293, !noalias !1115
  %i.aeo = getelementptr inbounds nuw i8, ptr %9, i64 44
  store i32 1, ptr %i.aeo, align 4, !tbaa !294, !noalias !1115
  %i.aep = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aep, i8 0, i64 24, i1 false), !noalias !1115
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %9, align 8, !tbaa !18, !noalias !1115
  %i.aeq = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr %35, ptr %i.aeq, align 8, !tbaa !81, !noalias !1115
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef null, i64 noundef 0, i32 noundef 0) #18, !noalias !1016
  %i.aer = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %9, ptr noundef nonnull align 8 dereferenceable(33) %36) #18, !noalias !1016 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %9) #18, !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18, !noalias !1115
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #18, !noalias !1016
  %i.aes = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #19, !noalias !1116 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #18, !noalias !1116
  %i.aet = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i8 4, ptr %i.aet, align 8, !tbaa !115, !noalias !1116
  %i.aeu = getelementptr inbounds nuw i8, ptr %11, i64 33
  store i8 1, ptr %i.aeu, align 1, !tbaa !116, !noalias !1116
  store ptr %35, ptr %11, align 8, !tbaa !73, !noalias !1116
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 0, i64 64, i1 false), !noalias !1116
  store i32 1, ptr %10, align 8, !tbaa !126, !noalias !1116
  %i.aev = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aew = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.aev, i8 0, i64 28, i1 false), !noalias !1116
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.aew, i8 0, i64 17, i1 false), !noalias !1116
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.aes, ptr noundef nonnull align 8 dereferenceable(97) %i.lc, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull align 8 dereferenceable(34) %11, ptr noundef nonnull %i.aec, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %10, ptr noundef null) #18, !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !1116
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #18, !noalias !1116
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aes, i64 88 ; 2 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.aes, i64 96 ; 3 uses
  %i.aez = load i32, ptr %i.aey, align 8, !tbaa !128, !noalias !1016 ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aes, i64 100
  %i.afb = load i32, ptr %i.afa, align 4, !tbaa !129, !noalias !1016
  %.not.i.i42.i.i = icmp ult i32 %i.aez, %i.afb
  br i1 %.not.i.i42.i.i, label %bb.eq, label %bb.ep, !prof !92

bb.ep:                                            ; preds = %bb.eo
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.aex, i64 %i.mv), !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i

bb.eq:                                            ; preds = %bb.eo
  %i.afc = zext i32 %i.aez to i64
  %i.afd = load ptr, ptr %i.aex, align 8, !tbaa !130, !noalias !1016
  %i.afe = getelementptr inbounds nuw [8 x i8], ptr %i.afd, i64 %i.afc
  store i64 %i.mv, ptr %i.afe, align 1, !noalias !1016
  %i.aff = load i32, ptr %i.aey, align 8, !tbaa !128, !noalias !1016
  %i.afg = add i32 %i.aff, 1
  store i32 %i.afg, ptr %i.aey, align 8, !tbaa !128, !noalias !1016
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i: ; preds = %bb.eq, %bb.ep
  %.not42.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not42.i.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i
  %i.afh = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.aec, ptr noundef nonnull %i.mz, ptr noundef nonnull align 8 dereferenceable(1000) %i.aes, i64 4294967296) #18, !noalias !1016 ; 0 uses
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !1016
  %i.afi = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.afi, align 8, !tbaa !131, !noalias !1016
  %i.afj = load ptr, ptr %2, align 8, !tbaa !132, !noalias !1016, !nonnull !26, !align !41
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 672 ; 2 uses
  %i.afl = ptrtoint ptr %i.aes to i64
  store i64 %i.afl, ptr %13, align 8, !tbaa !134, !noalias !1016
  %i.afm = load ptr, ptr %i.afk, align 8, !tbaa !18, !noalias !1016
  %i.afn = getelementptr inbounds nuw i8, ptr %i.afm, i64 16
  %i.afo = load ptr, ptr %i.afn, align 8, !noalias !1016
  call void %i.afo(ptr noundef nonnull align 8 dereferenceable(120) %i.afk, ptr nofree noundef nonnull align 8 dereferenceable(8) %13) #18, !noalias !1016, !inline_history !975
  %i.afp = load ptr, ptr %13, align 8, !tbaa !134, !noalias !1016 ; 3 uses
  %.not.i.i65.i.i.i = icmp eq ptr %i.afp, null
  br i1 %.not.i.i65.i.i.i, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit73.i.i.i, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i66.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i66.i.i.i: ; preds = %bb.es
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !18, !noalias !1016
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afq, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !noalias !1016
  call void %i.afs(ptr noundef nonnull align 8 dereferenceable(488) %i.afp) #18, !noalias !1016, !inline_history !976
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit73.i.i.i

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit73.i.i.i: ; preds = %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i66.i.i.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !1016
  %i.aft = load ptr, ptr %35, align 8, !tbaa !72, !noalias !1016 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, %i.aek
  br i1 %i.afu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit73.i.i.i
  %i.afv = load i64, ptr %i.aek, align 8, !tbaa !73, !noalias !1016
  %i.afw = add i64 %i.afv, 1
  call void @_ZdlPvm(ptr noundef %i.aft, i64 noundef %i.afw) #21, !noalias !1016
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit73.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit62.i.i.i, %bb.ek, %bb.ej
  %i.afx = load ptr, ptr %33, align 8, !tbaa !130, !noalias !1016 ; 2 uses
  %i.afy = icmp eq ptr %i.afx, %i.lz
  br i1 %i.afy, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i
  call void @free(ptr noundef %i.afx) #18, !noalias !1016
  br label %bb.eu

.critedge.i.i.i:                                  ; preds = %bb.eh
  %i.afz = load ptr, ptr %33, align 8, !tbaa !130, !noalias !1016 ; 2 uses
  %i.aga = icmp eq ptr %i.afz, %i.lz
  br i1 %i.aga, label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.a, label %_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit74.i.i.i.a

_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit74.i.i.i.a: ; preds = %.critedge.i.i.i
  call void @free(ptr noundef %i.afz) #18, !noalias !1016
  br label %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.a

_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.a: ; preds = %_ZN12_GLOBAL__N_122FindUninitializedFieldD2Ev.exit74.i.i.i.a, %.critedge.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !1016
  br label %.critedge.i.i

bb.eu:                                            ; preds = %bb.et, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit60.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #18, !noalias !1016
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i

.critedge.i.i:                                    ; preds = %_ZNK5clang4ento4SVal5getAsINS0_6nonloc15LazyCompoundValEEESt8optionalIT_Ev.exit.i.i.i.a, %bb.eg
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !1016
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i85.i = icmp eq i64 %indvars.iv.next.i.i, %i.mg
  br i1 %.not.i85.i, label %.critedge40.i.i, label %bb.bi, !llvm.loop !987

.critedge40.i.i:                                  ; preds = %.critedge.i.i, %_ZN4llvm16dyn_cast_or_nullIN5clang12FunctionDeclEKNS1_4DeclEEEDaPT0_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  br label %.thread.i101.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i: ; preds = %bb.eu, %_ZN4llvm11SmallVectorIcLj200EED2Ev.exit.i.i.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit50.i.i.i, %bb.cs, %bb.cr, %_ZNK12_GLOBAL__N_121CallAndMessageChecker18uninitRefOrPointerERN5clang4ento14CheckerContextENS2_4SValERKNS2_9CallEventERKNS2_7BugTypeEPKNS1_11ParmVarDeclEi.exit.thread104.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !1016
  call void @llvm.lifetime.end.p0(ptr nonnull %34), !noalias !1016
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0136.2167.i) #18
  %59 = load ptr, ptr %i.a, align 8, !tbaa !112
  %60 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %.sroa.0111.i.0..sroa.0111.i.0..sroa.0111.i.0..sroa.0111.0..sroa.0111.0..sroa.0111.0.112.i = load ptr, ptr %60, align 8, !tbaa !98 ; 2 uses
  %.not.i.i96.i = icmp eq ptr %.sroa.0111.i.0..sroa.0111.i.0..sroa.0111.i.0..sroa.0111.0..sroa.0111.0..sroa.0111.0.112.i, null
  br i1 %.not.i.i96.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %.thread.i101.i

.thread.i101.i:                                   ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i, %.critedge40.i.i
  %.sroa.0113.0183186194.i = phi ptr [ null, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i ], [ %.sroa.0136.2167.i, %.critedge40.i.i ] ; 3 uses
  %.not.i.i98187191.i = phi i1 [ true, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i ], [ false, %.critedge40.i.i ]
  %i.agb = phi ptr [ %.sroa.0111.i.0..sroa.0111.i.0..sroa.0111.i.0..sroa.0111.0..sroa.0111.0..sroa.0111.0.112.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i ], [ %.sroa.0136.2167.i, %.critedge40.i.i ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.agb) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !112 ; 2 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %.pre.i.i.i, i64 56
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !98
  %.not175.i = icmp eq ptr %i.agb, %i.agd
  br i1 %.not175.i, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i, label %bb.ev

bb.ev:                                            ; preds = %.thread.i101.i
  %i.age = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i8 1, ptr %i.age, align 8, !tbaa !131
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.agf = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %i.agf, i64 48, i1 false), !tbaa.struct !136
  %i.agg = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !137, !nonnull !26, !align !41
  store ptr %i.agb, ptr %4, align 8, !tbaa !98
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.agb) #18
  %i.agi = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.agh, ptr noundef nonnull align 8 dereferenceable(48) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %.pre.i.i.i, i1 noundef zeroext false) #18 ; 0 uses
  %i.agj = load ptr, ptr %4, align 8, !tbaa !98   ; 2 uses
  %.not.i.i23.i.i.i = icmp eq ptr %i.agj, null
  br i1 %.not.i.i23.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i: ; preds = %bb.ev
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.agj) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.i, %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i

_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i.i, %.thread.i101.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.agb) #18
  br i1 %.not.i.i98187191.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i
  %.not.i.i108.i = icmp eq ptr %.sroa.0113.0183186194.i, null
  br i1 %.not.i.i108.i, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit, label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit.a

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a: ; preds = %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i, %bb.be, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i
  %.sroa.0113.0183186194.sink.i = phi ptr [ %.sroa.0136.0.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit40.i ], [ %.sroa.0136.2167.i, %bb.be ], [ %.sroa.0113.0183186194.i, %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit.i ] ; 2 uses
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0113.0183186194.sink.i) #18
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit.a

_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit.a: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i
  %.sroa.0137.0.sink.i = phi ptr [ %.sroa.0113.0183186194.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i ], [ %.sroa.0113.0183186194.sink.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit109.sink.split.i.a ]
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0137.0.sink.i) #18
  br label %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit

_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit: ; preds = %_ZN4llvm16dyn_cast_or_nullIN5clang8CallExprEKNS1_4ExprEEEDaPT0_.exit.thread.i, %bb.ax, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit95.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit107.i, %_ZNK12_GLOBAL__N_121CallAndMessageChecker12checkPreCallERKN5clang4ento9CallEventERNS2_14CheckerContextE.exit.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_121CallAndMessageChecker11emitBadCallERKN5clang4ento7BugTypeERNS2_14CheckerContextEPKNS1_4ExprE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(81) %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.269", align 8 ; 5 uses
  %4 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %5 = alloca %"class.llvm::Twine", align 8       ; 8 uses
  %6 = alloca %"class.llvm::IntrusiveRefCntPtr", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 8
  %i.d = and i64 %.0.copyload.i.i.i.i.i, -8
  %i.e = inttoptr i64 %i.d to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.pr.i.i = load ptr, ptr %i.f, align 8, !tbaa !98 ; 3 uses
  store ptr %.pr.i.i, ptr %6, align 8, !tbaa !98
  %.not.i.i.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.pr.i.i) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i: ; preds = %bb.b, %bb.a
  %i.g = call noundef ptr @_ZN5clang4ento14CheckerContext17addTransitionImplEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEbPNS0_12ExplodedNodeEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %1, ptr nofree noundef nonnull align 8 dereferenceable(8) %6, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noundef %i.e) ; 3 uses
  %i.h = load ptr, ptr %6, align 8, !tbaa !98     ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i3.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.h) #18
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %bb.c, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !72
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74
  %i.m = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #19, !noalias !1121 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18, !noalias !1121
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 5, ptr %i.n, align 8, !tbaa !115, !noalias !1121
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.o, align 1, !tbaa !116, !noalias !1121
  store ptr %i.j, ptr %5, align 8, !tbaa !73, !noalias !1121
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.l, ptr %i.p, align 8, !tbaa !73, !noalias !1121
  call void @llvm.lifetime.start.p0(ptr nonnull %4), !noalias !1121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false), !noalias !1121
  store i32 1, ptr %4, align 8, !tbaa !126, !noalias !1121
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false), !noalias !1121
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.r, i8 0, i64 17, i1 false), !noalias !1121
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.m, ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull align 8 dereferenceable(34) %5, ptr noundef nonnull %i.g, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %4, ptr noundef null) #18, !noalias !1121
  call void @llvm.lifetime.end.p0(ptr nonnull %4), !noalias !1121
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18, !noalias !1121
  %.not11 = icmp eq ptr %2, null
  br i1 %.not11, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = call i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #22 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 96 ; 3 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !128  ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 100
  %i.x = load i32, ptr %i.w, align 4, !tbaa !129
  %.not.i.i12 = icmp ult i32 %i.v, %i.x
  br i1 %.not.i.i12, label %bb.g, label %bb.f, !prof !92

bb.f:                                             ; preds = %bb.e
  call void @_ZN4llvm23SmallVectorTemplateBaseIN5clang11SourceRangeELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 %i.s)
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

bb.g:                                             ; preds = %bb.e
  %i.y = zext i32 %i.v to i64
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !130
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.y
  store i64 %i.s, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.u, align 8, !tbaa !128
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !128
  br label %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit

_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit: ; preds = %bb.f, %bb.g
  %i.ad = load i24, ptr %2, align 8
  %i.ae = and i24 %i.ad, 1536
  %.not23 = icmp eq i24 %i.ae, 0
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit
  %i.af = call noundef ptr @_ZN5clang4ento11bugreporter12getDerefExprEPKNS_4StmtE(ptr noundef nonnull %2) #18
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit
  %.0 = phi ptr [ %i.af, %bb.h ], [ %2, %_ZN5clang4ento9BugReport8addRangeENS_11SourceRangeE.exit ]
  %i.ag = call noundef zeroext i1 @_ZN5clang4ento11bugreporter20trackExpressionValueEPKNS0_12ExplodedNodeEPKNS_4ExprERNS0_22PathSensitiveBugReportENS1_15TrackingOptionsE(ptr noundef nonnull %i.g, ptr noundef %.0, ptr noundef nonnull align 8 dereferenceable(1000) %i.m, i64 4294967296) #18 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.ah, align 8, !tbaa !131
  %i.ai = load ptr, ptr %1, align 8, !tbaa !132, !nonnull !26, !align !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 672 ; 2 uses
  %i.ak = ptrtoint ptr %i.m to i64
  store i64 %i.ak, ptr %3, align 8, !tbaa !134
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, ptr nofree noundef nonnull align 8 dereferenceable(8) %3) #18, !inline_history !1119
  %i.ao = load ptr, ptr %3, align 8, !tbaa !134   ; 3 uses
  %.not.i.i13 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i13, label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i: ; preds = %bb.j
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(488) %i.ao) #18, !inline_history !1120
  br label %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.j, %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %_ZNSt10unique_ptrIN5clang4ento22PathSensitiveBugReportESt14default_deleteIS2_EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN5clang4Expr12IgnoreParensEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #14

declare { ptr, i8 } @_ZNK5clang4ento11Environment7getSValERKNS0_16EnvironmentEntryERNS0_11SValBuilderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(412)) local_unnamed_addr #2

declare void @_ZN5clang4ento16EnvironmentEntryC1EPKNS_4ExprEPKNS_10StackFrameE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK5clang4Stmt14getSourceRangeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #14

declare noundef ptr @_ZN5clang4ento11bugreporter12getDerefExprEPKNS_4StmtE(ptr noundef) local_unnamed_addr #2

declare void @_ZN5clang4ento17ConstraintManager10assumeDualEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEENS0_11DefinedSValE(ptr dead_on_unwind writable sret(%"struct.std::pair.864") align 8, ptr noundef nonnull align 8 dereferenceable(56), ptr nofree noundef align 8 dereferenceable(8), ptr, i8) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang12FunctionDecl12getNumParamsEv(ptr noundef nonnull align 8 dereferenceable(168)) local_unnamed_addr #2

declare noundef i32 @_ZNK5clang15AnalyzerOptions10getIPAModeEv(ptr noundef nonnull align 8 dereferenceable(504)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122FindUninitializedField4FindEPKN5clang4ento16TypedValueRegionE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i64 %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  %i.e = and i64 %i.d, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !276
  %i.h = tail call noundef ptr @_ZNK5clang4Type18getAsStructureTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #18 ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread58, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1127
  %i.k = tail call noundef ptr @_ZNK5clang7TagDecl13getDefinitionEv(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #18
  %i.l = tail call ptr @_ZNK5clang10RecordDecl11field_beginEv(ptr noundef nonnull align 8 dereferenceable(128) %i.k) #18 ; 2 uses
  %.not6566 = icmp eq ptr %i.l, null
  br i1 %.not6566, label %.thread58, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit
  %.sroa.046.067 = phi ptr [ %i.l, %.lr.ph ], [ %.sroa.046.2, %_ZN5clang11DeclContext22specific_decl_iteratorINS_9FieldDeclEEppEv.exit ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.046.067, i64 68
  %i.t = load i32, ptr %i.s, align 4
  %i.u = trunc i32 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.046.067, i64 40
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.v, align 8
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 0
  %i.w = select i1 %i.u, i1 %.not.i, i1 false
  br i1 %i.w, label %bb.j, label %bb.d
end_hunk_3
