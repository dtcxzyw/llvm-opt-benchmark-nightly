inline.NumInlined: 1773
inline.NumDeleted: 737
begin_hunk_0_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
          to label %bb.de unwind label %bb.dh

bb.de:                                            ; preds = %_ZN4absl12lts_202505127GetFlagISt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EEEET_RKNS0_14flags_internal4FlagISB_EE.exit33.i
  %65 = icmp ne i8 %.0.i, 0
  %66 = and i1 %65, %i.rz
  %67 = zext i1 %66 to i8
  store i1 false, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_124fromenv_needs_processingE, align 1
  %i.sa = load ptr, ptr %44, align 8, !tbaa !7    ; 3 uses
  %i.sb = load ptr, ptr %i.ed, align 8, !tbaa !11 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
  br label %bb.ds

bb.dj:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i, %bb.dc
  %.1.i = phi i8 [ %67, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit45.i ], [ %.0.i, %bb.dc ] ; 2 uses
  %.b22.i = load i1, ptr @_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_127tryfromenv_needs_processingE, align 1
  br i1 %.b22.i, label %bb.dk, label %bb.dq

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
bb.du:                                            ; preds = %bb.dq
  %i.tm = trunc nuw i8 %.2.i to i1
  %i.tn = trunc nuw i8 %.0791384 to i1
  %i.to = select i1 %i.tm, i1 %i.tn, i1 false     ; 10 uses
  %i.tp = zext i1 %i.to to i8                     ; 6 uses
  %.val125 = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.tq = getelementptr inbounds i8, ptr %.val125, i64 -32 ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
_ZN4absl12lts_2025051214flags_internal12_GLOBAL__N_115DeduceFlagValueERKNS0_15CommandLineFlagESt17basic_string_viewIcSt11char_traitsIcEEbbPNS2_8ArgsListE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i, %.noexc227, %.noexc225, %bb.gd, %bb.gc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i, %bb.fx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i, %bb.fp, %bb.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %.sroa.0116.0.sink.i = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ 1, %bb.fo ], [ %.sroa.0.0.sink.i1059, %bb.fp ], [ %.sroa.0.0.sink.i1059, %bb.fx ], [ 0, %bb.gc ], [ %i.abz, %bb.gd ], [ %i.abz, %.noexc225 ], [ %i.abz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.abz, %.noexc227 ]
  %.sroa.9.0.sink.i = phi ptr [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ @.str.35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %.str.50..str.51.i, %bb.fo ], [ %.sroa.6.0.sink.i1060, %bb.fp ], [ %.sroa.6.0.sink.i1060, %bb.fx ], [ %i.abx, %bb.gc ], [ %i.abx, %bb.gd ], [ %i.abx, %.noexc225 ], [ %i.abx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.abx, %.noexc227 ]
  %68 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.i ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit52.i ], [ %i.to, %bb.fo ], [ %i.to, %bb.fp ], [ %i.to, %bb.fx ], [ %i.to, %bb.gc ], [ %i.to, %bb.gd ], [ %i.to, %.noexc225 ], [ %i.to, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80.i ], [ %i.to, %.noexc227 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #28
  store ptr %i.fj, ptr %63, align 8, !tbaa !41
  store i64 0, ptr %i.fk, align 8, !tbaa !25
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2025051214flags_internal24ParseAbseilFlagsOnlyImplEiPPcRSt6vectorIS2_SaIS2_EERS4_INS0_16UnrecognizedFlagESaIS8_EENS1_16UsageFlagsActionE:bb.a
  br label %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.gp, %bb.gn, %bb.gk
  %.281.shrunk = phi i1 [ %68, %bb.gk ], [ false, %bb.gn ], [ %68, %bb.gp ], [ %68, %_ZNSt6vectorIPKN4absl12lts_2025051215CommandLineFlagESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ]
  %.281 = zext i1 %.281.shrunk to i8
  %i.aej = load ptr, ptr %63, align 8, !tbaa !12  ; 2 uses
  %i.aek = icmp eq ptr %i.aej, %i.fj
  br i1 %i.aek, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
end_hunk_4
