inline.NumInlined: 2685
inline.NumDeleted: 1455
begin_hunk_0_@_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_:.noexc
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.ag

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEEC2ERKS9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc3.thread.i.i.i
  %i.ah = phi ptr [ %i.i, %.noexc3.thread.i.i.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc3.thread.i.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !43
  tail call void @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEC2IS4_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !100
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !101
  br label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_8positiveIS4_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !227
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !228
  br label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE16do_parse_virtualERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = tail call i64 @_ZNK5boost6spirit7classic8positiveINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1)
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8positiveINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic8positiveINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !229, !noalias !232, !nonnull !235, !align !236 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !86, !noalias !232 ; 3 uses
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !232
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !8, !noalias !232 ; 5 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !10, !noalias !232 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54, !noalias !232 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54, !noalias !232 ; 3 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i
  %.016.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.q = lshr i64 %.016.i.i.i.i.i.i, 1            ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16, !noalias !232
  %i.t = icmp slt i32 %i.s, %i.f                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i.i.i.i.i.i, %i.v
  %.sroa.011.1.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.011.015.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.q ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i, !llvm.loop !237

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i, %bb.c
  %.sroa.011.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.011.1.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i ] ; 6 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, %i.j
  br i1 %.not.i.i.i.i, label %.critedge.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i
  %i.y = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, align 4, !tbaa !16, !noalias !232
  %.not.i.i.i.i.i = icmp sle i32 %i.y, %i.f
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !232
  %i.ab = icmp sge i32 %i.aa, %i.f
  %i.ac = select i1 %.not.i.i.i.i.i, i1 %i.ab, i1 false
  br i1 %i.ac, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit, label %.critedge.i.i.i.i

.critedge.i.i.i.i:                                ; preds = %bb.d, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i
  %.not15.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, %i.h
  br i1 %.not15.i.i.i.i, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i: ; preds = %.critedge.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16, !noalias !232
  %.not.i4.i.i.i.i = icmp sle i32 %i.ae, %i.f
  %i.af = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !232
  %i.ah = icmp sge i32 %i.ag, %i.f
  %i.ai = select i1 %.not.i4.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit, label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread

