Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/HexagonBitSimplify?download=true
inline.NumInlined: 3093
inline.NumDeleted: 1251
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN12_GLOBAL__N_123HexagonLoopRescheduling20runOnMachineFunctionERN4llvm15MachineFunctionE:bb.a
bb.e:                                             ; preds = %.loopexit
  store ptr %.sroa.094.0196, ptr %.sroa.7.0194, align 8, !tbaa !187
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0194, i64 8
  store ptr %.052..1, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !187
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.7.0194, i64 16
  store ptr %.3, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !187
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.7.0194, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE9push_backEOS2_.exit

bb.f:                                             ; preds = %.loopexit
  %i.de = ptrtoint ptr %.sroa.12.0195 to i64
  %i.df = ptrtoint ptr %.sroa.097.0193 to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775800
  br i1 %i.dh, label %bb.g, label %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.18) #21
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.di = sdiv exact i64 %i.dg, 24                ; 3 uses
  %i.dj = icmp eq ptr %.sroa.12.0195, %.sroa.097.0193 ; 2 uses
  %.sroa.speculated.i.i.i.i = select i1 %i.dj, i64 1, i64 %i.di
  %i.dk = add nsw i64 %.sroa.speculated.i.i.i.i, %i.di ; 2 uses
  %i.dl = icmp ult i64 %i.dk, %i.di
  %i.dm = call i64 @llvm.umin.i64(i64 %i.dk, i64 384307168202282325)
  %i.dn = select i1 %i.dl, i64 384307168202282325, i64 %i.dm ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.do = mul nuw nsw i64 %i.dn, 24
  %i.dp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.do) #22 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dg ; 3 uses
  store ptr %.sroa.094.0196, ptr %i.dq, align 8, !tbaa !187
  %.sroa.5.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store ptr %.052..1, ptr %.sroa.5.0..sroa_idx86, align 8, !tbaa !187
  %.sroa.6.0..sroa_idx88 = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store ptr %.3, ptr %.sroa.6.0..sroa_idx88, align 8, !tbaa !187
  br i1 %i.dj, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.03.i.i.i.i.i.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i ], [ %i.dp, %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.097.0193, %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !562, !alias.scope !563
  %i.dr = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dr, %.sroa.12.0195
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !466

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.dp, %_ZNKSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ds, %.lr.ph.i.i.i.i.i.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i27.i.i.i = icmp eq ptr %.sroa.097.0193, null
  br i1 %.not.i27.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.0193, i64 noundef %i.dg) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit26.i.i.i
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %i.dn
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.e, %.lr.ph.preheader, %.lr.ph200, %bb.c
  %.sroa.097.1 = phi ptr [ %.sroa.097.0193, %.lr.ph200 ], [ %.sroa.097.0193, %.lr.ph.preheader ], [ %.sroa.097.0193, %bb.c ], [ %i.dp, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.097.0193, %bb.e ] ; 6 uses
  %.sroa.7.1 = phi ptr [ %.sroa.7.0194, %.lr.ph200 ], [ %.sroa.7.0194, %.lr.ph.preheader ], [ %.sroa.7.0194, %bb.c ], [ %i.dt, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %i.dd, %bb.e ] ; 3 uses
  %.sroa.12.1 = phi ptr [ %.sroa.12.0195, %.lr.ph200 ], [ %.sroa.12.0195, %.lr.ph.preheader ], [ %.sroa.12.0195, %bb.c ], [ %i.du, %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i ], [ %.sroa.12.0195, %bb.e ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.094.0196, i64 8
  %.sroa.094.0 = load ptr, ptr %i.dv, align 8, !tbaa !184 ; 2 uses
  %.not120 = icmp eq ptr %.sroa.094.0, %i.v
  br i1 %.not120, label %.preheader, label %.lr.ph200

._crit_edge220:                                   ; preds = %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit, %.preheader
  %.046.lcssa = phi i1 [ false, %.preheader ], [ %i.ayx, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.097.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge220
  %i.dw = ptrtoint ptr %.sroa.097.1 to i64
  %i.dx = sub i64 %i.w, %i.dw
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.097.1, i64 noundef %i.dx) #23
  br label %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EED2Ev.exit: ; preds = %bb.b, %._crit_edge220, %bb.i
  %.046.lcssa398 = phi i1 [ %.046.lcssa, %bb.i ], [ %.046.lcssa, %._crit_edge220 ], [ false, %bb.b ]
  call void @_ZN4llvm10BitTrackerD1Ev(ptr noundef nonnull align 8 dead_on_return(313) dereferenceable(313) %20) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm16HexagonEvaluatorE, i64 16), ptr %19, align 8, !tbaa !26
  %i.dy = getelementptr inbounds nuw i8, ptr %19, i64 68
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !191 ; 2 uses
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_ZN4llvm16HexagonEvaluatorD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EED2Ev.exit
  %i.eb = getelementptr inbounds nuw i8, ptr %19, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !192
  %i.ed = zext i32 %i.dz to i64                   ; 2 uses
  %i.ee = shl nuw nsw i64 %i.ed, 3
  %i.ef = add nuw nsw i64 %i.ed, 31
  %i.eg = lshr i64 %i.ef, 3
  %i.eh = and i64 %i.eg, 1073741820
  %i.ei = add nuw nsw i64 %i.eh, %i.ee
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ec, i64 noundef %i.ei, i64 noundef 4) #20
  br label %_ZN4llvm16HexagonEvaluatorD2Ev.exit

