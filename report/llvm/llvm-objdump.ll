Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/llvm-objdump?download=true
inline.NumInlined: 12438
inline.NumDeleted: 5734
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 27
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_":bb.a

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit._crit_edge.i46.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit.i43.i"
  %.pre.i47.i = load i64, ptr %.sroa.020.026.i36.i, align 8, !tbaa !145
  br label %bb.h

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit._crit_edge32.i48.i", %.split.i39.i
  %i.co = phi i64 [ %.pre33.i49.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit._crit_edge32.i48.i" ], [ %i.bw, %.split.i39.i ]
  store i64 %i.co, ptr %.027.i35.i, align 8, !tbaa !723
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cp, i64 16, i1 false), !tbaa.struct !233
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37.i, i64 24
  br label %bb.i

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit._crit_edge.i46.i", %.split.i39.i
  %i.cs = phi i64 [ %.pre.i47.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESU_EEbT_T0_.exit._crit_edge.i46.i" ], [ %i.bx, %.split.i39.i ]
  store i64 %i.cs, ptr %.027.i35.i, align 8, !tbaa !723
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cu, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !233
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36.i, i64 24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.016.1.i40.i = phi ptr [ %i.cr, %bb.g ], [ %.sroa.016.025.i37.i, %bb.h ] ; 3 uses
  %.sroa.020.1.i41.i = phi ptr [ %.sroa.020.026.i36.i, %bb.g ], [ %i.cv, %bb.h ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.027.i35.i, i64 24 ; 2 uses
  %i.cx = icmp ne ptr %.sroa.020.1.i41.i, %i.bt
  %i.cy = icmp ne ptr %.sroa.016.1.i40.i, %1
  %or.cond.i42.i = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond.i42.i, label %.lr.ph.i34.i, label %.critedge.i17.i, !llvm.loop !3724

.critedge.i17.i:                                  ; preds = %bb.i, %._crit_edge.i
  %.sroa.016.0.lcssa.i18.i = phi ptr [ %i.bt, %._crit_edge.i ], [ %.sroa.016.1.i40.i, %bb.i ] ; 2 uses
  %.sroa.020.0.lcssa.i19.i = phi ptr [ %.sroa.058.0.lcssa.i, %._crit_edge.i ], [ %.sroa.020.1.i41.i, %bb.i ] ; 2 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.cw, %bb.i ] ; 2 uses
  %i.cz = ptrtoint ptr %i.bt to i64
  %i.da = ptrtoint ptr %.sroa.020.0.lcssa.i19.i to i64
  %i.db = sub i64 %i.cz, %i.da                    ; 2 uses
  %i.dc = icmp sgt i64 %i.db, 0
  br i1 %i.dc, label %.lr.ph.preheader.i.i.i.i.i.i29.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

.lr.ph.preheader.i.i.i.i.i.i29.i:                 ; preds = %.critedge.i17.i
  %i.dd = udiv exact i64 %i.db, 24
  br label %.lr.ph.i.i.i.i.i.i30.i

.lr.ph.i.i.i.i.i.i30.i:                           ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.lr.ph.preheader.i.i.i.i.i.i29.i
  %.012.i.i.i.i.i.i31.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i.i.i30.i ], [ %i.dd, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 2 uses
  %.0811.i.i.i.i.i.i32.i = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i30.i ], [ %.0.lcssa.i20.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %.0910.i.i.i.i.i.i33.i = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i30.i ], [ %.sroa.020.0.lcssa.i19.i, %.lr.ph.preheader.i.i.i.i.i.i29.i ] ; 3 uses
  %i.de = load i64, ptr %.0910.i.i.i.i.i.i33.i, align 8, !tbaa !145
  store i64 %i.de, ptr %.0811.i.i.i.i.i.i32.i, align 8, !tbaa !723
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !233
  %i.dh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33.i, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32.i, i64 24 ; 2 uses
  %i.dj = add nsw i64 %.012.i.i.i.i.i.i31.i, -1
  %i.dk = icmp samesign ugt i64 %.012.i.i.i.i.i.i31.i, 1
  br i1 %i.dk, label %.lr.ph.i.i.i.i.i.i30.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i, !llvm.loop !71

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %.lr.ph.i.i.i.i.i.i30.i, %.critedge.i17.i
  %.08.lcssa.i.i.i.i.i.i22.i = phi ptr [ %.0.lcssa.i20.i, %.critedge.i17.i ], [ %i.di, %.lr.ph.i.i.i.i.i.i30.i ]
  %i.dl = ptrtoint ptr %.sroa.016.0.lcssa.i18.i to i64
  %i.dm = sub i64 %i.a, %i.dl                     ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.preheader.i.i.i.i.i10.i24.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i10.i24.i:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.do = udiv exact i64 %i.dm, 24
  br label %.lr.ph.i.i.i.i.i11.i25.i

