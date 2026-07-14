inline.NumInlined: 16320
inline.NumDeleted: 7419
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6duckdb6Binder4BindERNS_18MergeIntoStatementE:bb.a
  store ptr %i.og, ptr %i.le, align 8, !tbaa !2267
  %.pr782 = load ptr, ptr %40, align 8, !tbaa !2268 ; 7 uses
  %.not.i315 = icmp eq ptr %.pr782, null
  br i1 %.not.i315, label %_ZNSt10unique_ptrIN6duckdb20BoundMergeIntoActionESt14default_deleteIS1_EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.oh = getelementptr inbounds nuw i8, ptr %.pr782, i64 64
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !310 ; 2 uses
  %.not.i.i.i.i.i.i663 = icmp eq ptr %i.oi, null
  br i1 %.not.i.i.i.i.i.i663, label %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  call void @_ZdlPv(ptr noundef nonnull %i.oi) #29
  br label %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i

_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i: ; preds = %bb.el, %bb.ek
  %i.oj = getelementptr inbounds nuw i8, ptr %.pr782, i64 40 ; 2 uses
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !333 ; 3 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %.pr782, i64 48
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !334 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ok, %i.om
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.or, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i ], [ %i.ok, %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i ] ; 2 uses
  %i.on = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i.i.i.i.i664 = icmp eq ptr %i.on, null
  br i1 %.not.i.i.i.i.i.i.i664, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.oo = load ptr, ptr %i.on, align 8, !tbaa !119
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  call void %i.oq(ptr noundef nonnull align 8 dereferenceable(88) %i.on) #25, !inline_history !2283
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.or = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i665 = icmp eq ptr %i.or, %i.om
  br i1 %.not.i.i.i.i.i665, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.oj, align 8, !tbaa !333
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i
  %i.os = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ok, %_ZN6duckdb11IndexVectorImNS_13PhysicalIndexEED2Ev.exit.i.i ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.os, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i, label %bb.em

bb.em:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.os) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i: ; preds = %bb.em, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.pr782, i64 16
  %i.ou = load ptr, ptr %i.ot, align 8, !tbaa !1339 ; 2 uses
  %.not.i.i.i1.i.i = icmp eq ptr %i.ou, null
  br i1 %.not.i.i.i1.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit.i.i, label %bb.en

bb.en:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ou) #29
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit.i.i

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit.i.i: ; preds = %bb.en, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit.i.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.pr782, i64 8
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !117 ; 3 uses
  %.not.i.i.i666 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i666, label %_ZNKSt14default_deleteIN6duckdb20BoundMergeIntoActionEEclEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit.i.i
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !119
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 8
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(88) %i.ow) #25, !inline_history !2284
  br label %_ZNKSt14default_deleteIN6duckdb20BoundMergeIntoActionEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb20BoundMergeIntoActionEEclEPS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %.pr782) #29
  br label %_ZNSt10unique_ptrIN6duckdb20BoundMergeIntoActionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20BoundMergeIntoActionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb20BoundMergeIntoActionEEclEPS1_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.0718.0848, i64 8 ; 2 uses
  %.not806 = icmp eq ptr %i.pa, %i.lo
  br i1 %.not806, label %._crit_edge851, label %.lr.ph850

bb.eo:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_15MergeIntoActionESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.pb = landingpad { ptr, i32 }
          cleanup
  br label %.body302

.loopexit807:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit808 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

.loopexit.split-lp:                               ; preds = %bb.ei
  %lpad.loopexit.split-lp809 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ep

bb.ep:                                            ; preds = %.loopexit.split-lp, %.loopexit807
  %lpad.phi810 = phi { ptr, i32 } [ %lpad.loopexit808, %.loopexit807 ], [ %lpad.loopexit.split-lp809, %.loopexit.split-lp ] ; 2 uses
  %i.pc = load ptr, ptr %40, align 8, !tbaa !2268 ; 2 uses
  %.not.i316 = icmp eq ptr %i.pc, null
  br i1 %.not.i316, label %.body302, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call void @_ZNKSt14default_deleteIN6duckdb20BoundMergeIntoActionEEclEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %i.pc)
  br label %.body302

.body302:                                         ; preds = %bb.eq, %bb.ep, %bb.ee, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i301, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i300, %bb.eo
  %.pn195 = phi { ptr, i32 } [ %lpad.phi810, %bb.eq ], [ %i.ms, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i300 ], [ %i.ms, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i301 ], [ %.pn9.i.i297, %bb.ee ], [ %i.pb, %bb.eo ], [ %lpad.phi810, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #25
  br label %.body290

bb.er:                                            ; preds = %._crit_edge851
  %i.pd = getelementptr inbounds nuw i8, ptr %i.lp, i64 192
  %i.pe = invoke { ptr, i8 } @_ZNSt8_Rb_treeIN6duckdb20MergeActionConditionESt4pairIKS1_NS0_6vectorINS0_10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEESt10_Select1stISC_ESt4lessIS1_ESaISC_EE17_M_emplace_uniqueIJRS3_SB_EEES2_ISt17_Rb_tree_iteratorISC_EbEDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.pd, ptr noundef nonnull align 1 dereferenceable(1) %i.lk, ptr noundef nonnull align 8 dereferenceable(24) %39)
          to label %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE7emplaceIJRSD_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_.exit unwind label %bb.eu ; 0 uses

_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE7emplaceIJRSD_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_.exit: ; preds = %bb.er
  %i.pf = load ptr, ptr %39, align 8, !tbaa !2270
  %i.pg = load ptr, ptr %i.ld, align 8, !tbaa !2264
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb10unique_ptrINS2_20BoundMergeIntoActionESt14default_deleteIS4_ELb1EEEEEvT_S9_(ptr noundef %i.pf, ptr noundef %i.pg)
          to label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i unwind label %bb.et

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE7emplaceIJRSD_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_.exit
  %i.ph = load ptr, ptr %39, align 8, !tbaa !2270 ; 2 uses
  %.not.i.i.i319 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i.i319, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ph) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.et:                                            ; preds = %_ZNSt3mapIN6duckdb20MergeActionConditionENS0_6vectorINS0_10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEESt4lessIS1_ESaISt4pairIKS1_S9_EEE7emplaceIJRSD_S9_EEESC_ISt17_Rb_tree_iteratorISE_EbEDpOT_.exit
  %i.pi = landingpad { ptr, i32 }
          catch ptr null
  %i.pj = extractvalue { ptr, i32 } %i.pi, 0
  call void @__clang_call_terminate(ptr %i.pj) #28
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.es
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  %i.pk = call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.sroa.0722.0853) #30 ; 2 uses
  %.not804 = icmp eq ptr %i.pk, %i.fr
  br i1 %.not804, label %._crit_edge856, label %bb.dr

bb.eu:                                            ; preds = %bb.er, %._crit_edge851
  %i.pl = landingpad { ptr, i32 }
          cleanup
  br label %.body290

