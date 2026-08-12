inline.NumInlined: 2787
inline.NumDeleted: 1519
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_:.noexc
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  resume { ptr, i32 } %i.ag

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEEC2ERKS9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc3.thread.i.i.i
  %i.ah = phi ptr [ %i.i, %.noexc3.thread.i.i.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc3.thread.i.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !108
  tail call void @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEC2IS4_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !119
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !120
  br label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !323
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !324
  br label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE16do_parse_virtualERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8positiveINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8positiveINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !225, !noalias !325, !nonnull !231, !align !232 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !67, !noalias !325 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !325
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.c, align 1, !tbaa !36, !noalias !325
  %i.g = sext i8 %i.f to i32                      ; 5 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !102, !noalias !325 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199, !noalias !325 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !199, !noalias !325 ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.i, %bb.c ] ; 2 uses
  %i.r = lshr i64 %.016.i.i.i.i.i.i, 1            ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !192, !noalias !325
  %i.u = icmp slt i32 %i.t, %i.g                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = xor i64 %i.r, -1
  %i.x = add nsw i64 %.016.i.i.i.i.i.i, %i.w
  %.sroa.011.1.i.i.i.i.i.i = select i1 %i.u, ptr %i.v, ptr %.sroa.011.015.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.u, i64 %i.x, i64 %i.r ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i, !llvm.loop !328

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %bb.c
  %.sroa.011.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.011.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, %i.k
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i
  %i.z = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, align 4, !tbaa !192, !noalias !325
  %.not.i.i.i.i.i = icmp sle i32 %i.z, %i.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !325
  %i.ac = icmp sge i32 %i.ab, %i.g
  %i.ad = select i1 %.not.i.i.i.i.i, i1 %i.ac, i1 false
  br i1 %i.ad, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.d, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i
  %.not15.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, %i.i
  br i1 %.not15.i.i.i.i, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i: ; preds = %.critedge.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192, !noalias !325
  %.not.i4.i.i.i.i = icmp sle i32 %i.af, %i.g
  %i.ag = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !325
  %i.ai = icmp sge i32 %i.ah, %i.g
  %i.aj = select i1 %.not.i4.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread

_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit: ; preds = %bb.d, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 5 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !233, !noalias !325
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !329
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit
  %i.an = load ptr, ptr %0, align 8, !tbaa !102, !noalias !329 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !199, !noalias !329 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !199, !noalias !329 ; 3 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ao to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 3                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.ar, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.0.copyload49 = phi ptr [ %i.bs, %bb.g ], [ %i.ak, %.lr.ph ] ; 4 uses
  %.sroa.036.048 = phi i64 [ %i.bt, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %i.ax = load i8, ptr %.sroa.0.0.copyload49, align 1, !tbaa !36, !noalias !329
  %i.ay = sext i8 %i.ax to i32                    ; 5 uses
  br i1 %i.aw, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21: ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21
  %.016.i.i.i.i.i.i22 = phi i64 [ %.1.i.i.i.i.i.i27, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21 ], [ %i.av, %bb.e ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i23 = phi ptr [ %.sroa.011.1.i.i.i.i.i.i26, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21 ], [ %i.ao, %bb.e ] ; 2 uses
  %i.az = lshr i64 %.016.i.i.i.i.i.i22, 1         ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i23, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !192, !noalias !329
  %i.bc = icmp slt i32 %i.bb, %i.ay               ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = xor i64 %i.az, -1
  %i.bf = add nsw i64 %.016.i.i.i.i.i.i22, %i.be
  %.sroa.011.1.i.i.i.i.i.i26 = select i1 %i.bc, ptr %i.bd, ptr %.sroa.011.015.i.i.i.i.i.i23 ; 2 uses
  %.1.i.i.i.i.i.i27 = select i1 %i.bc, i64 %i.bf, i64 %i.az ; 2 uses
  %i.bg = icmp sgt i64 %.1.i.i.i.i.i.i27, 0
  br i1 %i.bg, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9, !llvm.loop !328

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21, %bb.e
  %.sroa.011.0.lcssa.i.i.i.i.i.i10 = phi ptr [ %i.ao, %bb.e ], [ %.sroa.011.1.i.i.i.i.i.i26, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i21 ] ; 6 uses
  %.not.i.i.i.i11 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, %i.aq
  br i1 %.not.i.i.i.i11, label %.critedge.i.i.i.i13, label %bb.f

bb.f:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9
  %i.bh = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, align 4, !tbaa !192, !noalias !329
  %.not.i.i.i.i.i12 = icmp sle i32 %i.bh, %i.ay
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !noalias !329
  %i.bk = icmp sge i32 %i.bj, %i.ay
  %i.bl = select i1 %.not.i.i.i.i.i12, i1 %i.bk, i1 false
  br i1 %i.bl, label %bb.g, label %.critedge.i.i.i.i13

.critedge.i.i.i.i13:                              ; preds = %bb.f, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9
  %.not15.i.i.i.i14 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, %i.ao
  br i1 %.not15.i.i.i.i14, label %.thread, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15: ; preds = %.critedge.i.i.i.i13
  %i.bm = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 -8
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !192, !noalias !329
  %.not.i4.i.i.i.i16 = icmp sle i32 %i.bn, %i.ay
  %i.bo = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !noalias !329
  %i.bq = icmp sge i32 %i.bp, %i.ay
  %i.br = select i1 %.not.i4.i.i.i.i16, i1 %i.bq, i1 false
  br i1 %i.br, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.g, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15, %.critedge.i.i.i.i13, %.lr.ph, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit
  %.sroa.036.0.lcssa = phi i64 [ 1, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit ], [ 1, %.lr.ph ], [ %i.bt, %bb.g ], [ %.sroa.036.048, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15 ], [ %.sroa.036.048, %.critedge.i.i.i.i13 ]
  %.sroa.0.0.copyload.lcssa = phi ptr [ %i.ak, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit ], [ %i.ak, %.lr.ph ], [ %i.bs, %bb.g ], [ %.sroa.0.0.copyload49, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15 ], [ %.sroa.0.0.copyload49, %.critedge.i.i.i.i13 ]
  store ptr %.sroa.0.0.copyload.lcssa, ptr %i.a, align 8, !tbaa !67
  br label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread

bb.g:                                             ; preds = %bb.f, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload49, i64 1 ; 4 uses
  store ptr %i.bs, ptr %i.a, align 8, !tbaa !233, !noalias !329
  %i.bt = add nuw nsw i64 %.sroa.036.048, 1       ; 2 uses
  %i.bu = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !329
  %i.bv = icmp eq ptr %i.bs, %i.bu
  br i1 %i.bv, label %.thread, label %bb.e

_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread: ; preds = %bb.a, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i, %bb.b, %.critedge.i.i.i.i, %.thread
  %.sroa.036.2 = phi i64 [ %.sroa.036.0.lcssa, %.thread ], [ -1, %.critedge.i.i.i.i ], [ -1, %bb.b ], [ -1, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i ], [ -1, %bb.a ]
  ret i64 %.sroa.036.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EENS_7archive3xml13append_stringISF_NS8_IPKcSF_EEEEEESM_SN_ED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EENS_7archive3xml13append_stringISF_NS8_IPKcSF_EEEEEESM_SN_E16do_parse_virtualERKSM_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232
  %i.c = load i64, ptr %i.b, align 8, !tbaa !67   ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !332, !nonnull !231, !align !232
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS_7archive3xml13append_stringISD_NS6_IPKcSD_EEEEE5parseISK_EENS1_13parser_resultISU_T_E4typeERKSX_.exit, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i: ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call i64 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !334 ; 3 uses
  %.not.not.i = icmp sgt i64 %i.j, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS_7archive3xml13append_stringISD_NS6_IPKcSD_EEEEE5parseISK_EENS1_13parser_resultISU_T_E4typeERKSX_.exit

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !335, !nonnull !231, !align !232 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.q, %i.c
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 noundef %i.p, i64 noundef 0, ptr noundef %i.d, i64 noundef %i.r) ; 0 uses
  br label %_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS_7archive3xml13append_stringISD_NS6_IPKcSD_EEEEE5parseISK_EENS1_13parser_resultISU_T_E4typeERKSX_.exit

_ZNK5boost6spirit7classic6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EENS_7archive3xml13append_stringISD_NS6_IPKcSD_EEEEE5parseISK_EENS1_13parser_resultISU_T_E4typeERKSX_.exit: ; preds = %bb.a, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i, %bb.b
  %.sroa.010.0.i.i12.i = phi i64 [ %i.j, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i ], [ %i.j, %bb.b ], [ -1, %bb.a ]
  ret i64 %.sroa.010.0.i.i12.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EENS_7archive3xml13append_stringISF_NS8_IPKcSF_EEEEEESM_SN_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_6actionINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EENS_7archive3xml13append_stringISF_NS8_IPKcSF_EEEEEESM_SN_EE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  ret ptr %i.a
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSK_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSK_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE16do_parse_virtualERKS11_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISL_T_E4typeERKSZ_(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i = icmp sgt i64 %i.b, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISO_T_E4typeERKS12_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !225, !noalias !337, !nonnull !231, !align !232 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !67, !noalias !337 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !67, !noalias !337
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISO_T_E4typeERKS12_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i8, ptr %i.e, align 1, !tbaa !36, !noalias !337
  %i.j = sext i8 %i.i to i32
  %i.k = load i32, ptr %i.h, align 8, !tbaa !340, !noalias !337
  %i.l = icmp eq i32 %i.k, %i.j
  br i1 %i.l, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISO_T_E4typeERKS12_.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  store ptr %i.m, ptr %i.c, align 8, !tbaa !233, !noalias !337
  %i.n = add nuw nsw i64 %i.b, 1
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISO_T_E4typeERKS12_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISO_T_E4typeERKS12_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.09.1.i = phi i64 [ %i.n, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.sroa.09.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSK_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEENS1_5chlitIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSK_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS1_6strlitIPKwEENS1_6actionINS1_11uint_parserIjLi10ELj1ELin1EEENS_7archive3xml11append_charINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcSI_EENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultISL_T_E4typeERKSZ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !342    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !345  ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232 ; 3 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not15.i.i.i.i = icmp eq ptr %i.a, %i.c
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !67  ; 2 uses
  br i1 %.not15.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.c
  %i.j = phi ptr [ %i.q, %bb.c ], [ %.pre, %bb.a ] ; 3 uses
  %.016.i.i.i.i = phi ptr [ %i.p, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.m = load i32, ptr %.016.i.i.i.i, align 4, !tbaa !190
  %i.n = load i8, ptr %i.j, align 1, !tbaa !36
  %i.o = sext i8 %i.n to i32
  %.not13.i.i.i.i = icmp eq i32 %i.m, %i.o
  br i1 %.not13.i.i.i.i, label %bb.c, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1 ; 3 uses
  store ptr %i.q, ptr %i.d, align 8, !tbaa !233
  %.not.i.i.i.i = icmp eq ptr %i.p, %i.c
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !346

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit: ; preds = %bb.c
  %.not.not = icmp sgt i64 %i.g, -1
  br i1 %.not.not, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17: ; preds = %bb.a, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit
  %i.r = phi ptr [ %i.q, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit ], [ %.pre, %bb.a ] ; 2 uses
  %.sroa.0.0.i.i.i.i21 = phi i64 [ %i.h, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit ], [ 0, %bb.a ]
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !67, !noalias !347
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17, %bb.f
  %.010.i.i.i.i = phi i64 [ %i.ae, %bb.f ], [ 0, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17 ] ; 2 uses
  %.0.i.i.i.i = phi i32 [ %i.ad, %bb.f ], [ 0, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17 ] ; 3 uses
  %i.u = phi ptr [ %i.af, %bb.f ], [ %i.r, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread17 ] ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !36, !noalias !350 ; 2 uses
  %i.w = sext i8 %i.v to i32                      ; 2 uses
  %i.x = add i8 %i.v, -48
  %isdigit.i.i.i.i.i.i.i = icmp ult i8 %i.x, 10
  br i1 %isdigit.i.i.i.i.i.i.i, label %bb.d, label %_ZN5boost6spirit7classic4impl11extract_intILi10ELj1ELin1ENS2_19positive_accumulateIjLi10EEEE1fIKNS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEjEEbRT_RT0_Rm.exit.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.y = icmp ugt i32 %.0.i.i.i.i, 429496729
  br i1 %i.y, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = mul nuw i32 %.0.i.i.i.i, 10              ; 2 uses
  %i.aa = sub nsw i32 47, %i.w
  %i.ab = icmp ugt i32 %i.z, %i.aa
  br i1 %i.ab, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = add i32 %i.z, -48
  %i.ad = add i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = add i64 %.010.i.i.i.i, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 3 uses
  store ptr %i.af, ptr %i.d, align 8, !tbaa !233, !noalias !350
end_hunk_0
begin_hunk_1_@_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_:.noexc
  %next.gep6 = getelementptr i8, ptr %i.e, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 4
  %wide.load7 = load <2 x i64>, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load7, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !566

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEEC2ERKS9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.x, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, align 4
  store i64 %i.ad, ptr %.09.i.i.i.i.i.i.i.i.i.i, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEEC2ERKS9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !567

.body:                                            ; preds = %_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  resume { ptr, i32 } %i.ag

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEEC2ERKS9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc3.thread.i.i.i
  %i.ah = phi ptr [ %i.i, %.noexc3.thread.i.i.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc3.thread.i.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !108
  tail call void @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEC2IS4_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !162
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !163
  br label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !568
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #21, !inline_history !569
  br label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE16do_parse_virtualERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload20.i = load ptr, ptr %i.a, align 8, !tbaa !67 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !570
  %i.d = icmp eq ptr %.sroa.0.0.copyload20.i, %i.c
  br i1 %i.d, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !102, !noalias !570 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !199, !noalias !570 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199, !noalias !570 ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.j, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.c
  %.sroa.0.0.copyload22.i = phi ptr [ %i.ak, %bb.c ], [ %.sroa.0.0.copyload20.i, %.lr.ph.i ] ; 4 uses
  %.sroa.010.021.i = phi i64 [ %i.al, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = load i8, ptr %.sroa.0.0.copyload22.i, align 1, !tbaa !36, !noalias !570
  %i.q = sext i8 %i.p to i32                      ; 5 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.split, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.split ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.split ] ; 2 uses
  %i.r = lshr i64 %.016.i.i.i.i.i.i.i, 1          ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i.i, i64 %i.r ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !192, !noalias !570
  %i.u = icmp slt i32 %i.t, %i.q                  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = xor i64 %i.r, -1
  %i.x = add nsw i64 %.016.i.i.i.i.i.i.i, %i.w
  %.sroa.011.1.i.i.i.i.i.i.i = select i1 %i.u, ptr %i.v, ptr %.sroa.011.015.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i = select i1 %i.u, i64 %i.x, i64 %i.r ; 2 uses
  %i.y = icmp sgt i64 %.1.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i, !llvm.loop !328

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %.lr.ph.i.split
  %.sroa.011.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.split ], [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %i.i
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i
  %i.z = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !192, !noalias !570
  %.not.i.i.i.i.i.i = icmp sle i32 %i.z, %i.q
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !noalias !570
  %i.ac = icmp sge i32 %i.ab, %i.q
  %i.ad = select i1 %.not.i.i.i.i.i.i, i1 %i.ac, i1 false
  br i1 %i.ad, label %bb.c, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i
  %.not15.i.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %i.g
  br i1 %.not15.i.i.i.i.i, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i: ; preds = %.critedge.i.i.i.i.i
  %i.ae = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 -8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !192, !noalias !570
  %.not.i4.i.i.i.i.i = icmp sle i32 %i.af, %i.q
  %i.ag = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 -4
  %i.ah = load i32, ptr %i.ag, align 4, !noalias !570
  %i.ai = icmp sge i32 %i.ah, %i.q
  %i.aj = select i1 %.not.i4.i.i.i.i.i, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.c, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i, %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload22.i, i64 1 ; 4 uses
  store ptr %i.ak, ptr %i.a, align 8, !tbaa !233, !noalias !570
  %i.al = add nuw nsw i64 %.sroa.010.021.i, 1     ; 2 uses
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !67, !noalias !570
  %i.an = icmp eq ptr %i.ak, %i.am
  br i1 %i.an, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i.split

_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit: ; preds = %.critedge.i.i.i.i.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i, %bb.c, %bb.a, %.lr.ph.i
  %.sroa.010.0.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.i ], [ %.sroa.010.021.i, %.critedge.i.i.i.i.i ], [ %.sroa.010.021.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i ], [ %i.al, %bb.c ]
  %.sroa.0.0.copyload.lcssa.i = phi ptr [ %.sroa.0.0.copyload20.i, %bb.a ], [ %.sroa.0.0.copyload20.i, %.lr.ph.i ], [ %.sroa.0.0.copyload22.i, %.critedge.i.i.i.i.i ], [ %.sroa.0.0.copyload22.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i ], [ %i.ak, %bb.c ]
  store ptr %.sroa.0.0.copyload.lcssa.i, ptr %i.a, align 8, !tbaa !67
  ret i64 %.sroa.010.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #25
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS4_INS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_6strlitIPKwEEEESP_EESU_EESP_EESU_EESP_EESQ_EESU_EESN_SO_ED0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS4_INS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_6strlitIPKwEEEESP_EESU_EESP_EESU_EESP_EESQ_EESU_EESN_SO_E16do_parse_virtualERKSN_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_E5parseISL_EENS1_13parser_resultISZ_T_E4typeERKS12_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i = icmp sgt i64 %i.b, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !342  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !345  ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not15.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not15.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread15.i, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %.pre.i.i.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %.lr.ph.preheader.i.i.i.i.i
  %i.m = phi ptr [ %i.t, %bb.d ], [ %.pre.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.016.i.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.d, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !67
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.p = load i32, ptr %.016.i.i.i.i.i, align 4, !tbaa !190
  %i.q = load i8, ptr %i.m, align 1, !tbaa !36
  %i.r = sext i8 %i.q to i32
  %.not13.i.i.i.i.i = icmp eq i32 %i.p, %i.r
  br i1 %.not13.i.i.i.i.i, label %bb.d, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 4 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  store ptr %i.t, ptr %i.g, align 8, !tbaa !233
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !346

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i: ; preds = %bb.d
  %.not5.not.not.i = icmp sgt i64 %i.j, -1
  br i1 %.not5.not.not.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread15.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread15.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i, %bb.b
  %.sroa.0.0.i.i.i.i19.i = phi i64 [ %i.k, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i ], [ 0, %bb.b ]
  %i.u = add nuw nsw i64 %.sroa.0.0.i.i.i.i19.i, %i.b
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_EESS_E5parseISL_EENS1_13parser_resultIS10_T_E4typeERKS13_.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.c, %bb.a, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread15.i
  %.sroa.08.1.i = phi i64 [ %i.u, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.thread15.i ], [ -1, %bb.a ], [ -1, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i ], [ -1, %bb.c ], [ -1, %.lr.ph.i.i.i.i.i ]
  ret i64 %.sroa.08.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS4_INS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_6strlitIPKwEEEESP_EESU_EESP_EESU_EESP_EESQ_EESU_EESN_SO_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS4_INS4_INS4_INS4_INS4_INS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_6strlitIPKwEEEESP_EESU_EESP_EESU_EESP_EESQ_EESU_EESN_SO_EE, i64 16), ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_EESO_E5parseISL_EENS1_13parser_resultISZ_T_E4typeERKS12_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call i64 @_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_E5parseISL_EENS1_13parser_resultISV_T_E4typeERKSY_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  %.not.not.i.i.i = icmp sgt i64 %i.a, -1
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !573, !nonnull !231, !align !232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISW_T_E4typeERKSZ_.exit.i.i

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISW_T_E4typeERKSZ_.exit.i.i: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !588 ; 2 uses
  %.not5.not.not.i.i.i = icmp sgt i64 %i.h, -1
  %i.i = add nsw i64 %i.h, %i.a
  %spec.select.i.i.i = select i1 %.not5.not.not.i.i.i, i64 %i.i, i64 -1 ; 2 uses
  %.not.not.i.i = icmp sgt i64 %spec.select.i.i.i, -1
  br i1 %.not.not.i.i, label %bb.c, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISW_T_E4typeERKSZ_.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !342  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !345  ; 3 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232 ; 2 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = lshr exact i64 %i.q, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not15.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_E5parseISL_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, label %.lr.ph.preheader.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.c
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !67
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i.i
  %i.t = phi ptr [ %i.aa, %bb.e ], [ %.pre.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.016.i.i.i.i.i.i = phi ptr [ %i.z, %bb.e ], [ %i.k, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = load i32, ptr %.016.i.i.i.i.i.i, align 4, !tbaa !190
  %i.x = load i8, ptr %i.t, align 1, !tbaa !36
  %i.y = sext i8 %i.x to i32
  %.not13.i.i.i.i.i.i = icmp eq i32 %i.w, %i.y
  br i1 %.not13.i.i.i.i.i.i, label %bb.e, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i.i, i64 4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  store ptr %i.aa, ptr %i.n, align 8, !tbaa !233
  %.not.i.i.i.i.i.i = icmp eq ptr %i.z, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !346

_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i: ; preds = %bb.e
  %.not5.not.not.i.i = icmp sgt i64 %i.q, -1
  br i1 %.not5.not.not.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_E5parseISL_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_E5parseISL_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i: ; preds = %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i, %bb.c
  %.sroa.0.0.i.i.i.i22.i.i = phi i64 [ %i.r, %_ZNK5boost6spirit7classic6strlitIPKwE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit.i.i ], [ 0, %bb.c ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !589, !nonnull !231, !align !232
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit: ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_E5parseISL_EENS1_13parser_resultISX_T_E4typeERKS10_.exit.i
  %i.ae = add nuw nsw i64 %.sroa.0.0.i.i.i.i22.i.i, %spec.select.i.i.i
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !598 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.ai, -1
  %i.aj = add nsw i64 %i.ae, %i.ai
  %spec.select.i = select i1 %.not5.not.not.i, i64 %i.aj, i64 -1 ; 2 uses
  %.not.not = icmp sgt i64 %spec.select.i, -1
  br i1 %.not.not, label %bb.f, label %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit.thread

bb.f:                                             ; preds = %_ZNK5boost6spirit7classic8sequenceINS2_INS2_INS2_INS2_INS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_6strlitIPKwEEEESN_EESS_EESN_EESS_EESN_E5parseISL_EENS1_13parser_resultISY_T_E4typeERKS11_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.al = load ptr, ptr %1, align 8, !tbaa !225, !nonnull !231, !align !232 ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.al, align 8, !tbaa !67
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !251, !nonnull !231, !align !232
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !70 ; 3 uses
  %.not.i.i.i6 = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i6, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i7

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i7: ; preds = %bb.f
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !13
end_hunk_1
