Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/StreamChecker?download=true
inline.NumInlined: 5649
inline.NumDeleted: 2729
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK12_GLOBAL__N_113StreamChecker12evalGetdelimEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextE:bb.a
  br i1 %i.du, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i: ; preds = %bb.ah
  %i.dv = load i32, ptr %i.dr, align 16, !noalias !1323
  %i.dw = and i32 %i.dv, 536346624
  %i.dx = icmp eq i32 %i.dw, 264765440
  br i1 %i.dx, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit159, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %bb.ah
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit159

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit159: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157, %bb.ag, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i
  %.sroa.3.0.i.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit157 ], [ 2, %bb.ag ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i ]
  %i.dy = and i64 %.val86.val, -8
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.eb = call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.ea, i64 noundef -1, i64 %i.dj) #22, !noalias !1323
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %25, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0199.0212, ptr noundef nonnull %i.dg, ptr noundef %i.dz, ptr %i.eb, i8 %.sroa.3.0.i.i, i1 noundef zeroext true) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0199.0212) #22
  %.val87 = load ptr, ptr %i.v, align 8, !tbaa !399 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.val87, i64 12
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !369, !range !35, !noundef !36
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.ai, label %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread

bb.ai:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit159
  %i.ef = getelementptr inbounds nuw i8, ptr %.val87, i64 13
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !370, !range !35, !noundef !36
  %.not.i160 = icmp eq i8 %i.eg, 0
  br i1 %.not.i160, label %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread, label %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161

_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161: ; preds = %bb.ai
  %i.eh = getelementptr inbounds nuw i8, ptr %.val87, i64 14
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !371, !range !35, !noundef !36
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.aj, label %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread

_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit159, %bb.ai, %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161
  br label %bb.aj

bb.aj:                                            ; preds = %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161, %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread
  %.sroa.7.0 = phi i64 [ 72340168526266368, %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161.thread ], [ 1099511627776, %_ZNK12_GLOBAL__N_124StreamOperationEvaluator11isStreamEofEv.exit161 ] ; 2 uses
  %i.ek = load ptr, ptr %25, align 8, !tbaa !184  ; 4 uses
  %.not.i.i162 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i162, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit163, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ek) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit163

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit163: ; preds = %bb.aj, %bb.ak
  %.sroa.4186.12.extract.shift = lshr exact i64 %.sroa.7.0, 32
  %.sroa.4186.12.extract.trunc = trunc i64 %.sroa.4186.12.extract.shift to i24
  store i24 %.sroa.4186.12.extract.trunc, ptr %i.o, align 8, !noalias !1324
  %i.el = load ptr, ptr %i.m, align 8, !tbaa !378, !noalias !1324
  call fastcc void @_ZNK5clang4ento12ProgramState3setIN12_GLOBAL__N_19StreamMapEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeENSB_10value_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %26, ptr noundef nonnull align 8 dereferenceable(48) %i.ek, ptr noundef %i.el, ptr nonnull %1, i64 %.sroa.7.0)
  %i.em = load ptr, ptr %26, align 8, !tbaa !184
  %i.en = load ptr, ptr %25, align 8, !tbaa !184  ; 3 uses
  store ptr %i.en, ptr %26, align 8, !tbaa !184
  store ptr %i.em, ptr %25, align 8, !tbaa !184
  %.not.i.i165 = icmp eq ptr %i.en, null
  br i1 %.not.i.i165, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit170, label %bb.al

bb.al:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit163
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.en) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit170

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit170: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit163, %bb.al
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ek) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.eo = load ptr, ptr %2, align 8, !tbaa !102
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 88
  %i.eq = load ptr, ptr %i.ep, align 8
  %i.er = call { ptr, i8 } %i.eq(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 0) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.er, 0
  %.fca.1.extract = extractvalue { ptr, i8 } %i.er, 1
  store ptr %.sroa.0199.0212, ptr %28, align 8, !tbaa !184
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0199.0212) #22
  call void @_ZN5clang4ento13getPointeeValENS0_4SValEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1624") align 8 %27, ptr %.fca.0.extract, i8 %.fca.1.extract, ptr nofree noundef nonnull align 8 dereferenceable(8) %28) #22
  %i.es = load ptr, ptr %28, align 8, !tbaa !184  ; 2 uses
  %.not.i.i171 = icmp eq ptr %i.es, null
  br i1 %.not.i.i171, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit170
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.es) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit170, %bb.am
  %i.et = getelementptr inbounds nuw i8, ptr %27, i64 16
  %i.eu = load i8, ptr %i.et, align 8, !tbaa !1321, !range !35, !noundef !36
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %bb.an, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174thread-pre-split

