inline.NumInlined: 491
inline.NumDeleted: 285
begin_hunk_0_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZN6apache6thrift11concurrency12SynchronizedC2ERKNS1_7MonitorE.exit unwind label %bb.i

_ZN6apache6thrift11concurrency12SynchronizedC2ERKNS1_7MonitorE.exit: ; preds = %.noexc
  %i.aj = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #19
end_hunk_0
begin_hunk_1_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8multimapINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEESt4lessIS8_ESaISt4pairIKS8_SF_EEE11upper_boundERSJ_.exit, label %.lr.ph.i.i.i, !llvm.loop !127

_ZNSt8multimapINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEESt4lessIS8_ESaISt4pairIKS8_SF_EEE11upper_boundERSJ_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph
  %.08.lcssa.i.i.i = phi ptr [ %i.ar, %.lr.ph ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !19
  %i.bo = icmp eq i32 %i.bn, 2
  br i1 %i.bo, label %.lr.ph, label %.critedge, !llvm.loop !128

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.pre102 = load ptr, ptr %i.a, align 8, !tbaa !46 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.02024.i.i, i64 %.in.v.i.i
  %.020.i.i = load ptr, ptr %.in.i.i, align 8, !tbaa !92 ; 2 uses
  %.not.i.i38 = icmp eq ptr %.020.i.i, null
  br i1 %.not.i.i38, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !129

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  br i1 %i.cb, label %._crit_edge.thread.i.i, label %bb.q
end_hunk_3
begin_hunk_4_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %i.dy = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.048.080) #23 ; 2 uses
  %.not = icmp eq ptr %i.dy, %.08.lcssa.i.i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph81, !llvm.loop !130

bb.ag:                                            ; preds = %._crit_edge
  %i.dz = landingpad { ptr, i32 }
end_hunk_4
begin_hunk_5_@_ZN6apache6thrift11concurrency12TimerManager10Dispatcher3runEv:bb.a
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 96
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !19
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %_ZN6apache6thrift11concurrency12SynchronizedD2Ev.exit22, label %bb.an, !llvm.loop !131

bb.aj:                                            ; preds = %bb.j, %bb.y, %bb.ag
  %.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.j ], [ %i.de, %bb.y ], [ %i.dz, %bb.ag ]
end_hunk_5
begin_hunk_6_@_ZNSt8_Rb_treeINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4pairIKS8_St10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEEESt10_Select1stISI_ESt4lessIS8_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_ESQ_:bb.a
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !inline_history !132
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #19, !inline_history !132
  br label %_ZNSt8_Rb_treeINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4pairIKS8_St10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEEESt10_Select1stISI_ESt4lessIS8_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_E.exit

bb.h:                                             ; preds = %bb.f
end_hunk_6
begin_hunk_7_@_ZNSt8_Rb_treeINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4pairIKS8_St10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEEESt10_Select1stISI_ESt4lessIS8_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_ESQ_:bb.a
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.m, align 8, !tbaa !72
  %.not = icmp eq ptr %i.n, %2
  br i1 %.not, label %.loopexit, label %bb.e, !llvm.loop !133

.loopexit:                                        ; preds = %_ZNSt8_Rb_treeINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4pairIKS8_St10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEEESt10_Select1stISI_ESt4lessIS8_ESaISI_EE12_M_erase_auxESt23_Rb_tree_const_iteratorISI_E.exit, %.critedge, %_ZNSt8_Rb_treeINSt6chrono10time_pointINS0_3_V212steady_clockENS0_8durationIlSt5ratioILl1ELl1000000000EEEEEESt4pairIKS8_St10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEEESt10_Select1stISI_ESt4lessIS8_ESaISI_EE5clearEv.exit
  ret void
end_hunk_7
begin_hunk_8_@_ZNSt8_Rb_treeISt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEES6_St9_IdentityIS6_ESt4lessIS6_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E:bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !134
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #19, !inline_history !134
  br label %_ZNSt8_Rb_treeISt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEES6_St9_IdentityIS6_ESt4lessIS6_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit

bb.d:                                             ; preds = %bb.b
end_hunk_8
begin_hunk_9_@_ZNSt8_Rb_treeISt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEES6_St9_IdentityIS6_ESt4lessIS6_ESaIS6_EE8_M_eraseEPSt13_Rb_tree_nodeIS6_E:bb.a
_ZNSt8_Rb_treeISt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEES6_St9_IdentityIS6_ESt4lessIS6_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit: ; preds = %.lr.ph, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #21
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !135

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt10shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskEES6_St9_IdentityIS6_ESt4lessIS6_ESaIS6_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS6_E.exit, %bb.a
  ret void
end_hunk_9
begin_hunk_10_@llvm.experimental.noalias.scope.decl
!124 = !{!125, !65, i64 8}
!125 = !{!"_ZTSSt9type_info", !65, i64 8}
!126 = distinct !{null, null, null}
!127 = distinct !{!127, !94}
!128 = distinct !{!128, !94}
!129 = distinct !{!129, !94}
!130 = distinct !{!130, !94}
!131 = distinct !{!131, !94}
!132 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!133 = distinct !{!133, !94}
!134 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN6apache6thrift11concurrency12TimerManager4TaskELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!135 = distinct !{!135, !94}
end_hunk_10