.body290:                                         ; preds = %.body302, %bb.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i288, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i289, %bb.du, %bb.eu
  %.pn195.pn.pn = phi { ptr, i32 } [ %i.pl, %bb.eu ], [ %.pn195, %.body302 ], [ %i.ly, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i288 ], [ %i.ly, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i289 ], [ %.pn9.i.i285, %bb.du ], [ %i.mg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.mg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn10.i, %bb.ea ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_20BoundMergeIntoActionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #25
  br label %bb.kk

bb.ev:                                            ; preds = %._crit_edge856
  %i.pm = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.ew unwind label %bb.fb     ; 6 uses

bb.ew:                                            ; preds = %bb.ev
  %i.pn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %bb.ex unwind label %bb.fb

bb.ex:                                            ; preds = %bb.ew
  invoke void @_ZN6duckdb15LogicalOperator20ResolveOperatorTypesEv(ptr noundef nonnull align 8 dereferenceable(97) %i.pn)
          to label %bb.ey unwind label %bb.fb

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #25
  %i.po = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %bb.ez unwind label %bb.fc     ; 2 uses

bb.ez:                                            ; preds = %bb.ey
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !119
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pr = load ptr, ptr %i.pq, align 8
  invoke void %i.pr(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.496") align 8 %41, ptr noundef nonnull align 8 dereferenceable(97) %i.po)
          to label %bb.fa unwind label %bb.fc

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !329
  %i.pu = load ptr, ptr %41, align 8, !tbaa !332
  %.not866 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not866, label %._crit_edge860, label %.lr.ph859

.lr.ph859:                                        ; preds = %bb.fa
  %i.pv = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %42, i64 16
  br label %bb.fd

._crit_edge860:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.fa
  %i.px = phi ptr [ null, %bb.fa ], [ %i.rx, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.py = phi ptr [ null, %bb.fa ], [ %i.rw, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 10 uses
  %i.pz = phi ptr [ null, %bb.fa ], [ %i.ry, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.qa = ptrtoint ptr %i.px to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #25
  invoke void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %44, i32 noundef 42)
          to label %bb.fr unwind label %bb.gh

bb.fb:                                            ; preds = %bb.ex, %bb.ew, %bb.ev
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %bb.kk

bb.fc:                                            ; preds = %bb.ez, %bb.ey
  %i.qc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit459

bb.fd:                                            ; preds = %.lr.ph859, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.qd = phi ptr [ null, %.lr.ph859 ], [ %i.rw, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 11 uses
  %i.qe = phi ptr [ null, %.lr.ph859 ], [ %i.rx, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.qf = phi ptr [ null, %.lr.ph859 ], [ %i.ry, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.0156857 = phi i64 [ 0, %.lr.ph859 ], [ %i.rz, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.qg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.is)
          to label %bb.fe unwind label %bb.fq

bb.fe:                                            ; preds = %bb.fd
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 64
  %i.qi = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qh, i64 noundef %.0156857)
          to label %bb.ff unwind label %bb.fq

bb.ff:                                            ; preds = %bb.fe
  %i.qj = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %41, i64 noundef %.0156857)
          to label %bb.fg unwind label %bb.fq     ; 2 uses

bb.fg:                                            ; preds = %bb.ff
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  %i.qk = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc320 unwind label %bb.fq ; 6 uses

.noexc320:                                        ; preds = %bb.fg
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.qi)
          to label %bb.fh unwind label %bb.fi, !noalias !2285

bb.fh:                                            ; preds = %.noexc320
  %.sroa.0.0.copyload.i = load i64, ptr %i.qj, align 8, !tbaa !97, !noalias !2285
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !97, !noalias !2285
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.qk, ptr noundef nonnull %10, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef 0)
          to label %bb.fl unwind label %bb.fj, !noalias !2285

bb.fi:                                            ; preds = %.noexc320
  %i.ql = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fh
  %i.qm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #25, !noalias !2285
  br label %bb.fk

bb.fk:                                            ; preds = %bb.fj, %bb.fi
  %.pn.i = phi { ptr, i32 } [ %i.qm, %bb.fj ], [ %i.ql, %bb.fi ]
  call void @_ZdlPv(ptr noundef nonnull %i.qk) #29, !noalias !2285
  br label %.body321

bb.fl:                                            ; preds = %bb.fh
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #25, !noalias !2285
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  %.not.i.i323 = icmp eq ptr %i.qf, %i.qe
  br i1 %.not.i.i323, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.qn = ptrtoint ptr %i.qk to i64
  store i64 %i.qn, ptr %i.qf, align 8, !tbaa !117
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qf, i64 8 ; 2 uses
  store ptr %i.qo, ptr %i.pv, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.fn:                                            ; preds = %bb.fl
  %i.qp = ptrtoint ptr %i.qe to i64               ; 3 uses
  %i.qq = ptrtoint ptr %i.qd to i64               ; 3 uses
  %i.qr = sub i64 %i.qp, %i.qq                    ; 3 uses
  %i.qs = icmp eq i64 %i.qr, 9223372036854775800
  br i1 %i.qs, label %bb.fo, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fo:                                            ; preds = %bb.fn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc333 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp

.noexc333:                                        ; preds = %bb.fo
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fn
  %i.qt = ashr exact i64 %i.qr, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i324 = call i64 @llvm.umax.i64(i64 %i.qt, i64 1)
  %i.qu = add nsw i64 %.sroa.speculated.i.i.i.i324, %i.qt ; 2 uses
  %i.qv = icmp ult i64 %i.qu, %i.qt
  %i.qw = call i64 @llvm.umin.i64(i64 %i.qu, i64 1152921504606846975)
  %i.qx = select i1 %i.qv, i64 1152921504606846975, i64 %i.qw ; 3 uses
  %.not.i.i.i.i325 = icmp ne i64 %i.qx, 0
  call void @llvm.assume(i1 %.not.i.i.i.i325)
  %i.qy = shl nuw nsw i64 %i.qx, 3
  %i.qz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qy) #26
          to label %.noexc334 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit ; 11 uses

.noexc334:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.qr
  %i.rb = ptrtoint ptr %i.qk to i64
  store i64 %i.rb, ptr %i.ra, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i326 = icmp eq ptr %i.qd, %i.qe
  br i1 %.not10.i.i.i.i.i.i.i326, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i327.preheader

.lr.ph.i.i.i.i.i.i.i327.preheader:                ; preds = %.noexc334
  %i.rc = sub i64 %i.qp, %i.qq
  %i.rd = add i64 %i.rc, -8                       ; 2 uses
  %i.re = lshr i64 %i.rd, 3
  %i.rf = add nuw nsw i64 %i.re, 1                ; 2 uses
  %min.iters.check1140 = icmp ult i64 %i.rd, 56
  br i1 %min.iters.check1140, label %.lr.ph.i.i.i.i.i.i.i327.preheader1226, label %vector.memcheck1131

vector.memcheck1131:                              ; preds = %.lr.ph.i.i.i.i.i.i.i327.preheader
  %scevgep1132 = getelementptr i8, ptr %i.qz, i64 8
  %i.rg = add i64 %i.qp, -8
  %i.rh = sub i64 %i.rg, %i.qq
  %i.ri = and i64 %i.rh, -8                       ; 2 uses
  %scevgep1133 = getelementptr i8, ptr %scevgep1132, i64 %i.ri
  %scevgep1134 = getelementptr i8, ptr %i.qd, i64 8
  %scevgep1135 = getelementptr i8, ptr %scevgep1134, i64 %i.ri
  %bound01136 = icmp ult ptr %i.qz, %scevgep1135
  %bound11137 = icmp ult ptr %i.qd, %scevgep1133
  %found.conflict1138 = and i1 %bound01136, %bound11137
  br i1 %found.conflict1138, label %.lr.ph.i.i.i.i.i.i.i327.preheader1226, label %vector.ph1141

vector.ph1141:                                    ; preds = %vector.memcheck1131
  %n.vec1143 = and i64 %i.rf, 4611686018427387900 ; 3 uses
  %i.rj = shl i64 %n.vec1143, 3                   ; 2 uses
  %i.rk = getelementptr i8, ptr %i.qz, i64 %i.rj  ; 2 uses
  %i.rl = getelementptr i8, ptr %i.qd, i64 %i.rj
  br label %vector.body1144

vector.body1144:                                  ; preds = %vector.body1144, %vector.ph1141
  %index1145 = phi i64 [ 0, %vector.ph1141 ], [ %index.next1150, %vector.body1144 ] ; 2 uses
  %i.rm = shl i64 %index1145, 3                   ; 2 uses
  %next.gep1146 = getelementptr i8, ptr %i.qz, i64 %i.rm ; 2 uses
  %next.gep1147 = getelementptr i8, ptr %i.qd, i64 %i.rm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.rn = getelementptr i8, ptr %next.gep1147, i64 16
  %wide.load1148 = load <2 x i64>, ptr %next.gep1147, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %wide.load1149 = load <2 x i64>, ptr %i.rn, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %i.ro = getelementptr i8, ptr %next.gep1146, i64 16
  store <2 x i64> %wide.load1148, ptr %next.gep1146, align 8, !tbaa !117, !alias.scope !2296, !noalias !2293
  store <2 x i64> %wide.load1149, ptr %i.ro, align 8, !tbaa !117, !alias.scope !2296, !noalias !2293
  %i.rp = getelementptr i8, ptr %next.gep1147, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1147, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  store <2 x ptr> splat (ptr null), ptr %i.rp, align 8, !tbaa !117, !alias.scope !2293, !noalias !2288
  %index.next1150 = add nuw i64 %index1145, 4     ; 2 uses
  %i.rq = icmp eq i64 %index.next1150, %n.vec1143
  br i1 %i.rq, label %middle.block1151, label %vector.body1144, !llvm.loop !2298

middle.block1151:                                 ; preds = %vector.body1144
  %cmp.n1152 = icmp eq i64 %i.rf, %n.vec1143
  br i1 %cmp.n1152, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i327.preheader1226

.lr.ph.i.i.i.i.i.i.i327.preheader1226:            ; preds = %vector.memcheck1131, %.lr.ph.i.i.i.i.i.i.i327.preheader, %middle.block1151
  %.012.i.i.i.i.i.i.i328.ph = phi ptr [ %i.qz, %vector.memcheck1131 ], [ %i.qz, %.lr.ph.i.i.i.i.i.i.i327.preheader ], [ %i.rk, %middle.block1151 ]
  %.0911.i.i.i.i.i.i.i329.ph = phi ptr [ %i.qd, %vector.memcheck1131 ], [ %i.qd, %.lr.ph.i.i.i.i.i.i.i327.preheader ], [ %i.rl, %middle.block1151 ]
  br label %.lr.ph.i.i.i.i.i.i.i327

.lr.ph.i.i.i.i.i.i.i327:                          ; preds = %.lr.ph.i.i.i.i.i.i.i327.preheader1226, %.lr.ph.i.i.i.i.i.i.i327
  %.012.i.i.i.i.i.i.i328 = phi ptr [ %i.rt, %.lr.ph.i.i.i.i.i.i.i327 ], [ %.012.i.i.i.i.i.i.i328.ph, %.lr.ph.i.i.i.i.i.i.i327.preheader1226 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i329 = phi ptr [ %i.rs, %.lr.ph.i.i.i.i.i.i.i327 ], [ %.0911.i.i.i.i.i.i.i329.ph, %.lr.ph.i.i.i.i.i.i.i327.preheader1226 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2288)
  call void @llvm.experimental.noalias.scope.decl(metadata !2291)
  %i.rr = load i64, ptr %.0911.i.i.i.i.i.i.i329, align 8, !tbaa !117, !alias.scope !2291, !noalias !2288
  store i64 %i.rr, ptr %.012.i.i.i.i.i.i.i328, align 8, !tbaa !117, !alias.scope !2288, !noalias !2291
  store ptr null, ptr %.0911.i.i.i.i.i.i.i329, align 8, !tbaa !117, !alias.scope !2291, !noalias !2288
  %i.rs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i329, i64 8 ; 2 uses
  %i.rt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i328, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i330 = icmp eq ptr %i.rs, %i.qe
  br i1 %.not.i.i.i.i.i.i.i330, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i327, !llvm.loop !2299

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i327, %middle.block1151, %.noexc334
  %.0.lcssa.i.i.i.i.i.i.i331 = phi ptr [ %i.qz, %.noexc334 ], [ %i.rk, %middle.block1151 ], [ %i.rt, %.lr.ph.i.i.i.i.i.i.i327 ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i331, i64 8 ; 2 uses
  %.not.i23.i.i.i332 = icmp eq ptr %i.qd, null
  br i1 %.not.i23.i.i.i332, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.fp

bb.fp:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.qd) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.fp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.qz, ptr %42, align 8, !tbaa !333
  store ptr %i.ru, ptr %i.pv, align 8, !tbaa !334
  %i.rv = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %i.qx ; 2 uses
  store ptr %i.rv, ptr %i.pw, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.fm
  %i.rw = phi ptr [ %i.qz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.qd, %bb.fm ] ; 2 uses
  %i.rx = phi ptr [ %i.rv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.qe, %bb.fm ] ; 2 uses
  %i.ry = phi ptr [ %i.ru, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.qo, %bb.fm ] ; 2 uses
  %i.rz = add nuw i64 %.0156857, 1                ; 2 uses
  %i.sa = load ptr, ptr %i.ps, align 8, !tbaa !329
  %i.sb = load ptr, ptr %41, align 8, !tbaa !332
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = ashr exact i64 %i.se, 4
  %i.sg = icmp ult i64 %i.rz, %i.sf
  br i1 %i.sg, label %bb.fd, label %._crit_edge860, !llvm.loop !2300

bb.fq:                                            ; preds = %bb.fg, %bb.ff, %bb.fe, %bb.fd
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body321

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp: ; preds = %bb.fo
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit342.loopexit.split-lp ]
  %i.si = load ptr, ptr %i.qk, align 8, !tbaa !119
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sk = load ptr, ptr %i.sj, align 8
  call void %i.sk(ptr noundef nonnull align 8 dereferenceable(88) %i.qk) #25, !inline_history !121
  br label %.body321

bb.fr:                                            ; preds = %._crit_edge860
  call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.sl = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc343 unwind label %bb.gi ; 3 uses

.noexc343:                                        ; preds = %bb.fr
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef nonnull align 8 dereferenceable(64) %44) #25, !noalias !2301
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.sl, ptr noundef nonnull %9)
          to label %bb.ft unwind label %bb.fs, !noalias !2301

