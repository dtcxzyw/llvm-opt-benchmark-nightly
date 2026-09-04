Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourceCoverageView?download=true
inline.NumInlined: 2323
inline.NumDeleted: 1138
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_:bb.a
  store ptr null, ptr %i.ar, align 8, !tbaa !47
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !47 ; 3 uses
  store ptr %i.at, ptr %i.as, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(257) %i.au) #17, !inline_history !349
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i:  ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64 ; 2 uses
  %i.ba = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bb = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bb, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, !llvm.loop !7

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i22, %.critedge.i ], [ %i.az, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.bc = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.bd = ptrtoint ptr %.sroa.021.0.lcssa.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 6                 ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bq, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %i.bf, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bp, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bo, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %.sroa.021.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i15.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i16.i, i64 56, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 56 ; 2 uses
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !47
  store ptr null, ptr %i.bh, align 8, !tbaa !47
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !49
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(257) %i.bk) #17, !inline_history !349
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 64
  %i.bp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 64 ; 2 uses
  %i.bq = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.br = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.br, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, !llvm.loop !7

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ], [ %i.bp, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bs = sub i64 %i.a, %i.bc
  %i.bt = ashr exact i64 %i.bs, 6                 ; 2 uses
  %.not.i16 = icmp slt i64 %i.bt, %i.j
  br i1 %.not.i16, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i15, !llvm.loop !350

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %bb.b
  %.sroa.019.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bt, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.058, i64 %.lcssa.i)
  %i.bu = getelementptr inbounds [64 x i8], ptr %.sroa.019.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.bv = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr %.sroa.019.0.lcssa.i, ptr %i.bu, ptr %i.bu, ptr %1, ptr noundef %.0.lcssa.i) ; 0 uses
  %i.bw = shl nsw i64 %.058, 2                    ; 4 uses
  %.not25.i = icmp slt i64 %i.d, %i.bw
  br i1 %.not25.i, label %_ZSt17__merge_sort_loopIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit
  %.idx44 = shl nsw i64 %.058, 7                  ; 2 uses
  %.idx45 = shl nsw i64 %.058, 8                  ; 2 uses
  %.not46 = icmp eq i64 %.idx44, %.idx45
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit
  %.sroa.018.027.i = phi ptr [ %i.el, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ], [ %0, %.lr.ph.i17.preheader ] ; 2 uses
  %.026.i = phi ptr [ %i.by, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ], [ %2, %.lr.ph.i17.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds i8, ptr %.026.i, i64 %.idx44 ; 4 uses
  %i.by = getelementptr inbounds i8, ptr %.026.i, i64 %.idx45 ; 4 uses
  br i1 %.not46, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i17, %bb.h
  %.035.i = phi ptr [ %.1.i, %bb.h ], [ %.026.i, %.lr.ph.i17 ] ; 5 uses
  %.01634.i = phi ptr [ %.117.i, %bb.h ], [ %i.bx, %.lr.ph.i17 ] ; 5 uses
  %.sroa.0.033.i = phi ptr [ %i.cw, %bb.h ], [ %.sroa.018.027.i, %.lr.ph.i17 ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.01634.i, i64 36
  %i.ca = load i64, ptr %i.bz, align 4            ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i34 = trunc i64 %i.ca to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i.i35 = lshr i64 %i.ca, 32
  %i.cb = getelementptr inbounds nuw i8, ptr %.035.i, i64 36
  %i.cc = load i64, ptr %i.cb, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i36 = trunc i64 %i.cc to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i37 = lshr i64 %i.cc, 32
  %i.cd = icmp ult i32 %.sroa.02.0.extract.trunc.i.i.i34, %.sroa.0.0.extract.trunc.i.i.i36
  %i.ce = icmp uge i32 %.sroa.0.0.extract.trunc.i.i.i36, %.sroa.02.0.extract.trunc.i.i.i34
  %i.cf = icmp samesign ult i64 %.sroa.43.0.extract.shift.i.i.i35, %.sroa.4.0.extract.shift.i.i.i37
  %spec.select.i.i.i38 = select i1 %i.ce, i1 %i.cf, i1 false
  %i.cg = select i1 %i.cd, i1 true, i1 %spec.select.i.i.i38
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 56 ; 4 uses
  br i1 %i.cg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.033.i, ptr noundef nonnull align 8 dereferenceable(64) %.01634.i, i64 56, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %.01634.i, i64 56 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !47
  store ptr null, ptr %i.ci, align 8, !tbaa !47
  %i.ck = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 3 uses
  store ptr %i.cj, ptr %i.ch, align 8, !tbaa !47
  %.not.i.i.i.i.i.i39 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i.i39, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i41, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i40

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i40: ; preds = %bb.f
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !49
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 144
  %i.cn = load ptr, ptr %i.cm, align 8
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(257) %i.ck) #17, !inline_history !351
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i41

_ZN4llvm13ExpansionViewaSEOS0_.exit.i41:          ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i40, %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %.01634.i, i64 64
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.033.i, ptr noundef nonnull align 8 dereferenceable(64) %.035.i, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %.035.i, i64 56 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !47
  store ptr null, ptr %i.cp, align 8, !tbaa !47
  %i.cr = load ptr, ptr %i.ch, align 8, !tbaa !47 ; 3 uses
  store ptr %i.cq, ptr %i.ch, align 8, !tbaa !47
  %.not.i.i.i.i.i18.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i.i.i18.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit20.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i: ; preds = %bb.g
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !49
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 144
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(257) %i.cr) #17, !inline_history !351
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit20.i

