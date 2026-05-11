inline.NumInlined: 341
inline.NumDeleted: 204
begin_hunk_0_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoE:bb.a

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit
  %.sroa.053.062 = phi i64 [ %i.a, %.lr.ph ], [ %i.bk, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %6 = phi ptr [ null, %.lr.ph ], [ %7, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.k = lshr i64 %.sroa.053.062, 31
  %i.l = and i64 %i.k, 65535
  %i.m = load ptr, ptr %i.e, align 8
end_hunk_0
begin_hunk_1_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoE:bb.a
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit

bb.h:                                             ; preds = %_ZN2v88internal18SourcePositionInfoC2EPNS0_7IsolateENS0_14SourcePositionENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %6 to i64
  %i.av = sub i64 %i.at, %i.au                    ; 4 uses
end_hunk_1
begin_hunk_2_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoE:bb.a
  br i1 %i.aw, label %bb.i, label %_ZNKSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  store ptr %6, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #12
  unreachable

end_hunk_2
begin_hunk_3_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoE:bb.a
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bh, ptr %i.i, align 8
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %i.bb
  store ptr %i.bi, ptr %i.j, align 8
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.g, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %7 = phi ptr [ %6, %bb.g ], [ %i.bd, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.bj = getelementptr i8, ptr %i.n, i64 -16
  %i.bk = load i64, ptr %i.bj, align 8            ; 4 uses
  %i.bl = trunc i64 %i.bk to i1
end_hunk_3
begin_hunk_4_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateEPNS0_24OptimizedCompilationInfoE:bb.a
  br i1 %.0.i.not, label %._crit_edge, label %bb.b, !llvm.loop !14

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit, %bb.a
  %.lcssa59 = phi ptr [ null, %bb.a ], [ %7, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ]
  %.sroa.053.0.lcssa = phi i64 [ %i.a, %bb.a ], [ %i.bk, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ] ; 3 uses
  store ptr %.lcssa59, ptr %0, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 32
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bo, align 8 ; 4 uses
  %i.bp = icmp eq ptr %.sroa.0.0.copyload.i, null
end_hunk_4
begin_hunk_5_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEE:bb.a

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit
  %.sroa.065.087 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.0.0.copyload.i, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ] ; 4 uses
  %6 = phi ptr [ null, %.lr.ph ], [ %7, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit ] ; 7 uses
  %i.ad = load i64, ptr %.0.i, align 8
  %i.ae = add i64 %i.ad, -1
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEE:bb.a
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit

bb.k:                                             ; preds = %_ZN2v88internal18SourcePositionInfoC2EPNS0_7IsolateENS0_14SourcePositionENS0_12DirectHandleINS0_18SharedFunctionInfoEEE.exit
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = ptrtoint ptr %6 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
end_hunk_6
begin_hunk_7_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEE:bb.a
  br i1 %i.ca, label %bb.l, label %_ZNKSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %6, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.14) #12
  unreachable

end_hunk_7
begin_hunk_8_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEE:bb.a
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.cl, ptr %i.ab, align 8
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cm, ptr %i.ac, align 8
  br label %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE9push_backEOS2_.exit: ; preds = %bb.j, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i
  %7 = phi ptr [ %6, %bb.j ], [ %i.ch, %_ZNSt6vectorIN2v88internal18SourcePositionInfoESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ] ; 2 uses
  %i.cn = trunc i64 %.sroa.0.0.copyload.i to i1
  %i.co = and i64 %.sroa.0.0.copyload.i, 140735340871680
  %i.cp = icmp eq i64 %i.co, 0
end_hunk_8
begin_hunk_9_@_ZNK2v88internal14SourcePosition13InliningStackEPNS0_7IsolateENS0_6TaggedINS0_4CodeEEE:bb.a

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.cq = phi i64 [ %i.m, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.lcssa84 = phi ptr [ null, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %7, %._crit_edge.loopexit ]
  %.sroa.065.0.lcssa = phi i64 [ %i.w, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.sroa.0.0.copyload.i, %._crit_edge.loopexit ] ; 3 uses
  store ptr %.lcssa84, ptr %0, align 8
  %i.cr = add i64 %i.cq, -1
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
end_hunk_9