bb.an:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172
  %i.ew = load ptr, ptr %25, align 8, !tbaa !184  ; 3 uses
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %27, i64 8
  %.sroa.22.0.copyload = load i8, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !341 ; 2 uses
  %i.ex = add i8 %.sroa.22.0.copyload, -2
  %spec.select.i.i.i.i.i.i = icmp ult i8 %i.ex, 3
  br i1 %spec.select.i.i.i.i.i.i, label %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i, label %bb.ao

_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i: ; preds = %bb.an
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !181
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %.sroa.3.0.copyload.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !tbaa !123
  %.sroa.01.0.copyload = load ptr, ptr %27, align 8, !tbaa !98
  %i.ez = and i64 %.sroa.3.0.copyload.i.i, -8
  %i.fa = inttoptr i64 %i.ez to ptr
  call void @_ZNK5clang4ento12ProgramState7bindLocENS0_3LocENS0_4SValEPKNS_10StackFrameEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %29, ptr noundef nonnull align 8 dereferenceable(48) %i.ew, ptr %.sroa.01.0.copyload, i8 %.sroa.22.0.copyload, ptr null, i8 0, ptr noundef %i.fa, i1 noundef zeroext true) #22
  %.pre = load ptr, ptr %29, align 8, !tbaa !184
  br label %_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit

bb.ao:                                            ; preds = %bb.an
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull align 8 dereferenceable(48) %i.ew) #22, !noalias !1325
  br label %_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit

_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit: ; preds = %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i, %bb.ao
  %i.fb = phi ptr [ %.pre, %_ZNK5clang4ento4SVal5getAsINS0_3LocEEESt8optionalIT_Ev.exit.i ], [ %i.ew, %bb.ao ] ; 2 uses
  %i.fc = load ptr, ptr %25, align 8, !tbaa !184  ; 3 uses
  store ptr %i.fc, ptr %29, align 8, !tbaa !184
  store ptr %i.fb, ptr %25, align 8, !tbaa !184
  %.not.i.i173 = icmp eq ptr %i.fc, null
  br i1 %.not.i.i173, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174, label %bb.ap

bb.ap:                                            ; preds = %_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fc) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174thread-pre-split

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174thread-pre-split: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit172, %bb.ap
  %.pr = load ptr, ptr %25, align 8, !tbaa !184
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174thread-pre-split, %_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit
  %i.fd = phi ptr [ %.pr, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174thread-pre-split ], [ %i.fb, %_ZNK5clang4ento12ProgramState7bindLocENS0_4SValES2_PKNS_10StackFrameE.exit ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  store ptr %i.fd, ptr %30, align 8, !tbaa !184
  %.not.i.i175 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i175, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit176, label %bb.aq

bb.aq:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fd) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit176

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit176: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit174, %bb.aq
  %i.fe = call fastcc noundef ptr @_ZN12_GLOBAL__N_124StreamOperationEvaluator17getFailureNoteTagEPKNS_13StreamCheckerERN5clang4ento14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(67) %8, ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(81) %3)
  %i.ff = call noundef ptr @_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %i.fe) ; 0 uses
  %i.fg = load ptr, ptr %30, align 8, !tbaa !184  ; 2 uses
  %.not.i.i177 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i177, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit178, label %bb.ar

bb.ar:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit176
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fg) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit178

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit178: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit176, %bb.ar
  %i.fh = load ptr, ptr %25, align 8, !tbaa !184  ; 2 uses
  %.not.i.i179 = icmp eq ptr %i.fh, null
  br i1 %.not.i.i179, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180, label %bb.as

bb.as:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit178
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.fh) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit178, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %bb.au

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182: ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.au

bb.at:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit96.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit184

