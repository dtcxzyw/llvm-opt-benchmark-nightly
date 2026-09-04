Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/MachineOutliner?download=true
inline.NumInlined: 4112
inline.NumDeleted: 2287
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_":bb.a
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  tail call void %i.bo(ptr noundef nonnull align 8 dereferenceable(52) %i.bl) #25, !inline_history !1095
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.br = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bs = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, !llvm.loop !14

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i27, %.critedge.i ], [ %i.bq, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bt = ptrtoint ptr %i.o to i64                ; 2 uses
  %i.bu = ptrtoint ptr %.sroa.021.0.lcssa.i to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 2 uses
  %i.bx = icmp sgt i64 %i.bw, 0
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i13.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.cf, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %i.bw, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.ce, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.cd, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ], [ %.sroa.021.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.by = load ptr, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i16.i, align 8, !tbaa !368
  %i.bz = load ptr, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.by, ptr %.0811.i.i.i.i.i15.i, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i17.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  tail call void %i.cc(ptr noundef nonnull align 8 dereferenceable(52) %i.bz) #25, !inline_history !1095
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 8 ; 2 uses
  %i.cf = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.cg = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i13.i, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", !llvm.loop !14

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit.i ], [ %i.ce, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.ch = sub i64 %i.a, %i.bt
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.ci, %i.m
  br i1 %.not.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i21, !llvm.loop !1096

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", %bb.b
  %.sroa.023.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.o, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.ci, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.058, i64 %.lcssa.i)
  %i.cj = getelementptr inbounds [8 x i8], ptr %.sroa.023.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_"(ptr %.sroa.023.0.lcssa.i, ptr %i.cj, ptr %i.cj, ptr %1, ptr noundef %.0.lcssa.i)
  %i.ck = shl nsw i64 %.058, 2                    ; 4 uses
  %.not29.i = icmp slt i64 %i.d, %i.ck
  br i1 %.not29.i, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit"
  %.idx44 = shl nsw i64 %.058, 4                  ; 2 uses
  %.idx45 = shl nsw i64 %.058, 5                  ; 2 uses
  %.not46 = icmp eq i64 %.idx44, %.idx45
  br label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.preheader, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"
  %.sroa.022.031.i = phi ptr [ %i.fl, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ], [ %0, %.lr.ph.i22.preheader ] ; 2 uses
  %.030.i = phi ptr [ %i.cm, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ], [ %2, %.lr.ph.i22.preheader ] ; 4 uses
  %i.cl = getelementptr inbounds i8, ptr %.030.i, i64 %.idx44 ; 4 uses
  %i.cm = getelementptr inbounds i8, ptr %.030.i, i64 %.idx45 ; 4 uses
  br i1 %.not46, label %._crit_edge.i, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %.lr.ph.i22, %bb.h
  %.035.i = phi ptr [ %.1.i, %bb.h ], [ %.030.i, %.lr.ph.i22 ] ; 6 uses
  %.01634.i = phi ptr [ %.117.i, %bb.h ], [ %i.cl, %.lr.ph.i22 ] ; 6 uses
  %.sroa.0.033.i = phi ptr [ %i.ea, %bb.h ], [ %.sroa.022.031.i, %.lr.ph.i22 ] ; 5 uses
  %i.cn = load ptr, ptr %.01634.i, align 8, !tbaa !368 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !41
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i32 %i.cp(ptr noundef nonnull align 8 dereferenceable(52) %i.cn) #25, !inline_history !1097
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !388
  %i.ct = mul i32 %i.cs, %i.cq
  %i.cu = load ptr, ptr %.035.i, align 8, !tbaa !368 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !41
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i32 %i.cx(ptr noundef nonnull align 8 dereferenceable(52) %i.cu) #25, !inline_history !1098
  %i.cz = mul i32 %i.ct, %i.cy
  %i.da = load ptr, ptr %.035.i, align 8, !tbaa !368 ; 3 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !41
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = tail call noundef i32 %i.dc(ptr noundef nonnull align 8 dereferenceable(52) %i.da) #25, !inline_history !1097
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 40
  %i.df = load i32, ptr %i.de, align 8, !tbaa !388
  %i.dg = mul i32 %i.df, %i.dd
  %i.dh = load ptr, ptr %.01634.i, align 8, !tbaa !368 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = tail call noundef i32 %i.dk(ptr noundef nonnull align 8 dereferenceable(52) %i.dh) #25, !inline_history !1098
  %i.dm = mul i32 %i.dg, %i.dl
  %i.dn = icmp ugt i32 %i.cz, %i.dm
  br i1 %i.dn, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i38
  %i.do = load ptr, ptr %.01634.i, align 8, !tbaa !368
  store ptr null, ptr %.01634.i, align 8, !tbaa !368
  %i.dp = load ptr, ptr %.sroa.0.033.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.do, ptr %.sroa.0.033.i, align 8, !tbaa !368
  %.not.i.i.i.i.i39 = icmp eq ptr %i.dp, null
  br i1 %.not.i.i.i.i.i39, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i40

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i40: ; preds = %bb.f
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !41
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  tail call void %i.ds(ptr noundef nonnull align 8 dereferenceable(52) %i.dp) #25, !inline_history !1099
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i40, %bb.f
  %i.dt = getelementptr inbounds nuw i8, ptr %.01634.i, i64 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i38
  %i.du = load ptr, ptr %.035.i, align 8, !tbaa !368
  store ptr null, ptr %.035.i, align 8, !tbaa !368
  %i.dv = load ptr, ptr %.sroa.0.033.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.du, ptr %.sroa.0.033.i, align 8, !tbaa !368
  %.not.i.i.i.i18.i = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i.i18.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i19.i: ; preds = %bb.g
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  tail call void %i.dy(ptr noundef nonnull align 8 dereferenceable(52) %i.dv) #25, !inline_history !1099
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i19.i, %bb.g
  %i.dz = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41
  %.117.i = phi ptr [ %i.dt, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41 ], [ %.01634.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.035.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i41 ], [ %i.dz, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit20.i ] ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 8 ; 2 uses
  %i.eb = icmp ne ptr %.1.i, %i.cl
  %i.ec = icmp ne ptr %.117.i, %i.cm
  %i.ed = select i1 %i.eb, i1 %i.ec, i1 false
  br i1 %i.ed, label %.lr.ph.i38, label %._crit_edge.i, !llvm.loop !15

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i22
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.031.i, %.lr.ph.i22 ], [ %i.ea, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.cl, %.lr.ph.i22 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i29 = phi ptr [ %.030.i, %.lr.ph.i22 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.ee = ptrtoint ptr %i.cl to i64
  %i.ef = ptrtoint ptr %.0.lcssa.i29 to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = ashr exact i64 %i.eg, 3                 ; 2 uses
  %i.ei = icmp sgt i64 %i.eh, 0
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i

.lr.ph.i.i.i.i.i.i31:                             ; preds = %._crit_edge.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37
  %.012.i.i.i.i.i.i32 = phi i64 [ %i.eq, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %i.eh, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i33 = phi ptr [ %i.ep, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i34 = phi ptr [ %i.eo, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ], [ %.0.lcssa.i29, %._crit_edge.i ] ; 3 uses
  %i.ej = load ptr, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i.i34, align 8, !tbaa !368
  %i.ek = load ptr, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !368 ; 3 uses
  store ptr %i.ej, ptr %.0811.i.i.i.i.i.i33, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i35, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i31
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  tail call void %i.en(ptr noundef nonnull align 8 dereferenceable(52) %i.ek) #25, !inline_history !1100
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i36, %.lr.ph.i.i.i.i.i.i31
  %i.eo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i34, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i33, i64 8 ; 2 uses
  %i.eq = add nsw i64 %.012.i.i.i.i.i.i32, -1
  %i.er = icmp sgt i64 %.012.i.i.i.i.i.i32, 1
  br i1 %i.er, label %.lr.ph.i.i.i.i.i.i31, label %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, !llvm.loop !14

_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i: ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ep, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i37 ]
  %i.es = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64 ; 2 uses
  %i.et = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.eu = sub i64 %i.es, %i.et
  %i.ev = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.eu ; 3 uses
  %i.ew = ptrtoint ptr %i.cm to i64               ; 2 uses
  %i.ex = ptrtoint ptr %.016.lcssa.i to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = ashr exact i64 %i.ey, 3                 ; 2 uses
  %i.fa = icmp sgt i64 %i.ez, 0
  br i1 %i.fa, label %.lr.ph.i.i.i.i.i22.i, label %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit"

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.fi, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.ez, %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.fh, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %i.ev, %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.fg, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ] ; 3 uses
  %i.fb = load ptr, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i25.i, align 8, !tbaa !368
  %i.fc = load ptr, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.fb, ptr %.0811.i.i.i.i.i24.i, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.fc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i26.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !41
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  tail call void %i.ff(ptr noundef nonnull align 8 dereferenceable(52) %i.fc) #25, !inline_history !1100
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.fg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 8
  %i.fh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 8 ; 2 uses
  %i.fi = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.fj = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i22.i, label %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", !llvm.loop !14

"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit": ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i, %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i
  %.08.lcssa.i.i.i.i.i21.i = phi ptr [ %i.ev, %_ZSt4moveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEEET0_T_SF_SE_.exit.i ], [ %i.fh, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i28.i ]
  %3 = ptrtoint ptr %.08.lcssa.i.i.i.i.i21.i to i64
  %i.fk = sub i64 %3, %i.es
  %i.fl = getelementptr inbounds i8, ptr %i.ev, i64 %i.fk ; 2 uses
  %i.fm = sub i64 %i.l, %i.ew
  %i.fn = ashr exact i64 %i.fm, 3                 ; 2 uses
  %.not.i23 = icmp slt i64 %i.fn, %i.ck
  br i1 %.not.i23, label %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit", label %.lr.ph.i22, !llvm.loop !1101

"_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit": ; preds = %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit"
  %.0.lcssa.i24 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.cm, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ] ; 2 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.fl, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.lcssa.i25 = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit" ], [ %i.fn, %"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_.exit" ]
  %.sroa.speculated.i26 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa.i25)
  %i.fo = getelementptr inbounds [8 x i8], ptr %.0.lcssa.i24, i64 %.sroa.speculated.i26 ; 2 uses
  tail call fastcc void @"_ZSt12__move_mergeIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEENS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEET0_T_SR_SR_SR_SQ_T1_"(ptr noundef %.0.lcssa.i24, ptr noundef %i.fo, ptr noundef %i.fo, ptr noundef %i.e, ptr %.sroa.022.0.lcssa.i)
  %i.fp = icmp slt i64 %i.ck, %i.d
  br i1 %i.fp, label %bb.b, label %._crit_edge, !llvm.loop !1102

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEElNS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEElS9_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS3_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_SQ_T0_SR_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #3 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.m, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.l, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.k, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %i.f = load ptr, ptr %.0910.i.i.i.i.i, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i, align 8, !tbaa !368
  %i.g = load ptr, ptr %.0811.i.i.i.i.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(52) %i.g) #25, !inline_history !16
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 3 uses
  %i.m = add nsw i64 %.012.i.i.i.i.i, -1
  %i.n = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.n, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !14

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i, %bb.f
  %.029.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 8 uses
  %.sroa.0.028.i = phi ptr [ %i.bb, %bb.f ], [ %0, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.019.027.i = phi ptr [ %.sroa.019.1.i, %bb.f ], [ %1, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i ] ; 7 uses
  %.not22.i = icmp eq ptr %.sroa.019.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.sroa.019.027.i, align 8, !tbaa !368 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(52) %i.o) #25, !inline_history !1103
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !388
  %i.u = mul i32 %i.t, %i.r
  %i.v = load ptr, ptr %.029.i, align 8, !tbaa !368 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(52) %i.v) #25, !inline_history !1104
  %i.aa = mul i32 %i.u, %i.z
  %i.ab = load ptr, ptr %.029.i, align 8, !tbaa !368 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !41
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(52) %i.ab) #25, !inline_history !1103
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !388
  %i.ah = mul i32 %i.ag, %i.ae
  %i.ai = load ptr, ptr %.sroa.019.027.i, align 8, !tbaa !368 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(52) %i.ai) #25, !inline_history !1104
  %i.an = mul i32 %i.ah, %i.am
  %i.ao = icmp ugt i32 %i.aa, %i.an
  br i1 %i.ao, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %.sroa.019.027.i, align 8, !tbaa !368
  store ptr null, ptr %.sroa.019.027.i, align 8, !tbaa !368
  %i.aq = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.ap, ptr %.sroa.0.028.i, align 8, !tbaa !368
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(52) %i.aq) #25, !inline_history !1105
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i, %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.av = load ptr, ptr %.029.i, align 8, !tbaa !368
  store ptr null, ptr %.029.i, align 8, !tbaa !368
  %i.aw = load ptr, ptr %.sroa.0.028.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.av, ptr %.sroa.0.028.i, align 8, !tbaa !368
  %.not.i.i.i.i13.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i13.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i14.i: ; preds = %bb.e
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(52) %i.aw) #25, !inline_history !1105
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i14.i, %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.029.i, i64 8
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i
  %.sroa.019.1.i = phi ptr [ %i.au, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %.sroa.019.027.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i ]
  %.1.i = phi ptr [ %.029.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i ], [ %i.ba, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit15.i ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8
  %.not.i = icmp eq ptr %.1.i, %i.l
  br i1 %.not.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit", label %.lr.ph.i, !llvm.loop !1106

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.bc = ptrtoint ptr %i.l to i64
  %i.bd = ptrtoint ptr %.029.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 3                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bo, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %i.bf, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bn, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.sroa.0.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.bm, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i ], [ %.029.i, %.critedge.i ] ; 3 uses
  %i.bh = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !368
  %i.bi = load ptr, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !368 ; 3 uses
  store ptr %i.bh, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(52) %i.bi) #25, !inline_history !1107
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i

