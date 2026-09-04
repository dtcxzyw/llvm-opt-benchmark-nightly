Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SearchableTableEmitter?download=true
inline.NumInlined: 4079
inline.NumDeleted: 1745
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 44
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_":bb.a
  %i.et = ashr exact i64 %i.es, 4                 ; 5 uses
  %i.eu = icmp sgt i64 %i.et, 0
  br i1 %i.eu, label %.lr.ph.i.i.i.i.i11.i27.i.preheader, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit"

.lr.ph.i.i.i.i.i11.i27.i.preheader:               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i24.i
  %xtraiter136 = and i64 %i.et, 3                 ; 2 uses
  %lcmp.mod137.not = icmp eq i64 %xtraiter136, 0
  br i1 %lcmp.mod137.not, label %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit, label %.lr.ph.i.i.i.i.i11.i27.i.prol

.lr.ph.i.i.i.i.i11.i27.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i11.i27.i.preheader, %.lr.ph.i.i.i.i.i11.i27.i.prol
  %.012.i.i.i.i.i12.i28.i.prol = phi i64 [ %i.fb, %.lr.ph.i.i.i.i.i11.i27.i.prol ], [ %i.et, %.lr.ph.i.i.i.i.i11.i27.i.preheader ]
  %.0811.i.i.i.i.i13.i29.i.prol = phi ptr [ %i.fa, %.lr.ph.i.i.i.i.i11.i27.i.prol ], [ %.08.lcssa.i.i.i.i.i.i25.i, %.lr.ph.i.i.i.i.i11.i27.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i14.i30.i.prol = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i11.i27.i.prol ], [ %.sroa.01.0.lcssa.i21.i, %.lr.ph.i.i.i.i.i11.i27.i.preheader ] ; 3 uses
  %prol.iter138 = phi i64 [ %prol.iter138.next, %.lr.ph.i.i.i.i.i11.i27.i.prol ], [ 0, %.lr.ph.i.i.i.i.i11.i27.i.preheader ]
  %i.ev = load ptr, ptr %.0910.i.i.i.i.i14.i30.i.prol, align 8, !tbaa !93
  store ptr %i.ev, ptr %.0811.i.i.i.i.i13.i29.i.prol, align 8, !tbaa !242
  %i.ew = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i.prol, i64 8
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !145
  %i.ey = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i.prol, i64 8
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !223
  %i.ez = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i.prol, i64 16 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i.prol, i64 16 ; 2 uses
  %i.fb = add nsw i64 %.012.i.i.i.i.i12.i28.i.prol, -1 ; 2 uses
  %prol.iter138.next = add i64 %prol.iter138, 1   ; 2 uses
  %prol.iter138.cmp.not = icmp eq i64 %prol.iter138.next, %xtraiter136
  br i1 %prol.iter138.cmp.not, label %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit, label %.lr.ph.i.i.i.i.i11.i27.i.prol, !llvm.loop !766

.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i11.i27.i.prol, %.lr.ph.i.i.i.i.i11.i27.i.preheader
  %.012.i.i.i.i.i12.i28.i.unr = phi i64 [ %i.et, %.lr.ph.i.i.i.i.i11.i27.i.preheader ], [ %i.fb, %.lr.ph.i.i.i.i.i11.i27.i.prol ]
  %.0811.i.i.i.i.i13.i29.i.unr = phi ptr [ %.08.lcssa.i.i.i.i.i.i25.i, %.lr.ph.i.i.i.i.i11.i27.i.preheader ], [ %i.fa, %.lr.ph.i.i.i.i.i11.i27.i.prol ]
  %.0910.i.i.i.i.i14.i30.i.unr = phi ptr [ %.sroa.01.0.lcssa.i21.i, %.lr.ph.i.i.i.i.i11.i27.i.preheader ], [ %i.ez, %.lr.ph.i.i.i.i.i11.i27.i.prol ]
  %i.fc = icmp ult i64 %i.et, 4
  br i1 %i.fc, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i11.i27.i

