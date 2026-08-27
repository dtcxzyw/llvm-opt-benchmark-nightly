Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Inliner?download=true
inline.NumInlined: 2494
inline.NumDeleted: 1338
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN4llvm4bolt7Inliner21inlineCallsInFunctionERNS0_14BinaryFunctionE:_ZNSt6vectorIPN4llvm4bolt16BinaryBasicBlockESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i.i
  %.val2.i7.i.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i8.i.i.i.i.i.i.i = icmp eq i64 %.val2.i7.i.i.i.i.i.i.i, -1
  %spec.select.i3.i.i9.i.i.i.i.i.i.i = select i1 %.not.i2.i.i8.i.i.i.i.i.i.i, i64 0, i64 %.val2.i7.i.i.i.i.i.i.i
  %i.ae = icmp ugt i64 %.val.val.fr.i.i.i.i.i.i.i, %spec.select.i3.i.i9.i.i.i.i.i.i.i
  %i.af = select i1 %.not.i.i.i.i.i.i.i.i.i, i1 %i.ae, i1 false
  br i1 %i.af, label %.lr.ph.split.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %bb.g, %.lr.ph.split.i.i.i.i.i.i.i
  %i.ag = phi ptr [ %i.ah, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.ac, %bb.g ]
  %.sroa.0.011.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.pn18.i.i.i.i.i.i, %bb.g ] ; 3 uses
  %.sroa.03.010.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.g ]
  store ptr %i.ag, ptr %.sroa.03.010.i.i.i.i.i.i.i, align 8, !tbaa !213
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ah = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 152
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i.i.i.i.i.i.i.i = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, -1
  %spec.select.i3.i.i.i.i.i.i.i.i.i = select i1 %.not.i2.i.i.i.i.i.i.i.i.i, i64 0, i64 %.val2.i.i.i.i.i.i.i.i
  %i.aj = icmp ugt i64 %.val.val.fr.i.i.i.i.i.i.i, %spec.select.i3.i.i.i.i.i.i.i.i.i
  br i1 %i.aj, label %.lr.ph.split.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i, !llvm.loop !310

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.split.i.i.i.i.i.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i.i.i.i.i.i = phi ptr [ %.sroa.0109.0, %bb.f ], [ %.sroa.0109.0, %bb.e ], [ %.sroa.0.019.i.ptr.i.i.i.i.i, %bb.g ], [ %.sroa.0.011.i.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i.i ]
  store ptr %i.u, ptr %.sink.i.i.i.i.i.i, align 8, !tbaa !213
  %.sroa.0.019.i.add.i.i.i.i.i = add nuw nsw i64 %.sroa.0.019.i.idx.i.i.i.i.i, 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.0.019.i.add.i.i.i.i.i, 128
  br i1 %.not.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_SI_T0_.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i, !llvm.loop !311

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_SI_T0_.exit.i.i.i.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0109.0, i64 128 ; 2 uses
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.ak, %.sroa.10.0
  br i1 %.not6.i.i.i.i.i.i, label %.lr.ph173, label %.lr.ph.i12.i.i.i.i.i

.lr.ph.i12.i.i.i.i.i:                             ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_SI_T0_.exit.i.i.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi ptr [ %i.av, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i" ], [ %i.ak, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_SI_T0_.exit.i.i.i.i.i" ] ; 5 uses
  %i.al = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 152
  %.val.val.i.i.i.i.i.i.i = load i64, ptr %i.am, align 8, !tbaa !261
  %.val.val.fr.i.i13.i.i.i.i.i = freeze i64 %.val.val.i.i.i.i.i.i.i ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %.val.val.fr.i.i13.i.i.i.i.i, -1
  %.sroa.0.06.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.an = load ptr, ptr %.sroa.0.06.i.i.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 152
  %.val2.i7.i.i14.i.i.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i8.i.i15.i.i.i.i.i = icmp eq i64 %.val2.i7.i.i14.i.i.i.i.i, -1
  %spec.select.i3.i.i9.i.i16.i.i.i.i.i = select i1 %.not.i2.i.i8.i.i15.i.i.i.i.i, i64 0, i64 %.val2.i7.i.i14.i.i.i.i.i
  %i.ap = icmp ugt i64 %.val.val.fr.i.i13.i.i.i.i.i, %spec.select.i3.i.i9.i.i16.i.i.i.i.i
  %i.aq = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 %i.ap, i1 false
  br i1 %i.aq, label %.lr.ph.split.i.i18.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i"

