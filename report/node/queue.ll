inline.NumInlined: 4059
inline.NumDeleted: 2113
begin_hunk_0_@_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE:bb.a
_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread: ; preds = %bb.f
  %i.ah = load i64, ptr %5, align 8
  store i64 %i.ah, ptr %.sroa.9.094, align 8
  br label %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit

bb.g:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE:bb.a
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !266

_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.as, %_ZNKSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bd, %middle.block ], [ %i.bm, %.lr.ph.i.i.i.i ] ; 2 uses
  %.not.i23.i = icmp eq ptr %.sroa.035.095, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, label %bb.i

end_hunk_1
begin_hunk_2_@_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE:bb.a

_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit, %_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i
  %.sroa.035.477 = phi ptr [ %.sroa.035.095, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread ], [ %i.as, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.as, %_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i ] ; 2 uses
  %.sroa.9.476.a = phi ptr [ %.sroa.9.094, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread ], [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %.0.lcssa.i.i.i.i, %_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i ]
  %.sroa.17.475 = phi ptr [ %.sroa.17.093, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit.thread ], [ %i.bn, %_ZNSt6vectorISt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS3_EESaIS6_EE12emplace_backIJS6_EEERS6_DpOT_.exit ], [ %i.bn, %_ZNKSt14default_deleteIN4node9DataQueue5EntryEEclEPS2_.exit.i ] ; 2 uses
  %.sroa.9.476 = getelementptr inbounds nuw i8, ptr %.sroa.9.476.a, i64 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  %i.br = sub i64 %.06996, %.sroa.speculated
  %.not = icmp ugt i64 %.06996, %i.ab
end_hunk_2
begin_hunk_3_@_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE:bb.a

bb.j:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit
  %.sroa.17.1.ph = phi ptr [ %.sroa.17.475, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.093, %bb.e ] ; 2 uses
  %.sroa.9.1.ph = phi ptr [ %.sroa.9.476, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.9.094, %bb.e ] ; 2 uses
  %.sroa.035.1.ph = phi ptr [ %.sroa.035.477, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.035.095, %bb.e ] ; 2 uses
  %.170.ph = phi i64 [ %i.br, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.06996, %bb.e ]
  %.168.ph = phi i64 [ 0, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %i.aa, %bb.e ]
end_hunk_3
begin_hunk_4_@_ZN4node12_GLOBAL__N_113DataQueueImpl5sliceEmSt8optionalImE:bb.a

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit, %bb.j, %bb.c, %_ZNRSt8optionalImE5valueEv.exit
  %.sroa.17.3 = phi ptr [ null, %_ZNRSt8optionalImE5valueEv.exit ], [ null, %bb.c ], [ %.sroa.17.475, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.17.1.ph, %bb.j ]
  %.sroa.9.3 = phi ptr [ null, %_ZNRSt8optionalImE5valueEv.exit ], [ null, %bb.c ], [ %.sroa.9.476, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.9.1.ph, %bb.j ]
  %.sroa.035.3 = phi ptr [ null, %_ZNRSt8optionalImE5valueEv.exit ], [ null, %bb.c ], [ %.sroa.035.477, %_ZNSt10unique_ptrIN4node9DataQueue5EntryESt14default_deleteIS2_EED2Ev.exit ], [ %.sroa.035.1.ph, %bb.j ]
  %i.bu = call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #32, !noalias !268, !inline_history !35 ; 23 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
end_hunk_4