bb.fs:                                            ; preds = %.noexc343
  %i.sm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25, !noalias !2301
  call void @_ZdlPv(ptr noundef nonnull %i.sl) #29, !noalias !2301
  br label %.body344

bb.ft:                                            ; preds = %.noexc343
  store ptr %i.sl, ptr %43, align 8, !tbaa !2304, !alias.scope !2301
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25, !noalias !2301
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %44) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #25
  %i.sn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_23BoundConstantExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %43)
          to label %bb.fu unwind label %bb.gk     ; 2 uses

bb.fu:                                            ; preds = %bb.ft
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 24
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !16
  %i.sr = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.so, i64 noundef 0, i64 noundef %i.sq, ptr noundef nonnull @.str.150, i64 noundef 13)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.gk ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.fu
  %i.ss = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.st = ptrtoint ptr %i.pz to i64
  %i.su = ptrtoint ptr %i.py to i64               ; 3 uses
  %i.sv = sub i64 %i.st, %i.su                    ; 3 uses
  %i.sw = ashr exact i64 %i.sv, 3                 ; 4 uses
  %i.sx = load ptr, ptr %43, align 8, !tbaa !2304 ; 5 uses
  store ptr null, ptr %43, align 8, !tbaa !2304
  %i.sy = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %.not.i.i347 = icmp eq ptr %i.pz, %i.px
  br i1 %.not.i.i347, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.sz = ptrtoint ptr %i.sx to i64
  store i64 %i.sz, ptr %i.pz, align 8, !tbaa !117
  %i.ta = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 2 uses
  store ptr %i.ta, ptr %i.ss, align 8, !tbaa !334
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365

bb.fw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.tb = icmp eq i64 %i.sv, 9223372036854775800
  br i1 %i.tb, label %bb.fx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348

bb.fx:                                            ; preds = %bb.fw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc360 unwind label %bb.gl

.noexc360:                                        ; preds = %bb.fx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348: ; preds = %bb.fw
  %.sroa.speculated.i.i.i.i349 = call i64 @llvm.umax.i64(i64 %i.sw, i64 1)
  %i.tc = add nsw i64 %.sroa.speculated.i.i.i.i349, %i.sw ; 2 uses
  %i.td = icmp ult i64 %i.tc, %i.sw
  %i.te = call i64 @llvm.umin.i64(i64 %i.tc, i64 1152921504606846975)
  %i.tf = select i1 %i.td, i64 1152921504606846975, i64 %i.te ; 3 uses
  %.not.i.i.i.i350 = icmp ne i64 %i.tf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i350)
  %i.tg = shl nuw nsw i64 %i.tf, 3
  %i.th = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tg) #26
          to label %.noexc361 unwind label %bb.gl ; 10 uses

.noexc361:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i348
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 %i.sv
  %i.tj = ptrtoint ptr %i.sx to i64
  store i64 %i.tj, ptr %i.ti, align 8, !tbaa !117
  %.not10.i.i.i.i.i.i.i351 = icmp eq ptr %i.py, %i.px
  br i1 %.not10.i.i.i.i.i.i.i351, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352.preheader