.lr.ph.split.i.i18.i.i.i.i.i:                     ; preds = %.lr.ph.i12.i.i.i.i.i, %.lr.ph.split.i.i18.i.i.i.i.i
  %i.ar = phi ptr [ %i.as, %.lr.ph.split.i.i18.i.i.i.i.i ], [ %i.an, %.lr.ph.i12.i.i.i.i.i ]
  %.sroa.0.011.i.i19.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i21.i.i.i.i.i, %.lr.ph.split.i.i18.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ] ; 3 uses
  %.sroa.03.010.i.i20.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i19.i.i.i.i.i, %.lr.ph.split.i.i18.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ]
  store ptr %i.ar, ptr %.sroa.03.010.i.i20.i.i.i.i.i, align 8, !tbaa !213
  %.sroa.0.0.i.i21.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i19.i.i.i.i.i, i64 -8 ; 2 uses
  %i.as = load ptr, ptr %.sroa.0.0.i.i21.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 152
  %.val2.i.i.i22.i.i.i.i.i = load i64, ptr %i.at, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i.i.i23.i.i.i.i.i = icmp eq i64 %.val2.i.i.i22.i.i.i.i.i, -1
  %spec.select.i3.i.i.i.i24.i.i.i.i.i = select i1 %.not.i2.i.i.i.i23.i.i.i.i.i, i64 0, i64 %.val2.i.i.i22.i.i.i.i.i
  %i.au = icmp ugt i64 %.val.val.fr.i.i13.i.i.i.i.i, %spec.select.i3.i.i.i.i24.i.i.i.i.i
  br i1 %i.au, label %.lr.ph.split.i.i18.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", !llvm.loop !310

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i": ; preds = %.lr.ph.split.i.i18.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i
  %.sroa.03.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i12.i.i.i.i.i ], [ %.sroa.0.011.i.i19.i.i.i.i.i, %.lr.ph.split.i.i18.i.i.i.i.i ]
  store ptr %i.al, ptr %.sroa.03.0.lcssa.i.i.i.i.i.i.i, align 8, !tbaa !213
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.av, %.sroa.10.0
  br i1 %.not.i17.i.i.i.i.i, label %.lr.ph173, label %.lr.ph.i12.i.i.i.i.i, !llvm.loop !312

bb.h:                                             ; preds = %bb.c
  %.not17.i27.i.i.i.i.i = icmp eq ptr %scevgep.i.i.i.i.i, %.sroa.10.0
  br i1 %.not17.i27.i.i.i.i.i, label %.lr.ph173, label %.lr.ph.i28.i.i.i.i.i

.lr.ph.i28.i.i.i.i.i:                             ; preds = %bb.h, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i
  %.sroa.0.019.i29.i.i.i.i.i = phi ptr [ %.sroa.0.0.i42.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i ], [ %scevgep.i.i.i.i.i, %bb.h ] ; 6 uses
  %.pn18.i30.i.i.i.i.i = phi ptr [ %.sroa.0.019.i29.i.i.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i ], [ %.sroa.0109.0, %bb.h ] ; 4 uses
  %i.aw = load ptr, ptr %.sroa.0.019.i29.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.ax = load ptr, ptr %.sroa.0109.0, align 8, !tbaa !213 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 152
  %.val.i.i31.i.i.i.i.i = load i64, ptr %i.ay, align 8, !tbaa !261
  %.val.val.fr.i.i32.i.i.i.i.i = freeze i64 %.val.i.i31.i.i.i.i.i ; 4 uses
  %i.az = getelementptr i8, ptr %i.ax, i64 152
  %.val1.i.i33.i.i.i.i.i = load i64, ptr %i.az, align 8, !tbaa !261 ; 2 uses
  %.not.i.i.i.i34.i.i.i.i.i = icmp ne i64 %.val.val.fr.i.i32.i.i.i.i.i, -1 ; 2 uses
  %.not.i2.i.i.i35.i.i.i.i.i = icmp eq i64 %.val1.i.i33.i.i.i.i.i, -1
  %spec.select.i3.i.i.i36.i.i.i.i.i = select i1 %.not.i2.i.i.i35.i.i.i.i.i, i64 0, i64 %.val1.i.i33.i.i.i.i.i
  %i.ba = icmp ugt i64 %.val.val.fr.i.i32.i.i.i.i.i, %spec.select.i3.i.i.i36.i.i.i.i.i
  %i.bb = select i1 %.not.i.i.i.i34.i.i.i.i.i, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.i, label %bb.m