.lr.ph.i.i.i.i.i11.i27.i:                         ; preds = %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit, %.lr.ph.i.i.i.i.i11.i27.i
  %.012.i.i.i.i.i12.i28.i = phi i64 [ %i.gb, %.lr.ph.i.i.i.i.i11.i27.i ], [ %.012.i.i.i.i.i12.i28.i.unr, %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i13.i29.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i11.i27.i ], [ %.0811.i.i.i.i.i13.i29.i.unr, %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i14.i30.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i11.i27.i ], [ %.0910.i.i.i.i.i14.i30.i.unr, %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit ] ; 9 uses
  %i.fd = load ptr, ptr %.0910.i.i.i.i.i14.i30.i, align 8, !tbaa !93
  store ptr %i.fd, ptr %.0811.i.i.i.i.i13.i29.i, align 8, !tbaa !242
  %i.fe = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !145
  %i.fg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 8
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !223
  %i.fh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 16
  %i.fj = load ptr, ptr %i.fh, align 8, !tbaa !93
  store ptr %i.fj, ptr %i.fi, align 8, !tbaa !242
  %i.fk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 24
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !145
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 24
  store i32 %i.fl, ptr %i.fm, align 8, !tbaa !223
  %i.fn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 32
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !93
  store ptr %i.fp, ptr %i.fo, align 8, !tbaa !242
  %i.fq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 40
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !145
  %i.fs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 40
  store i32 %i.fr, ptr %i.fs, align 8, !tbaa !223
  %i.ft = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 48
  %i.fu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 48
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !93
  store ptr %i.fv, ptr %i.fu, align 8, !tbaa !242
  %i.fw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 56
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !145
  %i.fy = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 56
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !223
  %i.fz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i30.i, i64 64
  %i.ga = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i29.i, i64 64
  %i.gb = add nsw i64 %.012.i.i.i.i.i12.i28.i, -4
  %i.gc = icmp sgt i64 %.012.i.i.i.i.i12.i28.i, 4
  br i1 %i.gc, label %.lr.ph.i.i.i.i.i11.i27.i, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit", !llvm.loop !18

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit": ; preds = %.lr.ph.i.i.i.i.i11.i27.i.prol.loopexit, %.lr.ph.i.i.i.i.i11.i27.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_ET0_T_SE_SD_.exit.i24.i
  %i.gd = shl nsw i64 %.053, 2                    ; 4 uses
  %.not74.i = icmp slt i64 %i.d, %i.gd
  br i1 %.not74.i, label %._crit_edge.i30, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit"
  %.idx.i23 = shl nsw i64 %.053, 5                ; 2 uses
  %.idx65.i = shl nsw i64 %.053, 6                ; 2 uses
  %.not66.i = icmp eq i64 %.idx.i23, %.idx65.i
  br label %bb.d

bb.d:                                             ; preds = %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i", %.lr.ph.i22
  %.sroa.022.076.i = phi ptr [ %0, %.lr.ph.i22 ], [ %i.jr, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 2 uses
  %.075.i = phi ptr [ %2, %.lr.ph.i22 ], [ %i.gf, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 4 uses
  %i.ge = getelementptr inbounds i8, ptr %.075.i, i64 %.idx.i23 ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.075.i, i64 %.idx65.i ; 4 uses
  br i1 %.not66.i, label %._crit_edge.i.i, label %.lr.ph.i.i24

.lr.ph.i.i24:                                     ; preds = %bb.d, %.lr.ph.i.i24
  %.07.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i24 ], [ %.075.i, %bb.d ] ; 3 uses
  %.0166.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i24 ], [ %i.ge, %bb.d ] ; 3 uses
  %.sroa.0.05.i.i = phi ptr [ %i.gi, %.lr.ph.i.i24 ], [ %.sroa.022.076.i, %bb.d ] ; 3 uses
  %.016.val.i.i = load ptr, ptr %.0166.i.i, align 8, !tbaa !242
  %.0.val.i.i = load ptr, ptr %.07.i.i, align 8, !tbaa !242
  %i.gg = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexE(ptr noundef nonnull readonly align 8 dereferenceable(112) %3, ptr noundef %.016.val.i.i, ptr noundef %.0.val.i.i, ptr noundef nonnull readonly align 8 dereferenceable(114) %4) ; 3 uses
  %.sink12.in.i.i = select i1 %i.gg, ptr %.0166.i.i, ptr %.07.i.i ; 2 uses
  %.117.idx.i.i = select i1 %i.gg, i64 16, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.0166.i.i, i64 %.117.idx.i.i ; 3 uses
  %.1.idx.i.i = select i1 %i.gg, i64 0, i64 16
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 %.1.idx.i.i ; 3 uses
  %.sink.in.i.i25 = getelementptr inbounds nuw i8, ptr %.sink12.in.i.i, i64 8
  %.sink.i.i26 = load i32, ptr %.sink.in.i.i25, align 4, !tbaa !145
  %.sink12.i.i = load ptr, ptr %.sink12.in.i.i, align 8, !tbaa !93
  store ptr %.sink12.i.i, ptr %.sroa.0.05.i.i, align 8, !tbaa !242
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 8
  store i32 %.sink.i.i26, ptr %i.gh, align 8, !tbaa !223
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i.i, i64 16 ; 2 uses
  %i.gj = icmp ne ptr %.1.i.i, %i.ge
  %i.gk = icmp ne ptr %.117.i.i, %i.gf
  %i.gl = select i1 %i.gj, i1 %i.gk, i1 false
  br i1 %i.gl, label %.lr.ph.i.i24, label %._crit_edge.i.i, !llvm.loop !767

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i24, %bb.d
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.022.076.i, %bb.d ], [ %i.gi, %.lr.ph.i.i24 ] ; 5 uses
  %.016.lcssa.i.i = phi ptr [ %i.ge, %bb.d ], [ %.117.i.i, %.lr.ph.i.i24 ] ; 3 uses
  %.0.lcssa.i.i27 = phi ptr [ %.075.i, %bb.d ], [ %.1.i.i, %.lr.ph.i.i24 ] ; 3 uses
  %i.gm = ptrtoint ptr %i.ge to i64
  %i.gn = ptrtoint ptr %.0.lcssa.i.i27 to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 4                 ; 5 uses
  %i.gq = icmp sgt i64 %i.gp, 0
  br i1 %i.gq, label %.lr.ph.i.i.i.i.i.i.i33.preheader, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.i.i33.preheader:                 ; preds = %._crit_edge.i.i
  %xtraiter139 = and i64 %i.gp, 3                 ; 2 uses
  %lcmp.mod140.not = icmp eq i64 %xtraiter139, 0
  br i1 %lcmp.mod140.not, label %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i33.prol

