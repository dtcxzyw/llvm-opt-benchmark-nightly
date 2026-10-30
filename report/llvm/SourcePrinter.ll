Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SourcePrinter?download=true
inline.NumInlined: 3359
inline.NumDeleted: 1583
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 36
begin_hunk_0_@"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_":bb.a
  store i32 %i.ap, ptr %i.ao, align 8, !tbaa !239
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !127
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -56
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !240
  %i.at = add nsw i64 %.010.i.i.i.i.i.i, -4
  %i.au = icmp sgt i64 %.010.i.i.i.i.i.i, 4
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i, !llvm.loop !9

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %bb.d
  store i32 %.val.i.i, ptr %0, align 8, !tbaa !239
  store ptr %.sroa.48.0.copyload.i, ptr %i.g, align 8, !tbaa !240
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val2.i9.i.i = load i32, ptr %.pn20.i, align 8, !tbaa !239 ; 2 uses
  %i.av = icmp ult i32 %.val.i.i, %.val2.i9.i.i
  br i1 %i.av, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i"

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.val2.i12.i.i = phi i32 [ %.val2.i.i.i, %.lr.ph.i.i ], [ %.val2.i9.i.i, %bb.e ]
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.e ] ; 3 uses
  %.sroa.05.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.09.021.i, %bb.e ] ; 3 uses
  store i32 %.val2.i12.i.i, ptr %.sroa.05.010.i.i, align 8, !tbaa !239
  %i.aw = getelementptr inbounds i8, ptr %.sroa.05.010.i.i, i64 -8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !240
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -16 ; 2 uses
  %.val2.i.i.i = load i32, ptr %.sroa.0.0.i.i, align 8, !tbaa !239 ; 2 uses
  %i.az = icmp ult i32 %.val.i.i, %.val2.i.i.i
  br i1 %i.az, label %.lr.ph.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i", !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i": ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.09.021.i, %bb.e ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ] ; 2 uses
  store i32 %.val.i.i, ptr %.sroa.05.0.lcssa.i.i, align 8, !tbaa !239
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i, i64 8
  store ptr %.sroa.48.0.copyload.i, ptr %i.ba, align 8, !tbaa !240
  %.val1.i.pre.i = load i32, ptr %0, align 8, !tbaa !239
  br label %bb.f

