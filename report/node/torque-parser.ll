inline.NumInlined: 14827
inline.NumDeleted: 5365
begin_hunk_0_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.dlt = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationIPNS1_9StatementELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.dlt, align 8
  %i.dlu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.jp unwind label %352       ; 5 uses

bb.jp:                                            ; preds = %bb.jo
  %i.dlv = getelementptr inbounds nuw i8, ptr %20, i64 40
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dmh, i64 noundef %i.dml) #28
  br label %_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar29NonemptyListAllowIfAnnotationIPNS1_9StatementEEEPNS1_6SymbolES8_St8optionalIS8_E.exit.i

352:                                              ; preds = %bb.jo
  %353 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dlo, i64 noundef 16) #28
  br label %.thread136.i.i

bb.jt:                                            ; preds = %bb.jp
  %i.dmm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dms, i64 noundef %i.dmw) #28
  br label %.thread136.i.i

.thread136.i.i:                                   ; preds = %352, %bb.jv, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i
  %.pn.pn.pn134.i.i = phi { ptr, i32 } [ %353, %352 ], [ %i.dmm, %bb.jv ], [ %i.dmm, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.body5976

end_hunk_2
begin_hunk_3_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.eko = getelementptr inbounds nuw i8, ptr %17, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationINS1_14TypeswitchCaseELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.eko, align 8
  %i.ekp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.lu unwind label %354       ; 5 uses

bb.lu:                                            ; preds = %bb.lt
  %i.ekq = getelementptr inbounds nuw i8, ptr %17, i64 40
end_hunk_3
begin_hunk_4_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.elc, i64 noundef %i.elg) #28
  br label %._crit_edge.i.i6520

354:                                              ; preds = %bb.lt
  %355 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ekj, i64 noundef 16) #28
  br label %.thread136.i

bb.ly:                                            ; preds = %bb.lu
  %i.elh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.eln, i64 noundef %i.elr) #28
  br label %.thread136.i

.thread136.i:                                     ; preds = %354, %bb.ma, %_ZN2v88internal6torque4RuleD2Ev.exit69.i
  %.pn.pn.pn134.i = phi { ptr, i32 } [ %355, %354 ], [ %i.elh, %bb.ma ], [ %i.elh, %_ZN2v88internal6torque4RuleD2Ev.exit69.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %.body6518

end_hunk_5
begin_hunk_6_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.fmu = getelementptr inbounds nuw i8, ptr %13, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationIPNS1_11DeclarationELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.fmu, align 8
  %i.fmv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.nw unwind label %356       ; 5 uses

bb.nw:                                            ; preds = %bb.nv
  %i.fmw = getelementptr inbounds nuw i8, ptr %13, i64 40
end_hunk_6
begin_hunk_7_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fni, i64 noundef %i.fnm) #28
  br label %_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar29NonemptyListAllowIfAnnotationIPNS1_11DeclarationEEEPNS1_6SymbolES8_St8optionalIS8_E.exit.i

356:                                              ; preds = %bb.nv
  %357 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fmp, i64 noundef 16) #28
  br label %.thread136.i.i7234

bb.oa:                                            ; preds = %bb.nw
  %i.fnn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_7
begin_hunk_8_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fnt, i64 noundef %i.fnx) #28
  br label %.thread136.i.i7234

.thread136.i.i7234:                               ; preds = %356, %bb.oc, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7241
  %.pn.pn.pn134.i.i7235 = phi { ptr, i32 } [ %357, %356 ], [ %i.fnn, %bb.oc ], [ %i.fnn, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.body7251

end_hunk_8
begin_hunk_9_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.fog = getelementptr inbounds nuw i8, ptr %12, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationINS1_21StructFieldExpressionELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.fog, align 8
  %i.foh = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.oe unwind label %358       ; 5 uses

bb.oe:                                            ; preds = %bb.od
  %i.foi = getelementptr inbounds nuw i8, ptr %12, i64 40
end_hunk_9
begin_hunk_10_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fou, i64 noundef %i.foy) #28
  br label %_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar29NonemptyListAllowIfAnnotationINS1_21StructFieldExpressionEEEPNS1_6SymbolES7_St8optionalIS7_E.exit.i

358:                                              ; preds = %bb.od
  %359 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fob, i64 noundef 16) #28
  br label %.thread136.i.i7257

bb.oi:                                            ; preds = %bb.oe
  %i.foz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.fpf, i64 noundef %i.fpj) #28
  br label %.thread136.i.i7257

.thread136.i.i7257:                               ; preds = %358, %bb.ok, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7264
  %.pn.pn.pn134.i.i7258 = phi { ptr, i32 } [ %359, %358 ], [ %i.foz, %bb.ok ], [ %i.foz, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7264 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.body7251

end_hunk_11
begin_hunk_12_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.fqt = getelementptr inbounds nuw i8, ptr %11, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationINS1_19BitFieldDeclarationELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.fqt, align 8
  %i.fqu = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.om unwind label %360       ; 5 uses

bb.om:                                            ; preds = %bb.ol
  %i.fqv = getelementptr inbounds nuw i8, ptr %11, i64 40
end_hunk_12
begin_hunk_13_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.frh, i64 noundef %i.frl) #28
  br label %_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar29NonemptyListAllowIfAnnotationINS1_19BitFieldDeclarationEEEPNS1_6SymbolES7_St8optionalIS7_E.exit.i

360:                                              ; preds = %bb.ol
  %361 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fqo, i64 noundef 16) #28
  br label %.thread136.i.i7332

bb.oq:                                            ; preds = %bb.om
  %i.frm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_13
begin_hunk_14_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.frs, i64 noundef %i.frw) #28
  br label %.thread136.i.i7332

.thread136.i.i7332:                               ; preds = %360, %bb.os, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7339
  %.pn.pn.pn134.i.i7333 = phi { ptr, i32 } [ %361, %360 ], [ %i.frm, %bb.os ], [ %i.frm, %_ZN2v88internal6torque4RuleD2Ev.exit69.i.i7339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.body7349

end_hunk_14
begin_hunk_15_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  %i.gid = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr @_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammar30MakeExtendedVectorIfAnnotationINS1_9EnumEntryELb1EEESt8optionalINS1_11ParseResultEEPNS1_19ParseResultIteratorE, ptr %i.gid, align 8
  %i.gie = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #29
          to label %bb.qu unwind label %362       ; 6 uses

bb.qu:                                            ; preds = %bb.qt
  %i.gif = getelementptr inbounds nuw i8, ptr %2, i64 40
end_hunk_15
begin_hunk_16_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gir, i64 noundef %i.giv) #28
  br label %._crit_edge.i.i7884

362:                                              ; preds = %bb.qt
  %363 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ghy, i64 noundef 16) #28
  br label %.thread136.i7865

bb.qy:                                            ; preds = %bb.qu
  %i.giw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZN2v88internal6torque12_GLOBAL__N_113TorqueGrammarC2Ev:.critedge.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gjc, i64 noundef %i.gjg) #28
  br label %.thread136.i7865

.thread136.i7865:                                 ; preds = %362, %bb.ra, %_ZN2v88internal6torque4RuleD2Ev.exit69.i7872
  %.pn.pn.pn134.i7866 = phi { ptr, i32 } [ %363, %362 ], [ %i.giw, %bb.ra ], [ %i.giw, %_ZN2v88internal6torque4RuleD2Ev.exit69.i7872 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %.body7882

end_hunk_17