_ZN4llvm13ExpansionViewaSEOS0_.exit20.i:          ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i, %bb.g
  %i.cv = getelementptr inbounds nuw i8, ptr %.035.i, i64 64
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit20.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i41
  %.117.i = phi ptr [ %i.co, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i41 ], [ %.01634.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.035.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i41 ], [ %i.cv, %_ZN4llvm13ExpansionViewaSEOS0_.exit20.i ] ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 64 ; 2 uses
  %i.cx = icmp ne ptr %.1.i, %i.bx
  %i.cy = icmp ne ptr %.117.i, %i.by
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %i.cz, label %.lr.ph.i33, label %._crit_edge.i, !llvm.loop !8

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i17
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.027.i, %.lr.ph.i17 ], [ %i.cw, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bx, %.lr.ph.i17 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i24 = phi ptr [ %.026.i, %.lr.ph.i17 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.da = ptrtoint ptr %i.bx to i64
  %i.db = ptrtoint ptr %.0.lcssa.i24 to i64
  %i.dc = sub i64 %i.da, %i.db
  %i.dd = ashr exact i64 %i.dc, 6                 ; 2 uses
  %i.de = icmp sgt i64 %i.dd, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i26:                             ; preds = %._crit_edge.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i27 = phi i64 [ %i.do, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %i.dd, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i28 = phi ptr [ %i.dn, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i29 = phi ptr [ %i.dm, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %.0.lcssa.i24, %._crit_edge.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i.i29, i64 56, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 56 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 56 ; 2 uses
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !47
  store ptr null, ptr %i.df, align 8, !tbaa !47
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !47 ; 3 uses
  store ptr %i.dh, ptr %i.dg, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i30, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i26
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 144
  %i.dl = load ptr, ptr %i.dk, align 8
  tail call void %i.dl(ptr noundef nonnull align 8 dereferenceable(257) %i.di) #17, !inline_history !352
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31, %.lr.ph.i.i.i.i.i.i26
  %i.dm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 64
  %i.dn = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 64 ; 2 uses
  %i.do = add nsw i64 %.012.i.i.i.i.i.i27, -1
  %i.dp = icmp sgt i64 %.012.i.i.i.i.i.i27, 1
  br i1 %i.dp, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !7

_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i25 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.dn, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i32 ]
  %i.dq = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i25 to i64 ; 3 uses
  %i.dr = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.ds ; 2 uses
  %i.du = ptrtoint ptr %i.by to i64               ; 2 uses
  %i.dv = ptrtoint ptr %.016.lcssa.i to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 6                 ; 2 uses
  %i.dy = icmp sgt i64 %i.dx, 0
  br i1 %i.dy, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.ei, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %i.dx, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.eh, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %i.dt, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.eg, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i24.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i25.i, i64 56, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 56 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 56 ; 2 uses
  %i.eb = load ptr, ptr %i.dz, align 8, !tbaa !47
  store ptr null, ptr %i.dz, align 8, !tbaa !47
  %i.ec = load ptr, ptr %i.ea, align 8, !tbaa !47 ; 3 uses
  store ptr %i.eb, ptr %i.ea, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !49
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 144
  %i.ef = load ptr, ptr %i.ee, align 8
  tail call void %i.ef(ptr noundef nonnull align 8 dereferenceable(257) %i.ec) #17, !inline_history !352
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 64
  %i.eh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 64 ; 2 uses
  %i.ei = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.ej = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i, !llvm.loop !7

_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28.i
  %3 = ptrtoint ptr %i.eh to i64
  br label %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.dq, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %3, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i ]
  %i.ek = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.dq
  %i.el = getelementptr inbounds i8, ptr %i.dt, i64 %i.ek ; 2 uses
  %i.em = sub i64 %i.i, %i.du
  %i.en = ashr exact i64 %i.em, 6                 ; 2 uses
  %.not.i18 = icmp slt i64 %i.en, %i.bw
  br i1 %.not.i18, label %_ZSt17__merge_sort_loopIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i17, !llvm.loop !353

_ZSt17__merge_sort_loopIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit
  %.0.lcssa.i19 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.by, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.el, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.lcssa.i20 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.en, %_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated.i21 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i20)
  %i.eo = getelementptr inbounds [64 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i21 ; 2 uses
  %i.ep = tail call ptr @_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.eo, ptr noundef %i.eo, ptr noundef %i.e, ptr %.sroa.018.0.lcssa.i) ; 0 uses
  %i.eq = icmp slt i64 %i.bw, %i.d
  br i1 %i.eq, label %bb.b, label %._crit_edge, !llvm.loop !354

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 6                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i, i64 56, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !47
  store ptr null, ptr %i.f, align 8, !tbaa !47
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !47   ; 3 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(257) %i.i) #17, !inline_history !9
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i:    ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 3 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !7

.lr.ph.i:                                         ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, %bb.f
  %.029.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.0.028.i = phi ptr [ %i.an, %bb.f ], [ %0, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.019.027.i = phi ptr [ %.sroa.019.1.i, %bb.f ], [ %1, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ] ; 6 uses
  %.not22.i = icmp eq ptr %.sroa.019.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 36
  %i.r = load i64, ptr %i.q, align 4              ; 2 uses
  %.sroa.02.0.extract.trunc.i.i.i = trunc i64 %i.r to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i.i = lshr i64 %i.r, 32
  %i.s = getelementptr inbounds nuw i8, ptr %.029.i, i64 36
  %i.t = load i64, ptr %i.s, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.t to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i.i = lshr i64 %i.t, 32
  %i.u = icmp ult i32 %.sroa.02.0.extract.trunc.i.i.i, %.sroa.0.0.extract.trunc.i.i.i
  %i.v = icmp uge i32 %.sroa.0.0.extract.trunc.i.i.i, %.sroa.02.0.extract.trunc.i.i.i
  %i.w = icmp samesign ult i64 %.sroa.43.0.extract.shift.i.i.i, %.sroa.4.0.extract.shift.i.i.i
  %spec.select.i.i.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = select i1 %i.u, i1 true, i1 %spec.select.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 56 ; 4 uses
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.028.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.019.027.i, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 56 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47
  store ptr null, ptr %i.z, align 8, !tbaa !47
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !47  ; 3 uses
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !47
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(257) %i.ab) #17, !inline_history !355
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i:            ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 64
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.028.i, ptr noundef nonnull align 8 dereferenceable(64) %.029.i, i64 56, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.029.i, i64 56 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47
  store ptr null, ptr %i.ag, align 8, !tbaa !47
  %i.ai = load ptr, ptr %i.y, align 8, !tbaa !47  ; 3 uses
  store ptr %i.ah, ptr %i.y, align 8, !tbaa !47
  %.not.i.i.i.i.i13.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i13.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit15.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i: ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 144
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(257) %i.ai) #17, !inline_history !355
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit15.i

_ZN4llvm13ExpansionViewaSEOS0_.exit15.i:          ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.029.i, i64 64
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit15.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i
  %.sroa.019.1.i = phi ptr [ %i.af, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i ], [ %.sroa.019.027.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit15.i ]
  %.1.i = phi ptr [ %.029.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i ], [ %i.am, %_ZN4llvm13ExpansionViewaSEOS0_.exit15.i ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 64
  %.not.i = icmp eq ptr %.1.i, %i.n
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !356

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.ao = ptrtoint ptr %i.n to i64
  %i.ap = ptrtoint ptr %.029.i to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 6                 ; 2 uses
  %i.as = icmp sgt i64 %i.ar, 0
  br i1 %i.as, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.bc, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i ], [ %i.ar, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.bb, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.sroa.0.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ba, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.029.i, %.critedge.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i.i, i64 56, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 56 ; 2 uses
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !47
  store ptr null, ptr %i.at, align 8, !tbaa !47
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !47 ; 3 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(257) %i.aw) #17, !inline_history !357
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i.i:  ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 64
  %i.bb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 64
  %i.bc = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.bd = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !7

bb.g:                                             ; preds = %bb.a
  %i.be = ptrtoint ptr %2 to i64
  %i.bf = ptrtoint ptr %1 to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 6                 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.g, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26
  %.012.i.i.i.i.i21 = phi i64 [ %i.bs, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26 ], [ %i.bh, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.br, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.bq, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26 ], [ %1, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i23, i64 56, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 56 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 56 ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !47
  store ptr null, ptr %i.bj, align 8, !tbaa !47
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i24, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i25

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i20
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 144
  %i.bp = load ptr, ptr %i.bo, align 8
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(257) %i.bm) #17, !inline_history !9
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i26