bb.au:                                            ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  %.sroa.0199.1.ph = phi ptr [ %i.e, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit ], [ %i.af, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit182 ], [ %.sroa.0199.0212, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit180 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %.sroa.0199.1.ph) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit184

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit184: ; preds = %bb.at, %bb.au
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113StreamChecker8preFseekEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(81) %3) #2 align 2 {
bb.a:
  %4 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 5 uses
  %6 = alloca %"class.std::unique_ptr.1438", align 8 ; 5 uses
  %7 = alloca %"class.clang::ento::PathDiagnosticLocation", align 8 ; 7 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 7 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 5 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 4 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 4 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 2 uses
  %13 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 5 uses
  %.not.i.i = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr i8, ptr %1, i64 64         ; 2 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !144
  %i.f = load ptr, ptr %2, align 8, !tbaa !102
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call { ptr, i8 } %i.h(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %.val) #22, !inline_history !3 ; 2 uses
  %.fca.0.extract8 = extractvalue { ptr, i8 } %i.i, 0 ; 3 uses
  %.fca.1.extract9 = extractvalue { ptr, i8 } %i.i, 1 ; 3 uses
  %i.j = load i32, ptr %i.e, align 8, !tbaa !144
  %i.k = load ptr, ptr %2, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.j) #22 ; 2 uses
  store ptr %i.d, ptr %11, align 8, !tbaa !184
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit25.thread, label %bb.c

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit25.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  call fastcc void @_ZNK12_GLOBAL__N_113StreamChecker19ensureStreamNonNullEN5clang4ento4SValEPKNS1_4ExprERNS2_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(944) %0, ptr %.fca.0.extract8, i8 %.fca.1.extract9, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef align 8 dereferenceable(8) %11)
  %i.o = load ptr, ptr %10, align 8, !tbaa !184
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  call fastcc void @_ZNK12_GLOBAL__N_113StreamChecker19ensureStreamNonNullEN5clang4ento4SValEPKNS1_4ExprERNS2_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE(ptr dead_on_unwind noalias writable align 8 %10, ptr noundef nonnull align 8 dereferenceable(944) %0, ptr %.fca.0.extract8, i8 %.fca.1.extract9, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef align 8 dereferenceable(8) %11)
  %i.p = load ptr, ptr %10, align 8, !tbaa !184
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit25.thread, %bb.c
  %i.q = phi ptr [ %i.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit25.thread ], [ %i.p, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %11, align 8, !tbaa !184   ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.r, null
  br i1 %.not.i.i27, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.r) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit, %bb.d
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit49, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit32

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit32: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28
  store ptr %i.q, ptr %13, align 8, !tbaa !184
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.q) #22
  call fastcc void @_ZNK12_GLOBAL__N_113StreamChecker18ensureStreamOpenedEN5clang4ento4SValERNS2_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS2_12ProgramStateEEE(ptr dead_on_unwind noalias writable align 8 %12, ptr noundef nonnull align 8 dereferenceable(944) %0, ptr %.fca.0.extract8, i8 %.fca.1.extract9, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef align 8 dereferenceable(8) %13)
  %i.s = load ptr, ptr %12, align 8, !tbaa !184   ; 15 uses
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.q) #22
  %i.t = load ptr, ptr %13, align 8, !tbaa !184   ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.t, null
  br i1 %.not.i.i33, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit34, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit32
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.t) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit34

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit34: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit32, %bb.e
  %.not71 = icmp eq ptr %i.s, null
  br i1 %.not71, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit49, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit34
  %i.u = load ptr, ptr %2, align 8, !tbaa !102
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call { ptr, i8 } %i.w(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef 2) #22 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i8 } %i.x, 0 ; 3 uses
  %.fca.1.extract = extractvalue { ptr, i8 } %i.x, 1
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  %i.y = icmp eq i8 %.fca.1.extract, 6
  br i1 %i.y, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36
  %i.z = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !829, !noalias !1332 ; 3 uses
  %i.ab = icmp ult i32 %i.aa, 65
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = load i64, ptr %.fca.0.extract, align 8, !tbaa !123, !noalias !1332
  %i.ad = icmp eq i32 %i.aa, 0
  %i.ae = sub nuw nsw i32 64, %i.aa
  %i.af = zext nneg i32 %i.ae to i64              ; 2 uses
  %i.ag = shl i64 %i.ac, %i.af
  %i.ah = ashr exact i64 %i.ag, %i.af
  %.0.i.i.i = select i1 %i.ad, i64 0, i64 %i.ah
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %.fca.0.extract, align 8, !tbaa !123, !noalias !1332
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !31, !noalias !1332
  br label %_ZNK4llvm5APInt12getSExtValueEv.exit.i