.lr.ph.i.i.i.i.i11.i25.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i
  %.012.i.i.i.i.i12.i26.i = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i11.i25.i ], [ %i.do, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 2 uses
  %.0811.i.i.i.i.i13.i27.i = phi ptr [ %i.dt, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.08.lcssa.i.i.i.i.i.i22.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %.0910.i.i.i.i.i14.i28.i = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i11.i25.i ], [ %.sroa.016.0.lcssa.i18.i, %.lr.ph.preheader.i.i.i.i.i10.i24.i ] ; 3 uses
  %i.dp = load i64, ptr %.0910.i.i.i.i.i14.i28.i, align 8, !tbaa !145
  store i64 %i.dp, ptr %.0811.i.i.i.i.i13.i27.i, align 8, !tbaa !723
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dr, ptr noundef nonnull align 8 dereferenceable(16) %i.dq, i64 16, i1 false), !tbaa.struct !233
  %i.ds = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28.i, i64 24
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27.i, i64 24
  %i.du = add nsw i64 %.012.i.i.i.i.i12.i26.i, -1
  %i.dv = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26.i, 1
  br i1 %i.dv, label %.lr.ph.i.i.i.i.i11.i25.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit", !llvm.loop !71

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i25.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.dw = shl nsw i64 %.056, 2                    ; 4 uses
  %.not72.i = icmp slt i64 %i.m, %i.dw
  br i1 %.not72.i, label %._crit_edge.i29, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit"
  %.idx.i23 = mul nsw i64 %.056, 48
  %.idx63.i = mul nsw i64 %.056, 96
  br label %bb.j