_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  %i.bo = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bp = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS3_EEN9__gnu_cxx17__normal_iteratorIS7_St6vectorIS6_SaIS6_EEEESD_NS8_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_115MachineOutliner7outlineERNS1_6ModuleERSC_RNSG_17InstructionMapperERjE3$_0EEEvT_SQ_T0_SR_T1_T2_.exit", !llvm.loop !14

bb.g:                                             ; preds = %bb.a
  %i.bq = ptrtoint ptr %2 to i64
  %i.br = ptrtoint ptr %1 to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i24, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEES9_ET0_T_SF_SE_.exit31

.lr.ph.i.i.i.i.i24:                               ; preds = %bb.g, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30
  %.012.i.i.i.i.i25 = phi i64 [ %i.cc, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30 ], [ %i.bt, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i26 = phi ptr [ %i.cb, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i27 = phi ptr [ %i.ca, %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30 ], [ %1, %bb.g ] ; 3 uses
  %i.bv = load ptr, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !368
  store ptr null, ptr %.0910.i.i.i.i.i27, align 8, !tbaa !368
  %i.bw = load ptr, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !368 ; 3 uses
  store ptr %i.bv, ptr %.0811.i.i.i.i.i26, align 8, !tbaa !368
  %.not.i.i.i.i.i.i.i.i.i28 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i28, label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30, label %_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i29

_ZNKSt14default_deleteIN4llvm8outliner16OutlinedFunctionEEclEPS2_.exit.i.i.i.i.i.i.i.i.i29: ; preds = %.lr.ph.i.i.i.i.i24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(52) %i.bw) #25, !inline_history !16
  br label %_ZNSt10unique_ptrIN4llvm8outliner16OutlinedFunctionESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i30

end_hunk_0