.lr.ph.i.i.i.i.i.i.i352.preheader:                ; preds = %.noexc361
  %61 = ptrtoint ptr %i.px to i64
  %i.tk = sub i64 %61, %i.su
  %62 = add i64 %i.tk, -8                         ; 2 uses
  %i.tl = lshr i64 %62, 3
  %i.tm = add nuw nsw i64 %i.tl, 1                ; 2 uses
  %min.iters.check1162 = icmp ult i64 %62, 152
  br i1 %min.iters.check1162, label %.lr.ph.i.i.i.i.i.i.i352.preheader1224, label %vector.memcheck1155

vector.memcheck1155:                              ; preds = %.lr.ph.i.i.i.i.i.i.i352.preheader
  %i.tn = add i64 %i.qa, -8
  %i.to = sub i64 %i.tn, %i.su
  %i.tp = and i64 %i.to, -8
  %i.tq = add i64 %i.tp, 8                        ; 2 uses
  %scevgep1156 = getelementptr i8, ptr %i.th, i64 %i.tq
  %scevgep1157 = getelementptr i8, ptr %i.py, i64 %i.tq
  %bound01158 = icmp ult ptr %i.th, %scevgep1157
  %bound11159 = icmp ult ptr %i.py, %scevgep1156
  %found.conflict1160 = and i1 %bound01158, %bound11159
  br i1 %found.conflict1160, label %.lr.ph.i.i.i.i.i.i.i352.preheader1224, label %vector.ph1163

vector.ph1163:                                    ; preds = %vector.memcheck1155
  %n.vec1165 = and i64 %i.tm, 4611686018427387900 ; 3 uses
  %i.tr = shl i64 %n.vec1165, 3                   ; 2 uses
  %i.ts = getelementptr i8, ptr %i.th, i64 %i.tr  ; 2 uses
  %i.tt = getelementptr i8, ptr %i.py, i64 %i.tr
  br label %vector.body1166

vector.body1166:                                  ; preds = %vector.body1166, %vector.ph1163
  %index1167 = phi i64 [ 0, %vector.ph1163 ], [ %index.next1172, %vector.body1166 ] ; 2 uses
  %i.tu = shl i64 %index1167, 3                   ; 2 uses
  %next.gep1168 = getelementptr i8, ptr %i.th, i64 %i.tu ; 2 uses
  %next.gep1169 = getelementptr i8, ptr %i.py, i64 %i.tu ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.tv = getelementptr i8, ptr %next.gep1169, i64 16
  %wide.load1170 = load <2 x i64>, ptr %next.gep1169, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %wide.load1171 = load <2 x i64>, ptr %i.tv, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %i.tw = getelementptr i8, ptr %next.gep1168, i64 16
  store <2 x i64> %wide.load1170, ptr %next.gep1168, align 8, !tbaa !117, !alias.scope !2314, !noalias !2311
  store <2 x i64> %wide.load1171, ptr %i.tw, align 8, !tbaa !117, !alias.scope !2314, !noalias !2311
  %i.tx = getelementptr i8, ptr %next.gep1169, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1169, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  store <2 x ptr> splat (ptr null), ptr %i.tx, align 8, !tbaa !117, !alias.scope !2311, !noalias !2306
  %index.next1172 = add nuw i64 %index1167, 4     ; 2 uses
  %i.ty = icmp eq i64 %index.next1172, %n.vec1165
  br i1 %i.ty, label %middle.block1173, label %vector.body1166, !llvm.loop !2316

middle.block1173:                                 ; preds = %vector.body1166
  %cmp.n1174 = icmp eq i64 %i.tm, %n.vec1165
  br i1 %cmp.n1174, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352.preheader1224

.lr.ph.i.i.i.i.i.i.i352.preheader1224:            ; preds = %vector.memcheck1155, %.lr.ph.i.i.i.i.i.i.i352.preheader, %middle.block1173
  %.012.i.i.i.i.i.i.i353.ph = phi ptr [ %i.th, %vector.memcheck1155 ], [ %i.th, %.lr.ph.i.i.i.i.i.i.i352.preheader ], [ %i.ts, %middle.block1173 ]
  %.0911.i.i.i.i.i.i.i354.ph = phi ptr [ %i.py, %vector.memcheck1155 ], [ %i.py, %.lr.ph.i.i.i.i.i.i.i352.preheader ], [ %i.tt, %middle.block1173 ]
  br label %.lr.ph.i.i.i.i.i.i.i352

.lr.ph.i.i.i.i.i.i.i352:                          ; preds = %.lr.ph.i.i.i.i.i.i.i352.preheader1224, %.lr.ph.i.i.i.i.i.i.i352
  %.012.i.i.i.i.i.i.i353 = phi ptr [ %i.ub, %.lr.ph.i.i.i.i.i.i.i352 ], [ %.012.i.i.i.i.i.i.i353.ph, %.lr.ph.i.i.i.i.i.i.i352.preheader1224 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i354 = phi ptr [ %i.ua, %.lr.ph.i.i.i.i.i.i.i352 ], [ %.0911.i.i.i.i.i.i.i354.ph, %.lr.ph.i.i.i.i.i.i.i352.preheader1224 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2306)
  call void @llvm.experimental.noalias.scope.decl(metadata !2309)
  %i.tz = load i64, ptr %.0911.i.i.i.i.i.i.i354, align 8, !tbaa !117, !alias.scope !2309, !noalias !2306
  store i64 %i.tz, ptr %.012.i.i.i.i.i.i.i353, align 8, !tbaa !117, !alias.scope !2306, !noalias !2309
  store ptr null, ptr %.0911.i.i.i.i.i.i.i354, align 8, !tbaa !117, !alias.scope !2309, !noalias !2306
  %i.ua = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i354, i64 8 ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i353, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i355 = icmp eq ptr %i.ua, %i.px
  br i1 %.not.i.i.i.i.i.i.i355, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356, label %.lr.ph.i.i.i.i.i.i.i352, !llvm.loop !2317

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356: ; preds = %.lr.ph.i.i.i.i.i.i.i352, %middle.block1173, %.noexc361
  %.0.lcssa.i.i.i.i.i.i.i357 = phi ptr [ %i.th, %.noexc361 ], [ %i.ts, %middle.block1173 ], [ %i.ub, %.lr.ph.i.i.i.i.i.i.i352 ]
  %i.uc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i357, i64 8 ; 2 uses
  %.not.i23.i.i.i358 = icmp eq ptr %i.py, null
  br i1 %.not.i23.i.i.i358, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359, label %bb.fy

bb.fy:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356
  call void @_ZdlPv(ptr noundef nonnull %i.py) #29
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359: ; preds = %bb.fy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i356
  store ptr %i.th, ptr %42, align 8, !tbaa !333
  store ptr %i.uc, ptr %i.ss, align 8, !tbaa !334
  %i.ud = getelementptr inbounds nuw [8 x i8], ptr %i.th, i64 %i.tf
  store ptr %i.ud, ptr %i.sy, align 8, !tbaa !335
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365: ; preds = %bb.fv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359
  %i.ue = phi ptr [ %i.ta, %bb.fv ], [ %i.uc, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i359 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !2318)
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  %i.uf = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc368 unwind label %bb.gm ; 3 uses

.noexc368:                                        ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit365
  %i.ug = load ptr, ptr %42, align 8, !tbaa !333, !noalias !2318
  store ptr %i.ug, ptr %8, align 8, !tbaa !333, !noalias !2318
  %i.uh = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store ptr %i.ue, ptr %i.uh, align 8, !tbaa !334, !noalias !2318
  %i.ui = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.uj = load ptr, ptr %i.sy, align 8, !tbaa !335, !noalias !2318
  store ptr %i.uj, ptr %i.ui, align 8, !tbaa !335, !noalias !2318
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %42, i8 0, i64 24, i1 false), !noalias !2318
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.uf, i64 noundef %i.pm, ptr noundef nonnull %8)
          to label %bb.fz unwind label %bb.gb, !noalias !2318