_ZNK4llvm5APInt12getSExtValueEv.exit.i:           ; preds = %bb.h, %bb.g
  %.0.i.i = phi i64 [ %.0.i.i.i, %bb.g ], [ %i.aj, %bb.h ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !165, !noalias !1332
  %i.am = sext i32 %i.al to i64
  %i.an = icmp eq i64 %.0.i.i, %i.am
  br i1 %i.an, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %_ZNK4llvm5APInt12getSExtValueEv.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 900
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !166, !noalias !1332
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i64 %.0.i.i, %i.aq
  br i1 %i.ar, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.at = load i32, ptr %i.as, align 8, !tbaa !167, !noalias !1332
  %i.au = sext i32 %i.at to i64
  %i.av = icmp eq i64 %.0.i.i, %i.au
  br i1 %i.av, label %.thread.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i: ; preds = %bb.j
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22, !noalias !1332
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !1332
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22, !noalias !1332
  store ptr %i.s, ptr %9, align 8, !tbaa !184, !noalias !1332
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.aw, align 8, !noalias !1332
  %i.ax = and i64 %.0.copyload.i.i.i.i.i.i, -8
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = call noundef ptr @_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE(ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %i.ay), !noalias !1332 ; 2 uses
  %i.ba = load ptr, ptr %9, align 8, !tbaa !184, !noalias !1332 ; 2 uses
  %.not.i.i3.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i3.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.ba) #22, !noalias !1332
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i: ; preds = %bb.k, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !1332
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22, !noalias !1332
  %.not.i = icmp eq ptr %i.az, null
  br i1 %.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.bc = call noalias noundef nonnull dereferenceable(1000) ptr @_Znwm(i64 noundef 1000) #23, !noalias !1333 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22, !noalias !1333
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 33
  store i8 1, ptr %i.bd, align 1, !tbaa !387, !noalias !1333
  store ptr @.str.65, ptr %8, align 8, !tbaa !123, !noalias !1333
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i8 3, ptr %i.be, align 8, !tbaa !388, !noalias !1333
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !1333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false), !noalias !1333
  store i32 1, ptr %7, align 8, !tbaa !396, !noalias !1333
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.bf, i8 0, i64 28, i1 false), !noalias !1333
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bg, i8 0, i64 17, i1 false), !noalias !1333
  call void @_ZN5clang4ento22PathSensitiveBugReportC2ERKNS0_7BugTypeERKN4llvm5TwineES8_PKNS0_12ExplodedNodeENS0_22PathDiagnosticLocationEPKNS_4DeclE(ptr noundef nonnull align 8 dereferenceable(1000) %i.bc, ptr noundef nonnull align 8 dereferenceable(97) %i.bb, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull align 8 dereferenceable(34) %8, ptr noundef nonnull %i.az, ptr noundef nonnull byval(%"class.clang::ento::PathDiagnosticLocation") align 8 %7, ptr noundef null) #22, !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !1333
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22, !noalias !1333
  call void @llvm.lifetime.start.p0(ptr nonnull %6), !noalias !1332
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bh, align 8, !tbaa !347, !noalias !1332
  %i.bi = load ptr, ptr %3, align 8, !tbaa !186, !noalias !1332, !nonnull !36, !align !54
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 672 ; 2 uses
  %i.bk = ptrtoint ptr %i.bc to i64
  store i64 %i.bk, ptr %6, align 8, !tbaa !398, !noalias !1332
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !102, !noalias !1332
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !1332
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(120) %i.bj, ptr nofree noundef nonnull align 8 dereferenceable(8) %6) #22, !noalias !1332, !inline_history !1330
  %i.bo = load ptr, ptr %6, align 8, !tbaa !398, !noalias !1332 ; 3 uses
  %.not.i.i8.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i8.i, label %bb.m, label %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i: ; preds = %bb.l
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !102, !noalias !1332
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1332
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(488) %i.bo) #22, !noalias !1332, !inline_history !1331
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNKSt14default_deleteIN5clang4ento9BugReportEEclEPS2_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !1332
  br label %bb.o

.thread.i:                                        ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit.i, %bb.i, %bb.j, %_ZNK4llvm5APInt12getSExtValueEv.exit.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit36
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 56
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !184
  %.not73 = icmp eq ptr %i.s, %i.bt
  br i1 %.not73, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i, label %bb.n

bb.n:                                             ; preds = %.thread.i
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bu, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.bv, i64 48, i1 false), !tbaa.struct !348
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !349, !nonnull !36, !align !54
  store ptr %i.s, ptr %5, align 8, !tbaa !184
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  %i.by = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre.i.i, i1 noundef zeroext false) #22 ; 0 uses
  %i.bz = load ptr, ptr %5, align 8, !tbaa !184   ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i23.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.a, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i: ; preds = %bb.n
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bz) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.a

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.a: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i: ; preds = %.thread.i, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  br label %bb.o

