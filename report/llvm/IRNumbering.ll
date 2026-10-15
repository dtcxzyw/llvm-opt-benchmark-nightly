Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/IRNumbering?download=true
inline.NumInlined: 4192
inline.NumDeleted: 2183
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !177 ; 2 uses
  %i.bp = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 12
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bp, align 4, !tbaa !244
  %i.bq = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.bq, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i", !llvm.loop !6

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.03.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.020.i.ptr.4.i, %bb.x ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sroa.03.0.lcssa.i.i.4.i, align 8, !tbaa !177
  %.val1.i.pre.i.4.i = load ptr, ptr %.sroa.038.041.i, align 8, !tbaa !177
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.br = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bs = sub i64 %i.br, %i.g                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.ab, label %bb.z, !prof !145

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp eq i64 %i.bs, 8
  br i1 %i.bv, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %.val1.i24.i.3.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.bx = sub nsw i64 0, %i.bt
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %.val.i.i.4.i, ptr %.sroa.038.041.i, align 8, !tbaa !177
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i"
  %.val1.i24.i.4.i = phi ptr [ %.val.i.i.4.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i ], [ %.val1.i.pre.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i" ] ; 2 uses
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !177 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val.i.i.5.i, i64 12
  %.val.val.i.i.5.i = load i32, ptr %i.bz, align 4, !tbaa !244 ; 3 uses
  %i.ca = getelementptr i8, ptr %.val1.i24.i.4.i, i64 12
  %.val1.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !244
  %i.cb = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !177 ; 2 uses
  %i.cc = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 12
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cc, align 4, !tbaa !244
  %i.cd = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.cd, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.ad ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !177
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !177 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 12
  %.val2.val.i.i.i.5.i = load i32, ptr %i.ce, align 4, !tbaa !244
  %i.cf = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cf, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", !llvm.loop !6

bb.ae:                                            ; preds = %bb.ac
  %i.cg = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ch = sub i64 %i.cg, %i.g                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 1
  br i1 %i.cj, label %bb.ah, label %bb.af, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.ck = icmp eq i64 %i.ch, 8
  br i1 %i.ck, label %bb.ag, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ag:                                            ; preds = %bb.af
  store ptr %.val1.i24.i.4.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !177
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.cm = sub nsw i64 0, %i.ci
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.ch, i1 false)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i": ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.038.041.sink.i = phi ptr [ %.sroa.038.041.i, %bb.af ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ], [ %.sroa.038.041.i, %bb.ah ], [ %.sroa.038.041.i, %bb.ag ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sroa.038.041.sink.i, align 8, !tbaa !177
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56 ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = sub i64 %i.a, %i.cp
  %i.cr = icmp sgt i64 %i.cq, 48
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !650

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", %bb.a
  %.sroa.038.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.co, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ]
  %i.cs = icmp eq ptr %.sroa.038.0.lcssa.i, %1
  br i1 %i.cs, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  br i1 %.not18.i12.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %.val1.i.pre22.i14.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !177
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %.val1.i.i15.i = phi ptr [ %.val1.i.pre22.i14.i, %.lr.ph.i13.i ], [ %.val1.i24.i26.i, %bb.ao ] ; 2 uses
  %.sroa.0.020.i16.i = phi ptr [ %.sroa.0.017.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i27.i, %bb.ao ] ; 6 uses
  %.pn19.i17.i = phi ptr [ %.sroa.038.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.020.i16.i, %bb.ao ] ; 4 uses
  %.val.i.i18.i = load ptr, ptr %.sroa.0.020.i16.i, align 8, !tbaa !177 ; 4 uses
  %i.ct = getelementptr i8, ptr %.val.i.i18.i, i64 12
  %.val.val.i.i19.i = load i32, ptr %i.ct, align 4, !tbaa !244 ; 3 uses
  %i.cu = getelementptr i8, ptr %.val1.i.i15.i, i64 12
  %.val1.val.i.i20.i = load i32, ptr %i.cu, align 4, !tbaa !244
  %i.cv = icmp ugt i32 %.val.val.i.i19.i, %.val1.val.i.i20.i
  br i1 %i.cv, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cw = ptrtoint ptr %.sroa.0.020.i16.i to i64
  %i.cx = sub i64 %i.cw, %.lcssa.i                ; 3 uses
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 16
  %i.db = sub nsw i64 0, %i.cy
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.0.lcssa.i, i64 %i.cx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.al:                                            ; preds = %bb.aj
  %i.dd = icmp eq i64 %i.cx, 8
  br i1 %i.dd, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 8
  store ptr %.val1.i.i15.i, ptr %i.de, align 8, !tbaa !177
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %.val.i.i18.i, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !177
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %.val2.i7.i.i21.i = load ptr, ptr %.pn19.i17.i, align 8, !tbaa !177 ; 2 uses
  %i.df = getelementptr i8, ptr %.val2.i7.i.i21.i, i64 12
  %.val2.val.i8.i.i22.i = load i32, ptr %i.df, align 4, !tbaa !244
  %i.dg = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i8.i.i22.i
  br i1 %i.dg, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i"

