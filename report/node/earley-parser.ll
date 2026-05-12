inline.NumInlined: 1388
inline.NumDeleted: 771
begin_hunk_0_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %8 = alloca %"class.v8::internal::torque::Symbol", align 8 ; 15 uses
  %9 = alloca %"class.v8::internal::torque::Rule", align 8 ; 9 uses
  %10 = alloca %"class.v8::internal::torque::Item", align 8 ; 9 uses
  %.sroa.9 = alloca { ptr, ptr }, align 8         ; 5 uses
  %11 = alloca %"class.v8::internal::torque::Item", align 8 ; 9 uses
  %12 = alloca %"class.std::vector.4", align 8    ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %.sroa.13.6 = phi ptr [ %i.cq, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.13.1843, %bb.p ] ; 17 uses
  %.pn416 = phi ptr [ %i.co, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.8364.1844, %bb.p ]
  %.sroa.0361.6 = phi ptr [ %i.cn, %_ZNSt6vectorIPKN2v88internal6torque4ItemESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %.sroa.0361.1845, %bb.p ] ; 17 uses
  %.sroa.8364.3 = getelementptr inbounds nuw i8, ptr %.pn416, i64 8 ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.fca.0.extract, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8            ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  br label %.body

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit135: ; preds = %bb.ai, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132, %bb.ag, %bb.af
  %.sroa.16.2 = phi ptr [ %.sroa.16.1846, %bb.af ], [ %.sroa.16.1846, %bb.ag ], [ %i.hz, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.16.1846, %bb.ai ] ; 9 uses
  %.sroa.10383.2 = phi ptr [ %.sroa.10383.1847, %bb.af ], [ %.sroa.10383.1847, %bb.ag ], [ %i.hy, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %i.hj, %bb.ai ] ; 2 uses
  %.sroa.0379.2 = phi ptr [ %.sroa.0379.1848, %bb.af ], [ %.sroa.0379.1848, %bb.ag ], [ %i.hu, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i132 ], [ %.sroa.0379.1848, %bb.ai ] ; 9 uses
  %i.ia = load ptr, ptr %i.gv, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gv, i64 8 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8