bb.fz:                                            ; preds = %.noexc368
  store ptr %i.uf, ptr %45, align 8, !tbaa !356, !alias.scope !2318
  %i.uk = load ptr, ptr %8, align 8, !tbaa !333, !noalias !2318 ; 3 uses
  %i.ul = load ptr, ptr %i.uh, align 8, !tbaa !334, !noalias !2318 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.uk, %i.ul
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.fz, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.uq, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.uk, %bb.fz ] ; 2 uses
  %i.um = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !117, !noalias !2318 ; 3 uses
  %.not.i.i.i.i.i.i366 = icmp eq ptr %i.um, null
  br i1 %.not.i.i.i.i.i.i366, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !119, !noalias !2318
  %i.uo = getelementptr inbounds nuw i8, ptr %i.un, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !noalias !2318
  call void %i.up(ptr noundef nonnull align 8 dereferenceable(88) %i.um) #25, !noalias !2318, !inline_history !2321
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i367 = icmp eq ptr %i.uq, %i.ul
  br i1 %.not.i.i.i.i367, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !359

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %8, align 8, !tbaa !333, !noalias !2318
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.fz
  %i.ur = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.uk, %bb.fz ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.ur, null
  br i1 %.not.i.i1.i.i, label %bb.gc, label %bb.ga

bb.ga:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ur) #29, !noalias !2318
  br label %bb.gc

bb.gb:                                            ; preds = %.noexc368
  %i.us = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %8) #25, !noalias !2318
  call void @_ZdlPv(ptr noundef nonnull %i.uf) #29, !noalias !2318
  br label %.body369

bb.gc:                                            ; preds = %bb.ga, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.ut = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %45)
          to label %bb.gd unwind label %bb.gn     ; 3 uses

bb.gd:                                            ; preds = %bb.gc
  %i.uu = getelementptr inbounds nuw i8, ptr %i.ut, i64 16 ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 24 ; 3 uses
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !360 ; 6 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.ut, i64 32 ; 2 uses
  %i.uy = load ptr, ptr %i.ux, align 8, !tbaa !363
  %.not.i.i371 = icmp eq ptr %i.uw, %i.uy
  br i1 %.not.i.i371, label %bb.ge, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.gd
  %i.uz = load i64, ptr %i.is, align 8, !tbaa !139
  store i64 %i.uz, ptr %i.uw, align 8, !tbaa !139
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  store ptr %i.va, ptr %i.uv, align 8, !tbaa !360
  %i.vb = load ptr, ptr %45, align 8, !tbaa !356
  store ptr null, ptr %45, align 8, !tbaa !356
  store ptr %i.vb, ptr %i.is, align 8, !tbaa !139
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.ge:                                            ; preds = %bb.gd
  %i.vc = load ptr, ptr %i.uu, align 8, !tbaa !364 ; 10 uses
  %i.vd = ptrtoint ptr %i.uw to i64               ; 3 uses
  %i.ve = ptrtoint ptr %i.vc to i64               ; 3 uses
  %i.vf = sub i64 %i.vd, %i.ve                    ; 3 uses
  %i.vg = icmp eq i64 %i.vf, 9223372036854775800
  br i1 %i.vg, label %bb.gf, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.gf:                                            ; preds = %bb.ge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.196) #27
          to label %.noexc381 unwind label %bb.gn

.noexc381:                                        ; preds = %bb.gf
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ge
  %i.vh = ashr exact i64 %i.vf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i372 = call i64 @llvm.umax.i64(i64 %i.vh, i64 1)
  %i.vi = add nsw i64 %.sroa.speculated.i.i.i.i372, %i.vh ; 2 uses
  %i.vj = icmp ult i64 %i.vi, %i.vh
  %i.vk = call i64 @llvm.umin.i64(i64 %i.vi, i64 1152921504606846975)
  %i.vl = select i1 %i.vj, i64 1152921504606846975, i64 %i.vk ; 3 uses
  %.not.i.i.i.i373 = icmp ne i64 %i.vl, 0
  call void @llvm.assume(i1 %.not.i.i.i.i373)
  %i.vm = shl nuw nsw i64 %i.vl, 3
  %i.vn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.vm) #26
          to label %.noexc382 unwind label %bb.gn ; 10 uses

.noexc382:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 %i.vf
  %i.vp = load i64, ptr %i.is, align 8, !tbaa !139
end_hunk_0
begin_hunk_1_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE16_M_allocate_nodeIJRKSC_EEEPSD_DpOT_:bb.a
  %i.j = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_ZN6duckdb5ValueC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r)
          to label %_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE9constructISC_JRKSC_EEEvRSE_PT_DpOT0_.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !25   ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.d
  br i1 %i.u, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.t) #29
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNSt16allocator_traitsISaINSt8__detail10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb5ValueEELb1EEEEE9constructISC_JRKSC_EEEvRSE_PT_DpOT0_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.v, %bb.e ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.s, %bb.d ]
  %i.w = extractvalue { ptr, i32 } %eh.lpad-body, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #25 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.y

bb.h:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          catch ptr null
  %i.aa = extractvalue { ptr, i32 } %i.z, 0
  call void @__clang_call_terminate(ptr %i.aa) #28
  unreachable

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1357 ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !1339   ; 9 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1358
  %i.i = load ptr, ptr %0, align 8, !tbaa !1339   ; 11 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, !prof !154

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 4 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false), !tbaa !97
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS1_S3_EEEEPS1_mT_SB_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !1339
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1358
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1357 ; 3 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 5 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !446

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  %.pre28 = load ptr, ptr %0, align 8, !tbaa !1339
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8, !tbaa !97
  store i64 %i.aa, ptr %i.i, align 8, !tbaa !97
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !446

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !1339
  %.pre25 = load ptr, ptr %i.u, align 8, !tbaa !1357 ; 2 uses
  %.pre26 = load ptr, ptr %0, align 8, !tbaa !1339 ; 2 uses
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !1357
  %.pre29 = ptrtoint ptr %.pre25 to i64
  %.pre30 = ptrtoint ptr %.pre26 to i64
  %.pre32 = sub i64 %.pre29, %.pre30
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !97
  store i64 %i.ad, ptr %i.i, align 8, !tbaa !97
  br label %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit

_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %.pre-phi33 = phi i64 [ %.pre32, %bb.l ], [ %i.x, %bb.m ], [ 8, %bb.n ] ; 3 uses
  %i.ae = phi ptr [ %.pre27, %bb.l ], [ %i.b, %bb.m ], [ %i.b, %bb.n ] ; 3 uses
  %i.af = phi ptr [ %.pre26, %bb.l ], [ %i.i, %bb.m ], [ %i.i, %bb.n ] ; 3 uses
  %i.ag = phi ptr [ %.pre25, %bb.l ], [ %i.v, %bb.m ], [ %i.v, %bb.n ] ; 5 uses
  %i.ah = phi ptr [ %.pre, %bb.l ], [ %i.c, %bb.m ], [ %i.c, %bb.n ] ; 3 uses
  %i.ai = ptrtoaddr ptr %i.ag to i64
  %i.aj = ptrtoaddr ptr %i.ah to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre-phi33 ; 5 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.ae
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit
  %i.al = ptrtoint ptr %i.ae to i64
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = add i64 %.pre-phi33, %i.am
  %2 = sub i64 %i.al, %i.an
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ao = lshr i64 %3, 3
  %i.ap = add nuw nsw i64 %i.ao, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 104
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.aq = add nuw i64 %.pre-phi33, %i.aj
  %i.ar = sub i64 %i.aq, %i.ai
  %diff.check = icmp ugt i64 %i.ar, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ap, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.ag, i64 %i.as
  %i.au = getelementptr i8, ptr %i.ak, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ag, i64 %i.av ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ak, i64 %i.av ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !97
  %wide.load42 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !97
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !97
  store <2 x i64> %wide.load42, ptr %i.ax, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !3435

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ap, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i.preheader44

