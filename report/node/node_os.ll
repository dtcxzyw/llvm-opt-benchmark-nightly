inline.NumInlined: 1742
inline.NumDeleted: 733
begin_hunk_0_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
bb.i:                                             ; preds = %.lr.ph, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit ] ; 8 uses
  %.sroa.0161.0264 = phi ptr [ %i.au, %.lr.ph ], [ %.sroa.0161.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit ] ; 9 uses
  %.sroa.24.0263 = phi ptr [ %i.au, %.lr.ph ], [ %.sroa.24.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit ] ; 6 uses
  %.sroa.59.0262 = phi ptr [ %i.av, %.lr.ph ], [ %.sroa.59.1, %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit ] ; 3 uses
  %i.ax = load ptr, ptr %i.a, align 8
  %i.ay = getelementptr inbounds nuw [80 x i8], ptr %i.ax, i64 %indvars.iv
end_hunk_0
begin_hunk_1_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a

bb.aq:                                            ; preds = %bb.ap
  store i64 %i.nm, ptr %.sroa.24.8, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit

bb.ar:                                            ; preds = %bb.ap
end_hunk_1
begin_hunk_2_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i136: ; preds = %.lr.ph.i.i.i.i.i.i.i132, %middle.block, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i128
  %.0.lcssa.i.i.i.i.i.i.i137 = phi ptr [ %i.nx, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i128 ], [ %i.og, %middle.block ], [ %i.oo, %.lr.ph.i.i.i.i.i.i.i132 ]
  %.not.i23.i.i.i.i138 = icmp eq ptr %.sroa.0161.9, null
  br i1 %.not.i23.i.i.i.i138, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i139, label %bb.at

end_hunk_2
begin_hunk_3_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a

bb.av:                                            ; preds = %bb.au
  store i64 %i.ao, ptr %.sroa.24.8, align 8
  br label %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit

bb.aw:                                            ; preds = %bb.au
end_hunk_3
begin_hunk_4_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a

_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit22.i.i.i.i149: ; preds = %.lr.ph.i.i.i.i.i.i.i145, %middle.block381, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i141
  %.0.lcssa.i.i.i.i.i.i.i150 = phi ptr [ %i.pa, %_ZNKSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i141 ], [ %i.pj, %middle.block381 ], [ %i.pr, %.lr.ph.i.i.i.i.i.i.i145 ]
  %.not.i23.i.i.i.i151 = icmp eq ptr %.sroa.0161.9, null
  br i1 %.not.i23.i.i.i.i151, label %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i152, label %bb.ay

end_hunk_4
begin_hunk_5_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a

_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit: ; preds = %bb.aq, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i139, %bb.av, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i152
  %.sroa.59.1 = phi ptr [ %.sroa.59.9, %bb.aq ], [ %i.op, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i139 ], [ %i.ps, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i152 ], [ %.sroa.59.9, %bb.av ] ; 2 uses
  %.sroa.24.1.a = phi ptr [ %.sroa.24.8, %bb.aq ], [ %.0.lcssa.i.i.i.i.i.i.i137, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i139 ], [ %.0.lcssa.i.i.i.i.i.i.i150, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i152 ], [ %.sroa.24.8, %bb.av ]
  %.sroa.0161.1 = phi ptr [ %.sroa.0161.9, %bb.aq ], [ %i.nx, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i139 ], [ %i.pa, %_ZNSt6vectorIN2v88internal14LocalUncheckedINS0_5ValueEEESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i152 ], [ %.sroa.0161.9, %bb.av ] ; 2 uses
  %.sroa.24.1 = getelementptr inbounds nuw i8, ptr %.sroa.24.1.a, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pt = load i32, ptr %i.b, align 4
  %i.pu = sext i32 %i.pt to i64
end_hunk_5
begin_hunk_6_@_ZN4node2osL21GetInterfaceAddressesERKN2v820FunctionCallbackInfoINS1_5ValueEEE:bb.a
  br i1 %i.pv, label %bb.i, label %._crit_edge.loopexit, !llvm.loop !313

._crit_edge.loopexit:                             ; preds = %_ZN2v811LocalVectorINS_5ValueEE12emplace_backIJNS_5LocalINS_7IntegerEEEEEEvDpOT_.exit
  %i.pw = ptrtoint ptr %.sroa.24.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.h
end_hunk_6