end_hunk_0
begin_hunk_1_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_:bb.a
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.021.1, %bb.d ] ; 2 uses
  %.sroa.025.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.025.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.z, %bb.d ] ; 2 uses
  %i.ac = ptrtoint ptr %1 to i64
  %i.ad = ptrtoint ptr %.sroa.025.0.lcssa to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = ashr exact i64 %i.ae, 6                 ; 2 uses
  %i.ag = icmp sgt i64 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.aq, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %i.af, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ap, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.ao, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.025.0.lcssa, %.critedge ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i, i64 56, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !47
  store ptr null, ptr %i.ah, align 8, !tbaa !47
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !49
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(257) %i.ak) #17, !inline_history !9
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i:    ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ap = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.aq = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ar = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !7

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.ap, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ] ; 2 uses
  %i.as = ptrtoint ptr %3 to i64
  %i.at = ptrtoint ptr %.sroa.021.0.lcssa to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6                 ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 0
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19
  %.012.i.i.i.i.i14 = phi i64 [ %i.bg, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19 ], [ %i.av, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.bf, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 3 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.be, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19 ], [ %.sroa.021.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i16, i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 56 ; 2 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !47
  store ptr null, ptr %i.ax, align 8, !tbaa !47
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !47 ; 3 uses
  store ptr %i.az, ptr %i.ay, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i13
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(257) %i.ba) #17, !inline_history !9
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19:  ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i13
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 64 ; 2 uses
  %i.bg = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.bh = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20, !llvm.loop !7

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i12 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.bf, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i19 ]
  ret ptr %.08.lcssa.i.i.i.i.i12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.035 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.01634 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %.sroa.0.033 = phi ptr [ %i.aa, %bb.d ], [ %4, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01634, i64 36
  %i.e = load i64, ptr %i.d, align 4              ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.e to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.e, 32
  %i.f = getelementptr inbounds nuw i8, ptr %.035, i64 36
  %i.g = load i64, ptr %i.f, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.g to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.g, 32
  %i.h = icmp ult i32 %.sroa.02.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  %i.i = icmp uge i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.02.0.extract.trunc.i.i
  %i.j = icmp samesign ult i64 %.sroa.43.0.extract.shift.i.i, %.sroa.4.0.extract.shift.i.i
  %spec.select.i.i = select i1 %i.i, i1 %i.j, i1 false
  %i.k = select i1 %i.h, i1 true, i1 %spec.select.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 56 ; 4 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.033, ptr noundef nonnull align 8 dereferenceable(64) %.01634, i64 56, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.01634, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  store ptr null, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !47   ; 3 uses
  store ptr %i.n, ptr %i.l, align 8, !tbaa !47
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 144
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(257) %i.o) #17, !inline_history !12
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit

_ZN4llvm13ExpansionViewaSEOS0_.exit:              ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.01634, i64 64
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.033, ptr noundef nonnull align 8 dereferenceable(64) %.035, i64 56, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.035, i64 56 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  store ptr null, ptr %i.t, align 8, !tbaa !47
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !47   ; 3 uses
  store ptr %i.u, ptr %i.l, align 8, !tbaa !47
  %.not.i.i.i.i.i18 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i18, label %_ZN4llvm13ExpansionViewaSEOS0_.exit20, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19: ; preds = %bb.c
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !49
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(257) %i.v) #17, !inline_history !12
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit20

_ZN4llvm13ExpansionViewaSEOS0_.exit20:            ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19
  %i.z = getelementptr inbounds nuw i8, ptr %.035, i64 64
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit20, %_ZN4llvm13ExpansionViewaSEOS0_.exit
  %.117 = phi ptr [ %i.s, %_ZN4llvm13ExpansionViewaSEOS0_.exit ], [ %.01634, %_ZN4llvm13ExpansionViewaSEOS0_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.035, %_ZN4llvm13ExpansionViewaSEOS0_.exit ], [ %i.z, %_ZN4llvm13ExpansionViewaSEOS0_.exit20 ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 64 ; 2 uses
  %i.ab = icmp ne ptr %.1, %1
  %i.ac = icmp ne ptr %.117, %3
  %i.ad = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.aa, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.ae = ptrtoint ptr %1 to i64
  %i.af = ptrtoint ptr %.0.lcssa to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = ashr exact i64 %i.ag, 6                 ; 2 uses
  %i.ai = icmp sgt i64 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.as, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %i.ah, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ar, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.aq, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i, i64 56, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !47
  store ptr null, ptr %i.aj, align 8, !tbaa !47
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !47 ; 3 uses
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !49
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 144
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(257) %i.am) #17, !inline_history !13
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i:    ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 64 ; 2 uses
  %i.as = add nsw i64 %.012.i.i.i.i.i, -1
  %i.at = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.at, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !7

_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ar, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ]
  %i.au = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.av = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.aw ; 2 uses
  %i.ay = ptrtoint ptr %3 to i64
  %i.az = ptrtoint ptr %.016.lcssa to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = ashr exact i64 %i.ba, 6                 ; 2 uses
  %i.bc = icmp sgt i64 %i.bb, 0
  br i1 %i.bc, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28
  %.012.i.i.i.i.i23 = phi i64 [ %i.bm, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28 ], [ %i.bb, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.bl, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28 ], [ %i.ax, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 3 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.bk, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.0811.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(64) %.0910.i.i.i.i.i25, i64 56, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 56 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 56 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !47
  store ptr null, ptr %i.bd, align 8, !tbaa !47
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i22
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 144
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(257) %i.bg) #17, !inline_history !13
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28:  ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i22
  %i.bk = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 64
  %i.bl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 64 ; 2 uses
  %i.bm = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.bn = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit, !llvm.loop !7

_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i28
  %5 = ptrtoint ptr %i.bl to i64
  br label %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29

_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29: ; preds = %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i21 = phi i64 [ %i.au, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %5, %_ZSt4moveIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit ]
  %i.bo = sub i64 %.08.lcssa.i.i.i.i.i21, %i.au
  %i.bp = getelementptr inbounds i8, ptr %i.ax, i64 %i.bo
  ret ptr %i.bp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.p, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %4, %bb.b ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i ], [ %3, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -64 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 56, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !47
  store ptr null, ptr %i.i, align 8, !tbaa !47
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !47   ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(257) %i.l) #17, !inline_history !14
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i:    ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = add nsw i64 %.010.i.i.i.i.i, -1
  %i.q = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !11

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %2, %3
  br i1 %i.r, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %3, i64 -64
  br label %.outer

.outer:                                           ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit, %bb.d
  %.sroa.033.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.033.0.ph, %_ZN4llvm13ExpansionViewaSEOS0_.exit ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.ab, %_ZN4llvm13ExpansionViewaSEOS0_.exit ]
  %.0.ph = phi ptr [ %i.s, %bb.d ], [ %.0, %_ZN4llvm13ExpansionViewaSEOS0_.exit ]
  %.sroa.033.0.ph = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -64 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -28
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.ab, %bb.i ], [ %.sroa.0.0.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.bi, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 36
  %i.v = load i64, ptr %i.u, align 4              ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.v to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.v, 32
  %i.w = load i64, ptr %i.t, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.w to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.w, 32
  %i.x = icmp ult i32 %.sroa.02.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  %i.y = icmp uge i32 %.sroa.0.0.extract.trunc.i.i, %.sroa.02.0.extract.trunc.i.i
  %i.z = icmp samesign ult i64 %.sroa.43.0.extract.shift.i.i, %.sroa.4.0.extract.shift.i.i
  %spec.select.i.i = select i1 %i.y, i1 %i.z, i1 false
  %i.aa = select i1 %i.x, i1 true, i1 %spec.select.i.i
  %i.ab = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -64 ; 5 uses
  %i.ac = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 4 uses
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.033.0.ph, i64 56, i1 false)
  %i.ad = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  store ptr null, ptr %i.ad, align 8, !tbaa !47
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !47
  %.not.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm13ExpansionViewaSEOS0_.exit, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(257) %i.af) #17, !inline_history !12
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit

_ZN4llvm13ExpansionViewaSEOS0_.exit:              ; preds = %bb.f, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i
  %i.aj = icmp eq ptr %0, %.sroa.033.0.ph
  br i1 %i.aj, label %bb.g, label %.outer, !llvm.loop !363

bb.g:                                             ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 64 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = ptrtoint ptr %2 to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 6                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25
  %.010.i.i.i.i.i20 = phi i64 [ %i.az, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.ao, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.ar, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.ab, %bb.g ] ; 2 uses
  %.078.i.i.i.i.i22 = phi ptr [ %i.aq, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.ak, %bb.g ] ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -64 ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -64 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(64) %i.aq, i64 56, i1 false)
  %i.as = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -8 ; 2 uses
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -8 ; 2 uses
  %i.au = load ptr, ptr %i.as, align 8, !tbaa !47
  store ptr null, ptr %i.as, align 8, !tbaa !47
  %i.av = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  store ptr %i.au, ptr %i.at, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i19
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !49
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(257) %i.av) #17, !inline_history !14
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25

_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25:  ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i19
  %i.az = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.ba = icmp sgt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !11

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(64) %.0, i64 56, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  store ptr null, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bc, ptr %i.ac, align 8, !tbaa !47
  %.not.i.i.i.i.i27 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i27, label %_ZN4llvm13ExpansionViewaSEOS0_.exit29, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28: ; preds = %bb.h
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(257) %i.bd) #17, !inline_history !12
  br label %_ZN4llvm13ExpansionViewaSEOS0_.exit29

_ZN4llvm13ExpansionViewaSEOS0_.exit29:            ; preds = %bb.h, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28
  %i.bh = icmp eq ptr %2, %.0
  br i1 %i.bh, label %_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit29
  %i.bi = getelementptr inbounds i8, ptr %.0, i64 -64
  br label %bb.e, !llvm.loop !363