bb.j:                                             ; preds = %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i", %.lr.ph.i22
  %.sroa.022.074.i = phi ptr [ %0, %.lr.ph.i22 ], [ %i.gg, %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i" ]
  %.073.i = phi ptr [ %2, %.lr.ph.i22 ], [ %i.dy, %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i" ] ; 3 uses
  %i.dx = getelementptr inbounds i8, ptr %.073.i, i64 %.idx.i23 ; 3 uses
  %i.dy = getelementptr inbounds i8, ptr %.073.i, i64 %.idx63.i ; 4 uses
  br label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.j, %bb.m
  %.031.i.i = phi ptr [ %.1.i.i, %bb.m ], [ %.073.i, %bb.j ] ; 7 uses
  %.01630.i.i = phi ptr [ %.117.i.i, %bb.m ], [ %i.dx, %bb.j ] ; 7 uses
  %.sroa.0.028.i.i = phi ptr [ %i.ez, %bb.m ], [ %.sroa.022.074.i, %bb.j ] ; 5 uses
  %i.dz = load i64, ptr %.01630.i.i, align 8, !tbaa !723 ; 3 uses
  %i.ea = load i64, ptr %.031.i.i, align 8, !tbaa !723 ; 3 uses
  %.not.i.i.i.i25 = icmp eq i64 %i.dz, %i.ea
  br i1 %.not.i.i.i.i25, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i.i", label %.split.i.i26

.split.i.i26:                                     ; preds = %.lr.ph.i.i24
  %i.eb = icmp ult i64 %i.dz, %i.ea
  br i1 %i.eb, label %bb.k, label %bb.l

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i.i": ; preds = %.lr.ph.i.i24
  %i.ec = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i37 = load i64, ptr %i.ec, align 8, !tbaa !107
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !128
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 168
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = tail call noundef i64 %i.eh(ptr noundef nonnull align 8 dereferenceable(48) %i.ee, i64 %.sroa.0.0.copyload.i.i.i.i.i37) #34, !inline_history !3726
  %i.ej = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i9.i.i.i.i38 = load i64, ptr %i.ej, align 8, !tbaa !107
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !128
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 168
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = tail call noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(48) %i.el, i64 %.sroa.0.0.copyload.i9.i.i.i.i38) #34, !inline_history !3726
  %i.eq = icmp ult i64 %i.ei, %i.ep
  br i1 %i.eq, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i.i"
  %.pre37.i.i = load i64, ptr %.01630.i.i, align 8, !tbaa !145
  br label %bb.k

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i.i"
  %.pre.i.i39 = load i64, ptr %.031.i.i, align 8, !tbaa !145
  br label %bb.l

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i.i", %.split.i.i26
  %i.er = phi i64 [ %.pre37.i.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i.i" ], [ %i.dz, %.split.i.i26 ]
  store i64 %i.er, ptr %.sroa.0.028.i.i, align 8, !tbaa !723
  %i.es = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.es, i64 16, i1 false), !tbaa.struct !233
  %i.eu = getelementptr inbounds nuw i8, ptr %.01630.i.i, i64 24
  br label %bb.m

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i.i", %.split.i.i26
  %i.ev = phi i64 [ %.pre.i.i39, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i.i" ], [ %i.ea, %.split.i.i26 ]
  store i64 %i.ev, ptr %.sroa.0.028.i.i, align 8, !tbaa !723
  %i.ew = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ex, ptr noundef nonnull align 8 dereferenceable(16) %i.ew, i64 16, i1 false), !tbaa.struct !233
  %i.ey = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 24
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.117.i.i = phi ptr [ %i.eu, %bb.k ], [ %.01630.i.i, %bb.l ] ; 4 uses
  %.1.i.i = phi ptr [ %.031.i.i, %bb.k ], [ %i.ey, %bb.l ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i.i, i64 24 ; 5 uses
  %i.fa = icmp ne ptr %.1.i.i, %i.dx
  %i.fb = icmp ne ptr %.117.i.i, %i.dy
  %i.fc = select i1 %i.fa, i1 %i.fb, i1 false
  br i1 %i.fc, label %.lr.ph.i.i24, label %._crit_edge.i.i, !llvm.loop !3727

._crit_edge.i.i:                                  ; preds = %bb.m
  %i.fd = ptrtoint ptr %i.dx to i64
  %i.fe = ptrtoint ptr %.1.i.i to i64
  %i.ff = sub i64 %i.fd, %i.fe                    ; 2 uses
  %i.fg = icmp sgt i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.preheader.i.i.i.i.i.i.i32, label %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

.lr.ph.preheader.i.i.i.i.i.i.i32:                 ; preds = %._crit_edge.i.i
  %i.fh = udiv exact i64 %i.ff, 24
  br label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %.lr.ph.i.i.i.i.i.i.i33, %.lr.ph.preheader.i.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i.i34 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i.i33 ], [ %i.fh, %.lr.ph.preheader.i.i.i.i.i.i.i32 ] ; 2 uses
  %.0811.i.i.i.i.i.i.i35 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i.i33 ], [ %i.ez, %.lr.ph.preheader.i.i.i.i.i.i.i32 ] ; 3 uses
  %.0910.i.i.i.i.i.i.i36 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.1.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i32 ] ; 3 uses
  %i.fi = load i64, ptr %.0910.i.i.i.i.i.i.i36, align 8, !tbaa !145
  store i64 %i.fi, ptr %.0811.i.i.i.i.i.i.i35, align 8, !tbaa !723
  %i.fj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fk, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false), !tbaa.struct !233
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 24
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 24 ; 2 uses
  %i.fn = add nsw i64 %.012.i.i.i.i.i.i.i34, -1
  %i.fo = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i34, 1
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.i.i33, label %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i, !llvm.loop !71