bb.o:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i, %bb.m
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.s) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit49

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit49: ; preds = %bb.o, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit28, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZNK12_GLOBAL__N_113StreamChecker9evalFseekEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextE(ptr noundef nonnull align 8 dereferenceable(944) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(81) %3) #2 align 2 {
bb.a:
  %4 = alloca %"class.clang::ProgramPoint", align 8 ; 4 uses
  %5 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 5 uses
  %6 = alloca %"struct.(anonymous namespace)::StreamOperationEvaluator", align 8 ; 15 uses
  %7 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %8 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 9 uses
  %9 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %10 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 8 uses
  %11 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %12 = alloca %"class.llvm::IntrusiveRefCntPtr.1155", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !184  ; 12 uses
  %.not.i.i = icmp eq ptr %i.d, null              ; 2 uses
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %.val = load ptr, ptr %3, align 8, !tbaa !186   ; 2 uses
  %i.e = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.e, align 8, !tbaa !364 ; 2 uses
  %i.f = getelementptr i8, ptr %.val, i64 584
  %.val.val13 = load ptr, ptr %i.f, align 8, !tbaa !320
  store ptr %.val.val13, ptr %6, align 8, !tbaa !365
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = load ptr, ptr %.val.val, align 8, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 8 dereferenceable(23904) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(272) %.val.val) #22, !inline_history !5
  store ptr %i.k, ptr %i.g, align 8, !tbaa !366
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 56
  store i8 0, ptr %i.m, align 8, !tbaa !368
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  store i8 1, ptr %i.n, align 8, !tbaa !369
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 65
  store i8 0, ptr %i.o, align 1, !tbaa !370
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 66
  store i8 0, ptr %i.p, align 2, !tbaa !371
  store ptr %i.d, ptr %7, align 8, !tbaa !184
  br i1 %.not.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit20.thread, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit20.thread: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  %i.q = getelementptr i8, ptr %1, i64 64
  %.val1482 = load i32, ptr %i.q, align 8, !tbaa !144
  %i.r = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124StreamOperationEvaluator4InitEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS5_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(67) %6, i32 %.val1482, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef align 8 dereferenceable(8) %7)
  br i1 %i.r, label %.thread, label %bb.t

.thread:                                          ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit20.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  %i.s = getelementptr i8, ptr %1, i64 64
  %.val14 = load i32, ptr %i.s, align 8, !tbaa !144
  %i.t = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_124StreamOperationEvaluator4InitEPKNS_13FnDescriptionERKN5clang4ento9CallEventERNS5_14CheckerContextEN4llvm18IntrusiveRefCntPtrIKNS5_12ProgramStateEEE(ptr noundef nonnull align 8 dereferenceable(67) %6, i32 %.val14, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef align 8 dereferenceable(8) %7)
  tail call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br i1 %i.t, label %bb.c, label %bb.u

bb.c:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  tail call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23: ; preds = %.thread, %bb.c
  %.val18 = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.u = getelementptr i8, ptr %.val18, i64 24
  %.val18.val = load i64, ptr %i.u, align 8, !tbaa !123
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !379, !noalias !1342 ; 4 uses
  %i.x = load ptr, ptr %6, align 8, !tbaa !380, !noalias !1342, !nonnull !36, !align !54
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !381, !noalias !1342, !nonnull !36, !align !54 ; 2 uses
  %i.z = tail call i64 @_ZNK5clang8CallExpr17getCallReturnTypeERKNS_10ASTContextE(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(23904) %i.y) #22, !noalias !1342 ; 2 uses
  %i.aa = and i64 %i.z, -16
  %i.ab = inttoptr i64 %i.aa to ptr
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !384, !noalias !1342
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !123, !noalias !1342
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.i, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !384, !noalias !1342
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 16, !noalias !1342 ; 3 uses
  switch i8 %i.ai, label %bb.d [
    i8 40, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25
    i8 31, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25
    i8 11, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25
  ]

bb.d:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23
  %i.aj = and i8 %i.ai, -2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 42
  br i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i8 %i.ai, 13
  br i1 %i.ak, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i: ; preds = %bb.e
  %i.al = load i32, ptr %i.ah, align 16, !noalias !1342
  %i.am = and i32 %i.al, 536346624
  %i.an = icmp eq i32 %i.am, 264765440
  br i1 %i.an, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25, label %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i