_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit: ; preds = %bb.d, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 5 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !238, !noalias !232
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !239
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit
  %i.am = load ptr, ptr %0, align 8, !tbaa !10, !noalias !239 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !239 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54, !noalias !239 ; 3 uses
  %i.aq = icmp eq ptr %i.an, %i.ap
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.an to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = ashr exact i64 %i.at, 3                 ; 2 uses
  %i.av = icmp sgt i64 %i.au, 0
  br i1 %i.aq, label %.thread, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.0.copyload52 = phi ptr [ %i.bq, %bb.g ], [ %i.aj, %.lr.ph ] ; 4 uses
  %.sroa.035.051 = phi i64 [ %i.br, %bb.g ], [ 1, %.lr.ph ] ; 3 uses
  %i.aw = load i32, ptr %.sroa.0.0.copyload52, align 4, !tbaa !8, !noalias !239 ; 5 uses
  br i1 %i.av, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19: ; preds = %bb.e, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19
  %.016.i.i.i.i.i.i20 = phi i64 [ %.1.i.i.i.i.i.i25, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19 ], [ %i.au, %bb.e ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i21 = phi ptr [ %.sroa.011.1.i.i.i.i.i.i24, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19 ], [ %i.an, %bb.e ] ; 2 uses
  %i.ax = lshr i64 %.016.i.i.i.i.i.i20, 1         ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i21, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !16, !noalias !239
  %i.ba = icmp slt i32 %i.az, %i.aw               ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = xor i64 %i.ax, -1
  %i.bd = add nsw i64 %.016.i.i.i.i.i.i20, %i.bc
  %.sroa.011.1.i.i.i.i.i.i24 = select i1 %i.ba, ptr %i.bb, ptr %.sroa.011.015.i.i.i.i.i.i21 ; 2 uses
  %.1.i.i.i.i.i.i25 = select i1 %i.ba, i64 %i.bd, i64 %i.ax ; 2 uses
  %i.be = icmp sgt i64 %.1.i.i.i.i.i.i25, 0
  br i1 %i.be, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9, !llvm.loop !237

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19, %bb.e
  %.sroa.011.0.lcssa.i.i.i.i.i.i10 = phi ptr [ %i.an, %bb.e ], [ %.sroa.011.1.i.i.i.i.i.i24, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i19 ] ; 6 uses
  %.not.i.i.i.i11 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, %i.ap
  br i1 %.not.i.i.i.i11, label %.critedge.i.i.i.i13, label %bb.f

bb.f:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9
  %i.bf = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, align 4, !tbaa !16, !noalias !239
  %.not.i.i.i.i.i12 = icmp sle i32 %i.bf, %i.aw
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 4
  %i.bh = load i32, ptr %i.bg, align 4, !noalias !239
  %i.bi = icmp sge i32 %i.bh, %i.aw
  %i.bj = select i1 %.not.i.i.i.i.i12, i1 %i.bi, i1 false
  br i1 %i.bj, label %bb.g, label %.critedge.i.i.i.i13

.critedge.i.i.i.i13:                              ; preds = %bb.f, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i9
  %.not15.i.i.i.i14 = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, %i.an
  br i1 %.not15.i.i.i.i14, label %.thread, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15: ; preds = %.critedge.i.i.i.i13
  %i.bk = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 -8
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !16, !noalias !239
  %.not.i4.i.i.i.i16 = icmp sle i32 %i.bl, %i.aw
  %i.bm = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i10, i64 -4
  %i.bn = load i32, ptr %i.bm, align 4, !noalias !239
  %i.bo = icmp sge i32 %i.bn, %i.aw
  %i.bp = select i1 %.not.i4.i.i.i.i16, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15, %.critedge.i.i.i.i13, %bb.g, %.lr.ph, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit
  %.sroa.035.0.lcssa = phi i64 [ 1, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit ], [ 1, %.lr.ph ], [ %.sroa.035.051, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15 ], [ %.sroa.035.051, %.critedge.i.i.i.i13 ], [ %i.br, %bb.g ]
  %.sroa.0.0.copyload.lcssa = phi ptr [ %i.aj, %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit ], [ %i.aj, %.lr.ph ], [ %.sroa.0.0.copyload52, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15 ], [ %.sroa.0.0.copyload52, %.critedge.i.i.i.i13 ], [ %i.bq, %bb.g ]
  store ptr %.sroa.0.0.copyload.lcssa, ptr %i.a, align 8, !tbaa !86
  br label %_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread

bb.g:                                             ; preds = %bb.f, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i15
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload52, i64 4 ; 4 uses
  store ptr %i.bq, ptr %i.a, align 8, !tbaa !238, !noalias !239
  %i.br = add nuw nsw i64 %.sroa.035.051, 1       ; 2 uses
  %i.bs = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !239
  %i.bt = icmp eq ptr %i.bq, %i.bs
  br i1 %i.bt, label %.thread, label %bb.e

_ZNK5boost6spirit7classic11char_parserINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS4_T_E4typeERKSP_.exit.thread: ; preds = %bb.a, %bb.b, %.critedge.i.i.i.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i, %.thread
  %.sroa.035.2 = phi i64 [ %.sroa.035.0.lcssa, %.thread ], [ -1, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i ], [ -1, %.critedge.i.i.i.i ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i64 %.sroa.035.2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKSA_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 9 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !46   ; 5 uses
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 3 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc3.thread.i.i.i.i.i.i.i.i.i, label %bb.a

.noexc3.thread.i.i.i.i.i.i.i.i.i:                 ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr null, i64 %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr %i.j, ptr %i.k, align 8, !tbaa !47
  br label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEEC2ERKSC_.exit.i

bb.a:                                             ; preds = %.noexc
  %i.l = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.l, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !48

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.a
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.body

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.m = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #21
          to label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i unwind label %.body ; 7 uses

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i: ; preds = %_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  store ptr %i.m, ptr %i.a, align 8, !tbaa !46
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !43
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !47
  %i.q = add i64 %i.f, -8
  %i.r = sub i64 %i.q, %i.g                       ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.r, 72
  %i.u = ptrtoaddr ptr %i.m to i64
  %i.v = sub i64 %i.g, %i.u
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i
  %n.vec = and i64 %i.t, 4611686018427387900      ; 3 uses
  %i.w = shl i64 %n.vec, 3                        ; 2 uses
  %i.x = getelementptr i8, ptr %i.m, i64 %i.w     ; 2 uses
  %i.y = getelementptr i8, ptr %i.e, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.z ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.e, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 4
  %wide.load7 = load <2 x i64>, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load7, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.t, %n.vec
  br i1 %cmp.n, label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEEC2ERKSC_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i ], [ %i.x, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.e, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i ], [ %i.y, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ad = load i64, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4
  store i64 %i.ad, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %i.d
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEEC2ERKSC_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !243

.body:                                            ; preds = %_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.ag

_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEEC2ERKSC_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc3.thread.i.i.i.i.i.i.i.i.i
  %i.ah = phi ptr [ %i.i, %.noexc3.thread.i.i.i.i.i.i.i.i.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc3.thread.i.i.i.i.i.i.i.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !43
  tail call void @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEC2IS4_EEPT_(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.al = load i8, ptr %i.ak, align 8
  store i8 %i.al, ptr %i.aj, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i8, ptr %i.an, align 8
  store i8 %i.ao, ptr %i.am, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !110
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !111
  br label %_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEED2Ev.exit

_ZN5boost6spirit7classic6binaryINS1_11alternativeINS1_5chsetIwEENS1_5chlitIcEEEES7_NS1_6parserINS3_IS8_S7_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !244
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11alternativeINS4_INS1_5chsetIwEENS1_5chlitIcEEEES8_EENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
end_hunk_0
begin_hunk_1_@_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_:.noexc
  %next.gep = getelementptr i8, ptr %i.m, i64 %i.z ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.e, i64 %i.z ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 4
  %wide.load7 = load <2 x i64>, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load7, ptr %i.ab, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !257

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
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEEC2ERKS9_.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !258

.body:                                            ; preds = %_ZNSt15__new_allocatorIN5boost6spirit7classic7utility4impl5rangeIwEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.ag

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEEC2ERKS9_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc3.thread.i.i.i
  %i.ah = phi ptr [ %i.i, %.noexc3.thread.i.i.i ], [ %i.n, %middle.block ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %.noexc3.thread.i.i.i ], [ %i.x, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i, ptr %i.ah, align 8, !tbaa !43
  tail call void @_ZN5boost10shared_ptrINS_6spirit7classic11basic_chsetIwEEEC2IS4_EEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !120
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !121
  br label %_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit

_ZN5boost6spirit7classic5unaryINS1_5chsetIwEENS1_6parserINS1_11kleene_starIS4_EEEEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEE, i64 16), ptr %0, align 8, !tbaa !21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 7 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i.i, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !259
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !260
  br label %_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit

_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE16do_parse_virtualERKSO_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !229, !nonnull !235, !align !236 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.0.0.copyload25.i = load ptr, ptr %i.a, align 8, !tbaa !86 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !261
  %i.d = icmp eq ptr %.sroa.0.0.copyload25.i, %i.c
  br i1 %i.d, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !10, !noalias !261 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !54, !noalias !261 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54, !noalias !261 ; 3 uses
  %i.j = icmp eq ptr %i.g, %i.i
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.j, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i.split

.lr.ph.i.split:                                   ; preds = %.lr.ph.i, %bb.c
  %.sroa.0.0.copyload27.i = phi ptr [ %i.aj, %bb.c ], [ %.sroa.0.0.copyload25.i, %.lr.ph.i ] ; 4 uses
  %.sroa.011.026.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.p = load i32, ptr %.sroa.0.0.copyload27.i, align 4, !tbaa !8, !noalias !261 ; 5 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.split, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i
  %.016.i.i.i.i.i.i.i = phi i64 [ %.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.split ] ; 2 uses
  %.sroa.011.015.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.split ] ; 2 uses
  %i.q = lshr i64 %.016.i.i.i.i.i.i.i, 1          ; 3 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.015.i.i.i.i.i.i.i, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16, !noalias !261
  %i.t = icmp slt i32 %i.s, %i.p                  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i.i.i.i.i.i.i, %i.v
  %.sroa.011.1.i.i.i.i.i.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.011.015.i.i.i.i.i.i.i ; 2 uses
  %.1.i.i.i.i.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.q ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i.i.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i, !llvm.loop !237

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i, %.lr.ph.i.split
  %.sroa.011.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.split ], [ %.sroa.011.1.i.i.i.i.i.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i.i.i.i.i ] ; 6 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %i.i
  br i1 %.not.i.i.i.i.i, label %.critedge.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i
  %i.y = load i32, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, align 4, !tbaa !16, !noalias !261
  %.not.i.i.i.i.i.i = icmp sle i32 %i.y, %i.p
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !noalias !261
  %i.ab = icmp sge i32 %i.aa, %i.p
  %i.ac = select i1 %.not.i.i.i.i.i.i, i1 %i.ab, i1 false
  br i1 %i.ac, label %bb.c, label %.critedge.i.i.i.i.i

.critedge.i.i.i.i.i:                              ; preds = %bb.b, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN5boost6spirit7classic7utility4impl5rangeIwEESt6vectorIS8_SaIS8_EEEEwNS6_18range_char_compareIwEEET_SH_SH_RKT0_T1_.exit.i.i.i.i.i
  %.not15.i.i.i.i.i = icmp eq ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, %i.g
  br i1 %.not15.i.i.i.i.i, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i

_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i: ; preds = %.critedge.i.i.i.i.i
  %i.ad = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 -8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !16, !noalias !261
  %.not.i4.i.i.i.i.i = icmp sle i32 %i.ae, %i.p
  %i.af = getelementptr inbounds i8, ptr %.sroa.011.0.lcssa.i.i.i.i.i.i.i, i64 -4
  %i.ag = load i32, ptr %i.af, align 4, !noalias !261
  %i.ah = icmp sge i32 %i.ag, %i.p
  %i.ai = select i1 %.not.i4.i.i.i.i.i, i1 %i.ah, i1 false
  br i1 %i.ai, label %bb.c, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit

bb.c:                                             ; preds = %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i, %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload27.i, i64 4 ; 4 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !238, !noalias !261
  %i.ak = add nuw nsw i64 %.sroa.011.026.i, 1     ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !261
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit, label %.lr.ph.i.split

_ZNK5boost6spirit7classic11kleene_starINS1_5chsetIwEEE5parseINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEEEENS1_13parser_resultIS5_T_E4typeERKSP_.exit: ; preds = %.critedge.i.i.i.i.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i, %bb.c, %bb.a, %.lr.ph.i
  %.sroa.011.0.lcssa.i = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph.i ], [ %i.ak, %bb.c ], [ %.sroa.011.026.i, %.critedge.i.i.i.i.i ], [ %.sroa.011.026.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i ]
  %.sroa.0.0.copyload.lcssa.i = phi ptr [ %.sroa.0.0.copyload25.i, %bb.a ], [ %.sroa.0.0.copyload25.i, %.lr.ph.i ], [ %i.aj, %bb.c ], [ %.sroa.0.0.copyload27.i, %.critedge.i.i.i.i.i ], [ %.sroa.0.0.copyload27.i, %_ZNK5boost6spirit7classic5chsetIwE4testEw.exit.i.i ]
  store ptr %.sroa.0.0.copyload.lcssa.i, ptr %i.a, align 8, !tbaa !86
  ret i64 %.sroa.011.0.lcssa.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEE5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_5chsetIwEEEENS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tEEC2ERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #23
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EESO_EESM_SN_ED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EESO_EESM_SN_E16do_parse_virtualERKSM_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !264, !nonnull !235, !align !236
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !267 ; 2 uses
  %.not.not.i = icmp sgt i64 %i.g, -1
  br i1 %.not.not.i, label %bb.b, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268, !nonnull !235, !align !236
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !89   ; 3 uses
  %.not.i.i6.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i6.i, label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit8.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit8.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !267 ; 2 uses
  %.not5.not.not.i = icmp sgt i64 %i.n, -1
  %i.o = add nsw i64 %i.n, %i.g
  %spec.select.i = select i1 %.not5.not.not.i, i64 %i.o, i64 -1
  br label %_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit

_ZNK5boost6spirit7classic8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESL_EESM_E5parseISK_EENS1_13parser_resultISN_T_E4typeERKSQ_.exit: ; preds = %bb.a, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i, %bb.b, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit8.i
  %.sroa.011.1.i = phi i64 [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i ], [ %spec.select.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit8.i ]
  ret i64 %.sroa.011.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EESO_EESM_SN_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESN_EESO_EESM_SN_EE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_5chlitIcEEEESQ_EESN_SO_ED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_5chlitIcEEEESQ_EESN_SO_E16do_parse_virtualERKSN_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !229, !nonnull !235, !align !236 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.b, align 8, !tbaa !86
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !269, !nonnull !235, !align !236
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i64 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !271 ; 2 uses
  %.not.not.i.i.i = icmp sgt i64 %i.h, -1
  br i1 %.not.not.i.i.i, label %bb.b, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i.i: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !229
  br label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i.i, %bb.a
  %i.i = phi ptr [ %.pre.i.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i.i ], [ %i.b, %bb.a ]
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %i.i, align 8, !tbaa !86
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i
  %.sroa.06.0.i.i.i = phi i64 [ 0, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i.i ], [ %i.h, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.i ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !229, !noalias !272, !nonnull !235, !align !236 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !86, !noalias !272 ; 3 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !86, !noalias !272
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEEESO_E5parseISL_EENS1_13parser_resultISS_T_E4typeERKSV_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i32, ptr %i.l, align 4, !tbaa !8, !noalias !272
  %i.q = load i8, ptr %i.o, align 8, !tbaa !249, !noalias !272
  %i.r = sext i8 %i.q to i32
  %i.s = icmp eq i32 %i.p, %i.r
  br i1 %i.s, label %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEE5parseISL_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i, label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEEESO_E5parseISL_EENS1_13parser_resultISS_T_E4typeERKSV_.exit

_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEE5parseISL_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i: ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !238, !noalias !272
  %i.u = add nuw nsw i64 %.sroa.06.0.i.i.i, 1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !269, !nonnull !235, !align !236
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i: ; preds = %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEE5parseISL_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(16) %1), !inline_history !275 ; 2 uses
  %.not.not.i.i = icmp sgt i64 %i.ab, -1
  br i1 %.not.not.i.i, label %bb.d, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !229
  br label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i: ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i, %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEE5parseISL_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i
  %i.ac = phi ptr [ %.pre.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit._ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread_crit_edge.i.i ], [ %i.j, %_ZNK5boost6spirit7classic8sequenceINS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEE5parseISL_EENS1_13parser_resultISR_T_E4typeERKSU_.exit.i ]
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !86
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i
  %.sroa.06.0.i.i = phi i64 [ 0, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.thread.i.i ], [ %i.ab, %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i ]
  %i.ad = add nuw nsw i64 %i.u, %.sroa.06.0.i.i
  br label %_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEEESO_E5parseISL_EENS1_13parser_resultISS_T_E4typeERKSV_.exit

_ZNK5boost6spirit7classic8sequenceINS2_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EEEENS1_5chlitIcEEEESO_E5parseISL_EENS1_13parser_resultISS_T_E4typeERKSV_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.08.1.i = phi i64 [ %i.ad, %bb.d ], [ -1, %bb.b ], [ -1, %bb.c ]
  ret i64 %.sroa.08.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_5chlitIcEEEESQ_EESN_SO_E5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #21 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5boost6spirit7classic4impl15concrete_parserINS1_8sequenceINS4_INS1_8optionalINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EEEENS1_5chlitIcEEEESQ_EESN_SO_EE, i64 16), ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EESP_EEEESN_SO_ED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden i64 @_ZNK5boost6spirit7classic4impl15concrete_parserINS1_11kleene_starINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESO_EESP_EEEESN_SO_E16do_parse_virtualERKSN_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !229, !nonnull !235, !align !236 ; 2 uses
  %.sroa.0.0.copyload19.i = load ptr, ptr %i.c, align 8, !tbaa !86 ; 4 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !264, !nonnull !235, !align !236
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !89   ; 3 uses
  %.not.i.i.i20.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i20.i, label %_ZNK5boost6spirit7classic11kleene_starINS1_8sequenceINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EESN_EEE5parseISL_EENS1_13parser_resultISP_T_E4typeERKSS_.exit, label %_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.preheader

_ZNK5boost6spirit7classic4impl9rule_baseINS1_4ruleINS1_7scannerIN9__gnu_cxx17__normal_iteratorIPwNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEENS1_16scanner_policiesINS1_16iteration_policyENS1_12match_policyENS1_13action_policyEEEEENS1_5nil_tESM_EERKSN_SL_SM_SM_E5parseISL_EENS1_13parser_resultISN_T_E4typeERKST_.exit.i.i.preheader: ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21
end_hunk_1
