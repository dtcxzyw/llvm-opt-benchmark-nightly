inline.NumInlined: 5593
inline.NumDeleted: 1721
begin_hunk_0_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a
  store i64 %i.dp, ptr %i.dq, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.22.1, i64 16
  store i64 %i.do, ptr %i.dr, align 8
  %6 = getelementptr inbounds nuw i8, ptr %.sroa.22.1, i64 24
  br label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit

bb.u:                                             ; preds = %bb.s
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit24.i.i: ; preds = %.lr.ph.i.i.i.i.i98, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i94
  %.0.lcssa.i.i.i.i.i102 = phi ptr [ %i.ec, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i94 ], [ %i.ei, %.lr.ph.i.i.i.i.i98 ]
  %7 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i102, i64 24
  %.not.i25.i.i = icmp eq ptr %.sroa.0265.1, null
  br i1 %.not.i25.i.i, label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.w

end_hunk_1
begin_hunk_2_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a
  store i64 %i.eo, ptr %i.ep, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.22.1, i64 16
  store i64 0, ptr %i.eq, align 8
  %8 = getelementptr inbounds nuw i8, ptr %.sroa.22.1, i64 24
  br label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit

bb.z:                                             ; preds = %bb.x
end_hunk_2
begin_hunk_3_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit23.i.i112: ; preds = %.lr.ph.i.i.i.i.i108, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i104
  %.0.lcssa.i.i.i.i.i113 = phi ptr [ %i.fb, %_ZNKSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12_M_check_lenEmPKc.exit.i.i104 ], [ %i.fg, %.lr.ph.i.i.i.i.i108 ]
  %9 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i113, i64 24
  %.not.i24.i.i114 = icmp eq ptr %.sroa.0265.1, null
  br i1 %.not.i24.i.i114, label %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.ab

end_hunk_3
begin_hunk_4_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a

_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit: ; preds = %bb.t, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.y
  %.sroa.43.3 = phi ptr [ %.sroa.43.1, %bb.y ], [ %i.fh, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.43.1, %bb.t ], [ %i.ej, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %.sroa.22.3.a = phi ptr [ %8, %bb.y ], [ %9, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %6, %bb.t ], [ %7, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %.sroa.0265.3 = phi ptr [ %.sroa.0265.1, %bb.y ], [ %i.fb, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.0265.1, %bb.t ], [ %i.ec, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %.275 = phi i64 [ %.073369, %bb.y ], [ %.073369, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.di, %bb.t ], [ %i.di, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %.270 = phi i64 [ %.068370, %bb.y ], [ %.068370, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %i.df, %bb.t ], [ %i.df, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE17_M_realloc_insertIJhRjmEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ]
  %i.fi = load ptr, ptr %i.bf, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8
end_hunk_4
begin_hunk_5_@_ZN4LIEF5MachO8DyldInfo18update_rebase_infoERNS_15vector_iostreamE:bb.a

bb.ac:                                            ; preds = %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit, %bb.o
  %.sroa.43.4 = phi ptr [ %.sroa.43.1, %bb.o ], [ %.sroa.43.3, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ] ; 5 uses
  %.sroa.22.4 = phi ptr [ %.sroa.22.1, %bb.o ], [ %.sroa.22.3.a, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ] ; 5 uses
  %.sroa.0265.4 = phi ptr [ %.sroa.0265.1, %bb.o ], [ %.sroa.0265.3, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ] ; 6 uses
  %.181 = phi i64 [ %.080367, %bb.o ], [ %i.fl, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ]
  %.376 = phi i64 [ %.073369, %bb.o ], [ %.275, %_ZNSt6vectorIN4LIEF5MachO7details18rebase_instructionESaIS3_EE12emplace_backIJhmEEERS3_DpOT_.exit ] ; 2 uses
end_hunk_5