bb.f:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i
  %.val1.i25.i = phi i32 [ %.val.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i ], [ %.val1.i.pre.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i" ]
  %.sroa.09.0.i = getelementptr inbounds nuw i8, ptr %.sroa.09.021.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.09.0.i, %1
  br i1 %.not.i, label %common.ret30, label %bb.c, !llvm.loop !11

common.ret30:                                     ; preds = %.preheader.i, %bb.b, %bb.f, %bb.g
  ret void

bb.g:                                             ; preds = %bb.a
  %i.bb = lshr i64 %i.d, 1                        ; 2 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bb ; 4 uses
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_"(ptr %0, ptr %i.bc)
  tail call fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_"(ptr %i.bc, ptr %1)
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.a, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  tail call fastcc void @"_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_SK_T0_SL_T1_"(ptr %0, ptr %i.bc, ptr %1, i64 noundef %i.bb, i64 noundef %i.bf)
  br label %common.ret30
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_"(ptr %0, ptr %1, ptr noundef %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 4
  %i.e = add nsw i64 %i.d, 1
  %i.f = sdiv i64 %i.e, 2                         ; 4 uses
  %i.g = getelementptr inbounds [16 x i8], ptr %0, i64 %i.f ; 7 uses
  %i.h = icmp sgt i64 %i.f, %3
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.a, %i.i
  %i.k = ashr exact i64 %i.j, 4                   ; 2 uses
  br i1 %i.h, label %bb.b, label %common.ret

common.ret33:                                     ; preds = %bb.b, %common.ret
  ret void

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_"(ptr %0, ptr %i.g, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_lNS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_T2_"(ptr %i.g, ptr %1, ptr noundef %2, i64 noundef %3)
  tail call fastcc void @"_ZSt23__merge_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_SK_T0_SL_T1_SL_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2, i64 noundef %3)
  br label %common.ret33

common.ret:                                       ; preds = %bb.a
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_"(ptr %0, ptr %i.g, ptr noundef %2)
  tail call fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_"(ptr %i.g, ptr %1, ptr noundef %2)
  tail call fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEElS8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_SK_T0_SL_T1_T2_"(ptr %0, ptr %i.g, ptr %1, i64 noundef %i.f, i64 noundef %i.k, ptr noundef %2)
  br label %common.ret33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEES8_NS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_T1_"(ptr %0, ptr %1, ptr noundef %2) unnamed_addr #18 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 4 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 6 uses
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.c ; 3 uses
  %i.f = icmp sgt i64 %i.c, 96
  br i1 %i.f, label %.lr.ph.i.i, label %._crit_edge.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_.exit.i"
  %i.g = phi i64 [ %i.jt, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_.exit.i" ], [ %i.b, %bb.a ] ; 6 uses
  %.sroa.041.044.i = phi ptr [ %i.js, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_SK_T0_.exit.i" ], [ %0, %bb.a ] ; 31 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 8 ; 6 uses
  %.val1.i.pre23.i.i = load i32, ptr %.sroa.041.044.i, align 8, !tbaa !239 ; 2 uses
  %.sroa.09.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 16 ; 6 uses
  %.val.i.i.i = load i32, ptr %.sroa.09.021.i.ptr.i, align 8, !tbaa !239 ; 3 uses
  %i.i = icmp ult i32 %.val.i.i.i, %.val1.i.pre23.i.i
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 24
  %.sroa.48.0.copyload.i.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.i, align 8
  br i1 %i.i, label %bb.b, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.j = ptrtoint ptr %.sroa.09.021.i.ptr.i to i64
  %i.k = sub i64 %i.j, %i.g
  %i.l = ashr exact i64 %i.k, 4                   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.i.i.i.i.preheader.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %.lr.ph.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i.i.prol = phi i64 [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %.069.i.i.i.i.i.i.i.prol = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i.i.prol = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.sroa.09.021.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ]
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.q = load i32, ptr %i.o, align 4, !tbaa !102
  store i32 %i.q, ptr %i.p, align 8, !tbaa !239
  %i.r = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i.prol, i64 -8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !127
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i.prol, i64 -8
  store ptr %i.s, ptr %i.t, align 8, !tbaa !240
  %i.u = add nsw i64 %.010.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !850

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.i
  %.010.i.i.i.i.i.i.i.unr = phi i64 [ %i.l, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.u, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.i.unr = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.i.unr = phi ptr [ %.sroa.09.021.i.ptr.i, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.v = icmp ult i64 %i.l, 4
  br i1 %i.v, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.i = phi i64 [ %i.au, %.lr.ph.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.w = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -16
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -16
  %i.y = load i32, ptr %i.w, align 4, !tbaa !102
  store i32 %i.y, ptr %i.x, align 8, !tbaa !239
  %i.z = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  %i.ab = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !240
  %i.ac = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -32
  %i.ad = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -32
  %i.ae = load i32, ptr %i.ac, align 8, !tbaa !102
  store i32 %i.ae, ptr %i.ad, align 8, !tbaa !239
  %i.af = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  %i.ah = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !240
  %i.ai = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -48
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -48
  %i.ak = load i32, ptr %i.ai, align 8, !tbaa !102
  store i32 %i.ak, ptr %i.aj, align 8, !tbaa !239
  %i.al = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !127
  %i.an = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -40
  store ptr %i.am, ptr %i.an, align 8, !tbaa !240
  %i.ao = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 8, !tbaa !102
  store i32 %i.aq, ptr %i.ap, align 8, !tbaa !239
  %i.ar = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.i, i64 -56
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !127
  %i.at = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.i, i64 -56
  store ptr %i.as, ptr %i.at, align 8, !tbaa !240
  %i.au = add nsw i64 %.010.i.i.i.i.i.i.i, -4
  %i.av = icmp sgt i64 %.010.i.i.i.i.i.i.i, 4
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i, !llvm.loop !9

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.b
  store i32 %.val.i.i.i, ptr %.sroa.041.044.i, align 8, !tbaa !239
  store ptr %.sroa.48.0.copyload.i.i, ptr %i.h, align 8, !tbaa !240
  br label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.i"

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.i": ; preds = %.lr.ph.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i
  %.val1.i25.i.i = phi i32 [ %.val.i.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.i ], [ %.val1.i.pre23.i.i, %.lr.ph.i.i ]
  %.sroa.09.021.i.ptr.1.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 32 ; 8 uses
  %.val.i.i.1.i = load i32, ptr %.sroa.09.021.i.ptr.1.i, align 8, !tbaa !239 ; 6 uses
  %i.aw = icmp ult i32 %.val.i.i.1.i, %.val1.i25.i.i
  %.sroa.48.0..sroa_idx.i.1.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 40
  %.sroa.48.0.copyload.i.1.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.1.i, align 8 ; 2 uses
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.i"
  %.val2.i9.i.i.1.i = load i32, ptr %.sroa.09.021.i.ptr.i, align 8, !tbaa !239 ; 2 uses
  %i.ax = icmp ult i32 %.val.i.i.1.i, %.val2.i9.i.i.1.i
  br i1 %i.ax, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.1.i"

.lr.ph.i.i.1.i:                                   ; preds = %bb.c, %.lr.ph.i.i.1.i
  %.val2.i12.i.i.1.i = phi i32 [ %.val2.i.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.val2.i9.i.i.1.i, %bb.c ]
  %.sroa.0.011.i.i.1.i = phi ptr [ %.sroa.0.0.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.09.021.i.ptr.i, %bb.c ] ; 3 uses
  %.sroa.05.010.i.i.1.i = phi ptr [ %.sroa.0.011.i.i.1.i, %.lr.ph.i.i.1.i ], [ %.sroa.09.021.i.ptr.1.i, %bb.c ] ; 3 uses
  store i32 %.val2.i12.i.i.1.i, ptr %.sroa.05.010.i.i.1.i, align 8, !tbaa !239
  %i.ay = getelementptr inbounds i8, ptr %.sroa.05.010.i.i.1.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !127
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i.1.i, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !240
  %.sroa.0.0.i.i.1.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.1.i, i64 -16 ; 2 uses
  %.val2.i.i.i.1.i = load i32, ptr %.sroa.0.0.i.i.1.i, align 8, !tbaa !239 ; 2 uses
  %i.bb = icmp ult i32 %.val.i.i.1.i, %.val2.i.i.i.1.i
  br i1 %i.bb, label %.lr.ph.i.i.1.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.1.i", !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.1.i": ; preds = %.lr.ph.i.i.1.i, %bb.c
  %.sroa.05.0.lcssa.i.i.1.i = phi ptr [ %.sroa.09.021.i.ptr.1.i, %bb.c ], [ %.sroa.0.011.i.i.1.i, %.lr.ph.i.i.1.i ] ; 2 uses
  store i32 %.val.i.i.1.i, ptr %.sroa.05.0.lcssa.i.i.1.i, align 8, !tbaa !239
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.1.i, i64 8
  store ptr %.sroa.48.0.copyload.i.1.i, ptr %i.bc, align 8, !tbaa !240
  %.val1.i.pre.i.1.i = load i32, ptr %.sroa.041.044.i, align 8, !tbaa !239
  br label %bb.e

bb.d:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.i"
  %i.bd = ptrtoint ptr %.sroa.09.021.i.ptr.1.i to i64
  %i.be = sub i64 %i.bd, %i.g
  %i.bf = ashr exact i64 %i.be, 4                 ; 5 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.preheader.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i

.lr.ph.i.i.i.i.i.preheader.i.1.i:                 ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 48 ; 2 uses
  %xtraiter147 = and i64 %i.bf, 3                 ; 2 uses
  %lcmp.mod148.not = icmp eq i64 %xtraiter147, 0
  br i1 %lcmp.mod148.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol

.lr.ph.i.i.i.i.i.i.1.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.1.i, %.lr.ph.i.i.i.i.i.i.1.i.prol
  %.010.i.i.i.i.i.i.1.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bf, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %.069.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %.078.i.i.i.i.i.i.1.i.prol = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ %.sroa.09.021.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ] ; 2 uses
  %prol.iter149 = phi i64 [ %prol.iter149.next, %.lr.ph.i.i.i.i.i.i.1.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.1.i ]
  %i.bi = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -16 ; 3 uses
  %i.bk = load i32, ptr %i.bi, align 4, !tbaa !102
  store i32 %i.bk, ptr %i.bj, align 8, !tbaa !239
  %i.bl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i.prol, i64 -8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !127
  %i.bn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i.prol, i64 -8
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !240
  %i.bo = add nsw i64 %.010.i.i.i.i.i.i.1.i.prol, -1 ; 2 uses
  %prol.iter149.next = add i64 %prol.iter149, 1   ; 2 uses
  %prol.iter149.cmp.not = icmp eq i64 %prol.iter149.next, %xtraiter147
  br i1 %prol.iter149.cmp.not, label %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.1.i.prol, !llvm.loop !851

.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.1.i
  %.010.i.i.i.i.i.i.1.i.unr = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bo, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.069.i.i.i.i.i.i.1.i.unr = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %.078.i.i.i.i.i.i.1.i.unr = phi ptr [ %.sroa.09.021.i.ptr.1.i, %.lr.ph.i.i.i.i.i.preheader.i.1.i ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.1.i.prol ]
  %i.bp = icmp ult i64 %i.bf, 4
  br i1 %i.bp, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, label %.lr.ph.i.i.i.i.i.i.1.i

.lr.ph.i.i.i.i.i.i.1.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i
  %.010.i.i.i.i.i.i.1.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.010.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.1.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.069.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.1.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.1.i ], [ %.078.i.i.i.i.i.i.1.i.unr, %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit ] ; 8 uses
  %i.bq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -16
  %i.br = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -16
  %i.bs = load i32, ptr %i.bq, align 4, !tbaa !102
  store i32 %i.bs, ptr %i.br, align 8, !tbaa !239
  %i.bt = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !127
  %i.bv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -8
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !240
  %i.bw = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -32
  %i.bx = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -32
  %i.by = load i32, ptr %i.bw, align 8, !tbaa !102
  store i32 %i.by, ptr %i.bx, align 8, !tbaa !239
  %i.bz = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127
  %i.cb = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -24
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !240
  %i.cc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -48
  %i.cd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -48
  %i.ce = load i32, ptr %i.cc, align 8, !tbaa !102
  store i32 %i.ce, ptr %i.cd, align 8, !tbaa !239
  %i.cf = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !127
  %i.ch = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -40
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !240
  %i.ci = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.cj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -64 ; 2 uses
  %i.ck = load i32, ptr %i.ci, align 8, !tbaa !102
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !239
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.1.i, i64 -56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !127
  %i.cn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.1.i, i64 -56
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !240
  %i.co = add nsw i64 %.010.i.i.i.i.i.i.1.i, -4
  %i.cp = icmp sgt i64 %.010.i.i.i.i.i.i.1.i, 4
  br i1 %i.cp, label %.lr.ph.i.i.i.i.i.i.1.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, !llvm.loop !9

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i: ; preds = %.lr.ph.i.i.i.i.i.i.1.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.1.i, %bb.d
  store i32 %.val.i.i.1.i, ptr %.sroa.041.044.i, align 8, !tbaa !239
  store ptr %.sroa.48.0.copyload.i.1.i, ptr %i.h, align 8, !tbaa !240
  br label %bb.e

bb.e:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.1.i"
  %.val1.i25.i.1.i = phi i32 [ %.val.i.i.1.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.1.i ], [ %.val1.i.pre.i.1.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.1.i" ]
  %.sroa.09.021.i.ptr.2.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 48 ; 8 uses
  %.val.i.i.2.i = load i32, ptr %.sroa.09.021.i.ptr.2.i, align 8, !tbaa !239 ; 6 uses
  %i.cq = icmp ult i32 %.val.i.i.2.i, %.val1.i25.i.1.i
  %.sroa.48.0..sroa_idx.i.2.i = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 56
  %.sroa.48.0.copyload.i.2.i = load ptr, ptr %.sroa.48.0..sroa_idx.i.2.i, align 8 ; 2 uses
  br i1 %i.cq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val2.i9.i.i.2.i = load i32, ptr %.sroa.09.021.i.ptr.1.i, align 8, !tbaa !239 ; 2 uses
  %i.cr = icmp ult i32 %.val.i.i.2.i, %.val2.i9.i.i.2.i
  br i1 %i.cr, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.2.i"

.lr.ph.i.i.2.i:                                   ; preds = %bb.f, %.lr.ph.i.i.2.i
  %.val2.i12.i.i.2.i = phi i32 [ %.val2.i.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.val2.i9.i.i.2.i, %bb.f ]
  %.sroa.0.011.i.i.2.i = phi ptr [ %.sroa.0.0.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.09.021.i.ptr.1.i, %bb.f ] ; 3 uses
  %.sroa.05.010.i.i.2.i = phi ptr [ %.sroa.0.011.i.i.2.i, %.lr.ph.i.i.2.i ], [ %.sroa.09.021.i.ptr.2.i, %bb.f ] ; 3 uses
  store i32 %.val2.i12.i.i.2.i, ptr %.sroa.05.010.i.i.2.i, align 8, !tbaa !239
  %i.cs = getelementptr inbounds i8, ptr %.sroa.05.010.i.i.2.i, i64 -8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !127
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.05.010.i.i.2.i, i64 8
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !240
  %.sroa.0.0.i.i.2.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.2.i, i64 -16 ; 2 uses
  %.val2.i.i.i.2.i = load i32, ptr %.sroa.0.0.i.i.2.i, align 8, !tbaa !239 ; 2 uses
  %i.cv = icmp ult i32 %.val.i.i.2.i, %.val2.i.i.i.2.i
  br i1 %i.cv, label %.lr.ph.i.i.2.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.2.i", !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEENS0_5__ops14_Val_comp_iterIZNS4_18LiveElementPrinter6updateENS3_6object16SectionedAddressESH_bE3$_1EEEvT_T0_.exit.i.2.i": ; preds = %.lr.ph.i.i.2.i, %bb.f
  %.sroa.05.0.lcssa.i.i.2.i = phi ptr [ %.sroa.09.021.i.ptr.2.i, %bb.f ], [ %.sroa.0.011.i.i.2.i, %.lr.ph.i.i.2.i ] ; 2 uses
  store i32 %.val.i.i.2.i, ptr %.sroa.05.0.lcssa.i.i.2.i, align 8, !tbaa !239
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.lcssa.i.i.2.i, i64 8
  store ptr %.sroa.48.0.copyload.i.2.i, ptr %i.cw, align 8, !tbaa !240
  %.val1.i.pre.i.2.i = load i32, ptr %.sroa.041.044.i, align 8, !tbaa !239
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.cx = ptrtoint ptr %.sroa.09.021.i.ptr.2.i to i64
  %i.cy = sub i64 %i.cx, %i.g
  %i.cz = ashr exact i64 %i.cy, 4                 ; 5 uses
  %i.da = icmp sgt i64 %i.cz, 0
  br i1 %i.da, label %.lr.ph.i.i.i.i.i.preheader.i.2.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i

.lr.ph.i.i.i.i.i.preheader.i.2.i:                 ; preds = %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.041.044.i, i64 64 ; 2 uses
  %xtraiter150 = and i64 %i.cz, 3                 ; 2 uses
  %lcmp.mod151.not = icmp eq i64 %xtraiter150, 0
  br i1 %lcmp.mod151.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol

.lr.ph.i.i.i.i.i.i.2.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.preheader.i.2.i, %.lr.ph.i.i.i.i.i.i.2.i.prol
  %.010.i.i.i.i.i.i.2.i.prol = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %.069.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dd, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %i.db, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %.078.i.i.i.i.i.i.2.i.prol = phi ptr [ %i.dc, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ %.sroa.09.021.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ] ; 2 uses
  %prol.iter152 = phi i64 [ %prol.iter152.next, %.lr.ph.i.i.i.i.i.i.2.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i.2.i ]
  %i.dc = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.dd = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -16 ; 3 uses
  %i.de = load i32, ptr %i.dc, align 4, !tbaa !102
  store i32 %i.de, ptr %i.dd, align 8, !tbaa !239
  %i.df = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i.prol, i64 -8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !127
  %i.dh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i.prol, i64 -8
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !240
  %i.di = add nsw i64 %.010.i.i.i.i.i.i.2.i.prol, -1 ; 2 uses
  %prol.iter152.next = add i64 %prol.iter152, 1   ; 2 uses
  %prol.iter152.cmp.not = icmp eq i64 %prol.iter152.next, %xtraiter150
  br i1 %prol.iter152.cmp.not, label %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.2.i.prol, !llvm.loop !852

.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol, %.lr.ph.i.i.i.i.i.preheader.i.2.i
  %.010.i.i.i.i.i.i.2.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.di, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.069.i.i.i.i.i.i.2.i.unr = phi ptr [ %i.db, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dd, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %.078.i.i.i.i.i.i.2.i.unr = phi ptr [ %.sroa.09.021.i.ptr.2.i, %.lr.ph.i.i.i.i.i.preheader.i.2.i ], [ %i.dc, %.lr.ph.i.i.i.i.i.i.2.i.prol ]
  %i.dj = icmp ult i64 %i.cz, 4
  br i1 %i.dj, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIjPN4llvm7objdump11LiveElementEESt6vectorIS7_SaIS7_EEEESC_ET0_T_SE_SD_.exit.i.2.i, label %.lr.ph.i.i.i.i.i.i.2.i

.lr.ph.i.i.i.i.i.i.2.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.2.i
  %.010.i.i.i.i.i.i.2.i = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.010.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i.2.i = phi ptr [ %i.ed, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.069.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i.2.i = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.2.i ], [ %.078.i.i.i.i.i.i.2.i.unr, %.lr.ph.i.i.i.i.i.i.2.i.prol.loopexit ] ; 8 uses
  %i.dk = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i.2.i, i64 -16
  %i.dl = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i.2.i, i64 -16
  %i.dm = load i32, ptr %i.dk, align 4, !tbaa !102
  store i32 %i.dm, ptr %i.dl, align 8, !tbaa !239
end_hunk_0