bb.i:                                             ; preds = %.lr.ph.i28.i.i.i.i.i
  %i.bc = ptrtoint ptr %.sroa.0.019.i29.i.i.i.i.i to i64
  %i.bd = sub i64 %i.bc, %i.n                     ; 3 uses
  %i.be = ashr exact i64 %i.bd, 3                 ; 2 uses
  %i.bf = icmp sgt i64 %i.be, 1
  br i1 %i.bf, label %bb.j, label %bb.k, !prof !281

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn18.i30.i.i.i.i.i, i64 16
  %i.bh = sub nsw i64 0, %i.be
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.bg, i64 %i.bh
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bi, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0109.0, i64 %i.bd, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.bj = icmp eq i64 %i.bd, 8
  br i1 %i.bj, label %bb.l, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.pn18.i30.i.i.i.i.i, i64 8
  store ptr %i.ax, ptr %i.bk, align 8, !tbaa !213
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i

bb.m:                                             ; preds = %.lr.ph.i28.i.i.i.i.i
  %i.bl = load ptr, ptr %.pn18.i30.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 152
  %.val2.i7.i.i37.i.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i8.i.i38.i.i.i.i.i = icmp eq i64 %.val2.i7.i.i37.i.i.i.i.i, -1
  %spec.select.i3.i.i9.i.i39.i.i.i.i.i = select i1 %.not.i2.i.i8.i.i38.i.i.i.i.i, i64 0, i64 %.val2.i7.i.i37.i.i.i.i.i
  %i.bn = icmp ugt i64 %.val.val.fr.i.i32.i.i.i.i.i, %spec.select.i3.i.i9.i.i39.i.i.i.i.i
  %i.bo = select i1 %.not.i.i.i.i34.i.i.i.i.i, i1 %i.bn, i1 false
  br i1 %i.bo, label %.lr.ph.split.i.i44.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i

.lr.ph.split.i.i44.i.i.i.i.i:                     ; preds = %bb.m, %.lr.ph.split.i.i44.i.i.i.i.i
  %i.bp = phi ptr [ %i.bq, %.lr.ph.split.i.i44.i.i.i.i.i ], [ %i.bl, %bb.m ]
  %.sroa.0.011.i.i45.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i47.i.i.i.i.i, %.lr.ph.split.i.i44.i.i.i.i.i ], [ %.pn18.i30.i.i.i.i.i, %bb.m ] ; 3 uses
  %.sroa.03.010.i.i46.i.i.i.i.i = phi ptr [ %.sroa.0.011.i.i45.i.i.i.i.i, %.lr.ph.split.i.i44.i.i.i.i.i ], [ %.sroa.0.019.i29.i.i.i.i.i, %bb.m ]
  store ptr %i.bp, ptr %.sroa.03.010.i.i46.i.i.i.i.i, align 8, !tbaa !213
  %.sroa.0.0.i.i47.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i45.i.i.i.i.i, i64 -8 ; 2 uses
  %i.bq = load ptr, ptr %.sroa.0.0.i.i47.i.i.i.i.i, align 8, !tbaa !213 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 152
  %.val2.i.i.i48.i.i.i.i.i = load i64, ptr %i.br, align 8, !tbaa !261 ; 2 uses
  %.not.i2.i.i.i.i49.i.i.i.i.i = icmp eq i64 %.val2.i.i.i48.i.i.i.i.i, -1
  %spec.select.i3.i.i.i.i50.i.i.i.i.i = select i1 %.not.i2.i.i.i.i49.i.i.i.i.i, i64 0, i64 %.val2.i.i.i48.i.i.i.i.i
  %i.bs = icmp ugt i64 %.val.val.fr.i.i32.i.i.i.i.i, %spec.select.i3.i.i.i.i50.i.i.i.i.i
  br i1 %i.bs, label %.lr.ph.split.i.i44.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i, !llvm.loop !310

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i: ; preds = %.lr.ph.split.i.i44.i.i.i.i.i, %bb.m, %bb.l, %bb.k, %bb.j
  %.sink.i41.i.i.i.i.i = phi ptr [ %.sroa.0109.0, %bb.l ], [ %.sroa.0109.0, %bb.j ], [ %.sroa.0109.0, %bb.k ], [ %.sroa.0.019.i29.i.i.i.i.i, %bb.m ], [ %.sroa.0.011.i.i45.i.i.i.i.i, %.lr.ph.split.i.i44.i.i.i.i.i ]
  store ptr %i.aw, ptr %.sink.i41.i.i.i.i.i, align 8, !tbaa !213
  %.sroa.0.0.i42.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i29.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i43.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i42.i.i.i.i.i, %.sroa.10.0
  br i1 %.not.i43.i.i.i.i.i, label %.lr.ph173, label %.lr.ph.i28.i.i.i.i.i, !llvm.loop !311