_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i: ; preds = %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %bb.e
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23, %bb.d, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i
  %.sroa.3.0.i.i = phi i8 [ 6, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.thread17.i.i ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23 ], [ 2, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit23 ], [ 2, %bb.d ], [ 2, %_ZN5clang4ento3Loc9isLocTypeENS_8QualTypeE.exit.i.i ]
  %i.ao = and i64 %.val18.val, -8
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ar = tail call ptr @_ZN5clang4ento17BasicValueFactory8getValueEmNS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(144) %i.aq, i64 noundef 0, i64 %i.z) #22, !noalias !1342
  call void @_ZNK5clang4ento12ProgramState8BindExprEPKNS_4ExprEPKNS_10StackFrameENS0_4SValEb(ptr dead_on_unwind nonnull writable sret(%"class.llvm::IntrusiveRefCntPtr.1155") align 8 %8, ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull %i.w, ptr noundef %i.ap, ptr %i.ar, i8 %.sroa.3.0.i.i, i1 noundef zeroext true) #22
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.d) #22
  %i.as = load ptr, ptr %8, align 8, !tbaa !184   ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.as, null
  br i1 %.not.i.i26, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.as) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit25, %bb.f
  store i24 1, ptr %i.n, align 8, !noalias !1343
  %i.at = load ptr, ptr %i.l, align 8, !tbaa !378, !noalias !1343 ; 2 uses
  call fastcc void @_ZNK5clang4ento12ProgramState3setIN12_GLOBAL__N_19StreamMapEEEN4llvm18IntrusiveRefCntPtrIKS1_EENS0_17ProgramStateTraitIT_E8key_typeENSB_10value_typeE(ptr dead_on_unwind noalias nonnull writable align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef %i.at, ptr nonnull %1, i64 4294967296)
  %i.au = load ptr, ptr %9, align 8, !tbaa !184
  %i.av = load ptr, ptr %8, align 8, !tbaa !184   ; 3 uses
  store ptr %i.av, ptr %9, align 8, !tbaa !184
  store ptr %i.au, ptr %8, align 8, !tbaa !184
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit31, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.av) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit31

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit31: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit27, %bb.g
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.as) #22
  %i.aw = load ptr, ptr %8, align 8, !tbaa !184   ; 4 uses
  %.not.i.i32 = icmp eq ptr %i.aw, null           ; 2 uses
  br i1 %.not.i.i32, label %bb.h, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit33

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit33: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit31
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.aw) #22
  br label %.thread.i

bb.h:                                             ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit31
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %.pr.i = load ptr, ptr %i.ay, align 8, !tbaa !184 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit35, label %.thread.i

.thread.i:                                        ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit33, %bb.h
  %i.az = phi ptr [ %.pr.i, %bb.h ], [ %i.aw, %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEEC2ERKS5_.exit33 ] ; 5 uses
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.az) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !181 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !184
  %.not = icmp eq ptr %i.az, %i.bb
  br i1 %.not, label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit, label %bb.i

bb.i:                                             ; preds = %.thread.i
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 1, ptr %i.bc, align 8, !tbaa !347
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.bd, i64 48, i1 false), !tbaa.struct !348
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !349, !nonnull !36, !align !54
  store ptr %i.az, ptr %5, align 8, !tbaa !184
  call void @_ZN5clang4ento18ProgramStateRetainEPKNS0_12ProgramStateE(ptr noundef nonnull %i.az) #22
  %i.bg = call noundef ptr @_ZN5clang4ento11NodeBuilder12generateNodeERKNS_12ProgramPointEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPNS0_12ExplodedNodeEb(ptr noundef nonnull align 8 dereferenceable(24) %i.bf, ptr noundef nonnull align 8 dereferenceable(48) %4, ptr nofree noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %.pre.i.i, i1 noundef zeroext false) #22 ; 0 uses
  %i.bh = load ptr, ptr %5, align 8, !tbaa !184   ; 2 uses
  %.not.i.i23.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i23.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i, label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i: ; preds = %bb.i
  call void @_ZN5clang4ento19ProgramStateReleaseEPKNS0_12ProgramStateE(ptr noundef nonnull %i.bh) #22
  br label %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i

_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.i.i: ; preds = %_ZN4llvm18IntrusiveRefCntPtrIKN5clang4ento12ProgramStateEED2Ev.exit24.sink.split.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %_ZN5clang4ento14CheckerContext13addTransitionEN4llvm18IntrusiveRefCntPtrIKNS0_12ProgramStateEEEPKNS_15ProgramPointTagE.exit

end_hunk_0