_ZN4llvm16HexagonEvaluatorD2Ev.exit:              ; preds = %_ZNSt6vectorIN12_GLOBAL__N_123HexagonLoopRescheduling8LoopCandESaIS2_EED2Ev.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #20
  br label %bb.hm

bb.k:                                             ; preds = %.lr.ph219, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit
  %.046218 = phi i1 [ false, %.lr.ph219 ], [ %i.ayx, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit ]
  %.sroa.083.0217 = phi ptr [ %.sroa.097.1, %.lr.ph219 ], [ %i.ayy, %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit ] ; 7 uses
  %i.ej = load ptr, ptr %.sroa.083.0217, align 8, !tbaa !565 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 48 ; 2 uses
  %.sroa.0560.0707.i = load ptr, ptr %i.ek, align 8, !tbaa !197 ; 2 uses
  %.not615708.i = icmp eq ptr %.sroa.0560.0707.i, %i.el
  br i1 %.not615708.i, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling11processLoopERNS0_8LoopCandE.exit, label %.lr.ph714.i

.lr.ph714.i:                                      ; preds = %bb.k, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i
  %.sroa.0560.0712.i = phi ptr [ %.sroa.0560.0.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ %.sroa.0560.0707.i, %bb.k ] ; 10 uses
  %.sroa.0562.0711.i = phi ptr [ %.sroa.0562.1.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ null, %bb.k ] ; 14 uses
  %.sroa.9563.0710.i = phi ptr [ %.sroa.9563.1.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ null, %bb.k ] ; 18 uses
  %.sroa.17.0709.i = phi ptr [ %.sroa.17.1.ph.i, %_ZN4llvm26MachineInstrBundleIteratorINS_12MachineInstrELb0EEppEv.exit.i ], [ null, %bb.k ] ; 10 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0560.0712.i, i64 52
  %i.en = load i32, ptr %i.em, align 4, !tbaa !209
  switch i32 %i.en, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling7isConstEj.exit.i [
    i32 74, label %bb.l
    i32 0, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph714.i, %.lr.ph714.i
  %i.eo = call fastcc noundef i32 @_ZN12_GLOBAL__N_123HexagonLoopRescheduling9getDefRegEPKN4llvm12MachineInstrE(ptr noundef nonnull %.sroa.0560.0712.i) ; 8 uses
  %.val135.i = load ptr, ptr %i.t, align 8, !tbaa !561
  %i.ep = getelementptr i8, ptr %.val135.i, i64 24
  %.val135.val.i = load ptr, ptr %i.ep, align 8, !tbaa !255 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.val135.val.i, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !256 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val135.val.i, i64 8 ; 6 uses
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not10.i.i.i.i.i.i, label %.loopexit626.i, label %.lr.ph.i.i.i.i.i.i70

.lr.ph.i.i.i.i.i.i70:                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i70
  %.012.i.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i70 ], [ %i.er, %bb.l ] ; 3 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %.19.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i70 ], [ %i.es, %bb.l ]
  %i.et = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 32
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !257
  %i.ev = icmp ult i32 %i.eu, %i.eo               ; 2 uses
  %.19.i.i.i.i.i.i = select i1 %i.ev, ptr %.0811.i.i.i.i.i.i, ptr %.012.i.i.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i.i.i = select i1 %i.ev, i64 24, i64 16
  %.1.in.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 %.1.in.v.i.i.i.i.i.i
  %.1.i.i.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i.i.i, align 8, !tbaa !258 ; 2 uses
  %.not.i.i.i.i.i.i71 = icmp eq ptr %.1.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i71, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i70, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i70
  %i.ew = icmp eq ptr %.19.i.i.i.i.i.i, %i.es
  br i1 %i.ew, label %.loopexit626.i, label %_ZNK4llvm10BitTracker3hasEj.exit.i.i