.lr.ph173:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i40.i.i.i.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_T0_.exit.i.i.i.i.i.i", %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4llvm4bolt16BinaryBasicBlockESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS3_7Inliner21inlineCallsInFunctionERNS3_14BinaryFunctionEE3$_0EEEvT_SI_T0_.exit.i.i.i.i.i", %bb.h
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 1568 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 1368 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 1448
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cm = ptrtoint ptr %1 to i64
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph173, %.thread133
  %.044172 = phi i1 [ false, %.lr.ph173 ], [ %.145.lcssa, %.thread133 ] ; 2 uses
  %.sroa.0105.0171 = phi ptr [ %.sroa.0109.0, %.lr.ph173 ], [ %i.iw, %.thread133 ] ; 2 uses
  %i.cn = load ptr, ptr %.sroa.0105.0171, align 8, !tbaa !213 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !215 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !215
  %.not148166 = icmp eq ptr %i.co, %i.cq
  br i1 %.not148166, label %.thread133, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n, %.backedge
  %.145169 = phi i1 [ %.751218, %.backedge ], [ %.044172, %bb.n ] ; 2 uses
  %.0168 = phi ptr [ %.4217, %.backedge ], [ %i.cn, %bb.n ] ; 3 uses
  %.sroa.0.0167 = phi ptr [ %.sroa.0.4216, %.backedge ], [ %i.co, %bb.n ] ; 8 uses
  %i.cr = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 232
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = call noundef zeroext i1 %i.cu(ptr noundef nonnull align 8 dereferenceable(536) %i.cr, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.0167) #21
  br i1 %i.cv, label %bb.o, label %.thread

bb.o:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 24
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !56 ; 3 uses
  %.01317.i = add i32 %i.cx, -1                   ; 2 uses
  %i.cy = icmp sgt i32 %.01317.i, -1
  br i1 %i.cy, label %.lr.ph.i, label %.thread

.lr.ph.i:                                         ; preds = %bb.o
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !21 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.backedge.i, %.lr.ph.i
  %.01318.i = phi i32 [ %.01317.i, %.lr.ph.i ], [ %.013.i, %.backedge.i ] ; 4 uses
  %4 = zext nneg i32 %.01318.i to i64
  %i.db = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %4 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !313 ; 2 uses
  %i.dd = icmp eq i8 %i.dc, 6
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = icmp eq ptr %i.df, null
  %i.dh = select i1 %i.dd, i1 %i.dg, i1 false
  br i1 %i.dh, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  switch i8 %i.dc, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit [
    i8 6, label %.backedge.i
    i8 2, label %.backedge.i
  ]