_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i27 = phi ptr [ %i.ez, %._crit_edge.i.i ], [ %i.fm, %.lr.ph.i.i.i.i.i.i.i33 ]
  %i.fp = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i27 to i64 ; 3 uses
  %i.fq = ptrtoint ptr %i.ez to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = getelementptr inbounds i8, ptr %i.ez, i64 %i.fr ; 2 uses
  %i.ft = ptrtoint ptr %i.dy to i64               ; 2 uses
  %i.fu = ptrtoint ptr %.117.i.i to i64
  %i.fv = sub i64 %i.ft, %i.fu                    ; 2 uses
  %i.fw = icmp sgt i64 %i.fv, 0
  br i1 %i.fw, label %.lr.ph.preheader.i.i.i.i.i19.i.i, label %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i"

.lr.ph.preheader.i.i.i.i.i19.i.i:                 ; preds = %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.fx = udiv exact i64 %i.fv, 24
  br label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.gd, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.fx, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.gc, %.lr.ph.i.i.i.i.i20.i.i ], [ %i.fs, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.gb, %.lr.ph.i.i.i.i.i20.i.i ], [ %.117.i.i, %.lr.ph.preheader.i.i.i.i.i19.i.i ] ; 3 uses
  %i.fy = load i64, ptr %.0910.i.i.i.i.i23.i.i, align 8, !tbaa !145
  store i64 %i.fy, ptr %.0811.i.i.i.i.i22.i.i, align 8, !tbaa !723
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 8
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %i.fz, i64 16, i1 false), !tbaa.struct !233
  %i.gb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.gc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24 ; 2 uses
  %i.gd = add nsw i64 %.012.i.i.i.i.i21.i.i, -1
  %i.ge = icmp samesign ugt i64 %.012.i.i.i.i.i21.i.i, 1
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i20.i.i, label %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit24.loopexit.i.i, !llvm.loop !71

_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit24.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i20.i.i
  %3 = ptrtoint ptr %i.gc to i64
  br label %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i"

"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i": ; preds = %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit24.loopexit.i.i, %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %.08.lcssa.i.i.i.i.i18.i.i = phi i64 [ %i.fp, %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i ], [ %3, %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit24.loopexit.i.i ]
  %i.gf = sub i64 %.08.lcssa.i.i.i.i.i18.i.i, %i.fp
  %i.gg = getelementptr inbounds i8, ptr %i.fs, i64 %i.gf ; 2 uses
  %i.gh = sub i64 %i.l, %i.ft
  %i.gi = sdiv exact i64 %i.gh, 24                ; 2 uses
  %.not.i28 = icmp slt i64 %i.gi, %i.dw
  br i1 %.not.i28, label %._crit_edge.i29, label %bb.j, !llvm.loop !3728