.lr.ph.i.i.i.i.preheader44:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.ag, %vector.memcheck ], [ %i.ag, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %vector.memcheck ], [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader44, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader44 ] ; 2 uses
  %i.az = load i64, ptr %.0810.i.i.i.i, align 8, !tbaa !97
  store i64 %i.az, ptr %.011.i.i.i.i, align 8, !tbaa !97
  %i.ba = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.ba, %i.ae
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3436

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit
  %i.bc = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN6duckdb13PhysicalIndexESaIS1_EE13_M_deallocateEPS1_m.exit ], [ %i.af, %_ZSt4copyIPN6duckdb13PhysicalIndexES2_ET0_T_S4_S3_.exit ], [ %i.i, %bb.j ], [ %i.i, %bb.i ], [ %.pre28, %bb.h ], [ %i.af, %middle.block ], [ %i.af, %.lr.ph.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.f
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !1357
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN6duckdb13PhysicalIndexESt6vectorIS3_SaIS3_EEEENS1_IPS3_S8_EEET0_T_SD_SC_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1340 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb13PhysicalIndexELb1EEEEE19_M_deallocate_nodesEPS4_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.06.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !102 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #29
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb13PhysicalIndexELb1EEEEE19_M_deallocate_nodesEPS4_.exit, label %.lr.ph.i, !llvm.loop !1341

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeIN6duckdb13PhysicalIndexELb1EEEEE19_M_deallocate_nodesEPS4_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1291
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1293
  %i.g = shl i64 %i.f, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.d, i8 0, i64 %i.g, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN6duckdb23ColumnDependencyManager18AddGeneratedColumnERKNS_16ColumnDefinitionERKNS_10ColumnListE(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE14_M_move_assignEOSK_St17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !154

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !233  ; 2 uses
  %.not5.i = icmp eq ptr %i.c, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i
  %.06.i = phi ptr [ %i.d, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i ], [ %i.c, %bb.b ] ; 4 uses
  %i.d = load ptr, ptr %.06.i, align 8, !tbaa !102 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.06.i, i64 24
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i
  tail call void @_ZdlPv(ptr noundef %i.f) #29
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i) #29
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, label %.lr.ph.i, !llvm.loop !234

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE18_M_deallocate_nodeEPSB_.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !187    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmELb1EEEEE19_M_deallocate_nodesEPSB_.exit, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !295
  %i.n = load ptr, ptr %1, align 8, !tbaa !187    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !3437
  store ptr %i.q, ptr %i.j, align 8, !tbaa !3437
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, %bb.d
  %i.r = phi ptr [ %i.j, %bb.d ], [ %i.n, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit ] ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !187
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !188  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !tbaa !188
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !233  ; 3 uses
  store ptr %i.w, ptr %i.b, align 8, !tbaa !233
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !990
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.y, ptr %i.z, align 8, !tbaa !990
  %.not.i12 = icmp eq ptr %i.w, null
  br i1 %.not.i12, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !757
  %i.ac = urem i64 %i.ab, %i.t
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ac
  store ptr %i.b, ptr %i.ad, align 8, !tbaa !756
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit: ; preds = %bb.e, %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 0, ptr %i.ae, align 8, !tbaa !1001
  store i64 1, ptr %i.s, align 8, !tbaa !188
  store ptr null, ptr %i.o, align 8, !tbaa !3437
  store ptr %i.o, ptr %1, align 8, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_mESaIS8_ENSt8__detail10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE16_M_update_bbeginEv.exit
  ret void
}

declare noundef nonnull align 1 dereferenceable(1) ptr @_ZNK6duckdb16ColumnDefinition15CompressionTypeEv(ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #2

declare i8 @_ZN6duckdb26CompressionTypeIsAvailableENS_15CompressionTypeENS_12optional_ptrINS_14StorageManagerELb1EEE(i8 noundef zeroext, ptr) local_unnamed_addr #2

declare void @_ZN6duckdb23CompressionTypeToStringB5cxx11ENS_15CompressionTypeE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #2

declare void @_ZNK6duckdb16ColumnDefinition7GetTypeEv(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(216)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb11LogicalType8HasAliasEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN6duckdb7Catalog8GetEntryINS_16TypeCatalogEntryEEENS_12optional_ptrIT_Lb1EEERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESF_SF_NS_15OnEntryNotFoundENS_17QueryErrorContextE(ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i8 noundef zeroext %4, i64 %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.duckdb::EntryLookupInfo", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_ptr.609", align 8 ; 8 uses
end_hunk_1
begin_hunk_2_@_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE16_M_allocate_nodeIJRKSD_EEEPSE_DpOT_
define linkonce_odr noundef ptr @_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb19StatementProperties15CatalogIdentityEELb1EEEEE16_M_allocate_nodeIJRKSD_EEEPSE_DpOT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #26 ; 7 uses
  store ptr null, ptr %i.b, align 8, !tbaa !102
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !13
  %i.e = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.g, ptr %i.a, align 8, !tbaa !97
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.a
  %i.i = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.e     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i
  store ptr %i.i, ptr %i.c, align 8, !tbaa !25
  %i.j = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.j, ptr %i.d, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !19
  store i8 %i.l, ptr %i.k, align 1, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i
  %i.m = load i64, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.m, ptr %i.n, align 8, !tbaa !16
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !3509
  ret ptr %i.b

bb.e:                                             ; preds = %.noexc.i.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  %i.u = call ptr @__cxa_begin_catch(ptr %i.t) #25 ; 0 uses
  call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  invoke void @__cxa_rethrow() #27
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.v

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #28
  unreachable

bb.i:                                             ; preds = %bb.e
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !781  ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !778    ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1727
  %i.i = load ptr, ptr %0, align 8, !tbaa !778    ; 7 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, !prof !154

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #26 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i
  %i.p = add i64 %i.d, -8
  %i.q = sub i64 %i.p, %i.e
  %i.r = and i64 %i.q, -8
  %i.s = add i64 %i.r, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %i.c, i64 %i.s, i1 false)
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit: ; preds = %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #29
  br label %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !778
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.f
  store ptr %i.t, ptr %i.g, align 8, !tbaa !1727
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.f:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !781
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.k                       ; 4 uses
  %.not24 = icmp ult i64 %i.x, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp sgt i64 %i.f, 8
  br i1 %i.y, label %bb.h, label %bb.i, !prof !446

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.f, 8
  br i1 %i.z, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = load i64, ptr %i.c, align 8
  store i64 %i.aa, ptr %i.i, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

bb.k:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.x, 8
  br i1 %i.ab, label %bb.l, label %bb.m, !prof !446

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.x, i1 false)
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.m:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.n, label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = load i64, ptr %i.c, align 8
  store i64 %i.ad, ptr %i.i, align 8
  br label %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit

_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.ae = load ptr, ptr %1, align 8, !tbaa !778   ; 3 uses
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !781 ; 4 uses
  %i.ag = load ptr, ptr %0, align 8, !tbaa !778
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = ptrtoint ptr %i.ag to i64               ; 3 uses
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj ; 4 uses
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !781 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit
  %i.am = ptrtoaddr ptr %i.ae to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.ae to i64
  %i.ap = add i64 %i.ai, %i.an
  %i.aq = add i64 %i.ao, %i.ah
  %2 = sub i64 %i.ap, %i.aq
  %3 = add i64 %2, -8                             ; 2 uses
  %i.ar = lshr i64 %3, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.at = sub i64 %i.am, %i.ai
  %diff.check = icmp ugt i64 %i.at, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader35, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.ak, i64 %i.au
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.af, i64 %i.ax ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8
  %wide.load33 = load <2 x i64>, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load33, ptr %i.az, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !3511

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i.preheader35

.lr.ph.i.i.i.i.preheader35:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.011.i.i.i.i.ph = phi ptr [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.0810.i.i.i.i.ph = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader35, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.011.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0810.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader35 ] ; 2 uses
  %i.bb = load i64, ptr %.0810.i.i.i.i, align 8
  store i64 %i.bb, ptr %.011.i.i.i.i, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.al
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3512

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZSt4copyIPSt17reference_wrapperIN6duckdb12CatalogEntryEES4_ET0_T_S6_S5_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseISt17reference_wrapperIN6duckdb12CatalogEntryEESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.be = load ptr, ptr %0, align 8, !tbaa !778
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.f
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !781
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKSt17reference_wrapperIN6duckdb12CatalogEntryEESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE18_M_assign_elementsIRKSO_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::__detail::_ReuseOrAllocNode.2699", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !293  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !1001
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !293  ; 6 uses
  %.not = icmp eq i64 %i.b, %i.g
  %i.h = load ptr, ptr %0, align 8, !tbaa !291    ; 2 uses
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 1
  br i1 %i.i, label %bb.c, label %bb.d, !prof !154

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.j, align 8, !tbaa !297
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.d:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1152921504606846975
  br i1 %i.k, label %bb.e, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !154

bb.e:                                             ; preds = %bb.d
  %i.l = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.l, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.e
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #27
  unreachable

.noexc7.i.i:                                      ; preds = %bb.e
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.d
  %i.m = shl nuw nsw i64 %i.g, 3                  ; 2 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.n, i8 0, i64 %i.m, i1 false)
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.j, %bb.c ], [ %i.n, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ]
  store ptr %.0.i, ptr %0, align 8, !tbaa !291
  store i64 %i.g, ptr %i.a, align 8, !tbaa !293
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = shl i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.h, i8 0, i64 %i.o, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %.0 = phi ptr [ %i.h, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ], [ null, %bb.f ] ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load i64, ptr %i.p, align 8, !tbaa !294
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.q, ptr %i.r, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !295
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !300
  store ptr %i.u, ptr %2, align 8, !tbaa !3513
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.v, align 8, !tbaa !298
  store ptr null, ptr %i.t, align 8, !tbaa !300
  invoke void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_assignIRKSO_NSF_17_ReuseOrAllocNodeISaINSF_10_Hash_nodeISD_Lb1EEEEEEEEvOT_RKT0_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not18 = icmp eq ptr %.0, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.x = icmp eq ptr %.0, %i.w
  %or.cond = select i1 %.not18, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSF_15_Hash_node_baseEm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZdlPv(ptr noundef nonnull %.0) #29
  br label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSF_15_Hash_node_baseEm.exit