.backedge.i:                                      ; preds = %bb.q, %bb.q
  %.013.i = add nsw i32 %.01318.i, -1
  %i.di = icmp sgt i32 %.01318.i, 0
  br i1 %i.di, label %bb.p, label %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit

_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit: ; preds = %bb.p, %bb.q, %.backedge.i
  %.1.i = phi i32 [ %i.cx, %.backedge.i ], [ %.01318.i, %bb.p ], [ %i.cx, %bb.q ]
  %.not = icmp eq i32 %.1.i, 1
  br i1 %.not, label %bb.r, label %.thread

bb.r:                                             ; preds = %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit
  %i.dj = load i8, ptr %i.da, align 8, !tbaa !313
  %i.dk = icmp eq i8 %i.dj, 5
  br i1 %i.dk, label %bb.s, label %.thread

.thread:                                          ; preds = %.lr.ph, %_ZN4llvm4bolt6MCPlus19getNumPrimeOperandsERKNS_6MCInstE.exit, %bb.r, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.0.0167, i64 128
  br label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.dm = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !8
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 864
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = call noundef ptr %i.dp(ptr noundef nonnull align 8 dereferenceable(536) %i.dm, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.0167, i32 noundef 0) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 0, ptr %i.a, align 8, !tbaa !69
  %i.dr = call noundef ptr @_ZN4llvm4bolt13BinaryContext20getFunctionForSymbolEPKNS_8MCSymbolEPm(ptr noundef nonnull align 8 dereferenceable(2268) %i.c, ptr noundef %i.dq, ptr noundef nonnull %i.a) #21 ; 11 uses
  %i.ds = icmp eq ptr %i.dr, null
  %i.dt = load i64, ptr %i.a, align 8
  %i.du = icmp ne i64 %i.dt, 0
  %or.cond = select i1 %i.ds, i1 true, i1 %i.du
  %i.dv = icmp eq ptr %i.dr, %1
  %or.cond237 = or i1 %or.cond, %i.dv
  br i1 %or.cond237, label %.thread219, label %bb.t, !llvm.loop !315

bb.t:                                             ; preds = %bb.s
  %i.dw = load i64, ptr %i.bv, align 8, !tbaa !316
  %.not.not.i.i = icmp eq i64 %i.dw, 0
  br i1 %.not.not.i.i, label %.preheader177, label %bb.v

.preheader177:                                    ; preds = %bb.t, %bb.u
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.u ], [ %i.bx, %bb.t ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !284 ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %.loopexit152, label %bb.u

bb.u:                                             ; preds = %.preheader177
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !236
  %i.dz = icmp eq ptr %i.dr, %i.dy
  br i1 %i.dz, label %_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit, label %.preheader177, !llvm.loop !318

bb.v:                                             ; preds = %bb.t
  %i.ea = ptrtoint ptr %i.dr to i64
  %i.eb = load i64, ptr %i.bw, align 8, !tbaa !319 ; 2 uses
  %i.ec = urem i64 %i.ea, %i.eb                   ; 2 uses
  %i.ed = load ptr, ptr %i.bu, align 8, !tbaa !320
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %i.ec
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !283 ; 2 uses
  %.not.i.i.i.i62 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i62, label %.loopexit152, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !284 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !236
  %i.ej = icmp eq ptr %i.dr, %i.ei
  br i1 %i.ej, label %_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.ek = icmp eq ptr %i.dr, %i.en
  br i1 %i.ek, label %_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !321

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.020.i.i.i.i = phi ptr [ %i.el, %bb.x ], [ %i.eg, %bb.w ]
  %i.el = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !284 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.el, null
  br i1 %.not18.i.i.i.i, label %.loopexit152, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !236 ; 2 uses
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = urem i64 %i.eo, %i.eb
  %.not19.i.i.i.i = icmp eq i64 %i.ep, %i.ec
  br i1 %.not19.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !321

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.y
  br label %.loopexit152, !llvm.loop !321

.loopexit152:                                     ; preds = %.lr.ph.i.i.i.i, %.preheader177, %..loopexit_crit_edge21.i.i.i.i, %bb.v
  br label %.thread219, !llvm.loop !315

_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit: ; preds = %bb.x, %bb.u, %bb.w
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.0.i.i, %bb.u ], [ %i.eg, %bb.w ], [ %i.el, %bb.x ] ; 4 uses
  %i.eq = load ptr, ptr %i.bt, align 8, !tbaa !71
  %i.er = call noundef zeroext i1 @_ZNK4llvm4bolt13MCPlusBuilder10isTailCallERKNS_6MCInstE(ptr noundef nonnull align 8 dereferenceable(536) %i.eq, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0.0167) #21
  br i1 %i.er, label %.critedge57, label %bb.z

