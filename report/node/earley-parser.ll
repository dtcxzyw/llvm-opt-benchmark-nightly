inline.NumInlined: 1388
inline.NumDeleted: 771
begin_hunk_0_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %i.kz = phi ptr [ %i.kx, %.lr.ph ], [ %i.my, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ]
  %.066832 = phi i64 [ 0, %.lr.ph ], [ %i.mw, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0389.3831 = phi ptr [ %.sroa.0389.1851, %.lr.ph ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 16 uses
  %.sroa.17.4830 = phi ptr [ %i.bt, %.lr.ph ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 24 uses
  %.sroa.42.3829 = phi ptr [ %.sroa.42.1849, %.lr.ph ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.066832
  %i.lb = load ptr, ptr %i.la, align 8            ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  store ptr %i.bv, ptr %.sroa.9270.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 40
  store ptr %i.lm, ptr %.sroa.10.0..sroa_idx, align 8
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

bb.ba:                                            ; preds = %bb.ay
end_hunk_1
begin_hunk_2_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i151: ; preds = %.lr.ph.i.i.i.i.i.i147, %.noexc156
  %.0.lcssa.i.i.i.i.i.i152 = phi ptr [ %i.mb, %.noexc156 ], [ %i.me, %.lr.ph.i.i.i.i.i.i147 ]
  %.not.i23.i.i.i153 = icmp eq ptr %.sroa.0389.3831, null
  br i1 %.not.i23.i.i.i153, label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, label %bb.bc

end_hunk_2
begin_hunk_3_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %.sroa.42.13 = phi ptr [ %i.mv, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.42.3829, %bb.bf ]
  %.0.lcssa.i.i.i.i.i.i168.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i168, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.17.4830, %bb.bf ]
  %.sroa.0389.13 = phi ptr [ %i.mr, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.0389.3831, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

end_hunk_3
begin_hunk_4_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157: ; preds = %bb.az, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173
  %.sroa.42.4 = phi ptr [ %.sroa.42.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mf, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.42.3829, %bb.az ] ; 2 uses
  %.sroa.17.5.a = phi ptr [ %.0.lcssa.i.i.i.i.i.i168.pn, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %.0.lcssa.i.i.i.i.i.i152, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.17.4830, %bb.az ]
  %.sroa.0389.4 = phi ptr [ %.sroa.0389.13, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173 ], [ %i.mb, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154 ], [ %.sroa.0389.3831, %bb.az ] ; 2 uses
  %.sroa.17.5 = getelementptr inbounds nuw i8, ptr %.sroa.17.5.a, i64 48 ; 2 uses
  %i.mw = add nuw i64 %.066832, 1                 ; 2 uses
  %i.mx = load ptr, ptr %i.ib, align 8
  %i.my = load ptr, ptr %i.gv, align 8            ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %.sroa.10383.3 = phi ptr [ %.sroa.10383.1847, %bb.m ], [ %.sroa.10383.1847, %.loopexit418 ], [ %.sroa.10383.2, %bb.aw ], [ %.sroa.10383.1847, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.10383.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0379.4 = phi ptr [ %.sroa.0379.1848, %bb.m ], [ %.sroa.0379.1848, %.loopexit418 ], [ %.sroa.0379.2, %bb.aw ], [ %.sroa.0379.1848, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0379.2, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.42.6 = phi ptr [ %.sroa.42.1849, %bb.m ], [ %.sroa.42.1849, %.loopexit418 ], [ %.sroa.42.1849, %bb.aw ], [ %.sroa.42.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.17.6 = phi ptr [ %i.bt, %bb.m ], [ %i.bt, %.loopexit418 ], [ %i.bt, %bb.aw ], [ %.sroa.17.8, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %.sroa.0389.6 = phi ptr [ %.sroa.0389.1851, %bb.m ], [ %.sroa.0389.1851, %.loopexit418 ], [ %.sroa.0389.1851, %bb.aw ], [ %.sroa.0389.11, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit119 ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 3 uses
  %i.ne = icmp eq ptr %.sroa.0389.6, %.sroa.17.6
  br i1 %i.ne, label %._crit_edge, label %bb.k
end_hunk_5