bb.j:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  call void @_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.aa = call ptr @__cxa_begin_catch(ptr %i.z) #25 ; 0 uses
  %.not19 = icmp eq ptr %.0, null
  %.pre = load ptr, ptr %0, align 8, !tbaa !291   ; 3 uses
  br i1 %.not19, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.j
  %.pre21 = load i64, ptr %i.a, align 8, !tbaa !293
  br label %bb.o

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSF_15_Hash_node_baseEm.exit: ; preds = %bb.i, %bb.h
  %i.ab = load ptr, ptr %2, align 8, !tbaa !3513  ; 2 uses
  %.not5.i.i = icmp eq ptr %i.ab, null
  br i1 %.not5.i.i, label %_ZNSt8__detail17_ReuseOrAllocNodeISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEED2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSF_15_Hash_node_baseEm.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i
  %.06.i.i = phi ptr [ %i.ac, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb6vectorINSA_5ValueELb1ESaISC_EEEELb1EEEEE18_M_deallocate_nodeEPSG_.exit.i.i ], [ %i.ab, %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6duckdb6vectorINS8_5ValueELb1ESaISA_EEEESaISD_ENSt8__detail10_Select1stENS8_29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEPPNSF_15_Hash_node_baseEm.exit ] ; 6 uses
  %i.ac = load ptr, ptr %.06.i.i, align 8, !tbaa !102 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 40 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !301 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 48
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !304 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.af, %i.ah
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.05.i.i.i.i.i.i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ai, %i.ah
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !305

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !tbaa !301
  br label %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.aj = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aj) #29
  br label %_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i.i.i.i

_ZNSt6vectorIN6duckdb5ValueESaIS1_EED2Ev.exit.i.i.i.i: ; preds = %bb.k, %_ZSt8_DestroyIPN6duckdb5ValueES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !25 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 24
end_hunk_2
begin_hunk_3_@_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_assignIRKSD_NS3_10_AllocNodeISaINS3_10_Hash_nodeIS1_Lb1EEEEEEEEvOT_RKT0_:bb.a
bb.k:                                             ; preds = %bb.g
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i
  %.028 = load ptr, ptr %.02837, align 8, !tbaa !102 ; 2 uses
  %.not30 = icmp eq ptr %.028, null
  br i1 %.not30, label %.loopexit, label %.lr.ph, !llvm.loop !3704

bb.n:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.aj, %bb.l ], [ %i.ai, %bb.k ]
  %.027 = extractvalue { ptr, i32 } %.pn, 0
  %i.ak = tail call ptr @__cxa_begin_catch(ptr %.027) #25 ; 0 uses
  tail call void @_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) #25
  br i1 %.not.not, label %bb.o, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.o:                                             ; preds = %bb.n
  %i.al = load ptr, ptr %0, align 8, !tbaa !1291  ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_ZdlPv(ptr noundef %i.al) #29
  br label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit

bb.q:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.r unwind label %bb.s

_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %bb.p, %bb.o, %bb.n
  invoke void @__cxa_rethrow() #27
          to label %bb.t unwind label %bb.q

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %i.ao

.loopexit:                                        ; preds = %bb.m, %bb.h, %bb.f
  ret void

bb.s:                                             ; preds = %bb.q
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  tail call void @__clang_call_terminate(ptr %i.aq) #28
  unreachable

bb.t:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE21_M_deallocate_bucketsEv.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ForeignKeyInfoC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = load i8, ptr %1, align 8, !tbaa !1378
  store i8 %i.c, ptr %0, align 8, !tbaa !1378
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !13
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i64 %i.i, ptr %i.b, align 8, !tbaa !97
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !25
  %i.l = load i64, ptr %i.b, align 8, !tbaa !97
  store i64 %i.l, ptr %i.f, align 8, !tbaa !19
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !19
  store i8 %i.n, ptr %i.m, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.o = load i64, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !16
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !25
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !13
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.x, ptr %i.a, align 8, !tbaa !97
  %i.y = icmp ugt i64 %i.x, 15
  br i1 %i.y, label %.noexc.i12, label %._crit_edge.i.i11

.noexc.i12:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.z = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.i     ; 2 uses

.noexc:                                           ; preds = %.noexc.i12
  store ptr %i.z, ptr %i.s, align 8, !tbaa !25
  %i.aa = load i64, ptr %i.a, align 8, !tbaa !97
  store i64 %i.aa, ptr %i.u, align 8, !tbaa !19
  br label %._crit_edge.i.i11

._crit_edge.i.i11:                                ; preds = %.noexc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ab = phi ptr [ %i.z, %.noexc ], [ %i.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit ] ; 2 uses
  switch i64 %i.x, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i11
  %i.ac = load i8, ptr %i.v, align 1, !tbaa !19
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i11
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ab, ptr align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i11
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !97  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !16
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  store i8 0, ptr %i.ag, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !1357 ; 2 uses
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !1339 ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.al
  br i1 %.not.i.i.i.i.i, label %.noexc15, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ugt i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, !prof !154

.noexc.i.i.i:                                     ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc14 unwind label %bb.j

.noexc14:                                         ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.g
  %i.aq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #26
          to label %.noexc15 unwind label %bb.j

.noexc15:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, %bb.f
  %i.ar = phi ptr [ null, %bb.f ], [ %i.aq, %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i ] ; 8 uses
  store ptr %i.ar, ptr %i.ah, align 8, !tbaa !1339
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !1357
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ao
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.at, ptr %i.au, align 8, !tbaa !1358
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !1294 ; 6 uses
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !1294 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not7.i.i.i.i.i.i, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc15
  %i.ax = ptrtoaddr ptr %i.av to i64
  %i.ay = ptrtoaddr ptr %i.ar to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.av to i64
  %2 = sub i64 %i.az, %i.ba
  %3 = add i64 %2, -8                             ; 2 uses
  %i.bb = lshr i64 %3, 3
  %i.bc = add nuw nsw i64 %i.bb, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %3, 72
  %i.bd = sub i64 %i.ax, %i.ay
  %diff.check = icmp ugt i64 %i.bd, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader67, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bc, 4611686018427387900     ; 3 uses
  %i.be = shl i64 %n.vec, 3                       ; 2 uses
  %i.bf = getelementptr i8, ptr %i.ar, i64 %i.be  ; 2 uses
  %i.bg = getelementptr i8, ptr %i.av, i64 %i.be
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bh = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bh ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.av, i64 %i.bh ; 2 uses
  %i.bi = getelementptr i8, ptr %next.gep44, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep44, align 8, !tbaa !97
  %wide.load45 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !97
  %i.bj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !97
  store <2 x i64> %wide.load45, ptr %i.bj, align 8, !tbaa !97
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bk = icmp eq i64 %index.next, %n.vec
  br i1 %i.bk, label %middle.block, label %vector.body, !llvm.loop !3705

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bc, %n.vec
  br i1 %cmp.n, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i.preheader67