bb.z:                                             ; preds = %_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 16
  %i.et = load i8, ptr %i.es, align 8, !tbaa !322
  %i.eu = icmp eq i8 %i.et, 1
  br i1 %i.eu, label %.thread219, label %bb.ac, !llvm.loop !315

.critedge57:                                      ; preds = %_ZNSt13unordered_mapIPKN4llvm4bolt14BinaryFunctionENS1_12InliningInfoESt4hashIS4_ESt8equal_toIS4_ESaISt4pairIKS4_S5_EEE4findERSB_.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 32
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !324
  %i.ex = load i64, ptr @_ZN4llvm4bolt7Inliner18SizeOfTailCallInstE, align 8, !tbaa !69 ; 2 uses
  %.not.i = icmp eq i64 %i.ex, 0
  br i1 %.not.i, label %bb.aa, label %_ZN4llvm4bolt7Inliner21getSizeOfTailCallInstERKNS0_13BinaryContextE.exit

bb.aa:                                            ; preds = %.critedge57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %3, i8 0, i64 16, i1 false)
  store ptr %i.ce, ptr %i.cd, align 8, !tbaa !21
  store i32 0, ptr %i.cf, align 8, !tbaa !56
  store i32 6, ptr %i.cg, align 4, !tbaa !70
  %i.ey = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.ez = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.fa = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.ez) #21
  %i.fb = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 1392
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(536) %i.ey, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef %i.fa, ptr noundef %i.fb) #21, !inline_history !325
  %i.ff = call noundef i64 @_ZNK4llvm4bolt13BinaryContext22computeInstructionSizeERKNS_6MCInstEPKNS_13MCCodeEmitterE(ptr noundef nonnull align 8 dereferenceable(2268) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef null) ; 2 uses
  store i64 %i.ff, ptr @_ZN4llvm4bolt7Inliner18SizeOfTailCallInstE, align 8, !tbaa !69
  %i.fg = load ptr, ptr %i.cd, align 8, !tbaa !21 ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.ce
  br i1 %i.fh, label %_ZN4llvm6MCInstD2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.fg) #21
  br label %_ZN4llvm6MCInstD2Ev.exit.i

_ZN4llvm6MCInstD2Ev.exit.i:                       ; preds = %bb.ab, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN4llvm4bolt7Inliner21getSizeOfTailCallInstERKNS0_13BinaryContextE.exit

_ZN4llvm4bolt7Inliner21getSizeOfTailCallInstERKNS0_13BinaryContextE.exit: ; preds = %.critedge57, %_ZN4llvm6MCInstD2Ev.exit.i
  %.0.i = phi i64 [ %i.ff, %_ZN4llvm6MCInstD2Ev.exit.i ], [ %i.ex, %.critedge57 ]
  %i.fi = sub i64 %i.ew, %.0.i
  br label %bb.af