.lr.ph.i.i29.i:                                   ; preds = %bb.an, %.lr.ph.i.i29.i
  %.val2.i11.i.i30.i = phi ptr [ %.val2.i.i.i34.i, %.lr.ph.i.i29.i ], [ %.val2.i7.i.i21.i, %bb.an ]
  %.sroa.0.010.i.i31.i = phi ptr [ %.sroa.0.0.i.i33.i, %.lr.ph.i.i29.i ], [ %.pn19.i17.i, %bb.an ] ; 3 uses
  %.sroa.03.09.i.i32.i = phi ptr [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i16.i, %bb.an ]
  store ptr %.val2.i11.i.i30.i, ptr %.sroa.03.09.i.i32.i, align 8, !tbaa !177
  %.sroa.0.0.i.i33.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i31.i, i64 -8 ; 2 uses
  %.val2.i.i.i34.i = load ptr, ptr %.sroa.0.0.i.i33.i, align 8, !tbaa !177 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val2.i.i.i34.i, i64 12
  %.val2.val.i.i.i35.i = load i32, ptr %i.dh, align 4, !tbaa !244
  %i.di = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i.i.i35.i
  br i1 %i.di, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", !llvm.loop !6

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i": ; preds = %.lr.ph.i.i29.i, %bb.an
  %.sroa.03.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i16.i, %bb.an ], [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ]
  store ptr %.val.i.i18.i, ptr %.sroa.03.0.lcssa.i.i24.i, align 8, !tbaa !177
  %.val1.i.pre.i25.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !177
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i
  %.val1.i24.i26.i = phi ptr [ %.val.i.i18.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i ], [ %.val1.i.pre.i25.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i" ]
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i16.i, i64 8 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %bb.ai, !llvm.loop !7

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.dj = icmp sgt i64 %i.d, 7
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dk = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.068 = phi i64 [ 7, %.lr.ph ], [ %i.fy, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dl = shl nsw i64 %.068, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dl
  br i1 %.not58.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.068, 3                      ; 10 uses
  %.idx52.i = shl i64 %.068, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dm = icmp sgt i64 %.idx.i, 8
  br i1 %i.dm, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.dn, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.dn, i64 %.idx.i, i1 false)
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.a, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.dr, %i.dl
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !651

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ds = icmp eq i64 %.idx.i, 8
  br i1 %i.ds, label %.critedge.i.us.i.us57.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us57.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !177
  br label %.critedge.i.us.i.us57

.critedge.i.us.i.us57:                            ; preds = %.critedge.i.us.i.us57.preheader, %.critedge.i.us.i.us57
  %i.dt = phi ptr [ %i.dw, %.critedge.i.us.i.us57 ], [ %.pre, %.critedge.i.us.i.us57.preheader ]
  %.060.us.i.us58 = phi ptr [ %i.dv, %.critedge.i.us.i.us57 ], [ %2, %.critedge.i.us.i.us57.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us59 = phi ptr [ %i.du, %.critedge.i.us.i.us57 ], [ %0, %.critedge.i.us.i.us57.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us59, i64 8 ; 4 uses
  store ptr %i.dt, ptr %.060.us.i.us58, align 8, !tbaa !177
  %i.dv = getelementptr inbounds nuw i8, ptr %.060.us.i.us58, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !177 ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !177
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.a, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %.not.us.i.us61 = icmp slt i64 %i.dz, %i.dl
  br i1 %.not.us.i.us61, label %._crit_edge.i25, label %.critedge.i.us.i.us57, !llvm.loop !651

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.ea, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ea = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ee, %i.dl
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !651

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.ek, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.ef, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !177 ; 2 uses
  %i.eh = getelementptr i8, ptr %.val.i.i.i22, i64 12
  %.val.val.i.i.i23 = load i32, ptr %i.eh, align 4, !tbaa !244
  %i.ei = getelementptr i8, ptr %.val1.i.i.i, i64 12
  %.val1.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !244
  %i.ej = icmp ugt i32 %.val.val.i.i.i23, %.val1.val.i.i.i24 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ej, ptr %.val.i.i.i22, ptr %.val1.i.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.ej, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ej, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !177
  %i.ek = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.el = icmp ne ptr %.sroa.014.1.i.i, %i.ef
  %i.em = icmp ne ptr %.sroa.010.1.i.i, %i.eg
  %or.cond.i.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !652

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.en = ptrtoint ptr %i.ef to i64
  %i.eo = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.ep, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !177
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !177
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.et = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep ; 3 uses
  %i.eu = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ev = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, 8
  br i1 %i.ex, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ew, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ey = icmp eq i64 %i.ew, 8
  br i1 %i.ey, label %bb.av, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !177
  store ptr %i.ez, ptr %i.et, align 8, !tbaa !177
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.av, %bb.au, %bb.at
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 %i.ew ; 2 uses
  %i.fb = sub i64 %i.a, %i.eu
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fc, %i.dl
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !651

._crit_edge.i25:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us57, %.critedge.i.us.i.us, %bb.ap
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.dn, %.critedge.i.us.i.us ], [ %i.du, %.critedge.i.us.i.us57 ], [ %i.ea, %.critedge.i.us.i ], [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us57 ], [ %i.eb, %.critedge.i.us.i ], [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.ap ], [ %i.dr, %.critedge.i.us.i.us ], [ %i.dz, %.critedge.i.us.i.us57 ], [ %i.ee, %.critedge.i.us.i ], [ %i.fc, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fd = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.fe = icmp ne i64 %.sroa.speculated.i, 0
  %i.ff = icmp ne ptr %i.fd, %1
  %or.cond17.i16.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i25, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fj, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fd, %._crit_edge.i25 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !177 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !177 ; 2 uses
  %i.fg = getelementptr i8, ptr %.val.i.i26.i, i64 12
  %.val.val.i.i28.i = load i32, ptr %i.fg, align 4, !tbaa !244
  %i.fh = getelementptr i8, ptr %.val1.i.i27.i, i64 12
  %.val1.val.i.i29.i = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.fi = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fi, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fi, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fi, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !177
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fk = icmp ne ptr %.sroa.014.1.i34.i, %i.fd
  %i.fl = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !652

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i25
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fd, %._crit_edge.i25 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.fj, %.lr.ph.i22.i ] ; 3 uses
  %i.fm = ptrtoint ptr %i.fd to i64
  %i.fn = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 4 uses
  %i.fp = icmp sgt i64 %i.fo, 8
  br i1 %i.fp, label %bb.aw, label %bb.ax, !prof !145

bb.aw:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fo, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ax:                                            ; preds = %.critedge.i17.i
  %i.fq = icmp eq i64 %i.fo, 8
  br i1 %i.fq, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ay:                                            ; preds = %bb.ax
  %i.fr = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !177
  store ptr %i.fr, ptr %.0.lcssa.i20.i, align 8, !tbaa !177
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.fs = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fo ; 2 uses
  %i.ft = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fu = sub i64 %i.a, %i.ft                     ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, 8
  br i1 %i.fv, label %bb.az, label %bb.ba, !prof !145

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fu, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fw = icmp eq i64 %i.fu, 8
  br i1 %i.fw, label %bb.bb, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !177
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !177
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fy = shl nsw i64 %.068, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fy
  br i1 %.not54.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i27 = shl i64 %.068, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.068, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i27, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.fz = icmp sgt i64 %.068, 0
  %i.ga = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.fz, label %bb.bc, label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.gc = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.ga, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.bd:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gb, i64 %.idx.i27, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.bd
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %.idx.i27 ; 2 uses
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.dk, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %.not.us.i34 = icmp slt i64 %i.gg, %i.fy
  br i1 %.not.us.i34, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !653

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i26 ]
  %.055.i = phi ptr [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i27 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.i.preheader.i28
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.055.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.gh, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gm, %.lr.ph.i.i29 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !177 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !177 ; 2 uses
  %i.gj = getelementptr i8, ptr %.016.val.i.i, i64 12
  %.016.val.val.i.i = load i32, ptr %i.gj, align 4, !tbaa !244
  %i.gk = getelementptr i8, ptr %.0.val.i.i, i64 12
  %.0.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !244
  %i.gl = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gl, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gl, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gl, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !177
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.gn = icmp ne ptr %.1.i.i, %i.gh
  %i.go = icmp ne ptr %.117.i.i, %i.gi
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %i.gp, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !654

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i29
  %i.gq = ptrtoint ptr %i.gh to i64
  %i.gr = ptrtoint ptr %.1.i.i to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 4 uses
  %i.gt = icmp sgt i64 %i.gs, 8
  br i1 %i.gt, label %bb.be, label %bb.bf, !prof !145

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %.1.i.i, i64 %i.gs, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gu = icmp eq i64 %i.gs, 8
  br i1 %i.gu, label %bb.bg, label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %.1.i.i, align 8, !tbaa !177
  store ptr %i.gv, ptr %i.gm, align 8, !tbaa !177
  br label %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 %i.gs ; 3 uses
  %i.gx = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gy = ptrtoint ptr %.117.i.i to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp sgt i64 %i.gz, 8
  br i1 %i.ha, label %bb.bh, label %bb.bi, !prof !145

bb.bh:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull align 8 %.117.i.i, i64 %i.gz, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bi:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hb = icmp eq i64 %i.gz, 8
  br i1 %i.hb, label %bb.bj, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.hc = load ptr, ptr %.117.i.i, align 8, !tbaa !177
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !177
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.hd = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz ; 2 uses
  %i.he = sub i64 %i.dk, %i.gx
  %i.hf = ashr exact i64 %i.he, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.hf, %i.fy
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i28, !llvm.loop !653

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail18AttributeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hf, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail18AttributeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i33 = tail call i64 @llvm.smin.i64(i64 %i.dl, i64 %.lcssa52.i) ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !209 ; 2 uses
  %i.bp = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 20
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bp, align 4, !tbaa !285
  %i.bq = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.bq, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i", !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.03.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.020.i.ptr.4.i, %bb.x ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sroa.03.0.lcssa.i.i.4.i, align 8, !tbaa !209
  %.val1.i.pre.i.4.i = load ptr, ptr %.sroa.038.041.i, align 8, !tbaa !209
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.br = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bs = sub i64 %i.br, %i.g                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.ab, label %bb.z, !prof !145

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp eq i64 %i.bs, 8
  br i1 %i.bv, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %.val1.i24.i.3.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !209
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.bx = sub nsw i64 0, %i.bt
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %.val.i.i.4.i, ptr %.sroa.038.041.i, align 8, !tbaa !209
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i"
  %.val1.i24.i.4.i = phi ptr [ %.val.i.i.4.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i ], [ %.val1.i.pre.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i" ] ; 2 uses
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !209 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val.i.i.5.i, i64 20
  %.val.val.i.i.5.i = load i32, ptr %i.bz, align 4, !tbaa !285 ; 3 uses
  %i.ca = getelementptr i8, ptr %.val1.i24.i.4.i, i64 20
  %.val1.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !285
  %i.cb = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !209 ; 2 uses
  %i.cc = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 20
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cc, align 4, !tbaa !285
  %i.cd = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.cd, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.ad ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !209
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !209 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 20
  %.val2.val.i.i.i.5.i = load i32, ptr %i.ce, align 4, !tbaa !285
  %i.cf = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cf, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", !llvm.loop !10

bb.ae:                                            ; preds = %bb.ac
  %i.cg = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ch = sub i64 %i.cg, %i.g                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 1
  br i1 %i.cj, label %bb.ah, label %bb.af, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.ck = icmp eq i64 %i.ch, 8
  br i1 %i.ck, label %bb.ag, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ag:                                            ; preds = %bb.af
  store ptr %.val1.i24.i.4.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !209
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.cm = sub nsw i64 0, %i.ci
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.ch, i1 false)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i": ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.038.041.sink.i = phi ptr [ %.sroa.038.041.i, %bb.af ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ], [ %.sroa.038.041.i, %bb.ah ], [ %.sroa.038.041.i, %bb.ag ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sroa.038.041.sink.i, align 8, !tbaa !209
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56 ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = sub i64 %i.a, %i.cp
  %i.cr = icmp sgt i64 %i.cq, 48
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !682

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", %bb.a
  %.sroa.038.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.co, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ]
  %i.cs = icmp eq ptr %.sroa.038.0.lcssa.i, %1
  br i1 %i.cs, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  br i1 %.not18.i12.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %.val1.i.pre22.i14.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !209
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %.val1.i.i15.i = phi ptr [ %.val1.i.pre22.i14.i, %.lr.ph.i13.i ], [ %.val1.i24.i26.i, %bb.ao ] ; 2 uses
  %.sroa.0.020.i16.i = phi ptr [ %.sroa.0.017.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i27.i, %bb.ao ] ; 6 uses
  %.pn19.i17.i = phi ptr [ %.sroa.038.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.020.i16.i, %bb.ao ] ; 4 uses
  %.val.i.i18.i = load ptr, ptr %.sroa.0.020.i16.i, align 8, !tbaa !209 ; 4 uses
  %i.ct = getelementptr i8, ptr %.val.i.i18.i, i64 20
  %.val.val.i.i19.i = load i32, ptr %i.ct, align 4, !tbaa !285 ; 3 uses
  %i.cu = getelementptr i8, ptr %.val1.i.i15.i, i64 20
  %.val1.val.i.i20.i = load i32, ptr %i.cu, align 4, !tbaa !285
  %i.cv = icmp ugt i32 %.val.val.i.i19.i, %.val1.val.i.i20.i
  br i1 %i.cv, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cw = ptrtoint ptr %.sroa.0.020.i16.i to i64
  %i.cx = sub i64 %i.cw, %.lcssa.i                ; 3 uses
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 16
  %i.db = sub nsw i64 0, %i.cy
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.0.lcssa.i, i64 %i.cx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.al:                                            ; preds = %bb.aj
  %i.dd = icmp eq i64 %i.cx, 8
  br i1 %i.dd, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 8
  store ptr %.val1.i.i15.i, ptr %i.de, align 8, !tbaa !209
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %.val.i.i18.i, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !209
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %.val2.i7.i.i21.i = load ptr, ptr %.pn19.i17.i, align 8, !tbaa !209 ; 2 uses
  %i.df = getelementptr i8, ptr %.val2.i7.i.i21.i, i64 20
  %.val2.val.i8.i.i22.i = load i32, ptr %i.df, align 4, !tbaa !285
  %i.dg = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i8.i.i22.i
  br i1 %i.dg, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i"

.lr.ph.i.i29.i:                                   ; preds = %bb.an, %.lr.ph.i.i29.i
  %.val2.i11.i.i30.i = phi ptr [ %.val2.i.i.i34.i, %.lr.ph.i.i29.i ], [ %.val2.i7.i.i21.i, %bb.an ]
  %.sroa.0.010.i.i31.i = phi ptr [ %.sroa.0.0.i.i33.i, %.lr.ph.i.i29.i ], [ %.pn19.i17.i, %bb.an ] ; 3 uses
  %.sroa.03.09.i.i32.i = phi ptr [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i16.i, %bb.an ]
  store ptr %.val2.i11.i.i30.i, ptr %.sroa.03.09.i.i32.i, align 8, !tbaa !209
  %.sroa.0.0.i.i33.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i31.i, i64 -8 ; 2 uses
  %.val2.i.i.i34.i = load ptr, ptr %.sroa.0.0.i.i33.i, align 8, !tbaa !209 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val2.i.i.i34.i, i64 20
  %.val2.val.i.i.i35.i = load i32, ptr %i.dh, align 4, !tbaa !285
  %i.di = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i.i.i35.i
  br i1 %i.di, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", !llvm.loop !10

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i": ; preds = %.lr.ph.i.i29.i, %bb.an
  %.sroa.03.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i16.i, %bb.an ], [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ]
  store ptr %.val.i.i18.i, ptr %.sroa.03.0.lcssa.i.i24.i, align 8, !tbaa !209
  %.val1.i.pre.i25.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !209
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i
  %.val1.i24.i26.i = phi ptr [ %.val.i.i18.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i ], [ %.val1.i.pre.i25.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i" ]
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i16.i, i64 8 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %bb.ai, !llvm.loop !11

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.dj = icmp sgt i64 %i.d, 7
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dk = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.068 = phi i64 [ 7, %.lr.ph ], [ %i.fy, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dl = shl nsw i64 %.068, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dl
  br i1 %.not58.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.068, 3                      ; 10 uses
  %.idx52.i = shl i64 %.068, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dm = icmp sgt i64 %.idx.i, 8
  br i1 %i.dm, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.dn, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.dn, i64 %.idx.i, i1 false)
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.a, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.dr, %i.dl
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !683

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ds = icmp eq i64 %.idx.i, 8
  br i1 %i.ds, label %.critedge.i.us.i.us57.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us57.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !209
  br label %.critedge.i.us.i.us57

.critedge.i.us.i.us57:                            ; preds = %.critedge.i.us.i.us57.preheader, %.critedge.i.us.i.us57
  %i.dt = phi ptr [ %i.dw, %.critedge.i.us.i.us57 ], [ %.pre, %.critedge.i.us.i.us57.preheader ]
  %.060.us.i.us58 = phi ptr [ %i.dv, %.critedge.i.us.i.us57 ], [ %2, %.critedge.i.us.i.us57.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us59 = phi ptr [ %i.du, %.critedge.i.us.i.us57 ], [ %0, %.critedge.i.us.i.us57.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us59, i64 8 ; 4 uses
  store ptr %i.dt, ptr %.060.us.i.us58, align 8, !tbaa !209
  %i.dv = getelementptr inbounds nuw i8, ptr %.060.us.i.us58, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !209 ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !209
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.a, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %.not.us.i.us61 = icmp slt i64 %i.dz, %i.dl
  br i1 %.not.us.i.us61, label %._crit_edge.i25, label %.critedge.i.us.i.us57, !llvm.loop !683

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.ea, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ea = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ee, %i.dl
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !683

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.ek, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.ef, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !209 ; 2 uses
  %i.eh = getelementptr i8, ptr %.val.i.i.i22, i64 20
  %.val.val.i.i.i23 = load i32, ptr %i.eh, align 4, !tbaa !285
  %i.ei = getelementptr i8, ptr %.val1.i.i.i, i64 20
  %.val1.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !285
  %i.ej = icmp ugt i32 %.val.val.i.i.i23, %.val1.val.i.i.i24 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ej, ptr %.val.i.i.i22, ptr %.val1.i.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.ej, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ej, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !209
  %i.ek = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.el = icmp ne ptr %.sroa.014.1.i.i, %i.ef
  %i.em = icmp ne ptr %.sroa.010.1.i.i, %i.eg
  %or.cond.i.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !684

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.en = ptrtoint ptr %i.ef to i64
  %i.eo = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.ep, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !209
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !209
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.et = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep ; 3 uses
  %i.eu = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ev = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, 8
  br i1 %i.ex, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ew, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ey = icmp eq i64 %i.ew, 8
  br i1 %i.ey, label %bb.av, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !209
  store ptr %i.ez, ptr %i.et, align 8, !tbaa !209
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.av, %bb.au, %bb.at
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 %i.ew ; 2 uses
  %i.fb = sub i64 %i.a, %i.eu
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fc, %i.dl
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !683

._crit_edge.i25:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us57, %.critedge.i.us.i.us, %bb.ap
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.dn, %.critedge.i.us.i.us ], [ %i.du, %.critedge.i.us.i.us57 ], [ %i.ea, %.critedge.i.us.i ], [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us57 ], [ %i.eb, %.critedge.i.us.i ], [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.ap ], [ %i.dr, %.critedge.i.us.i.us ], [ %i.dz, %.critedge.i.us.i.us57 ], [ %i.ee, %.critedge.i.us.i ], [ %i.fc, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fd = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.fe = icmp ne i64 %.sroa.speculated.i, 0
  %i.ff = icmp ne ptr %i.fd, %1
  %or.cond17.i16.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i25, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fj, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fd, %._crit_edge.i25 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !209 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !209 ; 2 uses
  %i.fg = getelementptr i8, ptr %.val.i.i26.i, i64 20
  %.val.val.i.i28.i = load i32, ptr %i.fg, align 4, !tbaa !285
  %i.fh = getelementptr i8, ptr %.val1.i.i27.i, i64 20
  %.val1.val.i.i29.i = load i32, ptr %i.fh, align 4, !tbaa !285
  %i.fi = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fi, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fi, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fi, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !209
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fk = icmp ne ptr %.sroa.014.1.i34.i, %i.fd
  %i.fl = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !684

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i25
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fd, %._crit_edge.i25 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.fj, %.lr.ph.i22.i ] ; 3 uses
  %i.fm = ptrtoint ptr %i.fd to i64
  %i.fn = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 4 uses
  %i.fp = icmp sgt i64 %i.fo, 8
  br i1 %i.fp, label %bb.aw, label %bb.ax, !prof !145

bb.aw:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fo, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ax:                                            ; preds = %.critedge.i17.i
  %i.fq = icmp eq i64 %i.fo, 8
  br i1 %i.fq, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ay:                                            ; preds = %bb.ax
  %i.fr = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !209
  store ptr %i.fr, ptr %.0.lcssa.i20.i, align 8, !tbaa !209
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.fs = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fo ; 2 uses
  %i.ft = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fu = sub i64 %i.a, %i.ft                     ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, 8
  br i1 %i.fv, label %bb.az, label %bb.ba, !prof !145

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fu, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fw = icmp eq i64 %i.fu, 8
  br i1 %i.fw, label %bb.bb, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !209
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !209
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fy = shl nsw i64 %.068, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fy
  br i1 %.not54.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i27 = shl i64 %.068, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.068, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i27, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.fz = icmp sgt i64 %.068, 0
  %i.ga = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.fz, label %bb.bc, label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.gc = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.ga, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.bd:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gb, i64 %.idx.i27, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.bd
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %.idx.i27 ; 2 uses
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.dk, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %.not.us.i34 = icmp slt i64 %i.gg, %i.fy
  br i1 %.not.us.i34, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !685

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i26 ]
  %.055.i = phi ptr [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i27 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.i.preheader.i28
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.055.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.gh, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gm, %.lr.ph.i.i29 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !209 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !209 ; 2 uses
  %i.gj = getelementptr i8, ptr %.016.val.i.i, i64 20
  %.016.val.val.i.i = load i32, ptr %i.gj, align 4, !tbaa !285
  %i.gk = getelementptr i8, ptr %.0.val.i.i, i64 20
  %.0.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !285
  %i.gl = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gl, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gl, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gl, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !209
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.gn = icmp ne ptr %.1.i.i, %i.gh
  %i.go = icmp ne ptr %.117.i.i, %i.gi
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %i.gp, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !686

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i29
  %i.gq = ptrtoint ptr %i.gh to i64
  %i.gr = ptrtoint ptr %.1.i.i to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 4 uses
  %i.gt = icmp sgt i64 %i.gs, 8
  br i1 %i.gt, label %bb.be, label %bb.bf, !prof !145

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %.1.i.i, i64 %i.gs, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gu = icmp eq i64 %i.gs, 8
  br i1 %i.gu, label %bb.bg, label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %.1.i.i, align 8, !tbaa !209
  store ptr %i.gv, ptr %i.gm, align 8, !tbaa !209
  br label %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 %i.gs ; 3 uses
  %i.gx = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gy = ptrtoint ptr %.117.i.i to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp sgt i64 %i.gz, 8
  br i1 %i.ha, label %bb.bh, label %bb.bi, !prof !145

bb.bh:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull align 8 %.117.i.i, i64 %i.gz, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bi:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hb = icmp eq i64 %i.gz, 8
  br i1 %i.hb, label %bb.bj, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.hc = load ptr, ptr %.117.i.i, align 8, !tbaa !209
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !209
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.hd = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz ; 2 uses
  %i.he = sub i64 %i.dk, %i.gx
  %i.hf = ashr exact i64 %i.he, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.hf, %i.fy
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i28, !llvm.loop !685

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail15OpNameNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hf, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail15OpNameNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i33 = tail call i64 @llvm.smin.i64(i64 %i.dl, i64 %.lcssa52.i) ; 2 uses
end_hunk_1
begin_hunk_2_@"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_":bb.a
  %.sroa.0.0.i.i.4.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.4.i, i64 -8 ; 2 uses
  %.val2.i.i.i.4.i = load ptr, ptr %.sroa.0.0.i.i.4.i, align 8, !tbaa !216 ; 2 uses
  %i.bp = getelementptr i8, ptr %.val2.i.i.i.4.i, i64 12
  %.val2.val.i.i.i.4.i = load i32, ptr %i.bp, align 4, !tbaa !244
  %i.bq = icmp ugt i32 %.val.val.i.i.4.i, %.val2.val.i.i.i.4.i
  br i1 %i.bq, label %.lr.ph.i.i.4.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i", !llvm.loop !14

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i": ; preds = %.lr.ph.i.i.4.i, %bb.x
  %.sroa.03.0.lcssa.i.i.4.i = phi ptr [ %.sroa.0.020.i.ptr.4.i, %bb.x ], [ %.sroa.0.010.i.i.4.i, %.lr.ph.i.i.4.i ]
  store ptr %.val.i.i.4.i, ptr %.sroa.03.0.lcssa.i.i.4.i, align 8, !tbaa !216
  %.val1.i.pre.i.4.i = load ptr, ptr %.sroa.038.041.i, align 8, !tbaa !216
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.br = ptrtoint ptr %.sroa.0.020.i.ptr.4.i to i64
  %i.bs = sub i64 %i.br, %i.g                     ; 3 uses
  %i.bt = ashr exact i64 %i.bs, 3                 ; 2 uses
  %i.bu = icmp sgt i64 %i.bt, 1
  br i1 %i.bu, label %bb.ab, label %bb.z, !prof !145

bb.z:                                             ; preds = %bb.y
  %i.bv = icmp eq i64 %i.bs, 8
  br i1 %i.bv, label %bb.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.aa:                                            ; preds = %bb.z
  store ptr %.val1.i24.i.3.i, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !216
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

bb.ab:                                            ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48
  %i.bx = sub nsw i64 0, %i.bt
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.bx
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.by, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.bs, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i: ; preds = %bb.ab, %bb.aa, %bb.z
  store ptr %.val.i.i.4.i, ptr %.sroa.038.041.i, align 8, !tbaa !216
  br label %bb.ac

bb.ac:                                            ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i"
  %.val1.i24.i.4.i = phi ptr [ %.val.i.i.4.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.4.i ], [ %.val1.i.pre.i.4.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i.4.i" ] ; 2 uses
  %.sroa.0.020.i.ptr.5.i = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 48 ; 5 uses
  %.val.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !216 ; 2 uses
  %i.bz = getelementptr i8, ptr %.val.i.i.5.i, i64 12
  %.val.val.i.i.5.i = load i32, ptr %i.bz, align 4, !tbaa !244 ; 3 uses
  %i.ca = getelementptr i8, ptr %.val1.i24.i.4.i, i64 12
  %.val1.val.i.i.5.i = load i32, ptr %i.ca, align 4, !tbaa !244
  %i.cb = icmp ugt i32 %.val.val.i.i.5.i, %.val1.val.i.i.5.i
  br i1 %i.cb, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val2.i7.i.i.5.i = load ptr, ptr %.sroa.0.020.i.ptr.4.i, align 8, !tbaa !216 ; 2 uses
  %i.cc = getelementptr i8, ptr %.val2.i7.i.i.5.i, i64 12
  %.val2.val.i8.i.i.5.i = load i32, ptr %i.cc, align 4, !tbaa !244
  %i.cd = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i8.i.i.5.i
  br i1 %i.cd, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

.lr.ph.i.i.5.i:                                   ; preds = %bb.ad, %.lr.ph.i.i.5.i
  %.val2.i11.i.i.5.i = phi ptr [ %.val2.i.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.val2.i7.i.i.5.i, %bb.ad ]
  %.sroa.0.010.i.i.5.i = phi ptr [ %.sroa.0.0.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.4.i, %bb.ad ] ; 3 uses
  %.sroa.03.09.i.i.5.i = phi ptr [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ]
  store ptr %.val2.i11.i.i.5.i, ptr %.sroa.03.09.i.i.5.i, align 8, !tbaa !216
  %.sroa.0.0.i.i.5.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.5.i, i64 -8 ; 2 uses
  %.val2.i.i.i.5.i = load ptr, ptr %.sroa.0.0.i.i.5.i, align 8, !tbaa !216 ; 2 uses
  %i.ce = getelementptr i8, ptr %.val2.i.i.i.5.i, i64 12
  %.val2.val.i.i.i.5.i = load i32, ptr %i.ce, align 4, !tbaa !244
  %i.cf = icmp ugt i32 %.val.val.i.i.5.i, %.val2.val.i.i.i.5.i
  br i1 %i.cf, label %.lr.ph.i.i.5.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", !llvm.loop !14

bb.ae:                                            ; preds = %bb.ac
  %i.cg = ptrtoint ptr %.sroa.0.020.i.ptr.5.i to i64
  %i.ch = sub i64 %i.cg, %i.g                     ; 3 uses
  %i.ci = ashr exact i64 %i.ch, 3                 ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 1
  br i1 %i.cj, label %bb.ah, label %bb.af, !prof !145

bb.af:                                            ; preds = %bb.ae
  %i.ck = icmp eq i64 %i.ch, 8
  br i1 %i.ck, label %bb.ag, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ag:                                            ; preds = %bb.af
  store ptr %.val1.i24.i.4.i, ptr %.sroa.0.020.i.ptr.5.i, align 8, !tbaa !216
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

bb.ah:                                            ; preds = %bb.ae
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56
  %i.cm = sub nsw i64 0, %i.ci
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cl, i64 %i.cm
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cn, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.041.i, i64 %i.ch, i1 false)
  br label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i"

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i": ; preds = %.lr.ph.i.i.5.i, %bb.ah, %bb.ag, %bb.af, %bb.ad
  %.sroa.038.041.sink.i = phi ptr [ %.sroa.038.041.i, %bb.af ], [ %.sroa.0.020.i.ptr.5.i, %bb.ad ], [ %.sroa.038.041.i, %bb.ah ], [ %.sroa.038.041.i, %bb.ag ], [ %.sroa.0.010.i.i.5.i, %.lr.ph.i.i.5.i ]
  store ptr %.val.i.i.5.i, ptr %.sroa.038.041.sink.i, align 8, !tbaa !216
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.038.041.i, i64 56 ; 3 uses
  %i.cp = ptrtoint ptr %i.co to i64               ; 3 uses
  %i.cq = sub i64 %i.a, %i.cp
  %i.cr = icmp sgt i64 %i.cq, 48
  br i1 %i.cr, label %.lr.ph.i.i, label %._crit_edge.i, !llvm.loop !714

._crit_edge.i:                                    ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i", %bb.a
  %.sroa.038.0.lcssa.i = phi ptr [ %0, %bb.a ], [ %i.co, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ] ; 7 uses
  %.lcssa.i = phi i64 [ %i.b, %bb.a ], [ %i.cp, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_.exit.i" ]
  %i.cs = icmp eq ptr %.sroa.038.0.lcssa.i, %1
  br i1 %i.cs, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.preheader.i10.i

.preheader.i10.i:                                 ; preds = %._crit_edge.i
  %.sroa.0.017.i11.i = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i, i64 8 ; 2 uses
  %.not18.i12.i = icmp eq ptr %.sroa.0.017.i11.i, %1
  br i1 %.not18.i12.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %.lr.ph.i13.i

.lr.ph.i13.i:                                     ; preds = %.preheader.i10.i
  %.val1.i.pre22.i14.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !216
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ao, %.lr.ph.i13.i
  %.val1.i.i15.i = phi ptr [ %.val1.i.pre22.i14.i, %.lr.ph.i13.i ], [ %.val1.i24.i26.i, %bb.ao ] ; 2 uses
  %.sroa.0.020.i16.i = phi ptr [ %.sroa.0.017.i11.i, %.lr.ph.i13.i ], [ %.sroa.0.0.i27.i, %bb.ao ] ; 6 uses
  %.pn19.i17.i = phi ptr [ %.sroa.038.0.lcssa.i, %.lr.ph.i13.i ], [ %.sroa.0.020.i16.i, %bb.ao ] ; 4 uses
  %.val.i.i18.i = load ptr, ptr %.sroa.0.020.i16.i, align 8, !tbaa !216 ; 4 uses
  %i.ct = getelementptr i8, ptr %.val.i.i18.i, i64 12
  %.val.val.i.i19.i = load i32, ptr %i.ct, align 4, !tbaa !244 ; 3 uses
  %i.cu = getelementptr i8, ptr %.val1.i.i15.i, i64 12
  %.val1.val.i.i20.i = load i32, ptr %i.cu, align 4, !tbaa !244
  %i.cv = icmp ugt i32 %.val.val.i.i19.i, %.val1.val.i.i20.i
  br i1 %i.cv, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cw = ptrtoint ptr %.sroa.0.020.i16.i to i64
  %i.cx = sub i64 %i.cw, %.lcssa.i                ; 3 uses
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = icmp sgt i64 %i.cy, 1
  br i1 %i.cz, label %bb.ak, label %bb.al, !prof !145

bb.ak:                                            ; preds = %bb.aj
  %i.da = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 16
  %i.db = sub nsw i64 0, %i.cy
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dc, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.038.0.lcssa.i, i64 %i.cx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.al:                                            ; preds = %bb.aj
  %i.dd = icmp eq i64 %i.cx, 8
  br i1 %i.dd, label %bb.am, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

bb.am:                                            ; preds = %bb.al
  %i.de = getelementptr inbounds nuw i8, ptr %.pn19.i17.i, i64 8
  store ptr %.val1.i.i15.i, ptr %i.de, align 8, !tbaa !216
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i: ; preds = %bb.am, %bb.al, %bb.ak
  store ptr %.val.i.i18.i, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !216
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %.val2.i7.i.i21.i = load ptr, ptr %.pn19.i17.i, align 8, !tbaa !216 ; 2 uses
  %i.df = getelementptr i8, ptr %.val2.i7.i.i21.i, i64 12
  %.val2.val.i8.i.i22.i = load i32, ptr %i.df, align 4, !tbaa !244
  %i.dg = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i8.i.i22.i
  br i1 %i.dg, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i"

.lr.ph.i.i29.i:                                   ; preds = %bb.an, %.lr.ph.i.i29.i
  %.val2.i11.i.i30.i = phi ptr [ %.val2.i.i.i34.i, %.lr.ph.i.i29.i ], [ %.val2.i7.i.i21.i, %bb.an ]
  %.sroa.0.010.i.i31.i = phi ptr [ %.sroa.0.0.i.i33.i, %.lr.ph.i.i29.i ], [ %.pn19.i17.i, %bb.an ] ; 3 uses
  %.sroa.03.09.i.i32.i = phi ptr [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ], [ %.sroa.0.020.i16.i, %bb.an ]
  store ptr %.val2.i11.i.i30.i, ptr %.sroa.03.09.i.i32.i, align 8, !tbaa !216
  %.sroa.0.0.i.i33.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i31.i, i64 -8 ; 2 uses
  %.val2.i.i.i34.i = load ptr, ptr %.sroa.0.0.i.i33.i, align 8, !tbaa !216 ; 2 uses
  %i.dh = getelementptr i8, ptr %.val2.i.i.i34.i, i64 12
  %.val2.val.i.i.i35.i = load i32, ptr %i.dh, align 4, !tbaa !244
  %i.di = icmp ugt i32 %.val.val.i.i19.i, %.val2.val.i.i.i35.i
  br i1 %i.di, label %.lr.ph.i.i29.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", !llvm.loop !14

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i": ; preds = %.lr.ph.i.i29.i, %bb.an
  %.sroa.03.0.lcssa.i.i24.i = phi ptr [ %.sroa.0.020.i16.i, %bb.an ], [ %.sroa.0.010.i.i31.i, %.lr.ph.i.i29.i ]
  store ptr %.val.i.i18.i, ptr %.sroa.03.0.lcssa.i.i24.i, align 8, !tbaa !216
  %.val1.i.pre.i25.i = load ptr, ptr %.sroa.038.0.lcssa.i, align 8, !tbaa !216
  br label %bb.ao

bb.ao:                                            ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i
  %.val1.i24.i26.i = phi ptr [ %.val.i.i18.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i36.i ], [ %.val1.i.pre.i25.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_T0_.exit.i23.i" ]
  %.sroa.0.0.i27.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i16.i, i64 8 ; 2 uses
  %.not.i28.i = icmp eq ptr %.sroa.0.0.i27.i, %1
  br i1 %.not.i28.i, label %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit", label %bb.ai, !llvm.loop !15

"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit": ; preds = %bb.ao, %._crit_edge.i, %.preheader.i10.i
  %i.dj = icmp sgt i64 %i.d, 7
  br i1 %i.dj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %"_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_.exit"
  %i.dk = ptrtoint ptr %i.e to i64                ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.068 = phi i64 [ 7, %.lr.ph ], [ %i.fy, %"_ZSt17__merge_sort_loopIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEElNS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ] ; 8 uses
  %i.dl = shl nsw i64 %.068, 1                    ; 6 uses
  %.not58.i = icmp slt i64 %i.d, %i.dl
  br i1 %.not58.i, label %._crit_edge.i25, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ap
  %.idx.i = shl i64 %.068, 3                      ; 10 uses
  %.idx52.i = shl i64 %.068, 4                    ; 2 uses
  %.not53.i = icmp eq i64 %.idx.i, %.idx52.i
  br i1 %.not53.i, label %.critedge.i.us.preheader.i, label %.lr.ph.i.preheader.i

.critedge.i.us.preheader.i:                       ; preds = %.lr.ph.i
  %i.dm = icmp sgt i64 %.idx.i, 8
  br i1 %i.dm, label %.critedge.i.us.i.us, label %.critedge.i.us.preheader.i.split, !prof !145

.critedge.i.us.i.us:                              ; preds = %.critedge.i.us.preheader.i, %.critedge.i.us.i.us
  %.060.us.i.us = phi ptr [ %i.do, %.critedge.i.us.i.us ], [ %2, %.critedge.i.us.preheader.i ] ; 2 uses
  %.sroa.044.059.us.i.us = phi ptr [ %i.dn, %.critedge.i.us.i.us ], [ %0, %.critedge.i.us.preheader.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us, i64 %.idx.i ; 4 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.060.us.i.us, ptr align 8 %.sroa.044.059.us.i.us, i64 %.idx.i, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %.060.us.i.us, i64 %.idx.i ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.do, ptr nonnull align 8 %i.dn, i64 %.idx.i, i1 false)
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = sub i64 %i.a, %i.dp
  %i.dr = ashr exact i64 %i.dq, 3                 ; 2 uses
  %.not.us.i.us = icmp slt i64 %i.dr, %i.dl
  br i1 %.not.us.i.us, label %._crit_edge.i25, label %.critedge.i.us.i.us, !llvm.loop !715

.critedge.i.us.preheader.i.split:                 ; preds = %.critedge.i.us.preheader.i
  %i.ds = icmp eq i64 %.idx.i, 8
  br i1 %i.ds, label %.critedge.i.us.i.us57.preheader, label %.critedge.i.us.i

.critedge.i.us.i.us57.preheader:                  ; preds = %.critedge.i.us.preheader.i.split
  %.pre = load ptr, ptr %0, align 8, !tbaa !216
  br label %.critedge.i.us.i.us57

.critedge.i.us.i.us57:                            ; preds = %.critedge.i.us.i.us57.preheader, %.critedge.i.us.i.us57
  %i.dt = phi ptr [ %i.dw, %.critedge.i.us.i.us57 ], [ %.pre, %.critedge.i.us.i.us57.preheader ]
  %.060.us.i.us58 = phi ptr [ %i.dv, %.critedge.i.us.i.us57 ], [ %2, %.critedge.i.us.i.us57.preheader ] ; 2 uses
  %.sroa.044.059.us.i.us59 = phi ptr [ %i.du, %.critedge.i.us.i.us57 ], [ %0, %.critedge.i.us.i.us57.preheader ]
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.044.059.us.i.us59, i64 8 ; 4 uses
  store ptr %i.dt, ptr %.060.us.i.us58, align 8, !tbaa !216
  %i.dv = getelementptr inbounds nuw i8, ptr %.060.us.i.us58, i64 8 ; 3 uses
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !216 ; 2 uses
  store ptr %i.dw, ptr %i.dv, align 8, !tbaa !216
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = sub i64 %i.a, %i.dx
  %i.dz = ashr exact i64 %i.dy, 3                 ; 2 uses
  %.not.us.i.us61 = icmp slt i64 %i.dz, %i.dl
  br i1 %.not.us.i.us61, label %._crit_edge.i25, label %.critedge.i.us.i.us57, !llvm.loop !715

.critedge.i.us.i:                                 ; preds = %.critedge.i.us.preheader.i.split, %.critedge.i.us.i
  %.060.us.i = phi ptr [ %i.eb, %.critedge.i.us.i ], [ %2, %.critedge.i.us.preheader.i.split ]
  %.sroa.044.059.us.i = phi ptr [ %i.ea, %.critedge.i.us.i ], [ %0, %.critedge.i.us.preheader.i.split ]
  %i.ea = getelementptr inbounds i8, ptr %.sroa.044.059.us.i, i64 %.idx.i ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.060.us.i, i64 %.idx.i ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = ashr exact i64 %i.ed, 3                 ; 2 uses
  %.not.us.i = icmp slt i64 %i.ee, %i.dl
  br i1 %.not.us.i, label %._crit_edge.i25, label %.critedge.i.us.i, !llvm.loop !715

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph.i, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.060.i = phi ptr [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i ]
  %.sroa.044.059.i = phi ptr [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i ] ; 3 uses
  %i.ef = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx.i ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %.sroa.044.059.i, i64 %.idx52.i ; 4 uses
  br label %.lr.ph.i.i21

.lr.ph.i.i21:                                     ; preds = %.lr.ph.i.i21, %.lr.ph.i.preheader.i
  %.020.i.i = phi ptr [ %i.ek, %.lr.ph.i.i21 ], [ %.060.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.014.019.i.i = phi ptr [ %.sroa.014.1.i.i, %.lr.ph.i.i21 ], [ %.sroa.044.059.i, %.lr.ph.i.preheader.i ] ; 2 uses
  %.sroa.010.018.i.i = phi ptr [ %.sroa.010.1.i.i, %.lr.ph.i.i21 ], [ %i.ef, %.lr.ph.i.preheader.i ] ; 2 uses
  %.val.i.i.i22 = load ptr, ptr %.sroa.010.018.i.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %.sroa.014.019.i.i, align 8, !tbaa !216 ; 2 uses
  %i.eh = getelementptr i8, ptr %.val.i.i.i22, i64 12
  %.val.val.i.i.i23 = load i32, ptr %i.eh, align 4, !tbaa !244
  %i.ei = getelementptr i8, ptr %.val1.i.i.i, i64 12
  %.val1.val.i.i.i24 = load i32, ptr %i.ei, align 4, !tbaa !244
  %i.ej = icmp ugt i32 %.val.val.i.i.i23, %.val1.val.i.i.i24 ; 3 uses
  %.val1.i.sink.i.i = select i1 %i.ej, ptr %.val.i.i.i22, ptr %.val1.i.i.i
  %.sroa.010.1.idx.i.i = select i1 %i.ej, i64 8, i64 0
  %.sroa.010.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i.i, i64 %.sroa.010.1.idx.i.i ; 5 uses
  %.sroa.014.1.idx.i.i = select i1 %i.ej, i64 0, i64 8
  %.sroa.014.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i.i, i64 %.sroa.014.1.idx.i.i ; 5 uses
  store ptr %.val1.i.sink.i.i, ptr %.020.i.i, align 8, !tbaa !216
  %i.ek = getelementptr inbounds nuw i8, ptr %.020.i.i, i64 8 ; 4 uses
  %i.el = icmp ne ptr %.sroa.014.1.i.i, %i.ef
  %i.em = icmp ne ptr %.sroa.010.1.i.i, %i.eg
  %or.cond.i.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.i.i21, label %.critedge.i.loopexit.i, !llvm.loop !716

.critedge.i.loopexit.i:                           ; preds = %.lr.ph.i.i21
  %i.en = ptrtoint ptr %i.ef to i64
  %i.eo = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.ep = sub i64 %i.en, %i.eo                    ; 4 uses
  %i.eq = icmp sgt i64 %i.ep, 8
  br i1 %i.eq, label %bb.aq, label %bb.ar, !prof !145

bb.aq:                                            ; preds = %.critedge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ek, ptr nonnull align 8 %.sroa.014.1.i.i, i64 %i.ep, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.ar:                                            ; preds = %.critedge.i.loopexit.i
  %i.er = icmp eq i64 %i.ep, 8
  br i1 %i.er, label %bb.as, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.es = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !216
  store ptr %i.es, ptr %i.ek, align 8, !tbaa !216
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.et = getelementptr inbounds i8, ptr %i.ek, i64 %i.ep ; 3 uses
  %i.eu = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.ev = ptrtoint ptr %.sroa.010.1.i.i to i64
  %i.ew = sub i64 %i.eu, %i.ev                    ; 4 uses
  %i.ex = icmp sgt i64 %i.ew, 8
  br i1 %i.ex, label %bb.at, label %bb.au, !prof !145

bb.at:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.et, ptr nonnull align 8 %.sroa.010.1.i.i, i64 %i.ew, i1 false)
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.au:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i.i
  %i.ey = icmp eq i64 %i.ew, 8
  br i1 %i.ey, label %bb.av, label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.av:                                            ; preds = %bb.au
  %i.ez = load ptr, ptr %.sroa.010.1.i.i, align 8, !tbaa !216
  store ptr %i.ez, ptr %i.et, align 8, !tbaa !216
  br label %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.av, %bb.au, %bb.at
  %i.fa = getelementptr inbounds i8, ptr %i.et, i64 %i.ew ; 2 uses
  %i.fb = sub i64 %i.a, %i.eu
  %i.fc = ashr exact i64 %i.fb, 3                 ; 2 uses
  %.not.i = icmp slt i64 %i.fc, %i.dl
  br i1 %.not.i, label %._crit_edge.i25, label %.lr.ph.i.preheader.i, !llvm.loop !715

._crit_edge.i25:                                  ; preds = %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %.critedge.i.us.i, %.critedge.i.us.i.us57, %.critedge.i.us.i.us, %bb.ap
  %.sroa.044.0.lcssa.i = phi ptr [ %0, %bb.ap ], [ %i.dn, %.critedge.i.us.i.us ], [ %i.du, %.critedge.i.us.i.us57 ], [ %i.ea, %.critedge.i.us.i ], [ %i.eg, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %2, %bb.ap ], [ %i.do, %.critedge.i.us.i.us ], [ %i.dv, %.critedge.i.us.i.us57 ], [ %i.eb, %.critedge.i.us.i ], [ %i.fa, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa56.i = phi i64 [ %i.d, %bb.ap ], [ %i.dr, %.critedge.i.us.i.us ], [ %i.dz, %.critedge.i.us.i.us57 ], [ %i.ee, %.critedge.i.us.i ], [ %i.fc, %"_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_NS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %.068, i64 %.lcssa56.i) ; 2 uses
  %.idx54.i = shl nsw i64 %.sroa.speculated.i, 3
  %i.fd = getelementptr inbounds i8, ptr %.sroa.044.0.lcssa.i, i64 %.idx54.i ; 5 uses
  %i.fe = icmp ne i64 %.sroa.speculated.i, 0
  %i.ff = icmp ne ptr %i.fd, %1
  %or.cond17.i16.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond17.i16.i, label %.lr.ph.i22.i, label %.critedge.i17.i

.lr.ph.i22.i:                                     ; preds = %._crit_edge.i25, %.lr.ph.i22.i
  %.020.i23.i = phi ptr [ %i.fj, %.lr.ph.i22.i ], [ %.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.014.019.i24.i = phi ptr [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ], [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ] ; 2 uses
  %.sroa.010.018.i25.i = phi ptr [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ], [ %i.fd, %._crit_edge.i25 ] ; 2 uses
  %.val.i.i26.i = load ptr, ptr %.sroa.010.018.i25.i, align 8, !tbaa !216 ; 2 uses
  %.val1.i.i27.i = load ptr, ptr %.sroa.014.019.i24.i, align 8, !tbaa !216 ; 2 uses
  %i.fg = getelementptr i8, ptr %.val.i.i26.i, i64 12
  %.val.val.i.i28.i = load i32, ptr %i.fg, align 4, !tbaa !244
  %i.fh = getelementptr i8, ptr %.val1.i.i27.i, i64 12
  %.val1.val.i.i29.i = load i32, ptr %i.fh, align 4, !tbaa !244
  %i.fi = icmp ugt i32 %.val.val.i.i28.i, %.val1.val.i.i29.i ; 3 uses
  %.val1.i.sink.i30.i = select i1 %i.fi, ptr %.val.i.i26.i, ptr %.val1.i.i27.i
  %.sroa.010.1.idx.i31.i = select i1 %i.fi, i64 8, i64 0
  %.sroa.010.1.i32.i = getelementptr inbounds nuw i8, ptr %.sroa.010.018.i25.i, i64 %.sroa.010.1.idx.i31.i ; 3 uses
  %.sroa.014.1.idx.i33.i = select i1 %i.fi, i64 0, i64 8
  %.sroa.014.1.i34.i = getelementptr inbounds nuw i8, ptr %.sroa.014.019.i24.i, i64 %.sroa.014.1.idx.i33.i ; 3 uses
  store ptr %.val1.i.sink.i30.i, ptr %.020.i23.i, align 8, !tbaa !216
  %i.fj = getelementptr inbounds nuw i8, ptr %.020.i23.i, i64 8 ; 2 uses
  %i.fk = icmp ne ptr %.sroa.014.1.i34.i, %i.fd
  %i.fl = icmp ne ptr %.sroa.010.1.i32.i, %1
  %or.cond.i35.i = select i1 %i.fk, i1 %i.fl, i1 false
  br i1 %or.cond.i35.i, label %.lr.ph.i22.i, label %.critedge.i17.i, !llvm.loop !716

.critedge.i17.i:                                  ; preds = %.lr.ph.i22.i, %._crit_edge.i25
  %.sroa.010.0.lcssa.i18.i = phi ptr [ %i.fd, %._crit_edge.i25 ], [ %.sroa.010.1.i32.i, %.lr.ph.i22.i ] ; 3 uses
  %.sroa.014.0.lcssa.i19.i = phi ptr [ %.sroa.044.0.lcssa.i, %._crit_edge.i25 ], [ %.sroa.014.1.i34.i, %.lr.ph.i22.i ] ; 3 uses
  %.0.lcssa.i20.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i25 ], [ %i.fj, %.lr.ph.i22.i ] ; 3 uses
  %i.fm = ptrtoint ptr %i.fd to i64
  %i.fn = ptrtoint ptr %.sroa.014.0.lcssa.i19.i to i64
  %i.fo = sub i64 %i.fm, %i.fn                    ; 4 uses
  %i.fp = icmp sgt i64 %i.fo, 8
  br i1 %i.fp, label %bb.aw, label %bb.ax, !prof !145

bb.aw:                                            ; preds = %.critedge.i17.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i20.i, ptr align 8 %.sroa.014.0.lcssa.i19.i, i64 %i.fo, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ax:                                            ; preds = %.critedge.i17.i
  %i.fq = icmp eq i64 %i.fo, 8
  br i1 %i.fq, label %bb.ay, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

bb.ay:                                            ; preds = %bb.ax
  %i.fr = load ptr, ptr %.sroa.014.0.lcssa.i19.i, align 8, !tbaa !216
  store ptr %i.fr, ptr %.0.lcssa.i20.i, align 8, !tbaa !216
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i: ; preds = %bb.ay, %bb.ax, %bb.aw
  %i.fs = getelementptr inbounds i8, ptr %.0.lcssa.i20.i, i64 %i.fo ; 2 uses
  %i.ft = ptrtoint ptr %.sroa.010.0.lcssa.i18.i to i64
  %i.fu = sub i64 %i.a, %i.ft                     ; 3 uses
  %i.fv = icmp sgt i64 %i.fu, 8
  br i1 %i.fv, label %bb.az, label %bb.ba, !prof !145

bb.az:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.fs, ptr align 8 %.sroa.010.0.lcssa.i18.i, i64 %i.fu, i1 false)
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.ba:                                            ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_ET0_T_SD_SC_.exit.i21.i
  %i.fw = icmp eq i64 %i.fu, 8
  br i1 %i.fw, label %bb.bb, label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

bb.bb:                                            ; preds = %bb.ba
  %i.fx = load ptr, ptr %.sroa.010.0.lcssa.i18.i, align 8, !tbaa !216
  store ptr %i.fx, ptr %i.fs, align 8, !tbaa !216
  br label %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"

"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit": ; preds = %bb.az, %bb.ba, %bb.bb
  %i.fy = shl nsw i64 %.068, 2                    ; 5 uses
  %.not54.i = icmp slt i64 %i.d, %i.fy
  br i1 %.not54.i, label %._crit_edge.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.idx.i27 = shl i64 %.068, 4                    ; 8 uses
  %.idx48.i = shl nsw i64 %.068, 5                ; 2 uses
  %.not49.i = icmp eq i64 %.idx.i27, %.idx48.i
  br i1 %.not49.i, label %._crit_edge.i.us.preheader.i, label %.lr.ph.i.preheader.i28

._crit_edge.i.us.preheader.i:                     ; preds = %.lr.ph.i26
  %i.fz = icmp sgt i64 %.068, 0
  %i.ga = icmp sgt i64 %.idx.i27, 8
  br label %._crit_edge.i.us.i

._crit_edge.i.us.i:                               ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %._crit_edge.i.us.preheader.i
  %.sroa.022.056.us.i = phi ptr [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %0, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %.055.us.i = phi ptr [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %2, %._crit_edge.i.us.preheader.i ] ; 2 uses
  %i.gb = getelementptr inbounds i8, ptr %.055.us.i, i64 %.idx.i27 ; 4 uses
  br i1 %i.fz, label %bb.bc, label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, !prof !145

bb.bc:                                            ; preds = %._crit_edge.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.sroa.022.056.us.i, ptr align 8 %.055.us.i, i64 %.idx.i27, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i

_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i: ; preds = %._crit_edge.i.us.i, %bb.bc
  %i.gc = getelementptr inbounds i8, ptr %.sroa.022.056.us.i, i64 %.idx.i27 ; 2 uses
  br i1 %i.ga, label %bb.bd, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", !prof !323

bb.bd:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr nonnull align 8 %i.gb, i64 %.idx.i27, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i": ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.us.i, %bb.bd
  %i.gd = getelementptr inbounds i8, ptr %i.gc, i64 %.idx.i27 ; 2 uses
  %i.ge = ptrtoint ptr %i.gb to i64
  %i.gf = sub i64 %i.dk, %i.ge
  %i.gg = ashr exact i64 %i.gf, 3                 ; 2 uses
  %.not.us.i34 = icmp slt i64 %i.gg, %i.fy
  br i1 %.not.us.i34, label %._crit_edge.i31, label %._crit_edge.i.us.i, !llvm.loop !717

.lr.ph.i.preheader.i28:                           ; preds = %.lr.ph.i26, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"
  %.sroa.022.056.i = phi ptr [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %0, %.lr.ph.i26 ]
  %.055.i = phi ptr [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ], [ %2, %.lr.ph.i26 ] ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %.055.i, i64 %.idx.i27 ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.055.i, i64 %.idx48.i ; 4 uses
  br label %.lr.ph.i.i29

.lr.ph.i.i29:                                     ; preds = %.lr.ph.i.i29, %.lr.ph.i.preheader.i28
  %.023.i.i = phi ptr [ %.1.i.i, %.lr.ph.i.i29 ], [ %.055.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.01622.i.i = phi ptr [ %.117.i.i, %.lr.ph.i.i29 ], [ %i.gh, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.sroa.0.021.i.i = phi ptr [ %i.gm, %.lr.ph.i.i29 ], [ %.sroa.022.056.i, %.lr.ph.i.preheader.i28 ] ; 2 uses
  %.016.val.i.i = load ptr, ptr %.01622.i.i, align 8, !tbaa !216 ; 2 uses
  %.0.val.i.i = load ptr, ptr %.023.i.i, align 8, !tbaa !216 ; 2 uses
  %i.gj = getelementptr i8, ptr %.016.val.i.i, i64 12
  %.016.val.val.i.i = load i32, ptr %i.gj, align 4, !tbaa !244
  %i.gk = getelementptr i8, ptr %.0.val.i.i, i64 12
  %.0.val.val.i.i = load i32, ptr %i.gk, align 4, !tbaa !244
  %i.gl = icmp ugt i32 %.016.val.val.i.i, %.0.val.val.i.i ; 3 uses
  %.0.val.sink.i.i = select i1 %i.gl, ptr %.016.val.i.i, ptr %.0.val.i.i
  %.117.idx.i.i = select i1 %i.gl, i64 8, i64 0
  %.117.i.i = getelementptr inbounds nuw i8, ptr %.01622.i.i, i64 %.117.idx.i.i ; 5 uses
  %.1.idx.i.i = select i1 %i.gl, i64 0, i64 8
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.023.i.i, i64 %.1.idx.i.i ; 5 uses
  store ptr %.0.val.sink.i.i, ptr %.sroa.0.021.i.i, align 8, !tbaa !216
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i, i64 8 ; 4 uses
  %i.gn = icmp ne ptr %.1.i.i, %i.gh
  %i.go = icmp ne ptr %.117.i.i, %i.gi
  %i.gp = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %i.gp, label %.lr.ph.i.i29, label %._crit_edge.i.loopexit.i, !llvm.loop !718

._crit_edge.i.loopexit.i:                         ; preds = %.lr.ph.i.i29
  %i.gq = ptrtoint ptr %i.gh to i64
  %i.gr = ptrtoint ptr %.1.i.i to i64
  %i.gs = sub i64 %i.gq, %i.gr                    ; 4 uses
  %i.gt = icmp sgt i64 %i.gs, 8
  br i1 %i.gt, label %bb.be, label %bb.bf, !prof !145

bb.be:                                            ; preds = %._crit_edge.i.loopexit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gm, ptr nonnull align 8 %.1.i.i, i64 %i.gs, i1 false)
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bf:                                            ; preds = %._crit_edge.i.loopexit.i
  %i.gu = icmp eq i64 %i.gs, 8
  br i1 %i.gu, label %bb.bg, label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gv = load ptr, ptr %.1.i.i, align 8, !tbaa !216
  store ptr %i.gv, ptr %i.gm, align 8, !tbaa !216
  br label %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i

_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  %i.gw = getelementptr inbounds i8, ptr %i.gm, i64 %i.gs ; 3 uses
  %i.gx = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gy = ptrtoint ptr %.117.i.i to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 4 uses
  %i.ha = icmp sgt i64 %i.gz, 8
  br i1 %i.ha, label %bb.bh, label %bb.bi, !prof !145

bb.bh:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr nonnull align 8 %.117.i.i, i64 %i.gz, i1 false)
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bi:                                            ; preds = %_ZSt4moveIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEEET0_T_SD_SC_.exit.i.i
  %i.hb = icmp eq i64 %i.gz, 8
  br i1 %i.hb, label %bb.bj, label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

bb.bj:                                            ; preds = %bb.bi
  %i.hc = load ptr, ptr %.117.i.i, align 8, !tbaa !216
  store ptr %i.hc, ptr %i.gw, align 8, !tbaa !216
  br label %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i"

"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i": ; preds = %bb.bj, %bb.bi, %bb.bh
  %i.hd = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz ; 2 uses
  %i.he = sub i64 %i.dk, %i.gx
  %i.hf = ashr exact i64 %i.he, 3                 ; 2 uses
  %.not.i30 = icmp slt i64 %i.hf, %i.fy
  br i1 %.not.i30, label %._crit_edge.i31, label %.lr.ph.i.preheader.i28, !llvm.loop !717

._crit_edge.i31:                                  ; preds = %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i", %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i", %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit"
  %.0.lcssa.i32 = phi ptr [ %2, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gb, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.gi, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 3 uses
  %.sroa.022.0.lcssa.i = phi ptr [ %0, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hd, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ] ; 2 uses
  %.lcssa52.i = phi i64 [ %i.d, %"_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN4mlir8bytecode6detail13TypeNumberingESt6vectorIS6_SaIS6_EEEES7_lNS0_5__ops15_Iter_comp_iterIZNS4_16IRNumberingStateC1EPNS2_9OperationERKNS2_20BytecodeWriterConfigEE3$_1EEEvT_SM_T0_T1_T2_.exit" ], [ %i.gg, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.us.i" ], [ %i.hf, %"_ZSt12__move_mergeIPPN4mlir8bytecode6detail13TypeNumberingEN9__gnu_cxx17__normal_iteratorIS5_St6vectorIS4_SaIS4_EEEENS6_5__ops15_Iter_comp_iterIZNS2_16IRNumberingStateC1EPNS0_9OperationERKNS0_20BytecodeWriterConfigEE3$_1EEET0_T_SN_SN_SN_SM_T1_.exit.i" ]
  %.sroa.speculated.i33 = tail call i64 @llvm.smin.i64(i64 %i.dl, i64 %.lcssa52.i) ; 2 uses
end_hunk_2