.lr.ph.i.i.i.i.i.i.preheader67:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bf, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader67, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader67 ] ; 2 uses
  %i.bl = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8, !tbaa !97
  store i64 %i.bl, ptr %.09.i.i.i.i.i.i, align 8, !tbaa !97
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bm, %i.aw
  br i1 %.not.i.i.i.i.i.i, label %.loopexit31, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3706

.loopexit31:                                      ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc15
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %.noexc15 ], [ %i.bf, %middle.block ], [ %i.bn, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.as, align 8, !tbaa !1357
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !1357 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8, !tbaa !1339 ; 2 uses
  %i.bt = ptrtoint ptr %i.br to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i16 = icmp eq ptr %i.br, %i.bs
  br i1 %.not.i.i.i.i.i16, label %.noexc26, label %bb.h

bb.h:                                             ; preds = %.loopexit31
  %i.bw = icmp ugt i64 %i.bv, 9223372036854775800
  br i1 %i.bw, label %.noexc.i.i.i24, label %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, !prof !154

.noexc.i.i.i24:                                   ; preds = %bb.h
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc25 unwind label %bb.k

.noexc25:                                         ; preds = %.noexc.i.i.i24
  unreachable

_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17: ; preds = %bb.h
  %i.bx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
          to label %.noexc26 unwind label %bb.k

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, %.loopexit31
  %i.by = phi ptr [ null, %.loopexit31 ], [ %i.bx, %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17 ] ; 8 uses
  store ptr %i.by, ptr %i.bo, align 8, !tbaa !1339
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !1357
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !1358
  %i.cc = load ptr, ptr %i.bp, align 8, !tbaa !1294 ; 6 uses
  %i.cd = load ptr, ptr %i.bq, align 8, !tbaa !1294 ; 3 uses
  %.not7.i.i.i.i.i.i18 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not7.i.i.i.i.i.i18, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19.preheader

.lr.ph.i.i.i.i.i.i19.preheader:                   ; preds = %.noexc26
  %i.ce = ptrtoaddr ptr %i.cc to i64
  %i.cf = ptrtoaddr ptr %i.by to i64
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cc to i64
  %4 = sub i64 %i.cg, %i.ch
  %5 = add i64 %4, -8                             ; 2 uses
  %i.ci = lshr i64 %5, 3
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %min.iters.check50 = icmp ult i64 %5, 72
  %i.ck = sub i64 %i.ce, %i.cf
  %diff.check48 = icmp ugt i64 %i.ck, -32
  %or.cond65 = or i1 %min.iters.check50, %diff.check48
  br i1 %or.cond65, label %.lr.ph.i.i.i.i.i.i19.preheader66, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.i.i.i.i.i.i19.preheader
  %n.vec53 = and i64 %i.cj, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec53, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %i.by, i64 %i.cl  ; 2 uses
  %i.cn = getelementptr i8, ptr %i.cc, i64 %i.cl
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next60, %vector.body54 ] ; 2 uses
  %i.co = shl i64 %index55, 3                     ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.by, i64 %i.co ; 2 uses
  %next.gep57 = getelementptr i8, ptr %i.cc, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep57, i64 16
  %wide.load58 = load <2 x i64>, ptr %next.gep57, align 8, !tbaa !97
  %wide.load59 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !97
  %i.cq = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load58, ptr %next.gep56, align 8, !tbaa !97
  store <2 x i64> %wide.load59, ptr %i.cq, align 8, !tbaa !97
  %index.next60 = add nuw i64 %index55, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next60, %n.vec53
  br i1 %i.cr, label %middle.block61, label %vector.body54, !llvm.loop !3707

middle.block61:                                   ; preds = %vector.body54
  %cmp.n62 = icmp eq i64 %i.cj, %n.vec53
  br i1 %cmp.n62, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19.preheader66

.lr.ph.i.i.i.i.i.i19.preheader66:                 ; preds = %.lr.ph.i.i.i.i.i.i19.preheader, %middle.block61
  %.09.i.i.i.i.i.i20.ph = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i.i19.preheader ], [ %i.cm, %middle.block61 ]
  %.sroa.04.08.i.i.i.i.i.i21.ph = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i19.preheader ], [ %i.cn, %middle.block61 ]
  br label %.lr.ph.i.i.i.i.i.i19

.lr.ph.i.i.i.i.i.i19:                             ; preds = %.lr.ph.i.i.i.i.i.i19.preheader66, %.lr.ph.i.i.i.i.i.i19
  %.09.i.i.i.i.i.i20 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i19 ], [ %.09.i.i.i.i.i.i20.ph, %.lr.ph.i.i.i.i.i.i19.preheader66 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i21 = phi ptr [ %i.ct, %.lr.ph.i.i.i.i.i.i19 ], [ %.sroa.04.08.i.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i.i19.preheader66 ] ; 2 uses
  %i.cs = load i64, ptr %.sroa.04.08.i.i.i.i.i.i21, align 8, !tbaa !97
  store i64 %i.cs, ptr %.09.i.i.i.i.i.i20, align 8, !tbaa !97
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i21, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i20, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i22 = icmp eq ptr %i.ct, %i.cd
  br i1 %.not.i.i.i.i.i.i22, label %.loopexit, label %.lr.ph.i.i.i.i.i.i19, !llvm.loop !3708

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i19, %middle.block61, %.noexc26
  %.0.lcssa.i.i.i.i.i.i23 = phi ptr [ %i.by, %.noexc26 ], [ %i.cm, %middle.block61 ], [ %i.cu, %.lr.ph.i.i.i.i.i.i19 ]
  store ptr %.0.lcssa.i.i.i.i.i.i23, ptr %i.bz, align 8, !tbaa !1357
  ret void

bb.i:                                             ; preds = %.noexc.i12
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt15__new_allocatorIN6duckdb13PhysicalIndexEE8allocateEmPKv.exit.i.i.i.i.i17, %.noexc.i.i.i24
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load ptr, ptr %i.ah, align 8, !tbaa !1339 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdlPv(ptr noundef nonnull %i.cy) #29
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.j ], [ %i.cx, %bb.k ], [ %i.cx, %bb.l ] ; 2 uses
  %i.cz = load ptr, ptr %i.s, align 8, !tbaa !25  ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.u
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cz) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %i.cv, %bb.i ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn, %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit ]
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.dc = icmp eq ptr %i.db, %i.f
  br i1 %i.dc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.db) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb14ForeignKeyInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1339 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #29
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1339 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #29
  br label %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit2

_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit2: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef %i.f) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb13PhysicalIndexESaIS1_EED2Ev.exit2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb25BoundForeignKeyConstraintD2Ev(ptr noundef nonnull align 8 dereferenceable(248) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb25BoundForeignKeyConstraintE, i64 16), ptr %0, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1340 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !102 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #29
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1341

_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !1291
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.g = load i64, ptr %i.f, align 8, !tbaa !1293
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !1291 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #29
  br label %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit

_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit: ; preds = %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1340 ; 2 uses
  %.not5.i.i.i.i1 = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i1, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2

.lr.ph.i.i.i.i2:                                  ; preds = %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit, %.lr.ph.i.i.i.i2
  %.06.i.i.i.i3 = phi ptr [ %i.o, %.lr.ph.i.i.i.i2 ], [ %i.n, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit ] ; 2 uses
  %i.o = load ptr, ptr %.06.i.i.i.i3, align 8, !tbaa !102 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i3) #29
  %.not.i.i.i.i4 = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i4, label %_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5, label %.lr.ph.i.i.i.i2, !llvm.loop !1341

_ZNSt10_HashtableIN6duckdb13PhysicalIndexES1_SaIS1_ENSt8__detail9_IdentityESt8equal_toIS1_ENS0_25PhysicalIndexHashFunctionENS3_18_Mod_range_hashingENS3_20_Default_ranged_hashENS3_20_Prime_rehash_policyENS3_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i5: ; preds = %.lr.ph.i.i.i.i2, %_ZNSt13unordered_setIN6duckdb13PhysicalIndexENS0_25PhysicalIndexHashFunctionESt8equal_toIS1_ESaIS1_EED2Ev.exit
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !1291
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1293
  %i.s = shl i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %i.s, i1 false)
end_hunk_3