bb.ac:                                            ; preds = %bb.z
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i.i, i64 24
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !326
  %i.fl = load i64, ptr @_ZN4llvm4bolt7Inliner14SizeOfCallInstE, align 8, !tbaa !69 ; 2 uses
  %.not.i63 = icmp eq i64 %i.fl, 0
  br i1 %.not.i63, label %bb.ad, label %_ZN4llvm4bolt7Inliner17getSizeOfCallInstERKNS0_13BinaryContextE.exit

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %2, i8 0, i64 16, i1 false)
  store ptr %i.bz, ptr %i.by, align 8, !tbaa !21
  store i32 0, ptr %i.ca, align 8, !tbaa !56
  store i32 6, ptr %i.cb, align 4, !tbaa !70
  %i.fm = load ptr, ptr %i.bt, align 8, !tbaa !71 ; 2 uses
  %i.fn = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.fo = call noundef ptr @_ZN4llvm9MCContext21createNamedTempSymbolEv(ptr noundef nonnull align 8 dereferenceable(2208) %i.fn) #21
  %i.fp = load ptr, ptr %i.cc, align 8, !tbaa !73
  %i.fq = load ptr, ptr %i.fm, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 1384
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(536) %i.fm, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef %i.fo, ptr noundef %i.fp) #21, !inline_history !327
  %i.ft = call noundef i64 @_ZNK4llvm4bolt13BinaryContext22computeInstructionSizeERKNS_6MCInstEPKNS_13MCCodeEmitterE(ptr noundef nonnull align 8 dereferenceable(2268) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef null) ; 2 uses
  store i64 %i.ft, ptr @_ZN4llvm4bolt7Inliner14SizeOfCallInstE, align 8, !tbaa !69
  %i.fu = load ptr, ptr %i.by, align 8, !tbaa !21 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.bz
  br i1 %i.fv, label %_ZN4llvm6MCInstD2Ev.exit.i65, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef %i.fu) #21
  br label %_ZN4llvm6MCInstD2Ev.exit.i65

_ZN4llvm6MCInstD2Ev.exit.i65:                     ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %_ZN4llvm4bolt7Inliner17getSizeOfCallInstERKNS0_13BinaryContextE.exit

_ZN4llvm4bolt7Inliner17getSizeOfCallInstERKNS0_13BinaryContextE.exit: ; preds = %bb.ac, %_ZN4llvm6MCInstD2Ev.exit.i65
  %.0.i64 = phi i64 [ %i.ft, %_ZN4llvm6MCInstD2Ev.exit.i65 ], [ %i.fl, %bb.ac ]
  %i.fw = sub i64 %i.fk, %.0.i64
  br label %bb.af

bb.af:                                            ; preds = %_ZN4llvm4bolt7Inliner17getSizeOfCallInstERKNS0_13BinaryContextE.exit, %_ZN4llvm4bolt7Inliner21getSizeOfTailCallInstERKNS0_13BinaryContextE.exit
  %.035 = phi i64 [ %i.fi, %_ZN4llvm4bolt7Inliner21getSizeOfTailCallInstERKNS0_13BinaryContextE.exit ], [ %i.fw, %_ZN4llvm4bolt7Inliner17getSizeOfCallInstERKNS0_13BinaryContextE.exit ] ; 2 uses
  %i.fx = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL9InlineAllE, i64 120), align 8, !tbaa !46, !range !18, !noundef !19
  %i.fy = trunc nuw i8 %i.fx to i1
  br i1 %i.fy, label %_ZN4opts12mustConsiderERKN4llvm4bolt14BinaryFunctionE.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL20ForceInlineFunctionsB5cxx11E, i64 120), align 8, !tbaa !52 ; 2 uses
  %i.ga = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN4optsL20ForceInlineFunctionsB5cxx11E, i64 128), align 8, !tbaa !52 ; 2 uses
  %.not10.not.i = icmp eq ptr %i.fz, %i.ga
  br i1 %.not10.not.i, label %.loopexit, label %.lr.ph.i66

bb.ah:                                            ; preds = %.lr.ph.i66
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.06.011.i, i64 32 ; 2 uses
  %.not.not.i = icmp eq ptr %i.gb, %i.ga
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i66

.lr.ph.i66:                                       ; preds = %bb.ag, %bb.ah
  %.sroa.06.011.i = phi ptr [ %i.gb, %bb.ah ], [ %i.fz, %bb.ag ] ; 2 uses
  %i.gc = call noundef zeroext i1 @_ZNK4llvm4bolt14BinaryFunction7hasNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360) %i.dr, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.06.011.i)
  br i1 %i.gc, label %_ZN4opts12mustConsiderERKN4llvm4bolt14BinaryFunctionE.exit, label %bb.ah
end_hunk_0