_ZSt13move_backwardIPN4llvm13ExpansionViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN4llvm13ExpansionViewaSEOS0_.exit29, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i25, %_ZN4llvm13ExpansionViewaSEOS0_.exit.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm13ExpansionViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %5 = alloca %"struct.llvm::ExpansionView", align 8 ; 5 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond83 = or i1 %i.a, %i.b
  br i1 %or.cond83, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8088 = phi i64 [ %4, %.lr.ph ], [ %i.by, %tailrecurse ] ; 4 uses
  %.tr7987 = phi i64 [ %3, %.lr.ph ], [ %i.bx, %tailrecurse ] ; 4 uses
  %.tr7785 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr84 = phi ptr [ %0, %.lr.ph ], [ %i.bw, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8088, %.tr7987
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7785, i64 36
  %i.g = load i64, ptr %i.f, align 4              ; 2 uses
  %.sroa.02.0.extract.trunc.i.i = trunc i64 %i.g to i32 ; 2 uses
  %.sroa.43.0.extract.shift.i.i = lshr i64 %i.g, 32
  %i.h = getelementptr inbounds nuw i8, ptr %.tr84, i64 36
  %i.i = load i64, ptr %i.h, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.i to i32 ; 2 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %i.i, 32
  %i.j = icmp ult i32 %.sroa.02.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
end_hunk_1
begin_hunk_2_@_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ax, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %i.am, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.aw, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.0.lcssa.i22, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.av, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.sroa.025.0.lcssa.i, %.critedge.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i, i64 20, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  store ptr null, ptr %i.ap, align 8, !tbaa !47
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !47 ; 3 uses
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 144
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(257) %i.ar) #17, !inline_history !377
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ay = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, !llvm.loop !20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i, %.critedge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.0.lcssa.i22, %.critedge.i ], [ %i.aw, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.az = ptrtoint ptr %i.l to i64                ; 2 uses
  %i.ba = ptrtoint ptr %.sroa.021.0.lcssa.i to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 5                 ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, 0
  br i1 %i.bd, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i13.i:                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i
  %.012.i.i.i.i.i14.i = phi i64 [ %i.bn, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %i.bc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i15.i = phi ptr [ %i.bm, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i16.i = phi ptr [ %i.bl, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i ], [ %.sroa.021.0.lcssa.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i15.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i16.i, i64 20, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 24 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 24 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  store ptr null, ptr %i.bf, align 8, !tbaa !47
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i17.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i: ; preds = %.lr.ph.i.i.i.i.i13.i
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !49
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8
  tail call void %i.bk(ptr noundef nonnull align 8 dereferenceable(257) %i.bh) #17, !inline_history !377
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18.i, %.lr.ph.i.i.i.i.i13.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16.i, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15.i, i64 32 ; 2 uses
  %i.bn = add nsw i64 %.012.i.i.i.i.i14.i, -1
  %i.bo = icmp sgt i64 %.012.i.i.i.i.i14.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.i.i.i13.i, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, !llvm.loop !20

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i
  %.08.lcssa.i.i.i.i.i12.i = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit.i ], [ %i.bm, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19.i ] ; 2 uses
  %i.bp = sub i64 %i.a, %i.az
  %i.bq = ashr exact i64 %i.bp, 5                 ; 2 uses
  %.not.i16 = icmp slt i64 %i.bq, %i.j
  br i1 %.not.i16, label %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i15, !llvm.loop !378

_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %bb.b
  %.sroa.019.0.lcssa.i = phi ptr [ %0, %bb.b ], [ %i.l, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.b ], [ %.08.lcssa.i.i.i.i.i12.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.lcssa.i = phi i64 [ %i.d, %bb.b ], [ %i.bq, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.053, i64 %.lcssa.i)
  %i.br = getelementptr inbounds [32 x i8], ptr %.sroa.019.0.lcssa.i, i64 %.sroa.speculated.i ; 2 uses
  %i.bs = tail call noundef ptr @_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr %.sroa.019.0.lcssa.i, ptr %i.br, ptr %i.br, ptr %1, ptr noundef %.0.lcssa.i) ; 0 uses
  %i.bt = shl nsw i64 %.053, 2                    ; 4 uses
  %.not25.i = icmp slt i64 %i.d, %i.bt
  br i1 %.not25.i, label %_ZSt17__merge_sort_loopIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i17.preheader

.lr.ph.i17.preheader:                             ; preds = %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit
  %.idx39 = shl nsw i64 %.053, 6                  ; 2 uses
  %.idx40 = shl nsw i64 %.053, 7                  ; 2 uses
  %.not41 = icmp eq i64 %.idx39, %.idx40
  br label %.lr.ph.i17

.lr.ph.i17:                                       ; preds = %.lr.ph.i17.preheader, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit
  %.sroa.018.027.i = phi ptr [ %i.ef, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ], [ %0, %.lr.ph.i17.preheader ] ; 2 uses
  %.026.i = phi ptr [ %i.bv, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ], [ %2, %.lr.ph.i17.preheader ] ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %.026.i, i64 %.idx39 ; 4 uses
  %i.bv = getelementptr inbounds i8, ptr %.026.i, i64 %.idx40 ; 4 uses
  br i1 %.not41, label %._crit_edge.i, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %.lr.ph.i17, %bb.h
  %.035.i = phi ptr [ %.1.i, %bb.h ], [ %.026.i, %.lr.ph.i17 ] ; 5 uses
  %.01634.i = phi ptr [ %.117.i, %bb.h ], [ %i.bu, %.lr.ph.i17 ] ; 5 uses
  %.sroa.0.033.i = phi ptr [ %i.cq, %bb.h ], [ %.sroa.018.027.i, %.lr.ph.i17 ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.01634.i, i64 16
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !62
  %i.by = getelementptr inbounds nuw i8, ptr %.035.i, i64 16
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !62
  %i.ca = icmp ult i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 24 ; 4 uses
  br i1 %i.ca, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.033.i, ptr noundef nonnull align 8 dereferenceable(32) %.01634.i, i64 20, i1 false)
  %i.cc = getelementptr inbounds nuw i8, ptr %.01634.i, i64 24 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !47
  store ptr null, ptr %i.cc, align 8, !tbaa !47
  %i.ce = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 3 uses
  store ptr %i.cd, ptr %i.cb, align 8, !tbaa !47
  %.not.i.i.i.i.i.i34 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i.i34, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i36, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i35

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i35: ; preds = %bb.f
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !49
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 144
  %i.ch = load ptr, ptr %i.cg, align 8
  tail call void %i.ch(ptr noundef nonnull align 8 dereferenceable(257) %i.ce) #17, !inline_history !379
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i36

_ZN4llvm17InstantiationViewaSEOS0_.exit.i36:      ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i35, %bb.f
  %i.ci = getelementptr inbounds nuw i8, ptr %.01634.i, i64 32
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.033.i, ptr noundef nonnull align 8 dereferenceable(32) %.035.i, i64 20, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %.035.i, i64 24 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !47
  store ptr null, ptr %i.cj, align 8, !tbaa !47
  %i.cl = load ptr, ptr %i.cb, align 8, !tbaa !47 ; 3 uses
  store ptr %i.ck, ptr %i.cb, align 8, !tbaa !47
  %.not.i.i.i.i.i18.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i.i18.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit20.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i: ; preds = %bb.g
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 144
  %i.co = load ptr, ptr %i.cn, align 8
  tail call void %i.co(ptr noundef nonnull align 8 dereferenceable(257) %i.cl) #17, !inline_history !379
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit20.i

_ZN4llvm17InstantiationViewaSEOS0_.exit20.i:      ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19.i, %bb.g
  %i.cp = getelementptr inbounds nuw i8, ptr %.035.i, i64 32
  br label %bb.h

bb.h:                                             ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit20.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i36
  %.117.i = phi ptr [ %i.ci, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i36 ], [ %.01634.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit20.i ] ; 3 uses
  %.1.i = phi ptr [ %.035.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i36 ], [ %i.cp, %_ZN4llvm17InstantiationViewaSEOS0_.exit20.i ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.033.i, i64 32 ; 2 uses
  %i.cr = icmp ne ptr %.1.i, %i.bu
  %i.cs = icmp ne ptr %.117.i, %i.bv
  %i.ct = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %i.ct, label %.lr.ph.i33, label %._crit_edge.i, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.h, %.lr.ph.i17
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.018.027.i, %.lr.ph.i17 ], [ %i.cq, %bb.h ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.bu, %.lr.ph.i17 ], [ %.117.i, %bb.h ] ; 2 uses
  %.0.lcssa.i24 = phi ptr [ %.026.i, %.lr.ph.i17 ], [ %.1.i, %bb.h ] ; 2 uses
  %i.cu = ptrtoint ptr %i.bu to i64
  %i.cv = ptrtoint ptr %.0.lcssa.i24 to i64
  %i.cw = sub i64 %i.cu, %i.cv
  %i.cx = ashr exact i64 %i.cw, 5                 ; 2 uses
  %i.cy = icmp sgt i64 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i

.lr.ph.i.i.i.i.i.i26:                             ; preds = %._crit_edge.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32
  %.012.i.i.i.i.i.i27 = phi i64 [ %i.di, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %i.cx, %._crit_edge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i28 = phi ptr [ %i.dh, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i29 = phi ptr [ %i.dg, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32 ], [ %.0.lcssa.i24, %._crit_edge.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i.i28, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i29, i64 20, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 24 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !47
  store ptr null, ptr %i.da, align 8, !tbaa !47
  %i.dc = load ptr, ptr %i.cz, align 8, !tbaa !47 ; 3 uses
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i30 = icmp eq ptr %i.dc, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i30, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31: ; preds = %.lr.ph.i.i.i.i.i.i26
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !49
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  %i.df = load ptr, ptr %i.de, align 8
  tail call void %i.df(ptr noundef nonnull align 8 dereferenceable(257) %i.dc) #17, !inline_history !380
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i31, %.lr.ph.i.i.i.i.i.i26
  %i.dg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i29, i64 32
  %i.dh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i28, i64 32 ; 2 uses
  %i.di = add nsw i64 %.012.i.i.i.i.i.i27, -1
  %i.dj = icmp sgt i64 %.012.i.i.i.i.i.i27, 1
  br i1 %i.dj, label %.lr.ph.i.i.i.i.i.i26, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, !llvm.loop !20

_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i25 = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.dh, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i32 ]
  %i.dk = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i25 to i64 ; 3 uses
  %i.dl = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.dm ; 2 uses
  %i.do = ptrtoint ptr %i.bv to i64               ; 2 uses
  %i.dp = ptrtoint ptr %.016.lcssa.i to i64
  %i.dq = sub i64 %i.do, %i.dp
  %i.dr = ashr exact i64 %i.dq, 5                 ; 2 uses
  %i.ds = icmp sgt i64 %i.dr, 0
  br i1 %i.ds, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

.lr.ph.i.i.i.i.i22.i:                             ; preds = %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i
  %.012.i.i.i.i.i23.i = phi i64 [ %i.ec, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %i.dr, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 2 uses
  %.0811.i.i.i.i.i24.i = phi ptr [ %i.eb, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %i.dn, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 3 uses
  %.0910.i.i.i.i.i25.i = phi ptr [ %i.ea, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i ], [ %.016.lcssa.i, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i24.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i25.i, i64 20, i1 false)
  %i.dt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 24 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 24 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !47
  store ptr null, ptr %i.du, align 8, !tbaa !47
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !47 ; 3 uses
  store ptr %i.dv, ptr %i.dt, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i26.i = icmp eq ptr %i.dw, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i: ; preds = %.lr.ph.i.i.i.i.i22.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 144
  %i.dz = load ptr, ptr %i.dy, align 8
  tail call void %i.dz(ptr noundef nonnull align 8 dereferenceable(257) %i.dw) #17, !inline_history !380
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27.i, %.lr.ph.i.i.i.i.i22.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25.i, i64 32
  %i.eb = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24.i, i64 32 ; 2 uses
  %i.ec = add nsw i64 %.012.i.i.i.i.i23.i, -1
  %i.ed = icmp sgt i64 %.012.i.i.i.i.i23.i, 1
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i22.i, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i, !llvm.loop !20

_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28.i
  %3 = ptrtoint ptr %i.eb to i64
  br label %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit

_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit: ; preds = %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i
  %.08.lcssa.i.i.i.i.i21.i = phi i64 [ %i.dk, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit.i ], [ %3, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit.i ]
  %i.ee = sub i64 %.08.lcssa.i.i.i.i.i21.i, %i.dk
  %i.ef = getelementptr inbounds i8, ptr %i.dn, i64 %i.ee ; 2 uses
  %i.eg = sub i64 %i.i, %i.do
  %i.eh = ashr exact i64 %i.eg, 5                 ; 2 uses
  %.not.i18 = icmp slt i64 %i.eh, %i.bt
  br i1 %.not.i18, label %_ZSt17__merge_sort_loopIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, label %.lr.ph.i17, !llvm.loop !381

_ZSt17__merge_sort_loopIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit: ; preds = %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit
  %.0.lcssa.i19 = phi ptr [ %2, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.bv, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ] ; 2 uses
  %.sroa.018.0.lcssa.i = phi ptr [ %0, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.ef, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.lcssa.i20 = phi i64 [ %i.d, %_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_lNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit ], [ %i.eh, %_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_.exit ]
  %.sroa.speculated.i21 = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %.lcssa.i20)
  %i.ei = getelementptr inbounds [32 x i8], ptr %.0.lcssa.i19, i64 %.sroa.speculated.i21 ; 2 uses
  %i.ej = tail call ptr @_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %.0.lcssa.i19, ptr noundef %i.ei, ptr noundef %i.ei, ptr noundef %i.e, ptr %.sroa.018.0.lcssa.i) ; 0 uses
  %i.ek = icmp slt i64 %i.bt, %i.d
  br i1 %i.ek, label %bb.b, label %._crit_edge, !llvm.loop !382

._crit_edge:                                      ; preds = %_ZSt17__merge_sort_loopIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEElNS3_5__ops15_Iter_less_iterEEvT_SB_T0_T1_T2_.exit, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit.thread, %_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_T0_T1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEElS4_NS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #2 comdat {
bb.a:
  %.not = icmp sgt i64 %3, %4
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 5                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.o, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.n, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %5, %bb.b ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.m, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %0, %bb.b ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i64 20, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47
  store ptr null, ptr %i.g, align 8, !tbaa !47
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !47   ; 3 uses
  store ptr %i.h, ptr %i.f, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(257) %i.i) #17, !inline_history !22
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 3 uses
  %i.o = add nsw i64 %.012.i.i.i.i.i, -1
  %i.p = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i, label %.lr.ph.i, !llvm.loop !20

.lr.ph.i:                                         ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, %bb.f
  %.029.i = phi ptr [ %.1.i, %bb.f ], [ %5, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ] ; 7 uses
  %.sroa.0.028.i = phi ptr [ %i.ak, %bb.f ], [ %0, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ] ; 5 uses
  %.sroa.019.027.i = phi ptr [ %.sroa.019.1.i, %bb.f ], [ %1, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ] ; 6 uses
  %.not22.i = icmp eq ptr %.sroa.019.027.i, %2
  br i1 %.not22.i, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !62
  %i.s = getelementptr inbounds nuw i8, ptr %.029.i, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !62
  %i.u = icmp ult i32 %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 24 ; 4 uses
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.028.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.019.027.i, i64 20, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  store ptr null, ptr %i.w, align 8, !tbaa !47
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !47   ; 3 uses
  store ptr %i.x, ptr %i.v, align 8, !tbaa !47
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !49
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(257) %i.y) #17, !inline_history !383
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i:        ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.019.027.i, i64 32
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.028.i, ptr noundef nonnull align 8 dereferenceable(32) %.029.i, i64 20, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.029.i, i64 24 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !47
  store ptr null, ptr %i.ad, align 8, !tbaa !47
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !47  ; 3 uses
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !47
  %.not.i.i.i.i.i13.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i.i13.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit15.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i: ; preds = %bb.e
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !49
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 144
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(257) %i.af) #17, !inline_history !383
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit15.i

_ZN4llvm17InstantiationViewaSEOS0_.exit15.i:      ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i14.i, %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.029.i, i64 32
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit15.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i
  %.sroa.019.1.i = phi ptr [ %i.ac, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i ], [ %.sroa.019.027.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit15.i ]
  %.1.i = phi ptr [ %.029.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i ], [ %i.aj, %_ZN4llvm17InstantiationViewaSEOS0_.exit15.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 32
  %.not.i = icmp eq ptr %.1.i, %i.n
  br i1 %.not.i, label %_ZSt21__move_merge_adaptiveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, label %.lr.ph.i, !llvm.loop !384

.critedge.i:                                      ; preds = %.lr.ph.i
  %i.al = ptrtoint ptr %i.n to i64
  %i.am = ptrtoint ptr %.029.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = ashr exact i64 %i.an, 5                 ; 2 uses
  %i.ap = icmp sgt i64 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %.critedge.i, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.az, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %i.ao, %.critedge.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ay, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.sroa.0.028.i, %.critedge.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ax, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i ], [ %.029.i, %.critedge.i ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i.i, i64 20, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !47
  store ptr null, ptr %i.ar, align 8, !tbaa !47
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !47 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 144
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void %i.aw(ptr noundef nonnull align 8 dereferenceable(257) %i.at) #17, !inline_history !385
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 32
  %i.az = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ba = icmp sgt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ba, label %.lr.ph.i.i.i.i.i.i, label %_ZSt21__move_merge_adaptiveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEES8_NS3_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_.exit, !llvm.loop !20

bb.g:                                             ; preds = %bb.a
  %i.bb = ptrtoint ptr %2 to i64
  %i.bc = ptrtoint ptr %1 to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 5                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 0
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27

.lr.ph.i.i.i.i.i20:                               ; preds = %bb.g, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26
  %.012.i.i.i.i.i21 = phi i64 [ %i.bp, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26 ], [ %i.be, %bb.g ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.bo, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26 ], [ %5, %bb.g ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.bn, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26 ], [ %1, %bb.g ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i22, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i23, i64 20, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 24 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  store ptr null, ptr %i.bh, align 8, !tbaa !47
  %i.bj = load ptr, ptr %i.bg, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i24, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i25

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i25: ; preds = %.lr.ph.i.i.i.i.i20
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 144
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(257) %i.bj) #17, !inline_history !22
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i25, %.lr.ph.i.i.i.i.i20
  %i.bn = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 32 ; 2 uses
  %i.bp = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.bq = icmp sgt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.bq, label %.lr.ph.i.i.i.i.i20, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27, !llvm.loop !20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit27: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i26, %bb.g
end_hunk_2
begin_hunk_3_@_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_NS0_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_:bb.a
  %.sroa.025.1 = phi ptr [ %.sroa.025.031, %_ZN4llvm17InstantiationViewaSEOS0_.exit ], [ %i.v, %_ZN4llvm17InstantiationViewaSEOS0_.exit11 ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.032, i64 32 ; 2 uses
  %i.x = icmp ne ptr %.sroa.025.1, %1
  %i.y = icmp ne ptr %.sroa.021.1, %3
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.d, %bb.a
  %.sroa.021.0.lcssa = phi ptr [ %2, %bb.a ], [ %.sroa.021.1, %bb.d ] ; 2 uses
  %.sroa.025.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.025.1, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.w, %bb.d ] ; 2 uses
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = ptrtoint ptr %.sroa.025.0.lcssa to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 5                 ; 2 uses
  %i.ad = icmp sgt i64 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %.critedge, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.an, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %i.ac, %.critedge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.am, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %.critedge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.al, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.025.0.lcssa, %.critedge ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i64 20, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !47
  store ptr null, ptr %i.af, align 8, !tbaa !47
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !47 ; 3 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(257) %i.ah) #17, !inline_history !22
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.an = add nsw i64 %.012.i.i.i.i.i, -1
  %i.ao = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.ao, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, !llvm.loop !20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, %.critedge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.0.lcssa, %.critedge ], [ %i.am, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ] ; 2 uses
  %i.ap = ptrtoint ptr %3 to i64
  %i.aq = ptrtoint ptr %.sroa.021.0.lcssa to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5                 ; 2 uses
  %i.at = icmp sgt i64 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20

.lr.ph.i.i.i.i.i13:                               ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19
  %.012.i.i.i.i.i14 = phi i64 [ %i.bd, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19 ], [ %i.as, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i15 = phi ptr [ %i.bc, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19 ], [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 3 uses
  %.0910.i.i.i.i.i16 = phi ptr [ %i.bb, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19 ], [ %.sroa.021.0.lcssa, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i16, i64 20, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !47
  store ptr null, ptr %i.av, align 8, !tbaa !47
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !47 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i17 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i17, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18: ; preds = %.lr.ph.i.i.i.i.i13
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(257) %i.ax) #17, !inline_history !22
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i18, %.lr.ph.i.i.i.i.i13
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i16, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i15, i64 32 ; 2 uses
  %i.bd = add nsw i64 %.012.i.i.i.i.i14, -1
  %i.be = icmp sgt i64 %.012.i.i.i.i.i14, 1
  br i1 %i.be, label %.lr.ph.i.i.i.i.i13, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20, !llvm.loop !20

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit20: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i12 = phi ptr [ %.08.lcssa.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_ET0_T_SA_S9_.exit ], [ %i.bc, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i19 ]
  ret ptr %.08.lcssa.i.i.i.i.i12
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr ptr @_ZSt12__move_mergeIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEENS3_5__ops15_Iter_less_iterEET0_T_SC_SC_SC_SB_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp ne ptr %0, %1
  %i.b = icmp ne ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.035 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.01634 = phi ptr [ %.117, %bb.d ], [ %2, %bb.a ] ; 5 uses
  %.sroa.0.033 = phi ptr [ %i.x, %bb.d ], [ %4, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01634, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %.035, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62
  %i.h = icmp ult i32 %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 24 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.033, ptr noundef nonnull align 8 dereferenceable(32) %.01634, i64 20, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.01634, i64 24 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  store ptr null, ptr %i.j, align 8, !tbaa !47
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !47
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(257) %i.l) #17, !inline_history !25
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit

_ZN4llvm17InstantiationViewaSEOS0_.exit:          ; preds = %bb.b, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.01634, i64 32
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.033, ptr noundef nonnull align 8 dereferenceable(32) %.035, i64 20, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.035, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !47
  store ptr null, ptr %i.q, align 8, !tbaa !47
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  store ptr %i.r, ptr %i.i, align 8, !tbaa !47
  %.not.i.i.i.i.i18 = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i18, label %_ZN4llvm17InstantiationViewaSEOS0_.exit20, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19: ; preds = %bb.c
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(257) %i.s) #17, !inline_history !25
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit20

_ZN4llvm17InstantiationViewaSEOS0_.exit20:        ; preds = %bb.c, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i19
  %i.w = getelementptr inbounds nuw i8, ptr %.035, i64 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit20, %_ZN4llvm17InstantiationViewaSEOS0_.exit
  %.117 = phi ptr [ %i.p, %_ZN4llvm17InstantiationViewaSEOS0_.exit ], [ %.01634, %_ZN4llvm17InstantiationViewaSEOS0_.exit20 ] ; 3 uses
  %.1 = phi ptr [ %.035, %_ZN4llvm17InstantiationViewaSEOS0_.exit ], [ %i.w, %_ZN4llvm17InstantiationViewaSEOS0_.exit20 ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 32 ; 2 uses
  %i.y = icmp ne ptr %.1, %1
  %i.z = icmp ne ptr %.117, %3
  %i.aa = select i1 %i.y, i1 %i.z, i1 false
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.sroa.0.0.lcssa = phi ptr [ %4, %bb.a ], [ %i.x, %bb.d ] ; 4 uses
  %.016.lcssa = phi ptr [ %2, %bb.a ], [ %.117, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.ab = ptrtoint ptr %1 to i64
  %i.ac = ptrtoint ptr %.0.lcssa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 5                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.ap, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %i.ae, %._crit_edge ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ao, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %.sroa.0.0.lcssa, %._crit_edge ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.an, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i, i64 20, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47
  store ptr null, ptr %i.ah, align 8, !tbaa !47
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 3 uses
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 144
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(257) %i.aj) #17, !inline_history !26
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 32
  %i.ao = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 32 ; 2 uses
  %i.ap = add nsw i64 %.012.i.i.i.i.i, -1
  %i.aq = icmp sgt i64 %.012.i.i.i.i.i, 1
  br i1 %i.aq, label %.lr.ph.i.i.i.i.i, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !20

_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, %._crit_edge
  %.08.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa, %._crit_edge ], [ %i.ao, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ]
  %i.ar = ptrtoint ptr %.08.lcssa.i.i.i.i.i to i64 ; 3 uses
  %i.as = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.at = sub i64 %i.ar, %i.as
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa, i64 %i.at ; 2 uses
  %i.av = ptrtoint ptr %3 to i64
  %i.aw = ptrtoint ptr %.016.lcssa to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 5                 ; 2 uses
  %i.az = icmp sgt i64 %i.ay, 0
  br i1 %i.az, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29

.lr.ph.i.i.i.i.i22:                               ; preds = %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28
  %.012.i.i.i.i.i23 = phi i64 [ %i.bj, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28 ], [ %i.ay, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 2 uses
  %.0811.i.i.i.i.i24 = phi ptr [ %i.bi, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28 ], [ %i.au, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 3 uses
  %.0910.i.i.i.i.i25 = phi ptr [ %i.bh, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28 ], [ %.016.lcssa, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.0811.i.i.i.i.i24, ptr noundef nonnull align 8 dereferenceable(32) %.0910.i.i.i.i.i25, i64 20, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  store ptr null, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !47 ; 3 uses
  store ptr %i.bc, ptr %i.ba, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i26 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i26, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i.i.i22
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(257) %i.bd) #17, !inline_history !26
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i22
  %i.bh = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i25, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i24, i64 32 ; 2 uses
  %i.bj = add nsw i64 %.012.i.i.i.i.i23, -1
  %i.bk = icmp sgt i64 %.012.i.i.i.i.i23, 1
  br i1 %i.bk, label %.lr.ph.i.i.i.i.i22, label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit, !llvm.loop !20

_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i28
  %5 = ptrtoint ptr %i.bi to i64
  br label %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29

_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29: ; preds = %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit
  %.08.lcssa.i.i.i.i.i21 = phi i64 [ %i.ar, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit ], [ %5, %_ZSt4moveIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit29.loopexit ]
  %i.bl = sub i64 %.08.lcssa.i.i.i.i.i21, %i.ar
  %i.bm = getelementptr inbounds i8, ptr %i.au, i64 %i.bl
  ret ptr %i.bm
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt30__move_merge_adaptive_backwardIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEES4_S8_NS0_5__ops15_Iter_less_iterEEvT_SB_T0_SC_T1_T2_(ptr %0, ptr %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %3 to i64
  %i.c = ptrtoint ptr %2 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 5                   ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.p, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.h, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %4, %bb.b ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.g, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i ], [ %3, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 20, i1 false)
  %i.i = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  store ptr null, ptr %i.j, align 8, !tbaa !47
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !47   ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(257) %i.l) #17, !inline_history !27
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.p = add nsw i64 %.010.i.i.i.i.i, -1
  %i.q = icmp sgt i64 %.010.i.i.i.i.i, 1
  br i1 %i.q, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !24

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq ptr %2, %3
  br i1 %i.r, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds i8, ptr %3, i64 -32
  br label %.outer

.outer:                                           ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit, %bb.d
  %.sroa.033.0.ph.pn = phi ptr [ %1, %bb.d ], [ %.sroa.033.0.ph, %_ZN4llvm17InstantiationViewaSEOS0_.exit ] ; 3 uses
  %.sroa.0.0.ph = phi ptr [ %4, %bb.d ], [ %i.y, %_ZN4llvm17InstantiationViewaSEOS0_.exit ]
  %.0.ph = phi ptr [ %i.s, %bb.d ], [ %.0, %_ZN4llvm17InstantiationViewaSEOS0_.exit ]
  %.sroa.033.0.ph = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -32 ; 3 uses
  %i.t = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -16
  br label %bb.e

bb.e:                                             ; preds = %.outer, %bb.i
  %.sroa.0.0 = phi ptr [ %i.y, %bb.i ], [ %.sroa.0.0.ph, %.outer ] ; 2 uses
  %.0 = phi ptr [ %i.bf, %bb.i ], [ %.0.ph, %.outer ] ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !62
  %i.w = load i32, ptr %i.t, align 8, !tbaa !62
  %i.x = icmp ult i32 %i.v, %i.w
  %i.y = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -32 ; 5 uses
  %i.z = getelementptr inbounds i8, ptr %.sroa.0.0, i64 -8 ; 4 uses
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.033.0.ph, i64 20, i1 false)
  %i.aa = getelementptr inbounds i8, ptr %.sroa.033.0.ph.pn, i64 -8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  store ptr null, ptr %i.aa, align 8, !tbaa !47
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !47
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN4llvm17InstantiationViewaSEOS0_.exit, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !49
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(257) %i.ac) #17, !inline_history !25
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit

_ZN4llvm17InstantiationViewaSEOS0_.exit:          ; preds = %bb.f, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i
  %i.ag = icmp eq ptr %0, %.sroa.033.0.ph
  br i1 %i.ag, label %bb.g, label %.outer, !llvm.loop !389

bb.g:                                             ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 32 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = ptrtoint ptr %2 to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 5                 ; 2 uses
  %i.am = icmp sgt i64 %i.al, 0
  br i1 %i.am, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit

.lr.ph.i.i.i.i.i19:                               ; preds = %bb.g, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25
  %.010.i.i.i.i.i20 = phi i64 [ %i.aw, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.al, %bb.g ] ; 2 uses
  %.069.i.i.i.i.i21 = phi ptr [ %i.ao, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.y, %bb.g ] ; 2 uses
  %.078.i.i.i.i.i22 = phi ptr [ %i.an, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25 ], [ %i.ah, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -32 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -32 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.an, i64 20, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i21, i64 -8 ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i22, i64 -8 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !47
  store ptr null, ptr %i.aq, align 8, !tbaa !47
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !47 ; 3 uses
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !47
  %.not.i.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i23, label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24: ; preds = %.lr.ph.i.i.i.i.i19
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !49
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 144
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef nonnull align 8 dereferenceable(257) %i.as) #17, !inline_history !27
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25

_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25: ; preds = %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i24, %.lr.ph.i.i.i.i.i19
  %i.aw = add nsw i64 %.010.i.i.i.i.i20, -1
  %i.ax = icmp sgt i64 %.010.i.i.i.i.i20, 1
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i19, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, !llvm.loop !24

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.0, i64 20, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !47
  store ptr null, ptr %i.ay, align 8, !tbaa !47
  %i.ba = load ptr, ptr %i.z, align 8, !tbaa !47  ; 3 uses
  store ptr %i.az, ptr %i.z, align 8, !tbaa !47
  %.not.i.i.i.i.i27 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i27, label %_ZN4llvm17InstantiationViewaSEOS0_.exit29, label %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28

_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28: ; preds = %bb.h
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(257) %i.ba) #17, !inline_history !25
  br label %_ZN4llvm17InstantiationViewaSEOS0_.exit29

_ZN4llvm17InstantiationViewaSEOS0_.exit29:        ; preds = %bb.h, %_ZNKSt14default_deleteIN4llvm18SourceCoverageViewEEclEPS1_.exit.i.i.i.i.i28
  %i.be = icmp eq ptr %2, %.0
  br i1 %i.be, label %_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit29
  %i.bf = getelementptr inbounds i8, ptr %.0, i64 -32
  br label %bb.e, !llvm.loop !389

_ZSt13move_backwardIPN4llvm17InstantiationViewEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEET0_T_SA_S9_.exit: ; preds = %_ZN4llvm17InstantiationViewaSEOS0_.exit29, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i25, %_ZN4llvm17InstantiationViewaSEOS0_.exit.i.i.i.i.i, %bb.g, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPN4llvm17InstantiationViewESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_less_iterEEvT_SB_SB_T0_SC_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #2 comdat {
bb.a:
  %.sroa.0.i.i = alloca { %"class.llvm::StringRef", i32 }, align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond78 = or i1 %i.a, %i.b
  br i1 %or.cond78, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr7583 = phi i64 [ %4, %.lr.ph ], [ %i.bm, %tailrecurse ] ; 4 uses
  %.tr7482 = phi i64 [ %3, %.lr.ph ], [ %i.bl, %tailrecurse ] ; 4 uses
  %.tr7280 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr79 = phi ptr [ %0, %.lr.ph ], [ %i.bk, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr7583, %.tr7482
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7280, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !62
  %i.h = getelementptr inbounds nuw i8, ptr %.tr79, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !62
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.tr79, i64 20, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %.tr79, i64 24 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !47
  %i.m = inttoptr i64 %i.l to ptr
  store ptr null, ptr %i.k, align 8, !tbaa !47
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.tr79, ptr noundef nonnull align 8 dereferenceable(32) %.tr7280, i64 20, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.tr7280, i64 24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !47
end_hunk_3