._crit_edge.i29:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit"
  %.0.lcssa.i30 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit" ], [ %i.dy, %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit" ], [ %i.gg, %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i" ] ; 2 uses
  %.lcssa70.i = phi i64 [ %i.m, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit" ], [ %i.gi, %"_ZSt12__move_mergeIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEET0_T_SW_SW_SW_SV_T1_.exit.i" ]
  %.sroa.speculated.i31 = tail call i64 @llvm.smin.i64(i64 %i.n, i64 %.lcssa70.i) ; 2 uses
  %.idx65.i = mul nsw i64 %.sroa.speculated.i31, 24
  %i.gj = getelementptr inbounds i8, ptr %.0.lcssa.i30, i64 %.idx65.i ; 5 uses
  %i.gk = icmp ne i64 %.sroa.speculated.i31, 0
  %i.gl = icmp ne ptr %i.gj, %i.e
  %i.gm = and i1 %i.gk, %i.gl
  br i1 %i.gm, label %.lr.ph.i43.i, label %._crit_edge.i25.i

.lr.ph.i43.i:                                     ; preds = %._crit_edge.i29, %bb.p
  %.031.i44.i = phi ptr [ %.1.i50.i, %bb.p ], [ %.0.lcssa.i30, %._crit_edge.i29 ] ; 7 uses
  %.01630.i45.i = phi ptr [ %.117.i49.i, %bb.p ], [ %i.gj, %._crit_edge.i29 ] ; 7 uses
  %.sroa.0.028.i46.i = phi ptr [ %i.hn, %bb.p ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i29 ] ; 5 uses
  %i.gn = load i64, ptr %.01630.i45.i, align 8, !tbaa !723 ; 3 uses
  %i.go = load i64, ptr %.031.i44.i, align 8, !tbaa !723 ; 3 uses
  %.not.i.i.i47.i = icmp eq i64 %i.gn, %i.go
  br i1 %.not.i.i.i47.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i51.i", label %.split.i48.i

.split.i48.i:                                     ; preds = %.lr.ph.i43.i
  %i.gp = icmp ult i64 %i.gn, %i.go
  br i1 %i.gp, label %bb.n, label %bb.o

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i51.i": ; preds = %.lr.ph.i43.i
  %i.gq = getelementptr inbounds nuw i8, ptr %.01630.i45.i, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %.01630.i45.i, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i52.i = load i64, ptr %i.gq, align 8, !tbaa !107
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !128
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 168
  %i.gv = load ptr, ptr %i.gu, align 8
  %i.gw = tail call noundef i64 %i.gv(ptr noundef nonnull align 8 dereferenceable(48) %i.gs, i64 %.sroa.0.0.copyload.i.i.i.i52.i) #34, !inline_history !3726
  %i.gx = getelementptr inbounds nuw i8, ptr %.031.i44.i, i64 8
  %i.gy = getelementptr inbounds nuw i8, ptr %.031.i44.i, i64 16
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !229 ; 2 uses
  %.sroa.0.0.copyload.i9.i.i.i53.i = load i64, ptr %i.gx, align 8, !tbaa !107
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !128
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 168
  %i.hc = load ptr, ptr %i.hb, align 8
  %i.hd = tail call noundef i64 %i.hc(ptr noundef nonnull align 8 dereferenceable(48) %i.gz, i64 %.sroa.0.0.copyload.i9.i.i.i53.i) #34, !inline_history !3726
  %i.he = icmp ult i64 %i.gw, %i.hd
  br i1 %i.he, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i56.i", label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i54.i"

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i56.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i51.i"
  %.pre37.i57.i = load i64, ptr %.01630.i45.i, align 8, !tbaa !145
  br label %bb.n

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i54.i": ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit.i51.i"
  %.pre.i55.i = load i64, ptr %.031.i44.i, align 8, !tbaa !145
  br label %bb.o

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i56.i", %.split.i48.i
  %i.hf = phi i64 [ %.pre37.i57.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge36.i56.i" ], [ %i.gn, %.split.i48.i ]
  store i64 %i.hf, ptr %.sroa.0.028.i46.i, align 8, !tbaa !723
  %i.hg = getelementptr inbounds nuw i8, ptr %.01630.i45.i, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hh, ptr noundef nonnull align 8 dereferenceable(16) %i.hg, i64 16, i1 false), !tbaa.struct !233
  %i.hi = getelementptr inbounds nuw i8, ptr %.01630.i45.i, i64 24
  br label %bb.p

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i54.i", %.split.i48.i
  %i.hj = phi i64 [ %.pre.i55.i, %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclIPSt4pairImNS3_10SectionRefEESP_EEbT_T0_.exit._crit_edge.i54.i" ], [ %i.go, %.split.i48.i ]
  store i64 %i.hj, ptr %.sroa.0.028.i46.i, align 8, !tbaa !723
  %i.hk = getelementptr inbounds nuw i8, ptr %.031.i44.i, i64 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %i.hk, i64 16, i1 false), !tbaa.struct !233
  %i.hm = getelementptr inbounds nuw i8, ptr %.031.i44.i, i64 24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.117.i49.i = phi ptr [ %i.hi, %bb.n ], [ %.01630.i45.i, %bb.o ] ; 3 uses
  %.1.i50.i = phi ptr [ %.031.i44.i, %bb.n ], [ %i.hm, %bb.o ] ; 3 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46.i, i64 24 ; 2 uses
  %i.ho = icmp ne ptr %.1.i50.i, %i.gj
  %i.hp = icmp ne ptr %.117.i49.i, %i.e
  %i.hq = select i1 %i.ho, i1 %i.hp, i1 false
  br i1 %i.hq, label %.lr.ph.i43.i, label %._crit_edge.i25.i, !llvm.loop !3727

._crit_edge.i25.i:                                ; preds = %bb.p, %._crit_edge.i29
  %.sroa.0.0.lcssa.i26.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i29 ], [ %i.hn, %bb.p ] ; 4 uses
  %.016.lcssa.i27.i = phi ptr [ %i.gj, %._crit_edge.i29 ], [ %.117.i49.i, %bb.p ] ; 2 uses
  %.0.lcssa.i28.i = phi ptr [ %.0.lcssa.i30, %._crit_edge.i29 ], [ %.1.i50.i, %bb.p ] ; 2 uses
  %i.hr = ptrtoint ptr %i.gj to i64
  %i.hs = ptrtoint ptr %.0.lcssa.i28.i to i64
  %i.ht = sub i64 %i.hr, %i.hs                    ; 2 uses
  %i.hu = icmp sgt i64 %i.ht, 0
  br i1 %i.hu, label %.lr.ph.preheader.i.i.i.i.i.i38.i, label %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i

.lr.ph.preheader.i.i.i.i.i.i38.i:                 ; preds = %._crit_edge.i25.i
  %i.hv = udiv exact i64 %i.ht, 24
  br label %.lr.ph.i.i.i.i.i.i39.i

.lr.ph.i.i.i.i.i.i39.i:                           ; preds = %.lr.ph.i.i.i.i.i.i39.i, %.lr.ph.preheader.i.i.i.i.i.i38.i
  %.012.i.i.i.i.i.i40.i = phi i64 [ %i.ib, %.lr.ph.i.i.i.i.i.i39.i ], [ %i.hv, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 2 uses
  %.0811.i.i.i.i.i.i41.i = phi ptr [ %i.ia, %.lr.ph.i.i.i.i.i.i39.i ], [ %.sroa.0.0.lcssa.i26.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %.0910.i.i.i.i.i.i42.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i.i39.i ], [ %.0.lcssa.i28.i, %.lr.ph.preheader.i.i.i.i.i.i38.i ] ; 3 uses
  %i.hw = load i64, ptr %.0910.i.i.i.i.i.i42.i, align 8, !tbaa !145
  store i64 %i.hw, ptr %.0811.i.i.i.i.i.i41.i, align 8, !tbaa !723
  %i.hx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 8
  %i.hy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false), !tbaa.struct !233
  %i.hz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42.i, i64 24
  %i.ia = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41.i, i64 24 ; 2 uses
  %i.ib = add nsw i64 %.012.i.i.i.i.i.i40.i, -1
  %i.ic = icmp samesign ugt i64 %.012.i.i.i.i.i.i40.i, 1
  br i1 %i.ic, label %.lr.ph.i.i.i.i.i.i39.i, label %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i, !llvm.loop !71

_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i: ; preds = %.lr.ph.i.i.i.i.i.i39.i, %._crit_edge.i25.i
  %.08.lcssa.i.i.i.i.i.i30.i = phi ptr [ %.sroa.0.0.lcssa.i26.i, %._crit_edge.i25.i ], [ %i.ia, %.lr.ph.i.i.i.i.i.i39.i ]
  %i.id = ptrtoint ptr %.016.lcssa.i27.i to i64
  %i.ie = sub i64 %i.l, %i.id                     ; 2 uses
  %i.if = icmp sgt i64 %i.ie, 0
  br i1 %i.if, label %.lr.ph.preheader.i.i.i.i.i19.i32.i, label %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i19.i32.i:               ; preds = %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.ig = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30.i to i64
  %i.ih = ptrtoint ptr %.sroa.0.0.lcssa.i26.i to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26.i, i64 %i.ii
  %i.ik = udiv exact i64 %i.ie, 24
  br label %.lr.ph.i.i.i.i.i20.i33.i

.lr.ph.i.i.i.i.i20.i33.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i
  %.012.i.i.i.i.i21.i34.i = phi i64 [ %i.iq, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ik, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i35.i = phi ptr [ %i.ip, %.lr.ph.i.i.i.i.i20.i33.i ], [ %i.ij, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i36.i = phi ptr [ %i.io, %.lr.ph.i.i.i.i.i20.i33.i ], [ %.016.lcssa.i27.i, %.lr.ph.preheader.i.i.i.i.i19.i32.i ] ; 3 uses
  %i.il = load i64, ptr %.0910.i.i.i.i.i23.i36.i, align 8, !tbaa !145
  store i64 %i.il, ptr %.0811.i.i.i.i.i22.i35.i, align 8, !tbaa !723
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %i.im, i64 16, i1 false), !tbaa.struct !233
  %i.io = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36.i, i64 24
  %i.ip = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35.i, i64 24
  %i.iq = add nsw i64 %.012.i.i.i.i.i21.i34.i, -1
  %i.ir = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34.i, 1
  br i1 %i.ir, label %.lr.ph.i.i.i.i.i20.i33.i, label %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit", !llvm.loop !71

"_ZSt17__merge_sort_loopIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i20.i33.i, %_ZSt4moveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i29.i
  %i.is = icmp slt i64 %i.dw, %i.d
  br i1 %i.is, label %bb.b, label %._crit_edge, !llvm.loop !3729

._crit_edge:                                      ; preds = %"_ZSt17__merge_sort_loopIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_T2_.exit", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_.exit.thread", %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_T0_T1_.exit"
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairImN4llvm6object10SectionRefEESt6vectorIS6_SaIS6_EEEElS7_NS0_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS4_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS3_7objdump13SourcePrinterEbRNS3_11raw_ostreamEE3$_4EEEvT_SV_SV_T0_SW_T1_T2_"(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i.i.i.i, label %"_ZSt21__move_merge_adaptiveIPSt4pairImN4llvm6object10SectionRefEEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEESB_NS6_5__ops15_Iter_comp_iterIZL17disassembleObjectRNS2_10ObjectFileERKSE_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalISJ_ERNS1_7objdump13SourcePrinterEbRNS1_11raw_ostreamEE3$_4EEEvT_SV_T0_SW_T1_T2_.exit"

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.b
  %i.e = udiv exact i64 %i.c, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.k, %.lr.ph.i.i.i.i.i ], [ %i.e, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i.i ], [ %5, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i.i ], [ %0, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %i.f = load i64, ptr %.0910.i.i.i.i.i, align 8, !tbaa !145
  store i64 %i.f, ptr %.0811.i.i.i.i.i, align 8, !tbaa !723
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !233
  %i.i = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 3 uses
  %i.k = add nsw i64 %.012.i.i.i.i.i, -1
  %i.l = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.l, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !71

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.i.i, %bb.f
  %.027.i = phi ptr [ %.1.i, %bb.f ], [ %5, %.lr.ph.i.i.i.i.i ] ; 9 uses
  %.sroa.0.025.i = phi ptr [ %i.am, %bb.f ], [ %0, %.lr.ph.i.i.i.i.i ] ; 6 uses
  %.sroa.016.024.i = phi ptr [ %.sroa.016.1.i, %bb.f ], [ %1, %.lr.ph.i.i.i.i.i ] ; 8 uses
  %.not19.i = icmp eq ptr %.sroa.016.024.i, %2
  br i1 %.not19.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = load i64, ptr %.sroa.016.024.i, align 8, !tbaa !723 ; 3 uses
  %i.n = load i64, ptr %.027.i, align 8, !tbaa !723 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.m, %i.n
  br i1 %.not.i.i.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZL17disassembleObjectRN4llvm6object10ObjectFileERKS4_RN12_GLOBAL__N_118DisassemblerTargetERSt8optionalIS9_ERNS2_7objdump13SourcePrinterEbRNS2_11raw_ostreamEE3$_4EclINS_17__normal_iteratorIPSt4pairImNS3_10SectionRefEESt6vectorISP_SaISP_EEEESQ_EEbT_T0_.exit.i", label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.o = icmp ult i64 %i.m, %i.n
end_hunk_0