_ZNK4llvm10BitTracker3hasEj.exit.i.i:             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i.i.i, i64 32
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !257
  %.not2.i.i = icmp ult i32 %i.eo, %i.ey
  br i1 %.not2.i.i, label %.loopexit626.i, label %.lr.ph.i.i.i.i20.i.i

.lr.ph.i.i.i.i20.i.i:                             ; preds = %_ZNK4llvm10BitTracker3hasEj.exit.i.i, %.lr.ph.i.i.i.i20.i.i
  %.012.i.i.i.i21.i.i = phi ptr [ %.1.i.i.i.i26.i.i, %.lr.ph.i.i.i.i20.i.i ], [ %i.er, %_ZNK4llvm10BitTracker3hasEj.exit.i.i ] ; 3 uses
  %.0811.i.i.i.i22.i.i = phi ptr [ %.19.i.i.i.i23.i.i, %.lr.ph.i.i.i.i20.i.i ], [ %i.es, %_ZNK4llvm10BitTracker3hasEj.exit.i.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21.i.i, i64 32
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !257
  %i.fb = icmp ult i32 %i.fa, %i.eo               ; 2 uses
  %.19.i.i.i.i23.i.i = select i1 %i.fb, ptr %.0811.i.i.i.i22.i.i, ptr %.012.i.i.i.i21.i.i ; 4 uses
  %.1.in.v.i.i.i.i24.i.i = select i1 %i.fb, i64 24, i64 16
  %.1.in.i.i.i.i25.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i21.i.i, i64 %.1.in.v.i.i.i.i24.i.i
  %.1.i.i.i.i26.i.i = load ptr, ptr %.1.in.i.i.i.i25.i.i, align 8, !tbaa !258 ; 2 uses
  %.not.i.i.i.i27.i.i = icmp eq ptr %.1.i.i.i.i26.i.i, null
  br i1 %.not.i.i.i.i27.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i.i, label %.lr.ph.i.i.i.i20.i.i, !llvm.loop !1

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i.i: ; preds = %.lr.ph.i.i.i.i20.i.i
  %i.fc = icmp eq ptr %.19.i.i.i.i23.i.i, %i.es
  br i1 %i.fc, label %_ZNK4llvm10BitTracker6lookupEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i.i
  %i.fd = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i23.i.i, i64 32
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !257
  %i.ff = icmp ult i32 %i.eo, %i.fe
  %spec.select.i.i.i.i.i = select i1 %i.ff, ptr %i.es, ptr %.19.i.i.i.i23.i.i
  br label %_ZNK4llvm10BitTracker6lookupEj.exit.i.i

_ZNK4llvm10BitTracker6lookupEj.exit.i.i:          ; preds = %bb.m, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i.i
  %.sroa.0.0.i.i.i29.i.i = phi ptr [ %spec.select.i.i.i.i.i, %bb.m ], [ %i.es, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i28.i.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i29.i.i, i64 48
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !185
  %i.fi = and i32 %i.fh, 65535                    ; 2 uses
  %.not.not3.not.i.i = icmp eq i32 %i.fi, 0
  br i1 %.not.not3.not.i.i, label %.thread570.i, label %.critedge.lr.ph.i.i

.critedge.lr.ph.i.i:                              ; preds = %_ZNK4llvm10BitTracker6lookupEj.exit.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i29.i.i, i64 40
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !38
  br label %.critedge.i.i

bb.n:                                             ; preds = %.critedge.i.i
  %21 = add nuw nsw i32 %.0144.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %21, %i.fi
  br i1 %exitcond.not.i.i, label %.thread570.i, label %.critedge.i.i, !llvm.loop !467

.critedge.i.i:                                    ; preds = %bb.n, %.critedge.lr.ph.i.i
  %.0144.i.i = phi i32 [ 0, %.critedge.lr.ph.i.i ], [ %21, %bb.n ] ; 2 uses
  %22 = and i32 %.0144.i.i, 65535
  %23 = zext nneg i32 %22 to i64
  %i.fl = getelementptr inbounds nuw [12 x i8], ptr %i.fk, i64 %23
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !264
  %.off.i.i = add i32 %i.fm, -1
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %bb.n, label %.loopexit626.i

.loopexit626.i:                                   ; preds = %.critedge.i.i, %_ZNK4llvm10BitTracker3hasEj.exit.i.i, %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm10BitTracker12RegisterCellEESt10_Select1stIS5_ESt4lessIjESaIS5_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS5_EPSt18_Rb_tree_node_baseRS1_.exit.i.i.i.i.i, %bb.l
  %i.fn = load ptr, ptr %i.r, align 8, !tbaa !560 ; 2 uses
  %i.fo = icmp slt i32 %i.eo, 0
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %i.fq = and i32 %i.eo, 2147483647
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = load ptr, ptr %i.fp, align 8
  %i.ft = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.fr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 312
  %i.fw = zext nneg i32 %i.eo to i64
  %i.fx = load ptr, ptr %i.fv, align 8
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %i.fw
  %.0.in.i.i.i.i = select i1 %i.fo, ptr %i.fu, ptr %i.fy
  %.0.i.i.i.i = load ptr, ptr %.0.in.i.i.i.i, align 8, !tbaa !265 ; 4 uses
  %.not.i.i.i.i72 = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i.i72, label %.thread570.i, label %bb.o

bb.o:                                             ; preds = %.loopexit626.i
  %i.fz = load i32, ptr %.0.i.i.i.i, align 8
  %i.ga = and i32 %i.fz, 16777216
  %.not4.i.i.i.i = icmp eq i32 %i.ga, 0
  br i1 %.not4.i.i.i.i, label %.lr.ph.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.o, %bb.p
  %.pn.i.i.i.i.i = phi ptr [ %storemerge.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i, %bb.o ]
  %storemerge.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 24
  %storemerge.i.i.i.i.i = load ptr, ptr %storemerge.in.i.i.i.i.i, align 8, !tbaa !266 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %storemerge.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i, label %.thread570.i, label %bb.p

bb.p:                                             ; preds = %.preheader.i.i.i.i
  %i.gb = load i32, ptr %storemerge.i.i.i.i.i, align 8
  %i.gc = and i32 %i.gb, 16777216
  %.not1.i.i.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not1.i.i.i.i.i, label %.lr.ph.i, label %.preheader.i.i.i.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %bb.p, %bb.o
  %.sroa.0.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.o ], [ %storemerge.i.i.i.i.i, %bb.p ] ; 2 uses
  %i.gd = load ptr, ptr %.sroa.083.0217, align 8, !tbaa !565 ; 7 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !269 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !270
  %.not116.i204 = icmp eq ptr %i.gh, %i.gd
  br i1 %.not116.i204, label %.lr.ph207, label %.thread570.i

_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit: ; preds = %bb.u
  %i.gi = getelementptr inbounds nuw i8, ptr %storemerge.i.i.i, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !269 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !270
  %.not116.i = icmp eq ptr %i.gl, %i.gd
  br i1 %.not116.i, label %.lr.ph207, label %.thread570.i, !llvm.loop !2

.lr.ph207:                                        ; preds = %.lr.ph.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit
  %i.gm = phi ptr [ %i.gj, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit ], [ %i.gf, %.lr.ph.i ] ; 3 uses
  %.sroa.0553.0705.i206 = phi ptr [ %storemerge.i.i.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit ], [ %.sroa.0.0.i.i.i, %.lr.ph.i ]
  %.0100706.i205 = phi i1 [ %.2102613.i, %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit ], [ false, %.lr.ph.i ] ; 3 uses
  %i.gn = getelementptr i8, ptr %i.gm, i64 52
  %.val137.i = load i32, ptr %i.gn, align 4, !tbaa !209
  switch i32 %.val137.i, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit [
    i32 20, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2248, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2178, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2149, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2242, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2172, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2143, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 2223, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 988, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 990, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 965, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 967, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 975, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 1141, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 1140, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 974, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 1139, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 973, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 972, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 971, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
    i32 970, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread
  ]

_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit: ; preds = %.lr.ph207
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.gp = load i24, ptr %i.go, align 8            ; 3 uses
  %i.gq = zext i24 %i.gp to i32
  %.not.i.i77 = icmp eq i24 %i.gp, 0
  br i1 %.not.i.i77, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !271
  %wide.trip.count.i.i.a = zext i24 %i.gp to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.i.i.a = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.a, %bb.s ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [32 x i8], ptr %i.gs, i64 %indvars.iv.i.i.a ; 2 uses
  %i.gu = load i32, ptr %i.gt, align 8
  %i.gv = and i32 %i.gu, 255
  %i.gw = icmp eq i32 %i.gv, 0
  br i1 %i.gw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !266
  %i.gz = icmp eq i32 %i.gy, %i.eo
  br i1 %i.gz, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %indvars.iv.next.i.i.a = add nuw nsw i64 %indvars.iv.i.i.a, 1 ; 2 uses
  %exitcond.not.i183.i = icmp eq i64 %indvars.iv.next.i.i.a, %wide.trip.count.i.i.a
  br i1 %exitcond.not.i183.i, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i, label %bb.q, !llvm.loop !468

_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.i: ; preds = %bb.r
  %i.ha = trunc nuw nsw i64 %indvars.iv.i.i.a to i32
  %i.hb = add nsw i32 %i.gq, -1
  %i.hc = icmp eq i32 %i.hb, %i.ha
  br i1 %i.hc, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread, label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i

_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread: ; preds = %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %.lr.ph207, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.i
  br label %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i

_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i: ; preds = %bb.s, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.i, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit
  %.2102613.i = phi i1 [ %.0100706.i205, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit ], [ %.0100706.i205, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.i ], [ true, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isBitShuffleEPKN4llvm12MachineInstrEj.exit.thread ], [ %.0100706.i205, %bb.s ] ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i
  %.pn.i.i.i = phi ptr [ %.sroa.0553.0705.i206, %_ZNK12_GLOBAL__N_123HexagonLoopRescheduling12isStoreInputEPKN4llvm12MachineInstrEj.exit.thread.thread.i ], [ %storemerge.i.i.i, %bb.u ]
  %storemerge.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 24
  %storemerge.i.i.i = load ptr, ptr %storemerge.in.i.i.i, align 8, !tbaa !266 ; 5 uses
  %.not.i.i.i78 = icmp eq ptr %storemerge.i.i.i, null
  br i1 %.not.i.i.i78, label %._crit_edge.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hd = load i32, ptr %storemerge.i.i.i, align 8
  %i.he = and i32 %i.hd, 16777216
  %.not1.i.i.i = icmp eq i32 %i.he, 0
  br i1 %.not1.i.i.i, label %_ZN4llvm19MachineRegisterInfo20defusechain_iteratorILb1ELb0ELb0ELb1ELb0EEppEv.exit.i.loopexit, label %bb.t, !llvm.loop !2

._crit_edge.i:                                    ; preds = %bb.t
  br i1 %.2102613.i, label %bb.v, label %.thread570.i

bb.v:                                             ; preds = %._crit_edge.i
  %i.hf = call fastcc noundef i32 @_ZN12_GLOBAL__N_123HexagonLoopRescheduling9getDefRegEPKN4llvm12MachineInstrE(ptr noundef nonnull readonly align 8 dereferenceable(80) %.sroa.0560.0712.i) ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.sroa.0560.0712.i, i64 40
  %i.hh = load i24, ptr %i.hg, align 8            ; 2 uses
  %i.hi = icmp ugt i24 %i.hh, 1
  br i1 %i.hi, label %.lr.ph.i184.i, label %_ZN12_GLOBAL__N_123HexagonLoopRescheduling7PhiInfoC2ERN4llvm12MachineInstrERNS2_17MachineBasicBlockE.exit.i

.lr.ph.i184.i:                                    ; preds = %bb.v
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0560.0712.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !271 ; 3 uses
  %i.hl = zext i24 %i.hh to i64
  %i.hm = add nsw i64 %i.hl, -2                   ; 2 uses
  %i.hn = lshr i64 %i.hm, 1                       ; 2 uses
  %i.ho = add nuw i64 %i.hn, 1                    ; 2 uses
  %i.hp = icmp eq i64 %i.hn, 0
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.i184.i.new

.lr.ph.i184.i.new:                                ; preds = %.lr.ph.i184.i
  %unroll_iter = and i64 %i.ho, -2
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i184.i.new
  %.sroa.9547.0.i = phi ptr [ null, %.lr.ph.i184.i.new ], [ %.sroa.9547.0..i.1, %bb.w ]
  %.sroa.7538.0.i = phi i64 [ 0, %.lr.ph.i184.i.new ], [ %.sroa.7538.0..sroa.015.0.insert.insert.i.i.1, %bb.w ]
  %.sroa.5535.0.i = phi i64 [ 0, %.lr.ph.i184.i.new ], [ %.sroa.015.0.insert.insert.i..sroa.5535.0.i.1, %bb.w ]
  %indvars.iv.i185.i = phi i64 [ 1, %.lr.ph.i184.i.new ], [ %indvars.iv.next.i186.i.1, %bb.w ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i184.i.new ], [ %niter.next.1, %bb.w ]
  %i.hq = getelementptr inbounds nuw [32 x i8], ptr %i.hk, i64 %indvars.iv.i185.i ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 48
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !266 ; 2 uses
  %i.ht = icmp eq ptr %i.hs, %i.gd                ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !266
  %i.hw = load i32, ptr %i.hq, align 8
  %i.hx = lshr i32 %i.hw, 8
  %i.hy = and i32 %i.hx, 4095
  %.sroa.416.0.insert.ext.i.i = zext nneg i32 %i.hy to i64
  %.sroa.416.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.416.0.insert.ext.i.i, 32
  %.sroa.015.0.insert.ext.i.i = zext i32 %i.hv to i64
  %.sroa.015.0.insert.insert.i.i = or disjoint i64 %.sroa.416.0.insert.shift.i.i, %.sroa.015.0.insert.ext.i.i ; 2 uses
  %.sroa.9547.0..i = select i1 %i.ht, ptr %.sroa.9547.0.i, ptr %i.hs
  %.sroa.7538.0..sroa.015.0.insert.insert.i.i = select i1 %i.ht, i64 %.sroa.7538.0.i, i64 %.sroa.015.0.insert.insert.i.i
  %.sroa.015.0.insert.insert.i..sroa.5535.0.i = select i1 %i.ht, i64 %.sroa.015.0.insert.insert.i.i, i64 %.sroa.5535.0.i
  %i.hz = getelementptr inbounds nuw [32 x i8], ptr %i.hk, i64 %indvars.iv.i185.i ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 112
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !266 ; 2 uses
  %i.id = icmp eq ptr %i.ic, %i.gd                ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 68
end_hunk_0