end_hunk_2
begin_hunk_3_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
bb.ax:                                            ; preds = %.lr.ph, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157
  %i.kz = phi ptr [ %i.kx, %.lr.ph ], [ %i.na, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ]
  %.066832 = phi i64 [ 0, %.lr.ph ], [ %i.my, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 2 uses
  %.sroa.0389.3831 = phi ptr [ %.sroa.0389.1851, %.lr.ph ], [ %.sroa.0389.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 16 uses
  %.sroa.17.4830 = phi ptr [ %i.bt, %.lr.ph ], [ %.sroa.17.5, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 24 uses
  %.sroa.42.3829 = phi ptr [ %.sroa.42.1849, %.lr.ph ], [ %.sroa.42.4, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157 ] ; 5 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kz, i64 %.066832
  %i.lb = load ptr, ptr %i.la, align 8            ; 5 uses
end_hunk_3
begin_hunk_4_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  br label %.body

bb.be:                                            ; preds = %_ZNSt13unordered_setIN2v88internal6torque4ItemENS0_4base4hashIS3_EESt8equal_toIS3_ESaIS3_EE4findERKS3_.exit141
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i8 0, i64 16, i1 false)
  %.not.i.i158 = icmp eq ptr %.sroa.17.4830, %.sroa.42.3829
  br i1 %.not.i.i158, label %bb.bg, label %bb.bf

end_hunk_4
begin_hunk_5_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 24
  store i64 %storemerge871, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.17.4830, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173

bb.bg:                                            ; preds = %bb.be
end_hunk_5
begin_hunk_6_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  %.0.lcssa.i.i.i.i.i.i168.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i168, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.17.4830, %bb.bf ]
  %.sroa.0389.13 = phi ptr [ %i.mt, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i170 ], [ %.sroa.0389.3831, %bb.bf ]
  %.sroa.17.10 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i168.pn, i64 48
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157

.loopexit425:                                     ; preds = %_ZNKSt6vectorIN2v88internal6torque4ItemESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i159
  %lpad.loopexit427 = landingpad { ptr, i32 }
          cleanup
  br label %18

.loopexit.split-lp426:                            ; preds = %bb.bh
  %lpad.loopexit.split-lp428 = landingpad { ptr, i32 }
          cleanup
  br label %18

18:                                               ; preds = %.loopexit.split-lp426, %.loopexit425
  %lpad.phi429 = phi { ptr, i32 } [ %lpad.loopexit427, %.loopexit425 ], [ %lpad.loopexit.split-lp428, %.loopexit.split-lp426 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  br label %.body

_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit157: ; preds = %bb.az, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i154, %_ZNSt6vectorIN2v88internal6torque4ItemESaIS3_EE9push_backEOS3_.exit173
end_hunk_6
begin_hunk_7_@_ZN2v88internal6torque18RunEarleyAlgorithmEPNS1_6SymbolERKNS1_11LexerResultEPSt13unordered_setINS1_4ItemENS_4base4hashIS8_EESt8equal_toIS8_ESaIS8_EE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %.body

.body:                                            ; preds = %bb.o, %bb.z, %bb.aa, %bb.bd, %18, %bb.av, %bb.aq, %bb.au, %.loopexit.split-lp432, %.loopexit431, %.loopexit.split-lp, %.loopexit417, %.loopexit.split-lp437, %.loopexit436, %.loopexit.split-lp421, %.loopexit420, %bb.bs, %bb.bt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202, %bb.n, %bb.j, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96
  %.sroa.13.5 = phi ptr [ null, %bb.j ], [ %.sroa.13.1843, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.13.1.lcssa, %bb.bs ], [ %.sroa.13.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.13.1.lcssa, %bb.bt ], [ %.sroa.13.6, %bb.au ], [ %.sroa.8364.1844, %.loopexit.split-lp432 ], [ %.sroa.13.6, %.loopexit.split-lp ], [ %.sroa.13.6, %bb.aa ], [ %.sroa.13.1843, %bb.o ], [ %.sroa.13.6, %bb.z ], [ %.sroa.13.6, %bb.bd ], [ %.sroa.13.6, %.loopexit.split-lp437 ], [ %.sroa.13.6, %18 ], [ %.sroa.13.6, %bb.av ], [ %.sroa.13.6, %bb.aq ], [ %.sroa.8364.1844, %.loopexit431 ], [ %.sroa.13.6, %.loopexit417 ], [ %.sroa.13.6, %.loopexit436 ], [ %.sroa.13.6, %.loopexit420 ], [ %.sroa.13.6, %.loopexit.split-lp421 ]
  %.sroa.0361.5 = phi ptr [ null, %bb.j ], [ %.sroa.0361.1845, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0361.1.lcssa, %bb.bs ], [ %.sroa.0361.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0361.1.lcssa, %bb.bt ], [ %.sroa.0361.6, %bb.au ], [ %.sroa.0361.1845, %.loopexit.split-lp432 ], [ %.sroa.0361.6, %.loopexit.split-lp ], [ %.sroa.0361.6, %bb.aa ], [ %.sroa.0361.1845, %bb.o ], [ %.sroa.0361.6, %bb.z ], [ %.sroa.0361.6, %bb.bd ], [ %.sroa.0361.6, %.loopexit.split-lp437 ], [ %.sroa.0361.6, %18 ], [ %.sroa.0361.6, %bb.av ], [ %.sroa.0361.6, %bb.aq ], [ %.sroa.0361.1845, %.loopexit431 ], [ %.sroa.0361.6, %.loopexit417 ], [ %.sroa.0361.6, %.loopexit436 ], [ %.sroa.0361.6, %.loopexit420 ], [ %.sroa.0361.6, %.loopexit.split-lp421 ] ; 3 uses
  %.sroa.16.7 = phi ptr [ null, %bb.j ], [ %.sroa.16.1846, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.42.1.lcssa, %bb.bs ], [ %.sroa.42.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.42.1.lcssa, %bb.bt ], [ %.sroa.16.2, %bb.au ], [ %.sroa.16.1846, %.loopexit.split-lp432 ], [ %.sroa.16.1846, %.loopexit.split-lp ], [ %.sroa.16.1846, %bb.aa ], [ %.sroa.16.1846, %bb.o ], [ %.sroa.16.1846, %bb.z ], [ %.sroa.16.2, %bb.bd ], [ %.sroa.10383.1847, %.loopexit.split-lp437 ], [ %.sroa.16.2, %18 ], [ %.sroa.16.2, %bb.av ], [ %.sroa.16.2, %bb.aq ], [ %.sroa.16.1846, %.loopexit431 ], [ %.sroa.16.1846, %.loopexit417 ], [ %.sroa.10383.1847, %.loopexit436 ], [ %.sroa.16.2, %.loopexit420 ], [ %.sroa.16.2, %.loopexit.split-lp421 ]
  %.sroa.0379.7 = phi ptr [ null, %bb.j ], [ %.sroa.0379.1848, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0389.1.lcssa, %bb.bs ], [ %.sroa.0389.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0389.1.lcssa, %bb.bt ], [ %.sroa.0379.2, %bb.au ], [ %.sroa.0379.1848, %.loopexit.split-lp432 ], [ %.sroa.0379.1848, %.loopexit.split-lp ], [ %.sroa.0379.1848, %bb.aa ], [ %.sroa.0379.1848, %bb.o ], [ %.sroa.0379.1848, %bb.z ], [ %.sroa.0379.2, %bb.bd ], [ %.sroa.0379.1848, %.loopexit.split-lp437 ], [ %.sroa.0379.2, %18 ], [ %.sroa.0379.2, %bb.av ], [ %.sroa.0379.2, %bb.aq ], [ %.sroa.0379.1848, %.loopexit431 ], [ %.sroa.0379.1848, %.loopexit417 ], [ %.sroa.0379.1848, %.loopexit436 ], [ %.sroa.0379.2, %.loopexit420 ], [ %.sroa.0379.2, %.loopexit.split-lp421 ] ; 3 uses
  %.sroa.42.9 = phi ptr [ null, %bb.j ], [ %.sroa.42.1849, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.16.1.lcssa, %bb.bs ], [ %.sroa.16.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.16.1.lcssa, %bb.bt ], [ %.sroa.42.1849, %bb.au ], [ %.sroa.42.1849, %.loopexit.split-lp432 ], [ %.sroa.17.3837, %.loopexit.split-lp ], [ %.sroa.42.1849, %bb.aa ], [ %.sroa.42.1849, %bb.o ], [ %.sroa.42.1849, %bb.z ], [ %.sroa.42.3829, %bb.bd ], [ %.sroa.42.1849, %.loopexit.split-lp437 ], [ %.sroa.17.4830, %18 ], [ %.sroa.42.1849, %bb.av ], [ %.sroa.42.1849, %bb.aq ], [ %.sroa.42.1849, %.loopexit431 ], [ %.sroa.17.3837, %.loopexit417 ], [ %.sroa.42.1849, %.loopexit436 ], [ %.sroa.17.4830, %.loopexit420 ], [ %.sroa.17.4830, %.loopexit.split-lp421 ]
  %.sroa.0389.9 = phi ptr [ null, %bb.j ], [ %.sroa.0389.1851, %bb.n ], [ null, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %.sroa.0379.1.lcssa, %bb.bs ], [ %.sroa.0379.1.lcssa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %.sroa.0379.1.lcssa, %bb.bt ], [ %.sroa.0389.1851, %bb.au ], [ %.sroa.0389.1851, %.loopexit.split-lp432 ], [ %.sroa.0389.2838, %.loopexit.split-lp ], [ %.sroa.0389.1851, %bb.aa ], [ %.sroa.0389.1851, %bb.o ], [ %.sroa.0389.1851, %bb.z ], [ %.sroa.0389.3831, %bb.bd ], [ %.sroa.0389.1851, %.loopexit.split-lp437 ], [ %.sroa.0389.3831, %18 ], [ %.sroa.0389.1851, %bb.av ], [ %.sroa.0389.1851, %bb.aq ], [ %.sroa.0389.1851, %.loopexit431 ], [ %.sroa.0389.2838, %.loopexit417 ], [ %.sroa.0389.1851, %.loopexit436 ], [ %.sroa.0389.3831, %.loopexit420 ], [ %.sroa.0389.3831, %.loopexit.split-lp421 ] ; 3 uses
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.j ], [ %i.cb, %bb.n ], [ %.pn, %_ZNSt6vectorIPN2v88internal6torque6SymbolESaIS4_EED2Ev.exit96 ], [ %i.pg, %bb.bs ], [ %.pn72.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit202 ], [ %i.ph, %bb.bt ], [ %i.ku, %bb.au ], [ %lpad.loopexit.split-lp434, %.loopexit.split-lp432 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.fu, %bb.aa ], [ %i.cc, %bb.o ], [ %i.fp, %bb.z ], [ %i.mi, %bb.bd ], [ %lpad.loopexit.split-lp439, %.loopexit.split-lp437 ], [ %lpad.phi429, %18 ], [ %i.kv, %bb.av ], [ %i.jy, %bb.aq ], [ %lpad.loopexit433, %.loopexit431 ], [ %lpad.loopexit, %.loopexit417 ], [ %lpad.loopexit438, %.loopexit436 ], [ %lpad.loopexit422, %.loopexit420 ], [ %lpad.loopexit.split-lp423, %.loopexit.split-lp421 ]
  %i.rn = load ptr, ptr %8, align 8               ; 3 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8            ; 2 uses
end_hunk_7