.lr.ph.i.i.i.i.i.i.i33.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i33.preheader, %.lr.ph.i.i.i.i.i.i.i33.prol
  %.012.i.i.i.i.i.i.i34.prol = phi i64 [ %i.gx, %.lr.ph.i.i.i.i.i.i.i33.prol ], [ %i.gp, %.lr.ph.i.i.i.i.i.i.i33.preheader ]
  %.0811.i.i.i.i.i.i.i35.prol = phi ptr [ %i.gw, %.lr.ph.i.i.i.i.i.i.i33.prol ], [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i33.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i.i36.prol = phi ptr [ %i.gv, %.lr.ph.i.i.i.i.i.i.i33.prol ], [ %.0.lcssa.i.i27, %.lr.ph.i.i.i.i.i.i.i33.preheader ] ; 3 uses
  %prol.iter141 = phi i64 [ %prol.iter141.next, %.lr.ph.i.i.i.i.i.i.i33.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i33.preheader ]
  %i.gr = load ptr, ptr %.0910.i.i.i.i.i.i.i36.prol, align 8, !tbaa !93
  store ptr %i.gr, ptr %.0811.i.i.i.i.i.i.i35.prol, align 8, !tbaa !242
  %i.gs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36.prol, i64 8
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !145
  %i.gu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35.prol, i64 8
  store i32 %i.gt, ptr %i.gu, align 8, !tbaa !223
  %i.gv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36.prol, i64 16 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35.prol, i64 16 ; 3 uses
  %i.gx = add nsw i64 %.012.i.i.i.i.i.i.i34.prol, -1 ; 2 uses
  %prol.iter141.next = add i64 %prol.iter141, 1   ; 2 uses
  %prol.iter141.cmp.not = icmp eq i64 %prol.iter141.next, %xtraiter139
  br i1 %prol.iter141.cmp.not, label %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i33.prol, !llvm.loop !768

.lr.ph.i.i.i.i.i.i.i33.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i33.prol, %.lr.ph.i.i.i.i.i.i.i33.preheader
  %.012.i.i.i.i.i.i.i34.unr = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i33.prol ]
  %.0811.i.i.i.i.i.i.i35.unr = phi ptr [ %.sroa.0.0.lcssa.i.i, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i33.prol ]
  %.0910.i.i.i.i.i.i.i36.unr = phi ptr [ %.0.lcssa.i.i27, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.gv, %.lr.ph.i.i.i.i.i.i.i33.prol ]
  %.lcssa122.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i33.preheader ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i33.prol ]
  %i.gy = icmp ult i64 %i.gp, 4
  br i1 %i.gy, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i33
  %.012.i.i.i.i.i.i.i34 = phi i64 [ %i.hx, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.012.i.i.i.i.i.i.i34.unr, %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i.i35 = phi ptr [ %i.hw, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.0811.i.i.i.i.i.i.i35.unr, %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i.i36 = phi ptr [ %i.hv, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.0910.i.i.i.i.i.i.i36.unr, %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit ] ; 9 uses
  %i.gz = load ptr, ptr %.0910.i.i.i.i.i.i.i36, align 8, !tbaa !93
  store ptr %i.gz, ptr %.0811.i.i.i.i.i.i.i35, align 8, !tbaa !242
  %i.ha = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 8
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !145
  %i.hc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 8
  store i32 %i.hb, ptr %i.hc, align 8, !tbaa !223
  %i.hd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 16
  %i.he = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 16
  %i.hf = load ptr, ptr %i.hd, align 8, !tbaa !93
  store ptr %i.hf, ptr %i.he, align 8, !tbaa !242
  %i.hg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 24
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !145
  %i.hi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 24
  store i32 %i.hh, ptr %i.hi, align 8, !tbaa !223
  %i.hj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 32
  %i.hk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 32
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !93
  store ptr %i.hl, ptr %i.hk, align 8, !tbaa !242
  %i.hm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 40
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !145
  %i.ho = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 40
  store i32 %i.hn, ptr %i.ho, align 8, !tbaa !223
  %i.hp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 48
  %i.hq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 48
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !93
  store ptr %i.hr, ptr %i.hq, align 8, !tbaa !242
  %i.hs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 56
  %i.ht = load i32, ptr %i.hs, align 8, !tbaa !145
  %i.hu = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 56
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !223
  %i.hv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i36, i64 64
  %i.hw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i35, i64 64 ; 2 uses
  %i.hx = add nsw i64 %.012.i.i.i.i.i.i.i34, -4
  %i.hy = icmp sgt i64 %.012.i.i.i.i.i.i.i34, 4
  br i1 %i.hy, label %.lr.ph.i.i.i.i.i.i.i33, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i, !llvm.loop !18

_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i33, %._crit_edge.i.i
  %.08.lcssa.i.i.i.i.i.i.i28 = phi ptr [ %.sroa.0.0.lcssa.i.i, %._crit_edge.i.i ], [ %.lcssa122.unr, %.lr.ph.i.i.i.i.i.i.i33.prol.loopexit ], [ %i.hw, %.lr.ph.i.i.i.i.i.i.i33 ]
  %i.hz = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i.i28 to i64 ; 2 uses
  %i.ia = ptrtoint ptr %.sroa.0.0.lcssa.i.i to i64
  %i.ib = sub i64 %i.hz, %i.ia
  %i.ic = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i.i, i64 %i.ib ; 4 uses
  %i.id = ptrtoint ptr %i.gf to i64               ; 2 uses
  %i.ie = ptrtoint ptr %.016.lcssa.i.i to i64
  %i.if = sub i64 %i.id, %i.ie
  %i.ig = ashr exact i64 %i.if, 4                 ; 5 uses
  %i.ih = icmp sgt i64 %i.ig, 0
  br i1 %i.ih, label %.lr.ph.i.i.i.i.i20.i.i.preheader, label %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i"

.lr.ph.i.i.i.i.i20.i.i.preheader:                 ; preds = %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %xtraiter142 = and i64 %i.ig, 3                 ; 2 uses
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  br i1 %lcmp.mod143.not, label %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i20.i.i.prol

.lr.ph.i.i.i.i.i20.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i20.i.i.preheader, %.lr.ph.i.i.i.i.i20.i.i.prol
  %.012.i.i.i.i.i21.i.i.prol = phi i64 [ %i.io, %.lr.ph.i.i.i.i.i20.i.i.prol ], [ %i.ig, %.lr.ph.i.i.i.i.i20.i.i.preheader ]
  %.0811.i.i.i.i.i22.i.i.prol = phi ptr [ %i.in, %.lr.ph.i.i.i.i.i20.i.i.prol ], [ %i.ic, %.lr.ph.i.i.i.i.i20.i.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i23.i.i.prol = phi ptr [ %i.im, %.lr.ph.i.i.i.i.i20.i.i.prol ], [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i20.i.i.preheader ] ; 3 uses
  %prol.iter144 = phi i64 [ %prol.iter144.next, %.lr.ph.i.i.i.i.i20.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i20.i.i.preheader ]
  %i.ii = load ptr, ptr %.0910.i.i.i.i.i23.i.i.prol, align 8, !tbaa !93
  store ptr %i.ii, ptr %.0811.i.i.i.i.i22.i.i.prol, align 8, !tbaa !242
  %i.ij = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i.prol, i64 8
  %i.ik = load i32, ptr %i.ij, align 8, !tbaa !145
  %i.il = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i.prol, i64 8
  store i32 %i.ik, ptr %i.il, align 8, !tbaa !223
  %i.im = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i.prol, i64 16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i.prol, i64 16 ; 3 uses
  %i.io = add nsw i64 %.012.i.i.i.i.i21.i.i.prol, -1 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i20.i.i.prol, !llvm.loop !769

.lr.ph.i.i.i.i.i20.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i20.i.i.prol, %.lr.ph.i.i.i.i.i20.i.i.preheader
  %.012.i.i.i.i.i21.i.i.unr = phi i64 [ %i.ig, %.lr.ph.i.i.i.i.i20.i.i.preheader ], [ %i.io, %.lr.ph.i.i.i.i.i20.i.i.prol ]
  %.0811.i.i.i.i.i22.i.i.unr = phi ptr [ %i.ic, %.lr.ph.i.i.i.i.i20.i.i.preheader ], [ %i.in, %.lr.ph.i.i.i.i.i20.i.i.prol ]
  %.0910.i.i.i.i.i23.i.i.unr = phi ptr [ %.016.lcssa.i.i, %.lr.ph.i.i.i.i.i20.i.i.preheader ], [ %i.im, %.lr.ph.i.i.i.i.i20.i.i.prol ]
  %.lcssa123.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i20.i.i.preheader ], [ %i.in, %.lr.ph.i.i.i.i.i20.i.i.prol ]
  %i.ip = icmp ult i64 %i.ig, 4
  br i1 %i.ip, label %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i", label %.lr.ph.i.i.i.i.i20.i.i

.lr.ph.i.i.i.i.i20.i.i:                           ; preds = %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i20.i.i
  %.012.i.i.i.i.i21.i.i = phi i64 [ %i.jo, %.lr.ph.i.i.i.i.i20.i.i ], [ %.012.i.i.i.i.i21.i.i.unr, %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i22.i.i = phi ptr [ %i.jn, %.lr.ph.i.i.i.i.i20.i.i ], [ %.0811.i.i.i.i.i22.i.i.unr, %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i23.i.i = phi ptr [ %i.jm, %.lr.ph.i.i.i.i.i20.i.i ], [ %.0910.i.i.i.i.i23.i.i.unr, %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit ] ; 9 uses
  %i.iq = load ptr, ptr %.0910.i.i.i.i.i23.i.i, align 8, !tbaa !93
  store ptr %i.iq, ptr %.0811.i.i.i.i.i22.i.i, align 8, !tbaa !242
  %i.ir = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 8
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !145
  %i.it = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 8
  store i32 %i.is, ptr %i.it, align 8, !tbaa !223
  %i.iu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 16
  %i.iv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 16
  %i.iw = load ptr, ptr %i.iu, align 8, !tbaa !93
  store ptr %i.iw, ptr %i.iv, align 8, !tbaa !242
  %i.ix = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 24
  %i.iy = load i32, ptr %i.ix, align 8, !tbaa !145
  %i.iz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 24
  store i32 %i.iy, ptr %i.iz, align 8, !tbaa !223
  %i.ja = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 32
  %i.jc = load ptr, ptr %i.ja, align 8, !tbaa !93
  store ptr %i.jc, ptr %i.jb, align 8, !tbaa !242
  %i.jd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 40
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !145
  %i.jf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 40
  store i32 %i.je, ptr %i.jf, align 8, !tbaa !223
  %i.jg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 48
  %i.jh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 48
  %i.ji = load ptr, ptr %i.jg, align 8, !tbaa !93
  store ptr %i.ji, ptr %i.jh, align 8, !tbaa !242
  %i.jj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 56
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !145
  %i.jl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 56
  store i32 %i.jk, ptr %i.jl, align 8, !tbaa !223
  %i.jm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i.i, i64 64
  %i.jn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i.i, i64 64 ; 2 uses
  %i.jo = add nsw i64 %.012.i.i.i.i.i21.i.i, -4
  %i.jp = icmp sgt i64 %.012.i.i.i.i.i21.i.i, 4
  br i1 %i.jp, label %.lr.ph.i.i.i.i.i20.i.i, label %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i", !llvm.loop !18

"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i": ; preds = %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i20.i.i, %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i
  %.08.lcssa.i.i.i.i.i19.i.i = phi ptr [ %i.ic, %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i.i ], [ %.lcssa123.unr, %.lr.ph.i.i.i.i.i20.i.i.prol.loopexit ], [ %i.jn, %.lr.ph.i.i.i.i.i20.i.i ]
  %5 = ptrtoint ptr %.08.lcssa.i.i.i.i.i19.i.i to i64
  %i.jq = sub i64 %5, %i.hz
  %i.jr = getelementptr inbounds i8, ptr %i.ic, i64 %i.jq ; 2 uses
  %i.js = sub i64 %i.l, %i.id
  %i.jt = ashr exact i64 %i.js, 4                 ; 2 uses
  %.not.i29 = icmp slt i64 %i.jt, %i.gd
  br i1 %.not.i29, label %._crit_edge.i30, label %bb.d, !llvm.loop !770

._crit_edge.i30:                                  ; preds = %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit"
  %.0.lcssa.i31 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit" ], [ %i.gf, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit" ], [ %i.jr, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i" ] ; 2 uses
  %.lcssa72.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPKN4llvm6RecordEjESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS3_19StringToOffsetTableERNS3_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit" ], [ %i.jt, %"_ZSt12__move_mergeIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEENS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEET0_T_SU_SU_SU_ST_T1_.exit.i" ]
  %.sroa.speculated.i32 = tail call i64 @llvm.smin.i64(i64 %i.m, i64 %.lcssa72.i) ; 2 uses
  %.idx67.i = shl nsw i64 %.sroa.speculated.i32, 4
  %i.ju = getelementptr inbounds i8, ptr %.0.lcssa.i31, i64 %.idx67.i ; 5 uses
  %i.jv = icmp ne i64 %.sroa.speculated.i32, 0
  %i.jw = icmp ne ptr %i.ju, %i.e
  %i.jx = and i1 %i.jv, %i.jw
  br i1 %i.jx, label %.lr.ph.i44.i, label %._crit_edge.i28.i

.lr.ph.i44.i:                                     ; preds = %._crit_edge.i30, %.lr.ph.i44.i
  %.07.i45.i = phi ptr [ %.1.i54.i, %.lr.ph.i44.i ], [ %.0.lcssa.i31, %._crit_edge.i30 ] ; 3 uses
  %.0166.i46.i = phi ptr [ %.117.i52.i, %.lr.ph.i44.i ], [ %i.ju, %._crit_edge.i30 ] ; 3 uses
  %.sroa.0.05.i47.i = phi ptr [ %i.ka, %.lr.ph.i44.i ], [ %.sroa.022.0.lcssa.i, %._crit_edge.i30 ] ; 3 uses
  %.016.val.i48.i = load ptr, ptr %.0166.i46.i, align 8, !tbaa !242
  %.0.val.i49.i = load ptr, ptr %.07.i45.i, align 8, !tbaa !242
  %i.jy = tail call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_122SearchableTableEmitter9compareByEPKN4llvm6RecordES4_RKNS_11SearchIndexE(ptr noundef nonnull readonly align 8 dereferenceable(112) %3, ptr noundef %.016.val.i48.i, ptr noundef %.0.val.i49.i, ptr noundef nonnull readonly align 8 dereferenceable(114) %4) ; 3 uses
  %.sink12.in.i50.i = select i1 %i.jy, ptr %.0166.i46.i, ptr %.07.i45.i ; 2 uses
  %.117.idx.i51.i = select i1 %i.jy, i64 16, i64 0
  %.117.i52.i = getelementptr inbounds nuw i8, ptr %.0166.i46.i, i64 %.117.idx.i51.i ; 3 uses
  %.1.idx.i53.i = select i1 %i.jy, i64 0, i64 16
  %.1.i54.i = getelementptr inbounds nuw i8, ptr %.07.i45.i, i64 %.1.idx.i53.i ; 3 uses
  %.sink.in.i55.i = getelementptr inbounds nuw i8, ptr %.sink12.in.i50.i, i64 8
  %.sink.i56.i = load i32, ptr %.sink.in.i55.i, align 4, !tbaa !145
  %.sink12.i57.i = load ptr, ptr %.sink12.in.i50.i, align 8, !tbaa !93
  store ptr %.sink12.i57.i, ptr %.sroa.0.05.i47.i, align 8, !tbaa !242
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i47.i, i64 8
  store i32 %.sink.i56.i, ptr %i.jz, align 8, !tbaa !223
  %i.ka = getelementptr inbounds nuw i8, ptr %.sroa.0.05.i47.i, i64 16 ; 2 uses
  %i.kb = icmp ne ptr %.1.i54.i, %i.ju
  %i.kc = icmp ne ptr %.117.i52.i, %i.e
  %i.kd = select i1 %i.kb, i1 %i.kc, i1 false
  br i1 %i.kd, label %.lr.ph.i44.i, label %._crit_edge.i28.i, !llvm.loop !767

._crit_edge.i28.i:                                ; preds = %.lr.ph.i44.i, %._crit_edge.i30
  %.sroa.0.0.lcssa.i29.i = phi ptr [ %.sroa.022.0.lcssa.i, %._crit_edge.i30 ], [ %i.ka, %.lr.ph.i44.i ] ; 5 uses
  %.016.lcssa.i30.i = phi ptr [ %i.ju, %._crit_edge.i30 ], [ %.117.i52.i, %.lr.ph.i44.i ] ; 3 uses
  %.0.lcssa.i31.i = phi ptr [ %.0.lcssa.i31, %._crit_edge.i30 ], [ %.1.i54.i, %.lr.ph.i44.i ] ; 3 uses
  %i.ke = ptrtoint ptr %i.ju to i64
  %i.kf = ptrtoint ptr %.0.lcssa.i31.i to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = ashr exact i64 %i.kg, 4                 ; 5 uses
  %i.ki = icmp sgt i64 %i.kh, 0
  br i1 %i.ki, label %.lr.ph.i.i.i.i.i.i40.i.preheader, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i32.i

.lr.ph.i.i.i.i.i.i40.i.preheader:                 ; preds = %._crit_edge.i28.i
  %xtraiter145 = and i64 %i.kh, 3                 ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br i1 %lcmp.mod146.not, label %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i40.i.prol

.lr.ph.i.i.i.i.i.i40.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i40.i.preheader, %.lr.ph.i.i.i.i.i.i40.i.prol
  %.012.i.i.i.i.i.i41.i.prol = phi i64 [ %i.kp, %.lr.ph.i.i.i.i.i.i40.i.prol ], [ %i.kh, %.lr.ph.i.i.i.i.i.i40.i.preheader ]
  %.0811.i.i.i.i.i.i42.i.prol = phi ptr [ %i.ko, %.lr.ph.i.i.i.i.i.i40.i.prol ], [ %.sroa.0.0.lcssa.i29.i, %.lr.ph.i.i.i.i.i.i40.i.preheader ] ; 3 uses
  %.0910.i.i.i.i.i.i43.i.prol = phi ptr [ %i.kn, %.lr.ph.i.i.i.i.i.i40.i.prol ], [ %.0.lcssa.i31.i, %.lr.ph.i.i.i.i.i.i40.i.preheader ] ; 3 uses
  %prol.iter147 = phi i64 [ %prol.iter147.next, %.lr.ph.i.i.i.i.i.i40.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i40.i.preheader ]
  %i.kj = load ptr, ptr %.0910.i.i.i.i.i.i43.i.prol, align 8, !tbaa !93
  store ptr %i.kj, ptr %.0811.i.i.i.i.i.i42.i.prol, align 8, !tbaa !242
  %i.kk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i.prol, i64 8
  %i.kl = load i32, ptr %i.kk, align 8, !tbaa !145
  %i.km = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i.prol, i64 8
  store i32 %i.kl, ptr %i.km, align 8, !tbaa !223
  %i.kn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i.prol, i64 16 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i.prol, i64 16 ; 3 uses
  %i.kp = add nsw i64 %.012.i.i.i.i.i.i41.i.prol, -1 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i40.i.prol, !llvm.loop !771

.lr.ph.i.i.i.i.i.i40.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i40.i.prol, %.lr.ph.i.i.i.i.i.i40.i.preheader
  %.012.i.i.i.i.i.i41.i.unr = phi i64 [ %i.kh, %.lr.ph.i.i.i.i.i.i40.i.preheader ], [ %i.kp, %.lr.ph.i.i.i.i.i.i40.i.prol ]
  %.0811.i.i.i.i.i.i42.i.unr = phi ptr [ %.sroa.0.0.lcssa.i29.i, %.lr.ph.i.i.i.i.i.i40.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i40.i.prol ]
  %.0910.i.i.i.i.i.i43.i.unr = phi ptr [ %.0.lcssa.i31.i, %.lr.ph.i.i.i.i.i.i40.i.preheader ], [ %i.kn, %.lr.ph.i.i.i.i.i.i40.i.prol ]
  %.lcssa128.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i40.i.preheader ], [ %i.ko, %.lr.ph.i.i.i.i.i.i40.i.prol ]
  %i.kq = icmp ult i64 %i.kh, 4
  br i1 %i.kq, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i32.i, label %.lr.ph.i.i.i.i.i.i40.i

.lr.ph.i.i.i.i.i.i40.i:                           ; preds = %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i40.i
  %.012.i.i.i.i.i.i41.i = phi i64 [ %i.lp, %.lr.ph.i.i.i.i.i.i40.i ], [ %.012.i.i.i.i.i.i41.i.unr, %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i.i42.i = phi ptr [ %i.lo, %.lr.ph.i.i.i.i.i.i40.i ], [ %.0811.i.i.i.i.i.i42.i.unr, %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i.i43.i = phi ptr [ %i.ln, %.lr.ph.i.i.i.i.i.i40.i ], [ %.0910.i.i.i.i.i.i43.i.unr, %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit ] ; 9 uses
  %i.kr = load ptr, ptr %.0910.i.i.i.i.i.i43.i, align 8, !tbaa !93
  store ptr %i.kr, ptr %.0811.i.i.i.i.i.i42.i, align 8, !tbaa !242
  %i.ks = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 8
  %i.kt = load i32, ptr %i.ks, align 8, !tbaa !145
  %i.ku = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 8
  store i32 %i.kt, ptr %i.ku, align 8, !tbaa !223
  %i.kv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 16
  %i.kw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 16
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !93
  store ptr %i.kx, ptr %i.kw, align 8, !tbaa !242
  %i.ky = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 24
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !145
  %i.la = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 24
  store i32 %i.kz, ptr %i.la, align 8, !tbaa !223
  %i.lb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 32
  %i.lc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 32
  %i.ld = load ptr, ptr %i.lb, align 8, !tbaa !93
  store ptr %i.ld, ptr %i.lc, align 8, !tbaa !242
  %i.le = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 40
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !145
  %i.lg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 40
  store i32 %i.lf, ptr %i.lg, align 8, !tbaa !223
  %i.lh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 48
  %i.li = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 48
  %i.lj = load ptr, ptr %i.lh, align 8, !tbaa !93
  store ptr %i.lj, ptr %i.li, align 8, !tbaa !242
  %i.lk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 56
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !145
  %i.lm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 56
  store i32 %i.ll, ptr %i.lm, align 8, !tbaa !223
  %i.ln = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i43.i, i64 64
  %i.lo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i42.i, i64 64 ; 2 uses
  %i.lp = add nsw i64 %.012.i.i.i.i.i.i41.i, -4
  %i.lq = icmp sgt i64 %.012.i.i.i.i.i.i41.i, 4
  br i1 %i.lq, label %.lr.ph.i.i.i.i.i.i40.i, label %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i32.i, !llvm.loop !18

_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i32.i: ; preds = %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i40.i, %._crit_edge.i28.i
  %.08.lcssa.i.i.i.i.i.i33.i = phi ptr [ %.sroa.0.0.lcssa.i29.i, %._crit_edge.i28.i ], [ %.lcssa128.unr, %.lr.ph.i.i.i.i.i.i40.i.prol.loopexit ], [ %i.lo, %.lr.ph.i.i.i.i.i.i40.i ]
  %i.lr = ptrtoint ptr %.016.lcssa.i30.i to i64
  %i.ls = sub i64 %i.l, %i.lr
  %i.lt = ashr exact i64 %i.ls, 4                 ; 5 uses
  %i.lu = icmp sgt i64 %i.lt, 0
  br i1 %i.lu, label %.lr.ph.i.i.i.i.i20.i35.preheader.i, label %"_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit"

.lr.ph.i.i.i.i.i20.i35.preheader.i:               ; preds = %_ZSt4moveIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEEET0_T_SE_SD_.exit.i32.i
  %i.lv = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i33.i to i64
  %i.lw = ptrtoint ptr %.sroa.0.0.lcssa.i29.i to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i29.i, i64 %i.lx ; 2 uses
  %xtraiter148 = and i64 %i.lt, 3                 ; 2 uses
  %lcmp.mod149.not = icmp eq i64 %xtraiter148, 0
  br i1 %lcmp.mod149.not, label %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit, label %.lr.ph.i.i.i.i.i20.i35.i.prol

.lr.ph.i.i.i.i.i20.i35.i.prol:                    ; preds = %.lr.ph.i.i.i.i.i20.i35.preheader.i, %.lr.ph.i.i.i.i.i20.i35.i.prol
  %.012.i.i.i.i.i21.i36.i.prol = phi i64 [ %i.mf, %.lr.ph.i.i.i.i.i20.i35.i.prol ], [ %i.lt, %.lr.ph.i.i.i.i.i20.i35.preheader.i ]
  %.0811.i.i.i.i.i22.i37.i.prol = phi ptr [ %i.me, %.lr.ph.i.i.i.i.i20.i35.i.prol ], [ %i.ly, %.lr.ph.i.i.i.i.i20.i35.preheader.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i38.i.prol = phi ptr [ %i.md, %.lr.ph.i.i.i.i.i20.i35.i.prol ], [ %.016.lcssa.i30.i, %.lr.ph.i.i.i.i.i20.i35.preheader.i ] ; 3 uses
  %prol.iter150 = phi i64 [ %prol.iter150.next, %.lr.ph.i.i.i.i.i20.i35.i.prol ], [ 0, %.lr.ph.i.i.i.i.i20.i35.preheader.i ]
  %i.lz = load ptr, ptr %.0910.i.i.i.i.i23.i38.i.prol, align 8, !tbaa !93
  store ptr %i.lz, ptr %.0811.i.i.i.i.i22.i37.i.prol, align 8, !tbaa !242
  %i.ma = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i.prol, i64 8
  %i.mb = load i32, ptr %i.ma, align 8, !tbaa !145
  %i.mc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i.prol, i64 8
  store i32 %i.mb, ptr %i.mc, align 8, !tbaa !223
  %i.md = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i.prol, i64 16 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i.prol, i64 16 ; 2 uses
  %i.mf = add nsw i64 %.012.i.i.i.i.i21.i36.i.prol, -1 ; 2 uses
  %prol.iter150.next = add i64 %prol.iter150, 1   ; 2 uses
  %prol.iter150.cmp.not = icmp eq i64 %prol.iter150.next, %xtraiter148
  br i1 %prol.iter150.cmp.not, label %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit, label %.lr.ph.i.i.i.i.i20.i35.i.prol, !llvm.loop !772

.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i20.i35.i.prol, %.lr.ph.i.i.i.i.i20.i35.preheader.i
  %.012.i.i.i.i.i21.i36.i.unr = phi i64 [ %i.lt, %.lr.ph.i.i.i.i.i20.i35.preheader.i ], [ %i.mf, %.lr.ph.i.i.i.i.i20.i35.i.prol ]
  %.0811.i.i.i.i.i22.i37.i.unr = phi ptr [ %i.ly, %.lr.ph.i.i.i.i.i20.i35.preheader.i ], [ %i.me, %.lr.ph.i.i.i.i.i20.i35.i.prol ]
  %.0910.i.i.i.i.i23.i38.i.unr = phi ptr [ %.016.lcssa.i30.i, %.lr.ph.i.i.i.i.i20.i35.preheader.i ], [ %i.md, %.lr.ph.i.i.i.i.i20.i35.i.prol ]
  %i.mg = icmp ult i64 %i.lt, 4
  br i1 %i.mg, label %"_ZSt17__merge_sort_loopIPSt4pairIPKN4llvm6RecordEjEN9__gnu_cxx17__normal_iteratorIS6_St6vectorIS5_SaIS5_EEEElNS7_5__ops15_Iter_comp_iterIZN12_GLOBAL__N_122SearchableTableEmitter18emitLookupFunctionERKNSF_12GenericTableERKNSF_11SearchIndexEbRNS1_19StringToOffsetTableERNS1_11raw_ostreamEE3$_0EEEvT_ST_T0_T1_T2_.exit", label %.lr.ph.i.i.i.i.i20.i35.i

.lr.ph.i.i.i.i.i20.i35.i:                         ; preds = %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit, %.lr.ph.i.i.i.i.i20.i35.i
  %.012.i.i.i.i.i21.i36.i = phi i64 [ %i.nf, %.lr.ph.i.i.i.i.i20.i35.i ], [ %.012.i.i.i.i.i21.i36.i.unr, %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit ] ; 2 uses
  %.0811.i.i.i.i.i22.i37.i = phi ptr [ %i.ne, %.lr.ph.i.i.i.i.i20.i35.i ], [ %.0811.i.i.i.i.i22.i37.i.unr, %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit ] ; 9 uses
  %.0910.i.i.i.i.i23.i38.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i20.i35.i ], [ %.0910.i.i.i.i.i23.i38.i.unr, %.lr.ph.i.i.i.i.i20.i35.i.prol.loopexit ] ; 9 uses
  %i.mh = load ptr, ptr %.0910.i.i.i.i.i23.i38.i, align 8, !tbaa !93
  store ptr %i.mh, ptr %.0811.i.i.i.i.i22.i37.i, align 8, !tbaa !242
  %i.mi = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 8
  %i.mj = load i32, ptr %i.mi, align 8, !tbaa !145
  %i.mk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 8
  store i32 %i.mj, ptr %i.mk, align 8, !tbaa !223
  %i.ml = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 16
  %i.mm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 16
  %i.mn = load ptr, ptr %i.ml, align 8, !tbaa !93
  store ptr %i.mn, ptr %i.mm, align 8, !tbaa !242
  %i.mo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 24
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !145
  %i.mq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 24
  store i32 %i.mp, ptr %i.mq, align 8, !tbaa !223
  %i.mr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 32
  %i.ms = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 32
  %i.mt = load ptr, ptr %i.mr, align 8, !tbaa !93
  store ptr %i.mt, ptr %i.ms, align 8, !tbaa !242
  %i.mu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 40
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !145
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 40
  store i32 %i.mv, ptr %i.mw, align 8, !tbaa !223
  %i.mx = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 48
  %i.my = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 48
  %i.mz = load ptr, ptr %i.mx, align 8, !tbaa !93
  store ptr %i.mz, ptr %i.my, align 8, !tbaa !242
  %i.na = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i38.i, i64 56
  %i.nb = load i32, ptr %i.na, align 8, !tbaa !145
  %i.nc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i37.i, i64 56
  store i32 %i.nb, ptr %i.nc, align 8, !tbaa !223
end_hunk_0
